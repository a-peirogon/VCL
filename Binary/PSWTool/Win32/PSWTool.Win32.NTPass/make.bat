SET PATH=C:\MASM32\BIN;
ml /Cp /coff /c /nologo ntpass.asm
link /SUBSYSTEM:CONSOLE /nologo ntpass.obj
del ntpass.obj
c:\WINNT\system32\cmd.exe
