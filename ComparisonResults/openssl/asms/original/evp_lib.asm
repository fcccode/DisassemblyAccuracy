; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_EVP_MD_type
PUBLIC	_EVP_MD_pkey_type
PUBLIC	_EVP_MD_size
PUBLIC	_EVP_MD_block_size
PUBLIC	_EVP_MD_flags
PUBLIC	_EVP_MD_CTX_md
PUBLIC	_EVP_CIPHER_nid
PUBLIC	_EVP_CIPHER_block_size
PUBLIC	_EVP_CIPHER_key_length
PUBLIC	_EVP_CIPHER_iv_length
PUBLIC	_EVP_CIPHER_flags
PUBLIC	_EVP_CIPHER_CTX_cipher
PUBLIC	_EVP_CIPHER_CTX_nid
PUBLIC	_EVP_CIPHER_CTX_block_size
PUBLIC	_EVP_CIPHER_CTX_key_length
PUBLIC	_EVP_CIPHER_CTX_iv_length
PUBLIC	_EVP_CIPHER_CTX_get_app_data
PUBLIC	_EVP_CIPHER_CTX_set_app_data
PUBLIC	_EVP_CIPHER_CTX_flags
PUBLIC	_EVP_Cipher
PUBLIC	_EVP_MD_CTX_set_flags
PUBLIC	_EVP_MD_CTX_clear_flags
PUBLIC	_EVP_MD_CTX_test_flags
PUBLIC	_EVP_CIPHER_CTX_set_flags
PUBLIC	_EVP_CIPHER_CTX_clear_flags
PUBLIC	_EVP_CIPHER_CTX_test_flags
PUBLIC	_EVP_CIPHER_type
PUBLIC	_EVP_CIPHER_param_to_asn1
PUBLIC	_EVP_CIPHER_asn1_to_param
PUBLIC	_EVP_CIPHER_set_asn1_iv
PUBLIC	_EVP_CIPHER_get_asn1_iv
PUBLIC	??_C@_0BD@LHHAEAAJ@l?5?$DM?$DN?5sizeof?$CIc?9?$DOiv?$CJ?$AA@ ; `string'
PUBLIC	??_C@_0BH@HCDEFMEH@?4?2crypto?2evp?2evp_lib?4c?$AA@ ; `string'
PUBLIC	??_C@_0BD@CKKMELBK@j?5?$DM?$DN?5sizeof?$CIc?9?$DOiv?$CJ?$AA@ ; `string'
EXTRN	_OpenSSLDie:PROC
EXTRN	_ERR_put_error:PROC
EXTRN	_ASN1_TYPE_set:PROC
EXTRN	_ASN1_OBJECT_free:PROC
EXTRN	_ASN1_TYPE_set_octetstring:PROC
EXTRN	_ASN1_TYPE_get_octetstring:PROC
EXTRN	_OBJ_nid2obj:PROC
EXTRN	_memcpy:PROC
;	COMDAT ??_C@_0BD@CKKMELBK@j?5?$DM?$DN?5sizeof?$CIc?9?$DOiv?$CJ?$AA@
CONST	SEGMENT
??_C@_0BD@CKKMELBK@j?5?$DM?$DN?5sizeof?$CIc?9?$DOiv?$CJ?$AA@ DB 'j <= siz'
	DB	'eof(c->iv)', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BH@HCDEFMEH@?4?2crypto?2evp?2evp_lib?4c?$AA@
CONST	SEGMENT
??_C@_0BH@HCDEFMEH@?4?2crypto?2evp?2evp_lib?4c?$AA@ DB '.\crypto\evp\evp_'
	DB	'lib.c', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0BD@LHHAEAAJ@l?5?$DM?$DN?5sizeof?$CIc?9?$DOiv?$CJ?$AA@
CONST	SEGMENT
??_C@_0BD@LHHAEAAJ@l?5?$DM?$DN?5sizeof?$CIc?9?$DOiv?$CJ?$AA@ DB 'l <= siz'
	DB	'eof(c->iv)', 00H				; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_get_asn1_iv
_TEXT	SEGMENT
_c$ = 8							; size = 4
_type$ = 12						; size = 4
_EVP_CIPHER_get_asn1_iv PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 125
	push	ebx
	push	esi
; Line 126
	xor	esi, esi
	push	edi
; Line 129
	cmp	DWORD PTR _type$[esp+8], esi
	je	SHORT $LN5@EVP_CIPHER
; Line 130
	mov	ebx, DWORD PTR _c$[esp+8]
	mov	eax, DWORD PTR [ebx]
	mov	edi, DWORD PTR [eax+12]
; Line 131
	cmp	edi, 16					; 00000010H
	jbe	SHORT $LN8@EVP_CIPHER
	push	OFFSET ??_C@_0BD@LHHAEAAJ@l?5?$DM?$DN?5sizeof?$CIc?9?$DOiv?$CJ?$AA@
	push	131					; 00000083H
	push	OFFSET ??_C@_0BH@HCDEFMEH@?4?2crypto?2evp?2evp_lib?4c?$AA@
	call	_OpenSSLDie
	add	esp, 12					; 0000000cH
$LN8@EVP_CIPHER:
; Line 132
	lea	eax, DWORD PTR [ebx+16]
	push	edi
	push	eax
	push	DWORD PTR _type$[esp+16]
	call	_ASN1_TYPE_get_octetstring
	mov	esi, eax
	add	esp, 12					; 0000000cH
; Line 133
	cmp	esi, edi
	je	SHORT $LN3@EVP_CIPHER
; Line 134
	pop	edi
	pop	esi
	or	eax, -1
	pop	ebx
; Line 139
	ret	0
$LN3@EVP_CIPHER:
; Line 135
	test	esi, esi
	jle	SHORT $LN5@EVP_CIPHER
; Line 136
	push	edi
	lea	eax, DWORD PTR [ebx+16]
	push	eax
	lea	eax, DWORD PTR [ebx+32]
	push	eax
	call	_memcpy
	add	esp, 12					; 0000000cH
$LN5@EVP_CIPHER:
; Line 138
	pop	edi
	mov	eax, esi
	pop	esi
	pop	ebx
; Line 139
	ret	0
_EVP_CIPHER_get_asn1_iv ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_set_asn1_iv
_TEXT	SEGMENT
_c$ = 8							; size = 4
_type$ = 12						; size = 4
_EVP_CIPHER_set_asn1_iv PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 146
	cmp	DWORD PTR _type$[esp-4], 0
	je	SHORT $LN8@EVP_CIPHER
; Line 147
	push	ebx
	push	edi
	mov	edi, DWORD PTR _c$[esp+4]
	mov	eax, DWORD PTR [edi]
	mov	ebx, DWORD PTR [eax+12]
; Line 148
	cmp	ebx, 16					; 00000010H
	jbe	SHORT $LN5@EVP_CIPHER
	push	OFFSET ??_C@_0BD@CKKMELBK@j?5?$DM?$DN?5sizeof?$CIc?9?$DOiv?$CJ?$AA@
	push	148					; 00000094H
	push	OFFSET ??_C@_0BH@HCDEFMEH@?4?2crypto?2evp?2evp_lib?4c?$AA@
	call	_OpenSSLDie
	add	esp, 12					; 0000000cH
$LN5@EVP_CIPHER:
; Line 149
	push	ebx
	lea	eax, DWORD PTR [edi+16]
	push	eax
	push	DWORD PTR _type$[esp+12]
	call	_ASN1_TYPE_set_octetstring
	add	esp, 12					; 0000000cH
	pop	edi
	pop	ebx
; Line 152
	ret	0
$LN8@EVP_CIPHER:
; Line 151
	xor	eax, eax
; Line 152
	ret	0
_EVP_CIPHER_set_asn1_iv ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_asn1_to_param
_TEXT	SEGMENT
_c$ = 8							; size = 4
_type$ = 12						; size = 4
_EVP_CIPHER_asn1_to_param PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 100
	mov	ecx, DWORD PTR _c$[esp-4]
	mov	eax, DWORD PTR [ecx]
	mov	edx, DWORD PTR [eax+40]
	test	edx, edx
	je	SHORT $LN4@EVP_CIPHER
; Line 101
	mov	DWORD PTR _c$[esp-4], ecx
	jmp	edx
$LN4@EVP_CIPHER:
; Line 102
	mov	eax, DWORD PTR [eax+16]
	test	eax, 4096				; 00001000H
	je	SHORT $LN6@EVP_CIPHER
; Line 103
	and	eax, 983047				; 000f0007H
	cmp	eax, 65537				; 00010001H
	ja	SHORT $LN12@EVP_CIPHER
	je	SHORT $LN6@EVP_CIPHER
	add	eax, -6					; fffffffaH
	cmp	eax, 1
	ja	SHORT $LN10@EVP_CIPHER
$LN6@EVP_CIPHER:
; Line 121
	or	eax, -1
; Line 122
	ret	0
$LN12@EVP_CIPHER:
; Line 103
	cmp	eax, 65538				; 00010002H
	je	SHORT $LN8@EVP_CIPHER
$LN10@EVP_CIPHER:
; Line 116
	mov	DWORD PTR _c$[esp-4], ecx
	jmp	_EVP_CIPHER_get_asn1_iv
$LN8@EVP_CIPHER:
; Line 121
	mov	eax, 1
; Line 122
	ret	0
_EVP_CIPHER_asn1_to_param ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_param_to_asn1
_TEXT	SEGMENT
_c$ = 8							; size = 4
_type$ = 12						; size = 4
_EVP_CIPHER_param_to_asn1 PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 72
	mov	edx, DWORD PTR _c$[esp-4]
	mov	ecx, DWORD PTR [edx]
	mov	eax, DWORD PTR [ecx+36]
	test	eax, eax
	je	SHORT $LN4@EVP_CIPHER
; Line 73
	mov	DWORD PTR _c$[esp-4], edx
	jmp	eax
$LN4@EVP_CIPHER:
; Line 74
	mov	eax, DWORD PTR [ecx+16]
	test	eax, 4096				; 00001000H
	je	SHORT $LN6@EVP_CIPHER
; Line 75
	and	eax, 983047				; 000f0007H
	cmp	eax, 65537				; 00010001H
	ja	SHORT $LN13@EVP_CIPHER
	je	SHORT $LN6@EVP_CIPHER
	add	eax, -6					; fffffffaH
	cmp	eax, 1
	ja	SHORT $LN11@EVP_CIPHER
$LN6@EVP_CIPHER:
; Line 93
	or	eax, -1
; Line 94
	ret	0
$LN13@EVP_CIPHER:
; Line 75
	cmp	eax, 65538				; 00010002H
	je	SHORT $LN8@EVP_CIPHER
$LN11@EVP_CIPHER:
; Line 89
	mov	DWORD PTR _c$[esp-4], edx
	jmp	_EVP_CIPHER_set_asn1_iv
$LN8@EVP_CIPHER:
; Line 77
	cmp	DWORD PTR [ecx], 246			; 000000f6H
	jne	SHORT $LN9@EVP_CIPHER
; Line 78
	push	0
	push	5
	push	DWORD PTR _type$[esp+4]
	call	_ASN1_TYPE_set
	add	esp, 12					; 0000000cH
$LN9@EVP_CIPHER:
; Line 93
	mov	eax, 1
; Line 94
	ret	0
_EVP_CIPHER_param_to_asn1 ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_type
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_EVP_CIPHER_type PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 287
	mov	eax, DWORD PTR _ctx$[esp-4]
	push	esi
	mov	esi, DWORD PTR [eax]
; Line 161
	cmp	esi, 421				; 000001a5H
	jg	SHORT $LN15@EVP_CIPHER
	je	SHORT $LN6@EVP_CIPHER
	lea	eax, DWORD PTR [esi-5]
	cmp	eax, 161				; 000000a1H
	ja	SHORT $LN11@EVP_CIPHER
	movzx	eax, BYTE PTR $LN18@EVP_CIPHER[eax]
	jmp	DWORD PTR $LN21@EVP_CIPHER[eax*4]
$LN4@EVP_CIPHER:
; Line 167
	mov	eax, 37					; 00000025H
	pop	esi
; Line 212
	ret	0
$LN5@EVP_CIPHER:
; Line 172
	mov	eax, 5
	pop	esi
; Line 212
	ret	0
$LN15@EVP_CIPHER:
; Line 161
	lea	eax, DWORD PTR [esi-425]
	cmp	eax, 234				; 000000eaH
	ja	SHORT $LN11@EVP_CIPHER
	movzx	eax, BYTE PTR $LN19@EVP_CIPHER[eax]
	jmp	DWORD PTR $LN22@EVP_CIPHER[eax*4]
$LN6@EVP_CIPHER:
; Line 178
	mov	eax, 421				; 000001a5H
	pop	esi
; Line 212
	ret	0
$LN7@EVP_CIPHER:
; Line 184
	mov	eax, 425				; 000001a9H
	pop	esi
; Line 212
	ret	0
$LN8@EVP_CIPHER:
; Line 190
	mov	eax, 429				; 000001adH
	pop	esi
; Line 212
	ret	0
$LN9@EVP_CIPHER:
; Line 196
	mov	eax, 30					; 0000001eH
	pop	esi
; Line 212
	ret	0
$LN11@EVP_CIPHER:
; Line 206
	push	esi
	call	_OBJ_nid2obj
	add	esp, 4
; Line 207
	test	eax, eax
	je	SHORT $LN13@EVP_CIPHER
	cmp	DWORD PTR [eax+16], 0
	jne	SHORT $LN12@EVP_CIPHER
$LN13@EVP_CIPHER:
; Line 208
	xor	esi, esi
$LN12@EVP_CIPHER:
; Line 209
	push	eax
	call	_ASN1_OBJECT_free
	add	esp, 4
; Line 210
	mov	eax, esi
	pop	esi
; Line 212
	ret	0
$LN21@EVP_CIPHER:
	DD	$LN5@EVP_CIPHER
	DD	$LN9@EVP_CIPHER
	DD	$LN4@EVP_CIPHER
	DD	$LN11@EVP_CIPHER
$LN18@EVP_CIPHER:
	DB	0
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	1
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	2
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	1
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	0
	DB	2
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	3
	DB	2
	npad	2
$LN22@EVP_CIPHER:
	DD	$LN7@EVP_CIPHER
	DD	$LN8@EVP_CIPHER
	DD	$LN6@EVP_CIPHER
	DD	$LN9@EVP_CIPHER
	DD	$LN11@EVP_CIPHER
$LN19@EVP_CIPHER:
	DB	0
	DB	4
	DB	4
	DB	4
	DB	1
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	2
	DB	0
	DB	1
	DB	2
	DB	0
	DB	1
	DB	3
	DB	3
	DB	3
	DB	3
_EVP_CIPHER_type ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_test_flags
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_flags$ = 12						; size = 4
_EVP_CIPHER_CTX_test_flags PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 390
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR [eax+92]
	and	eax, DWORD PTR _flags$[esp-4]
; Line 391
	ret	0
_EVP_CIPHER_CTX_test_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_clear_flags
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_flags$ = 12						; size = 4
_EVP_CIPHER_CTX_clear_flags PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 385
	mov	ecx, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR _flags$[esp-4]
	not	eax
	and	DWORD PTR [ecx+92], eax
; Line 386
	ret	0
_EVP_CIPHER_CTX_clear_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_set_flags
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_flags$ = 12						; size = 4
_EVP_CIPHER_CTX_set_flags PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 380
	mov	ecx, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR _flags$[esp-4]
	or	DWORD PTR [ecx+92], eax
; Line 381
	ret	0
_EVP_CIPHER_CTX_set_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_MD_CTX_test_flags
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_flags$ = 12						; size = 4
_EVP_MD_CTX_test_flags PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 375
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR [eax+8]
	and	eax, DWORD PTR _flags$[esp-4]
; Line 376
	ret	0
_EVP_MD_CTX_test_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_MD_CTX_clear_flags
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_flags$ = 12						; size = 4
_EVP_MD_CTX_clear_flags PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 370
	mov	ecx, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR _flags$[esp-4]
	not	eax
	and	DWORD PTR [ecx+8], eax
; Line 371
	ret	0
_EVP_MD_CTX_clear_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_MD_CTX_set_flags
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_flags$ = 12						; size = 4
_EVP_MD_CTX_set_flags PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 365
	mov	ecx, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR _flags$[esp-4]
	or	DWORD PTR [ecx+8], eax
; Line 366
	ret	0
_EVP_MD_CTX_set_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_Cipher
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_out$ = 12						; size = 4
_in$ = 16						; size = 4
_inl$ = 20						; size = 4
_EVP_Cipher PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 227
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _ctx$[esp-4], eax
	mov	eax, DWORD PTR [ecx+24]
	jmp	eax
_EVP_Cipher ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_flags
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_EVP_CIPHER_CTX_flags PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 251
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+16]
; Line 253
	ret	0
_EVP_CIPHER_CTX_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_set_app_data
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_data$ = 12						; size = 4
_EVP_CIPHER_CTX_set_app_data PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 262
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	ecx, DWORD PTR _data$[esp-4]
	mov	DWORD PTR [eax+84], ecx
; Line 263
	ret	0
_EVP_CIPHER_CTX_set_app_data ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_get_app_data
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_EVP_CIPHER_CTX_get_app_data PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 257
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR [eax+84]
; Line 258
	ret	0
_EVP_CIPHER_CTX_get_app_data ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_iv_length
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_EVP_CIPHER_CTX_iv_length PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 272
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+12]
; Line 273
	ret	0
_EVP_CIPHER_CTX_iv_length ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_key_length
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_EVP_CIPHER_CTX_key_length PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 282
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR [eax+88]
; Line 283
	ret	0
_EVP_CIPHER_CTX_key_length ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_block_size
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_EVP_CIPHER_CTX_block_size PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 221
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax+4]
; Line 222
	ret	0
_EVP_CIPHER_CTX_block_size ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_nid
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_EVP_CIPHER_CTX_nid PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 292
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax]
; Line 293
	ret	0
_EVP_CIPHER_CTX_nid ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_CTX_cipher
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_EVP_CIPHER_CTX_cipher PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 232
	mov	eax, DWORD PTR _ctx$[esp-4]
	mov	eax, DWORD PTR [eax]
; Line 233
	ret	0
_EVP_CIPHER_CTX_cipher ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_flags
_TEXT	SEGMENT
_cipher$ = 8						; size = 4
_EVP_CIPHER_flags PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 243
	mov	eax, DWORD PTR _cipher$[esp-4]
	mov	eax, DWORD PTR [eax+16]
; Line 244
	ret	0
_EVP_CIPHER_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_iv_length
_TEXT	SEGMENT
_cipher$ = 8						; size = 4
_EVP_CIPHER_iv_length PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 267
	mov	eax, DWORD PTR _cipher$[esp-4]
	mov	eax, DWORD PTR [eax+12]
; Line 268
	ret	0
_EVP_CIPHER_iv_length ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_key_length
_TEXT	SEGMENT
_cipher$ = 8						; size = 4
_EVP_CIPHER_key_length PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 277
	mov	eax, DWORD PTR _cipher$[esp-4]
	mov	eax, DWORD PTR [eax+8]
; Line 278
	ret	0
_EVP_CIPHER_key_length ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_block_size
_TEXT	SEGMENT
_e$ = 8							; size = 4
_EVP_CIPHER_block_size PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 216
	mov	eax, DWORD PTR _e$[esp-4]
	mov	eax, DWORD PTR [eax+4]
; Line 217
	ret	0
_EVP_CIPHER_block_size ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_CIPHER_nid
_TEXT	SEGMENT
_cipher$ = 8						; size = 4
_EVP_CIPHER_nid PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 287
	mov	eax, DWORD PTR _cipher$[esp-4]
	mov	eax, DWORD PTR [eax]
; Line 288
	ret	0
_EVP_CIPHER_nid ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_MD_CTX_md
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_EVP_MD_CTX_md PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 358
	mov	eax, DWORD PTR _ctx$[esp-4]
	test	eax, eax
	jne	SHORT $LN2@EVP_MD_CTX
; Line 361
	ret	0
$LN2@EVP_MD_CTX:
; Line 360
	mov	eax, DWORD PTR [eax]
; Line 361
	ret	0
_EVP_MD_CTX_md ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_MD_flags
_TEXT	SEGMENT
_md$ = 8						; size = 4
_EVP_MD_flags PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 353
	mov	eax, DWORD PTR _md$[esp-4]
	mov	eax, DWORD PTR [eax+12]
; Line 354
	ret	0
_EVP_MD_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_MD_block_size
_TEXT	SEGMENT
_md$ = 8						; size = 4
_EVP_MD_block_size PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 297
	mov	eax, DWORD PTR _md$[esp-4]
	mov	eax, DWORD PTR [eax+64]
; Line 298
	ret	0
_EVP_MD_block_size ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_MD_size
_TEXT	SEGMENT
_md$ = 8						; size = 4
_EVP_MD_size PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 312
	mov	eax, DWORD PTR _md$[esp-4]
	test	eax, eax
	jne	SHORT $LN2@EVP_MD_siz
; Line 313
	push	313					; 00000139H
	push	OFFSET ??_C@_0BH@HCDEFMEH@?4?2crypto?2evp?2evp_lib?4c?$AA@
	push	159					; 0000009fH
	push	162					; 000000a2H
	push	6
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 314
	or	eax, -1
; Line 317
	ret	0
$LN2@EVP_MD_siz:
; Line 316
	mov	eax, DWORD PTR [eax+8]
; Line 317
	ret	0
_EVP_MD_size ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_MD_pkey_type
_TEXT	SEGMENT
_md$ = 8						; size = 4
_EVP_MD_pkey_type PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 307
	mov	eax, DWORD PTR _md$[esp-4]
	mov	eax, DWORD PTR [eax+4]
; Line 308
	ret	0
_EVP_MD_pkey_type ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_MD_type
_TEXT	SEGMENT
_md$ = 8						; size = 4
_EVP_MD_type PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_lib.c
; Line 302
	mov	eax, DWORD PTR _md$[esp-4]
	mov	eax, DWORD PTR [eax]
; Line 303
	ret	0
_EVP_MD_type ENDP
_TEXT	ENDS
END