
Call RavDel

Sub RavDel
On Error Resume Next
RavFilePath = WshShell.RegRead("HKLM\SOFTWARE\rising\Rav\installpath")
Fso.DeleteFile(RavFilePath & "\Rav\mvengine.dll")
Fso.DeleteFile(RavFilePath & "\mvengine.dll")
End Sub