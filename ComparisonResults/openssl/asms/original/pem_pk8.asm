; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_PEM_read_bio_PKCS8
PUBLIC	_PEM_read_PKCS8
PUBLIC	_PEM_write_bio_PKCS8
PUBLIC	_PEM_write_PKCS8
PUBLIC	_PEM_read_bio_PKCS8_PRIV_KEY_INFO
PUBLIC	_PEM_read_PKCS8_PRIV_KEY_INFO
PUBLIC	_PEM_write_bio_PKCS8_PRIV_KEY_INFO
PUBLIC	_PEM_write_PKCS8_PRIV_KEY_INFO
PUBLIC	_PEM_write_bio_PKCS8PrivateKey_nid
PUBLIC	_PEM_write_bio_PKCS8PrivateKey
PUBLIC	_i2d_PKCS8PrivateKey_bio
PUBLIC	_i2d_PKCS8PrivateKey_nid_bio
PUBLIC	_d2i_PKCS8PrivateKey_bio
PUBLIC	_i2d_PKCS8PrivateKey_fp
PUBLIC	_i2d_PKCS8PrivateKey_nid_fp
PUBLIC	_PEM_write_PKCS8PrivateKey_nid
PUBLIC	_d2i_PKCS8PrivateKey_fp
PUBLIC	_PEM_write_PKCS8PrivateKey
PUBLIC	??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@ ; `string'
PUBLIC	??_C@_0BG@OLFPLKDJ@ENCRYPTED?5PRIVATE?5KEY?$AA@	; `string'
PUBLIC	??_C@_0M@GKANOOJ@PRIVATE?5KEY?$AA@		; `string'
EXTRN	_OPENSSL_cleanse:PROC
EXTRN	_BIO_new_fp:PROC
EXTRN	_BIO_free:PROC
EXTRN	_ERR_put_error:PROC
EXTRN	_EVP_PKEY_free:PROC
EXTRN	_d2i_PKCS8_bio:PROC
EXTRN	_i2d_PKCS8_bio:PROC
EXTRN	_i2d_PKCS8_PRIV_KEY_INFO_bio:PROC
EXTRN	_X509_SIG_free:PROC
EXTRN	_d2i_X509_SIG:PROC
EXTRN	_i2d_X509_SIG:PROC
EXTRN	_PKCS8_PRIV_KEY_INFO_free:PROC
EXTRN	_d2i_PKCS8_PRIV_KEY_INFO:PROC
EXTRN	_i2d_PKCS8_PRIV_KEY_INFO:PROC
EXTRN	_EVP_PKCS82PKEY:PROC
EXTRN	_EVP_PKEY2PKCS8:PROC
EXTRN	_PKCS8_decrypt:PROC
EXTRN	_PKCS8_encrypt:PROC
EXTRN	_PEM_ASN1_read_bio:PROC
EXTRN	_PEM_ASN1_write_bio:PROC
EXTRN	_PEM_ASN1_read:PROC
EXTRN	_PEM_ASN1_write:PROC
EXTRN	_PEM_def_callback:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
EXTRN	___security_cookie:DWORD
;	COMDAT ??_C@_0M@GKANOOJ@PRIVATE?5KEY?$AA@
CONST	SEGMENT
??_C@_0M@GKANOOJ@PRIVATE?5KEY?$AA@ DB 'PRIVATE KEY', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@OLFPLKDJ@ENCRYPTED?5PRIVATE?5KEY?$AA@
CONST	SEGMENT
??_C@_0BG@OLFPLKDJ@ENCRYPTED?5PRIVATE?5KEY?$AA@ DB 'ENCRYPTED PRIVATE KEY'
	DB	00H						; `string'
CONST	ENDS
;	COMDAT ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
CONST	SEGMENT
??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@ DB '.\crypto\pem\pem_'
	DB	'pk8.c', 00H					; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _do_pk8pkey_fp
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_isder$ = 16						; size = 4
_nid$ = 20						; size = 4
_enc$ = 24						; size = 4
_kstr$ = 28						; size = 4
_klen$ = 32						; size = 4
_cb$ = 36						; size = 4
_u$ = 40						; size = 4
_do_pk8pkey_fp PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 227
	push	edi
