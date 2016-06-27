; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_HMAC_CTX_init
PUBLIC	_HMAC_CTX_cleanup
PUBLIC	_HMAC_Init
PUBLIC	_HMAC_Init_ex
PUBLIC	_HMAC_Update
PUBLIC	_HMAC_Final
PUBLIC	_HMAC
PUBLIC	_HMAC_CTX_copy
PUBLIC	_HMAC_CTX_set_flags
PUBLIC	??_C@_0BL@OKHNPHMK@j?5?$DM?$DN?5?$CIint?$CJsizeof?$CIctx?9?$DOkey?$CJ?$AA@ ; `string'
PUBLIC	??_C@_0BF@PGACILEA@?4?2crypto?2hmac?2hmac?4c?$AA@ ; `string'
EXTRN	_OpenSSLDie:PROC
EXTRN	_EVP_MD_block_size:PROC
EXTRN	_EVP_MD_CTX_init:PROC
EXTRN	_EVP_MD_CTX_cleanup:PROC
EXTRN	_EVP_MD_CTX_copy_ex:PROC
EXTRN	_EVP_MD_CTX_set_flags:PROC
EXTRN	_EVP_DigestInit_ex:PROC
EXTRN	_EVP_DigestUpdate:PROC
EXTRN	_EVP_DigestFinal_ex:PROC
EXTRN	_EVP_MD_CTX_copy:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
EXTRN	_memcpy:PROC
EXTRN	_memset:PROC
EXTRN	___security_cookie:DWORD
_BSS	SEGMENT
?m@?1??HMAC@@9@9 DB 040H DUP (?)			; `HMAC'::`2'::m
_BSS	ENDS
;	COMDAT ??_C@_0BF@PGACILEA@?4?2crypto?2hmac?2hmac?4c?$AA@
CONST	SEGMENT
??_C@_0BF@PGACILEA@?4?2crypto?2hmac?2hmac?4c?$AA@ DB '.\crypto\hmac\hmac.'
	DB	'c', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0BL@OKHNPHMK@j?5?$DM?$DN?5?$CIint?$CJsizeof?$CIctx?9?$DOkey?$CJ?$AA@
CONST	SEGMENT
??_C@_0BL@OKHNPHMK@j?5?$DM?$DN?5?$CIint?$CJsizeof?$CIctx?9?$DOkey?$CJ?$AA@ DB 'j'
	DB	' <= (int)sizeof(ctx->key)', 00H		; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _HMAC_CTX_set_flags
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_flags$ = 12						; size = 4
_HMAC_CTX_set_flags PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
; Line 264
	push	esi
; Line 265
	mov	esi, DWORD PTR _ctx$[esp]
	push	edi
	mov	edi, DWORD PTR _flags$[esp+4]
	push	edi
	lea	eax, DWORD PTR [esi+28]
	push	eax
	call	_EVP_MD_CTX_set_flags
; Line 266
	lea	eax, DWORD PTR [esi+52]
	push	edi
	push	eax
	call	_EVP_MD_CTX_set_flags
; Line 267
	lea	eax, DWORD PTR [esi+4]
	push	edi
	push	eax
	call	_EVP_MD_CTX_set_flags
	add	esp, 24					; 00000018H
	pop	edi
	pop	esi
; Line 268
	ret	0
_HMAC_CTX_set_flags ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _HMAC_CTX_copy
_TEXT	SEGMENT
_dctx$ = 8						; size = 4
_sctx$ = 12						; size = 4
_HMAC_CTX_copy PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
; Line 211
	push	ebx
; Line 212
	mov	ebx, DWORD PTR _sctx$[esp]
	push	ebp
	mov	ebp, DWORD PTR _dctx$[esp+4]
	lea	eax, DWORD PTR [ebx+28]
	push	eax
	lea	eax, DWORD PTR [ebp+28]
	push	eax
	call	_EVP_MD_CTX_copy
	add	esp, 8
	test	eax, eax
	je	SHORT $err$7
; Line 214
	lea	eax, DWORD PTR [ebx+52]
	push	eax
	lea	eax, DWORD PTR [ebp+52]
	push	eax
	call	_EVP_MD_CTX_copy
	add	esp, 8
	test	eax, eax
	je	SHORT $err$7
; Line 216
	lea	eax, DWORD PTR [ebx+4]
	push	eax
	lea	eax, DWORD PTR [ebp+4]
	push	eax
	call	_EVP_MD_CTX_copy
	add	esp, 8
	test	eax, eax
	je	SHORT $err$7
