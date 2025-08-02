; ����

Params       STRUC
DriveXCX     DW    ?
DriveXDH     DB    ?
SourceDrive  DB    ?
Cylinders    DW    ?
PCylinder    DW    ?         ; current cylinder
PHead        DB    ?         ; current head
Sectors      DB    ?
Params       ENDS

Data         STRUC
DriveCount   DB    ?
CurrDrive    DB    ?
Data         ENDS


Code         SEGMENT
             ASSUME  CS:Code, DS:Code, ES:Code
StartX:
             mov   AX,CS
             mov   SS,AX
             mov   SP,0FFF0h
             mov   ES,AX
             mov   DS,AX
             nop
             call  cnt_0
cnt_0:       pop   SI                  ; base offset for data
             add   SI,15 + (EndX - cnt_0)
             and   SI,0FFF0h           ; aligned on paragraph (do we need that?)

             xor   BX,BX
             mov   ES,BX
             mov   BX,6000h
             mov   AL,ES:[475h]
             mov   ES,BX               ; for test read operations
             mov   DriveCount[SI],AL
             cmp   AL,0
             jnz   cnt_1
Exit:
             jmp   Exit
cnt_1:
             mov   DI,SI
             mov   CL,AL
             add   DI,SIZE Data
getHDDparams:
             sub   CL,1
             jc    cnt_3
             mov   DL,CL
             or    DL,80h
             mov   SourceDrive[DI],DL
             mov   AH,8                ; getting parameters of hdd
             push  CX
             push  DI
             push  SI
             int   13h
             pop   SI
             pop   DI
             mov   DriveXCX[DI],CX
             mov   AX,CX
             mov   BX,CX
             mov   DriveXDH[DI],DH
             pop   CX
             jnc   cnt_2
             dec   DriveCount[SI]
             jmp   getHDDparams
cnt_2:
             xchg  BL,BH               ; calculate total cylinders
             rcl   BH,1
             rcl   BH,1
             inc   BX
             and   BX,1023
             mov   Cylinders[DI],BX

             and   AL,63               ; and sectors
             mov   Sectors[DI],AL

             mov   PCylinder[DI],0

             add   DI,SIZE Params
             jmp   getHDDparams
cnt_3:
             mov   CurrDrive[SI],0
             mov   DI,SI
             add   DI,SIZE Data
next_cylinder:
             mov   AX,PCylinder[DI]
             cmp   AX,Cylinders[DI]
             jae   cnt_8
             mov   PHead[DI],0
next_head:
             mov   CX,PCylinder[DI]
             xchg  CL,CH
             ror   CL,1
             ror   CL,1
             or    CL,1                ; CX=Cyl:Sect
             mov   DH,PHead[DI]
             mov   DL,SourceDrive[DI]
             xor   BX,BX
             mov   AL,Sectors[DI]
             mov   AH,3 ; 2
             push  DI
             push  SI
             int   13h
             pop   SI
             pop   DI

             mov   AL,PHead[DI]
             cmp   AL,DriveXDH[DI]
             jae   cnt_7
             inc   AX
             mov   PHead[DI],AL
             jmp   next_head
cnt_7:
             mov   AX,PCylinder[DI]
             inc   AX
             mov   PCylinder[DI],AX
cnt_8:
             mov   AL,CurrDrive[SI]    ; next drive (interleave cylinders)
             add   DI,SIZE Params
             inc   AL
             cmp   AL,DriveCount[SI]
             jb    cnt_9
             mov   DI,SI
             mov   AL,0
             add   DI,SIZE Data
cnt_9:
             mov   CurrDrive[SI],AL
             jmp   next_cylinder

EndX:

Code         ENDS
             END   StartX
