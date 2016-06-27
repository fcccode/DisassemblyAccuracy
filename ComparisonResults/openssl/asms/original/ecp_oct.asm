; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_oct.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_ec_GFp_simple_set_compressed_coordinates
PUBLIC	_ec_GFp_simple_point2oct
PUBLIC	_ec_GFp_simple_oct2point
PUBLIC	??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@ ; `string'
EXTRN	_ERR_put_error:PROC
EXTRN	_ERR_peek_last_error:PROC
EXTRN	_ERR_clear_error:PROC
EXTRN	_BN_CTX_new:PROC
EXTRN	_BN_CTX_free:PROC
EXTRN	_BN_CTX_start:PROC
EXTRN	_BN_CTX_get:PROC
EXTRN	_BN_CTX_end:PROC
EXTRN	_BN_num_bits:PROC
EXTRN	_BN_bin2bn:PROC
EXTRN	_BN_bn2bin:PROC
EXTRN	_BN_usub:PROC
EXTRN	_BN_nnmod:PROC
EXTRN	_BN_mod_add_quick:PROC
EXTRN	_BN_mod_sub_quick:PROC
EXTRN	_BN_mod_mul:PROC
EXTRN	_BN_mod_sqr:PROC
EXTRN	_BN_mod_lshift1_quick:PROC
EXTRN	_BN_ucmp:PROC
EXTRN	_BN_kronecker:PROC
EXTRN	_BN_mod_sqrt:PROC
EXTRN	_EC_POINT_set_to_infinity:PROC
EXTRN	_EC_POINT_set_affine_coordinates_GFp:PROC
EXTRN	_EC_POINT_get_affine_coordinates_GFp:PROC
EXTRN	_EC_POINT_set_compressed_coordinates_GFp:PROC
EXTRN	_EC_POINT_is_at_infinity:PROC
EXTRN	_EC_POINT_is_on_curve:PROC
EXTRN	__chkstk:PROC
;	COMDAT ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
CONST	SEGMENT
??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@ DB '.\crypto\ec\ecp_oc'
	DB	't.c', 00H					; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_simple_oct2point
_TEXT	SEGMENT
_field_len$1$ = -12					; size = 4
tv314 = -8						; size = 4
_y_bit$1$ = -4						; size = 4
_group$ = 8						; size = 4
_point$ = 12						; size = 4
_buf$ = 16						; size = 4
_x$1$ = 20						; size = 4
_len$ = 20						; size = 4
_ctx$ = 24						; size = 4
_ec_GFp_simple_oct2point PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_oct.c
; Line 329
	mov	eax, 12					; 0000000cH
	call	__chkstk
	push	ebp
	push	edi
; Line 337
	mov	edi, DWORD PTR _len$[esp+16]
	xor	ebp, ebp
	test	edi, edi
	jne	SHORT $LN2@ec_GFp_sim
; Line 338
	push	338					; 00000152H
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	100					; 00000064H
	push	103					; 00000067H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 339
	xor	eax, eax
	pop	edi
	pop	ebp
; Line 428
	add	esp, 12					; 0000000cH
	ret	0
$LN2@ec_GFp_sim:
; Line 341
	mov	ecx, DWORD PTR _buf$[esp+16]
	push	esi
	movzx	esi, BYTE PTR [ecx]
; Line 342
	mov	eax, esi
	and	eax, 1
	mov	DWORD PTR _y_bit$1$[esp+24], eax
; Line 343
	and	esi, -2					; fffffffeH
; Line 346
	je	SHORT $LN5@ec_GFp_sim
	cmp	esi, 2
	je	SHORT $LN3@ec_GFp_sim
	cmp	esi, 4
	je	SHORT $LN5@ec_GFp_sim
	cmp	esi, 6
	je	SHORT $LN3@ec_GFp_sim
; Line 347
	push	347					; 0000015bH
; Line 348
	jmp	SHORT $LN39@ec_GFp_sim
$LN3@ec_GFp_sim:
; Line 350
	cmp	esi, 4
	jne	SHORT $LN4@ec_GFp_sim
$LN5@ec_GFp_sim:
	test	eax, eax
	je	SHORT $LN4@ec_GFp_sim
; Line 351
	push	351					; 0000015fH
; Line 352
	jmp	SHORT $LN39@ec_GFp_sim
$LN4@ec_GFp_sim:
; Line 355
	test	esi, esi
	jne	SHORT $LN6@ec_GFp_sim
; Line 356
	cmp	edi, 1
	je	SHORT $LN7@ec_GFp_sim
; Line 357
	push	357					; 00000165H
; Line 358
	jmp	SHORT $LN39@ec_GFp_sim
$LN7@ec_GFp_sim:
; Line 361
	push	DWORD PTR _point$[esp+20]
	push	DWORD PTR _group$[esp+24]
	call	_EC_POINT_set_to_infinity
	add	esp, 8
	pop	esi
	pop	edi
	pop	ebp
; Line 428
	add	esp, 12					; 0000000cH
	ret	0
$LN6@ec_GFp_sim:
; Line 364
	mov	eax, DWORD PTR _group$[esp+20]
	add	eax, 72					; 00000048H
	push	eax
	mov	DWORD PTR tv314[esp+28], eax
	call	_BN_num_bits
	add	eax, 7
	add	esp, 4
	cdq
	and	edx, 7
	add	eax, edx
	sar	eax, 3
	mov	DWORD PTR _field_len$1$[esp+24], eax
; Line 365
	cmp	esi, 2
	jne	SHORT $LN25@ec_GFp_sim
	inc	eax
	jmp	SHORT $LN26@ec_GFp_sim
$LN25@ec_GFp_sim:
	lea	eax, DWORD PTR [eax*2+1]
$LN26@ec_GFp_sim:
; Line 369
	cmp	edi, eax
	je	SHORT $LN8@ec_GFp_sim
; Line 370
	push	370					; 00000172H
$LN39@ec_GFp_sim:
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	102					; 00000066H
	push	103					; 00000067H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
$LN38@ec_GFp_sim:
; Line 371
	pop	esi
	pop	edi
	xor	eax, eax
	pop	ebp
; Line 428
	add	esp, 12					; 0000000cH
	ret	0
$LN8@ec_GFp_sim:
; Line 374
	mov	edi, DWORD PTR _ctx$[esp+20]
	test	edi, edi
	jne	SHORT $LN10@ec_GFp_sim
; Line 375
	call	_BN_CTX_new
	mov	ebp, eax
	mov	edi, ebp
; Line 376
	test	ebp, ebp
	je	SHORT $LN38@ec_GFp_sim
$LN10@ec_GFp_sim:
	push	ebx
; Line 380
	push	edi
	call	_BN_CTX_start
; Line 381
	push	edi
	call	_BN_CTX_get
; Line 382
	push	edi
	mov	DWORD PTR _x$1$[esp+36], eax
	call	_BN_CTX_get
	mov	ebx, eax
	add	esp, 12					; 0000000cH
; Line 383
	test	ebx, ebx
	je	SHORT $LN33@ec_GFp_sim
; Line 386
	push	DWORD PTR _x$1$[esp+24]
	mov	ecx, DWORD PTR _buf$[esp+28]
	push	DWORD PTR _field_len$1$[esp+32]
	inc	ecx
	push	ecx
	call	_BN_bin2bn
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $LN33@ec_GFp_sim
; Line 388
	push	DWORD PTR tv314[esp+28]
	push	DWORD PTR _x$1$[esp+28]
	call	_BN_ucmp
	add	esp, 8
	test	eax, eax
	js	SHORT $LN13@ec_GFp_sim
; Line 389
	push	389					; 00000185H
$LN36@ec_GFp_sim:
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	102					; 00000066H
$LN37@ec_GFp_sim:
	push	103					; 00000067H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
$LN33@ec_GFp_sim:
	xor	ebx, ebx
$err$43:
; Line 424
	push	edi
	call	_BN_CTX_end
	add	esp, 4
; Line 425
	test	ebp, ebp
	je	SHORT $LN23@ec_GFp_sim
; Line 426
	push	ebp
	call	_BN_CTX_free
	add	esp, 4
$LN23@ec_GFp_sim:
; Line 427
	mov	eax, ebx
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
; Line 428
	add	esp, 12					; 0000000cH
	ret	0
$LN13@ec_GFp_sim:
; Line 393
	cmp	esi, 2
	jne	SHORT $LN14@ec_GFp_sim
; Line 394
	mov	esi, DWORD PTR _point$[esp+24]
	push	edi
	push	DWORD PTR _y_bit$1$[esp+32]
	push	DWORD PTR _x$1$[esp+32]
	push	esi
	push	DWORD PTR _group$[esp+40]
	call	_EC_POINT_set_compressed_coordinates_GFp
; Line 397
	jmp	SHORT $LN41@ec_GFp_sim
$LN14@ec_GFp_sim:
; Line 398
	mov	ecx, DWORD PTR _buf$[esp+24]
	mov	eax, DWORD PTR _field_len$1$[esp+28]
	inc	ecx
	push	ebx
	push	eax
	add	eax, ecx
	push	eax
	call	_BN_bin2bn
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $LN33@ec_GFp_sim
; Line 400
	push	DWORD PTR tv314[esp+28]
	push	ebx
	call	_BN_ucmp
	add	esp, 8
	test	eax, eax
	js	SHORT $LN18@ec_GFp_sim
; Line 401
	push	401					; 00000191H
; Line 402
	jmp	$LN36@ec_GFp_sim
$LN18@ec_GFp_sim:
; Line 404
	cmp	esi, 6
	jne	SHORT $LN20@ec_GFp_sim
; Line 405
	cmp	DWORD PTR [ebx+4], 0
	jle	SHORT $LN27@ec_GFp_sim
	mov	eax, DWORD PTR [ebx]
	test	BYTE PTR [eax], 1
	je	SHORT $LN27@ec_GFp_sim
	lea	eax, DWORD PTR [esi-5]
	jmp	SHORT $LN28@ec_GFp_sim
$LN27@ec_GFp_sim:
	xor	eax, eax
$LN28@ec_GFp_sim:
	cmp	DWORD PTR _y_bit$1$[esp+28], eax
	je	SHORT $LN20@ec_GFp_sim
; Line 406
	push	406					; 00000196H
; Line 407
	jmp	$LN36@ec_GFp_sim
$LN20@ec_GFp_sim:
; Line 411
	mov	esi, DWORD PTR _point$[esp+24]
	push	edi
	push	ebx
	push	DWORD PTR _x$1$[esp+32]
	push	esi
	push	DWORD PTR _group$[esp+40]
	call	_EC_POINT_set_affine_coordinates_GFp
$LN41@ec_GFp_sim:
	add	esp, 20					; 00000014H
	test	eax, eax
	je	$LN33@ec_GFp_sim
; Line 416
	push	edi
	push	esi
	push	DWORD PTR _group$[esp+32]
	call	_EC_POINT_is_on_curve
	add	esp, 12					; 0000000cH
	test	eax, eax
	jg	SHORT $LN22@ec_GFp_sim
; Line 417
	push	417					; 000001a1H
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	107					; 0000006bH
; Line 418
	jmp	$LN37@ec_GFp_sim
$LN22@ec_GFp_sim:
; Line 421
	mov	ebx, 1
	jmp	$err$43
_ec_GFp_simple_oct2point ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_simple_point2oct
_TEXT	SEGMENT
_x$1$ = -16						; size = 4
_y$1$ = -12						; size = 4
_ret$1$ = -8						; size = 4
_skip$1$ = -4						; size = 4
_group$ = 8						; size = 4
_point$ = 12						; size = 4
_skip$2$ = 16						; size = 4
_field_len$1$ = 16					; size = 4
_form$ = 16						; size = 4
_buf$ = 20						; size = 4
_len$ = 24						; size = 4
_ctx$ = 28						; size = 4
_ec_GFp_simple_point2oct PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_oct.c
; Line 213
	mov	eax, 16					; 00000010H
	call	__chkstk
	push	ebx
; Line 222
	mov	ebx, DWORD PTR _form$[esp+16]
	push	ebp
	push	esi
	xor	ebp, ebp
	push	edi
	cmp	ebx, 2
	je	SHORT $LN6@ec_GFp_sim
	cmp	ebx, 4
	je	SHORT $LN6@ec_GFp_sim
	cmp	ebx, 6
	je	SHORT $LN6@ec_GFp_sim
; Line 223
	push	223					; 000000dfH
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	104					; 00000068H
	push	104					; 00000068H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 324
	xor	eax, eax
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 325
	add	esp, 16					; 00000010H
	ret	0
$LN6@ec_GFp_sim:
; Line 227
	push	DWORD PTR _point$[esp+28]
	mov	esi, DWORD PTR _group$[esp+32]
	push	esi
	call	_EC_POINT_is_at_infinity
	add	esp, 8
	test	eax, eax
	je	SHORT $LN7@ec_GFp_sim
; Line 229
	mov	eax, DWORD PTR _buf$[esp+28]
	test	eax, eax
	je	SHORT $LN8@ec_GFp_sim
; Line 230
	cmp	DWORD PTR _len$[esp+28], 1
	jae	SHORT $LN9@ec_GFp_sim
; Line 231
	push	231					; 000000e7H
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	100					; 00000064H
	push	104					; 00000068H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
$LN44@ec_GFp_sim:
; Line 232
	pop	edi
	pop	esi
	pop	ebp
	xor	eax, eax
	pop	ebx
; Line 325
	add	esp, 16					; 00000010H
	ret	0
$LN9@ec_GFp_sim:
; Line 234
	mov	BYTE PTR [eax], 0
$LN8@ec_GFp_sim:
	pop	edi
	pop	esi
	pop	ebp
; Line 236
	mov	eax, 1
	pop	ebx
; Line 325
	add	esp, 16					; 00000010H
	ret	0
$LN7@ec_GFp_sim:
; Line 240
	lea	eax, DWORD PTR [esi+72]
	push	eax
	call	_BN_num_bits
	add	eax, 7
	add	esp, 4
	cdq
	and	edx, 7
	add	eax, edx
	sar	eax, 3
	mov	DWORD PTR _field_len$1$[esp+28], eax
; Line 241
	lea	edi, DWORD PTR [eax+1]
	cmp	ebx, 2
	je	SHORT $LN42@ec_GFp_sim
	lea	edi, DWORD PTR [eax*2+1]
$LN42@ec_GFp_sim:
; Line 246
	mov	esi, DWORD PTR _buf$[esp+28]
	mov	DWORD PTR _ret$1$[esp+32], edi
	test	esi, esi
	je	$LN26@ec_GFp_sim
; Line 247
	cmp	DWORD PTR _len$[esp+28], edi
	jae	SHORT $LN11@ec_GFp_sim
; Line 248
	push	248					; 000000f8H
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	100					; 00000064H
	push	104					; 00000068H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 324
	xor	eax, eax
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 325
	add	esp, 16					; 00000010H
	ret	0
$LN11@ec_GFp_sim:
; Line 252
	mov	edi, DWORD PTR _ctx$[esp+28]
	test	edi, edi
	jne	SHORT $LN13@ec_GFp_sim
; Line 253
	call	_BN_CTX_new
	mov	ebp, eax
	mov	edi, ebp
	mov	DWORD PTR _ctx$[esp+28], edi
; Line 254
	test	ebp, ebp
	je	$LN44@ec_GFp_sim
$LN13@ec_GFp_sim:
; Line 258
	push	edi
	call	_BN_CTX_start
; Line 260
	push	edi
	call	_BN_CTX_get
; Line 261
	push	edi
	mov	DWORD PTR _x$1$[esp+44], eax
	call	_BN_CTX_get
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _y$1$[esp+32], eax
; Line 262
	test	eax, eax
	je	$LN40@ec_GFp_sim
; Line 265
	push	edi
	mov	edi, DWORD PTR _x$1$[esp+36]
	push	eax
	push	edi
	push	DWORD PTR _point$[esp+40]
	push	DWORD PTR _group$[esp+44]
	call	_EC_POINT_get_affine_coordinates_GFp
	add	esp, 20					; 00000014H
	test	eax, eax
	je	SHORT $LN40@ec_GFp_sim
; Line 269
	cmp	ebx, 2
	je	SHORT $LN18@ec_GFp_sim
	cmp	ebx, 6
	jne	SHORT $LN16@ec_GFp_sim
$LN18@ec_GFp_sim:
	mov	eax, DWORD PTR _y$1$[esp+32]
	cmp	DWORD PTR [eax+4], 0
	jle	SHORT $LN16@ec_GFp_sim
	mov	eax, DWORD PTR [eax]
	test	BYTE PTR [eax], 1
	je	SHORT $LN16@ec_GFp_sim
; Line 270
	lea	eax, DWORD PTR [ebx+1]
	mov	BYTE PTR [esi], al
	jmp	SHORT $LN17@ec_GFp_sim
$LN16@ec_GFp_sim:
; Line 272
	mov	BYTE PTR [esi], bl
$LN17@ec_GFp_sim:
; Line 276
	push	edi
	mov	esi, 1
	call	_BN_num_bits
	mov	edi, DWORD PTR _field_len$1$[esp+32]
	add	eax, 7
	cdq
	mov	ecx, edi
	and	edx, 7
	add	esp, 4
	add	eax, edx
	sar	eax, 3
	sub	ecx, eax
	mov	DWORD PTR _skip$1$[esp+32], ecx
; Line 277
	cmp	ecx, edi
	jbe	SHORT $LN32@ec_GFp_sim
; Line 278
	push	278					; 00000116H
$LN43@ec_GFp_sim:
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	68					; 00000044H
	push	104					; 00000068H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
$LN40@ec_GFp_sim:
; Line 321
	push	DWORD PTR _ctx$[esp+28]
	call	_BN_CTX_end
	add	esp, 4
; Line 322
	test	ebp, ebp
	je	SHORT $LN28@ec_GFp_sim
; Line 323
	push	ebp
	call	_BN_CTX_free
	add	esp, 4
$LN28@ec_GFp_sim:
; Line 324
	pop	edi
	pop	esi
	pop	ebp
	xor	eax, eax
	pop	ebx
; Line 325
	add	esp, 16					; 00000010H
	ret	0
$LN32@ec_GFp_sim:
; Line 281
	test	ecx, ecx
	je	SHORT $LN2@ec_GFp_sim
	mov	edi, DWORD PTR _buf$[esp+28]
	mov	edx, ecx
	shr	ecx, 2
	inc	edi
	mov	esi, DWORD PTR _skip$1$[esp+32]
	xor	eax, eax
	rep stosd
	mov	ecx, edx
	and	ecx, 3
	inc	esi
	rep stosb
	mov	edi, DWORD PTR _field_len$1$[esp+28]
$LN2@ec_GFp_sim:
; Line 285
	mov	eax, DWORD PTR _buf$[esp+28]
	add	eax, esi
	push	eax
	push	DWORD PTR _x$1$[esp+36]
	call	_BN_bn2bin
; Line 286
	add	esi, eax
	add	esp, 8
; Line 287
	lea	eax, DWORD PTR [edi+1]
	cmp	esi, eax
	je	SHORT $LN20@ec_GFp_sim
; Line 288
	push	288					; 00000120H
; Line 289
	jmp	SHORT $LN43@ec_GFp_sim
$LN20@ec_GFp_sim:
; Line 293
	cmp	ebx, 4
	je	SHORT $LN22@ec_GFp_sim
	cmp	ebx, 6
	jne	SHORT $LN21@ec_GFp_sim
$LN22@ec_GFp_sim:
; Line 294
	mov	ebx, DWORD PTR _y$1$[esp+32]
	push	ebx
	call	_BN_num_bits
	add	eax, 7
	mov	ecx, edi
	cdq
	add	esp, 4
	and	edx, 7
	add	eax, edx
	sar	eax, 3
	sub	ecx, eax
	mov	DWORD PTR _skip$2$[esp+28], ecx
; Line 295
	cmp	ecx, edi
	jbe	SHORT $LN33@ec_GFp_sim
; Line 296
	push	296					; 00000128H
; Line 297
	jmp	$LN43@ec_GFp_sim
$LN33@ec_GFp_sim:
; Line 299
	test	ecx, ecx
	je	SHORT $LN4@ec_GFp_sim
	mov	edi, DWORD PTR _buf$[esp+28]
	mov	edx, ecx
	shr	ecx, 2
	add	edi, esi
	xor	eax, eax
	rep stosd
	mov	ecx, edx
	and	ecx, 3
	add	esi, DWORD PTR _skip$2$[esp+28]
	rep stosb
$LN4@ec_GFp_sim:
; Line 303
	mov	eax, DWORD PTR _buf$[esp+28]
	add	eax, esi
	push	eax
	push	ebx
	call	_BN_bn2bin
	add	esp, 8
; Line 304
	add	esi, eax
$LN21@ec_GFp_sim:
; Line 307
	mov	edi, DWORD PTR _ret$1$[esp+32]
	cmp	esi, edi
	je	SHORT $LN41@ec_GFp_sim
; Line 308
	push	308					; 00000134H
	jmp	$LN43@ec_GFp_sim
$LN41@ec_GFp_sim:
; Line 314
	push	DWORD PTR _ctx$[esp+28]
	call	_BN_CTX_end
	add	esp, 4
; Line 315
	test	ebp, ebp
	je	SHORT $LN26@ec_GFp_sim
; Line 316
	push	ebp
	call	_BN_CTX_free
	add	esp, 4
$LN26@ec_GFp_sim:
; Line 317
	mov	eax, edi
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 325
	add	esp, 16					; 00000010H
	ret	0
_ec_GFp_simple_point2oct ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_simple_set_compressed_coordinates
_TEXT	SEGMENT
_tmp1$1$ = -16						; size = 4
_y_bit$1$ = -12						; size = 4
_new_ctx$1$ = -8					; size = 4
_y$1$ = -4						; size = 4
_group$ = 8						; size = 4
_point$ = 12						; size = 4
_x_$ = 16						; size = 4
_y_bit$ = 20						; size = 4
_x$1$ = 24						; size = 4
_ctx$ = 24						; size = 4
_ec_GFp_simple_set_compressed_coordinates PROC		; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_oct.c
; Line 75
	mov	eax, 16					; 00000010H
	call	__chkstk
	push	ebx
	push	ebp
	push	esi
; Line 76
	mov	DWORD PTR _new_ctx$1$[esp+28], 0
; Line 78
	xor	ebp, ebp
; Line 81
	call	_ERR_clear_error
; Line 83
	mov	esi, DWORD PTR _ctx$[esp+24]
	test	esi, esi
	jne	SHORT $LN3@ec_GFp_sim
; Line 84
	call	_BN_CTX_new
	mov	ebx, eax
	mov	DWORD PTR _new_ctx$1$[esp+28], ebx
	mov	esi, ebx
; Line 85
	test	ebx, ebx
	jne	SHORT $LN3@ec_GFp_sim
	pop	esi
	pop	ebp
	pop	ebx
; Line 208
	add	esp, 16					; 00000010H
	ret	0
$LN3@ec_GFp_sim:
; Line 89
	xor	eax, eax
	cmp	DWORD PTR _y_bit$[esp+24], eax
	push	edi
	setne	al
; Line 91
	push	esi
	mov	DWORD PTR _y_bit$1$[esp+36], eax
	call	_BN_CTX_start
; Line 92
	push	esi
	call	_BN_CTX_get
; Line 93
	push	esi
	mov	DWORD PTR _tmp1$1$[esp+44], eax
	call	_BN_CTX_get
; Line 94
	push	esi
	mov	edi, eax
	call	_BN_CTX_get
; Line 95
	push	esi
	mov	DWORD PTR _x$1$[esp+48], eax
	call	_BN_CTX_get
	add	esp, 20					; 00000014H
	mov	DWORD PTR _y$1$[esp+32], eax
; Line 96
	test	eax, eax
	je	$err$74
; Line 106
	mov	ebp, DWORD PTR _group$[esp+28]
	push	esi
	lea	ebx, DWORD PTR [ebp+72]
	push	ebx
	push	DWORD PTR _x_$[esp+36]
	push	DWORD PTR _x$1$[esp+40]
	call	_BN_nnmod
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN61@ec_GFp_sim
; Line 108
	mov	eax, DWORD PTR [ebp]
; Line 110
	push	esi
	cmp	DWORD PTR [eax+148], 0
	jne	SHORT $LN6@ec_GFp_sim
	push	DWORD PTR _x_$[esp+32]
	mov	eax, DWORD PTR [eax+136]
	push	edi
	push	ebp
	call	eax
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN61@ec_GFp_sim
; Line 112
	mov	eax, DWORD PTR [ebp]
	push	esi
	push	DWORD PTR _x_$[esp+32]
	mov	eax, DWORD PTR [eax+132]
	push	edi
	push	DWORD PTR _tmp1$1$[esp+44]
	push	ebp
	call	eax
; Line 114
	jmp	SHORT $LN66@ec_GFp_sim
$LN6@ec_GFp_sim:
; Line 115
	push	ebx
	push	DWORD PTR _x_$[esp+36]
	push	edi
	call	_BN_mod_sqr
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN61@ec_GFp_sim
; Line 117
	push	esi
	push	ebx
	push	DWORD PTR _x_$[esp+36]
	push	edi
	push	DWORD PTR _tmp1$1$[esp+48]
	call	_BN_mod_mul
$LN66@ec_GFp_sim:
	add	esp, 20					; 00000014H
	test	eax, eax
	je	$LN61@ec_GFp_sim
; Line 122
	cmp	DWORD PTR [ebp+156], 0
	je	SHORT $LN12@ec_GFp_sim
; Line 123
	push	ebx
	push	DWORD PTR _x$1$[esp+32]
	push	edi
	call	_BN_mod_lshift1_quick
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$LN61@ec_GFp_sim
; Line 125
	push	ebx
	push	DWORD PTR _x$1$[esp+32]
	push	edi
	push	edi
	call	_BN_mod_add_quick
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN61@ec_GFp_sim
; Line 127
	mov	eax, DWORD PTR _tmp1$1$[esp+32]
	push	ebx
	push	edi
	push	eax
	push	eax
	call	_BN_mod_sub_quick
; Line 129
	jmp	SHORT $LN68@ec_GFp_sim
$LN12@ec_GFp_sim:
; Line 130
	mov	edx, DWORD PTR [ebp]
; Line 131
	lea	eax, DWORD PTR [ebp+116]
	push	esi
	mov	ecx, DWORD PTR [edx+148]
	test	ecx, ecx
	je	SHORT $LN17@ec_GFp_sim
	push	eax
	push	edi
	push	ebp
	call	ecx
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN61@ec_GFp_sim
; Line 133
	push	esi
	push	ebx
	push	DWORD PTR _x$1$[esp+36]
	push	edi
	push	edi
	call	_BN_mod_mul
; Line 135
	jmp	SHORT $LN70@ec_GFp_sim
$LN17@ec_GFp_sim:
; Line 137
	push	DWORD PTR _x$1$[esp+32]
	push	eax
	mov	eax, DWORD PTR [edx+132]
	push	edi
	push	ebp
	call	eax
$LN70@ec_GFp_sim:
	add	esp, 20					; 00000014H
	test	eax, eax
	je	$LN61@ec_GFp_sim
; Line 141
	mov	eax, DWORD PTR _tmp1$1$[esp+32]
	push	ebx
	push	edi
	push	eax
	push	eax
	call	_BN_mod_add_quick
$LN68@ec_GFp_sim:
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN61@ec_GFp_sim
; Line 146
	mov	eax, DWORD PTR [ebp]
	mov	ecx, DWORD PTR [eax+148]
; Line 147
	lea	eax, DWORD PTR [ebp+136]
	test	ecx, ecx
	je	SHORT $LN23@ec_GFp_sim
	push	esi
	push	eax
	push	edi
	push	ebp
	call	ecx
	add	esp, 16					; 00000010H
	test	eax, eax
	je	SHORT $LN61@ec_GFp_sim
; Line 149
	push	ebx
	push	edi
; Line 151
	jmp	SHORT $LN72@ec_GFp_sim
$LN23@ec_GFp_sim:
; Line 152
	push	ebx
	push	eax
$LN72@ec_GFp_sim:
	mov	edi, DWORD PTR _tmp1$1$[esp+40]
	push	edi
	push	edi
	call	_BN_mod_add_quick
	add	esp, 16					; 00000010H
	test	eax, eax
	je	SHORT $LN61@ec_GFp_sim
; Line 156
	push	esi
	push	ebx
	push	edi
	mov	edi, DWORD PTR _y$1$[esp+44]
	push	edi
	call	_BN_mod_sqrt
	add	esp, 16					; 00000010H
	test	eax, eax
	jne	SHORT $LN28@ec_GFp_sim
; Line 157
	call	_ERR_peek_last_error
; Line 160
	mov	ecx, eax
	and	ecx, -16777216				; ff000000H
	cmp	ecx, 50331648				; 03000000H
	jne	SHORT $LN29@ec_GFp_sim
	and	eax, 4095				; 00000fffH
	cmp	eax, 111				; 0000006fH
	jne	SHORT $LN29@ec_GFp_sim
; Line 161
	call	_ERR_clear_error
; Line 162
	push	163					; 000000a3H
$LN63@ec_GFp_sim:
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	110					; 0000006eH
$LN64@ec_GFp_sim:
; Line 165
	push	169					; 000000a9H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
$LN61@ec_GFp_sim:
	xor	ebp, ebp
$err$74:
; Line 204
	push	esi
	call	_BN_CTX_end
; Line 205
	mov	eax, DWORD PTR _new_ctx$1$[esp+36]
	add	esp, 4
	pop	edi
	test	eax, eax
	je	SHORT $LN39@ec_GFp_sim
; Line 206
	push	eax
	call	_BN_CTX_free
	add	esp, 4
$LN39@ec_GFp_sim:
; Line 207
	pop	esi
	mov	eax, ebp
	pop	ebp
	pop	ebx
; Line 208
	add	esp, 16					; 00000010H
	ret	0
$LN29@ec_GFp_sim:
; Line 165
	push	166					; 000000a6H
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	3
; Line 167
	jmp	SHORT $LN64@ec_GFp_sim
$LN28@ec_GFp_sim:
; Line 170
	mov	ecx, DWORD PTR [edi+4]
	test	ecx, ecx
	jle	SHORT $LN41@ec_GFp_sim
	mov	eax, DWORD PTR [edi]
	test	BYTE PTR [eax], 1
	je	SHORT $LN41@ec_GFp_sim
	mov	eax, 1
	jmp	SHORT $LN42@ec_GFp_sim
$LN41@ec_GFp_sim:
	xor	eax, eax
$LN42@ec_GFp_sim:
	mov	edx, DWORD PTR _y_bit$1$[esp+32]
	cmp	edx, eax
	je	SHORT $LN36@ec_GFp_sim
; Line 171
	test	ecx, ecx
	jne	SHORT $LN32@ec_GFp_sim
; Line 174
	push	esi
	push	ebx
	push	DWORD PTR _x$1$[esp+36]
	call	_BN_kronecker
	add	esp, 12					; 0000000cH
; Line 175
	cmp	eax, -2					; fffffffeH
	je	SHORT $LN61@ec_GFp_sim
; Line 178
	cmp	eax, 1
	jne	SHORT $LN34@ec_GFp_sim
; Line 179
	push	180					; 000000b4H
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	109					; 0000006dH
	jmp	$LN64@ec_GFp_sim
$LN34@ec_GFp_sim:
; Line 185
	push	186					; 000000baH
; Line 187
	jmp	$LN63@ec_GFp_sim
$LN32@ec_GFp_sim:
; Line 189
	push	edi
	push	ebx
	push	edi
	call	_BN_usub
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$LN61@ec_GFp_sim
	mov	edx, DWORD PTR _y_bit$1$[esp+32]
$LN36@ec_GFp_sim:
; Line 192
	cmp	DWORD PTR [edi+4], 0
	jle	SHORT $LN43@ec_GFp_sim
	mov	eax, DWORD PTR [edi]
	test	BYTE PTR [eax], 1
	je	SHORT $LN43@ec_GFp_sim
	mov	eax, 1
	jmp	SHORT $LN44@ec_GFp_sim
$LN43@ec_GFp_sim:
	xor	eax, eax
$LN44@ec_GFp_sim:
	cmp	edx, eax
	je	SHORT $LN37@ec_GFp_sim
; Line 193
	push	194					; 000000c2H
	push	OFFSET ??_C@_0BG@PPNFLPIA@?4?2crypto?2ec?2ecp_oct?4c?$AA@
	push	68					; 00000044H
; Line 195
	jmp	$LN64@ec_GFp_sim
$LN37@ec_GFp_sim:
; Line 198
	push	esi
	push	edi
	push	DWORD PTR _x$1$[esp+36]
	push	DWORD PTR _point$[esp+40]
	push	ebp
	call	_EC_POINT_set_affine_coordinates_GFp
	xor	ebp, ebp
	add	esp, 20					; 00000014H
	test	eax, eax
	mov	ecx, 1
	cmovne	ebp, ecx
	jmp	$err$74
_ec_GFp_simple_set_compressed_coordinates ENDP
_TEXT	ENDS
END
