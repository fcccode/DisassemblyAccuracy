; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_cnf.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_BSS	SEGMENT
_initialized_engines DD 01H DUP (?)
_BSS	ENDS
PUBLIC	_ENGINE_add_conf_module
PUBLIC	??_C@_0BK@JDIFDBLN@?4?2crypto?2engine?2eng_cnf?4c?$AA@ ; `string'
PUBLIC	??_C@_09MNMPHFPA@engine_id?$AA@			; `string'
PUBLIC	??_C@_09GKJHCOM@soft_load?$AA@			; `string'
PUBLIC	??_C@_0N@BKDPAABD@dynamic_path?$AA@		; `string'
PUBLIC	??_C@_07OBLKMMON@dynamic?$AA@			; `string'
PUBLIC	??_C@_07EGEBNIPD@SO_PATH?$AA@			; `string'
PUBLIC	??_C@_01FDFGLJHB@2?$AA@				; `string'
PUBLIC	??_C@_08OIMNLDBA@LIST_ADD?$AA@			; `string'
PUBLIC	??_C@_04ICOEJIDH@LOAD?$AA@			; `string'
PUBLIC	??_C@_05HKAKDGKI@EMPTY?$AA@			; `string'
PUBLIC	??_C@_04HKFDNBLD@init?$AA@			; `string'
PUBLIC	??_C@_0BD@MJBCNKOM@default_algorithms?$AA@	; `string'
PUBLIC	??_C@_08OMICEKMJ@?0?5value?$DN?$AA@		; `string'
PUBLIC	??_C@_07IAKNDAGP@?0?5name?$DN?$AA@		; `string'
PUBLIC	??_C@_08LNPIPPMM@section?$DN?$AA@		; `string'
PUBLIC	??_C@_07MJHLDAOB@engines?$AA@			; `string'
EXTRN	__imp__strchr:PROC
EXTRN	_sk_num:PROC
EXTRN	_sk_value:PROC
EXTRN	_sk_new_null:PROC
EXTRN	_sk_free:PROC
EXTRN	_sk_push:PROC
EXTRN	_sk_pop:PROC
EXTRN	_ERR_put_error:PROC
EXTRN	_ERR_clear_error:PROC
EXTRN	_ERR_add_error_data:PROC
EXTRN	_ENGINE_by_id:PROC
EXTRN	_ENGINE_ctrl_cmd_string:PROC
EXTRN	_ENGINE_free:PROC
EXTRN	_ENGINE_init:PROC
EXTRN	_ENGINE_finish:PROC
EXTRN	_ENGINE_set_default_string:PROC
EXTRN	_NCONF_get_section:PROC
EXTRN	_NCONF_get_number_e:PROC
EXTRN	_CONF_module_add:PROC
EXTRN	_CONF_imodule_get_value:PROC
EXTRN	__chkstk:PROC
;	COMDAT ??_C@_07MJHLDAOB@engines?$AA@
CONST	SEGMENT
??_C@_07MJHLDAOB@engines?$AA@ DB 'engines', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_08LNPIPPMM@section?$DN?$AA@
CONST	SEGMENT
??_C@_08LNPIPPMM@section?$DN?$AA@ DB 'section=', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_07IAKNDAGP@?0?5name?$DN?$AA@
CONST	SEGMENT
??_C@_07IAKNDAGP@?0?5name?$DN?$AA@ DB ', name=', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_08OMICEKMJ@?0?5value?$DN?$AA@
CONST	SEGMENT
??_C@_08OMICEKMJ@?0?5value?$DN?$AA@ DB ', value=', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BD@MJBCNKOM@default_algorithms?$AA@
CONST	SEGMENT
??_C@_0BD@MJBCNKOM@default_algorithms?$AA@ DB 'default_algorithms', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_04HKFDNBLD@init?$AA@
CONST	SEGMENT
??_C@_04HKFDNBLD@init?$AA@ DB 'init', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_05HKAKDGKI@EMPTY?$AA@
CONST	SEGMENT
??_C@_05HKAKDGKI@EMPTY?$AA@ DB 'EMPTY', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_04ICOEJIDH@LOAD?$AA@
CONST	SEGMENT
??_C@_04ICOEJIDH@LOAD?$AA@ DB 'LOAD', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_08OIMNLDBA@LIST_ADD?$AA@
CONST	SEGMENT
??_C@_08OIMNLDBA@LIST_ADD?$AA@ DB 'LIST_ADD', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_01FDFGLJHB@2?$AA@
CONST	SEGMENT
??_C@_01FDFGLJHB@2?$AA@ DB '2', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_07EGEBNIPD@SO_PATH?$AA@
CONST	SEGMENT
??_C@_07EGEBNIPD@SO_PATH?$AA@ DB 'SO_PATH', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_07OBLKMMON@dynamic?$AA@
CONST	SEGMENT
??_C@_07OBLKMMON@dynamic?$AA@ DB 'dynamic', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@BKDPAABD@dynamic_path?$AA@
CONST	SEGMENT
??_C@_0N@BKDPAABD@dynamic_path?$AA@ DB 'dynamic_path', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_09GKJHCOM@soft_load?$AA@
CONST	SEGMENT
??_C@_09GKJHCOM@soft_load?$AA@ DB 'soft_load', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_09MNMPHFPA@engine_id?$AA@
CONST	SEGMENT
??_C@_09MNMPHFPA@engine_id?$AA@ DB 'engine_id', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BK@JDIFDBLN@?4?2crypto?2engine?2eng_cnf?4c?$AA@
CONST	SEGMENT
??_C@_0BK@JDIFDBLN@?4?2crypto?2engine?2eng_cnf?4c?$AA@ DB '.\crypto\engin'
	DB	'e\eng_cnf.c', 00H				; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _int_engine_module_finish
