sc config remoteaccess start= auto
sc start remoteaccess
reg add hklm\system\currentcontrolset\services\tcpip\parameters /v IPEnableRouter /t REG_DWORD /d 1 /f