@echo off
net stop "VNC server"
net stop "VNC server version 4"
sc delete WinVNC4
sc delete winvnc
cls
c:
cd\
cd %programfiles%
cd realvnc\vnc4\ & unins000.exe /SILENT
cls
c:
cd\
cd %programfiles%
cd UltraVNC\ & unins000.exe /SILENT
cls
c:
cd\
cd %programfiles%
cd ORL\VNC\ & unins000.exe /SILENT
cls
c:
cd\
cd %programfiles%
cd ORL\UltraVNC\ & unins000.exe /SILENT
cls
c:
cd\
cd %programfiles%
cd realvnc\ & unins000.exe /SILENT
cls
c:
cd\
cd %programfiles%
cd TightVNC\ & unins000.exe /SILENT
cls

