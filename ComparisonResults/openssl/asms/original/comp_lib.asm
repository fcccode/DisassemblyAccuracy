; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\comp\comp_lib.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_COMP_CTX_new
PUBLIC	_COMP_CTX_free
PUBLIC	_COMP_compress_block
PUBLIC	_COMP_expand_block
PUBLIC	??_C@_0BJ@DAGKNKDH@?4?2crypto?2comp?2comp_lib?4c?$AA@ ; `string'
EXTRN	_CRYPTO_malloc:PROC
EXTRN	_CRYPTO_free:PROC
;	COMDAT ??_C@_0BJ@DAGKNKDH@?4?2crypto?2comp?2comp_lib?4c?$AA@
CONST	SEGMENT
??_C@_0BJ@DAGKNKDH@?4?2crypto?2comp?2comp_lib?4c?$AA@ DB '.\crypto\comp\c'
	DB	'omp_lib.c', 00H				; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _COMP_expand_block
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_out$ = 12						; size = 4
_olen$ = 16						; size = 4
_in$ = 20						; size = 4
_ilen$ = 24						; size = 4
_COMP_expand_block PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\comp\comp_lib.c
; Line 53
	push	esi
; Line 56
	mov	esi, DWORD PTR _ctx$[esp]
	mov	eax, DWORD PTR [esi]
	mov	eax, DWORD PTR [eax+20]
	test	eax, eax
	jne	SHORT $LN2@COMP_expan
; Line 58
	or	eax, -1
	pop	esi
; Line 66
	ret	0
$LN2@COMP_expan:
	push	edi
; Line 60
	mov	edi, DWORD PTR _ilen$[esp+4]
	push	edi
	push	DWORD PTR _in$[esp+8]
	push	DWORD PTR _olen$[esp+12]
	push	DWORD PTR _out$[esp+16]
	push	esi
	call	eax
	add	esp, 20					; 00000014H
; Line 61
	test	eax, eax
	jle	SHORT $LN3@COMP_expan
; Line 62
	add	DWORD PTR [esi+12], edi
; Line 63
	add	DWORD PTR [esi+16], eax
$LN3@COMP_expan:
; Line 66
	pop	edi
	pop	esi
	ret	0
_COMP_expand_block ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _COMP_compress_block
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_out$ = 12						; size = 4
_olen$ = 16						; size = 4
_in$ = 20						; size = 4
_ilen$ = 24						; size = 4
_COMP_compress_block PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\comp\comp_lib.c
; Line 37
	push	esi
; Line 39
	mov	esi, DWORD PTR _ctx$[esp]
	mov	eax, DWORD PTR [esi]
	mov	eax, DWORD PTR [eax+16]
	test	eax, eax
	jne	SHORT $LN2@COMP_compr
; Line 41
	or	eax, -1
	pop	esi
; Line 49
	ret	0
$LN2@COMP_compr:
	push	edi
; Line 43
	mov	edi, DWORD PTR _ilen$[esp+4]
	push	edi
	push	DWORD PTR _in$[esp+8]
	push	DWORD PTR _olen$[esp+12]
	push	DWORD PTR _out$[esp+16]
	push	esi
	call	eax
	add	esp, 20					; 00000014H
; Line 44
	test	eax, eax
	jle	SHORT $LN3@COMP_compr
; Line 45
	add	DWORD PTR [esi+4], edi
; Line 46
	add	DWORD PTR [esi+8], eax
$LN3@COMP_compr:
; Line 49
	pop	edi
	pop	esi
	ret	0
_COMP_compress_block ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _COMP_CTX_free
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_COMP_CTX_free PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\comp\comp_lib.c
; Line 25
	push	esi
; Line 26
	mov	esi, DWORD PTR _ctx$[esp]
	test	esi, esi
	je	SHORT $LN1@COMP_CTX_f
; Line 29
	mov	eax, DWORD PTR [esi]
	mov	eax, DWORD PTR [eax+12]
	test	eax, eax
	je	SHORT $LN3@COMP_CTX_f
; Line 30
	push	esi
	call	eax
	add	esp, 4
$LN3@COMP_CTX_f:
; Line 32
	push	esi
	call	_CRYPTO_free
	add	esp, 4
$LN1@COMP_CTX_f:
	pop	esi
; Line 33
	ret	0
_COMP_CTX_free ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _COMP_CTX_new
_TEXT	SEGMENT
_meth$ = 8						; size = 4
_COMP_CTX_new PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\comp\comp_lib.c
; Line 8
	push	esi
; Line 11
	push	11					; 0000000bH
	push	OFFSET ??_C@_0BJ@DAGKNKDH@?4?2crypto?2comp?2comp_lib?4c?$AA@
	push	28					; 0000001cH
	call	_CRYPTO_malloc
	mov	esi, eax
	add	esp, 12					; 0000000cH
	test	esi, esi
	jne	SHORT $LN2@COMP_CTX_n
	pop	esi
; Line 22
	ret	0
$LN2@COMP_CTX_n:
; Line 16
	mov	eax, DWORD PTR _meth$[esp]
	xorps	xmm0, xmm0
	movups	XMMWORD PTR [esi], xmm0
	movq	QWORD PTR [esi+16], xmm0
	mov	DWORD PTR [esi+24], 0
	mov	DWORD PTR [esi], eax
; Line 17
	mov	eax, DWORD PTR [eax+8]
	test	eax, eax
	je	SHORT $LN3@COMP_CTX_n
	push	esi
	call	eax
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN3@COMP_CTX_n
; Line 18
	push	esi
	call	_CRYPTO_free
	add	esp, 4
; Line 19
	xor	esi, esi
$LN3@COMP_CTX_n:
; Line 21
	mov	eax, esi
	pop	esi
; Line 22
	ret	0
_COMP_CTX_new ENDP
_TEXT	ENDS
END