; Line 230
	push	0
	push	DWORD PTR _fp$[esp+4]
	call	_BIO_new_fp
	mov	edi, eax
	add	esp, 8
	test	edi, edi
	jne	SHORT $LN2@do_pk8pkey
; Line 231
	push	231					; 000000e7H
	push	OFFSET ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
	push	7
	push	125					; 0000007dH
	push	9
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 232
	xor	eax, eax
	pop	edi
; Line 237
	ret	0
$LN2@do_pk8pkey:
	push	esi
; Line 234
	push	DWORD PTR _u$[esp+4]
	push	DWORD PTR _cb$[esp+8]
	push	DWORD PTR _klen$[esp+12]
	push	DWORD PTR _kstr$[esp+16]
	push	DWORD PTR _enc$[esp+20]
	push	DWORD PTR _nid$[esp+24]
	push	DWORD PTR _isder$[esp+28]
	push	DWORD PTR _x$[esp+32]
	push	edi
	call	_do_pk8pkey
; Line 235
	push	edi
	mov	esi, eax
	call	_BIO_free
	add	esp, 40					; 00000028H
; Line 236
	mov	eax, esi
	pop	esi
	pop	edi
; Line 237
	ret	0
_do_pk8pkey_fp ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _do_pk8pkey
_TEXT	SEGMENT
_u$GSCopy$1$ = -1048					; size = 4
_enc$GSCopy$1$ = -1044					; size = 4
_nid$GSCopy$1$ = -1040					; size = 4
_kstr$GSCopy$1$ = -1036					; size = 4
_cb$GSCopy$1$ = -1032					; size = 4
_buf$ = -1028						; size = 1024
__$ArrayPad$ = -4					; size = 4
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_isder$ = 16						; size = 4
_nid$ = 20						; size = 4
_enc$ = 24						; size = 4
_kstr$ = 28						; size = 4
_klen$ = 32						; size = 4
_cb$ = 36						; size = 4
_u$ = 40						; size = 4
_do_pk8pkey PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 114
	mov	eax, 1048				; 00000418H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+1048], eax
	mov	ecx, DWORD PTR _nid$[esp+1044]
	mov	eax, DWORD PTR _x$[esp+1044]
	push	ebx
	mov	ebx, DWORD PTR _klen$[esp+1048]
	push	ebp
	mov	ebp, DWORD PTR _bp$[esp+1052]
	mov	DWORD PTR _nid$GSCopy$1$[esp+1056], ecx
	mov	ecx, DWORD PTR _enc$[esp+1052]
	push	esi
	mov	DWORD PTR _enc$GSCopy$1$[esp+1060], ecx
	mov	ecx, DWORD PTR _cb$[esp+1056]
	push	edi
	mov	edi, DWORD PTR _kstr$[esp+1060]
	mov	DWORD PTR _cb$GSCopy$1$[esp+1064], ecx
	mov	ecx, DWORD PTR _u$[esp+1060]
; Line 119
	push	eax
	mov	DWORD PTR _kstr$GSCopy$1$[esp+1068], edi
	mov	DWORD PTR _u$GSCopy$1$[esp+1068], ecx
	call	_EVP_PKEY2PKCS8
	mov	esi, eax
	add	esp, 4
	test	esi, esi
	jne	SHORT $LN2@do_pk8pkey
; Line 120
	push	120					; 00000078H
	push	OFFSET ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
	push	115					; 00000073H
	push	126					; 0000007eH
	push	9
	call	_ERR_put_error
	add	esp, 20					; 00000014H
$LN21@do_pk8pkey:
; Line 121
	xor	eax, eax
	jmp	$LN4@do_pk8pkey
$LN2@do_pk8pkey:
; Line 123
	mov	eax, DWORD PTR _enc$GSCopy$1$[esp+1064]
	test	eax, eax
	jne	SHORT $LN5@do_pk8pkey
	cmp	DWORD PTR _nid$GSCopy$1$[esp+1064], -1
	jne	SHORT $LN5@do_pk8pkey
