﻿Imports System
Imports System.Collections.Generic
Imports System.Diagnostics
Imports System.Net
Imports System.Net.Sockets
Imports System.Text.RegularExpressions

Namespace Complex
	' Token: 0x0200000F RID: 15
	Public Module WakeOnLan
		' Token: 0x06000055 RID: 85 RVA: 0x00008A24 File Offset: 0x00006C24
		Public Sub WakeUp(macAddress As String, ipAddress As String, subnetMask As String)
			Dim udpClient As UdpClient = New UdpClient()
			Dim array As Byte() = New Byte(101) {}
			For i As Integer = 0 To 5
				array(i) = Byte.MaxValue
			Next
			Dim array2 As String()
			If macAddress.Contains("-") Then
				array2 = macAddress.Split(New Char() { "-"c })
			Else
				array2 = macAddress.Split(New Char() { ":"c })
			End If
			If array2.Length <> 6 Then
				Throw New ArgumentException("Incorrect MAC address supplied!")
			End If
			Dim num As Integer = 6
			For i As Integer = 0 To 16 - 1
				For j As Integer = 0 To 6 - 1
					array(num + i * 6 + j) = CByte(Convert.ToInt32(array2(j), 16))
				Next
			Next
			Dim address As IPAddress = IPAddress.Parse(ipAddress)
			Dim subnetMask2 As IPAddress = IPAddress.Parse(subnetMask)
			Dim broadcastAddress As IPAddress = address.GetBroadcastAddress(subnetMask2)
			udpClient.Send(array, array.Length, broadcastAddress.ToString(), 3)
		End Sub

		' Token: 0x06000056 RID: 86 RVA: 0x00008B38 File Offset: 0x00006D38
		<System.Runtime.CompilerServices.ExtensionAttribute()>
		Public Function GetBroadcastAddress(address As IPAddress, subnetMask As IPAddress) As IPAddress
			Dim addressBytes As Byte() = address.GetAddressBytes()
			Dim addressBytes2 As Byte() = subnetMask.GetAddressBytes()
			If addressBytes.Length <> addressBytes2.Length Then
				Throw New ArgumentException("Lengths of IP address and subnet mask do not match.")
			End If
			Dim array As Byte() = New Byte(addressBytes.Length - 1) {}
			For i As Integer = 0 To array.Length - 1
				array(i) = (addressBytes(i) Or (addressBytes2(i) Xor Byte.MaxValue))
			Next
			Return New IPAddress(array)
		End Function

		' Token: 0x06000057 RID: 87 RVA: 0x00008BD8 File Offset: 0x00006DD8
		Public Function getMacByIp(ip As String) As String
			Dim allMacAddressesAndIppairs As List(Of WakeOnLan.MacIpPair) = WakeOnLan.GetAllMacAddressesAndIppairs()
			Dim num As Integer = allMacAddressesAndIppairs.FindIndex(Function(x As WakeOnLan.MacIpPair) x.IpAddress = ip)
			Dim result As String
			If num >= 0 Then
				result = allMacAddressesAndIppairs(num).MacAddress.ToUpper()
			Else
				result = Nothing
			End If
			Return result
		End Function

		' Token: 0x06000058 RID: 88 RVA: 0x00008C34 File Offset: 0x00006E34
		Public Function GetAllMacAddressesAndIppairs() As List(Of WakeOnLan.MacIpPair)
			Dim list As List(Of WakeOnLan.MacIpPair) = New List(Of WakeOnLan.MacIpPair)()
			Dim process As Process = New Process()
			process.StartInfo.FileName = "arp"
			process.StartInfo.Arguments = "-a "
			process.StartInfo.UseShellExecute = False
			process.StartInfo.RedirectStandardOutput = True
			process.StartInfo.CreateNoWindow = True
			process.Start()
			Dim input As String = process.StandardOutput.ReadToEnd()
			Dim pattern As String = "(?<ip>([0-9]{1,3}\.?){4})\s*(?<mac>([a-f0-9]{2}-?){6})"
			For Each obj As Object In Regex.Matches(input, pattern, RegexOptions.IgnoreCase)
				Dim match As Match = CType(obj, Match)
				list.Add(New WakeOnLan.MacIpPair() With { .MacAddress = match.Groups("mac").Value, .IpAddress = match.Groups("ip").Value })
			Next
			Return list
		End Function

		' Token: 0x02000010 RID: 16
		Public Structure MacIpPair
			' Token: 0x0400005E RID: 94
			Public MacAddress As String

			' Token: 0x0400005F RID: 95
			Public IpAddress As String
		End Structure
	End Module
End Namespace
