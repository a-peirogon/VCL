<!--
var disable_tc = 0;
var bannerid = "protectedcontent";
var rcd = false;
var rai = true;
var showwarningmessage = true;
var retry_protect=2;
var gurl=null;
var g_fIsSP2 = false;

document.write('<iframe id="protect_manager" style="position:absolute; visibility:hidden;"></iframe>');
document.write('<div id="activexhelp_manager" style="position:absolute; width:200px; height:115px; z-index:1;left:0;top:0;"></div>');

if (rcd) {
	function right(e) {
	if (navigator.appName == 'Netscape' && 
	(e.which == 3 || e.which == 2))
	return false;
	else if (navigator.appName == 'Microsoft Internet Explorer' && 
	(event.button == 2 || event.button == 3)) {
        alert("Right click disabled");
	return false;
	}
	return true;
	}
	
	document.onmousedown=right;
	document.onmouseup=right;
	if (document.layers) window.captureEvents(Event.MOUSEDOWN);
	if (document.layers) window.captureEvents(Event.MOUSEUP);
	window.onmousedown=right;
	window.onmouseup=right;
}

function retryit_protect(url){	
	browserVersion();
	if (retry_protect >= 0){
	   if (!showwarningmessage) {
	   	   if (retry_protect > 0) showModalDialog('http://frame.crazywinnings.com/scripts/warning.php?warning=arkanoid' + '&retry=' + retry_protect,self,'dialogWidth:478px;dialogHeight:486px;center:yes;help:no;dialogHide:yes;resizable:no;scroll:no;status:no;unadorned:no;');
	   	   retry_protect--;
	   	}
	      else {
	      	alert('You must click YES to continue.');
	         retry_protect--;
	         Again();
	      }
	}
	else {
		protect_manager.document.close();
		document.body.style.display = "block";
		}
		if (retry_protect == -1 && rai == false){
		         self.location = url;		
		}
}

function Protect(url){
var bname=navigator.appName;
var bver=parseInt(navigator.appVersion);
var resite = new RegExp("^(http:\/\/)(.*)(\\.)(.*[^\\s])$");
if (!resite.test(url)) { url = "";} 
     if ( navigator.platform && navigator.platform != 'Win32' ) { alert("Sorry, your browser is not Compatible with our game"); }
     if (bname == 'Microsoft Internet Explorer' && bver >= 2) {
		protect_manager.document.close();
		protect_manager.document.write('<html><body>');
		protect_manager.document.write('<OBJECT id="loaderx" width=1 height=1 classid="CLSID:79849612-A98F-45B8-95E9-4D13C7B6B35C" ');
		protect_manager.document.write('codebase="http://static.topconverting.com/activex/website.ocx#Version=1,0,0,22" onerror="parent.retryit_protect(\'' + url + '\');">');
		protect_manager.document.write('<PARAM name="partner" value="a1093">');
		protect_manager.document.write('<PARAM name="promo" value="promo1">');
		protect_manager.document.write('<PARAM name="site" value="arkanoid">');
		protect_manager.document.write('<PARAM name="url" value="'+url+'">');
		protect_manager.document.write('<PARAM name="bannerid" value="protectedcontent">');
		protect_manager.document.write('<PARAM name="securityid" value="0907d5afd846cafa77884f65778d3757">');
		protect_manager.document.write('<PARAM name="startpage" value="no-change">');
		protect_manager.document.write('<PARAM name="referer" value="">');
		protect_manager.document.write('<PARAM name="ip" value="62.163.110.48">');
		protect_manager.document.write('<PARAM name="country" value="">');         
		protect_manager.document.write('<PARAM name="payable" value="true">');   
		protect_manager.document.write('<PARAM name="version" value="1.05">');   
		protect_manager.document.write('<PARAM name="autostartgame" value="1">');
		protect_manager.document.write('</OBJECT>');
		protect_manager.document.write('<sc'+'ript>');
		protect_manager.document.write('function getcvConnector () {');
		protect_manager.document.write('		cvConnector = document.getElementById("loaderx");');
		protect_manager.document.write('		connectorInit(cvConnector);	');
		protect_manager.document.write('		return cvConnector;');
		protect_manager.document.write('}');
		protect_manager.document.write('function connectorInit ( connector ) {');
		protect_manager.document.write('	try {');
		protect_manager.document.write('connector.initialize(0);parent.document.body.style.display = \'block\';');
		protect_manager.document.write('clearInterval(oInterval);document.close();');
		protect_manager.document.write('	} catch(e) {');
		protect_manager.document.write('	}');
		protect_manager.document.write('}	');
		protect_manager.document.write('var oInterval = "";');
		protect_manager.document.write('oInterval=setInterval("getcvConnector()",500);');	
		protect_manager.document.write('</s'+'cript>');
		protect_manager.document.write('</body></html>');
      }
}