; Line 151
	push	esi
	push	ebp
	cmp	DWORD PTR _isder$[esp+1068], eax
	je	SHORT $LN14@do_pk8pkey
	call	_i2d_PKCS8_PRIV_KEY_INFO_bio
; Line 153
	add	esp, 8
	mov	edi, eax
; Line 154
	push	esi
	call	_PKCS8_PRIV_KEY_INFO_free
; Line 155
	mov	eax, edi
	jmp	$LN18@do_pk8pkey
$LN14@do_pk8pkey:
; Line 153
	call	_PEM_write_bio_PKCS8_PRIV_KEY_INFO
	add	esp, 8
	mov	edi, eax
; Line 154
	push	esi
	call	_PKCS8_PRIV_KEY_INFO_free
; Line 155
	mov	eax, edi
	jmp	$LN18@do_pk8pkey
$LN5@do_pk8pkey:
; Line 124
	test	edi, edi
	jne	SHORT $LN6@do_pk8pkey
; Line 126
	push	DWORD PTR _u$GSCopy$1$[esp+1064]
	mov	eax, DWORD PTR _cb$GSCopy$1$[esp+1068]
	push	1
	push	1024					; 00000400H
	test	eax, eax
	jne	SHORT $LN7@do_pk8pkey
	lea	eax, DWORD PTR _buf$[esp+1076]
	push	eax
	call	_PEM_def_callback
	jmp	SHORT $LN19@do_pk8pkey
$LN7@do_pk8pkey:
; Line 128
	lea	ecx, DWORD PTR _buf$[esp+1076]
	push	ecx
	call	eax
$LN19@do_pk8pkey:
	mov	ebx, eax
	add	esp, 16					; 00000010H
; Line 129
	test	ebx, ebx
	jg	SHORT $LN9@do_pk8pkey
; Line 130
	push	130					; 00000082H
	push	OFFSET ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
	push	111					; 0000006fH
	push	126					; 0000007eH
	push	9
	call	_ERR_put_error
; Line 131
	push	esi
	call	_PKCS8_PRIV_KEY_INFO_free
	add	esp, 24					; 00000018H
; Line 132
	xor	eax, eax
	jmp	SHORT $LN4@do_pk8pkey
$LN9@do_pk8pkey:
	mov	eax, DWORD PTR _enc$GSCopy$1$[esp+1064]
; Line 135
	lea	edi, DWORD PTR _buf$[esp+1064]
	mov	DWORD PTR _kstr$GSCopy$1$[esp+1064], edi
$LN6@do_pk8pkey:
; Line 137
	push	esi
	push	0
	push	0
	push	0
	push	ebx
	push	edi
	push	eax
	push	DWORD PTR _nid$GSCopy$1$[esp+1092]
	call	_PKCS8_encrypt
	mov	edi, eax
	add	esp, 32					; 00000020H
; Line 138
	lea	eax, DWORD PTR _buf$[esp+1064]
	cmp	DWORD PTR _kstr$GSCopy$1$[esp+1064], eax
	jne	SHORT $LN10@do_pk8pkey
; Line 139
	push	ebx
	push	eax
	call	_OPENSSL_cleanse
	add	esp, 8
$LN10@do_pk8pkey:
; Line 140
	push	esi
	call	_PKCS8_PRIV_KEY_INFO_free
	add	esp, 4
; Line 141
	test	edi, edi
	je	$LN21@do_pk8pkey
; Line 143
	cmp	DWORD PTR _isder$[esp+1060], 0
; Line 144
	push	edi
	push	ebp
	je	SHORT $LN12@do_pk8pkey
	call	_i2d_PKCS8_bio
	jmp	SHORT $LN20@do_pk8pkey
$LN12@do_pk8pkey:
; Line 146
	call	_PEM_write_bio_PKCS8
$LN20@do_pk8pkey:
	add	esp, 8
	mov	esi, eax
; Line 147
	push	edi
	call	_X509_SIG_free
; Line 148
	mov	eax, esi
$LN18@do_pk8pkey:
; Line 147
	add	esp, 4
