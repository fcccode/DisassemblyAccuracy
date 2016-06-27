; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_rc4.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

CONST	SEGMENT
_r4_cipher DD	05H
	DD	01H
	DD	010H
	DD	00H
	DD	08H
	DD	FLAT:_rc4_init_key
	DD	FLAT:_rc4_cipher
	DD	00H
	DD	0408H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
_r4_40_cipher DD 061H
	DD	01H
	DD	05H
	DD	00H
	DD	08H
	DD	FLAT:_rc4_init_key
	DD	FLAT:_rc4_cipher
	DD	00H
	DD	0408H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
CONST	ENDS
PUBLIC	_EVP_rc4
PUBLIC	_EVP_rc4_40
EXTRN	_EVP_CIPHER_CTX_key_length:PROC
EXTRN	_RC4_set_key:PROC
EXTRN	_RC4:PROC
; Function compile flags: /Ogtpy
;	COMDAT _rc4_cipher
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_out$ = 12						; size = 4
_in$ = 16						; size = 4
_inl$ = 20						; size = 4
_rc4_cipher PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_rc4.c
; Line 130
	push	DWORD PTR _out$[esp-4]
	mov	eax, DWORD PTR _ctx$[esp]
	push	DWORD PTR _in$[esp]
	push	DWORD PTR _inl$[esp+4]
	push	DWORD PTR [eax+96]
	call	_RC4
	add	esp, 16					; 00000010H
; Line 131
	mov	eax, 1
; Line 132
	ret	0
_rc4_cipher ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _rc4_init_key
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_key$ = 12						; size = 4
_iv$ = 16						; size = 4
_enc$ = 20						; size = 4
_rc4_init_key PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_rc4.c
; Line 122
	push	esi
; Line 123
	push	DWORD PTR _key$[esp]
	mov	esi, DWORD PTR _ctx$[esp+4]
	push	esi
	call	_EVP_CIPHER_CTX_key_length
	add	esp, 4
	push	eax
	push	DWORD PTR [esi+96]
	call	_RC4_set_key
	add	esp, 12					; 0000000cH
; Line 124
	mov	eax, 1
	pop	esi
; Line 125
	ret	0
_rc4_init_key ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_rc4_40
_TEXT	SEGMENT
_EVP_rc4_40 PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_rc4.c
; Line 117
	mov	eax, OFFSET _r4_40_cipher
; Line 118
	ret	0
_EVP_rc4_40 ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_rc4
_TEXT	SEGMENT
_EVP_rc4 PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\e_rc4.c
; Line 112
	mov	eax, OFFSET _r4_cipher
; Line 113
	ret	0
_EVP_rc4 ENDP
_TEXT	ENDS
END