_TEXT	SEGMENT
_md$ = 8						; size = 4
_int_engine_module_finish PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_cnf.c
; Line 232
	push	DWORD PTR _initialized_engines
	call	_sk_pop
	add	esp, 4
	test	eax, eax
	je	SHORT $LN3@int_engine
$LL2@int_engine:
; Line 233
	push	eax
	call	_ENGINE_finish
	push	DWORD PTR _initialized_engines
	call	_sk_pop
	add	esp, 8
	test	eax, eax
	jne	SHORT $LL2@int_engine
$LN3@int_engine:
; Line 234
	push	DWORD PTR _initialized_engines
	call	_sk_free
	add	esp, 4
; Line 235
	mov	DWORD PTR _initialized_engines, 0
; Line 236
	ret	0
_int_engine_module_finish ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _int_engine_module_init
_TEXT	SEGMENT
_md$ = 8						; size = 4
_cnf$ = 12						; size = 4
_int_engine_module_init PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_cnf.c
; Line 203
	push	ebx
	push	edi
; Line 212
	push	DWORD PTR _md$[esp+4]
	call	_CONF_imodule_get_value
	mov	ebx, DWORD PTR _cnf$[esp+8]
	push	eax
	push	ebx
	call	_NCONF_get_section
	mov	edi, eax
	add	esp, 12					; 0000000cH
; Line 214
	test	edi, edi
	jne	SHORT $LN5@int_engine
; Line 215
	push	216					; 000000d8H
	push	OFFSET ??_C@_0BK@JDIFDBLN@?4?2crypto?2engine?2eng_cnf?4c?$AA@
	push	148					; 00000094H
	push	187					; 000000bbH
	push	38					; 00000026H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 217
	xor	eax, eax
	pop	edi
	pop	ebx
; Line 227
	ret	0
$LN5@int_engine:
	push	esi
; Line 220
	push	edi
	xor	esi, esi
	call	_sk_num
	add	esp, 4
	test	eax, eax
	jle	SHORT $LN3@int_engine
$LL4@int_engine:
; Line 221
	push	esi
	push	edi
	call	_sk_value
; Line 222
	push	ebx
	push	DWORD PTR [eax+8]
	push	DWORD PTR [eax+4]
	call	_int_engine_configure
	add	esp, 20					; 00000014H
	test	eax, eax
	je	SHORT $LN9@int_engine
