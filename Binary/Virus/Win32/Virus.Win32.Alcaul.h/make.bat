@echo off
tasm /m /ml society.asm >nul
if not exist society.obj goto err
tlink32 /Tpe /aa /x /c society.obj,,,f:\asm\inc\import32.lib >nul
del society.obj           >nul         
echo Make code section r/w.! 
goto end
:err
echo ********* ERROR! *********
:end
@echo on