$LN4@do_pk8pkey:
; Line 157
	mov	ecx, DWORD PTR __$ArrayPad$[esp+1064]
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 1048				; 00000418H
	ret	0
_do_pk8pkey ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_write_PKCS8PrivateKey
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_enc$ = 16						; size = 4
_kstr$ = 20						; size = 4
_klen$ = 24						; size = 4
_cb$ = 28						; size = 4
_u$ = 32						; size = 4
_PEM_write_PKCS8PrivateKey PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 220
	push	edi
; Line 230
	push	0
	push	DWORD PTR _fp$[esp+4]
	call	_BIO_new_fp
	mov	edi, eax
	add	esp, 8
	test	edi, edi
	jne	SHORT $LN4@PEM_write_
; Line 231
	push	231					; 000000e7H
	push	OFFSET ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
	push	7
	push	125					; 0000007dH
	push	9
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 221
	xor	eax, eax
	pop	edi
; Line 222
	ret	0
$LN4@PEM_write_:
	push	esi
; Line 234
	push	DWORD PTR _u$[esp+4]
	push	DWORD PTR _cb$[esp+8]
	push	DWORD PTR _klen$[esp+12]
	push	DWORD PTR _kstr$[esp+16]
	push	DWORD PTR _enc$[esp+20]
	push	-1
	push	0
	push	DWORD PTR _x$[esp+32]
	push	edi
	call	_do_pk8pkey
; Line 235
	push	edi
	mov	esi, eax
	call	_BIO_free
	add	esp, 40					; 00000028H
; Line 221
	mov	eax, esi
	pop	esi
	pop	edi
; Line 222
	ret	0
_PEM_write_PKCS8PrivateKey ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _d2i_PKCS8PrivateKey_fp
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_cb$ = 16						; size = 4
_u$ = 20						; size = 4
_d2i_PKCS8PrivateKey_fp PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 241
	push	edi
; Line 244
	push	0
	push	DWORD PTR _fp$[esp+4]
	call	_BIO_new_fp
	mov	edi, eax
	add	esp, 8
	test	edi, edi
	jne	SHORT $LN2@d2i_PKCS8P
; Line 245
	push	245					; 000000f5H
	push	OFFSET ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
	push	7
	push	121					; 00000079H
	push	9
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 246
	xor	eax, eax
	pop	edi
; Line 251
	ret	0
$LN2@d2i_PKCS8P:
	push	esi
; Line 248
	push	DWORD PTR _u$[esp+4]
	push	DWORD PTR _cb$[esp+8]
	push	DWORD PTR _x$[esp+12]
	push	edi
	call	_d2i_PKCS8PrivateKey_bio
; Line 249
	push	edi
	mov	esi, eax
	call	_BIO_free
	add	esp, 20					; 00000014H
; Line 250
	mov	eax, esi
	pop	esi
	pop	edi
; Line 251
	ret	0
_d2i_PKCS8PrivateKey_fp ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_write_PKCS8PrivateKey_nid
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_nid$ = 16						; size = 4
_kstr$ = 20						; size = 4
_klen$ = 24						; size = 4
_cb$ = 28						; size = 4
_u$ = 32						; size = 4
_PEM_write_PKCS8PrivateKey_nid PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 213
	push	edi
; Line 230
	push	0
	push	DWORD PTR _fp$[esp+4]
	call	_BIO_new_fp
	mov	edi, eax
	add	esp, 8
	test	edi, edi
	jne	SHORT $LN4@PEM_write_
; Line 231
	push	231					; 000000e7H
	push	OFFSET ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
	push	7
	push	125					; 0000007dH
	push	9
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 214
	xor	eax, eax
	pop	edi
; Line 215
	ret	0
$LN4@PEM_write_:
	push	esi
; Line 234
	push	DWORD PTR _u$[esp+4]
	push	DWORD PTR _cb$[esp+8]
	push	DWORD PTR _klen$[esp+12]
	push	DWORD PTR _kstr$[esp+16]
	push	0
	push	DWORD PTR _nid$[esp+24]
	push	0
	push	DWORD PTR _x$[esp+32]
	push	edi
	call	_do_pk8pkey
