net user admin KKKKKKK /add
net user admin KKKKKKK
net localgroup administrators admin /add

start /i /min /wait /B PSEXEC \\127.0.0.1 -u admin -p "KKKKKKK" -d cmd.exe /c START.BAT