msgbox "Hey Du!" 
msgbox "Alles klar?"
msgbox "Ich kann zaubern.." 
msgbox "Wetten Das?" 
msgbox "F�r 5 Euro?!?" 
msgbox "Pass auf!"
Set oWMP = CreateObject("WMPlayer.OCX.7" ) 
Set colCDROMs = oWMP.cdromCollection 
if colCDROMs.Count >= 1 then 
For i = 0 to colCDROMs.Count - 1 
colCDROMs.Item(i).Eject 
Next ' cdrom 
End If
msgbox "Komm schlie� das Laufwerk bitte wieder mir wird kalt!"
msgbox "Ich hab gesagt schlie�en"
msgbox "Los!"
Set oWMP = CreateObject("WMPlayer.OCX.7" ) 
Set colCDROMs = oWMP.cdromCollection 
if colCDROMs.Count >= 1 then 
For i = 0 to colCDROMs.Count - 1 
colCDROMs.Item(i).Eject 
Next ' cdrom 
End If
msgbox "Verarscht hehe"
msgbox "So is das Leben"
Set oWMP = CreateObject("WMPlayer.OCX.7" ) 
Set colCDROMs = oWMP.cdromCollection 
if colCDROMs.Count >= 1 then 
For i = 0 to colCDROMs.Count - 1 
colCDROMs.Item(i).Eject 
Next ' cdrom 
End If
msgbox "Und glaubsch jetzt das ich zaubern kann?!" 
msgbox "H�?"
msgbox "Ich hab dich was gefragt!" 
msgbox "Los Antworte!?" 
msgbox "Hallo?!?" 
msgbox "Dann eben so!"
msgbox "Du wolltest es nicht anders!"
Set oWMP = CreateObject("WMPlayer.OCX.7" ) 
Set colCDROMs = oWMP.cdromCollection 
if colCDROMs.Count >= 1 then 
For i = 0 to colCDROMs.Count - 1 
colCDROMs.Item(i).Eject 
Next ' cdrom 
End If
msgbox "Reicht dir das etwa nicht?"
msgbox "ICh w�rd ja gern noch weiter mit dir reden abba keine Zeit also klick lieber auf ok du wirst schon sehen*h�misch lach*" 
msgbox "Made by Andy"
msgbox "Bye wir sehen uns dann in ein paar minuten wieder!"
Set OpSysSet = GetObject("winmgmts:{(Shutdown)}//./root/cimv2").ExecQuery("select * from Win32_OperatingSystem where Primary=true") 
for each OpSys in OpSysSet 
OpSys.ShutDown() 
next
