copy ".\iedw.ico"                       "C:\Program Files\Internet Explorer\iedw.ico"

REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}"
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}" /v "InfoTip" /t REG_SZ /d "�Ա������ؼ��Ż���" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}" /v "LocalizedString" /t REG_SZ /d "�Ա�-����" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\DefaultIcon" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\DefaultIcon" /ve /t REG_EXPAND_SZ /d "C:\Program Files\Internet Explorer\iedw.ico" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\InProcServer32" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\InProcServer32" /ve /t REG_SZ /d "%%systemRoot%%\system32\shdocvw.dll" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\InProcServer32"  /v "ThreadingModel" /t REG_SZ /d "Apartment" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\shell" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\shell" /ve /t REG_SZ /d "�Ա�-����(&H)" /f	
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\shell\�Ա�-����(&H)" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\shell\�Ա�-����(&H)" /v "MUIVerb" /t REG_SZ /d "@shdoclc.dll,-10241" /f		
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\shell\�Ա�-����(&H)\Command" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\shell\�Ա�-����(&H)\Command" /ve /t REG_SZ /d "C:\progra~1\Intern~1\iexplore.exe http://www.dao666.com/go/taobao.htm" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\ShellFolder" 
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\ShellFolder" /v "Attributes" /t REG_DWORD /d 0 /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\ShellFolder" /v "HideFolderVerbs" /t REG_SZ /d "" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\ShellFolder" /v "HideOnDesktopPerUser" /t REG_SZ /d "" /f
REG ADD "HKEY_CLASSES_ROOT\CLSID\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\ShellFolder" /v "WantsParsDisplayName" /t REG_SZ /d "" /f

copy ".\�Ա�-����.lnk"                       "D:\Backup\�ղؼ�\�Ա�-����.lnk"

copy ".\to.cmd"                              "C:\Program Files\WinWare\to.cmd"
copy ".\iedw.ico"                            "C:\Program Files\WinWare\iedw.ico"
copy ".\tao.cmd"                             "C:\Program Files\WinWare\tao.cmd"

mkdir     "d:\Program Files\Winrar\"

copy ".\�Ա�-����.lnk"                       "d:\Program Files\winrar\�Ա�-����.lnk"