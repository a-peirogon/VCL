echo off
cls
echo         ########################################################
echo         # Outil de Desinstallation de BitDefender 8.xx et 9.xx #
echo         ########################################################
echo.
echo.
echo 1/ ARRET DES SERVICES POUR WIN 2000 / XP :
net stop vsserv
net stop bdss
net stop livesrv
net stop xcomm
echo.
echo 2/ FERMETURE DES PROCESSUS :
taskkill /F /im xcommsvr.exe
taskkill /F /im bdmcon.exe
taskkill /F /im bdnagent.exe
taskkill /F /im bdoesrv.exe
taskkill /F /im bdswitch.exe
echo.
echo 3/ SUPPRESSION DES ENTREES REGISTRE (1/3) :
reg delete HKEY_LOCAL_MACHINE\system\ControlSet001\Services\FILESpy /force
reg delete HKEY_LOCAL_MACHINE\system\ControlSet001\Services\LIVESRV /force
reg delete HKEY_LOCAL_MACHINE\system\ControlSet002\Services\bdss /force
reg delete HKEY_LOCAL_MACHINE\system\ControlSet002\Services\filespy /force
reg delete HKEY_LOCAL_MACHINE\system\ControlSet002\Services\vsserv /force
reg delete HKEY_LOCAL_MACHINE\system\ControlSet002\Services\xcomm /force
echo.
echo 4/ SUPPRESSION DES ENTREES REGISTRE (2/3) :
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Softwin /force
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FILESpy /force
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XCOMM /force
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bdss /force
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\REGSpy /force
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VSSERV /force
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BDLM /force
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LIVESRV /force
reg delete HKEY_CLASSES_ROOT\*\shellex\ContextMenuHandlers\BitDefender Antivirus v8 /force
reg delete HKEY_CURRENT_USER\Software\Softwin /force
echo.
echo 5/ SUPPRESSION DES ENTREES REGISTRE (3/3) :
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\BDMCon /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\BDNewsAgent /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\BDOESRV /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\BDSwitchAgent /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B0E0C0C4-8A45-4CA3-95B3-942AE2894FE8} /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{74CF5720-A8D1-4DD2-8E2E-129AC9586299} /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{589470B6-CFDD-4181-B8C6-75311494406F} /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5DF08EA4-889F-4D8B-8DB9-01F2AC643266} /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B0E0C0C4-8A45-4CA3-95B3-942AE2894FE8} /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{3D538260-9AF7-42BA-A83A-024E46F83FCA} /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{8A3A1769-CC2E-403B-B9E6-E6A3438167EC} /force
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MenuOrder\Start Menu\Programs\BitDefender 9 /force
reg delete HKEY_CLASSES_ROOT\Installer\Products\062835D37FA9AB248AA320E4648FF3AC /force
reg delete HKEY_CLASSES_ROOT\Installer\Products\9671A3A8E2CCB3049B6E6E3A341876CE /force
reg delete HKEY_CLASSES_ROOT\Installer\Products\4C0C0E0B54A83AC4593B49A22E98F48E /force
reg delete HKEY_CLASSES_ROOT\CLSID\{14F8823C-E98F-49AA-B826-629BE177145C}\InprocServer32 /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{14F8823C-E98F-49AA-B826-629BE177145C}\InprocServer32 /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\F53E1BA33ECBA3D4386F461BC5D85DF3 /force
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedDLLs /force

echo.
echo 6/ DECHARGE DLL MEMOIRE :
regsvr32 /u /s "%ProgramFiles%\Softwin\BitDefender8\bdshellex.dll"
regsvr32 /u /s "%ProgramFiles%\Softwin\BitDefender8\bdo.dll"
regsvr32 /u /s "%ProgramFiles%\Softwin\BitDefender8\bdoe.dll"
regsvr32 /u /s "%ProgramFiles%\Softwin\BitDefender8\bdshelxt.dll"
regsvr32 /u /s "%ProgramFiles%\Softwin\BitDefender9\bdshelxt.dll"
regsvr32 /u /s "%ProgramFiles%\Softwin\BitDefender9\bdo.dll"
echo.
echo 7/ SUPPRESSION DES FICHIERS SYSTEMES :
del %windir%\system32\sockspy.dll /f
del %windir%\system32\xcomm.dll /f
del %windir%\system32\xcommsvr.dll /f
del %windir%\system32\xgate.dll /f
del %windir%\system32\xreglib.dll /f
echo.
echo 8/ SUPPRESSION DES REPERTOIRES SYSTEMES :
del "%ProgramFiles%\Softwin\BitDefender8\*" /F /S /Q
del "%ProgramFiles%\Softwin\BitDefender9\*" /F /S /Q
del "%ProgramFiles%\Fichiers communs\Softwin\*" /F /S /Q
Echo.
echo *Suppression repertoires installation*
rd "%ProgramFiles%\Softwin\"  /S /Q
rd "%ProgramFiles%\Fichiers communs\Softwin\" /S /Q
cls
echo                          ######################
echo                          # Procedure terminee #
echo                          ######################
echo.
echo         ########################################################
echo         #          VOUS DEVEZ REDEMARRER VOTRE ORDINATEUR      #
echo         ########################################################
echo.
echo.
echo Appuyez sur une touche pour quitter
pause
exit