; Line 218
	push	esi
	push	edi
	lea	esi, DWORD PTR [ebx+80]
	mov	ecx, 32					; 00000020H
	lea	edi, DWORD PTR [ebp+80]
	rep movsd
; Line 219
	mov	eax, DWORD PTR [ebx+76]
	pop	edi
	mov	DWORD PTR [ebp+76], eax
; Line 220
	mov	eax, DWORD PTR [ebx]
	pop	esi
	mov	DWORD PTR [ebp], eax
; Line 221
	mov	eax, 1
	pop	ebp
	pop	ebx
; Line 224
	ret	0
$err$7:
	pop	ebp
; Line 223
	xor	eax, eax
	pop	ebx
; Line 224
	ret	0
_HMAC_CTX_copy ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _HMAC
_TEXT	SEGMENT
_d$GSCopy$1$ = -216					; size = 4
_c$ = -212						; size = 208
__$ArrayPad$ = -4					; size = 4
_evp_md$ = 8						; size = 4
_key$ = 12						; size = 4
_key_len$ = 16						; size = 4
_d$ = 20						; size = 4
_n$ = 24						; size = 4
_md$ = 28						; size = 4
_md_len$ = 32						; size = 4
_HMAC	PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
; Line 243
	mov	eax, 216				; 000000d8H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+216], eax
	mov	eax, DWORD PTR _d$[esp+212]
	push	ebx
	mov	ebx, DWORD PTR _key$[esp+216]
	push	ebp
	mov	ebp, DWORD PTR _md_len$[esp+220]
	mov	DWORD PTR _d$GSCopy$1$[esp+224], eax
	mov	eax, DWORD PTR _md$[esp+220]
; Line 247
	test	eax, eax
	push	esi
	mov	esi, OFFSET ?m@?1??HMAC@@9@9
	cmovne	esi, eax
; Line 204
	lea	eax, DWORD PTR _c$[esp+256]
	push	edi
	mov	edi, DWORD PTR _evp_md$[esp+228]
	push	eax
	call	_EVP_MD_CTX_init
; Line 205
	lea	eax, DWORD PTR _c$[esp+288]
	push	eax
	call	_EVP_MD_CTX_init
; Line 206
	lea	eax, DWORD PTR _c$[esp+244]
	push	eax
	call	_EVP_MD_CTX_init
	add	esp, 12					; 0000000cH
; Line 207
	mov	DWORD PTR _c$[esp+232], 0
; Line 160
	test	ebx, ebx
	je	SHORT $LN12@HMAC
	test	edi, edi
	je	SHORT $LN12@HMAC
; Line 204
	lea	eax, DWORD PTR _c$[esp+260]
	push	eax
	call	_EVP_MD_CTX_init
; Line 205
	lea	eax, DWORD PTR _c$[esp+288]
	push	eax
	call	_EVP_MD_CTX_init
; Line 206
	lea	eax, DWORD PTR _c$[esp+244]
	push	eax
	call	_EVP_MD_CTX_init
	add	esp, 12					; 0000000cH
; Line 207
	mov	DWORD PTR _c$[esp+232], 0
$LN12@HMAC:
; Line 162
	push	0
	push	edi
	push	DWORD PTR _key_len$[esp+236]
	lea	eax, DWORD PTR _c$[esp+244]
	push	ebx
	push	eax
	call	_HMAC_Init_ex
	add	esp, 20					; 00000014H
; Line 250
	test	eax, eax
	je	SHORT $err$20
; Line 171
	cmp	DWORD PTR _c$[esp+232], 0
	je	SHORT $err$20
; Line 174
	push	DWORD PTR _n$[esp+228]
	lea	eax, DWORD PTR _c$[esp+240]
	push	DWORD PTR _d$GSCopy$1$[esp+236]
	push	eax
	call	_EVP_DigestUpdate
	add	esp, 12					; 0000000cH
; Line 252
	test	eax, eax
	je	SHORT $err$20
; Line 254
	push	ebp
	lea	eax, DWORD PTR _c$[esp+236]
	push	esi
	push	eax
	call	_HMAC_Final
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $err$20
; Line 256
	lea	eax, DWORD PTR _c$[esp+232]
	push	eax
	call	_HMAC_CTX_cleanup
	add	esp, 4
; Line 257
	mov	eax, esi
	jmp	SHORT $LN1@HMAC
