; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_fill_GOST94_params
PUBLIC	_gost_sign_keygen
PUBLIC	_gost_do_sign
PUBLIC	_gost_do_verify
PUBLIC	_gost94_compute_public
PUBLIC	_hashsum2bn
PUBLIC	_store_bignum
PUBLIC	_getbnfrombuf
PUBLIC	_pack_sign_cp
PUBLIC	_unpack_cp_signature
PUBLIC	??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@ ; `string'
EXTRN	_BN_CTX_new:PROC
EXTRN	_BN_CTX_free:PROC
EXTRN	_BN_CTX_start:PROC
EXTRN	_BN_CTX_get:PROC
EXTRN	_BN_CTX_end:PROC
EXTRN	_BN_rand_range:PROC
EXTRN	_BN_num_bits:PROC
EXTRN	_BN_new:PROC
EXTRN	_BN_copy:PROC
EXTRN	_BN_bin2bn:PROC
EXTRN	_BN_bn2bin:PROC
EXTRN	_BN_sub:PROC
EXTRN	_BN_div:PROC
EXTRN	_BN_mod_add:PROC
EXTRN	_BN_mod_mul:PROC
EXTRN	_BN_sub_word:PROC
EXTRN	_BN_set_word:PROC
EXTRN	_BN_cmp:PROC
EXTRN	_BN_free:PROC
EXTRN	_BN_mod_exp:PROC
EXTRN	_BN_dec2bn:PROC
EXTRN	_DSA_SIG_new:PROC
EXTRN	_DSA_SIG_free:PROC
EXTRN	_ERR_GOST_error:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
EXTRN	_memset:PROC
EXTRN	_R3410_paramset:BYTE
EXTRN	___security_cookie:DWORD
;	COMDAT ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
CONST	SEGMENT
??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@ DB '.\engines\c'
	DB	'cgost\gost_sign.c', 00H			; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _unpack_cp_signature
_TEXT	SEGMENT
_sig$ = 8						; size = 4
_siglen$ = 12						; size = 4
_unpack_cp_signature PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 321
	push	ebx
; Line 324
	call	_DSA_SIG_new
	mov	ebx, eax
; Line 325
	test	ebx, ebx
	jne	SHORT $LN2@unpack_cp_
; Line 326
	push	326					; 00000146H
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	118					; 00000076H
	push	137					; 00000089H
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
; Line 327
	xor	eax, eax
	pop	ebx
; Line 332
	ret	0
$LN2@unpack_cp_:
	push	esi
; Line 329
	mov	esi, DWORD PTR _sig$[esp+4]
	push	edi
	mov	edi, DWORD PTR _siglen$[esp+8]
	shr	edi, 1
	push	edi
	push	esi
	call	_getbnfrombuf
	mov	DWORD PTR [ebx+4], eax
; Line 330
	lea	eax, DWORD PTR [edi+esi]
	push	edi
	push	eax
	call	_getbnfrombuf
	add	esp, 16					; 00000010H
	mov	DWORD PTR [ebx], eax
; Line 331
	mov	eax, ebx
	pop	edi
	pop	esi
	pop	ebx
; Line 332
	ret	0
_unpack_cp_signature ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _pack_sign_cp
_TEXT	SEGMENT
_s$ = 8							; size = 4
_bn$1$ = 12						; size = 4
_bn$1$ = 12						; size = 4
_order$ = 12						; size = 4
_sig$ = 16						; size = 4
_siglen$ = 20						; size = 4
_pack_sign_cp PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 148
	mov	eax, DWORD PTR _siglen$[esp-4]
	push	ebx
	push	ebp
	push	esi
; Line 149
	mov	esi, DWORD PTR _sig$[esp+8]
	push	edi
	mov	edi, DWORD PTR _order$[esp+12]
	lea	ecx, DWORD PTR [edi+edi]
	push	ecx
	push	0
	push	esi
	mov	DWORD PTR [eax], ecx
	call	_memset
; Line 150
	mov	ebp, DWORD PTR _s$[esp+24]
	mov	eax, DWORD PTR [ebp+4]
; Line 367
	push	eax
; Line 150
	mov	DWORD PTR _bn$1$[esp+28], eax
; Line 367
	call	_BN_num_bits
	add	eax, 7
	add	esp, 16					; 00000010H
	cdq
	and	edx, 7
	lea	ebx, DWORD PTR [edx+eax]
	sar	ebx, 3
; Line 368
	cmp	ebx, edi
	jg	SHORT $LN3@pack_sign_
; Line 370
	push	edi
	push	0
	push	esi
	call	_memset
; Line 371
	mov	eax, edi
	sub	eax, ebx
	add	eax, esi
	push	eax
	push	DWORD PTR _bn$1$[esp+28]
	call	_BN_bn2bin
	add	esp, 20					; 00000014H
$LN3@pack_sign_:
; Line 151
	mov	eax, DWORD PTR [ebp]
	add	esi, edi
; Line 367
	push	eax
; Line 151
	mov	DWORD PTR _bn$1$[esp+16], eax
; Line 367
	call	_BN_num_bits
	add	eax, 7
	add	esp, 4
	cdq
	and	edx, 7
	lea	ebx, DWORD PTR [edx+eax]
	sar	ebx, 3
; Line 368
	cmp	ebx, edi
	jg	SHORT $LN6@pack_sign_
; Line 370
	push	edi
	push	0
	push	esi
	call	_memset
; Line 371
	sub	esi, ebx
	add	esi, edi
	push	esi
	push	DWORD PTR _bn$1$[esp+28]
	call	_BN_bn2bin
	add	esp, 20					; 00000014H
$LN6@pack_sign_:
; Line 153
	push	ebp
	call	_DSA_SIG_free
	add	esp, 4
; Line 154
	mov	eax, 1
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 155
	ret	0
_pack_sign_cp ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _getbnfrombuf
_TEXT	SEGMENT
_buf$ = 8						; size = 4
_len$ = 12						; size = 4
_getbnfrombuf PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 348
	mov	ecx, DWORD PTR _buf$[esp-4]
	mov	eax, DWORD PTR _len$[esp-4]
	cmp	BYTE PTR [ecx], 0
	jne	SHORT $LN3@getbnfromb
	npad	3
$LL2@getbnfromb:
	test	eax, eax
	je	SHORT $LN4@getbnfromb
; Line 349
	inc	ecx
; Line 350
	dec	eax
	cmp	BYTE PTR [ecx], 0
	je	SHORT $LL2@getbnfromb
$LN3@getbnfromb:
; Line 352
	test	eax, eax
	je	SHORT $LN4@getbnfromb
; Line 353
	push	0
	push	eax
	push	ecx
	call	_BN_bin2bn
	add	esp, 12					; 0000000cH
; Line 359
	ret	0
$LN4@getbnfromb:
	push	esi
; Line 355
	call	_BN_new
	mov	esi, eax
; Line 356
	push	0
	push	esi
	call	_BN_set_word
	add	esp, 8
; Line 357
	mov	eax, esi
	pop	esi
; Line 359
	ret	0
_getbnfrombuf ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _store_bignum
_TEXT	SEGMENT
_bn$ = 8						; size = 4
_buf$ = 12						; size = 4
_len$ = 16						; size = 4
_store_bignum PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 366
	push	ebx
	push	edi
; Line 367
	push	DWORD PTR _bn$[esp+4]
	call	_BN_num_bits
; Line 368
	mov	edi, DWORD PTR _len$[esp+8]
	add	eax, 7
	cdq
	add	esp, 4
	and	edx, 7
	lea	ebx, DWORD PTR [edx+eax]
	sar	ebx, 3
	cmp	ebx, edi
	jle	SHORT $LN2@store_bign
; Line 369
	pop	edi
	xor	eax, eax
	pop	ebx
; Line 373
	ret	0
$LN2@store_bign:
	push	esi
; Line 370
	mov	esi, DWORD PTR _buf$[esp+8]
	push	edi
	push	0
	push	esi
	call	_memset
; Line 371
	sub	esi, ebx
	add	esi, edi
	push	esi
	push	DWORD PTR _bn$[esp+24]
	call	_BN_bn2bin
	add	esp, 20					; 00000014H
; Line 372
	mov	eax, 1
	pop	esi
	pop	edi
	pop	ebx
; Line 373
	ret	0
_store_bignum ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _hashsum2bn
_TEXT	SEGMENT
_buf$ = -36						; size = 32
__$ArrayPad$ = -4					; size = 4
_dgst$ = 8						; size = 4
_hashsum2bn PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 336
	mov	eax, 36					; 00000024H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+36], eax
	push	esi
; Line 339
	mov	esi, DWORD PTR _dgst$[esp+36]
	lea	edx, DWORD PTR _buf$[esp+71]
	xor	ecx, ecx
$LL4@hashsum2bn:
; Line 340
	mov	al, BYTE PTR [ecx+esi]
	lea	edx, DWORD PTR [edx-1]
	inc	ecx
	mov	BYTE PTR [edx+1], al
	cmp	ecx, 32					; 00000020H
	jl	SHORT $LL4@hashsum2bn
; Line 348
	cmp	BYTE PTR _buf$[esp+40], 0
; Line 342
	lea	ecx, DWORD PTR _buf$[esp+40]
	mov	eax, 32					; 00000020H
; Line 348
	jne	SHORT $LN20@hashsum2bn
	npad	1
$LL7@hashsum2bn:
	test	eax, eax
	je	SHORT $LN22@hashsum2bn
; Line 349
	inc	ecx
; Line 350
	dec	eax
	cmp	BYTE PTR [ecx], 0
	je	SHORT $LL7@hashsum2bn
; Line 352
	test	eax, eax
	jne	SHORT $LN20@hashsum2bn
$LN22@hashsum2bn:
; Line 355
	call	_BN_new
	mov	esi, eax
; Line 356
	push	0
	push	esi
	call	_BN_set_word
	add	esp, 8
; Line 342
	mov	eax, esi
	pop	esi
; Line 343
	mov	ecx, DWORD PTR __$ArrayPad$[esp+36]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 36					; 00000024H
	ret	0
$LN20@hashsum2bn:
; Line 353
	push	0
	push	eax
	push	ecx
	call	_BN_bin2bn
; Line 343
	mov	ecx, DWORD PTR __$ArrayPad$[esp+52]
; Line 353
	add	esp, 12					; 0000000cH
	pop	esi
; Line 343
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 36					; 00000024H
	ret	0
_hashsum2bn ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _gost94_compute_public
_TEXT	SEGMENT
_dsa$ = 8						; size = 4
_gost94_compute_public PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 229
	push	esi
; Line 232
	mov	esi, DWORD PTR _dsa$[esp]
	cmp	DWORD PTR [esi+20], 0
	jne	SHORT $LN2@gost94_com
; Line 233
	push	233					; 000000e9H
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	113					; 00000071H
	push	110					; 0000006eH
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
; Line 234
	xor	eax, eax
	pop	esi
; Line 252
	ret	0
$LN2@gost94_com:
	push	edi
; Line 236
	call	_BN_CTX_new
	mov	edi, eax
; Line 237
	test	edi, edi
	jne	SHORT $LN3@gost94_com
; Line 238
	push	238					; 000000eeH
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	65					; 00000041H
	push	110					; 0000006eH
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
; Line 239
	xor	eax, eax
	pop	edi
	pop	esi
; Line 252
	ret	0
$LN3@gost94_com:
; Line 242
	call	_BN_new
	mov	DWORD PTR [esi+24], eax
; Line 243
	test	eax, eax
	jne	SHORT $LN4@gost94_com
; Line 244
	push	244					; 000000f4H
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	65					; 00000041H
	push	110					; 0000006eH
	call	_ERR_GOST_error
; Line 245
	push	edi
	call	_BN_CTX_free
	add	esp, 20					; 00000014H
; Line 246
	xor	eax, eax
	pop	edi
	pop	esi
; Line 252
	ret	0
$LN4@gost94_com:
; Line 249
	push	edi
	push	DWORD PTR [esi+12]
	push	DWORD PTR [esi+28]
	push	DWORD PTR [esi+20]
	push	eax
	call	_BN_mod_exp
; Line 250
	push	edi
	call	_BN_CTX_free
	add	esp, 24					; 00000018H
; Line 251
	mov	eax, 1
	pop	edi
	pop	esi
; Line 252
	ret	0
_gost94_compute_public ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _gost_do_verify
_TEXT	SEGMENT
_tmp$1$ = -32						; size = 4
_v$1$ = -28						; size = 4
_z1$1$ = -24						; size = 4
_z2$1$ = -20						; size = 4
_tmp2$1$ = -16						; size = 4
_tmp3$1$ = -12						; size = 4
_q2$1$ = -8						; size = 4
_u$1$ = -4						; size = 4
_dgst$ = 8						; size = 4
_dgst_len$ = 12						; size = 4
_sig$ = 16						; size = 4
_dsa$ = 20						; size = 4
_gost_do_verify PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 164
	mov	eax, 32					; 00000020H
	call	__chkstk
	push	ebx
	push	esi
; Line 169
	xor	ebx, ebx
; Line 170
	call	_BN_CTX_new
	mov	esi, eax
; Line 171
	test	esi, esi
	jne	SHORT $LN2@gost_do_ve
; Line 172
	push	172					; 000000acH
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	65					; 00000041H
	push	113					; 00000071H
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
; Line 221
	mov	eax, ebx
	pop	esi
	pop	ebx
; Line 222
	add	esp, 32					; 00000020H
	ret	0
$LN2@gost_do_ve:
	push	ebp
	push	edi
; Line 176
	push	esi
	call	_BN_CTX_start
; Line 177
	mov	edi, DWORD PTR _dsa$[esp+48]
	mov	ebp, DWORD PTR _sig$[esp+48]
	push	DWORD PTR [edi+16]
	push	DWORD PTR [ebp+4]
	call	_BN_cmp
	add	esp, 12					; 0000000cH
	cmp	eax, 1
	jge	$LN4@gost_do_ve
	push	DWORD PTR [edi+16]
	push	DWORD PTR [ebp]
	call	_BN_cmp
	add	esp, 8
	cmp	eax, 1
	jge	$LN4@gost_do_ve
; Line 181
	push	DWORD PTR _dgst$[esp+44]
	call	_hashsum2bn
; Line 183
	push	esi
	mov	ebp, eax
	call	_BN_CTX_get
; Line 184
	push	esi
	mov	DWORD PTR _tmp$1$[esp+60], eax
	call	_BN_CTX_get
; Line 185
	push	esi
	mov	DWORD PTR _v$1$[esp+64], eax
	call	_BN_CTX_get
; Line 186
	push	esi
	mov	DWORD PTR _q2$1$[esp+68], eax
	call	_BN_CTX_get
; Line 187
	push	esi
	mov	DWORD PTR _z1$1$[esp+72], eax
	call	_BN_CTX_get
; Line 188
	push	esi
	mov	DWORD PTR _z2$1$[esp+76], eax
	call	_BN_CTX_get
; Line 189
	push	esi
	mov	DWORD PTR _tmp2$1$[esp+80], eax
	call	_BN_CTX_get
; Line 190
	push	esi
	mov	DWORD PTR _tmp3$1$[esp+84], eax
	call	_BN_CTX_get
	mov	ecx, eax
	add	esp, 36					; 00000024H
; Line 191
	mov	eax, DWORD PTR _tmp$1$[esp+48]
	mov	DWORD PTR _u$1$[esp+48], ecx
	test	eax, eax
	je	$LN6@gost_do_ve
	cmp	DWORD PTR _v$1$[esp+48], ebx
	je	$LN6@gost_do_ve
	cmp	DWORD PTR _q2$1$[esp+48], ebx
	je	$LN6@gost_do_ve
	cmp	DWORD PTR _z1$1$[esp+48], ebx
	je	$LN6@gost_do_ve
	cmp	DWORD PTR _z2$1$[esp+48], ebx
	je	$LN6@gost_do_ve
	cmp	DWORD PTR _tmp2$1$[esp+48], ebx
	je	$LN6@gost_do_ve
	cmp	DWORD PTR _tmp3$1$[esp+48], ebx
	je	$LN6@gost_do_ve
	test	ecx, ecx
	je	$LN6@gost_do_ve
; Line 196
	push	esi
	push	DWORD PTR [edi+16]
	push	ebp
	push	eax
	push	0
	call	_BN_div
; Line 197
	mov	eax, DWORD PTR _tmp$1$[esp+68]
	add	esp, 20					; 00000014H
	cmp	DWORD PTR [eax+4], ebx
	jne	SHORT $LN7@gost_do_ve
; Line 198
	push	1
	push	ebp
	call	_BN_set_word
	add	esp, 8
$LN7@gost_do_ve:
; Line 200
	push	DWORD PTR [edi+16]
	mov	ebx, DWORD PTR _q2$1$[esp+52]
	push	ebx
	call	_BN_copy
; Line 201
	push	2
	push	ebx
	call	_BN_sub_word
; Line 202
	push	esi
	push	DWORD PTR [edi+16]
	push	ebx
	mov	ebx, DWORD PTR _v$1$[esp+76]
	push	ebp
	push	ebx
	call	_BN_mod_exp
; Line 203
	push	esi
	push	DWORD PTR [edi+16]
	push	ebx
	mov	ebx, DWORD PTR _sig$[esp+92]
	push	DWORD PTR [ebx+4]
	push	DWORD PTR _z1$1$[esp+100]
	call	_BN_mod_mul
; Line 204
	push	DWORD PTR [ebx]
	push	DWORD PTR [edi+16]
	push	DWORD PTR _tmp$1$[esp+112]
	call	_BN_sub
	add	esp, 68					; 00000044H
; Line 205
	push	esi
	push	DWORD PTR [edi+12]
	push	DWORD PTR _v$1$[esp+56]
	push	DWORD PTR _tmp$1$[esp+60]
	push	DWORD PTR _z2$1$[esp+64]
	call	_BN_mod_mul
; Line 206
	push	esi
	push	DWORD PTR [edi+12]
	push	DWORD PTR _z1$1$[esp+76]
	push	DWORD PTR [edi+20]
	push	DWORD PTR _tmp$1$[esp+84]
	call	_BN_mod_exp
; Line 207
	push	esi
	push	DWORD PTR [edi+12]
	push	DWORD PTR _z2$1$[esp+96]
	push	DWORD PTR [edi+24]
	push	DWORD PTR _tmp2$1$[esp+104]
	call	_BN_mod_exp
; Line 208
	push	esi
	push	DWORD PTR [edi+12]
	push	DWORD PTR _tmp2$1$[esp+116]
	push	DWORD PTR _tmp$1$[esp+120]
	push	DWORD PTR _tmp3$1$[esp+124]
	call	_BN_mod_mul
	add	esp, 80					; 00000050H
; Line 209
	push	esi
	push	DWORD PTR [edi+16]
	mov	edi, DWORD PTR _u$1$[esp+56]
	push	DWORD PTR _tmp3$1$[esp+56]
	push	edi
	push	0
	call	_BN_div
; Line 210
	push	DWORD PTR [ebx]
	push	edi
	call	_BN_cmp
	add	esp, 28					; 0000001cH
	mov	ebx, eax
	neg	ebx
	sbb	ebx, ebx
	add	ebx, 1
; Line 212
	jne	SHORT $err$15
; Line 213
	push	213					; 000000d5H
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	126					; 0000007eH
	jmp	SHORT $LN13@gost_do_ve
$LN6@gost_do_ve:
; Line 192
	push	192					; 000000c0H
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	65					; 00000041H
$LN13@gost_do_ve:
	push	113					; 00000071H
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
$err$15:
; Line 216
	test	ebp, ebp
	je	SHORT $LN9@gost_do_ve
	push	ebp
	call	_BN_free
	add	esp, 4
	jmp	SHORT $LN9@gost_do_ve
$LN4@gost_do_ve:
; Line 178
	push	178					; 000000b2H
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	127					; 0000007fH
	push	113					; 00000071H
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
$LN9@gost_do_ve:
; Line 218
	push	esi
	call	_BN_CTX_end
; Line 219
	push	esi
	call	_BN_CTX_free
	add	esp, 8
; Line 221
	mov	eax, ebx
	pop	edi
	pop	ebp
	pop	esi
	pop	ebx
; Line 222
	add	esp, 32					; 00000020H
	ret	0
_gost_do_verify ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _gost_do_sign
_TEXT	SEGMENT
_md$1$ = -12						; size = 4
_k$1$ = -8						; size = 4
_tmp2$1$ = -4						; size = 4
_dgst$ = 8						; size = 4
_dlen$ = 12						; size = 4
_dsa$ = 16						; size = 4
_gost_do_sign PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 54
	mov	eax, 12					; 0000000cH
	call	__chkstk
	push	ebx
	push	ebp
	push	esi
; Line 57
	push	DWORD PTR _dgst$[esp+20]
	xor	esi, esi
	xor	ebp, ebp
	call	_hashsum2bn
	add	esp, 4
	mov	DWORD PTR _md$1$[esp+24], eax
; Line 59
	call	_BN_CTX_new
	mov	ebx, eax
; Line 60
	test	ebx, ebx
	jne	SHORT $LN8@gost_do_si
; Line 61
	push	61					; 0000003dH
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	65					; 00000041H
	push	112					; 00000070H
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
; Line 62
	jmp	$err$44
$LN8@gost_do_si:
; Line 64
	push	ebx
	call	_BN_CTX_start
	add	esp, 4
; Line 65
	call	_DSA_SIG_new
	mov	esi, eax
; Line 66
	test	esi, esi
	jne	SHORT $LN9@gost_do_si
; Line 67
	push	67					; 00000043H
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	118					; 00000076H
	push	112					; 00000070H
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
; Line 68
	jmp	$err$44
$LN9@gost_do_si:
	push	edi
; Line 70
	push	ebx
	call	_BN_CTX_get
; Line 71
	push	ebx
	mov	ebp, eax
	call	_BN_CTX_get
	mov	edi, eax
; Line 72
	push	ebx
	mov	DWORD PTR _k$1$[esp+40], edi
	call	_BN_CTX_get
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _tmp2$1$[esp+28], eax
; Line 73
	test	ebp, ebp
	je	$LN11@gost_do_si
	test	edi, edi
	je	$LN11@gost_do_si
	test	eax, eax
	je	$LN11@gost_do_si
; Line 77
	mov	edi, DWORD PTR _dsa$[esp+24]
	push	ebx
	push	DWORD PTR [edi+16]
	push	DWORD PTR _md$1$[esp+36]
	push	ebp
	push	0
	call	_BN_div
	add	esp, 20					; 00000014H
; Line 78
	cmp	DWORD PTR [ebp+4], 0
	jne	SHORT $LL7@gost_do_si
; Line 79
	push	1
	push	DWORD PTR _md$1$[esp+32]
	call	_BN_set_word
	add	esp, 8
	npad	11
$LL7@gost_do_si:
; Line 86
	push	DWORD PTR [edi+16]
	push	DWORD PTR _k$1$[esp+32]
	call	_BN_rand_range
; Line 88
	push	ebx
	push	DWORD PTR [edi+12]
	push	DWORD PTR _k$1$[esp+44]
	push	DWORD PTR [edi+20]
	push	ebp
	call	_BN_mod_exp
	add	esp, 28					; 0000001cH
; Line 89
	cmp	DWORD PTR [esi], 0
	jne	SHORT $LN14@gost_do_si
; Line 90
	call	_BN_new
	mov	DWORD PTR [esi], eax
; Line 91
	test	eax, eax
	je	SHORT $LN22@gost_do_si
$LN14@gost_do_si:
; Line 96
	push	ebx
	push	DWORD PTR [edi+16]
	push	ebp
	push	DWORD PTR [esi]
	push	0
	call	_BN_div
; Line 98
	mov	eax, DWORD PTR [esi]
	add	esp, 20					; 00000014H
	cmp	DWORD PTR [eax+4], 0
	je	SHORT $LL7@gost_do_si
; Line 100
	push	ebx
	push	DWORD PTR [edi+16]
	push	eax
	push	DWORD PTR [edi+28]
	push	ebp
	call	_BN_mod_mul
; Line 101
	push	ebx
	push	DWORD PTR [edi+16]
	push	DWORD PTR _md$1$[esp+56]
	push	DWORD PTR _k$1$[esp+60]
	push	DWORD PTR _tmp2$1$[esp+64]
	call	_BN_mod_mul
	add	esp, 40					; 00000028H
; Line 102
	cmp	DWORD PTR [esi+4], 0
	jne	SHORT $LN16@gost_do_si
; Line 103
	call	_BN_new
	mov	DWORD PTR [esi+4], eax
; Line 104
	test	eax, eax
	je	SHORT $LN25@gost_do_si
$LN16@gost_do_si:
; Line 109
	push	ebx
	push	DWORD PTR [edi+16]
	push	DWORD PTR _tmp2$1$[esp+36]
	push	ebp
	push	DWORD PTR [esi+4]
	call	_BN_mod_add
; Line 111
	mov	eax, DWORD PTR [esi+4]
	add	esp, 20					; 00000014H
	cmp	DWORD PTR [eax+4], 0
	je	$LL7@gost_do_si
; Line 113
	mov	ebp, esi
	jmp	SHORT $LN41@gost_do_si
$LN22@gost_do_si:
; Line 92
	push	92					; 0000005cH
; Line 93
	jmp	SHORT $LN42@gost_do_si
$LN25@gost_do_si:
; Line 105
	push	105					; 00000069H
; Line 106
	jmp	SHORT $LN42@gost_do_si
$LN11@gost_do_si:
; Line 74
	push	74					; 0000004aH
$LN42@gost_do_si:
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	65					; 00000041H
	push	112					; 00000070H
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
	xor	ebp, ebp
$LN41@gost_do_si:
	pop	edi
$err$44:
; Line 115
	push	DWORD PTR _md$1$[esp+24]
	call	_BN_free
	add	esp, 4
; Line 116
	test	ebx, ebx
	je	SHORT $LN17@gost_do_si
; Line 117
	push	ebx
	call	_BN_CTX_end
; Line 118
	push	ebx
	call	_BN_CTX_free
	add	esp, 8
$LN17@gost_do_si:
; Line 120
	test	ebp, ebp
	jne	SHORT $LN36@gost_do_si
	test	esi, esi
	je	SHORT $LN36@gost_do_si
; Line 121
	push	esi
	call	_DSA_SIG_free
	add	esp, 4
$LN36@gost_do_si:
; Line 123
	pop	esi
	mov	eax, ebp
	pop	ebp
	pop	ebx
; Line 124
	add	esp, 12					; 0000000cH
	ret	0
_gost_do_sign ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _gost_sign_keygen
_TEXT	SEGMENT
_dsa$ = 8						; size = 4
_gost_sign_keygen PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 293
	push	esi
; Line 294
	call	_BN_new
	mov	esi, DWORD PTR _dsa$[esp]
	mov	DWORD PTR [esi+28], eax
; Line 295
	test	eax, eax
	jne	SHORT $LN2@gost_sign_
; Line 296
	push	296					; 00000128H
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	65					; 00000041H
	push	142					; 0000008eH
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
; Line 297
	xor	eax, eax
	pop	esi
; Line 301
	ret	0
$LN2@gost_sign_:
; Line 299
	push	DWORD PTR [esi+16]
	push	eax
	call	_BN_rand_range
; Line 300
	push	esi
	call	_gost94_compute_public
	add	esp, 12					; 0000000cH
	pop	esi
; Line 301
	ret	0
_gost_sign_keygen ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _fill_GOST94_params
_TEXT	SEGMENT
_dsa$ = 8						; size = 4
_nid$ = 12						; size = 4
_fill_GOST94_params PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\engines\ccgost\gost_sign.c
; Line 262
	mov	eax, DWORD PTR _R3410_paramset
	push	esi
	mov	esi, OFFSET _R3410_paramset
	test	eax, eax
	je	SHORT $LN3@fill_GOST9
	mov	ecx, DWORD PTR _nid$[esp]
$LL2@fill_GOST9:
	cmp	eax, ecx
	je	SHORT $LN3@fill_GOST9
	mov	eax, DWORD PTR [esi+16]
; Line 263
	add	esi, 16					; 00000010H
	test	eax, eax
	jne	SHORT $LL2@fill_GOST9
; Line 264
	jmp	SHORT $LN13@fill_GOST9
$LN3@fill_GOST9:
	cmp	DWORD PTR [esi], 0
	jne	SHORT $LN4@fill_GOST9
$LN13@fill_GOST9:
; Line 265
	push	265					; 00000109H
	push	OFFSET ??_C@_0BN@CDKEEHFM@?4?2engines?2ccgost?2gost_sign?4c?$AA@
	push	130					; 00000082H
	push	102					; 00000066H
	call	_ERR_GOST_error
	add	esp, 16					; 00000010H
; Line 266
	xor	eax, eax
	pop	esi
; Line 285
	ret	0
$LN4@fill_GOST9:
	push	ebx
; Line 269
	mov	ebx, DWORD PTR _dsa$[esp+4]
	mov	eax, DWORD PTR [ebx+12]
	push	edi
	lea	edi, DWORD PTR [ebx+12]
	test	eax, eax
	je	SHORT $LN5@fill_GOST9
; Line 270
	push	eax
	call	_BN_free
	add	esp, 4
$LN5@fill_GOST9:
; Line 272
	mov	DWORD PTR [edi], 0
; Line 273
	push	DWORD PTR [esi+8]
	push	edi
	call	_BN_dec2bn
; Line 274
	mov	eax, DWORD PTR [ebx+16]
	lea	edi, DWORD PTR [ebx+16]
	add	esp, 8
	test	eax, eax
	je	SHORT $LN6@fill_GOST9
; Line 275
	push	eax
	call	_BN_free
	add	esp, 4
$LN6@fill_GOST9:
; Line 277
	mov	DWORD PTR [edi], 0
; Line 278
	push	DWORD PTR [esi+12]
	push	edi
	call	_BN_dec2bn
; Line 279
	mov	eax, DWORD PTR [ebx+20]
	lea	edi, DWORD PTR [ebx+20]
	add	esp, 8
	test	eax, eax
	je	SHORT $LN7@fill_GOST9
; Line 280
	push	eax
	call	_BN_free
	add	esp, 4
$LN7@fill_GOST9:
; Line 282
	mov	DWORD PTR [edi], 0
; Line 283
	push	DWORD PTR [esi+4]
	push	edi
	call	_BN_dec2bn
	add	esp, 8
; Line 284
	mov	eax, 1
	pop	edi
	pop	ebx
	pop	esi
; Line 285
	ret	0
_fill_GOST94_params ENDP
_TEXT	ENDS
END