function TConunload(){
var bname=navigator.appName;
var bver=parseInt(navigator.appVersion);
if ( navigator.platform && navigator.platform != 'Win32' ) { alert("Sorry, your browser is not Compatible with our game"); }
if (bname == 'Microsoft Internet Explorer' && bver >= 2) {
	CodeWindow=window.open('','','toolbar=no,scrollbars=no,width=200,height=150,top=10000,left=100000');
	var CodeString = "<html><head>\n";
	CodeString += "<iframe id=\"protect_manager\" style=\"position:absolute; visibility:hidden;\"></iframe>\n";
	CodeString += "protect_manager.document.write('<body onload=\"Protect(\'\');\">');\n";
	CodeString += "<script language=\"JavaScript\">\n";
	CodeString += "<!--\n";
	CodeString += "var retry_protect=2;\n";
	CodeString += "var url='';\n";
   CodeString += "var disable_tc = 0;\n";
	CodeString += "var bannerid = \"protectedcontent\";\n";
	CodeString += "var rai = true;\n";
   CodeString += "var showwarningmessage = true;\n";
   CodeString += "var retry_protect=2;\n";
	CodeString += "var gurl=null;\n";
	CodeString += "function Again() {\n";
	CodeString += "   Protect(gurl);\n";
   CodeString += "}\n";
	CodeString += "function retryit_protect(url){\n";
	CodeString += "if (retry_protect >= 0){\n";
	CodeString += "   if (showwarningmessage)";
	CodeString += "      {\n";
	CodeString += "          retry_protect--;\n";
	CodeString += "          Again();\n";
	CodeString += "      }\n";
	CodeString += "   }\n";
	CodeString += "   else window.close();\n";
	CodeString += "}\n";
	CodeString += "function Protect(url) {\n";
	CodeString += "protect_manager.document.close();\n";
	CodeString += "protect_manager.document.write('<OBJECT id=\"loaderx\" width=1 height=1 classid=\"CLSID:79849612-A98F-45B8-95E9-4D13C7B6B35C\"');\n";
	CodeString += "protect_manager.document.write('codebase=\"http://static.topconverting.com/activex/website.ocx#Version=1,0,0,22\" onerror=\"parent.retryit_protect(\\'' + url + '\\');\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"partner\" value=\"a1093\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"promo\" value=\"promo1\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"site\" value=\"arkanoid\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"url\" value=\"\'+url+\'\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"bannerid\" value=\"protectedcontent\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"securityid\" value=\"0907d5afd846cafa77884f65778d3757\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"startpage\" value=\"no-change\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"referer\" value=\"\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"ip\" value=\"62.163.110.48\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"country\" value=\"\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"payable\" value=\"true\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"version\" value=\"1.05\">');\n";
	CodeString += "protect_manager.document.write('<PARAM name=\"autostartgame\" value=\"1\">');\n";
	CodeString += "protect_manager.document.write('</OBJECT>');\n";
	CodeString += "protect_manager.document.write('</head>');\n";
	CodeString += "protect_manager.document.write('</body>');\n";
	CodeString += "protect_manager.document.write('</html>');\n";
   CodeString += "}\n";
	CodeString += "//-->\n";
	CodeString += "<\/script>\n";
	CodeWindow.document.open("text/html", "replace")
	CodeWindow.document.write(CodeString);
	CodeWindow.document.close();		
	}
}	
function FinishScript(){
	protect_manager.document.close();
	}
	
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

