unit USockets;
interface
uses Windows,Winsock2;
const
 SOCKADDR_LEN=SizeOf(TSockAddr);
type
 TSocketBase=class
 protected
  FSocket:TSocket;
  FSocketActive:Boolean;
  FSocketType:Integer;
  FSocketProtocol:Integer;
  FSocketFamily:Integer;
  FHost:TSockAddr;
  FError:Integer;
 public
  constructor Create;
  destructor Destroy; override;
  procedure CloseMainSocket;
  function CreateSocket:Boolean;
  function SetHost(AHost:string):Boolean;
  function GetHost:string;
 end;


function Checksum(AData:PByte;ASize:Integer):Word;
function GetLocalIpAddress:TInAddr;
function Resolve(AHost:string):string;

implementation
var
 WSAData:TWSAData;

function Checksum(AData:PByte;ASize:Integer):Word;
var
 LSum:LongWord;
begin
 LSum:=0;
 while ASize>1 do
 begin
  InC(LSum,PWord(AData)^);
  Inc(AData,2);
  Dec(ASize,2);
 end;

 if ASize>0 then Inc(LSum,AData^);

 LSum:=(LSum shr 16)+(LSum and $FFFF);
 LSum:=LSum+(LSum shr 16);

 Result:=Word(not LSum);
end;

function GetLocalIpAddress:TInAddr;
var
 LBuf:array[0..255] of Char;
 LHostEnt:PHostEnt;
begin
 Result.S_addr:=inet_addr('127.0.0.1');
 ZeroMemory(@LBuf,SizeOf(LBuf));
 gethostname(@LBuf,SizeOf(LBuf));
 LHostEnt:=gethostbyname(@LBuf);
 if LHostEnt=nil then Exit;
 Result:=PInAddr(LHostEnt^.h_addr_list^)^;
end;

function Resolve(AHost:string):string;
var
 LHostEnt:PHostEnt;
 LHost:TSockAddrIn;
begin
 Result:='';
 with LHost do
 begin
  sin_family:=AF_INET;
  sin_addr.s_addr:=inet_addr(PChar(AHost));
  if sin_addr.s_addr=INADDR_NONE then
  begin
   LHostEnt:=gethostbyname(PChar(AHost));
   if LHostEnt=nil then Exit;
   with sin_addr, LHostEnt^ do
   begin
    S_un_b.s_b1:=Byte(h_addr^[0]);
    S_un_b.s_b2:=Byte(h_addr^[1]);
    S_un_b.s_b3:=Byte(h_addr^[2]);
    S_un_b.s_b4:=Byte(h_addr^[3]);
   end;
  end;
 end;
 if (LHost.sin_addr.S_addr=INADDR_NONE) or (LHost.sin_addr.S_addr=INADDR_ANY) then Result:=''
 else Result:=inet_ntoa(LHost.sin_addr);
end;

{ TSocketBase }

constructor TSocketBase.Create;
begin
 inherited Create;
 FSocket:=INVALID_SOCKET;
 FSocketActive:=False;
 FSocketType:=SOCK_RAW;
 FSocketProtocol:=IPPROTO_RAW;
 FSocketFamily:=AF_INET;

 FHost.sin_family:=AF_INET;
 FHost.sin_port:=0;
 FHost.sin_addr.S_addr:=INADDR_NONE;

 FError:=0;
end;

destructor TSocketBase.Destroy;
begin
 CloseMainSocket;
 inherited Destroy;
end;

procedure TSocketBase.CloseMainSocket;
begin
 if FSocketActive then WinSock2.CloseSocket(FSocket);
 FSocketActive:=False;
end;

function TSocketBase.CreateSocket:Boolean;
begin
 Result:=False;
 if FSocketActive then Exit;
 FSocket:=socket(FSocketFamily,FSocketType,FSocketProtocol);
 FSocketActive:=not (FSocket=INVALID_SOCKET);
 Result:=FSocketActive;
end;

function TSocketBase.SetHost(AHost:string):Boolean;
var
 LHostEnt:PHostEnt;
begin
 Result:=False;
 with FHost do
 begin
  sin_family:=FSocketFamily;
  sin_addr.s_addr:=inet_addr(PChar(AHost));
  if sin_addr.s_addr=INADDR_NONE then
  begin
   LHostEnt:=gethostbyname(PChar(AHost));
   if LHostEnt=nil then Exit;
   with sin_addr, LHostEnt^ do
   begin
    S_un_b.s_b1:=Byte(h_addr^[0]);
    S_un_b.s_b2:=Byte(h_addr^[1]);
    S_un_b.s_b3:=Byte(h_addr^[2]);
    S_un_b.s_b4:=Byte(h_addr^[3]);
   end;
  end; 
 end;
 Result:=True;
end;

function TSocketBase.GetHost:string;
begin
 if (FHost.sin_addr.S_addr=INADDR_NONE) or (FHost.sin_addr.S_addr=INADDR_ANY) then Result:=''
 else Result:=inet_ntoa(FHost.sin_addr); 
end;


initialization
 if (@WinSock2.WSAStartup=nil) or (WSAStartup(WINSOCK_VERSION,WSAData)<>0) then Halt;

finalization
 WSACleanup;
end.
