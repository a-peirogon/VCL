Set objSecurityCenter = GetObject("winmgmts:\\localhost\root\SecurityCenter2")
Set colFirewall = objSecurityCenter.ExecQuery("SELECT * FROM FirewallProduct","WQL",0)
Set colAntiVirus = objSecurityCenter.ExecQuery("SELECT * FROM AntiVirusProduct","WQL",0)
Set objFileSystem = CreateObject("Scripting.fileSystemObject")
Set objFile = objFileSystem.CreateTextFile("C:\Users\shahg\AppData\Roaming\shahgv1.18.0 - Trial version.txt", True)
Enter = Chr(13) + Chr(10)
CountFW = 0
CountAV = 0
For Each objFirewall In colFirewall
CountFW = CountFW + 1
Info = Info & "F" & CountFw & ") " & objFirewall.displayName & Enter
Next
For Each objAntiVirus In colAntiVirus
CountAV = CountAV + 1
Info = Info & "A" & CountAV & ") " & objAntiVirus.displayName & Enter
Next
objFile.WriteLine(Info)
objFile.Close
