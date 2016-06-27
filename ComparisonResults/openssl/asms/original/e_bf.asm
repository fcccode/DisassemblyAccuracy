; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

EXTRN	_EVP_CIPHER_set_asn1_iv:PROC
EXTRN	_EVP_CIPHER_get_asn1_iv:PROC
CONST	SEGMENT
_bf_cbc	DD	05bH
	DD	08H
	DD	010H
	DD	08H
	DD	0aH
	DD	FLAT:_bf_init_key
	DD	FLAT:_bf_cbc_cipher
	DD	00H
	DD	01048H
	DD	FLAT:_EVP_CIPHER_set_asn1_iv
	DD	FLAT:_EVP_CIPHER_get_asn1_iv
	DD	00H
	DD	00H
_bf_cfb64 DD	05dH
	DD	01H
	DD	010H
	DD	08H
	DD	0bH
	DD	FLAT:_bf_init_key
	DD	FLAT:_bf_cfb64_cipher
	DD	00H
	DD	01048H
	DD	FLAT:_EVP_CIPHER_set_asn1_iv
	DD	FLAT:_EVP_CIPHER_get_asn1_iv
	DD	00H
	DD	00H
_bf_ofb	DD	05eH
	DD	01H
	DD	010H
	DD	08H
	DD	0cH
	DD	FLAT:_bf_init_key
	DD	FLAT:_bf_ofb_cipher
	DD	00H
	DD	01048H
	DD	FLAT:_EVP_CIPHER_set_asn1_iv
	DD	FLAT:_EVP_CIPHER_get_asn1_iv
	DD	00H
	DD	00H
_bf_ecb	DD	05cH
	DD	08H
	DD	010H
	DD	00H
	DD	09H
	DD	FLAT:_bf_init_key
	DD	FLAT:_bf_ecb_cipher
	DD	00H
	DD	01048H
	DD	FLAT:_EVP_CIPHER_set_asn1_iv
	DD	FLAT:_EVP_CIPHER_get_asn1_iv
	DD	00H
	DD	00H
CONST	ENDS
PUBLIC	_EVP_bf_ecb
PUBLIC	_EVP_bf_cbc
PUBLIC	_EVP_bf_cfb64
PUBLIC	_EVP_bf_ofb
EXTRN	_EVP_CIPHER_CTX_key_length:PROC
EXTRN	_BF_set_key:PROC
EXTRN	_BF_ecb_encrypt:PROC
EXTRN	_BF_cbc_encrypt:PROC
EXTRN	_BF_cfb64_encrypt:PROC
EXTRN	_BF_ofb64_encrypt:PROC
; Function compile flags: /Ogtpy
;	COMDAT _bf_ofb_cipher
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_out$ = 12						; size = 4
_in$ = 16						; size = 4
tv144 = 20						; size = 4
_inl$ = 20						; size = 4
_bf_ofb_cipher PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
; Line 78
	push	ebx
; Line 76
	mov	ebx, DWORD PTR _out$[esp]
	push	ebp
	mov	ebp, DWORD PTR _ctx$[esp+4]
	push	esi
	mov	esi, DWORD PTR _inl$[esp+8]
	push	edi
	mov	edi, DWORD PTR _in$[esp+12]
	cmp	esi, 1073741824				; 40000000H
	jb	SHORT $LN3@bf_ofb_cip
	mov	eax, esi
	lea	ecx, DWORD PTR [ebp+80]
	shr	eax, 30					; 0000001eH
	lea	edx, DWORD PTR [ebp+32]
	mov	DWORD PTR tv144[esp+12], eax
	npad	5
$LL2@bf_ofb_cip:
	push	ecx
	push	edx
	push	DWORD PTR [ebp+96]
	push	1073741824				; 40000000H
	push	ebx
	push	edi
	call	_BF_ofb64_encrypt
	add	esp, 24					; 00000018H
	lea	ecx, DWORD PTR [ebp+80]
	sub	esi, 1073741824				; 40000000H
	lea	edx, DWORD PTR [ebp+32]
	add	edi, 1073741824				; 40000000H
	add	ebx, 1073741824				; 40000000H
	sub	DWORD PTR tv144[esp+12], 1
	jne	SHORT $LL2@bf_ofb_cip
