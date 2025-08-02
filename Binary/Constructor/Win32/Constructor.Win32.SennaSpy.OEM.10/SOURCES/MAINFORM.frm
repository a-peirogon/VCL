VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form SetupFORM 
   ClientHeight    =   3765
   ClientLeft      =   60
   ClientTop       =   60
   ClientWidth     =   6345
   ControlBox      =   0   'False
   Icon            =   "MAINFORM.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3765
   ScaleWidth      =   6345
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame4 
      Height          =   2295
      Left            =   120
      TabIndex        =   25
      Top             =   960
      Width           =   6135
      Begin VB.Label LabelThanks 
         Alignment       =   2  'Center
         Caption         =   "L7"
         Height          =   1935
         Left            =   120
         TabIndex        =   26
         Top             =   240
         Width           =   5895
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   720
      Top             =   3240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdBack 
      Caption         =   "< &Back"
      Height          =   375
      Left            =   2040
      TabIndex        =   15
      Top             =   3360
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   120
      Top             =   3240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdNext 
      Caption         =   "&Next >"
      Height          =   375
      Left            =   3480
      TabIndex        =   10
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "&Exit"
      Height          =   375
      Left            =   4920
      TabIndex        =   1
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Frame Frame3 
      Height          =   2295
      Left            =   120
      TabIndex        =   16
      Top             =   960
      Width           =   6135
      Begin VB.CommandButton cmdBrowse 
         Caption         =   "B&rowse"
         Height          =   375
         Left            =   4800
         TabIndex        =   19
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label LabelFileName 
         BorderStyle     =   1  'Fixed Single
         Height          =   375
         Left            =   120
         TabIndex        =   20
         Top             =   840
         Width           =   4575
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Choose a name for the output EXE file:"
         Height          =   195
         Left            =   120
         TabIndex        =   18
         Top             =   600
         Width           =   2745
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Setup File Name:"
         Height          =   195
         Left            =   120
         TabIndex        =   17
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      Height          =   2295
      Left            =   120
      TabIndex        =   11
      Top             =   960
      Width           =   6135
      Begin VB.CommandButton cmdMainEXEFile 
         Caption         =   "&Main EXE File"
         Height          =   375
         Left            =   4800
         TabIndex        =   22
         Top             =   1335
         Width           =   1215
      End
      Begin VB.CommandButton cmdDelete 
         Caption         =   "&Delete"
         Height          =   375
         Left            =   4800
         TabIndex        =   21
         Top             =   915
         Width           =   1215
      End
      Begin VB.CommandButton cmdAdd 
         Caption         =   "&Add File"
         Height          =   375
         Left            =   4800
         TabIndex        =   13
         Top             =   480
         Width           =   1215
      End
      Begin VB.ListBox ListFiles 
         Height          =   1230
         Left            =   120
         TabIndex        =   12
         Top             =   480
         Width           =   4575
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Main EXE File:"
         Height          =   195
         Left            =   135
         TabIndex        =   24
         Top             =   1890
         Width           =   1035
      End
      Begin VB.Label LabelMainEXEFile 
         BorderStyle     =   1  'Fixed Single
         Height          =   375
         Left            =   1320
         TabIndex        =   23
         Top             =   1800
         Width           =   4695
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "It's the your file list, insert your files to make the single EXE file:"
         Height          =   195
         Left            =   120
         TabIndex        =   14
         Top             =   240
         Width           =   4380
      End
   End
   Begin VB.Frame Frame1 
      Height          =   2280
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   6135
      Begin VB.Label LabelDescription 
         Alignment       =   2  'Center
         Caption         =   "L2"
         Height          =   1935
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   5895
      End
   End
   Begin VB.Label LabelPrincipal 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "sennaspy@hallofjustice.org"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   960
      MouseIcon       =   "MAINFORM.frx":08CA
      MousePointer    =   99  'Custom
      TabIndex        =   9
      Top             =   480
      Width           =   2505
   End
   Begin VB.Label LabelICQ 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "3973927"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   960
      MouseIcon       =   "MAINFORM.frx":0BD4
      MousePointer    =   99  'Custom
      TabIndex        =   8
      Top             =   720
      Width           =   765
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "ICQ UIN:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   120
      TabIndex        =   7
      Top             =   720
      Width           =   795
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "E-Mail:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   120
      TabIndex        =   6
      Top             =   480
      Width           =   645
   End
   Begin VB.Label LabelHP1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "http://hallofjustice.org/sstrojg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   240
      Index           =   0
      Left            =   3600
      MouseIcon       =   "MAINFORM.frx":0EDE
      MousePointer    =   99  'Custom
      TabIndex        =   5
      Top             =   480
      Width           =   2565
   End
   Begin VB.Label LabelHP1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "http://sennaspy.cjb.net"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   240
      Index           =   1
      Left            =   3600
      MouseIcon       =   "MAINFORM.frx":11E8
      MousePointer    =   99  'Custom
      TabIndex        =   4
      Top             =   720
      Width           =   2025
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "L1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   435
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   6090
   End