$err$20:
; Line 234
	lea	eax, DWORD PTR _c$[esp+260]
	push	eax
	call	_EVP_MD_CTX_cleanup
; Line 235
	lea	eax, DWORD PTR _c$[esp+288]
	push	eax
	call	_EVP_MD_CTX_cleanup
; Line 236
	lea	eax, DWORD PTR _c$[esp+244]
	push	eax
	call	_EVP_MD_CTX_cleanup
	add	esp, 12					; 0000000cH
; Line 260
	xor	eax, eax
$LN1@HMAC:
; Line 261
	mov	ecx, DWORD PTR __$ArrayPad$[esp+232]
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 216				; 000000d8H
	ret	0
_HMAC	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _HMAC_Final
_TEXT	SEGMENT
_i$ = -72						; size = 4
_buf$ = -68						; size = 64
__$ArrayPad$ = -4					; size = 4
_ctx$ = 8						; size = 4
_md$ = 12						; size = 4
_len$ = 16						; size = 4
_HMAC_Final PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
; Line 178
	mov	eax, 72					; 00000048H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+72], eax
	push	ebx
	mov	ebx, DWORD PTR _md$[esp+72]
	push	ebp
	mov	ebp, DWORD PTR _len$[esp+76]
	push	esi
	mov	esi, DWORD PTR _ctx$[esp+80]
	push	edi
; Line 186
	cmp	DWORD PTR [esi], 0
	je	SHORT $err$9
; Line 189
	lea	eax, DWORD PTR _i$[esp+88]
	push	eax
	lea	eax, DWORD PTR _buf$[esp+92]
	push	eax
	lea	edi, DWORD PTR [esi+4]
	push	edi
	call	_EVP_DigestFinal_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $err$9
; Line 191
	lea	eax, DWORD PTR [esi+52]
	push	eax
	push	edi
	call	_EVP_MD_CTX_copy_ex
	add	esp, 8
	test	eax, eax
	je	SHORT $err$9
; Line 193
	push	DWORD PTR _i$[esp+88]
	lea	eax, DWORD PTR _buf$[esp+92]
	push	eax
	push	edi
	call	_EVP_DigestUpdate
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $err$9
; Line 195
	push	ebp
	push	ebx
	push	edi
	call	_EVP_DigestFinal_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $err$9
; Line 197
	pop	edi
	pop	esi
	pop	ebp
	mov	eax, 1
	pop	ebx
; Line 200
	mov	ecx, DWORD PTR __$ArrayPad$[esp+72]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 72					; 00000048H
	ret	0
$err$9:
	mov	ecx, DWORD PTR __$ArrayPad$[esp+88]
	xor	eax, eax
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 72					; 00000048H
	ret	0
_HMAC_Final ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _HMAC_Update
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_data$ = 12						; size = 4
_len$ = 16						; size = 4
_HMAC_Update PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
; Line 171
	mov	eax, DWORD PTR _ctx$[esp-4]
	cmp	DWORD PTR [eax], 0
	jne	SHORT $LN2@HMAC_Updat
; Line 172
	xor	eax, eax
; Line 175
	ret	0
$LN2@HMAC_Updat:
; Line 174
	add	eax, 4
	mov	DWORD PTR _ctx$[esp-4], eax
	jmp	_EVP_DigestUpdate
_HMAC_Update ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _HMAC_Init_ex
_TEXT	SEGMENT
_impl$GSCopy$1$ = -140					; size = 4
_j$1$ = -136						; size = 4
_pad$ = -132						; size = 128
__$ArrayPad$ = -4					; size = 4
_ctx$ = 8						; size = 4
_key$ = 12						; size = 4
_len$ = 16						; size = 4
_md$ = 20						; size = 4
_impl$ = 24						; size = 4
_HMAC_Init_ex PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
; Line 70
	mov	eax, 140				; 0000008cH
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+140], eax
	mov	edx, DWORD PTR _impl$[esp+136]
; Line 71
	xor	eax, eax
	push	ebx
; Line 101
	mov	ebx, DWORD PTR _len$[esp+140]
	push	ebp
	mov	ebp, DWORD PTR _key$[esp+144]
	push	esi
	mov	esi, DWORD PTR _ctx$[esp+148]
	push	edi
	mov	edi, DWORD PTR _md$[esp+152]
	mov	DWORD PTR _impl$GSCopy$1$[esp+156], edx
	test	edi, edi
	je	SHORT $LN10@HMAC_Init_
	cmp	edi, DWORD PTR [esi]
	je	SHORT $LN8@HMAC_Init_
	test	ebp, ebp
	je	$LN12@HMAC_Init_
	test	ebx, ebx
	js	$LN12@HMAC_Init_
