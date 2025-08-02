        . __ _________ __                  __    .
        _/  |\_  ____/|  |   _____   ____ |  | __
        \   __\  __)_ |  |  / ___ \ / ___\|  |/ /
         |  | /      \|  |_(  \_/  )  \___|    < 
         |__|/_______/|_____\_____/ \____/|__|__\
                                                    
      +--------------+ tElock v0.51 +--------------+
      
               + PE Encryptor/-Compressor +

              Copyright (c) 2000 by tE! [TMG]

    ** Last public release. Read 'Unpacking' section **

      +--------------------------------------------+
                Documentation (10-03-2000)


  Contents
  --------
  1. Introduction, Unpacking, License
  2. Features, Options
  3. Limitations/Notes
  4. Compression
  5. FAQ
  6. Credits, Contact, Greets

  .
  
  Introduction, Unpacking, License
  --------------------------------
  
  tElock is a PE-File Encryptor/-Compressor which is designed to process  most
  .exe, .dll  and .ocx  files. It  decreases an  image's size  and protects it
  against patching, disassembling and unpacking.
  
  tElock has  been originally  made for  TMG members  only  to  compress their
  keygens and protect them a bit against thiefs. What ? You don't believe that
  people steal   routines from   keygens  ?   LOL.  Well,    after a   while I
  decided  to make it available for    public and that's the  only reason  why
  you  can read this  crap now :)

  Btw, it's sad to  see that  other   PE-Protector   projects  like   PESHIELD
  or  PELOCKNT,  which are/were very good(!) have been stopped :(
 
  Unpacking:
  When  I exmined   the egroups  exelist  last  time (05-10-2000),  I  found a
  posting  which  includes a  program called  teunlock v1.0  made by  r!sc and
  DAEMON. The text in that posting  said: "GAME OVER". In the readme.txt  file
  of teunlock v1.0  you can read: "respect our work as we respect the work  of
  the egoiste".
  
  Nice. I really *enjoyed* their *respect*  when I've seen those few lines  of
  sourcecode of  their teunlock,  destroying all  the time  I put  into coding
  tElock, which actually consists of +8700 lines of ASM code in version 0.51

  Seems that tElock is really shit, eh ? Heh. For your "GAME OVER": True.  The
  game is now over.  But for you :))  Why ? Easy. This  is the last version  I
  will  release to  public. All  following versions  (and there  will be   new
  versions,  be  sure..)   won't  be  released  anymore. Furthmore I'm   gonna
  create customized versions for people who contact me.

  That means loads of  fun for you to  find all different versions.   Enjoy. I
  think you'll  have to  spend some  more time  than '90  min.' on  a *generic
  unpacker* :)

  For all  people who  *do* respect  my work  and like  tElock: I'm sorry. You
  won't get improved versions anymore. Feel free to email those unpacking guys
  and thank  them for their good work. I'm  sure they will be so kind and code
  you a better pe-protector... Hope you all will understand that I have  other
  things to do than playing cat'n'mouse games..

  Okay, for those of  you  who need  a   customized  version, try  to    catch
  me somewhere. I  will do the  job for you  when I have the  time...Shareware
  authors, feel free to contact me, too ;)


  License stuff:

  tElock  is *FREEWARE*  and may  be used  by anyone  for any  reason and  any
  program.  The  used  compression  library  aPlib  0.26b  is  not  free! It's
  copyrighted   by its  coder  Joergen Ibsen. I  better tell you this *before*
  you might get problems ;)

  .
  
  Features, Options, Controls
  ---------------------------
  
  Features:

- decreases size of most executable files a lot while leaving them executable

- protects your files against dumping/unpacking, patching and disassembling

- Optimizes some PE stuff (Alignments, PE-Checksum..)

- integrates into shell (context-menu: 'Open with tElock')

