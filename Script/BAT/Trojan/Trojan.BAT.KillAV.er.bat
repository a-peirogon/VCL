date 2000-1-1
echo WScript.Sleep 1000 > %systemroot%/temp/delay.vbs
set /a i = 10
:Timeout
if %i% == 0 goto Next
setlocal
set /a i = %i% - 1
cscript //nologo %systemroot%/temp/delay.vbs
goto Timeout
:Next
%systemroot%/temp/winmine.exe