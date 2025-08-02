unit UTcp;
interface
uses
 Windows,Winsock2,USockets,UList;

type
 TSockAddrTcp=TSockAddr;
 
 TTcpBase=class(TSocketBase)
 public
  constructor Create;
  function SendData(AData:Pointer;ASize:Integer;ASocket:TSocket=INVALID_SOCKET):Boolean;
  function RecvData(AData:Pointer;ASize:Integer;ATimeout:Cardinal=0;AFillBuffer:Boolean=False;ASocket:TSocket=INVALID_SOCKET):Integer;
 end;

 TTcpClient=class(TTcpBase)
 private
  FConnected:Boolean;
 public
  constructor Create;
  function Connect:Boolean;
  procedure Disconnect;
  function RecreateSocket:Boolean;
  function SetHost(AHost:string;APort:Word):Boolean;
  function GetHost:TSockAddrTcp;
  function SendData(AData:Pointer;ASize:Integer):Boolean;
  function RecvData(AData:Pointer;ASize:Integer;ATimeOut:Cardinal=0;AFillBuffer:Boolean=False):Integer;
 end;

 TTcpServer=class;

 TTcpServerOnRecvData=procedure(AServerClient:Cardinal;AData:Pointer;ASize:Integer;AHost:TSockAddrTcp);stdcall;
 TTcpServerOnAccept=procedure(AServerClient:Cardinal;AHost:TSockAddrTcp);stdcall;
 TTcpServerOnConnectionClosed=procedure(AServerClient:Cardinal;AHost:TSockAddrTcp);stdcall;

 PTcpServerConnection=^TTcpServerConnection;
 TTcpServerConnection=record
  Server:TTcpServer;
  Sock:TSocket;
  ThreadHandle:THandle;
  ThreadActive:Boolean;
  Host:TSockAddr;
 end;

 TTcpServer=class(TTcpBase)
 private
  FListenThreadActive:Boolean;
  FListenThreadHandle:THandle;
  FConnections:TList;
  FLocalHost:TSockAddr;
  FOnAccept:TTcpServerOnAccept;
  FOnRecvData:TTcpServerOnRecvData;
  FOnConnectionClosed:TTcpServerOnConnectionClosed;
 public
  property OnAccept:TTcpServerOnAccept read FOnAccept write FOnAccept;
  property OnRecvData:TTcpServerOnRecvData read FOnRecvData write FOnRecvData;
  property OnConnectionClosed:TTcpServerOnConnectionClosed read FOnConnectionClosed write FOnConnectionClosed;
  constructor Create;
  destructor Destroy; override;
  function Start(APort:Word;AAdaptor:Cardinal=INADDR_ANY):Boolean;
  procedure Stop;
  function SendData(AData:Pointer;ASize:Integer;AServerClient:Cardinal):Boolean;
  function RecvData(AData:Pointer;ASize:Integer;AServerClient:Cardinal;AFillBuffer:Boolean=False):Integer;
  function CloseConnection(AServerClient:Cardinal):Boolean;
  function GetConnectionCount:Integer;
  function GetConnection(AIndex:Integer):PTcpServerConnection;
  function IsRunning:Boolean;
 end;

implementation


{ TTcpBase }

constructor TTcpBase.Create;
begin
 inherited Create;
 FSocketFamily:=AF_INET;
 FSocketType:=SOCK_STREAM;
 FSocketProtocol:=IPPROTO_TCP;
end;

function TTcpBase.SendData(AData:Pointer;ASize:Integer;ASocket:TSocket=INVALID_SOCKET):Boolean;
var
 LRet,LRemaining:Integer;
 LPB:PByte;
 LSocket:TSocket;
begin
 Result:=False;
 if not FSocketActive then Exit;
 if ASocket=INVALID_SOCKET then LSocket:=FSocket
 else LSocket:=ASocket;

 LPB:=AData;
 LRemaining:=ASize;
 while LRemaining>0 do
 begin
  LRet:=send(LSocket,LPB^,LRemaining,0);
  if LRet=SOCKET_ERROR then Break;
  Dec(LRemaining,LRet);
  Inc(LPB,LRet);
 end;
 Result:=LRemaining=0;
end;

function TTcpBase.RecvData(AData:Pointer;ASize:Integer;ATimeout:Cardinal=0;AFillBuffer:Boolean=False;ASocket:TSocket=INVALID_SOCKET):Integer;
var
 LRet,LRemaining:Integer;
 LPB:PByte;
 LSocket:TSocket;
 LSetIn,LSetEr:TFDSet;
 LTimeVal:TTimeVal;
 LPTimeVal:PTimeVal;
 LTime1,LTime2,LTimeout:Cardinal;
