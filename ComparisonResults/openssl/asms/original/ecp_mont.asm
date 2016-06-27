; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_ec_GFp_mont_group_init
PUBLIC	_ec_GFp_mont_group_set_curve
PUBLIC	_ec_GFp_mont_group_finish
PUBLIC	_ec_GFp_mont_group_clear_finish
PUBLIC	_ec_GFp_mont_group_copy
PUBLIC	_ec_GFp_mont_field_mul
PUBLIC	_ec_GFp_mont_field_sqr
PUBLIC	_ec_GFp_mont_field_encode
PUBLIC	_ec_GFp_mont_field_decode
PUBLIC	_ec_GFp_mont_field_set_to_one
EXTRN	_ec_GFp_simple_group_get_curve:PROC
EXTRN	_ec_GFp_simple_group_get_degree:PROC
EXTRN	_ec_GFp_simple_group_check_discriminant:PROC
EXTRN	_ec_GFp_simple_point_init:PROC
EXTRN	_ec_GFp_simple_point_finish:PROC
EXTRN	_ec_GFp_simple_point_clear_finish:PROC
EXTRN	_ec_GFp_simple_point_copy:PROC
EXTRN	_ec_GFp_simple_point_set_to_infinity:PROC
EXTRN	_ec_GFp_simple_set_Jprojective_coordinates_GFp:PROC
EXTRN	_ec_GFp_simple_get_Jprojective_coordinates_GFp:PROC
EXTRN	_ec_GFp_simple_point_set_affine_coordinates:PROC
EXTRN	_ec_GFp_simple_point_get_affine_coordinates:PROC
EXTRN	_ec_GFp_simple_add:PROC
EXTRN	_ec_GFp_simple_dbl:PROC
EXTRN	_ec_GFp_simple_invert:PROC
EXTRN	_ec_GFp_simple_is_at_infinity:PROC
EXTRN	_ec_GFp_simple_is_on_curve:PROC
EXTRN	_ec_GFp_simple_cmp:PROC
EXTRN	_ec_GFp_simple_make_affine:PROC
EXTRN	_ec_GFp_simple_points_make_affine:PROC
CONST	SEGMENT
?ret@?1??EC_GFp_mont_method@@9@9 DD 01H			; `EC_GFp_mont_method'::`2'::ret
	DD	0196H
	DD	FLAT:_ec_GFp_mont_group_init
	DD	FLAT:_ec_GFp_mont_group_finish
	DD	FLAT:_ec_GFp_mont_group_clear_finish
	DD	FLAT:_ec_GFp_mont_group_copy
	DD	FLAT:_ec_GFp_mont_group_set_curve
	DD	FLAT:_ec_GFp_simple_group_get_curve
	DD	FLAT:_ec_GFp_simple_group_get_degree
	DD	FLAT:_ec_GFp_simple_group_check_discriminant
	DD	FLAT:_ec_GFp_simple_point_init
	DD	FLAT:_ec_GFp_simple_point_finish
	DD	FLAT:_ec_GFp_simple_point_clear_finish
	DD	FLAT:_ec_GFp_simple_point_copy
	DD	FLAT:_ec_GFp_simple_point_set_to_infinity
	DD	FLAT:_ec_GFp_simple_set_Jprojective_coordinates_GFp
	DD	FLAT:_ec_GFp_simple_get_Jprojective_coordinates_GFp
	DD	FLAT:_ec_GFp_simple_point_set_affine_coordinates
	DD	FLAT:_ec_GFp_simple_point_get_affine_coordinates
	DD	00H
	DD	00H
	DD	00H
	DD	FLAT:_ec_GFp_simple_add
	DD	FLAT:_ec_GFp_simple_dbl
	DD	FLAT:_ec_GFp_simple_invert
	DD	FLAT:_ec_GFp_simple_is_at_infinity
	DD	FLAT:_ec_GFp_simple_is_on_curve
	DD	FLAT:_ec_GFp_simple_cmp
	DD	FLAT:_ec_GFp_simple_make_affine
	DD	FLAT:_ec_GFp_simple_points_make_affine
	DD	00H
	DD	00H
	DD	00H
	DD	FLAT:_ec_GFp_mont_field_mul
	DD	FLAT:_ec_GFp_mont_field_sqr
	DD	00H
	DD	FLAT:_ec_GFp_mont_field_encode
	DD	FLAT:_ec_GFp_mont_field_decode
	DD	FLAT:_ec_GFp_mont_field_set_to_one