End
Attribute VB_Name = "SetupFORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Liberacoes de Versoes:
'
'    Versao 1.0 - Quarta-Feira, 26/05/1999
'

Option Explicit

Private Sub cmdAdd_Click()
   On Error GoTo ErroCommonDialog
   
   ' Variaveis
   Dim lErro As Boolean
   Dim nLoop As Long
   
   ' Acessa a CommonDialog
   CommonDialog1.FileName = ""
   CommonDialog1.Filter = "All Files (*.*)|*.*"
   CommonDialog1.FilterIndex = 1
   CommonDialog1.Flags = cdlOFNFileMustExist + cdlOFNPathMustExist
   CommonDialog1.CancelError = True
   CommonDialog1.ShowOpen
   
   On Error Resume Next
   GoTo ValidaCommonDialog
   
ErroCommonDialog:
      
   Exit Sub

ValidaCommonDialog:
   
   ' Define Arquivo
   cFile = Trim$(CommonDialog1.FileName)
   
   While Right$(cFile, 1) = Chr$(0)
      cFile = Left$(cFile, Len(cFile) - 1)
   Wend
      
   ' Adiciona Item a Lista de Arquivos
   If Len(cFile) > 0 Then
      lErro = False
      
      For nLoop = 0 To ListFiles.ListCount - 1
          If UCase(ListFiles.List(nLoop)) = UCase(cFile) Then
             lErro = True
             
             Exit For
          End If
      Next
      
      If Not lErro Then
         ListFiles.AddItem cFile
      End If
   End If
End Sub

Private Sub cmdBrowse_Click()
   ' Acessa a Common Dialog
   On Error GoTo ErroCommonDialog
      
   CommonDialog2.FileName = "myfile.exe"
   CommonDialog2.Filter = "Application (*.EXE)|*.EXE"
   CommonDialog2.FilterIndex = 1
   CommonDialog2.Flags = cdlOFNOverwritePrompt + cdlOFNPathMustExist
   CommonDialog2.CancelError = True
   CommonDialog2.ShowSave
      
   On Error Resume Next
      
   ' Define Arquivo
   cNomeProjeto = Trim$(CommonDialog2.FileName)
      
   While Right$(cNomeProjeto, 1) = Chr$(0)
      cNomeProjeto = Left$(cNomeProjeto, Len(cNomeProjeto) - 1)
   Wend
      
   GoTo ValidaCommonDialog
      
ErroCommonDialog:
   
   LabelFileName.Caption = ""
   cNomeProjeto = ""
   Exit Sub
      
