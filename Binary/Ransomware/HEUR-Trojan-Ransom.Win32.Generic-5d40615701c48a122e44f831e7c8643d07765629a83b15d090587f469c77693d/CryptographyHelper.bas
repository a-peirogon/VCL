﻿Imports System
Imports System.Security.Cryptography
Imports System.Text

Namespace Complex
	' Token: 0x0200000E RID: 14
	Public Module CryptographyHelper
		' Token: 0x0600004F RID: 79 RVA: 0x000087E8 File Offset: 0x000069E8
		Public Function Encrypt(plainText As String) As String
			Dim keySize As Integer = 0
			Dim publicKeyXml As String = ""
			CryptographyHelper.GetKeyFromEncryptionString(CryptographyHelper.PublicKey, keySize, publicKeyXml)
			Dim inArray As Byte() = CryptographyHelper.Encrypt(Encoding.UTF8.GetBytes(plainText), keySize, publicKeyXml)
			Return Convert.ToBase64String(inArray)
		End Function

		' Token: 0x06000050 RID: 80 RVA: 0x0000882C File Offset: 0x00006A2C
		Private Function Encrypt(data As Byte(), keySize As Integer, publicKeyXml As String) As Byte()
			If data Is Nothing OrElse data.Length = 0 Then
				Throw New ArgumentException("Data are empty", "data")
			End If
			Dim maxDataLength As Integer = CryptographyHelper.GetMaxDataLength(keySize)
			If data.Length > maxDataLength Then
				Throw New ArgumentException(String.Format("Maximum data length is {0}", maxDataLength), "data")
			End If
			If Not CryptographyHelper.IsKeySizeValid(keySize) Then
				Throw New ArgumentException("Key size is not valid", "keySize")
			End If
			If String.IsNullOrEmpty(publicKeyXml) Then
				Throw New ArgumentException("Key is null or empty", "publicKeyXml")
			End If
			Dim result As Byte()
			Using rsacryptoServiceProvider As RSACryptoServiceProvider = New RSACryptoServiceProvider(keySize)
				rsacryptoServiceProvider.FromXmlString(publicKeyXml)
				result = rsacryptoServiceProvider.Encrypt(data, CryptographyHelper._optimalAsymmetricEncryptionPadding)
			End Using
			Return result
		End Function

		' Token: 0x06000051 RID: 81 RVA: 0x00008908 File Offset: 0x00006B08
		Private Function GetMaxDataLength(keySize As Integer) As Integer
			Dim result As Integer
			If CryptographyHelper._optimalAsymmetricEncryptionPadding Then
				result = (keySize - 384) / 8 + 7
			Else
				result = (keySize - 384) / 8 + 37
			End If
			Return result
		End Function

		' Token: 0x06000052 RID: 82 RVA: 0x00008944 File Offset: 0x00006B44
		Private Function IsKeySizeValid(keySize As Integer) As Boolean
			Return keySize >= 384 AndAlso keySize <= 16384 AndAlso keySize Mod 8 = 0
		End Function

		' Token: 0x06000053 RID: 83 RVA: 0x00008970 File Offset: 0x00006B70
		Private Sub GetKeyFromEncryptionString(rawkey As String, <System.Runtime.InteropServices.OutAttribute()> ByRef keySize As Integer, <System.Runtime.InteropServices.OutAttribute()> ByRef xmlKey As String)
			keySize = 0
			xmlKey = ""
			If rawkey IsNot Nothing AndAlso rawkey.Length > 0 Then
				Dim bytes As Byte() = Convert.FromBase64String(rawkey)
				Dim [string] As String = Encoding.UTF8.GetString(bytes)
				If [string].Contains("!") Then
					Dim array As String() = [string].Split(New Char() { "!"c }, 2)
					Try
						keySize = Integer.Parse(array(0))
						xmlKey = array(1)
					Catch ex As Exception
					End Try
				End If
			End If
		End Sub

		' Token: 0x0400005C RID: 92
		Private _optimalAsymmetricEncryptionPadding As Boolean = False

		' Token: 0x0400005D RID: 93
		Private PublicKey As String = "MjA0OCE8UlNBS2V5VmFsdWU+PE1vZHVsdXM+bksvNHYwNlJOS2UzWU9FRTJXRVBQbE9EajF3aFh4UGxZZTcyZXRnUm9uR2JOQ3lMbTJFTjd3aWh6NkIxaDJYRkx5OGsydjhPUUJ6RTFocHZuRE5WOTlJdHQzL3dPaEpJei93QTA0MTg1MVFkY3lnTmlhYkdhT2VFWUdGZEZvQUlOT2VyalNUaFV3S1JuQTUwcW9qekRFc1kzbHhsMFVuUjlDaGJtL3JxM2s5NHZkbFVuNk1GZGw0cVFQTkowdC9SSzdyOGFhKzcvSkNIVTdKRWtVVElMZ3ZhZnd6bHZtZjcxSmd5bUI3Njlvb242eVZFcXoxQVZOZHlWT3lkQnVINEFEYlI5SGlBeVFoT3dWQ0NYdVlHeUEzRHhKbGJUSHh0U2lKaVU2VkNjVjNBV21zMk1DMFR4V0NRakNSNnpNRmpoK2dYMXNmRVlpMHM1RldwVnlPcnJ3PT08L01vZHVsdXM+PEV4cG9uZW50PkFRQUI8L0V4cG9uZW50PjwvUlNBS2V5VmFsdWU+"
	End Module
End Namespace
