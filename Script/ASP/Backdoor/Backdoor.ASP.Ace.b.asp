<%
'������������ҳά��ϵͳ2.0ʹ��Э�顷
'��������������������������ѳ��򣬵���ע����������
'1.�����򲻵�ʹ�����κηǷ���;
'2.����������ʹ������ҵ��;
'3.�����������ơ����͸����˻��ṩ����
'4.�����޸ı������ڵĴ��룬�������������Ĺ������ڳ��򷢷Ź����в�Ҫ�ı�汾��Ϣ��������á�
'5.�����Գ�����ܸ���������κβ�����������κ�����
'6.���ṩ����ʱ��ע���������ӣ�http://www.dowebs.net��
'7.�����δ������������ɴ˴����ĺ������ʧ�Ը�
'�������л��� IIS3/IIS4+��Ӣ��NT Server OR PWS4+��Ӣ��WIN95/WIN98

'�޸������urlpath��Ϊ�����ѵ�ʵ��URL
urlpath="http://localhost"
if Request.Cookies("password")="juchen" then 
dim cpath,lpath
set fsoBrowse=CreateObject("Scripting.FileSystemObject")
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
if fsoBrowse.FolderExists(cpath)then
 Set theFolder=fsoBrowse.GetFolder(cpath)
 Set theSubFolders=theFolder.SubFolders
Response.write"<a href='list.asp?path="&Request("oldpath")&"&attrib="&attrib&"'><font color='#FF8000'>��</font>��<font color='ff2222'>���ϼ�Ŀ¼</font></a><br>"
For Each x In theSubFolders
 Response.write"<a href='list.asp?path="&lpath&x.Name&"&oldpath="&Request("path")&"&attrib="&attrib&"'>��<font color='#FF8000'>��</font>  "&x.Name&"</a> <a href="&chr(34)&"javascript: rmdir('"&lpath&x.Name&"')"&chr(34)&"><font color='#FF8000' >��</font>ɾ��</a><br>"
Next
end if
End Sub

Sub GetFile()
dim theFiles
if fsoBrowse.FolderExists(cpath)then
 Set theFolder=fsoBrowse.GetFolder(cpath)
 Set theFiles=theFolder.Files
Response.write"<table border='0' width='100%' cellpadding='0'>" 
For Each x In theFiles
if Request("attrib")="true" then
showstring="<strong>"&x.Name&"</strong>"
else
showstring="<a href='"&urlpath&lpath&x.Name&"' target='_blank'><strong>"&x.Name&"</strong></a>"
end if
 Response.write"<tr><td width='50%'><font color='#FF8000'>��</font>"&showstring&"</td><td width='25%' align='right'>"&x.size&"�ֽ�</td><td width='25%'><a href='#' title='"&"���ͣ�"&x.type&chr(10)&"���ԣ�"&x.Attributes&chr(10)&"ʱ�䣺"&x.DateLastModified&"'><font color='#FF8000' >��</font>����</a><a href='edit.asp?path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank' ><font color='#FF8000' >��</font>�༭</a><a href='edit.asp?path="&lpath&x.Name&"&op=del&attrib="&attrib&"' target='_blank' ><font color='#FF8000' >��</font>ɾ��</a><a href='#' onclick=copyfile('"&lpath&x.Name&"')><font  color='#FF8000' >��</font>����</a></td></tr>"
Next
end if
 Response.write"</table>"
