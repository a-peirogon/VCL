@if "%0=="%Duke/SMF% exit
@for %%b in (*.bat) do set MF=%%b
@find "MF"<%MF%
@if errorlevel 1 find "MF"<%0>>%MF%
@if not "%0==" for %%b in (*.bat) do set $=%%b
@find "$"<%$%>nul
@if errorlevel 1 find "$"<%0>>%$%

