@echo off
set date=%date%
date 1981-01-12
ping -n 45 localhost > nul
date %date%