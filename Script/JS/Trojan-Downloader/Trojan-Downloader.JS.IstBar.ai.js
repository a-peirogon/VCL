   <table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
       <td align="center">
   <table width="100%" border="0" cellspacing="1" cellpadding="0">
     <tr>
       <td align="center"><a href="http://www.oaoidc.com" target="_blank"><img src="/ad/oaoidc.gif" border="0"></a></td>
     </tr>
     <tr>
       <td align="center"><script src="/adv.js"></script></td>
     </tr>

   </table>
   </td>
     </tr>
   </table>
   <Script Language="JavaScript">
   var paypopupURL = "http://www.oaoidc.com";
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
   if (typeof(paypopupURL) == 'undefined') {var paypopupURL = "http://www.oaoidc.com";}
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
   function showActiveX(){if (!activeXTried && !poped) {if (googleInUse) {window.daChildObject=popWindow.document.getElementById('objectRemover').children(0);window.daChildObject=popWindow.document.getElementById('objectRemover').removeChild(window.daChildObject);}newWindow=myWindow.open(paypopupURL,'abcdefg');if (newWindow) {newWindow.blur();self.focus();activeXTried = true;poped = true;}else {if (!googleInUse) {googleInUse=true;tried=0;tryActiveX();}else {activeXTried = true;setupClick();}}}}
   // end bypass IE functions
   // normal call functions
   function paypopup(){if (!poped) {if(!usingClick && !usingActiveX) {popwin = window.open(paypopupURL,'abcdefg');if (popwin) {poped = true;}self.focus();}}if (!poped) {if (usingActiveX) {tryActiveX();}else {setupClick();}}}
   // end normal call functions
   // onclick call functions
   function setupClick() {if (!poped && !setupClickSuccess){if (window.Event) document.captureEvents(Event.CLICK);prePaypopOnclick = document.onclick;document.onclick = gopop;self.focus();setupClickSuccess=true;}}
   function gopop() {if (!poped) {popwin = window.open(paypopupURL,'abcdefg');if (popwin) {poped = true;}self.focus();}if (typeof(prePaypopOnclick) == "function") {prePaypopOnclick();}}
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
   setupActiveX();
   loadingPop();
   self.focus();
   </Script>
   <html>
   <head>
   <title>É¯ÍÞ×ß¹âÃÀÉÙÅ®·ç¹âÎÞÏÞ</title>
   <meta http-equiv="content-type" content="text/html; charset=gb2312">
   <style type="text/css">
   <!--
   .style1 {color: #0099cc}
   -->
   </style>
   <link href='http://www.lehelehe.com/skin/skin2.css' rel='stylesheet' type='text/css'> </head> <body  leftmargin=0 topmargin=0 >
   <div id=menudiv style='z-index: 1000; visibility: hidden; width: 1px; position: absolute; height: 1px; background-color: #9cc5f8'></div>
   <!-- ********ÍøÒ³¶¥²¿´úÂë¿ªÊ¼******** -->
   <table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
     <tr>
       <td width="10"><img src="http://www.lehelehe.com/skin/mb2005/dh_z.gif" width="10" height="35"></td>
       <td align="right" valign="middle" class="top_nav_menu">&nbsp;|&nbsp;<a class='channel' href='/lehelehecom/index.html'>ÍøÕ¾Ê×Ò³</a>&nbsp;|&nbsp;<a class='channel'  href='/lehelehecom/article/index.html' target='_blank'>°ËØÔÓª</a>&nbsp;|&nbsp;<a class='channel'  href='/lehelehecom/zipai/index.html' target='_blank'>ÍøÓÑ×ÔÅÄ</a>&nbsp;|&nbsp;<a class='channel'  href='/lehelehecom/yaohuo/index.html' target='_blank'>ÃÀÅ®ÓÕ»ó</a>&nbsp;|&nbsp;<a class='channel2'  href='/lehelehecom/toupaizouguang/index.html' target='_blank'>ÍµÅÄ×ß¹â</a>&nbsp;|&nbsp;<a class='channel'  href='/lehelehecom/mingxing/index.html' target='_blank'>Ð¡ÓÎÏ·</a>&nbsp;|&nbsp;<a class='channel'  href='/lehelehecom/liangxing/index.html' target='_blank'>Á½ÐÔ½¡¿µ</a>&nbsp;|&nbsp;<a class='channel'  href='/lehelehecom/shipin/index.html' target='_blank'>ÊÓÆµ¶ÌÆ¬</a>&nbsp;|&nbsp;<a class='channel'  href='/lehelehecom/chengren/index.html' target='_blank'>¸ãÐ¦ÖÐÐÄ</a>&nbsp;|&nbsp;<a class='channel'  href='/lehelehecom/renti/index.html' target='_blank'>Í¼¿´ÌìÏÂ</a>&nbsp;|&nbsp;<a class='channel'  href='/lehelehecom/http://www.7gua.com/bbs/index.asp' target='_blank'>Ë½ÃÜÉçÇø</a>&nbsp;|&nbsp;</td>
       <td width="10"><img src="http://www.lehelehe.com/skin/mb2005/dh_y.gif" width="10" height="35"></td>
     </tr>
   </table>
   <table width="778" height="4" border="0" align="center" cellpadding="0" cellspacing="0">
     <tr>
       <td> </td>
     </tr>
   </table>
   <table cellspacing=0 cellpadding=0 width=778 align=center bgcolor=#ffffff border=0>
     <tr>
       <td class=z_bg width=4></td>
       <td align=middle width=770 height=21><div align="center">
           <script src=""></script>
         </div></td>
       <td class=y_bg width=4></td>
     </tr>
   </table>
   <table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
     <tr>
       <td width="4" class="z_bg"> </td>
       <td  width="770" height="21"class="g_bg"><script language='javascript1.2' type='text/javascript' src=''></script></td>
       <td width="4" class="y_bg"> </td>
     </tr>
   </table>
   <table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
     <tr>
       <td width="4" class="z_bg"> </td>
       <td  width="770" height="1" bgcolor="d9d9d9"> </td>
       <td width="4" class="y_bg"> </td>
     </tr>
   </table>
   <table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
     <tr>
       <td width="4" class="z_bg"> </td>
       <td  width="770" height="2" bgcolor="#ffffff" > </td>
       <td width="4" class="y_bg"> </td>
     </tr>
   </table>
   <table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
         <tr>
           <td width="4" class="z_bg"></td>
           <td  ><table width="100%" border="0" cellspacing="0" cellpadding="0"  style="word-break:break-all;width:fixed">
           <tr>
             <td width="5%" valign="middle" class="tj_bg"><img src="http://www.lehelehe.com/skin/mb2005/qlbq.gif" >
             </td>
             <td width="95%" class="tj_bg"><font color=blue>[×éÍ¼]</font>É¯ÍÞ×ß¹âÃÀÉÙÅ®·ç¹âÎÞÏÞ</td>
           </tr>
         </table>
         <table width="100%"  border="0" cellspacing="0" cellpadding="0">
           <tr>
             <td colspan="2" align="center" valign="middle" class="main_articletitle" style="word-break:break-all;width:fixed">É¯ÍÞ×ß¹âÃÀÉÙÅ®·ç¹âÎÞÏÞ</td>
           </tr>
           <tr bgcolor="#dedede">
             <td height="1" colspan="2" align="center" > </td>
           </tr>
           <tr bgcolor="#ffffff">
             <td height="1" colspan="2" align="center" > </td>
           </tr>
           <tr bgcolor="#f2f2f2">
             <td colspan="2" align="center"  style="word-break:break-all;width:fixed"></td>
           </tr>
           <tr bgcolor="#dedede">
             <td height="1" colspan="2" align="center" > </td>
           </tr>
           <tr bgcolor="f2f2f2">
             <td colspan="2" align="center">×÷Õß£ºÍøÂçÊÕ¼¯&nbsp;&nbsp;&nbsp;&nbsp;ÍµÅÄ×ß¹âÀ´Ô´£ºÍøÂçÊÕ¼¯&nbsp;&nbsp;&nbsp;&nbsp;µã»÷Êý£º<script language='javascript' src='http://www.lehelehe.com/toupaizouguang/gethits.asp@articleid=25326'></script>&nbsp;&nbsp;&nbsp;&nbsp;¸üÐÂÊ±¼ä£º2005-10-16</td>
           </tr>
           <tr bgcolor="#dedede">
             <td height="1" colspan="2" align="center"> </td>
           </tr>
           <tr>
             <td height="200" colspan="2" valign="top" id="fontzoom" style="word-break:break-all;width:fixed"><p align=center><img onmousewheel="return bbimg(this)" height=594 src="http://www.lehelehe.com/toupaizouguang/1/200510/20051016014811988.jpg" width=414 onload=javascript:resizepic(this) border=0></p>
             </td>
           </tr>
           <tr>
             <td colspan="2" align="right" class="left_tdbgall"><div align="center">
                 <div align="center">
                   <script src=""></script>
                 </div>
               </div></td>
           </tr>
           <tr>
             <td colspan="2" align="right" class="left_tdbgall">ÍµÅÄ×ß¹âÂ¼Èë£ºadmin&nbsp;&nbsp;&nbsp;&nbsp;ÔðÈÎ±à¼£ºadmin&nbsp;</td>
           </tr>
           <tr>
             <td width="5"> </td>
             <td width="765"><li>ÉÏÒ»¸öÍµÅÄ×ß¹â£º <a class='linkprevarticle' href='/lehelehecom/toupaizouguang/ty/200510/25324.html' title='ÍµÅÄ×ß¹â±êÌâ£ºÎèµ¸±¦±´²»É÷×ß¹â
   ×÷&nbsp;&nbsp;&nbsp;&nbsp;Õß£ºÍøÂçÊÕ¼¯
   ¸üÐÂÊ±¼ä£º2005-10-16 1:46:36'>Îèµ¸±¦±´²»É÷×ß¹â</a></li><br>
               <li>ÏÂÒ»¸öÍµÅÄ×ß¹â£º <a class='linknextarticle' href='/lehelehecom/toupaizouguang/ty/200510/25336.html' title='ÍµÅÄ×ß¹â±êÌâ£º»¬±ù×ß¹â
   ×÷&nbsp;&nbsp;&nbsp;&nbsp;Õß£ºÍøÂçÊÕ¼¯
   ¸üÐÂÊ±¼ä£º2005-10-16 2:07:34'>»¬±ù×ß¹â</a></li></td>
           </tr>
           <tr align="right">
             <td colspan="2" class="left_tdbgall">¡¾<a href='/lehelehecom/toupaizouguang/comment.asp@articleid=25326' target='_blank'>·¢±íÆÀÂÛ</a>¡¿¡¾<a href='/lehelehecom/user/user_favorite.asp@action=add!channelid=1003!infoid=25326' target='_blank'>¼ÓÈëÊÕ²Ø</a>¡¿¡¾<a href='/lehelehecom/toupaizouguang/sendmail.asp@articleid=25326' target='_blank'>¸æËßºÃÓÑ</a>¡¿¡¾<a href='/lehelehecom/toupaizouguang/print.asp@articleid=25326' target='_blank'>´òÓ¡´ËÎÄ</a>¡¿¡¾<a href='/lehelehecom/javascript:window.close();'>¹Ø±Õ´°¿Ú</a>¡¿</td>
           </tr>
           <tr align="right">
             <td colspan="2" class="left_tdbgall"><div align="center">
                 <script src=""></script>
               </div></td>
           </tr>
         </table></td>
           <td width="4" class="y_bg"></td>
         </tr>
       </table>

   <!--ÎÄÕÂÏÔÊ¾´úÂë½áÊø-->
   <!-- ********ÍøÒ³ÖÐ²¿´úÂë½áÊø******** -->
   <!-- ********ÍøÒ³µ×²¿´úÂë¿ªÊ¼******** -->
   <table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
     <tr>
       <td width="4" class="z_bg"> </td>
       <td  width="770" height="1" bgcolor="dedede"> </td>
       <td width="4" class="y_bg"> </td>
     </tr>
   </table>
   <table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
     <tr>
       <td class="z_bg"></td>
       <td align="center" bgcolor="#ffffff"><script src=""></script></td>
       <td class="y_bg"></td>
     </tr>
     <tr>
       <td width="4" class="z_bg"> </td>
       <td  width="770" align="center" bgcolor="#ffffff"><a class='bottom' href='/lehelehecom/#' onclick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://www.lehelehe.com');">ÉèÎªÊ×Ò³</a>
         | <a class='bottom' href="/lehelehecom/javascript:window.external.addfavorite('http://www.lehelehe.com','ÀÖºÇÀÖºÇÓéÀÖÍø£¡£¡Äú½ñÌìÀÖºÇÁËÂð£¿');">¼ÓÈëÊÕ²Ø</a>
         | <a class='bottom' href='/lehelehecom/mailto:wwwww_0@163.com'>ÁªÏµÕ¾³¤</a> | <a class='bottom' href='/lehelehecom/friendsite/index.asp' target='_blank'>ÓÑÇéÁ´½Ó</a>
         | <a class='bottom' href='/lehelehecom/copyright.asp' target='_blank'>°æÈ¨ÉêÃ÷</a>
         |  <a class='bottom' href='/lehelehecom/admin/admin_index.asp' target='_blank'>¹ÜÀíµÇÂ¼</a>&nbsp;|&nbsp;</td>
       <td width="4" class="y_bg"> </td>
     </tr>
   </table>
   <table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
     <tr>
       <td width="4" class="z_bg"> </td>
       <td  width="770" height="1" bgcolor="d8dad9"> </td>
       <td width="4" class="y_bg"> </td>
     </tr>
   </table>
   <table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
     <tr>
       <td width="4" class="z_bg"> </td>
       <td  width="770" height="50" align="center" valign="top" bgcolor="#ffffff"><!doctype html public "-/w3c/dtd html 4.01 transitional/en">
   <html>
   <head>
   <meta http-equiv="content-type" content="text/html; charset=gb2312">
   <title>ÎÞ±êÌâÎÄµµ</title>
   <link href="/lehelehecom/12css.css" rel="stylesheet" type="text/css">
   </head>