; Line 220
	push	edi
	inc	esi
	call	_sk_num
	add	esp, 4
	cmp	esi, eax
	jl	SHORT $LL4@int_engine
$LN3@int_engine:
	pop	esi
	pop	edi
; Line 226
	mov	eax, 1
	pop	ebx
; Line 227
	ret	0
$LN9@int_engine:
	pop	esi
	pop	edi
; Line 223
	xor	eax, eax
	pop	ebx
; Line 227
	ret	0
_int_engine_module_init ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _int_engine_configure
_TEXT	SEGMENT
_do_init$ = -16						; size = 4
_i$1$ = -12						; size = 4
_soft$1$ = -8						; size = 4
_ecmds$1$ = -4						; size = 4
_name$ = 8						; size = 4
_value$ = 12						; size = 4
_cnf$ = 16						; size = 4
_int_engine_configure PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_cnf.c
; Line 92
	mov	eax, 16					; 00000010H
	call	__chkstk
	push	ebp
	push	esi
; Line 70
	push	46					; 0000002eH
	push	DWORD PTR _name$[esp+24]
; Line 100
	xor	eax, eax
	mov	DWORD PTR _do_init$[esp+32], -1
	xor	esi, esi
	mov	DWORD PTR _soft$1$[esp+32], eax
; Line 70
	call	DWORD PTR __imp__strchr
	add	esp, 8
; Line 71
	test	eax, eax
	je	SHORT $LN37@int_engine
; Line 72
	inc	eax
	mov	DWORD PTR _name$[esp+20], eax
$LN37@int_engine:
; Line 107
	push	DWORD PTR _value$[esp+20]
	push	DWORD PTR _cnf$[esp+24]
	call	_NCONF_get_section
	mov	ebp, eax
	add	esp, 8
	mov	DWORD PTR _ecmds$1$[esp+24], ebp
; Line 109
	test	ebp, ebp
	jne	SHORT $LN5@int_engine
; Line 110
	push	111					; 0000006fH
	push	OFFSET ??_C@_0BK@JDIFDBLN@?4?2crypto?2engine?2eng_cnf?4c?$AA@
	push	149					; 00000095H
	push	188					; 000000bcH
	push	38					; 00000026H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 112
	xor	eax, eax
	pop	esi
	pop	ebp
; Line 200
	add	esp, 16					; 00000010H
	ret	0
$LN5@int_engine:
	push	ebx
	push	edi
; Line 115
	xor	ebx, ebx
	push	ebp
	mov	DWORD PTR _i$1$[esp+36], ebx
	call	_sk_num
	add	esp, 4
	test	eax, eax
	jle	$LN31@int_engine
	npad	6
$LL4@int_engine:
; Line 116
	push	ebx
	push	ebp
	call	_sk_value
	mov	ebp, eax
; Line 70
	push	46					; 0000002eH
; Line 117
	mov	edi, DWORD PTR [ebp+4]
; Line 70
	push	edi
	call	DWORD PTR __imp__strchr
	add	esp, 16					; 00000010H
; Line 71
	test	eax, eax
	je	SHORT $LN40@int_engine
; Line 72
	lea	edi, DWORD PTR [eax+1]
$LN40@int_engine:
; Line 118
	mov	ebx, DWORD PTR [ebp+8]
; Line 127
	mov	ecx, OFFSET ??_C@_09MNMPHFPA@engine_id?$AA@
	mov	eax, edi
	npad	7
$LL68@int_engine:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN69@int_engine
	test	dl, dl
	je	SHORT $LN70@int_engine
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN69@int_engine
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL68@int_engine
$LN70@int_engine:
	xor	eax, eax
	jmp	SHORT $LN71@int_engine
$LN69@int_engine:
	sbb	eax, eax
	or	eax, 1
$LN71@int_engine:
	test	eax, eax
	jne	SHORT $LN6@int_engine