CONST	ENDS
PUBLIC	_EC_GFp_mont_method
PUBLIC	??_C@_0BH@LFGIMBNP@?4?2crypto?2ec?2ecp_mont?4c?$AA@ ; `string'
EXTRN	_ERR_put_error:PROC
EXTRN	_BN_value_one:PROC
EXTRN	_BN_CTX_new:PROC
EXTRN	_BN_CTX_free:PROC
EXTRN	_BN_new:PROC
EXTRN	_BN_clear_free:PROC
EXTRN	_BN_copy:PROC
EXTRN	_BN_free:PROC
EXTRN	_BN_dup:PROC
EXTRN	_BN_MONT_CTX_new:PROC
EXTRN	_BN_mod_mul_montgomery:PROC
EXTRN	_BN_from_montgomery:PROC
EXTRN	_BN_MONT_CTX_free:PROC
EXTRN	_BN_MONT_CTX_set:PROC
EXTRN	_BN_MONT_CTX_copy:PROC
EXTRN	_ec_GFp_simple_group_init:PROC
EXTRN	_ec_GFp_simple_group_finish:PROC
EXTRN	_ec_GFp_simple_group_clear_finish:PROC
EXTRN	_ec_GFp_simple_group_copy:PROC
EXTRN	_ec_GFp_simple_group_set_curve:PROC
;	COMDAT ??_C@_0BH@LFGIMBNP@?4?2crypto?2ec?2ecp_mont?4c?$AA@
CONST	SEGMENT
??_C@_0BH@LFGIMBNP@?4?2crypto?2ec?2ecp_mont?4c?$AA@ DB '.\crypto\ec\ecp_m'
	DB	'ont.c', 00H					; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_field_set_to_one
_TEXT	SEGMENT
_group$ = 8						; size = 4
_r$ = 12						; size = 4
_ctx$ = 16						; size = 4
_ec_GFp_mont_field_set_to_one PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 300
	mov	eax, DWORD PTR _group$[esp-4]
	mov	eax, DWORD PTR [eax+164]
	test	eax, eax
	jne	SHORT $LN2@ec_GFp_mon
; Line 301
	push	301					; 0000012dH
	push	OFFSET ??_C@_0BH@LFGIMBNP@?4?2crypto?2ec?2ecp_mont?4c?$AA@
	push	111					; 0000006fH
	push	209					; 000000d1H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 302
	xor	eax, eax
; Line 308
	ret	0
$LN2@ec_GFp_mon:
; Line 305
	push	eax
	push	DWORD PTR _r$[esp]
	call	_BN_copy
	add	esp, 8
	neg	eax
	sbb	eax, eax
	neg	eax
; Line 308
	ret	0
_ec_GFp_mont_field_set_to_one ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_field_decode
_TEXT	SEGMENT
_group$ = 8						; size = 4
_r$ = 12						; size = 4
_a$ = 16						; size = 4
_ctx$ = 20						; size = 4
_ec_GFp_mont_field_decode PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 289
	mov	eax, DWORD PTR _group$[esp-4]
	mov	eax, DWORD PTR [eax+160]
	test	eax, eax
	jne	SHORT $LN2@ec_GFp_mon
; Line 290
	push	290					; 00000122H
	push	OFFSET ??_C@_0BH@LFGIMBNP@?4?2crypto?2ec?2ecp_mont?4c?$AA@
	push	111					; 0000006fH
	push	133					; 00000085H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 291
	xor	eax, eax
; Line 295
	ret	0
$LN2@ec_GFp_mon:
; Line 294
	push	DWORD PTR _ctx$[esp-4]
	push	eax
	push	DWORD PTR _a$[esp+4]
	push	DWORD PTR _r$[esp+8]
	call	_BN_from_montgomery
	add	esp, 16					; 00000010H
; Line 295
	ret	0
_ec_GFp_mont_field_decode ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_field_encode
_TEXT	SEGMENT
_group$ = 8						; size = 4
_r$ = 12						; size = 4
_a$ = 16						; size = 4
_ctx$ = 20						; size = 4
_ec_GFp_mont_field_encode PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 278
	mov	eax, DWORD PTR _group$[esp-4]
	mov	eax, DWORD PTR [eax+160]
	test	eax, eax
	jne	SHORT $LN2@ec_GFp_mon
; Line 279
	push	279					; 00000117H
	push	OFFSET ??_C@_0BH@LFGIMBNP@?4?2crypto?2ec?2ecp_mont?4c?$AA@
	push	111					; 0000006fH
	push	134					; 00000086H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 280
	xor	eax, eax
; Line 284
	ret	0
$LN2@ec_GFp_mon:
; Line 283
	push	DWORD PTR _ctx$[esp-4]
	push	eax
	add	eax, 4
	push	eax
	push	DWORD PTR _a$[esp+8]
	push	DWORD PTR _r$[esp+12]
	call	_BN_mod_mul_montgomery
	add	esp, 20					; 00000014H
; Line 284
	ret	0
_ec_GFp_mont_field_encode ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_field_sqr
_TEXT	SEGMENT
_group$ = 8						; size = 4
_r$ = 12						; size = 4
_a$ = 16						; size = 4
_ctx$ = 20						; size = 4
_ec_GFp_mont_field_sqr PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 267
	mov	eax, DWORD PTR _group$[esp-4]
	mov	eax, DWORD PTR [eax+160]
	test	eax, eax
	jne	SHORT $LN2@ec_GFp_mon
; Line 268
	push	268					; 0000010cH
	push	OFFSET ??_C@_0BH@LFGIMBNP@?4?2crypto?2ec?2ecp_mont?4c?$AA@
	push	111					; 0000006fH
	push	132					; 00000084H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 269
	xor	eax, eax
; Line 273
	ret	0
$LN2@ec_GFp_mon:
; Line 272
	push	DWORD PTR _ctx$[esp-4]
	push	eax
	mov	eax, DWORD PTR _a$[esp+4]
	push	eax
	push	eax
	push	DWORD PTR _r$[esp+12]
	call	_BN_mod_mul_montgomery
	add	esp, 20					; 00000014H
; Line 273
	ret	0
_ec_GFp_mont_field_sqr ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_field_mul
_TEXT	SEGMENT
_group$ = 8						; size = 4
_r$ = 12						; size = 4
_a$ = 16						; size = 4
_b$ = 20						; size = 4
_ctx$ = 24						; size = 4
_ec_GFp_mont_field_mul PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 256
	mov	eax, DWORD PTR _group$[esp-4]
	mov	eax, DWORD PTR [eax+160]
	test	eax, eax
	jne	SHORT $LN2@ec_GFp_mon
; Line 257
	push	257					; 00000101H
	push	OFFSET ??_C@_0BH@LFGIMBNP@?4?2crypto?2ec?2ecp_mont?4c?$AA@
	push	111					; 0000006fH
	push	131					; 00000083H
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 258
	xor	eax, eax
; Line 262
	ret	0
$LN2@ec_GFp_mon:
; Line 261
	push	DWORD PTR _ctx$[esp-4]
	push	eax
	push	DWORD PTR _b$[esp+4]
	push	DWORD PTR _a$[esp+8]
	push	DWORD PTR _r$[esp+12]
	call	_BN_mod_mul_montgomery
	add	esp, 20					; 00000014H
; Line 262
	ret	0
_ec_GFp_mont_field_mul ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_group_copy
_TEXT	SEGMENT
_dest$ = 8						; size = 4
_src$ = 12						; size = 4
_ec_GFp_mont_group_copy PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 159
	push	esi
; Line 160
	mov	esi, DWORD PTR _dest$[esp]
	push	edi
	mov	eax, DWORD PTR [esi+160]
	test	eax, eax
	je	SHORT $LN2@ec_GFp_mon
; Line 161
	push	eax
	call	_BN_MONT_CTX_free
	add	esp, 4
; Line 162
	mov	DWORD PTR [esi+160], 0
$LN2@ec_GFp_mon:
; Line 164
	mov	eax, DWORD PTR [esi+164]
	test	eax, eax
	je	SHORT $LN3@ec_GFp_mon
; Line 165
	push	eax
	call	_BN_clear_free
	add	esp, 4
; Line 166
	mov	DWORD PTR [esi+164], 0
$LN3@ec_GFp_mon:
; Line 169
	mov	edi, DWORD PTR _src$[esp+4]
	push	edi
	push	esi
	call	_ec_GFp_simple_group_copy
	add	esp, 8
	test	eax, eax
	je	SHORT $LN10@ec_GFp_mon
; Line 172
	cmp	DWORD PTR [edi+160], 0
	je	SHORT $LN7@ec_GFp_mon
; Line 173
	call	_BN_MONT_CTX_new
	mov	DWORD PTR [esi+160], eax
; Line 174
	test	eax, eax
	je	SHORT $LN10@ec_GFp_mon
; Line 176
	push	DWORD PTR [edi+160]
	push	eax
	call	_BN_MONT_CTX_copy
	add	esp, 8
	test	eax, eax
	je	SHORT $err$14
$LN7@ec_GFp_mon:
; Line 179
	mov	eax, DWORD PTR [edi+164]
	test	eax, eax
	je	SHORT $LN9@ec_GFp_mon
; Line 180
	push	eax
	call	_BN_dup
	add	esp, 4
	mov	DWORD PTR [esi+164], eax
; Line 181
	test	eax, eax
	jne	SHORT $LN9@ec_GFp_mon
$err$14:
; Line 188
	mov	eax, DWORD PTR [esi+160]
	test	eax, eax
	je	SHORT $LN10@ec_GFp_mon
; Line 189
	push	eax
	call	_BN_MONT_CTX_free
	add	esp, 4
; Line 190
	mov	DWORD PTR [esi+160], 0
$LN10@ec_GFp_mon:
; Line 192
	pop	edi
	xor	eax, eax
	pop	esi
; Line 193
	ret	0
$LN9@ec_GFp_mon:
	pop	edi
; Line 185
	mov	eax, 1
	pop	esi
; Line 193
	ret	0
_ec_GFp_mont_group_copy ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_group_clear_finish
_TEXT	SEGMENT
_group$ = 8						; size = 4
_ec_GFp_mont_group_clear_finish PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 146
	push	esi
; Line 147
	mov	esi, DWORD PTR _group$[esp]
	mov	eax, DWORD PTR [esi+160]
	test	eax, eax
	je	SHORT $LN2@ec_GFp_mon
; Line 148
	push	eax
	call	_BN_MONT_CTX_free
	add	esp, 4
; Line 149
	mov	DWORD PTR [esi+160], 0
$LN2@ec_GFp_mon:
; Line 151
	mov	eax, DWORD PTR [esi+164]
	test	eax, eax
	je	SHORT $LN3@ec_GFp_mon
; Line 152
	push	eax
	call	_BN_clear_free
	add	esp, 4
; Line 153
	mov	DWORD PTR [esi+164], 0
$LN3@ec_GFp_mon:
; Line 155
	push	esi
	call	_ec_GFp_simple_group_clear_finish
	add	esp, 4
	pop	esi
; Line 156
	ret	0
_ec_GFp_mont_group_clear_finish ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_group_finish
_TEXT	SEGMENT
_group$ = 8						; size = 4
_ec_GFp_mont_group_finish PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 133
	push	esi
; Line 134
	mov	esi, DWORD PTR _group$[esp]
	mov	eax, DWORD PTR [esi+160]
	test	eax, eax
	je	SHORT $LN2@ec_GFp_mon
; Line 135
	push	eax
	call	_BN_MONT_CTX_free
	add	esp, 4
; Line 136
	mov	DWORD PTR [esi+160], 0
$LN2@ec_GFp_mon:
; Line 138
	mov	eax, DWORD PTR [esi+164]
	test	eax, eax
	je	SHORT $LN3@ec_GFp_mon
; Line 139
	push	eax
	call	_BN_free
	add	esp, 4
; Line 140
	mov	DWORD PTR [esi+164], 0
$LN3@ec_GFp_mon:
; Line 142
	push	esi
	call	_ec_GFp_simple_group_finish
	add	esp, 4
	pop	esi
; Line 143
	ret	0
_ec_GFp_mont_group_finish ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_group_set_curve
_TEXT	SEGMENT
_one$1$ = 8						; size = 4
_group$ = 8						; size = 4
_p$ = 12						; size = 4
_a$ = 16						; size = 4
_b$ = 20						; size = 4
_ctx$ = 24						; size = 4
_ec_GFp_mont_group_set_curve PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 197
	push	ebx
	push	ebp
	push	esi
; Line 203
	mov	esi, DWORD PTR _group$[esp+8]
	xor	ebx, ebx
	mov	eax, DWORD PTR [esi+160]
	test	eax, eax
	je	SHORT $LN2@ec_GFp_mon
; Line 204
	push	eax
	call	_BN_MONT_CTX_free
	add	esp, 4
; Line 205
	mov	DWORD PTR [esi+160], ebx
$LN2@ec_GFp_mon:
; Line 207
	mov	eax, DWORD PTR [esi+164]
	test	eax, eax
	je	SHORT $LN3@ec_GFp_mon
; Line 208
	push	eax
	call	_BN_free
	add	esp, 4
; Line 209
	mov	DWORD PTR [esi+164], ebx
$LN3@ec_GFp_mon:
; Line 212
	mov	ebp, DWORD PTR _ctx$[esp+8]
	test	ebp, ebp
	jne	SHORT $LN5@ec_GFp_mon
; Line 213
	call	_BN_CTX_new
	mov	ebx, eax
	mov	ebp, ebx
; Line 214
	test	ebx, ebx
	jne	SHORT $LN5@ec_GFp_mon
	pop	esi
	pop	ebp
	pop	ebx
; Line 251
	ret	0
$LN5@ec_GFp_mon:
	push	edi
; Line 218
	call	_BN_MONT_CTX_new
	mov	edi, eax
; Line 219
	test	edi, edi
	je	SHORT $LN16@ec_GFp_mon
; Line 221
	push	ebp
	push	DWORD PTR _p$[esp+16]
	push	edi
	call	_BN_MONT_CTX_set
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN7@ec_GFp_mon
; Line 222
	push	222					; 000000deH
	push	OFFSET ??_C@_0BH@LFGIMBNP@?4?2crypto?2ec?2ecp_mont?4c?$AA@
	push	3
	push	189					; 000000bdH
	push	16					; 00000010H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
$LN16@ec_GFp_mon:
	xor	ebp, ebp
$err$19:
; Line 246
	test	ebx, ebx
	je	SHORT $LN11@ec_GFp_mon
; Line 247
	push	ebx
	call	_BN_CTX_free
	add	esp, 4
$LN11@ec_GFp_mon:
; Line 248
	test	edi, edi
	je	SHORT $LN12@ec_GFp_mon
; Line 249
	push	edi
	call	_BN_MONT_CTX_free
	add	esp, 4
$LN12@ec_GFp_mon:
; Line 250
	pop	edi
	pop	esi
	mov	eax, ebp
	pop	ebp
	pop	ebx
; Line 251
	ret	0
$LN7@ec_GFp_mon:
; Line 225
	call	_BN_new
	mov	DWORD PTR _one$1$[esp+12], eax
; Line 226
	test	eax, eax
	je	SHORT $LN16@ec_GFp_mon
; Line 228
	push	ebp
	lea	ecx, DWORD PTR [edi+4]
	push	edi
	push	ecx
	call	_BN_value_one
	push	eax
	push	DWORD PTR _one$1$[esp+28]
	call	_BN_mod_mul_montgomery
	add	esp, 20					; 00000014H
	test	eax, eax
	je	SHORT $LN16@ec_GFp_mon
; Line 233
	mov	eax, DWORD PTR _one$1$[esp+12]
; Line 236
	push	ebp
	push	DWORD PTR _b$[esp+16]
	mov	DWORD PTR [esi+160], edi
	xor	edi, edi
	push	DWORD PTR _a$[esp+20]
	mov	DWORD PTR [esi+164], eax
	push	DWORD PTR _p$[esp+24]
	push	esi
	call	_ec_GFp_simple_group_set_curve
	mov	ebp, eax
	add	esp, 20					; 00000014H
; Line 238
	test	ebp, ebp
	jne	SHORT $err$19
; Line 239
	push	DWORD PTR [esi+160]
	call	_BN_MONT_CTX_free
; Line 241
	push	DWORD PTR [esi+164]
	mov	DWORD PTR [esi+160], edi
	call	_BN_free
	add	esp, 8
; Line 242
	mov	DWORD PTR [esi+164], edi
	jmp	$err$19
_ec_GFp_mont_group_set_curve ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ec_GFp_mont_group_init
_TEXT	SEGMENT
_group$ = 8						; size = 4
_ec_GFp_mont_group_init PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 123
	push	esi
; Line 126
	mov	esi, DWORD PTR _group$[esp]
	push	esi
	call	_ec_GFp_simple_group_init
	add	esp, 4
; Line 127
	mov	DWORD PTR [esi+160], 0
; Line 128
	mov	DWORD PTR [esi+164], 0
	pop	esi
; Line 130
	ret	0
_ec_GFp_mont_group_init ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EC_GFp_mont_method
_TEXT	SEGMENT
_EC_GFp_mont_method PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ec\ecp_mont.c
; Line 119
	mov	eax, OFFSET ?ret@?1??EC_GFp_mont_method@@9@9
; Line 120
	ret	0
_EC_GFp_mont_method ENDP
_TEXT	ENDS
END