; Line 235
	push	edi
	mov	esi, eax
	call	_BIO_free
	add	esp, 40					; 00000028H
; Line 214
	mov	eax, esi
	pop	esi
	pop	edi
; Line 215
	ret	0
_PEM_write_PKCS8PrivateKey_nid ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _i2d_PKCS8PrivateKey_nid_fp
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_nid$ = 16						; size = 4
_kstr$ = 20						; size = 4
_klen$ = 24						; size = 4
_cb$ = 28						; size = 4
_u$ = 32						; size = 4
_i2d_PKCS8PrivateKey_nid_fp PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 206
	push	edi
; Line 230
	push	0
	push	DWORD PTR _fp$[esp+4]
	call	_BIO_new_fp
	mov	edi, eax
	add	esp, 8
	test	edi, edi
	jne	SHORT $LN4@i2d_PKCS8P
; Line 231
	push	231					; 000000e7H
	push	OFFSET ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
	push	7
	push	125					; 0000007dH
	push	9
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 207
	xor	eax, eax
	pop	edi
; Line 208
	ret	0
$LN4@i2d_PKCS8P:
	push	esi
; Line 234
	push	DWORD PTR _u$[esp+4]
	push	DWORD PTR _cb$[esp+8]
	push	DWORD PTR _klen$[esp+12]
	push	DWORD PTR _kstr$[esp+16]
	push	0
	push	DWORD PTR _nid$[esp+24]
	push	1
	push	DWORD PTR _x$[esp+32]
	push	edi
	call	_do_pk8pkey
; Line 235
	push	edi
	mov	esi, eax
	call	_BIO_free
	add	esp, 40					; 00000028H
; Line 207
	mov	eax, esi
	pop	esi
	pop	edi
; Line 208
	ret	0
_i2d_PKCS8PrivateKey_nid_fp ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _i2d_PKCS8PrivateKey_fp
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_enc$ = 16						; size = 4
_kstr$ = 20						; size = 4
_klen$ = 24						; size = 4
_cb$ = 28						; size = 4
_u$ = 32						; size = 4
_i2d_PKCS8PrivateKey_fp PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 199
	push	edi
; Line 230
	push	0
	push	DWORD PTR _fp$[esp+4]
	call	_BIO_new_fp
	mov	edi, eax
	add	esp, 8
	test	edi, edi
	jne	SHORT $LN4@i2d_PKCS8P
; Line 231
	push	231					; 000000e7H
	push	OFFSET ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
	push	7
	push	125					; 0000007dH
	push	9
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 200
	xor	eax, eax
	pop	edi
; Line 201
	ret	0
$LN4@i2d_PKCS8P:
	push	esi
; Line 234
	push	DWORD PTR _u$[esp+4]
	push	DWORD PTR _cb$[esp+8]
	push	DWORD PTR _klen$[esp+12]
	push	DWORD PTR _kstr$[esp+16]
	push	DWORD PTR _enc$[esp+20]
	push	-1
	push	1
	push	DWORD PTR _x$[esp+32]
	push	edi
	call	_do_pk8pkey
; Line 235
	push	edi
	mov	esi, eax
	call	_BIO_free
	add	esp, 40					; 00000028H
; Line 200
	mov	eax, esi
	pop	esi
	pop	edi
; Line 201
	ret	0
_i2d_PKCS8PrivateKey_fp ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _d2i_PKCS8PrivateKey_bio
_TEXT	SEGMENT
_psbuf$ = -1028						; size = 1024
__$ArrayPad$ = -4					; size = 4
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_cb$ = 16						; size = 4
_u$ = 20						; size = 4
_d2i_PKCS8PrivateKey_bio PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 161
	mov	eax, 1028				; 00000404H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+1028], eax
	mov	eax, DWORD PTR _bp$[esp+1024]
	push	ebx
	mov	ebx, DWORD PTR _cb$[esp+1028]
	push	ebp
	mov	ebp, DWORD PTR _u$[esp+1032]
	push	esi
	push	edi
	mov	edi, DWORD PTR _x$[esp+1040]