$LN3@bf_ofb_cip:
	test	esi, esi
	je	SHORT $LN10@bf_ofb_cip
	lea	eax, DWORD PTR [ebp+80]
	push	eax
	lea	eax, DWORD PTR [ebp+32]
	push	eax
	push	DWORD PTR [ebp+96]
	push	esi
	push	ebx
	push	edi
	call	_BF_ofb64_encrypt
	add	esp, 24					; 00000018H
$LN10@bf_ofb_cip:
	pop	edi
	pop	esi
	pop	ebp
	mov	eax, 1
	pop	ebx
; Line 78
	ret	0
_bf_ofb_cipher ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _bf_ecb_cipher
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_out$ = 12						; size = 4
_in$ = 16						; size = 4
_inl$ = 20						; size = 4
_bf_ecb_cipher PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
; Line 78
	push	ebp
; Line 76
	mov	ebp, DWORD PTR _ctx$[esp]
	push	edi
	mov	eax, DWORD PTR [ebp]
	mov	edi, DWORD PTR [eax+4]
	mov	eax, DWORD PTR _inl$[esp+4]
	cmp	eax, edi
	jb	SHORT $LN11@bf_ecb_cip
	sub	eax, edi
	push	ebx
	mov	DWORD PTR _inl$[esp+8], eax
	xor	ebx, ebx
	mov	eax, DWORD PTR _out$[esp+8]
	push	esi
	mov	esi, DWORD PTR _in$[esp+12]
	sub	eax, esi
	mov	DWORD PTR _out$[esp+12], eax
	npad	4
$LL4@bf_ecb_cip:
	push	DWORD PTR [ebp+8]
	add	eax, esi
	push	DWORD PTR [ebp+96]
	push	eax
	push	esi
	call	_BF_ecb_encrypt
	mov	eax, DWORD PTR _out$[esp+28]
	add	ebx, edi
	add	esp, 16					; 00000010H
	add	esi, edi
	cmp	ebx, DWORD PTR _inl$[esp+12]
	jbe	SHORT $LL4@bf_ecb_cip
	pop	esi
	pop	ebx
$LN11@bf_ecb_cip:
	pop	edi
	mov	eax, 1
	pop	ebp
; Line 78
	ret	0
_bf_ecb_cipher ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _bf_cfb64_cipher
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_out$ = 12						; size = 4
_in$ = 16						; size = 4
_inl$ = 20						; size = 4
_bf_cfb64_cipher PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
; Line 78
	push	esi
; Line 76
	mov	esi, 1073741824				; 40000000H
	push	edi
	mov	edi, DWORD PTR _inl$[esp+4]
	cmp	edi, esi
	cmovb	esi, edi
	test	edi, edi
	je	SHORT $LN11@bf_cfb64_c
	push	ebx
	mov	ebx, DWORD PTR _ctx$[esp+8]
	push	ebp
	mov	ebp, DWORD PTR _in$[esp+12]
	npad	2
$LL2@bf_cfb64_c:
	cmp	edi, esi
	jb	SHORT $LN12@bf_cfb64_c
	push	DWORD PTR [ebx+8]
	lea	eax, DWORD PTR [ebx+80]
	push	eax
	lea	eax, DWORD PTR [ebx+32]
	push	eax
	push	DWORD PTR [ebx+96]
	push	edi
	push	DWORD PTR _out$[esp+32]
	push	ebp
	call	_BF_cfb64_encrypt
	add	DWORD PTR _out$[esp+40], esi
	sub	edi, esi
	add	ebp, esi
	add	esp, 28					; 0000001cH
	cmp	edi, esi
	cmovb	esi, edi
	test	edi, edi
	jne	SHORT $LL2@bf_cfb64_c