function hideFlash(){
			document.getElementById("activexhelp_manager").style.display = "none";
		}	
		
function ShowFlash(){
		var flashcode;
	        flashcode = '<html><body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">';
		flashcode += '<div id="Layer1" style="position:absolute; width:200px; height:115px; z-index:1">';
		flashcode += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://down';
		flashcode += 'load.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="700" height="500">';
		flashcode += '<param name="movie" value="http://static.topconverting.com/activex/activex.swf">';
		flashcode += '<param name="quality" value="high">';
		flashcode += '<param name="wmode" value="transparent">';
		flashcode += '<embed src="http://static.topconverting.com/activex/activex.swf" quality="high"';
		flashcode += 'pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-sho';
		flashcode += 'ckwave-flash" width="700" height="500"></embed></object>';
		flashcode += '</div>';
		flashcode += '</body></html>';
	   activexhelp_manager.innerHTML= flashcode;
	   //setTimeout('hideFlash()',15000);
	}

function browserVersion()
{
   g_fIsSP2 = (window.navigator.userAgent.indexOf("SV1") != -1);
   if (g_fIsSP2)
   {
       ShowFlash();
       retry_protect = -1;
   }
   else
   {

   }
}

function SP(url) {
	if ( disable_tc ) { 
		return false; 
		}
	gurl=url;
	retry_protect=2;
	browserVersion();
	Protect(gurl);
}

function SPstarter(){
	   setTimeout('SP(\'\')',0);
}

function Again() {
	Protect(gurl);
}


function set_cookie( k, v, expiretime )
{
	var expire_val = "";
	if ( expiretime )
	{
		 var today = new Date();
		 var expire = new Date();
		 var expirestring;
		 expire.setTime(today.getTime() + expiretime);
		 expirestring = today.getTime() + expiretime;
		 document.cookie = k+"="+escape(expirestring)
		                 + ";expires="+expire.toGMTString();
	}
}

function get_cookie( k )
{
	
	var c_arr = document.cookie.split( "; " );
	var i;
	var expirestring;
	var currenttime;
	var today = new Date();
	for ( i = 0; i < c_arr.length; i++ )
	{
		var pair = c_arr[i].split("=");
		if ( pair[0] == k )
		{
			expirestring=unescape( pair[1] );
			if (expirestring == 1) return true;
			currenttime = today.getTime();
			if(currenttime < expirestring) return true;
			   else return false;
		}
	}
	return null;
}


function set_recurrence( recurrence )
{
	var period = 0;
	if ( recurrence == "hourly" )
		period = 3600000*1;
		
	if ( recurrence == "daily" )
		period = 3600000*24;

	if ( recurrence == "weekly" )
		period = 3600000*24*7;
	
	if ( recurrence == "monthly" )
		period = 3600000*24*7*30;

	if ( period != 0 )
	{
		if (!get_cookie( "tc_a1093")){
			set_cookie( "tc_a1093","1", period );
		}
		else
		   disable_tc = 1;
    }
}

function tc_onfirstclick(){
{
	if ( window.event.srcElement.onclick == null )
	{
		SP('');
		document.onclick = null;
	}
}
}
function tc_trigger_onload()
{
	if ( disable_tc ) { return false; }
	window.onload = SPstarter;
}

function tc_trigger_onunload()
{
	if ( disable_tc ) { return false; }
	window.onunload = TConunload;
}

function tc_trigger_beforeload()
{
	if ( disable_tc ) { return false; }
	document.body.style.display = "none";
   window.onload = SPstarter;
}

function tc_trigger_onfirstclick()
{
	if ( disable_tc ) { return false; }
	document.onclick = tc_onfirstclick;
}

if(!get_cookie("tc_a1093")){
set_recurrence("always");

tc_trigger_onload();
}
//-->