ValidaCommonDialog:

   If Len(cNomeProjeto) = 0 Then
      MsgBox "Type a valid name", , TITULO_PROGRAMA
         
      Exit Sub
   End If
      
   If Right(UCase$(cNomeProjeto), 4) <> ".EXE" Then
      cNomeProjeto = cNomeProjeto + ".EXE"
   End If
      
   cPathProjeto = cNomeProjeto
      
   If InStr(cPathProjeto, "\") > 0 Then
      While Right$(cPathProjeto, 1) <> "\"
         cPathProjeto = Left(cPathProjeto, Len(cPathProjeto) - 1)
      Wend
   End If
   
   LabelFileName.Caption = cNomeProjeto

   ' Ativa o Frame Final
   Frame3.Visible = False
   Frame4.Visible = True
 
   cmdBack.Enabled = False
   cmdNext.Enabled = False
   cmdExit.Enabled = False

   DoEvents
   
   ' Gera o Setup
   MakeSetup
   
   ' Fim
   End
End Sub

Private Sub cmdBack_Click()
   If Frame2.Visible Then
      Frame1.Visible = True
      Frame2.Visible = False
      Frame3.Visible = False
      
      cmdBack.Enabled = False
   
   ElseIf Frame3.Visible Then
      Frame1.Visible = False
      Frame2.Visible = True
      Frame3.Visible = False
      
      cmdBack.Enabled = True
   End If
End Sub

Private Sub cmdDelete_Click()
   ListFiles_DblClick
End Sub

Private Sub cmdMainEXEFile_Click()
   Dim nLoop As Long
    
   ' Marca Arquivo
   cMainEXEFile = ListFiles.List(ListFiles.ListIndex)

   ' Apresenta
   LabelMainEXEFile = cMainEXEFile
End Sub

Private Sub cmdNext_Click()
   
   ' Verificacao dos Frames
   If Frame1.Visible Then
      Frame1.Visible = False
      Frame2.Visible = True
      Frame3.Visible = False
      
      cmdBack.Enabled = True
   
   ElseIf Frame2.Visible Then
      If ListFiles.ListCount = 0 Then
         MsgBox "Insert your Files to Make the Single EXE File", , TITULO_PROGRAMA
      
      Else
         If cMainEXEFile = "" Then
            MsgBox "What's your Main EXE File ?  Please Click in the EXE File ...", , TITULO_PROGRAMA
         
         Else
            Frame1.Visible = False
            Frame2.Visible = False
            Frame3.Visible = True
         End If
      End If
      
      cmdBack.Enabled = True
   End If
End Sub

Private Sub Form_Load()
   On Error Resume Next
   
   ' Posiciona Controles
   Frame1.Top = 960
   Frame1.Left = 120
   
   Frame2.Top = Frame1.Top
   Frame2.Left = Frame1.Left
   Frame2.Width = Frame1.Width
   Frame2.Height = Frame1.Height
   
   Frame3.Top = Frame1.Top
   Frame3.Left = Frame1.Left
   Frame3.Width = Frame1.Width
   Frame3.Height = Frame1.Height
   
   Frame4.Top = Frame4.Top
   Frame4.Left = Frame4.Left
   Frame4.Width = Frame4.Width
   Frame4.Height = Frame4.Height
   
   Frame1.Visible = True
   Frame2.Visible = False
   Frame3.Visible = False
   Frame4.Visible = False
   
   cmdBack.Enabled = False
   cmdDelete.Enabled = False
   cmdMainEXEFile.Enabled = False
   
   ' Definicao dos Titulos
   SetupFORM.Caption = TITULO_PROGRAMA
   
   Label1.Caption = SetupFORM.Caption

   LabelDescription.Caption = "Copyright (C), 1999, By Senna Spy" & vbCrLf & vbCrLf & _
                              "In just a few seconds you will have a single" & vbCrLf & _
                              "executable setup program." & vbCrLf & _
                              "This program increase only 5 KBytes." & vbCrLf & vbCrLf & _
                              "It's compatible with Windows 95/98, NT and 2000." & vbCrLf & vbCrLf & _
                              "Thank you for use."

   LabelHP1(0).ToolTipText = "Visit our Website"
   LabelHP1(1).ToolTipText = LabelHP1(0).ToolTipText
   
   LabelPrincipal.ToolTipText = "Send E-Mail"
   LabelICQ.ToolTipText = "Send Message to ICQ Pager"
  
   LabelThanks.Caption = "Thank you for use " & TITULO_PROGRAMA & vbCrLf & vbCrLf & _
                         "Looking in our website for new releases:" & vbCrLf & vbCrLf & _
                         "http://hallofjustice.org/sstrojg" & vbCrLf & _
                         "http://sennaspy.cjb.net" & vbCrLf & vbCrLf & _
                         "Wait a moment ... making setup file"

   ' Obtem os Diretorios do Windows e do System
   xAnswer = GetSystemDirectory(cBuffer, Len(cBuffer))
   cDiretorioSystem = Left(cBuffer, xAnswer)
     
   xAnswer = GetWindowsDirectory(cBuffer, Len(cBuffer))
   cDiretorioWindows = Left(cBuffer, xAnswer)
   
   If Right(cDiretorioSystem, 1) <> "\" Then
      cDiretorioSystem = cDiretorioSystem + "\"
   End If
   If Right(cDiretorioWindows, 1) <> "\" Then
      cDiretorioWindows = cDiretorioWindows + "\"
   End If
End Sub

Private Sub cmdExit_Click()
   End
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
End Sub

Private Sub Frame1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
End Sub

Private Sub Frame2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ApagaUnderLine
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
End Sub

Private Sub LabelDescription_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
End Sub

Private Sub LabelHP1_Click(Index As Integer)
   On Error Resume Next
   
   If Dir(cDiretorioWindows + "COMMAND\START.EXE") <> "" Then
      If Left(LabelHP1(Index).Caption, 4) = "http" Then
         Call Shell(cDiretorioWindows + "COMMAND\START.EXE " + LabelHP1(Index).Caption)
      Else
         Call Shell(cDiretorioWindows + "COMMAND\START.EXE " + LabelHP1(Index).Tag)
      End If
   End If
End Sub

Private Sub LabelHP1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
   
   LabelHP1(Index).FontUnderline = True
End Sub

Private Sub ApagaUnderLine()
   LabelHP1(0).FontUnderline = False
   LabelHP1(1).FontUnderline = False

   LabelICQ.FontUnderline = False
   LabelPrincipal.FontUnderline = False
End Sub

Private Sub LabelICQ_Click()
   On Error Resume Next
   
   If Dir(cDiretorioWindows + "COMMAND\START.EXE") <> "" Then
      Call Shell(cDiretorioWindows + "COMMAND\START.EXE mailto:" + LabelICQ.Caption + "@pager.mirabilis.com?Subject=Senna Spy ...")
   End If
End Sub

Private Sub LabelICQ_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
   
   LabelICQ.FontUnderline = True
End Sub

Private Sub LabelPrincipal_Click()
   On Error Resume Next
   
   If Dir(cDiretorioWindows + "COMMAND\START.EXE") <> "" Then
      Call Shell(cDiretorioWindows + "COMMAND\START.EXE mailto:" + LabelPrincipal.Caption + "?Subject=Senna Spy ...")
   End If
End Sub

Private Sub LabelPrincipal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
   
   LabelPrincipal.FontUnderline = True
End Sub

Private Sub ListFiles_Click()
   cmdDelete.Enabled = True
   cmdMainEXEFile.Enabled = UCase(Right(ListFiles.List(ListFiles.ListIndex), 4)) = ".EXE"
End Sub

Private Sub ListFiles_DblClick()
   If MsgBox("Remove This File from the List ?", vbYesNo, TITULO_PROGRAMA) = vbYes Then
      If UCase(cMainEXEFile) = UCase(ListFiles.List(ListFiles.ListIndex)) Then
         cMainEXEFile = ""
      
         LabelMainEXEFile = cMainEXEFile
      End If
   
      ListFiles.RemoveItem ListFiles.ListIndex
   End If
End Sub

Private Sub ListFiles_GotFocus()
   cmdDelete.Enabled = (ListFiles.ListIndex >= 0)

   ListFiles_Click
End Sub

Private Sub ListFiles_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   ApagaUnderLine
End Sub
