   (* Biscan Bot: Coded by p0ke *)
   { -- http://p0ke.no-ip.com -- }

   unit pFunc;

   interface

   {$DEFINE URLDownloadToFile}    // Used to download and save files.
   {.$DEFINE StrLCopy}             //
   {$DEFINE DirectoryExists}      // Checks if a directory exists
   {$DEFINE GetFileSize}          // Returns given file's size
   {$DEFINE LowerCase}            // Returns given string in lowercase
   {$DEFINE UpperCase}            // Returns given string in uppercase
   {$DEFINE ExtractFileExt}       // Extracts file extension
   {$DEFINE ExtractFileName}      // Extracts file name
   {$DEFINE ExtractFilePath}      // Extracts file path
   {$DEFINE InttoStr}             // Integer to String
   {$DEFINE StrtoInt}             // String to Integer
   {$DEFINE SysDir}               // Returns System Directory
   {$DEFINE WinDir}               // Returns Windows Directory
   {$DEFINE TmpDir}               // Returns Temp Directory
   {$DEFINE CurDir}               // Returns Current Directory
   {$DEFINE Trim}                 // Trims given string
   {$DEFINE IPstr}                // Return IP of given DNS
   {$DEFINE GetNet}               // Returns NetSpeed (LAN/DIAL-UP)
   {$DEFINE GetOS}                // Returns Local OS (Unknown, Win95, Win98, Win98SE, WinMe, WinNT, Win2k, Winxp)
   {$DEFINE GetUser}
   {.$DEFINE AllocMem}             //
   {.$DEFINE StrPas}               //
   {$DEFINE FileExists}           // Checks if given file exists

   {$DEFINE ReplaceStr}           // Replaces given string with another given string
   {$DEFINE ExecuteFile}          // Executes a file.

   Uses
   {$IFDEF ExecuteFile}    ShellApi, {$ENDIF}
   {$IFDEF IpStr}          Winsock,  {$ENDIF}
   {$IFDEF GetNet}         Wininet,  {$ENDIF}
                           Windows;

   {$IFDEF URLDownloadToFile}     function URLDownloadToFile(Caller: cardinal; URL: PChar;
                                            FileName: PChar; Reserved: LongWord;
                                            StatusCB: cardinal): Longword; stdcall;
                                            external 'URLMON.DLL' name 'URLDownloadToFileA';                      {$ENDIF}
   {$IFDEF StrLCopy}              function StrLCopy(Dest: PChar; const Source: PChar;
                                            MaxLen: Cardinal): PChar; assembler;                                  {$ENDIF}
   {$IFDEF DirectoryExists}       function DirectoryExists(const Directory: string): Boolean;                     {$ENDIF}
   {$IFDEF GetFileSize}           function GetFileSize(FileName: String): Int64;                                  {$ENDIF}
   {$IFDEF LowerCase}             function LowerCase(const S: string): string;                                    {$ENDIF}
   {$IFDEF UpperCase}             function UpperCase(const S: string): string;                                    {$ENDIF}
   {$IFDEF ExtractFileExt}        function ExtractFileExt(const Filename: string): string;                        {$ENDIF}
   {$IFDEF ExtractFileName}       function ExtractFileName(const Path: string): string;                           {$ENDIF}
   {$IFDEF ExtractFilePath}       function ExtractFilePath(const Path: string): string;                           {$ENDIF}
   {$IFDEF InttoStr}              function InttoStr(const Value: integer): string;                                {$ENDIF}
   {$IFDEF StrtoInt}              function StrtoInt(const S: string): integer;                                    {$ENDIF}
   {$IFDEF SysDir}                function SysDir(FileName: String): String;                                      {$ENDIF}
   {$IFDEF WinDir}                function WinDir(FileName: String): String;                                      {$ENDIF}
   {$IFDEF TmpDir}                function TmpDir(FileName: String): String;                                      {$ENDIF}
   {$IFDEF CurDir}                function CurDir(FileName: String): String;                                      {$ENDIF}
   {$IFDEF Trim}                  function Trim(const S: string): string;                                         {$ENDIF}
   {$IFDEF IPstr}                 function IPstr(HostName:String) : String;                                       {$ENDIF}
   {$IFDEF GetNet}                function GetNet:String;                                                         {$ENDIF}
   {$IFDEF GetOS}                 function GetOS: string;                                                         {$ENDIF}
   {$IFDEF AllocMem}              function AllocMem(Size: Cardinal): Pointer;                                     {$ENDIF}
   {$IFDEF StrPas}                function StrPas(const Str: PChar): string;                                      {$ENDIF}
   {$IFDEF FileExists}            function FileExists(const FileName: string): Boolean;                           {$ENDIF}
   {$IFDEF GetUser}               Function GetUser: String;                                                       {$ENDIF}

   {$IFDEF ReplaceStr}            Procedure ReplaceStr(ReplaceWord, WithWord:String; Var Text: String);           {$ENDIF}
   {$IFDEF ExecuteFile}           Procedure ExecuteFile(F: String; Show:Boolean);                                 {$ENDIF}

   implementation

   {$IFDEF GetUser}
   Function GetUser: String;
   Var
     I   : Integer;
     Size: dWord;
     UserName: String;
   Begin
     UserName := '';
     For i := 1 To 255 Do
       UserName := UserName + #0;
     Size := 255;
     GetUserName(pChar(UserName), Size);
     UserName := String(pChar(Username));

     If UserName = '' Then UserName := 'Unk';
     Result := UserName;
   End;
   {$ENDIF}

   {$IFDEF FileExists}
   function FileExists(const FileName: string): Boolean;
   var
   lpFindFileData: TWin32FindData;
   hFile: Cardinal;
   begin
     hFile := FindFirstFile(PChar(FileName), lpFindFileData);
     if hFile <> INVALID_HANDLE_VALUE then
     begin
       result := True;
       Windows.FindClose(hFile)
     end
     else
       result := False;
   end;
   {$ENDIF}
   {$IFDEF StrLCopy}
   function StrLCopy(Dest: PChar; const Source: PChar; MaxLen: Cardinal): PChar; assembler;
   asm
           PUSH    EDI
           PUSH    ESI
           PUSH    EBX
           MOV     ESI,EAX
           MOV     EDI,EDX
           MOV     EBX,ECX
           XOR     AL,AL
           TEST    ECX,ECX
           JZ      @@1
           REPNE   SCASB
           JNE     @@1
           INC     ECX
   @@1:    SUB     EBX,ECX
           MOV     EDI,ESI
           MOV     ESI,EDX
           MOV     EDX,EDI
           MOV     ECX,EBX
           SHR     ECX,2
           REP     MOVSD
           MOV     ECX,EBX
           AND     ECX,3
           REP     MOVSB
           STOSB
           MOV     EAX,EDX
           POP     EBX
           POP     ESI
           POP     EDI
   end;
   {$ENDIF}
   {$IFDEF StrPas}
   function StrPas(const Str: PChar): string;
   begin
     Result := Str;
   end;
   {$ENDIF}
   {$IFDEF AllocMem}
   function AllocMem(Size: Cardinal): Pointer;
   begin
     GetMem(Result, Size);
     FillChar(Result^, Size, 0);
   end;
   {$ENDIF}
   {$IFDEF UpperCase}
   function UpperCase(const S: string): string;
   var
     Ch: Char;
     L: Integer;
     Source, Dest: PChar;
   begin
     L := Length(S);
     SetLength(Result, L);
     Source := Pointer(S);
     Dest := Pointer(Result);
     while L <> 0 do
     begin
       Ch := Source^;
       if (Ch >= 'a') and (Ch <= 'z') then Dec(Ch, 32);
       Dest^ := Ch;
       Inc(Source);
       Inc(Dest);
       Dec(L);
     end;
   end;
   {$ENDIF}
   {$IFDEF GetOs}
   function GetOS: string;
   const
     cOsUnknown  = 'WinUnk';
     cOsWin95    = 'Win95';
     cOsWin98    = 'Win98';
     cOsWin98SE  = 'Win98SE';
     cOsWinME    = 'WinME';
     cOsWinNT    = 'WinNT';
     cOsWin2000  = 'Win2k';
     cOsXP       = 'WinXP';
   var
     osVerInfo: TOSVersionInfo;
     majorVer, minorVer: Integer;
   begin
     Result := cOsUnknown;
     { set operating system type flag }
     osVerInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
     if GetVersionEx(osVerInfo) then
     begin
       majorVer := osVerInfo.dwMajorVersion;
       minorVer := osVerInfo.dwMinorVersion;
       case osVerInfo.dwPlatformId of
         VER_PLATFORM_WIN32_NT: { Windows NT/2000 }
           begin
             if majorVer <= 4 then
               Result := cOsWinNT
             else if (majorVer = 5) and (minorVer = 0) then
               Result := cOsWin2000
             else if (majorVer = 5) and (minorVer = 1) then
               Result := cOsXP
             else
               Result := cOsUnknown;
           end;
         VER_PLATFORM_WIN32_WINDOWS:  { Windows 9x/ME }
           begin
             if (majorVer = 4) and (minorVer = 0) then
               Result := cOsWin95
             else if (majorVer = 4) and (minorVer = 10) then
             begin
               if osVerInfo.szCSDVersion[1] = 'A' then
                 Result := cOsWin98SE
               else
                 Result := cOsWin98;
             end
             else if (majorVer = 4) and (minorVer = 90) then
               Result := cOsWinME
             else
               Result := cOsUnknown;
           end;
         else
           Result := cOsUnknown;
       end;
     end
     else
       Result := cOsUnknown;
   end;
   {$ENDIF}
   {$IFDEF GetNet}
   Function GetNet:String;
   Var
    S:Dword;
   Begin
    S := INTERNET_CONNECTION_LAN;
    If InternetGetConnectedState(@S ,0) Then
     If ((S) And (INTERNET_CONNECTION_LAN) = INTERNET_CONNECTION_LAN) Then
      Result := 'LAN';
    S := INTERNET_CONNECTION_MODEM;
    If InternetGetConnectedState(@S ,0) Then
     If ((S) And (INTERNET_CONNECTION_MODEM) = INTERNET_CONNECTION_MODEM) Then
      Result := 'Dial-up';
   End;
   {$ENDIF}
   {$IFDEF IpStr}
   function IPstr(HostName:String) : String;
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
     Result:='';
     WSAStartUp($101,WSAData);
     TRY
       HostEntPtr:=GetHostByName(PChar(HostName));
       IF HostEntPtr=NIL THEN GOTO Abort;
       pptr:=PAPInAddr(HostEntPtr^.h_addr_list);
       I:=0;
       WHILE pptr^[I]<>NIL DO BEGIN
         IF HostName='' THEN BEGIN
           IF(Pos('168',inet_ntoa(pptr^[I]^))<>1)AND(Pos('192',inet_ntoa(pptr^[I]^))<>1) THEN BEGIN
             Result:=inet_ntoa(pptr^[I]^);
             GOTO Abort;
           END;
         END ELSE
         RESULT:=(inet_ntoa(pptr^[I]^));
         Inc(I);
       END;
       Abort:
     EXCEPT
     END;
     WSACleanUp();
   END;
   {$ENDIF}
   {$IFDEF Trim}
   function Trim(const S: string): string;
   var
    I, L: Integer;
   begin
    L := Length(S);
    I := 1;
    while (I <= L) and (S[I] <= ' ') do Inc(I);
    if I > L then Result := '' else
     begin
      while S[L] <= ' ' do Dec(L);
      Result := Copy(S, I, L - I + 1);
     end;
   end;
   {$ENDIF}
   {$IFDEF ExecuteFile}
   Procedure ExecuteFile(F: String; Show:Boolean);
   Begin
     ShellExecute(0,'open',pChar(F),0,0,Integer(Show));
   End;
   {$ENDIF}
   {$IFDEF ReplaceStr}
   Procedure ReplaceStr(ReplaceWord, WithWord:String; Var Text: String);
   Var
     xPos: Integer;
   Begin
     While Pos(ReplaceWord, Text)>0 Do
     Begin
       xPos := Pos(ReplaceWord, Text);
       Delete(Text, xPos, Length(ReplaceWord));
       Insert(WithWord, Text, xPos);
     End;
   End;
   {$ENDIF}
   {$IFDEF TmpDir}
   Function TmpDir(FileName: String): String;
   Var
     Dir: Array[0..256] Of Char;
   Begin
     GetTempPath(256, Dir);
     Result := String(Dir)+'\'+FileName;
   End;
   {$ENDIF}
   {$IFDEF CurDir}
   Function CurDir(FileName: String): String;
   Var
     Dir: Array[0..256] Of Char;
   Begin
     GetCurrentDirectory(256, Dir);
     Result := String(Dir)+'\'+FileName;
   End;
   {$ENDIF}
   {$IFDEF WinDir}
   Function WinDir(FileName: String): String;
   Var
     Dir: Array[0..256] Of Char;
   Begin
     GetWindowsDirectory(Dir, 256);
     Result := String(Dir)+'\'+FileName;
   End;
   {$ENDIF}
   {$IFDEF SysDir}
   Function SysDir(FileName: String): String;
   Var
     Dir: Array[0..256] Of Char;
   Begin
     GetSystemDirectory(Dir, 256);
     Result := String(Dir)+'\'+FileName;
   End;
   {$ENDIF}
   {$IFDEF StrToInt}
   function StrtoInt(const S: string): integer;
   var
     E: integer;
   begin
     Val(S, Result, E);
   end;
   {$ENDIF}
   {$IFDEF IntToStr}
   function InttoStr(const Value: integer): string;
   var
     S: string[11];
   begin
     Str(Value, S);
     Result := S;
   end;
   {$ENDIF}
   {$IFDEF ExtractFilePath}
   function ExtractFilePath(const Path: string): string;
   var
     i, L: integer;
     Ch: Char;
   begin
     L := Length(Path);
     for i := L downto 1 do
     begin
       Ch := Path[i];
       if (Ch = '\') or (Ch = '/') then
       begin
         Result := Copy(Path, 1, i);
         Break;
       end;
     end;
   end;
   {$ENDIF}
   {$IFDEF ExtractFileName}
   function ExtractFileName(const Path: string): string;
   var
     i, L: integer;
     Ch: Char;
   begin
     L := Length(Path);
     for i := L downto 1 do
     begin
       Ch := Path[i];
       if (Ch = '\') or (Ch = '/') then
       begin
         Result := Copy(Path, i + 1, L - i);
         Break;
       end;
     end;
   end;
   {$ENDIF}
   {$IFDEF ExtractFileExt}
   function ExtractFileExt(const Filename: string): string;
   var
     i, L: integer;
     Ch: Char;
   begin
     L := Length(Filename);
     for i := L downto 1 do
     begin
       Ch := Filename[i];
       if (Ch = '.') then
       begin
         Result := Copy(Filename, i + 1, L - i);
         Break;
       end;
     end;
   end;
   {$ENDIF}

   {$IFDEF LowerCase}
   function LowerCase(const S: string): string;
   var
     Ch: Char;
     L: Integer;
     Source, Dest: PChar;
   begin
     L := Length(S);
     SetLength(Result, L);
     Source := Pointer(S);
     Dest := Pointer(Result);
     while L <> 0 do
     begin
       Ch := Source^;
       if (Ch >= 'A') and (Ch <= 'Z') then Inc(Ch, 32);
       Dest^ := Ch;
       Inc(Source);
       Inc(Dest);
       Dec(L);
     end;
   end;
   {$ENDIF}

   {$IFDEF GetFileSize}
   function GetFileSize(FileName: String): Int64;
   Var
     H: THandle;
     fData: tWin32FindData;
   Begin
     Result := -1;
     H := FindFirstFile(pChar(FileName), fData);
     If H <> INVALID_HANDLE_VALUE Then
     Begin
       Windows.FindClose(H);
       Result := Int64(fData.nFileSizeHigh) shl 32 + fData.nFileSizeLow;
     End;
   End;
   {$ENDIF}

   {$IFDEF DirectoryExists}
   function DirectoryExists(const Directory: string): Boolean;
   var
     Code: Integer;
   begin
     Code := GetFileAttributes(PChar(Directory));
     Result := (Code <> -1) and (FILE_ATTRIBUTE_DIRECTORY and Code <> 0);
   end;
   {$ENDIF}

   end.