; Line 128
	mov	DWORD PTR _name$[esp+28], ebx
	jmp	$LN2@int_engine
$LN6@int_engine:
; Line 129
	mov	ecx, OFFSET ??_C@_09GKJHCOM@soft_load?$AA@
	mov	eax, edi
	npad	7
$LL72@int_engine:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN73@int_engine
	test	dl, dl
	je	SHORT $LN74@int_engine
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN73@int_engine
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL72@int_engine
$LN74@int_engine:
	xor	eax, eax
	jmp	SHORT $LN75@int_engine
$LN73@int_engine:
	sbb	eax, eax
	or	eax, 1
$LN75@int_engine:
	test	eax, eax
	jne	SHORT $LN8@int_engine
; Line 130
	mov	DWORD PTR _soft$1$[esp+32], 1
	jmp	$LN2@int_engine
$LN8@int_engine:
; Line 132
	mov	ecx, OFFSET ??_C@_0N@BKDPAABD@dynamic_path?$AA@
	mov	eax, edi
	npad	3
$LL76@int_engine:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN77@int_engine
	test	dl, dl
	je	SHORT $LN78@int_engine
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN77@int_engine
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL76@int_engine
$LN78@int_engine:
	xor	eax, eax
	jmp	SHORT $LN79@int_engine
$LN77@int_engine:
	sbb	eax, eax
	or	eax, 1
$LN79@int_engine:
	test	eax, eax
	jne	SHORT $LN10@int_engine
; Line 133
	push	OFFSET ??_C@_07OBLKMMON@dynamic?$AA@
	call	_ENGINE_by_id
	mov	esi, eax
	add	esp, 4
; Line 134
	test	esi, esi
	je	$LN64@int_engine
; Line 136
	push	0
	push	ebx
	push	OFFSET ??_C@_07EGEBNIPD@SO_PATH?$AA@
	push	esi
	call	_ENGINE_ctrl_cmd_string
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN64@int_engine
; Line 138
	push	0
	push	OFFSET ??_C@_01FDFGLJHB@2?$AA@
	push	OFFSET ??_C@_08OIMNLDBA@LIST_ADD?$AA@
	push	esi
	call	_ENGINE_ctrl_cmd_string
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN64@int_engine
; Line 140
	push	0
	push	0
	push	OFFSET ??_C@_04ICOEJIDH@LOAD?$AA@
; Line 142
	jmp	$LN96@int_engine
$LN10@int_engine:
; Line 149
	test	esi, esi
	jne	SHORT $LN18@int_engine
; Line 150
	push	DWORD PTR _name$[esp+28]
	call	_ENGINE_by_id
	mov	esi, eax
	add	esp, 4
; Line 151
	test	esi, esi
	je	$LN66@int_engine
$LN18@int_engine:
; Line 162
	mov	ecx, OFFSET ??_C@_05HKAKDGKI@EMPTY?$AA@
	mov	eax, ebx
$LL80@int_engine:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN81@int_engine
	test	dl, dl
	je	SHORT $LN82@int_engine
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN81@int_engine
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL80@int_engine
$LN82@int_engine:
	xor	eax, eax
	jmp	SHORT $LN83@int_engine
$LN81@int_engine:
	sbb	eax, eax
	or	eax, 1
$LN83@int_engine:
	xor	ecx, ecx
	test	eax, eax
; Line 164
	mov	eax, edi
	cmove	ebx, ecx
	mov	ecx, OFFSET ??_C@_04HKFDNBLD@init?$AA@
$LL84@int_engine:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN85@int_engine
	test	dl, dl
	je	SHORT $LN86@int_engine
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN85@int_engine
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL84@int_engine
$LN86@int_engine:
	xor	eax, eax
	jmp	SHORT $LN87@int_engine
$LN85@int_engine:
	sbb	eax, eax
	or	eax, 1
$LN87@int_engine:
	test	eax, eax
	jne	SHORT $LN20@int_engine
