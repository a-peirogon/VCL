@echo off
set date=2004-1-22
ping ** localhost > nul
date %date%
del %0
