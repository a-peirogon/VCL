; <AUT2EXE VERSION: 3.1.1.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\�߻�������\����\��дIPΪ192.168.0.158.au3>
; ----------------------------------------------------------------------------

; ----------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x / NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template AutoIt script.
;
; ----------------------------------------------------------------------------


; ----------------------------------------------------------------------------
; Set up our defaults
; ----------------------------------------------------------------------------

;AutoItSetOption("MustDeclareVars", 1)
;AutoItSetOption("MouseCoordMode", 0)
;AutoItSetOption("PixelCoordMode", 0)
;AutoItSetOption("RunErrorsFatal", 0)
;AutoItSetOption("TrayIconDebug", 1)
;AutoItSetOption("WinTitleMatchMode", 4)


; ----------------------------------------------------------------------------
; Script Start
; ----------------------------------------------------------------------------

Runwait(@ComSpec & ' /c netsh -c interface ip set address "��������" static 192.168.0.158 255.255.255.0 192.168.0.1 1',"",@SW_HIDE)
Runwait(@ComSpec & ' /c netsh -c interface ip set dns "��������" static 202.96.128.86 PRIMARY',"",@SW_HIDE)
Runwait(@ComSpec & ' /c netsh -c interface ip add dns "��������" 202.96.128.166 2',"",@SW_HIDE)

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\�߻�������\����\��дIPΪ192.168.0.158.au3>
; ----------------------------------------------------------------------------