$LN8@HMAC_Init_:
; Line 105
	mov	eax, 1
; Line 106
	mov	DWORD PTR [esi], edi
	jmp	SHORT $LN13@HMAC_Init_
$LN10@HMAC_Init_:
; Line 107
	mov	edi, DWORD PTR [esi]
	test	edi, edi
	je	SHORT $LN12@HMAC_Init_
$LN13@HMAC_Init_:
; Line 113
	test	ebp, ebp
	je	$LN22@HMAC_Init_
; Line 115
	push	edi
	call	_EVP_MD_block_size
	add	esp, 4
	mov	DWORD PTR _j$1$[esp+156], eax
; Line 116
	cmp	eax, 128				; 00000080H
	jle	SHORT $LN31@HMAC_Init_
	push	OFFSET ??_C@_0BL@OKHNPHMK@j?5?$DM?$DN?5?$CIint?$CJsizeof?$CIctx?9?$DOkey?$CJ?$AA@
	push	116					; 00000074H
	push	OFFSET ??_C@_0BF@PGACILEA@?4?2crypto?2hmac?2hmac?4c?$AA@
	call	_OpenSSLDie
	mov	eax, DWORD PTR _j$1$[esp+168]
	add	esp, 12					; 0000000cH
$LN31@HMAC_Init_:
; Line 117
	cmp	eax, ebx
	jge	SHORT $LN15@HMAC_Init_
; Line 118
	push	DWORD PTR _impl$GSCopy$1$[esp+156]
	lea	eax, DWORD PTR [esi+4]
	push	edi
	push	eax
	call	_EVP_DigestInit_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $LN12@HMAC_Init_
; Line 120
	push	ebx
	push	ebp
	lea	ebx, DWORD PTR [esi+4]
	push	ebx
	call	_EVP_DigestUpdate
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $LN12@HMAC_Init_
; Line 122
	lea	ebp, DWORD PTR [esi+76]
	push	ebp
	lea	eax, DWORD PTR [esi+80]
	push	eax
	push	ebx
	call	_EVP_DigestFinal_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN16@HMAC_Init_
$LN12@HMAC_Init_:
$err$43:
; Line 110
	xor	eax, eax
$LN1@HMAC_Init_:
; Line 156
	mov	ecx, DWORD PTR __$ArrayPad$[esp+156]
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 140				; 0000008cH
	ret	0
$LN15@HMAC_Init_:
; Line 126
	cmp	ebx, 128				; 00000080H
	ja	SHORT $LN12@HMAC_Init_
; Line 128
	push	ebx
	lea	eax, DWORD PTR [esi+80]
	push	ebp
	push	eax
	call	_memcpy
; Line 129
	lea	ebp, DWORD PTR [esi+76]
	add	esp, 12					; 0000000cH
	mov	DWORD PTR [ebp], ebx
$LN16@HMAC_Init_:
; Line 131
	mov	ecx, DWORD PTR [ebp]
	cmp	ecx, 128				; 00000080H
	je	SHORT $LN41@HMAC_Init_
; Line 132
	mov	eax, 128				; 00000080H
	sub	eax, ecx
	push	eax
	lea	eax, DWORD PTR [esi+80]
	add	eax, ecx
	push	0
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
$LN41@HMAC_Init_:
	mov	edx, DWORD PTR _impl$GSCopy$1$[esp+156]
$LN40@HMAC_Init_:
; Line 137
	xor	ecx, ecx
$LL4@HMAC_Init_:
; Line 138
	mov	al, BYTE PTR [esi+ecx+80]
	xor	al, 54					; 00000036H
	mov	BYTE PTR _pad$[esp+ecx+156], al
	inc	ecx
	cmp	ecx, 128				; 00000080H
	jl	SHORT $LL4@HMAC_Init_
; Line 139
	push	edx
	lea	ebx, DWORD PTR [esi+28]
	push	edi
	push	ebx
	call	_EVP_DigestInit_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$LN12@HMAC_Init_
; Line 141
	push	edi
	call	_EVP_MD_block_size
	push	eax
	lea	eax, DWORD PTR _pad$[esp+164]
	push	eax
	push	ebx
	call	_EVP_DigestUpdate
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN12@HMAC_Init_
; Line 144
	xor	ecx, ecx
	npad	8