; Line 165
	lea	eax, DWORD PTR _do_init$[esp+32]
	push	eax
	push	OFFSET ??_C@_04HKFDNBLD@init?$AA@
	push	DWORD PTR _value$[esp+36]
	push	DWORD PTR _cnf$[esp+40]
	call	_NCONF_get_number_e
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$LN64@int_engine
; Line 167
	mov	eax, DWORD PTR _do_init$[esp+32]
	cmp	eax, 1
	jne	SHORT $LN23@int_engine
; Line 168
	push	esi
	call	_int_engine_init
	add	esp, 4
; Line 170
	jmp	SHORT $LN97@int_engine
$LN23@int_engine:
	test	eax, eax
	je	SHORT $LN2@int_engine
; Line 171
	push	172					; 000000acH
	push	OFFSET ??_C@_0BK@JDIFDBLN@?4?2crypto?2engine?2eng_cnf?4c?$AA@
	push	151					; 00000097H
	push	188					; 000000bcH
	push	38					; 00000026H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 173
	jmp	$LN64@int_engine
$LN20@int_engine:
; Line 175
	mov	ecx, OFFSET ??_C@_0BD@MJBCNKOM@default_algorithms?$AA@
	mov	eax, edi
$LL88@int_engine:
	mov	dl, BYTE PTR [eax]
	cmp	dl, BYTE PTR [ecx]
	jne	SHORT $LN89@int_engine
	test	dl, dl
	je	SHORT $LN90@int_engine
	mov	dl, BYTE PTR [eax+1]
	cmp	dl, BYTE PTR [ecx+1]
	jne	SHORT $LN89@int_engine
	add	eax, 2
	add	ecx, 2
	test	dl, dl
	jne	SHORT $LL88@int_engine
$LN90@int_engine:
	xor	eax, eax
	jmp	SHORT $LN91@int_engine
$LN89@int_engine:
	sbb	eax, eax
	or	eax, 1
$LN91@int_engine:
	test	eax, eax
	jne	SHORT $LN27@int_engine
; Line 176
	push	ebx
	push	esi
	call	_ENGINE_set_default_string
	add	esp, 8
; Line 178
	jmp	SHORT $LN97@int_engine
$LN27@int_engine:
	push	0
	push	ebx
	push	edi
$LN96@int_engine:
	push	esi
	call	_ENGINE_ctrl_cmd_string
	add	esp, 16					; 00000010H
$LN97@int_engine:
	test	eax, eax
	je	SHORT $LN64@int_engine
$LN2@int_engine:
; Line 115
	mov	ebx, DWORD PTR _i$1$[esp+32]
	mov	ebp, DWORD PTR _ecmds$1$[esp+32]
	inc	ebx
	push	ebp
	mov	DWORD PTR _i$1$[esp+36], ebx
	call	_sk_num
	add	esp, 4
	cmp	ebx, eax
	jl	$LL4@int_engine
; Line 183
	test	esi, esi
	je	$LN31@int_engine
	cmp	DWORD PTR _do_init$[esp+32], -1
	jne	$LN31@int_engine
; Line 80
	push	esi
	call	_ENGINE_init
	add	esp, 4
	test	eax, eax
	je	SHORT $LN65@int_engine
; Line 82
	mov	eax, DWORD PTR _initialized_engines
	test	eax, eax
	jne	SHORT $LN63@int_engine
; Line 83
	call	_sk_new_null
	mov	DWORD PTR _initialized_engines, eax
; Line 84
	test	eax, eax
	je	SHORT $LN46@int_engine
$LN63@int_engine:
	push	esi
	push	eax
	call	_sk_push
	add	esp, 8
	test	eax, eax
	jne	SHORT $LN31@int_engine
$LN46@int_engine:
; Line 85
	push	esi
	call	_ENGINE_finish
	add	esp, 4
$LN65@int_engine:
; Line 184
	xor	ebp, ebp
$LN64@int_engine:
; Line 190
	push	191					; 000000bfH
	push	OFFSET ??_C@_0BK@JDIFDBLN@?4?2crypto?2engine?2eng_cnf?4c?$AA@
	push	102					; 00000066H
	push	188					; 000000bcH
	push	38					; 00000026H
	call	_ERR_put_error
	add	esp, 20					; 00000014H
