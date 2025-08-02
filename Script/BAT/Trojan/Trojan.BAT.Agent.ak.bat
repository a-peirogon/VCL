@IF NOT DEFINED debug @ECHO OFF

ECHO Please wait . . . . Disinfecting Look2Me
ECHO.

FOR /F "TOKENS=*" %%g in ('VFIND.exe -tf -r -s+215050 %System%\*.dll %System%\*.tmp ^|FINDSTR.exe /E /V /I /L /G:dll_whitelist'
) DO @VFIND.exe -tf -r -s-256000 "%%g" |FINDSTR.exe /M /F:/ "ad-w-a-r-e NicTech" >>l2mfiles && (
		ECHO.%%g
		NIRCMD wait 250
		)

START /I REGSVR32.exe /s initpki.dll

ECHO.
ECHO Removing Look2Me registry entries . . .

FOR /F "TOKENS=2 DELIMS==" %%g in ('%System%\CSCRIPT.exe findcombo.vbs^|FIND.exe "Admin"'
) DO @NTRIGHTS -u %%g +r SeDebugPrivilege>ldebug

DEL findcombo.vbs
SWREG export "HKLM\software\microsoft\Windows\currentversion\shell extensions\approved" l-1


FIND.exe /v /I "81559C35-8464-49F7-BB0E-07A383BEF910" < l-1 |FINDSTR.exe /l /C:=\"\">l-2 && FOR /F "TOKENS=2 DELIMS={}" %%g in (l-2
	) DO @SWREG delete "HKLM\software\microsoft\Windows\currentversion\shell extensions\approved" /v "{%%g}" /f  &(
								SWREG export "HKCR\CLSid\{%%g}"  l-3 && TYPE l-3>>l-badCLSid
								SWREG delete "HKCR\CLSid\{%%g}" /f
								)


SWREG delete "HKLM\software\microsoft\Windows\currentversion\internet settings\user agent\post platform" /f
SWREG ADD "HKLM\software\microsoft\Windows\currentversion\internet settings\user agent\post platform" /f

IF EXIST %System%\xpsp2res.dll SWREG ADD "HKLM\software\microsoft\Windows\currentversion\internet settings\user agent\post platform" /v sv1 /f
IF EXIST as-l2m_notify FOR /F "TOKENS=*" %%g in (as-l2m_notify) DO @SWREG delete "%%g" /f >nul 2>&1

SWREG import winlogondef.reg
ECHO.(((((((((((((((((((((((((((((((((((((((((((((   Look2Me's Log   ))))))))))))))))))))))))))))))))))))))))))))))))))>l2mLog.txt

IF EXIST l-badCLSID (
	ECHO.
	ECHO REGISTRY ENTRIES REMOVED:
	FIND.exe /v /I "REGEDIT4" < l-badCLSID
	ECHO.
	ECHO * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

FIND.exe "\" < l2mfiles >nul && (
	ECHO.
	ECHO.
	ECHO FILES REMOVED:
	ECHO.)
		)>>l2mLog.txt

>>ComboFix.bat (
ECHO.
ECHO ^(
ECHO FOR /F "TOKENS=*" %%%%g in ^(l2mfiles^) DO @^(
ECHO 	DEL /A/F/Q "%%%%~g" ^>nul 2^>^&1
ECHO 	IF NOT EXIST "%%%%~g" ECHO.%%%%~g
ECHO 	^)
ECHO ECHO.
ECHO ECHO.
ECHO TYPE ldebug
ECHO ECHO.
ECHO ECHO.
ECHO ^)^>^>l2mlog.txt
)

DEL /Q l-*