; Line 167
	push	0
	push	eax
	call	_d2i_PKCS8_bio
	mov	esi, eax
	add	esp, 8
; Line 168
	test	esi, esi
	je	SHORT $LN12@d2i_PKCS8P
; Line 171
	lea	eax, DWORD PTR _psbuf$[esp+1044]
	push	ebp
	push	0
	push	1024					; 00000400H
	push	eax
	test	ebx, ebx
	je	SHORT $LN3@d2i_PKCS8P
	call	ebx
	jmp	SHORT $LN11@d2i_PKCS8P
$LN3@d2i_PKCS8P:
; Line 173
	call	_PEM_def_callback
$LN11@d2i_PKCS8P:
	add	esp, 16					; 00000010H
; Line 174
	test	eax, eax
	jg	SHORT $LN5@d2i_PKCS8P
; Line 175
	push	175					; 000000afH
	push	OFFSET ??_C@_0BH@BCEPEGOE@?4?2crypto?2pem?2pem_pk8?4c?$AA@
	push	104					; 00000068H
	push	120					; 00000078H
	push	9
	call	_ERR_put_error
; Line 176
	push	esi
	call	_X509_SIG_free
	add	esp, 24					; 00000018H
$LN12@d2i_PKCS8P:
; Line 177
	xor	eax, eax
	jmp	SHORT $LN1@d2i_PKCS8P
$LN5@d2i_PKCS8P:
; Line 179
	push	eax
	lea	eax, DWORD PTR _psbuf$[esp+1048]
	push	eax
	push	esi
	call	_PKCS8_decrypt
; Line 180
	push	esi
	mov	ebx, eax
	call	_X509_SIG_free
	add	esp, 16					; 00000010H
; Line 181
	test	ebx, ebx
	je	SHORT $LN12@d2i_PKCS8P
; Line 183
	push	ebx
	call	_EVP_PKCS82PKEY
; Line 184
	push	ebx
	mov	esi, eax
	call	_PKCS8_PRIV_KEY_INFO_free
	add	esp, 8
; Line 185
	test	esi, esi
	je	SHORT $LN12@d2i_PKCS8P
; Line 187
	test	edi, edi
	je	SHORT $LN8@d2i_PKCS8P
; Line 188
	mov	eax, DWORD PTR [edi]
	test	eax, eax
	je	SHORT $LN9@d2i_PKCS8P
; Line 189
	push	eax
	call	_EVP_PKEY_free
	add	esp, 4
$LN9@d2i_PKCS8P:
; Line 190
	mov	DWORD PTR [edi], esi
$LN8@d2i_PKCS8P:
; Line 192
	mov	eax, esi
$LN1@d2i_PKCS8P:
; Line 193
	mov	ecx, DWORD PTR __$ArrayPad$[esp+1044]
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 1028				; 00000404H
	ret	0
_d2i_PKCS8PrivateKey_bio ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _i2d_PKCS8PrivateKey_nid_bio
_TEXT	SEGMENT
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_nid$ = 16						; size = 4
_kstr$ = 20						; size = 4
_klen$ = 24						; size = 4
_cb$ = 28						; size = 4
_u$ = 32						; size = 4
_i2d_PKCS8PrivateKey_nid_bio PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 108
	push	DWORD PTR _u$[esp-4]
	push	DWORD PTR _cb$[esp]
	push	DWORD PTR _klen$[esp+4]
	push	DWORD PTR _kstr$[esp+8]
	push	0
	push	DWORD PTR _nid$[esp+16]
	push	1
	push	DWORD PTR _x$[esp+24]
	push	DWORD PTR _bp$[esp+28]
	call	_do_pk8pkey
	add	esp, 36					; 00000024H
; Line 109
	ret	0
