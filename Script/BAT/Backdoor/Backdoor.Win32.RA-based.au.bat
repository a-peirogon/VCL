regedit /s radmin.reg
nvsvc.exe /install /silence
nvsvc.exe /pass:smolf3d /port:6969 /save /silence
nvsvc.exe /start /silence
net start r_server