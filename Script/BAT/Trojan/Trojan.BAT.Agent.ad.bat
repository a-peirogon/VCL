@echo off
title Script Pemulih virus-virusan �rasta-Farian.B
echo on error resume next>c:\gila.vbs
echo Dim WshShell, f1, fso>>c:\gila.vbs
echo set WshShell = CreateObject("Wscript.Shell")>>c:\gila.vbs
echo set fso = CreateObject("Scripting.FileSystemObject")>>c:\gila.vbs
echo set f1 = fso.GetFile("c:\windows\exploler.exe")>>c:\gila.vbs
echo set f2 =fso.GetFile(�c:\windows\gila.vbs�)
echo f1.Attributes = "0">>c:\gila.vbs
echo f2.Attributes = �0�>>c:\gila.vbs
echo WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun", "0", "REG_DWORD">>c:\gila.vbs
echo WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\system\DisableRegistryTools", "0", "REG_DWORD">>c:\gila.vbs
echo WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewOnDrives", "0", "REG_DWORD">>c:\gila.vbs
echo WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFolderOptions", "0", "REG_DWORD">>c:\gila.vbs
echo WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFind", "0", "REG_DWORD">>c:\gila.vbs
echo WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\system\DisableTaskMgr", "0", "REG_DWORD">>c:\gila.vbs
echo WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell", "Explorer.exe", "REG_SZ">>c:\gila.vbs
call c:\gila.vbs
pause
Goto del1
kosong
:del1
del %systemroot%\exploler.exe 
pause
Goto del2
for /R c:\ %%d in (legalin ganja dong by fanatiCanz.exe) do del "%%d"
pause
Goto del3
:del3
del c:\"gambar lucu".exe
pause
:del4
del %systemroot%\gila.vbs
pause