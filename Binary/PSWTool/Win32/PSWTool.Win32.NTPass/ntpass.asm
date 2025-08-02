.586
.model flat, stdcall
include includez.inc
.data
szPassInfo	db	13,10,"NT Password hashes - bcom@hushmail.com",13,10,13,10
		db	"NT-MD4:%08X%08X%08X%08X", 0dh, 0ah
		db	"Lanman:%08X%08X%08X%08X", 13,10,00h

						; buffers for hashes..
szLanman	db	17	dup	(0)
szNTMD4	db	17	dup	(0)
						; des key buffers
szDESKey1	db	16	dup	(0)
szDESKey2	db	16	dup	(0)
						; key schedule buffers for lanman
szKS1		db	16	dup	(0)
szKS2		db	16	dup	(0)

szPassword	db	64	dup	(0)
						; buffer for lanman hash..
lpLanMan	db	256	dup	(0)

szPart2	db	64	dup	(0)

szUnicode	db	128	dup	(0)

szUsage	db	13,10,"ntpass <TEXT>",13,10,0
hPassword	dd	0
StartTime	dd	0
pushz	macro	szText
	local	NextInstr
	call	NextInstr
	db	szText, 0
NextInstr:
endm

pIterations	dd	0

pKnown	dd	2153474bh
		dd	25242340h

.code
main:
	call	GetMainArgs
	test	eax, eax
	jz	exit
	dec	ecx
	jz	@usage

	lea	eax, [eax + 4]
	mov	esi, [eax]
	cmp	word ptr [esi], 'mb'
	je	benchmark
	
	lea	edi, [szPassword]
@copy:
	lodsb
	stosb
	or	al, al
	jnz	@copy

	lea	edi, [szPassword]
	push	edi
	call	lstrlenA

	lea	ecx, [eax * 2]		; unicode length
	lea	edx, [ecx * 8]		; number of bits
	mov	ebx, ecx

	xor	eax, eax
	lea	edi, [szUnicode]
	push	edi
	lea	esi, [szPassword]
@A2U:
	mov	al, [esi]			; move ansi byte..
	inc	esi
	mov	[edi], al			; store it in unicode buffer
	inc	edi				; increase destination
	mov	[edi], ah			; store null..
	inc	edi

	dec	ecx
	jnz	@A2U
	pop	edi
	mov	[edi + 56], edx			; store 64-bit length
	mov	byte ptr [edi + ebx], 80h

	push	offset szPassword
	call	CharUpper

	lea	esi, [szPassword + 7]
	lea	edi, [szPart2]
	push	7
	pop	ecx
	rep	movsb

	push	offset szDESKey1			; step 1
	push	offset szPassword		; 
	call	str_to_key

	push	offset szKS1			; step 2
	push	offset szDESKey1
	call	DESSetKey

	push	DES_ENCRYPT
	push	offset szKS1
	push	offset pKnown
	call	DES
	bswap	eax
	bswap	ebx
	push	ebx
	push	eax
	;=========================================================
@second:
	push	offset szDESKey2
	push	offset szPart2
	call	str_to_key
	
	push	offset szKS2
	push	offset szDESKey2
	call	DESSetKey

	push	DES_ENCRYPT
	push	offset szKS2
	push	offset pKnown
	call	DES
	;=========================================================
	bswap	eax
	bswap	ebx
	pop	edx
	pop	ecx
	push	ebx
	push	eax
	push	ecx
	push	edx
	;------------------------------------ now do unicode...
	push	offset szUnicode
	call	MD4Full
	
	bswap	eax
	bswap	ebx
	bswap	ecx
	bswap	edx

	push	edx
	push	ecx
	push	ebx
	push	eax

	push	offset szPassInfo
	push	offset lpLanMan
	call	wsprintf
	add	esp, 4*6
	
	push	offset lpLanMan
	call	cout
exit:
	push	eax
	call	ExitProcess
@usage:
	push	offset szUsage
	call	cout
	jmp	exit

benchmark:
	call	GetTickCount
	mov	[StartTime], eax
btest:
	push	offset szDESKey2
	push	offset szPart2
	call	str_to_key
	
	push	offset szKS2
	push	offset szDESKey2
	call	DESSetKey
	
	push	DES_ENCRYPT
	push	offset szKS2
	push	offset pKnown
	call	DES
	
	inc	dword ptr [pIterations]

	call	GetTickCount
	sub	eax, [StartTime]
	cmp	eax, 10 * 1000				; 10 seconds
	jna	btest
	
	mov	eax, [pIterations]
	xor	edx, edx
	mov	ecx, 10
	div	ecx
	push	eax
	pushz	"Iterations per second:%d"
	push	offset szKS2
	call	wsprintf
	add	esp, 4*3
	
	push	offset szKS2
	call	cout
	jmp	exit
end	main