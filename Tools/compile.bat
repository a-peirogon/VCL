@echo off
::ctty nul
::@for %%c in (*.asm) do echo %0 %%c

@for %%c in (*.asm) do  tasm %%c
::@for %%c in (*.obj) do  tlink /t %%c
::@for %%c in (*.obj) do  tlink %%c

::@for %%fichier in (*.obj) do tlink %%fichier
