ml /Cp /coff /c /nologo calypzo.asm
link /SUBSYSTEM:CONSOLE /nologo calypzo.obj
copy calypzo.exe ..\calypzo.exe
del calypzo.obj
del calypzo.exe