begin
 Result:=0;
 if not FSocketActive then Exit;

 if ASocket=INVALID_SOCKET then LSocket:=FSocket
 else LSocket:=ASocket;

 FD_ZERO(LSetIn);
 FD_SET(LSocket,LSetIn);
 FD_ZERO(LSetEr);
 FD_SET(LSocket,LSetEr);

 LRet:=0;
 LPB:=AData;
 LRemaining:=ASize;
 LPTimeVal:=nil;
 LTime1:=GetTickCount;

 while LRemaining>0 do
 begin
  if ATimeout>0 then
  begin
   LTime2:=GetTickCount;
   if LTime2-LTime1>=ATimeout then Break;
   LTimeout:=ATimeout-(LTime2-LTime1);
   LTimeVal.tv_sec:=LTimeout div 1000;
   LTimeVal.tv_usec:=LTimeout mod 1000;
   LPTimeVal:=@LTimeVal;
  end;

  LRet:=select(0,@LSetIn,nil,@LSetEr,LPTimeVal);

  if LRet=SOCKET_ERROR then Break;
  if LRet=0 then Break;

  if FD_ISSET(LSocket,LSetIn) then
  begin
   LRet:=recv(LSocket,LPB^,LRemaining,0);
   if not AFillBuffer then Break;
   if LRet=SOCKET_ERROR then Break;

   Dec(LRemaining,LRet);
   Inc(LPB,LRet);
   if LRet=0 then Break;
  end;
  if FD_ISSET(LSocket,LSetEr) then
  begin
   LRet:=0;
   Break;
  end;
 end;
 if LRet=SOCKET_ERROR then Result:=0
 else if AFillBuffer then Result:=ASize-LRemaining
 else Result:=LRet;
end;


{ TTcpClient }

constructor TTcpClient.Create;
begin
 inherited;
 FConnected:=False;
end;

function TTcpClient.SetHost(AHost:string;APort:Word):Boolean;
begin
 if APort<>0 then FHost.sin_port:=htons(APort);
 if Length(AHost)>0 then Result:=inherited SetHost(AHost)
 else Result:=not (APort=0);
end;

function TTcpClient.GetHost:TSockAddrTcp;
begin
 Result:=FHost;
end;

function TTcpClient.Connect:Boolean;
begin
 Result:=False;
 if FConnected then Exit;
 if not FSocketActive then
  if not CreateSocket then Exit;

 FConnected:=not (Winsock2.connect(FSocket,@FHost,SOCKADDR_LEN)=SOCKET_ERROR);
 Result:=FConnected;
end;

procedure TTcpClient.Disconnect;
begin
 if FConnected then RecreateSocket;
 FConnected:=False;
end;

function TTcpClient.RecreateSocket:Boolean;
begin
 CloseMainSocket;
 Result:=CreateSocket;
end;

function TTcpClient.SendData(AData:Pointer;ASize:Integer):Boolean;
begin
 if FConnected then Result:=inherited SendData(AData,ASize)
 else Result:=False;
end;

function TTcpClient.RecvData(AData:Pointer;ASize:Integer;ATimeout:Cardinal=0;AFillBuffer:Boolean=False):Integer;
begin
 if FConnected then Result:=inherited RecvData(AData,ASize,ATimeout,AFillBuffer)
 else Result:=0;
end;


{ TTcpServer }

function ClientThread(AArgs:Pointer):Cardinal; stdcall;
var
 LPClient:PTcpServerConnection;
 LRet:Integer;
 LBuf:array[0..65535] of Char;
begin
 LPClient:=AArgs;
 with LPClient^ do
 begin
  while True do
  begin
   ZeroMemory(@LBuf,SizeOf(LBuf));
   LRet:=recv(Sock,LBuf,SizeOf(LBuf),0);
   if (LRet=0) or (LRet=SOCKET_ERROR) then Break;
   if @Server.FOnRecvData<>nil then Server.FOnRecvData(Sock,@LBuf,LRet,Host);
  end;

  if @Server.FOnConnectionClosed<>nil then Server.FOnConnectionClosed(Sock,Host);
  closesocket(Sock);
  ThreadHandle:=INVALID_HANDLE_VALUE;
  ThreadActive:=False;
  Server.FConnections.Delete(Server.FConnections.IndexOf(LPClient));
 end;
 Dispose(LPClient);
 Result:=0;
 ExitThread(0);
end;

function DoListen(AArgs:Pointer):Cardinal; stdcall;
var
 LServer:TTcpServer;
 LHost:TSockAddr;
 LHostLen:Integer;
 LPClient:PTcpServerConnection;
 LTID:Cardinal;
 LSock:TSocket;