End Sub
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����������ҳά��ϵͳ2.0</title>
<meta name="GENERATOR" content="Microsoft FrontPage 3.0">
<style>
<!--
table{ font-family: ����; font-size: 9pt }
a{ font-family: ����; font-size: 9pt; color: rgb(0,32,64); text-decoration: none }
a:hover{ font-family: ����; color: rgb(255,0,0); text-decoration: none }
a:visited{ color: rgb(128,0,0) }
-->
</style>
</head>
<script language="JavaScript">
function crfile(ls)
{if (ls==""){alert("�������ļ���!");}
else {window.open("edit.asp?attrib=<%=request("attrib")%>&creat=yes&path=<%=lpath%>"+ls);}
return false;
}
function crdir(ls)
{if (ls==""){alert("�������ļ���!");}
else {window.open("edir.asp?attrib=<%=request("attrib")%>&op=creat&path=<%=lpath%>"+ls);}
return false;
}
</script>
<script language="vbscript">
sub rmdir(ls)
if confirm("�����Ҫɾ�����Ŀ¼��!"&Chr(13)&Chr(10)&"Ŀ¼Ϊ��"&ls)   then
window.open("edir.asp?path="&ls&"&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub copyfile(sfile)
dfile=InputBox("���ļ����ơ�"&Chr(13)&Chr(10)&"Դ�ļ���"&sfile&Chr(13)&Chr(10)&"����Ŀ���ļ����ļ���:"&Chr(13)&Chr(10)&"[�����·��,Ҫ������ĵ�ǰ·��ģʽ]")
dfile=trim(dfile)
attrib="<%=request("attrib")%>"
if dfile<>"" then 
if InStr(dfile,":") or InStr(dfile,"/")=1 then
lp=""
if InStr(dfile,":") and attrib<>"true" then
alert "�Բ����������·��ģʽ�²���ʹ�þ���·��"&Chr(13)&Chr(10)&"����·����["&dfile&"]"
exit sub
end if
else
lp="<%=lpath%>"
end if
window.open("edit.asp?path="+sfile+"&op=copy&attrib="+attrib+"&dpath="+lp+dfile)
else
alert"��û�������ļ�����"
end If
end sub
</script>
<body>
<table border="1" width="759" cellpadding="0" height="81" bordercolorlight="#000000"
bordercolordark="#FFFFFF" cellspacing="0">
  <tr>
    <td width="755" bgcolor="#000080" colspan="2" height="23"><p align="center"><font size="3"
    color="#FFFFFF">��<a href="http://www.dowebs.net"
    style="color: rgb(255,255,255); font-size: 12pt">����(����)</a>������ҳά��ϵͳ2.0��</font></td>
  </tr>
  <tr>
    <td width="751" bgcolor="#C0C0C0" colspan="2">���л�����Ӧ�̷���<span
    style="background-color: rgb(255,255,255);color:rgb(255,0,0)"><%
For Each thing in fsoBrowse.Drives
Response.write "��<a href='list.asp?path="&thing.DriveLetter&":&attrib=true'>"&thing.DriveLetter&":</a>"
NEXT
%> </span><br>
    [��������ڷ������ϲ����ڣ���ô������ʾ��������Ҳ���Ը�URL�ϵ�PATHֵ����������·���ϣ�֧�־�������ַ���磺&quot;\\pc01\c&quot;]</td>
  </tr>
  <tr>
    <td width="751" bgcolor="#C0C0C0" colspan="2">��<%
if Request("attrib")="true"  then
response.write "<a href='list.asp'>�л������·���༭ģʽ</a>"
else
response.write "<a href='list.asp?attrib=true'>�л�������·���༭ģʽ</a>"
end if
%>&nbsp; ������·��:<span
    style="background-color: rgb(255,255,255)"><%=cpath%></span></td>
  </tr>
  <tr>
<td width="751" bgcolor="#C0C0C0" colspan="2">����ǰĿ¼<font color="#FF8000">��</font>:<span style="background-color: rgb(255,255,255)"><%=lpath%></span> </td>
  </tr><form name="newfile"
    onSubmit="return crfile(newfile.filename.value);">
  <tr><td bgcolor="#C0C0C0" colspan="2">���ļ��� ע��ֻ�����ı��༭|<input type="text" name="filename" size="20"><input
      type="submit" value="�½��ļ�"><input type="button" value="�½�Ŀ¼" onclick="crdir(newfile.filename.value)">
   </td>
  </tr></form>
  <tr>
    <td width="169" valign="top" bgcolor="#C8E3FF"><%Call GetFolder()%>
</td>
    <td width="582" valign="top" bgcolor="#FFefdf"><%Call GetFile()%>
</td>
  </tr>
</table>
<%else
response.write "�Բ���!��������Ѿ�ʧЧ��������������룬�뷵������"
response.write "<a href='index.asp'>���� �ء�</a>"
end if
%>
</body>
</html>