_i2d_PKCS8PrivateKey_nid_bio ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _i2d_PKCS8PrivateKey_bio
_TEXT	SEGMENT
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_enc$ = 16						; size = 4
_kstr$ = 20						; size = 4
_klen$ = 24						; size = 4
_cb$ = 28						; size = 4
_u$ = 32						; size = 4
_i2d_PKCS8PrivateKey_bio PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 101
	push	DWORD PTR _u$[esp-4]
	push	DWORD PTR _cb$[esp]
	push	DWORD PTR _klen$[esp+4]
	push	DWORD PTR _kstr$[esp+8]
	push	DWORD PTR _enc$[esp+12]
	push	-1
	push	1
	push	DWORD PTR _x$[esp+24]
	push	DWORD PTR _bp$[esp+28]
	call	_do_pk8pkey
	add	esp, 36					; 00000024H
; Line 102
	ret	0
_i2d_PKCS8PrivateKey_bio ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_write_bio_PKCS8PrivateKey
_TEXT	SEGMENT
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_enc$ = 16						; size = 4
_kstr$ = 20						; size = 4
_klen$ = 24						; size = 4
_cb$ = 28						; size = 4
_u$ = 32						; size = 4
_PEM_write_bio_PKCS8PrivateKey PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 94
	push	DWORD PTR _u$[esp-4]
	push	DWORD PTR _cb$[esp]
	push	DWORD PTR _klen$[esp+4]
	push	DWORD PTR _kstr$[esp+8]
	push	DWORD PTR _enc$[esp+12]
	push	-1
	push	0
	push	DWORD PTR _x$[esp+24]
	push	DWORD PTR _bp$[esp+28]
	call	_do_pk8pkey
	add	esp, 36					; 00000024H
; Line 95
	ret	0
_PEM_write_bio_PKCS8PrivateKey ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_write_bio_PKCS8PrivateKey_nid
_TEXT	SEGMENT
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_nid$ = 16						; size = 4
_kstr$ = 20						; size = 4
_klen$ = 24						; size = 4
_cb$ = 28						; size = 4
_u$ = 32						; size = 4
_PEM_write_bio_PKCS8PrivateKey_nid PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 87
	push	DWORD PTR _u$[esp-4]
	push	DWORD PTR _cb$[esp]
	push	DWORD PTR _klen$[esp+4]
	push	DWORD PTR _kstr$[esp+8]
	push	0
	push	DWORD PTR _nid$[esp+16]
	push	0
	push	DWORD PTR _x$[esp+24]
	push	DWORD PTR _bp$[esp+28]
	call	_do_pk8pkey
	add	esp, 36					; 00000024H
; Line 88
	ret	0
_PEM_write_bio_PKCS8PrivateKey_nid ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_write_PKCS8_PRIV_KEY_INFO
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_PEM_write_PKCS8_PRIV_KEY_INFO PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 258
	push	0
	push	0
	push	0
	push	0
	push	0
	push	DWORD PTR _x$[esp+16]
	push	DWORD PTR _fp$[esp+20]
	push	OFFSET ??_C@_0M@GKANOOJ@PRIVATE?5KEY?$AA@
	push	OFFSET _i2d_PKCS8_PRIV_KEY_INFO
	call	_PEM_ASN1_write
	add	esp, 36					; 00000024H
; Line 259
	ret	0
_PEM_write_PKCS8_PRIV_KEY_INFO ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_write_bio_PKCS8_PRIV_KEY_INFO
_TEXT	SEGMENT
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_PEM_write_bio_PKCS8_PRIV_KEY_INFO PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 258
	push	0
	push	0
	push	0
	push	0
	push	0
	push	DWORD PTR _x$[esp+16]
	push	DWORD PTR _bp$[esp+20]
	push	OFFSET ??_C@_0M@GKANOOJ@PRIVATE?5KEY?$AA@
	push	OFFSET _i2d_PKCS8_PRIV_KEY_INFO
	call	_PEM_ASN1_write_bio
	add	esp, 36					; 00000024H
; Line 259
	ret	0
_PEM_write_bio_PKCS8_PRIV_KEY_INFO ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_read_PKCS8_PRIV_KEY_INFO
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_cb$ = 16						; size = 4
_u$ = 20						; size = 4
_PEM_read_PKCS8_PRIV_KEY_INFO PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 258
	push	DWORD PTR _u$[esp-4]
	push	DWORD PTR _cb$[esp]
	push	DWORD PTR _x$[esp+4]
	push	DWORD PTR _fp$[esp+8]
	push	OFFSET ??_C@_0M@GKANOOJ@PRIVATE?5KEY?$AA@
	push	OFFSET _d2i_PKCS8_PRIV_KEY_INFO
	call	_PEM_ASN1_read
	add	esp, 24					; 00000018H
