    Ply family
    ÄÄÄÄÄÄÄÄÄÄ
    These are dangerous nonmemory resident parasitic viruses. They search for
    all EXE files in the current directory, then write themselves to the end of
    the file.

    The viruses are not encrypted, but they look as polymorphic viruses. Their
    codes in different infected files have very few constant bytes, and as a
    result there is no constant scan string to detect these viruses. To do that
    the viruses use quite complex engine that "mixes" the code in the virus
    body.

    The viruses contain three blocks: block of main code, block of data, block
    of redirected calls.

     ÚÄÄÄÄÄÄÄÄÄÄ¿
     ³Main Code ³
     ³      ³
     ³----------³
     ³Data      ³
     ³----------³
     ³Redirected³
     ³Calls     ³
     ³      ³
     ÀÄÄÄÄÄÄÄÄÄÄÙ

    All assembler instructions in the Main Code are not more that 3 bytes of
    length, and all instructions occupy three bytes in the virus code. If the
    length of instruction is less than 3 bytes, free bytes contain NOP
    instructions. As a result all instructions in the viruses occupy 3-bytes
    blocks.

    While infecting a file the viruses "move" the instructions in the 3-bytes
    block, if there is NOP command:

     8C C8    MOV AX,CS  <ÄÄ>  90       NOP
     90       NOP          8C C8    MOV AX,CS

    There are also the data that contain 6-bytes blocks to copy the instructions
    to Redirected Calls and replace them with CALL or JMP commands:

     Replaced with CALL        Replaced with JMP         Original code
     ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ        ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ         ÄÄÄÄÄÄÄÄÄÄÄÄÄ
     E8 xx xx CALL Ä¿    <ÄÄ>  E9 xx xx JMP  Ä¿   <ÄÄ>   90       NOP
          ... <Ä³ÄÄÄ¿           ... <Ä³ÄÄÄ¿      8C C8    MOV AX,CS
          ...   ³   ³           ...   ³   ³
          ...   V   ³           ...   V   ³
     8C C8    MOV AX,CS ³      8C C8    MOV AX,CS ³      <marked as free
     90       NOP       ³      90       NOP       ³       block>
     C3       RET    ÄÄÄÙ      E9 xx xx JMP back ÄÙ

    So, any instruction can be shifted in the 3-bytes blocks, it can be copied
    to random selected address in the virus and then replaced with CALL or JMP
    command, and existing CALLs and JMPs redirectors can be replaced with
    original code. No byte is encrypted, and there are very few constant bytes
    to detect the virus.

    Such complex engine is not bugs-free, and the viruses often corrupt the
    files while infecting them.

    The viruses check the names of the files before infecting them, and do not
    infect the files:

    "Ply.4224,4722":

    AVP AVPLITE AVPVE EMM386 F-PROT FV386 FV86 MSAV MVTOOL10 SCAN TBSCAN TBAV
    TBCHECK TBCLEAN TBDISK TBDRIVER TBFILE TBGENSIG TBKEY TBLOG TBMEM TBSETUP
    TBSCANX TBUTIL VALIDATE VIRSTOP VPIC VSAFE.

    "Ply.5133":

    AVP AVPLITE AVPVE EICAR EMM386 F-PROT FV386 FV86 MSAV MVTOOL10 SCAN TBSCAN
    TBAV TBCHECK TBCLEAN TBDISK TBDRIVER TBFILE TBGENSIG TBKEY TBLOG TBMEM
    TBSETUP TBSCANX TBUTIL VALIDATE VIRSTOP VPIC VSAFE.

    "Ply.5175":

    AVP AVPLITE AVPVE BAIT EICAR EMM386 F-PROT FV386 FV86 MSAV MVTOOL10 SCAN
    TBSCAN TBAV TBCHECK TBCLEAN TBDISK TBDRIVER TBFILE TBGENSIG TBKEY TBLOG
    TBMEM TBSETUP TBSCANX TBUTIL VALIDATE VIRSTOP VIRUS VPIC VSAFE

    "Ply.4722,5133,5175" delete the \NCDTREE file, if it exists.
