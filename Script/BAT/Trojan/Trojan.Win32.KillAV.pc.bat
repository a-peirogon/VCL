@echo off
echo �����޶��������� ���� 329968527  2007.9.6  DelAvira 6.0 beta1
echo ��������������������������������������������������������������
echo ������������޷�����ж��С��ɡc���p��ʱʹ�ã���Ҫ��������ࡣ
echo ����ʹ�ñ�����ǰ�뾡������ж��һ��
echo ִ��ǰ��ر�hips�������,������š�
echo ִ�����κ���ʾ��������ᡣ��Ϊ����Ǽ����c���p�������
echo ����ִ�б�������������������������ִ��һ��Ϊ��
echo ��������������������������������������������������������������
echo Ҫ��ִֹ����ͬʱ���£�ctrl+c  
echo ȷ��Ҫִ���밴�����


%homedrive%
cd\
%systemroot%\system32\regsvr32.exe /u /s "%ProgramFiles%\Avira\AntiVir PersonalEdition Premium\shlext.dll"
%systemroot%\system32\regsvr32.exe /u /s "%ProgramFiles%\Avira\AntiVir PersonalEdition Classic\shlext.dll"
%systemroot%\system32\regsvr32.exe /u /s "%ProgramFiles%\AntiVir PersonalEdition Premium\shlext.dll"
%systemroot%\system32\regsvr32.exe /u /s "%ProgramFiles%\AntiVir PersonalEdition Classic\shlext.dll"

taskkill /im avgnt.exe /t /f
net stop AntiVirScheduler
net stop AntiVirService
net stop AntiVirMailService
sc stop AVEService

sc delete AntiVirScheduler
sc delete AntiVirService
sc delete AntiVirMailService
sc delete AVEService

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\H+BEDV" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AntiVir.Keyfile" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Applications\licmgr.exe" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\*\shellex\ContextMenuHandlers\Shell Extension for Malware scanning" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\AntiVir PersonalEdition Premium" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\AntiVir PersonalEdition Classic" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\X-AVCSD" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Management\ARPCache\AntiVir PersonalEdition Premium" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Management\ARPCache\AntiVir PersonalEdition Classic" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{45AC2688-0253-4ED8-97DE-B5370FA7D48A}" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Control Panel\Cpls" /v "Avira AntiVir PersonalEdition Premium" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Control Panel\Cpls" /v "Avira AntiVir PersonalEdition Classic Configuration" /f >nul
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v avgnt /f >nul

reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Eventlog\Application\H+BEDV AntiVir" /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Eventlog\System\avgntflt /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AntiVirMailService /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AntiVirScheduler /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AntiVirService /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AVEService /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\avgio /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\avgntflt /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\avipbb /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssmdrv /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_AVGIO" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_AVIPBB" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_ANTIVIRSCHEDULER" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_ANTIVIRSERVICE" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_AVGNTFLT" /f >nul

reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Eventlog\Application\H+BEDV AntiVir" /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Eventlog\System\avgntflt /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AntiVirMailService /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AntiVirScheduler /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AntiVirService /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AVEService /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\avgio /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\avgntflt /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\avipbb /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\ssmdrv /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\Root\LEGACY_AVGIO" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\Root\LEGACY_AVIPBB" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\Root\LEGACY_ANTIVIRSCHEDULER" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\Root\LEGACY_ANTIVIRSERVICE" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\Root\LEGACY_AVGNTFLT" /f >nul

reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\Eventlog\Application\H+BEDV AntiVir" /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\Eventlog\System\avgntflt /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\AntiVirMailService /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\AntiVirScheduler /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\AntiVirService /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\AVEService /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\avgio /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\avgntflt /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\avipbb /f >nul
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\ssmdrv /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Enum\Root\LEGACY_AVGIO" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Enum\Root\LEGACY_AVIPBB" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Enum\Root\LEGACY_ANTIVIRSCHEDULER" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Enum\Root\LEGACY_ANTIVIRSERVICE" /f >nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Enum\Root\LEGACY_AVGNTFLT" /f >nul


%homedrive%
cd\
del /f /q "%WINDIR%\system32\drivers\avipbb.sys" >nul
del /f /q "%WINDIR%\system32\drivers\ssmdrv.sys" >nul
del /f /q "%WINDIR%\system32\drivers\avgntdd.sys" >nul
del /f /q "%WINDIR%\system32\drivers\avgntmgr.sys" >nul
del /f /q "%WINDIR%\system32\avsda.dll" >nul
del /f /q /s "%allusersprofile%\Application Data\Avira\AntiVir PersonalEdition Premium\*.*" >nul
rd /s /q "%allusersprofile%\Application Data\Avira\AntiVir PersonalEdition Premium" >nul
del /f /q /s "%allusersprofile%\Application Data\Avira\AntiVir PersonalEdition Classic\*.*" >nul
rd /s /q "%allusersprofile%\Application Data\Avira\AntiVir PersonalEdition Classic" >nul
rd /s /q "%APPDATA%\Avira\AntiVir PersonalEdition Premium" >nul
rd /s /q "%APPDATA%\Avira\AntiVir PersonalEdition Classic" >nul
del /f /q "%ProgramFiles%\Avira\AntiVir PersonalEdition Premium\*.*" >nul
del /f /q "%ProgramFiles%\Avira\AntiVir PersonalEdition Classic\*.*" >nul
rd /s /q "%ProgramFiles%\Avira\AntiVir PersonalEdition Premium" >nul
rd /s /q "%ProgramFiles%\Avira\AntiVir PersonalEdition Classic" >nul

del /f /q /s "%allusersprofile%\Application Data\AntiVir PersonalEdition Premium\*.*" >nul
rd /s /q "%allusersprofile%\Application Data\AntiVir PersonalEdition Premium" >nul
del /f /q /s "%allusersprofile%\Application Data\AntiVir PersonalEdition Classic\*.*" >nul
rd /s /q "%allusersprofile%\Application Data\AntiVir PersonalEdition Classic" >nul
rd /s /q "%APPDATA%\AntiVir PersonalEdition Premium" >nul
rd /s /q "%APPDATA%\AntiVir PersonalEdition Classic" >nul
del /f /q "%ProgramFiles%\AntiVir PersonalEdition Premium\*.*" >nul
del /f /q "%ProgramFiles%\AntiVir PersonalEdition Classic\*.*" >nul
rd /s /q "%ProgramFiles%\AntiVir PersonalEdition Premium" >nul
rd /s /q "%ProgramFiles%\AntiVir PersonalEdition Classic" >nul