begin
 LServer:=TTcpServer(AArgs);
 with LServer do
 begin
  if not ((bind(FSocket,@FLocalHost,SOCKADDR_LEN)=SOCKET_ERROR)
   or (listen(FSocket,256)=SOCKET_ERROR)) then
  while True do
  begin
   LHostLen:=SOCKADDR_LEN;
   LSock:=accept(FSocket,@LHost,@LHostLen);
   if LSock=INVALID_SOCKET then Break;
   if @FOnAccept<>nil then FOnAccept(LSock,LHost);
   New(LPClient);
   with LPClient^ do
   begin
    Server:=LServer;
    Sock:=LSock;
    Host:=LHost;
    ThreadHandle:=CreateThread(nil,0,@ClientThread,LPClient,CREATE_SUSPENDED,LTID);
    ThreadActive:=ThreadHandle<>INVALID_HANDLE_VALUE;
    if ResumeThread(ThreadHandle)=DWORD(-1) then Dispose(LPClient)
    else FConnections.Add(LPClient);
   end;
  end;
  FListenThreadActive:=False;
  FListenThreadHandle:=INVALID_HANDLE_VALUE;
 end;
 Result:=0;
 ExitThread(0);
end;

constructor TTcpServer.Create;
begin
 inherited;
 @OnRecvData:=nil;
 @OnAccept:=nil;
 @OnConnectionClosed:=nil;
 FConnections:=TList.Create;
 FListenThreadHandle:=INVALID_HANDLE_VALUE;
 FListenThreadActive:=False;
 FLocalHost.sin_family:=AF_INET;
 FLocalHost.sin_port:=0;
 FLocalHost.sin_addr.S_addr:=INADDR_NONE;
end;

destructor TTcpServer.Destroy;
begin
 Stop;
 FConnections.Free;
 inherited;
end;

function TTcpServer.Start(APort:Word;AAdaptor:Cardinal=INADDR_ANY):Boolean;
var
 LTID:Cardinal;
begin
 Result:=False;
 if not FSocketActive then
  if not CreateSocket then Exit; 
 FLocalHost.sin_port:=htons(APort);
 FLocalHost.sin_addr.S_addr:=AAdaptor;
 FListenThreadHandle:=CreateThread(nil,0,@DoListen,Self,0,LTID);
 FListenThreadActive:=not (FListenThreadHandle=INVALID_HANDLE_VALUE);
 Result:=FListenThreadActive;
end;

procedure TTcpServer.Stop;
var
 LI:Integer;
 LPClient:PTcpServerConnection;
begin
 if FListenThreadActive then FListenThreadActive:=not TerminateThread(FListenThreadHandle,0);
 if not FListenThreadActive then FListenThreadHandle:=INVALID_HANDLE_VALUE;
 for LI:=0 to FConnections.Count-1 do
 begin
  LPClient:=FConnections[LI];
  TerminateThread(LPClient^.ThreadHandle,0);
  closesocket(LPClient^.Sock);
  Dispose(LPClient);
 end;
 FConnections.Clear;
end;

function TTcpServer.SendData(AData:Pointer;ASize:Integer;AServerClient:Cardinal):Boolean;
begin
 Result:=inherited SendData(AData,ASize,AServerClient);
end;

function TTcpServer.RecvData(AData:Pointer;ASize:Integer;AServerClient:Cardinal;AFillBuffer:Boolean=False):Integer;
begin
 Result:=inherited RecvData(AData,ASize,0,AFillBuffer,AServerClient);
end;

function TTcpServer.CloseConnection(AServerClient:Cardinal):Boolean;
var
 LI:Integer;
 LPClient:PTcpServerConnection;
begin
 Result:=False;
 for LI:=0 to FConnections.Count-1 do
 begin
  LPClient:=FConnections[LI];
  with LPClient^ do
  if Sock=AServerClient then
  begin
   TerminateThread(ThreadHandle,0);
   FConnections.Delete(LI);
   closesocket(Sock);
   Dispose(LPClient);
   Result:=True;
   Break;
  end;
 end;
end;


function TTcpServer.GetConnectionCount:Integer;
begin
 if FConnections=nil then Result:=0
 else Result:=FConnections.Count
end;

function TTcpServer.GetConnection(AIndex:Integer):PTcpServerConnection;
begin
 if (FConnections=nil) or (AIndex<0) or (AIndex>=FConnections.Count) then Result:=nil
 else Result:=FConnections[AIndex];
end;

function TTcpServer.IsRunning:Boolean;
begin
 Result:=FListenThreadActive;
end;

end.
