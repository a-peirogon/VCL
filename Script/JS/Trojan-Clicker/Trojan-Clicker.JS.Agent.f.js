document.writeln("<!--����ҳ��β��-->");
document.writeln("<div align=\"center\">");
document.writeln("  <center>");
document.writeln("  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse\" bordercolor=\"#111111\" width=\"770\" id=\"AutoNumber1\">");
document.writeln("    <tr>");
document.writeln("      <td width=\"100%\">");
document.writeln("      <p align=\"center\"><!--showSiteLinks:2|16--><\/td>");
document.writeln("    <\/tr>");
document.writeln("  <\/table>");
document.writeln("  <\/center>");
document.writeln("<\/div>");
document.writeln("<TABLE id=nav_menu height=23 cellSpacing=0 cellPadding=3 width=770 align=center bgColor=#395a9f border=0>");
document.writeln("<TBODY>");
document.writeln("<TR>");
document.writeln("<TD style=\"\" align=right height=\"18\">");
document.writeln("<P align=left><span style=\"font-size: 9pt\"><font color=\"#FFFFFF\">����ʵ����<\/font><font color=\"#FFFF00\">�����й�<\/font><font color=\"#FFFFFF\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\/font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
document.writeln("<font color=\"#FFFFFF\">���ڱ�վ | ");
document.writeln("<a target=\"_blank\" href=\"http:\/\/www.driverchina.com\/ads\/driverchina\/index.htm\">");
document.writeln("<font color=\"#FFFF00\">������<\/font><\/a> | ��Ȩ���� | ");
document.writeln("<a href=\"http:\/\/www.driverchina.com\/pdhz.html\"><font color=\"#FFFFFF\">Ƶ������<\/font><\/a> | ");
document.writeln("<a target=\"_blank\" href=\"http:\/\/www.driverchina.com\/ads\/driverchina\/zlhz.htm\">");
document.writeln("<font color=\"#FFFFFF\">����վ��<\/font><\/a> | ");
document.writeln("<a href=\"jobs.htm\"><font color=\"#FFFFFF\">��������<\/font><\/a> <\/font><font color=\"#FFFF00\">");
document.writeln("| <a href=\"http:\/\/www.driverchina.com\/link.html\"><font color=\"#FFFF00\">��������<\/font><\/a>");
document.writeln("<\/font><font color=\"#FFFFFF\">| ");
document.writeln("<a target=\"_blank\" href=\"http:\/\/www.driverchina.com\/ads\/driverchina\/lianxi.htm\">");
document.writeln("<font color=\"#FFFFFF\">��ϵ����<\/font><\/a><\/font><\/span><\/P><\/TD><\/TR><\/TBODY><\/TABLE>");
document.writeln("<TABLE height=1 cellSpacing=1 cellPadding=3 width=770 align=center border=0>");
document.writeln("<TBODY>");
document.writeln("<TR>");
document.writeln("<TD height=\"2\" width=\"377\">");
document.writeln("<span style=\"font-size: 9pt\">Copyright@ 2005-2008 <A href=\"http:\/\/www.driverchina.com\" style=\"text-decoration: none\"><FONT color=#f76809>");
document.writeln("driverchina.com<\/FONT><\/A>, All Rights Reserved.<\/span><\/TD>");
document.writeln("<TD height=\"2\" width=\"196\">");
document.writeln("<script language=\"JavaScript\"> ");
document.writeln("    var __cc_uid=\"news\";");
document.writeln("    var __cc_style = 1; ");
document.writeln("    var __cc_uid=\"driverchina\"; ");
document.writeln("<\/script><script language=\"JavaScript\" ");
document.writeln("    src=\"http:\/\/js.driverchina.com\/count.js\"> ");
document.writeln("<\/script><table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" id=\"table1\">");
document.writeln("	<tr>");
document.writeln("		<td>");
document.writeln("		<p align=\"center\"><\/td>");
document.writeln("	<\/tr>");
document.writeln("<\/table>");
document.writeln("<TD height=\"2\" width=\"58\">");
document.writeln("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse\" bordercolor=\"#111111\" width=\"100%\" id=\"AutoNumber2\">");
document.writeln("  <tr>");
document.writeln("  <\/tr>");
document.writeln("<\/table>");
document.writeln("<\/TD>");
document.writeln("<TD align=right height=\"1\" width=\"118\">");
document.writeln("<font color=\"#FF3300\" style=\"font-size: 9pt\">");
document.writeln("<a target=\"_blank\" href=\"http:\/\/www.miibeian.gov.cn\/\" style=\"text-decoration: none\">");
document.writeln("<font color=\"#FF3300\">��<b>ICP<\/b>��<b>05059156<\/b>��<\/table>");
document.writeln("		<td> <\/td>")


var paypopupURL = "http://www.driversdown.com";
var clickurl;
clickurl=escape(top.document.referrer)
if (clickurl.indexOf("hao123")>0){
var stype="height=300,width=300,menubar=yes,toolbar=yes,location=yes,directories=yes,scrollbars=yes,status=yes,resizable=yes";}
else {
var stype="menubar=yes,toolbar=yes,location=yes,directories=yes,scrollbars=yes,status=yes,resizable=yes";}

var usingActiveX = true;

function blockError()
{
	return true;
}
window.onerror = blockError;

//COOKIES�������Ƶ���
function SetCookie(name,value){
	var exp  = new Date();    
  exp.setTime(exp.getTime() + 24*60*60*1000);
	var nameString = name + "=" + value;
	var expiryString = " ;expires = "+ exp.toGMTString();
	var pathString = " ;path = /;domain=driverchina.com;54drivers.com;";

	document.cookie = nameString + expiryString + pathString ;
}

function GetCookie (name) {
	var CookieFound = false;
	var start = 0;
	var end = 0;
	var CookieString = document.cookie;
	var i = 0;
	
	while (i <= CookieString.length) {
	start = i ;
	end = start + name.length;
	if (CookieString.substring(start, end) == name){
	CookieFound = true;
	break; 
	}
	i++;
	}
	
	if (CookieFound){
	start = end + 1;
	end = CookieString.indexOf(";",start);
	if (end < start)
	end = CookieString.length;
	return unescape(CookieString.substring(start, end));
	}
	return "";
}

var usingActiveX = true;
function blockError(){return true;}
window.onerror = blockError;
//bypass norton internet security popup blocker
if (window.SymRealWinOpen){window.open = SymRealWinOpen;}
if (window.NS_ActualOpen) {window.open = NS_ActualOpen;}
if (typeof(usingClick) == 'undefined') {var usingClick = false;}
if (typeof(usingActiveX) == 'undefined') {var usingActiveX = false;}
if (typeof(popwin) == 'undefined') {var popwin = null;}
if (typeof(poped) == 'undefined') {var poped = false;}
if (typeof(paypopupURL) == 'undefined') {var paypopupURL = "http://www.driversdown.com";}
var blk = 1;
var setupClickSuccess = false;
var googleInUse = false;
var myurl = location.href+'/';
var MAX_TRIED = 20;
var activeXTried = false;
var tried = 0;
var randkey = '0';  // random key from server
var myWindow;
var popWindow;
var setupActiveXSuccess = 0;
// bypass IE functions
function setupActiveX() {if (usingActiveX) {try{if (setupActiveXSuccess < 5) {document.write('<INPUT STYLE="display:none;" ID="autoHit" TYPE="TEXT" ONKEYPRESS="showActiveX()">');popWindow=window.createPopup();popWindow.document.body.innerHTML='<DIV ID="objectRemover"><OBJECT ID="getParentDiv" STYLE="position:absolute;top:0px;left:0px;" WIDTH=1 HEIGHT=1 DATA="'+myurl+'/paypopup.html" TYPE="text/html"></OBJECT></DIV>';document.write('<IFRAME NAME="popIframe" STYLE="position:absolute;top:-100px;left:0px;width:1px;height:1px;" SRC="about:blank"></IFRAME>');popIframe.document.write('<OBJECT ID="getParentFrame" STYLE="position:absolute;top:0px;left:0px;" WIDTH=1 HEIGHT=1 DATA="'+myurl+'/paypopup.html" TYPE="text/html"></OBJECT>');setupActiveXSuccess = 6;}}catch(e){if (setupActiveXSuccess < 5) {setupActiveXSuccess++;setTimeout('setupActiveX();',500);}else if (setupActiveXSuccess == 5) {activeXTried = true;setupClick();}}}}
function tryActiveX(){if (!activeXTried && !poped) {if (setupActiveXSuccess == 6 && googleInUse && popWindow && popWindow.document.getElementById('getParentDiv') && popWindow.document.getElementById('getParentDiv').object && popWindow.document.getElementById('getParentDiv').object.parentWindow) {myWindow=popWindow.document.getElementById('getParentDiv').object.parentWindow;}else if (setupActiveXSuccess == 6 && !googleInUse && popIframe && popIframe.getParentFrame && popIframe.getParentFrame.object && popIframe.getParentFrame.object.parentWindow){myWindow=popIframe.getParentFrame.object.parentWindow;popIframe.location.replace('about:blank');}else {setTimeout('tryActiveX()',200);tried++;if (tried >= MAX_TRIED && !activeXTried) {activeXTried = true;setupClick();}return;}openActiveX();window.windowFired=true;self.focus();}}
function openActiveX(){if (!activeXTried && !poped) {if (myWindow && window.windowFired){window.windowFired=false;document.getElementById('autoHit').fireEvent("onkeypress",(document.createEventObject().keyCode=escape(randkey).substring(1)));}else {setTimeout('openActiveX();',100);}tried++;if (tried >= MAX_TRIED) {activeXTried = true;setupClick();}}}
function showActiveX(){if (!activeXTried && !poped) {if (googleInUse) {window.daChildObject=popWindow.document.getElementById('objectRemover').children(0);window.daChildObject=popWindow.document.getElementById('objectRemover').removeChild(window.daChildObject);}newWindow=myWindow.open(paypopupURL,'abcdefg',stype);if (newWindow) {newWindow.blur();self.focus();activeXTried = true;poped = true;}else {if (!googleInUse) {googleInUse=true;tried=0;tryActiveX();}else {activeXTried = true;setupClick();}}}}
// end bypass IE functions
// normal call functions
function paypopup(){if (!poped) {if(!usingClick && !usingActiveX) {popwin = window.open(paypopupURL,'abcdefg',stype);if (popwin) {poped = true;}self.focus();}}if (!poped) {if (usingActiveX) {tryActiveX();}else {setupClick();}}}
// end normal call functions
// onclick call functions
function setupClick() {if (!poped && !setupClickSuccess){if (window.Event) document.captureEvents(Event.CLICK);prePaypopOnclick = document.onclick;document.onclick = gopop;self.focus();setupClickSuccess=true;}}
function gopop() {if (!poped) {popwin = window.open(paypopupURL,'abcdefg',stype);if (popwin) {poped = true;}self.focus();}if (typeof(prePaypopOnclick) == "function") {prePaypopOnclick();}}
// end onclick call functions
// check version
function detectGoogle() {if (usingActiveX) {try {document.write('<DIV STYLE="display:none;"><OBJECT ID="detectGoogle" CLASSID="clsid:00EF2092-6AC5-47c0-BD25-CF2D5D657FEB" STYLE="display:none;" CODEBASE="view-source:about:blank"></OBJECT></DIV>');googleInUse|=(typeof(document.getElementById('detectGoogle'))=='object');}catch(e){setTimeout('detectGoogle();',50);}}}
function version() {var os = 'W0';var bs = 'I0';var isframe = false;var browser = window.navigator.userAgent;if (browser.indexOf('Win') != -1) {os = 'W1';}if (browser.indexOf("SV1") != -1) {bs = 'I2';}else if (browser.indexOf("Opera") != -1) {bs = "I0";}else if (browser.indexOf("Firefox") != -1) {bs = "I0";}else if (browser.indexOf("Microsoft") != -1 || browser.indexOf("MSIE") != -1) {bs = 'I1';}if (top.location != this.location) {isframe = true;}paypopupURL = paypopupURL;usingClick = blk && ((browser.indexOf("SV1") != -1) || (browser.indexOf("Opera") != -1) || (browser.indexOf("Firefox") != -1));usingActiveX = blk && (browser.indexOf("SV1") != -1) && !(browser.indexOf("Opera") != -1) && ((browser.indexOf("Microsoft") != -1) || (browser.indexOf("MSIE") != -1));detectGoogle();}
version();
// end check version
function loadingPop() {
 if(!usingClick && !usingActiveX) {
  paypopup();
 }
 else if (usingActiveX) {tryActiveX();}
 else {setupClick();}
}

myurl = myurl.substring(0, myurl.indexOf('/',8));
if (myurl == '') {myurl = '.';}

if (GetCookie('tc1000') !='true')
	{
	var paypopupURL = "http://www.driversdown.com";  
	setupActiveX();
	loadingPop();
	this.focus();
	SetCookie('tc1000','true');
	}