$LN12@bf_cfb64_c:
	pop	ebp
	pop	ebx
	pop	edi
	mov	eax, 1
	pop	esi
; Line 78
	ret	0
$LN11@bf_cfb64_c:
	pop	edi
; Line 76
	mov	eax, 1
	pop	esi
; Line 78
	ret	0
_bf_cfb64_cipher ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _bf_cbc_cipher
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_out$ = 12						; size = 4
_in$ = 16						; size = 4
tv142 = 20						; size = 4
_inl$ = 20						; size = 4
_bf_cbc_cipher PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
; Line 78
	push	ebx
; Line 76
	mov	ebx, DWORD PTR _out$[esp]
	push	ebp
	mov	ebp, DWORD PTR _ctx$[esp+4]
	push	esi
	mov	esi, DWORD PTR _inl$[esp+8]
	push	edi
	mov	edi, DWORD PTR _in$[esp+12]
	cmp	esi, 1073741824				; 40000000H
	jb	SHORT $LN3@bf_cbc_cip
	mov	eax, esi
	lea	ecx, DWORD PTR [ebp+32]
	shr	eax, 30					; 0000001eH
	mov	DWORD PTR tv142[esp+12], eax
$LL2@bf_cbc_cip:
	push	DWORD PTR [ebp+8]
	push	ecx
	push	DWORD PTR [ebp+96]
	push	1073741824				; 40000000H
	push	ebx
	push	edi
	call	_BF_cbc_encrypt
	add	esp, 24					; 00000018H
	lea	ecx, DWORD PTR [ebp+32]
	sub	esi, 1073741824				; 40000000H
	add	edi, 1073741824				; 40000000H
	add	ebx, 1073741824				; 40000000H
	sub	DWORD PTR tv142[esp+12], 1
	jne	SHORT $LL2@bf_cbc_cip
$LN3@bf_cbc_cip:
	test	esi, esi
	je	SHORT $LN10@bf_cbc_cip
	push	DWORD PTR [ebp+8]
	lea	eax, DWORD PTR [ebp+32]
	push	eax
	push	DWORD PTR [ebp+96]
	push	esi
	push	ebx
	push	edi
	call	_BF_cbc_encrypt
	add	esp, 24					; 00000018H
$LN10@bf_cbc_cip:
	pop	edi
	pop	esi
	pop	ebp
	mov	eax, 1
	pop	ebx
; Line 78
	ret	0
_bf_cbc_cipher ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _bf_init_key
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_key$ = 12						; size = 4
_iv$ = 16						; size = 4
_enc$ = 20						; size = 4
_bf_init_key PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
; Line 82
	push	esi
; Line 83
	push	DWORD PTR _key$[esp]
	mov	esi, DWORD PTR _ctx$[esp+4]
	push	esi
	call	_EVP_CIPHER_CTX_key_length
	add	esp, 4
	push	eax
	push	DWORD PTR [esi+96]
	call	_BF_set_key
	add	esp, 12					; 0000000cH
; Line 84
	mov	eax, 1
	pop	esi
; Line 85
	ret	0
_bf_init_key ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_bf_ofb
_TEXT	SEGMENT
_EVP_bf_ofb PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
; Line 76
	mov	eax, OFFSET _bf_ofb
; Line 78
	ret	0
_EVP_bf_ofb ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_bf_cfb64
_TEXT	SEGMENT
_EVP_bf_cfb64 PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
; Line 76
	mov	eax, OFFSET _bf_cfb64
; Line 78
	ret	0
_EVP_bf_cfb64 ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_bf_cbc
_TEXT	SEGMENT
_EVP_bf_cbc PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
; Line 76
	mov	eax, OFFSET _bf_cbc
; Line 78
	ret	0
_EVP_bf_cbc ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_bf_ecb
_TEXT	SEGMENT
_EVP_bf_ecb PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_bf.c
; Line 76
	mov	eax, OFFSET _bf_ecb
; Line 78
	ret	0
_EVP_bf_ecb ENDP
_TEXT	ENDS
END