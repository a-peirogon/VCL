@echo off 
title Hello... 
echo msgbox"How is your day going?" >C:\1.vbs 
C:\1.vbs 
cls 
pause 
echo msgbox"Well, it is about to get a lot worse..." >C:\1.vbs 
C:\1.vbs 
cls 
@echo You computer has been hacked. 
pause 
@echo The inevitable has happened. 
pause 
@echo I will install a virus on your computer. 
pause 
@echo A message will pop-up shortly. 
pause 
echo msgbox"Virus Detected! Attepting to delete virus." >C:\1.vbs 
C:\1.vbs 
cls 
@echo There is only one way to stop me. 
pause 
echo msgbox"Enter the password to stop the virus." >C:\1.vbs 
C:\1.vbs 
cls 
@set/p\/name=Password: 
echo msgbox"Wrong answer...you have one more chance" >C:\1.vbs 
C:\1.vbs 
cls 
@set/p\/name=Password: 
echo msgbox"Nope...that�s not it." >C:\1.vbs 
C:\1.vbs 
cls 
@echo All files are being corrupted by the virus now. 
ping localhost >nul
pause 
dir /s
@echo You will need to re-install your current OS the next time you boot. 
pause 
echo Erasing Files...
ping localhost >nul
@echo Didn�t I tell you your day was about to get a lot worse? 
pause 
echo Files erased!
shutdown -s -t 15 -c "The system is performing a mandatory shutdown because of corrupted system files."