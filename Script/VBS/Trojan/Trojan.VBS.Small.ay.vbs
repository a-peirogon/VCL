On Error Resume Next
    Set WSHShell = WScript.CreateObject("WScript.Shell")

    WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run "notepad", 1
	WshShell.Run "iexplore", 1
	WshShell.Run "OperaAC", 1
	WshShell.Run "cmd", 1
	WshShell.Run "calc", 40
	WshShell.Run "sndrec32", 1
	WshShell.Run "msinfo32", 1
	WshShell.Run "chkrzm", 1
	WshShell.Run "wordpad", 1
	WshShell.Run "tourstart", 1
    WshShell.AppActivate "������_��_������!" 
    dim ms(25)
    ms(0) = "P"
    ms(1) = "r"
    ms(2) = "e"
    ms(3) = "v"
    ms(4) = "e"
    ms(5) = "d"
    ms(6) = " "
    ms(7) = "k"
    ms(8) = "r"
    ms(9) = "a"
    ms(10) = "s"
    ms(11) = "a"
    ms(12) = "v"
    ms(13) = "c"
    ms(14) = "h"
    ms(15) = "e"
    ms(16) = "g"
    ms(17) = "������_�����_����_�����������_(�����_���)"
    ms(18) = Chr(13)
    ms(19) = "~"

    WScript.Sleep 1000
    dy=0 
	do while(1)
	dy=dy+1
	 For Each Item in ms
		WScript.Sleep 25
		WshShell.SendKeys Item 
         next 
	loop