$LL7@HMAC_Init_:
; Line 145
	mov	al, BYTE PTR [esi+ecx+80]
	xor	al, 92					; 0000005cH
	mov	BYTE PTR _pad$[esp+ecx+156], al
	inc	ecx
	cmp	ecx, 128				; 00000080H
	jl	SHORT $LL7@HMAC_Init_
; Line 146
	push	DWORD PTR _impl$GSCopy$1$[esp+156]
	lea	ebx, DWORD PTR [esi+52]
	push	edi
	push	ebx
	call	_EVP_DigestInit_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$LN12@HMAC_Init_
; Line 148
	push	edi
	call	_EVP_MD_block_size
	push	eax
	lea	eax, DWORD PTR _pad$[esp+164]
	push	eax
	push	ebx
	call	_EVP_DigestUpdate
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN12@HMAC_Init_
$LN27@HMAC_Init_:
; Line 151
	lea	eax, DWORD PTR [esi+28]
	push	eax
	lea	eax, DWORD PTR [esi+4]
	push	eax
	call	_EVP_MD_CTX_copy_ex
	add	esp, 8
	test	eax, eax
	je	$LN12@HMAC_Init_
; Line 153
	mov	eax, 1
	jmp	$LN1@HMAC_Init_
$LN22@HMAC_Init_:
; Line 136
	test	eax, eax
	je	SHORT $LN27@HMAC_Init_
	jmp	$LN40@HMAC_Init_
_HMAC_Init_ex ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _HMAC_Init
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_key$ = 12						; size = 4
_len$ = 16						; size = 4
_md$ = 20						; size = 4
_HMAC_Init PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
; Line 160
	cmp	DWORD PTR _key$[esp-4], 0
	push	esi
	mov	esi, DWORD PTR _ctx$[esp]
	je	SHORT $LN4@HMAC_Init
	cmp	DWORD PTR _md$[esp], 0
	je	SHORT $LN4@HMAC_Init
; Line 204
	lea	eax, DWORD PTR [esi+28]
	push	eax
	call	_EVP_MD_CTX_init
; Line 205
	lea	eax, DWORD PTR [esi+52]
	push	eax
	call	_EVP_MD_CTX_init
; Line 206
	lea	eax, DWORD PTR [esi+4]
	push	eax
	call	_EVP_MD_CTX_init
	add	esp, 12					; 0000000cH
; Line 207
	mov	DWORD PTR [esi], 0
$LN4@HMAC_Init:
; Line 162
	push	0
	push	DWORD PTR _md$[esp+4]
	push	DWORD PTR _len$[esp+8]
	push	DWORD PTR _key$[esp+12]
	push	esi
	call	_HMAC_Init_ex
	add	esp, 20					; 00000014H
	pop	esi
; Line 163
	ret	0
_HMAC_Init ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _HMAC_CTX_cleanup
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_HMAC_CTX_cleanup PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
; Line 227
	push	esi
; Line 234
	mov	esi, DWORD PTR _ctx$[esp]
	lea	eax, DWORD PTR [esi+28]
	push	eax
	call	_EVP_MD_CTX_cleanup
; Line 235
	lea	eax, DWORD PTR [esi+52]
	push	eax
	call	_EVP_MD_CTX_cleanup
; Line 236
	lea	eax, DWORD PTR [esi+4]
	push	eax
	call	_EVP_MD_CTX_cleanup
; Line 237
	push	208					; 000000d0H
	push	0
	push	esi
	call	_memset
	add	esp, 24					; 00000018H
	pop	esi
; Line 238
	ret	0
_HMAC_CTX_cleanup ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _HMAC_CTX_init
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_HMAC_CTX_init PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\hmac\hmac.c
; Line 203
	push	esi
; Line 204
	mov	esi, DWORD PTR _ctx$[esp]
	lea	eax, DWORD PTR [esi+28]
	push	eax
	call	_EVP_MD_CTX_init
; Line 205
	lea	eax, DWORD PTR [esi+52]
	push	eax
	call	_EVP_MD_CTX_init
; Line 206
	lea	eax, DWORD PTR [esi+4]
	push	eax
	call	_EVP_MD_CTX_init
	add	esp, 12					; 0000000cH
; Line 207
	mov	DWORD PTR [esi], 0
	pop	esi
; Line 208
	ret	0
_HMAC_CTX_init ENDP
_TEXT	ENDS
END