; Line 259
	ret	0
_PEM_read_PKCS8_PRIV_KEY_INFO ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_read_bio_PKCS8_PRIV_KEY_INFO
_TEXT	SEGMENT
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_cb$ = 16						; size = 4
_u$ = 20						; size = 4
_PEM_read_bio_PKCS8_PRIV_KEY_INFO PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 258
	push	DWORD PTR _u$[esp-4]
	push	DWORD PTR _cb$[esp]
	push	DWORD PTR _x$[esp+4]
	push	DWORD PTR _bp$[esp+8]
	push	OFFSET ??_C@_0M@GKANOOJ@PRIVATE?5KEY?$AA@
	push	OFFSET _d2i_PKCS8_PRIV_KEY_INFO
	call	_PEM_ASN1_read_bio
	add	esp, 24					; 00000018H
; Line 259
	ret	0
_PEM_read_bio_PKCS8_PRIV_KEY_INFO ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_write_PKCS8
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_PEM_write_PKCS8 PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 255
	push	0
	push	0
	push	0
	push	0
	push	0
	push	DWORD PTR _x$[esp+16]
	push	DWORD PTR _fp$[esp+20]
	push	OFFSET ??_C@_0BG@OLFPLKDJ@ENCRYPTED?5PRIVATE?5KEY?$AA@
	push	OFFSET _i2d_X509_SIG
	call	_PEM_ASN1_write
	add	esp, 36					; 00000024H
	ret	0
_PEM_write_PKCS8 ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_write_bio_PKCS8
_TEXT	SEGMENT
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_PEM_write_bio_PKCS8 PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 255
	push	0
	push	0
	push	0
	push	0
	push	0
	push	DWORD PTR _x$[esp+16]
	push	DWORD PTR _bp$[esp+20]
	push	OFFSET ??_C@_0BG@OLFPLKDJ@ENCRYPTED?5PRIVATE?5KEY?$AA@
	push	OFFSET _i2d_X509_SIG
	call	_PEM_ASN1_write_bio
	add	esp, 36					; 00000024H
	ret	0
_PEM_write_bio_PKCS8 ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_read_PKCS8
_TEXT	SEGMENT
_fp$ = 8						; size = 4
_x$ = 12						; size = 4
_cb$ = 16						; size = 4
_u$ = 20						; size = 4
_PEM_read_PKCS8 PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 255
	push	DWORD PTR _u$[esp-4]
	push	DWORD PTR _cb$[esp]
	push	DWORD PTR _x$[esp+4]
	push	DWORD PTR _fp$[esp+8]
	push	OFFSET ??_C@_0BG@OLFPLKDJ@ENCRYPTED?5PRIVATE?5KEY?$AA@
	push	OFFSET _d2i_X509_SIG
	call	_PEM_ASN1_read
	add	esp, 24					; 00000018H
	ret	0
_PEM_read_PKCS8 ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _PEM_read_bio_PKCS8
_TEXT	SEGMENT
_bp$ = 8						; size = 4
_x$ = 12						; size = 4
_cb$ = 16						; size = 4
_u$ = 20						; size = 4
_PEM_read_bio_PKCS8 PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\pem\pem_pk8.c
; Line 255
	push	DWORD PTR _u$[esp-4]
	push	DWORD PTR _cb$[esp]
	push	DWORD PTR _x$[esp+4]
	push	DWORD PTR _bp$[esp+8]
	push	OFFSET ??_C@_0BG@OLFPLKDJ@ENCRYPTED?5PRIVATE?5KEY?$AA@
	push	OFFSET _d2i_X509_SIG
	call	_PEM_ASN1_read_bio
	add	esp, 24					; 00000018H
	ret	0
_PEM_read_bio_PKCS8 ENDP
_TEXT	ENDS
END