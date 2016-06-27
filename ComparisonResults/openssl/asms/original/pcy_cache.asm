; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\x509v3\pcy_cache.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_policy_cache_find_data
PUBLIC	_policy_cache_free
PUBLIC	_policy_cache_set
PUBLIC	??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@ ; `string'
EXTRN	_sk_num:PROC
EXTRN	_sk_value:PROC
EXTRN	_sk_new:PROC
EXTRN	_sk_pop_free:PROC
EXTRN	_sk_find:PROC
EXTRN	_sk_push:PROC
EXTRN	_CRYPTO_lock:PROC
EXTRN	_CRYPTO_malloc:PROC
EXTRN	_CRYPTO_free:PROC
EXTRN	_ASN1_INTEGER_free:PROC
EXTRN	_ASN1_INTEGER_get:PROC
EXTRN	_OBJ_obj2nid:PROC
EXTRN	_OBJ_cmp:PROC
EXTRN	_X509_get_ext_d2i:PROC
EXTRN	_POLICYINFO_free:PROC
EXTRN	_POLICY_CONSTRAINTS_free:PROC
EXTRN	_policy_data_new:PROC
EXTRN	_policy_data_free:PROC
EXTRN	_policy_cache_set_mapping:PROC
EXTRN	__chkstk:PROC
;	COMDAT ??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@
CONST	SEGMENT
??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@ DB '.\crypto\x50'
	DB	'9v3\pcy_cache.c', 00H			; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _policy_cache_new
_TEXT	SEGMENT
_i$ = -8						; size = 4
tv248 = -4						; size = 4
_x$ = 8							; size = 4
_policy_cache_new PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509v3\pcy_cache.c
; Line 124
	mov	eax, 8
	call	__chkstk
	push	ebx
	push	edi
; Line 131
	push	131					; 00000083H
	push	OFFSET ??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@
	push	20					; 00000014H
	xor	ebx, ebx
	call	_CRYPTO_malloc
	mov	edi, eax
	add	esp, 12					; 0000000cH
; Line 132
	test	edi, edi
	jne	SHORT $LN2@policy_cac
	pop	edi
	pop	ebx
; Line 217
	add	esp, 8
	ret	0
$LN2@policy_cac:
	push	ebp
	push	esi
; Line 140
	mov	esi, DWORD PTR _x$[esp+20]
	lea	eax, DWORD PTR [edi+8]
	mov	DWORD PTR [eax], -1
	mov	DWORD PTR tv248[esp+24], eax
; Line 146
	lea	eax, DWORD PTR _i$[esp+24]
	push	0
	push	eax
	push	401					; 00000191H
	mov	DWORD PTR [edi], ebx
	mov	DWORD PTR [edi+4], ebx
	mov	DWORD PTR [edi+12], -1
	mov	DWORD PTR [edi+16], -1
	push	esi
	mov	DWORD PTR [esi+64], edi
	call	_X509_get_ext_d2i
	mov	ebp, eax
	add	esp, 16					; 00000010H
; Line 148
	test	ebp, ebp
	jne	SHORT $LN3@policy_cac
; Line 149
	cmp	DWORD PTR _i$[esp+24], -1
	jne	$bad_cache$34
; Line 151
	jmp	SHORT $LN8@policy_cac
$LN3@policy_cac:
; Line 153
	mov	eax, DWORD PTR [ebp]
	test	eax, eax
	jne	SHORT $LN32@policy_cac
	cmp	DWORD PTR [ebp+4], ebx
	je	$bad_cache$34
; Line 263
	test	eax, eax
	je	SHORT $LN28@policy_cac
$LN32@policy_cac:
; Line 265
	cmp	DWORD PTR [eax+4], 258			; 00000102H
	je	$bad_cache$34
; Line 267
	push	eax
	call	_ASN1_INTEGER_get
	add	esp, 4
	mov	DWORD PTR [edi+12], eax
$LN28@policy_cac:
; Line 158
	push	DWORD PTR [ebp+4]
	lea	eax, DWORD PTR [edi+16]
	push	eax
	call	_policy_cache_set_int
	add	esp, 8
	test	eax, eax
	je	$bad_cache$34
$LN8@policy_cac:
; Line 165
	push	0
	lea	eax, DWORD PTR _i$[esp+28]
	push	eax
	push	89					; 00000059H
	push	esi
	call	_X509_get_ext_d2i
	add	esp, 16					; 00000010H
; Line 170
	test	eax, eax
	jne	SHORT $LN9@policy_cac
; Line 172
	cmp	DWORD PTR _i$[esp+24], -1
	jne	$bad_cache$34
; Line 215
	pop	esi
	pop	ebp
	pop	edi
	mov	eax, 1
	pop	ebx
; Line 217
	add	esp, 8
	ret	0
$LN9@policy_cac:
; Line 177
	push	DWORD PTR _i$[esp+24]
	push	eax
	push	esi
	call	_policy_cache_create
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _i$[esp+24], eax
; Line 181
	test	eax, eax
	jle	$LN29@policy_cac
; Line 184
	push	0
	lea	eax, DWORD PTR _i$[esp+28]
	push	eax
	push	747					; 000002ebH
	push	esi
	call	_X509_get_ext_d2i
	add	esp, 16					; 00000010H
; Line 186
	test	eax, eax
	jne	SHORT $LN12@policy_cac
; Line 188
	cmp	DWORD PTR _i$[esp+24], -1
	jne	SHORT $bad_cache$34
; Line 190
	jmp	SHORT $LN15@policy_cac
$LN12@policy_cac:
; Line 191
	push	eax
	push	esi
	call	_policy_cache_set_mapping
	add	esp, 8
	mov	DWORD PTR _i$[esp+24], eax
; Line 192
	test	eax, eax
	jle	SHORT $bad_cache$34
$LN15@policy_cac:
; Line 196
	push	0
	lea	eax, DWORD PTR _i$[esp+28]
	push	eax
	push	748					; 000002ecH
	push	esi
	call	_X509_get_ext_d2i
	mov	ebx, eax
	add	esp, 16					; 00000010H
; Line 198
	test	ebx, ebx
	jne	SHORT $LN16@policy_cac
; Line 199
	cmp	DWORD PTR _i$[esp+24], -1
	jne	SHORT $bad_cache$34
; Line 201
	jmp	SHORT $LN19@policy_cac
$LN16@policy_cac:
	push	ebx
	push	DWORD PTR tv248[esp+28]
	call	_policy_cache_set_int
	add	esp, 8
	test	eax, eax
	jne	SHORT $LN19@policy_cac
$bad_cache$34:
; Line 206
	or	DWORD PTR [esi+40], 2048		; 00000800H
$LN19@policy_cac:
; Line 209
	test	ebp, ebp
	je	SHORT $LN21@policy_cac
; Line 210
	push	ebp
	call	_POLICY_CONSTRAINTS_free
	add	esp, 4
$LN21@policy_cac:
; Line 212
	test	ebx, ebx
	je	SHORT $LN22@policy_cac
; Line 213
	push	ebx
	call	_ASN1_INTEGER_free
	add	esp, 4
$LN22@policy_cac:
; Line 215
	mov	eax, 1
$LN29@policy_cac:
	pop	esi
	pop	ebp
	pop	edi
	pop	ebx
; Line 217
	add	esp, 8
	ret	0
_policy_cache_new ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _policy_cache_create
_TEXT	SEGMENT
_ret$1$ = -4						; size = 4
_x$ = 8							; size = 4
_policies$ = 12						; size = 4
_crit$ = 16						; size = 4
_policy_cache_create PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509v3\pcy_cache.c
; Line 77
	mov	eax, 4
	call	__chkstk
	push	ebx
	push	ebp
; Line 83
	mov	ebp, DWORD PTR _policies$[esp+8]
	xor	ebx, ebx
	push	edi
	mov	edi, DWORD PTR _x$[esp+12]
	push	ebp
	mov	DWORD PTR _ret$1$[esp+20], ebx
	mov	edi, DWORD PTR [edi+64]
	call	_sk_num
	add	esp, 4
	test	eax, eax
	je	$LN15@policy_cac
; Line 85
	push	OFFSET _policy_data_cmp
	call	_sk_new
	add	esp, 4
	mov	DWORD PTR [edi+4], eax
; Line 86
	test	eax, eax
	je	$LN15@policy_cac
; Line 88
	push	esi
	push	ebp
	call	_sk_num
	add	esp, 4
	test	eax, eax
	jle	SHORT $LN3@policy_cac
$LL4@policy_cac:
; Line 89
	push	ebx
	push	ebp
	call	_sk_value
; Line 90
	push	DWORD PTR _crit$[esp+24]
	push	0
	push	eax
	call	_policy_data_new
	mov	esi, eax
	add	esp, 20					; 00000014H
; Line 91
	test	esi, esi
	je	SHORT $LN29@policy_cac
; Line 96
	push	DWORD PTR [esi+4]
	call	_OBJ_obj2nid
	add	esp, 4
	cmp	eax, 746				; 000002eaH
	jne	SHORT $LN8@policy_cac
; Line 97
	cmp	DWORD PTR [edi], 0
	jne	SHORT $LN21@policy_cac
; Line 101
	mov	DWORD PTR [edi], esi
	jmp	SHORT $LN13@policy_cac
$LN8@policy_cac:
; Line 102
	push	esi
	push	DWORD PTR [edi+4]
	call	_sk_find
	add	esp, 8
	cmp	eax, -1
	jne	SHORT $LN21@policy_cac
; Line 105
	push	esi
	push	DWORD PTR [edi+4]
	call	_sk_push
	add	esp, 8
	test	eax, eax
	je	SHORT $LN14@policy_cac
$LN13@policy_cac:
; Line 88
	push	ebp
	inc	ebx
	call	_sk_num
	add	esp, 4
	cmp	ebx, eax
	jl	SHORT $LL4@policy_cac
$LN3@policy_cac:
; Line 109
	mov	ebx, 1
	jmp	SHORT $LN30@policy_cac
$LN21@policy_cac:
; Line 112
	mov	eax, DWORD PTR _x$[esp+16]
	mov	DWORD PTR _ret$1$[esp+20], -1
	or	DWORD PTR [eax+40], 2048		; 00000800H
$LN14@policy_cac:
; Line 114
	push	esi
	call	_policy_data_free
	mov	ebx, DWORD PTR _ret$1$[esp+24]
	add	esp, 4
	jmp	SHORT $LN30@policy_cac
$LN29@policy_cac:
	xor	ebx, ebx
$LN30@policy_cac:
	pop	esi
$LN15@policy_cac:
; Line 115
	push	OFFSET _POLICYINFO_free
	push	ebp
	call	_sk_pop_free
	add	esp, 8
; Line 116
	test	ebx, ebx
	jg	SHORT $LN28@policy_cac
; Line 117
	push	OFFSET _policy_data_free
	push	DWORD PTR [edi+4]
	call	_sk_pop_free
	add	esp, 8
; Line 118
	mov	DWORD PTR [edi+4], 0
$LN28@policy_cac:
; Line 120
	pop	edi
	pop	ebp
	mov	eax, ebx
	pop	ebx
; Line 121
	pop	ecx
	ret	0
_policy_cache_create ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _policy_cache_set_int
_TEXT	SEGMENT
_out$ = 8						; size = 4
_value$ = 12						; size = 4
_policy_cache_set_int PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509v3\pcy_cache.c
; Line 263
	mov	eax, DWORD PTR _value$[esp-4]
	test	eax, eax
	je	SHORT $LN5@policy_cac
; Line 265
	cmp	DWORD PTR [eax+4], 258			; 00000102H
	jne	SHORT $LN3@policy_cac
; Line 266
	xor	eax, eax
; Line 269
	ret	0
$LN3@policy_cac:
; Line 267
	push	eax
	call	_ASN1_INTEGER_get
	mov	ecx, DWORD PTR _out$[esp]
	add	esp, 4
	mov	DWORD PTR [ecx], eax
$LN5@policy_cac:
; Line 268
	mov	eax, 1
; Line 269
	ret	0
_policy_cache_set_int ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _policy_data_cmp
_TEXT	SEGMENT
_a$ = 8							; size = 4
_b$ = 12						; size = 4
_policy_data_cmp PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509v3\pcy_cache.c
; Line 258
	mov	eax, DWORD PTR _b$[esp-4]
	mov	eax, DWORD PTR [eax]
	push	DWORD PTR [eax+4]
	mov	eax, DWORD PTR _a$[esp]
	mov	eax, DWORD PTR [eax]
	push	DWORD PTR [eax+4]
	call	_OBJ_cmp
	add	esp, 8
; Line 259
	ret	0
_policy_data_cmp ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _policy_cache_set
_TEXT	SEGMENT
_x$ = 8							; size = 4
_policy_cache_set PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509v3\pcy_cache.c
; Line 231
	push	esi
; Line 233
	mov	esi, DWORD PTR _x$[esp]
	cmp	DWORD PTR [esi+64], 0
	jne	SHORT $LN4@policy_cac
; Line 234
	push	234					; 000000eaH
	push	OFFSET ??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@
	push	3
	push	9
	call	_CRYPTO_lock
; Line 235
	push	esi
	call	_policy_cache_new
; Line 236
	push	236					; 000000ecH
	push	OFFSET ??_C@_0BM@PFMNAKHN@?4?2crypto?2x509v3?2pcy_cache?4c?$AA@
	push	3
	push	10					; 0000000aH
	call	_CRYPTO_lock
	add	esp, 36					; 00000024H
$LN4@policy_cac:
; Line 239
	mov	eax, DWORD PTR [esi+64]
	pop	esi
; Line 241
	ret	0
_policy_cache_set ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _policy_cache_free
_TEXT	SEGMENT
_cache$ = 8						; size = 4
_policy_cache_free PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509v3\pcy_cache.c
; Line 220
	push	esi
; Line 221
	mov	esi, DWORD PTR _cache$[esp]
	test	esi, esi
	je	SHORT $LN1@policy_cac
; Line 223
	mov	eax, DWORD PTR [esi]
	test	eax, eax
	je	SHORT $LN3@policy_cac
; Line 224
	push	eax
	call	_policy_data_free
	add	esp, 4
$LN3@policy_cac:
; Line 225
	mov	eax, DWORD PTR [esi+4]
	test	eax, eax
	je	SHORT $LN4@policy_cac
; Line 226
	push	OFFSET _policy_data_free
	push	eax
	call	_sk_pop_free
	add	esp, 8
$LN4@policy_cac:
; Line 227
	push	esi
	call	_CRYPTO_free
	add	esp, 4
$LN1@policy_cac:
	pop	esi
; Line 228
	ret	0
_policy_cache_free ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _policy_cache_find_data
_TEXT	SEGMENT
_tmp$ = -16						; size = 16
_cache$ = 8						; size = 4
_id$ = 12						; size = 4
_policy_cache_find_data PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\x509v3\pcy_cache.c
; Line 245
	mov	eax, 16					; 00000010H
	call	__chkstk
; Line 248
	mov	eax, DWORD PTR _id$[esp+12]
	push	esi
; Line 249
	mov	esi, DWORD PTR _cache$[esp+16]
	mov	DWORD PTR _tmp$[esp+24], eax
	lea	eax, DWORD PTR _tmp$[esp+20]
	push	eax
	push	DWORD PTR [esi+4]
	call	_sk_find
	add	esp, 8
; Line 250
	cmp	eax, -1
	jne	SHORT $LN2@policy_cac
; Line 251
	xor	eax, eax
	pop	esi
; Line 253
	add	esp, 16					; 00000010H
	ret	0
$LN2@policy_cac:
; Line 252
	push	eax
	push	DWORD PTR [esi+4]
	call	_sk_value
	add	esp, 8
	pop	esi
; Line 253
	add	esp, 16					; 00000010H
	ret	0
_policy_cache_find_data ENDP
_TEXT	ENDS
END