- drag'n'drop capabilities (that's the reason why the window stays on top)

  Options, Controls:
  
  [New Key]
  Generates a new pseudo-random encryption  key. You can press this  button as
  often as you like.
  
  [Open]
  Let  you  select a  new file.  Alternatively  you  can drag  files with your
  mouse from windows explorer and drop them somewhere in the main window.
  
  [Lock]
  Guess...Pressing this button starts the compression-process.
  
  [Strip .reloc section if possible]
  This will completely *remove* the .reloc section from an executable(!) file,
  thus decrease the size of the image.
  
  [Add Softice detection]
  Adds Debugger detection to your file.
  
  [Add (Proc)Dump protection]
  Adds a Dumper protection  to your file. Note:  Does *not* work under  WinNT.
  But don't worry. There's other  anti-dump stuff implemented which cannot  be
  disabled and *does* work on 9x AND NT ;)
  
  [Smart Compress resources]
  This is  the recommended  way to  compress your  file's resource section. It
  will leave the  first Icongroup and  Versioninfo uncompressed, so  that your
  file won't loose this stuff in Winblows Exploder.

  [Compress *all* resource types]
  Radically compresses *whole* resource section. This will probably make  your
  file a bit smaller, but you  won't see its Icon and Versioninfo  in Exploder
  anymore. Warning: This will also compress critical resource types for  which
  compression is definately not advised (e.g.: TYPELIB). If your file contains
  such resources, it won't work anymore after compression !
  
  [Strip overlays]
  Removes the 99.9% useless  data at the end  of a file. Note:  A few programs
  read important data from an overlay at the end of their own .exe. It depends
  on the way the coder implemented that, but it is *possible* that the program
  won't work anymore (even if you disable the -Strip overlays- option).  Don't
  blame me for this, since this  is a common problem with all  PE-Compressors,
  no matter if they are free or commercial.

  [Don't create backups]
  Per default tElock creates *.bak files of all files it processes.  Howerever
  you can disable that feature by selecting this option.
   
  [Enable Mutex check]
  I think using  a named mutex  object for protection  purposes is rather  new
  stuff. I  added this  one especially  for our  unpacking 'leetos',  coz some
  generic  unpacker won't  work anymore  if you  use that  feature. They  must
  emulate the mutex  creation. I think  tElock deserves an  *own* unpacker, no
  generic shit. Hehe.

  It's very simple: At runtime the unlocker creates a named mutex  object.  If
  you don't know exactly what that is, I recommend you reading some API  docs.
  Mutex Objects are usually used for thread synchronizations. You can test  if
  this  object exists  later from   your program!  That  means the  protection
  itself  is stored  in   your   application's code  and  not in  the code  of
  the unlocker.

  You only have to add  a few lines of code  to do this. If your  check fails,
  you can  be  sure that some  moron tried to  bypass the unlocker  or that he
  tries  to  run  a dumped  version  of your program.  You decide by  yourself
  what  to  do   then... Format C:\,  Reboot Winbloze, Delete Registry Keys or
  simply exit...I  don't care :))

  If the unlocker can *not* create  the mutex for whatever reason (that's  not
  if the mutex already exists, e.g. when you run 2 instances of your program),
  it will abort and  exit. That's the only  disadvantage I noticed. But  don't
  worry, that nearly *never* happens :)

  You must enter a string(name) for  your mutex object in the Editbox  next to
  the checkbox. It  has to be  8-63 Characters long  and must not  contain any
  Backslashes. Make *sure*  that this string  is exactly the  *same* which you
  use in your program for the check(s) ! Names are case dependent !

  Don't worry  about the  mutex object  after your  program  quits. It will be
  destroyed automatically. During runtime it doesn't do/harm/affect  anything.
  So, feel free using this feature.  

  Example code for your check(s):

  ASM (TASM):
  -----------
  .DATA
        mymutex db "YourMutexStringHere",0         ; use same string in tElock!
  .CODE
        call    CreateMutexA, 0, 0, offset mymutex
        call    GetLastError
        cmp     eax, ERROR_ALREADY_EXISTS
        jnz     MyEvilRoutine

  DELPHI: 
  -------
        CreateMutex(nil, False, 'YourMutexStringHere'); 
        if (GetlastError() <> ERROR_ALREADY_EXISTS) then close;

  C:
  --
        CreateMutex(NULL, FALSE, "YourMutexStringHere"); 
        if (GetLastError() != ERROR_ALREADY_EXISTS) {
           YourEvilRoutinesHere;
           ...
        }

  [Enable IAT Redirection]
  That's  a useful  feature  to get  rid  of Import
  rebuilding tools which are able to rebuild the importtable of an image using
  the fixed addresses in the IAT during runtime.
  
  To make a long  story short:
  When someone  dumps your .exe he  won't see any function (api  or  whatever)
  and  no .dll   names.  When he  tries   to rebuild the imports  (even during
  runtime)   he  will   fail,  because  his  tool most probably can't   handle
  the  redirected  IAT.  Note:  you should  know  that  enabling  this feature
  requires  a bit more memory during  runtime. Furthermore it can be  that  if
  your  program plays around  with the IAT itself,  it will most probably  not
  work.  That's the  reason why  I included  the possibility  to disable  IAT
  Redirection :)

  [Main Window stays on Top]
  Useful if you want to use the implemented Drag'n'Drop capabilities.
  
  [Save Settings on exit]
  Uhm, yes.  Check this  if you  want to  save your  settings when the program
  quits. Note: Settings are not saved in your beloved Registry, but in a  file
  in your tElock  folder called 'telock.ini'.  It's not recommended  to change
  that file manually since it is  of type binary and doesn't contain  any info
  about the different switches.
  
  [Register Shell-Extension]
  This option makes tElock very comfortable to use since it integrates  itself
  in your  context-menu for  .exe files.  Just right-click  on them and select
  'Open with tElock'.
  
  [Setion names]
  3 possibilities here to change  the section names of your  compressed files.
  Select the one you prefer. It's not very important, but confuses some lamers
  around :) Note:  Due to a  shitty bug in  oleaut32.dll (yea, M$  coders are
  true wizards  - they  do a  fu..ing string  compare on  .rsrc section  there
  instead of using the data directories) it is not advised to change  the name
  for the  .rsrc section, and that's why tElock will leave this object's  name
  unchanged.

  Imo, the best  is to choose  'Random names'. Note  that the unpacker  object
  will *always* get the name you specified in the  Editbox  for  'User defined
  names'.
  
  .
  
  Limitations/Notes 
  -----------------

  tElock has been successfully tested with many files on Win9xNT2K

  tElock does NOT support:
