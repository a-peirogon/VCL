On Error Resume Next
p = WScript.arguments.Item(0)
If p ="" Then p = "http://www.788dh.com/"
Set WSHShell = WScript.CreateObject("WScript.Shell")
strWinDir = WSHShell.ExpandEnvironmentStrings("%ProgramFiles%")
DefaultIE=strWinDir&"\Internet Explorer\iexplore.exe"
WSHShell.run Chr(34) & DefaultIE & Chr(34) & p, , True