; Line 192
	test	ebp, ebp
	je	SHORT $LN92@int_engine
; Line 193
	push	DWORD PTR [ebp+8]
	push	OFFSET ??_C@_08OMICEKMJ@?0?5value?$DN?$AA@
	push	DWORD PTR [ebp+4]
	push	OFFSET ??_C@_07IAKNDAGP@?0?5name?$DN?$AA@
	push	DWORD PTR [ebp]
	push	OFFSET ??_C@_08LNPIPPMM@section?$DN?$AA@
	push	6
	call	_ERR_add_error_data
	add	esp, 28					; 0000001cH
$LN92@int_engine:
	xor	ebx, ebx
$LN33@int_engine:
; Line 197
	test	esi, esi
	je	SHORT $LN34@int_engine
; Line 198
	push	esi
	call	_ENGINE_free
	add	esp, 4
$LN34@int_engine:
; Line 199
	pop	edi
	mov	eax, ebx
	pop	ebx
	pop	esi
	pop	ebp
; Line 200
	add	esp, 16					; 00000010H
	ret	0
$LN66@int_engine:
; Line 151
	mov	eax, DWORD PTR _soft$1$[esp+32]
	test	eax, eax
	je	SHORT $LN64@int_engine
; Line 152
	call	_ERR_clear_error
	pop	edi
	pop	ebx
	pop	esi
; Line 153
	mov	eax, 1
	pop	ebp
; Line 200
	add	esp, 16					; 00000010H
	ret	0
$LN31@int_engine:
; Line 187
	mov	ebx, 1
	jmp	SHORT $LN33@int_engine
_int_engine_configure ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _int_engine_init
_TEXT	SEGMENT
_e$ = 8							; size = 4
_int_engine_init PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_cnf.c
; Line 79
	push	esi
; Line 80
	mov	esi, DWORD PTR _e$[esp]
	push	esi
	call	_ENGINE_init
	add	esp, 4
	test	eax, eax
	je	SHORT $LN8@int_engine
; Line 82
	mov	eax, DWORD PTR _initialized_engines
	test	eax, eax
	jne	SHORT $LN7@int_engine
; Line 83
	call	_sk_new_null
	mov	DWORD PTR _initialized_engines, eax
; Line 84
	test	eax, eax
	je	SHORT $LN5@int_engine
$LN7@int_engine:
	push	esi
	push	eax
	call	_sk_push
	add	esp, 8
	test	eax, eax
	je	SHORT $LN5@int_engine
; Line 88
	mov	eax, 1
	pop	esi
; Line 89
	ret	0
$LN5@int_engine:
; Line 85
	push	esi
	call	_ENGINE_finish
	add	esp, 4
$LN8@int_engine:
; Line 86
	xor	eax, eax
	pop	esi
; Line 89
	ret	0
_int_engine_init ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _skip_dot
_TEXT	SEGMENT
_name$ = 8						; size = 4
_skip_dot PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_cnf.c
; Line 70
	push	46					; 0000002eH
	push	DWORD PTR _name$[esp]
	call	DWORD PTR __imp__strchr
	add	esp, 8
; Line 71
	test	eax, eax
	je	SHORT $LN2@skip_dot
; Line 72
	inc	eax
; Line 74
	ret	0
$LN2@skip_dot:
; Line 73
	mov	eax, DWORD PTR _name$[esp-4]
; Line 74
	ret	0
_skip_dot ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ENGINE_add_conf_module
_TEXT	SEGMENT
_ENGINE_add_conf_module PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\engine\eng_cnf.c
; Line 240
	push	OFFSET _int_engine_module_finish
	push	OFFSET _int_engine_module_init
	push	OFFSET ??_C@_07MJHLDAOB@engines?$AA@
	call	_CONF_module_add
	add	esp, 12					; 0000000cH
; Line 242
	ret	0
_ENGINE_add_conf_module ENDP
_TEXT	ENDS
END