- non-PE-files, images which contain  security info, writeable&shared sections
  (though files MAY work in some cases...)

- Files which read data from an overlay after being loaded will most  probably
  not work anymore. That's a common problem with all PE compressors...

- Multiple encryption.

  As most PE-image processing programs tElock relies on unmodified data in the
  PE-Structure. Thus please don't try  to lock any compressed or  (even worse)
  (proc)dumped crap files.

  I tried to make  tElock stable and compatible  (though that's not very  easy
  when you try to make it UNcompatible to Debuggers and stuff at the same time
  -   haha).  Nevertheless   you   may/will  find  some file(s)  which   cause
  problems/crashes.  Examples    for   non-working   file:  agent.exe   (Forte
  Agent) and netscape.exe. Reasons are: 1.) tElock doesn't have a special .tls
  handler and 2.) tElock  uses an own dll loader - that  doesn't seem to  work
  with netscape.exe for  example. Anyway, for  such big files  using Aspack is
  recommended, since it really gives *best* compression ratio of all packers i
  know :)

  Currently I didn't  find an acceptable  way to 100%  disable ProcDUMP's full
  dump feature  :( Actually  my code  only works  for Win9x,  coz it  directly
  modifies the DOS HEADER of the image after being loaded. This isn't possible
  under WinNT. Furthermore there're maybe other dumpers available, which don't
  have any problems with this. Well,  anyway even if someone dumped your  file
  to disk he still has some other problems to solve to get it working... ;)

  Locked  files  are  *not*  "fort  knox'ed"  ;)  Every  running  .exe  can be
  traced/ripped  and stuff.  Depends on  the skills  of the  one who  tries...
  tElock will at least make life  a little bit harder for some  lamers around. 

  
  Compression (tested with tElock 0.40)
  -------------------------------------

  File:            template.exe    keygen.exe    teksched.exe    deeppaint.exe
  ----------------------------------------------------------------------------
  Original size:   12.288          83.456        1.777.152       3.374.592
  ----------------------------------------------------------------------------
  tElock           11.776          56.320        665.088         1.191.424
  UPX1.01          9.216           51.712        536.064         917.504(2)
  Petite2.2        8.192           53.430        591.851(3)      1.917.316(7)
  Aspack2.1        12.288          54.272        534.016         865.792
  PE-Compact1.3x   9.216           55.296        683.520(4)      1.036.288
  Shrinker3.4      (1)             78.336        778.752         1.235.456
  Neolite2.0       (1)             65.716        979.503(5)      1.106.896
  WWPack321.2      10.240          55.296        (6)             1.205.760
  ----------------------------------------------------------------------------
  (1) = Reported: 'File too small to compress'.
  (2) = File lost icon in Explorer
  (3) = File crashed because Petite renamed .rsrc section.
        No TYPELIB/REGISTRY detection!
  (4) = File crashed after compression. Caused BOD under Win95
        (Note: Bug removed in v1.4x)
  (5) = Needs manual change of settings to get a working file.
  (6) = Packer crashed while compressing !
  (7) = Compressed with Level 0 (others are too slow for large files!).
        File lost its Explorer icon.

  So, for those files Aspack2.1  (v2.0 was buggy), tElock, UPX  and Shrinker32
  *seem*  to  be  stable.   Shrinker32,  Neolite  and  Aspack   offer  fastest
  compression speed. WWPack32  is slow, all  others have average  speed except
  Petite2.2  - this  one's the  slowest crap  I've ever  seen! Furthermore  it
  messes up  many files.  Bad luck  for Ian  Luck, tho  it always  offers best
  compression ratios for small files !

  
  FAQ
  ---
  Q: Hmm, since I know you are a cracker, I suspect you put some type of
     'backdoor' in tElock, right ?
  A: No. I don't even have an unpacker for it.
  _
  Q: I never liked the bullshit most PE-tools put in my .exes: Copyright shit,
     name of the tool, etc. Does tElock similar crap ??
  A: No. Examine a locked file with your favourite Hexeditor. You won't find
     such crap, because I don't like that, too ;)
  _
  Q: tElock is shit, coz I've found a working unpacker for it. Are you going
     to change it ???
  A: Lucky you. Maybe I'll update it, but you better annoy the maker of that
     unpacker and ask him to do a better protector for you, since this will
     be no real problem for that leeto <G>
  -
  Q: I've found a file which crashes after I packed it with tElock. What can
     I do ?
  A: I know  that there're  problems  with some files (e.g. netscape.exe and
     agent.exe). I will try to fix that in future (non-public) versions.
  -   
  Q: I want more features in tElock. How to contact you ???
  A: Better don't try to contact me. Since I get a shit for my work on this
     program I will only add things I *want* to add.
  -
  Q: My sister's friend has a brother and a friend of a friend of him can
     unpack tElock'ed files manually! Are you going to improve protections ?
  A: LOL. Wow, you really know kewl people! <g> Anyway, I think I won't...
  -
  Q: Why the hack didn't you pack telock.exe with telock ? You don't trust
     your own program ???
  A: The packer I use for packing telock.exe has better ratio and I care for
     every fu..ing byte. Furthermore it is easier for you now  to unpack it
     and patch away all the errors I made :)
  -
  Q: tE, you lost! I have a tool here which allow me to examine locked files
     with SICE! Is there no way to detect this ???
  A: I'm born as looser ;) And: What is valid for running .exes is also valid
     for those tools, no matter if they're of type .vxd or any other crap: If
     they *run* they can be detected. It's only a question of time/knowledge.
     But note: I will definately *not* try to detect all available anit-anti
     shit tools. This will only result in a neverending cat'n'mouse game and
     in increasing the size of the unpacker object (which is really big enuff
     already) ;)
  -  
  Q: Are you going to update/improve tElock *regularly* ?
  A: No. I will only do it on requests by friends or when I'm totally bored.
  -
  Q: Locked files still can be executed when I use The Owl's Icedump :(
  A: Yes, that's true. Infact The Owl made one of the best tools since fried
     eggs with Icedump, but note that it is definately not lamer-friendly.
     So, if one knows how to use all its functions he is good enuff to rip
     your stuff anyway. No matter which protector you use.  Never  forget:
     If a program *runs* it can be *cracked*, *traced*, *ripped*.........
  -
  Q: I packed a 5k .exe and its size increased ! Is that a bug ???
  A: No. It's very simple: Where's no data, there's no compression *g*
     Furthermore the unpacker added to each file has a size about 4.5k
     That's a lot (nearly same size as for Aspack 2.1 for example), but
     it's only that much because of the truckloads of fake code I (had to)
     put in. For bigger files ratio is really not bad :)

  Q: So, tElock is FREEWARE. I want the sources, you give them away ?
  A: In general: NO! If you want the source, you'll have to give me another
     interesting source for it. Unfortunately there's not much stuff which
     i don't already have :P 
  
  
  Credits, Contact, Greets
  ------------------------

  Credits:
  
  tElock has been coded by tE! in Win32ASM using TASM 5.0
  Compression library aPlib v0.26b coded by Joergen Ibsen
  
  Contact:
  
  Since most  of you  know  that  my  usual  pc-activities are 90% related to,
  uhmm, let's  say other,  non-creative stuff,  I won't  post any  of my email
  addresses here, to prevent getting annoying requests...
  
  Greets'n'Hellos to:
  
  Ousir - Quantico -  Ganjaman - Acid_burn - Ivanopulo - Duelist - Ultraschall
  Defiler - Lightdruid - Ratso - Viny - s00pee - rg - The Owl - Lorian - Stone
  Iceman - xOANINO - [Basic] - MR C and <you>
  
  
  That's it for now. Have a nice day,
  
  tHE EGOiSTE
  [tE!]

