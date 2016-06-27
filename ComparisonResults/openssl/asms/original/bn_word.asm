; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\bn\bn_word.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_BN_mod_word
PUBLIC	_BN_div_word
PUBLIC	_BN_mul_word
PUBLIC	_BN_add_word
PUBLIC	_BN_sub_word
EXTRN	_BN_num_bits_word:PROC
EXTRN	_BN_set_negative:PROC
EXTRN	_BN_set_word:PROC
EXTRN	_BN_lshift:PROC
EXTRN	_bn_expand2:PROC
EXTRN	_bn_mul_words:PROC
EXTRN	_bn_div_words:PROC
EXTRN	__aullrem:PROC
EXTRN	__chkstk:PROC
; Function compile flags: /Ogtpy
;	COMDAT _BN_sub_word
_TEXT	SEGMENT
_a$ = 8							; size = 4
_w$ = 12						; size = 4
_BN_sub_word PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\bn\bn_word.c
; Line 168
	mov	ecx, DWORD PTR _w$[esp-4]
	test	ecx, ecx
	jne	SHORT $LN5@BN_sub_wor
; Line 169
	lea	eax, DWORD PTR [ecx+1]
; Line 205
	ret	0
$LN5@BN_sub_wor:
	push	esi
; Line 171
	mov	esi, DWORD PTR _a$[esp]
	push	edi
	mov	eax, DWORD PTR [esi+4]
	test	eax, eax
	jne	SHORT $LN6@BN_sub_wor
; Line 172
	push	ecx
	push	esi
	call	_BN_set_word
	mov	edi, eax
	add	esp, 8
; Line 173
	test	edi, edi
	je	SHORT $LN7@BN_sub_wor
; Line 174
	push	1
	push	esi
	call	_BN_set_negative
	add	esp, 8
$LN7@BN_sub_wor:
; Line 175
	mov	eax, edi
	pop	edi
	pop	esi
; Line 205
	ret	0
$LN6@BN_sub_wor:
; Line 178
	cmp	DWORD PTR [esi+12], 0
	je	SHORT $LN8@BN_sub_wor
; Line 180
	push	ecx
	push	esi
	mov	DWORD PTR [esi+12], 0
	call	_BN_add_word
	add	esp, 8
; Line 181
	mov	DWORD PTR [esi+12], 1
	pop	edi
	pop	esi
; Line 205
	ret	0
$LN8@BN_sub_wor:
; Line 185
	cmp	eax, 1
	jne	SHORT $LN9@BN_sub_wor
	mov	eax, DWORD PTR [esi]
	mov	edx, DWORD PTR [eax]
	cmp	edx, ecx
	jae	SHORT $LN9@BN_sub_wor
; Line 186
	sub	ecx, edx
	mov	DWORD PTR [eax], ecx
; Line 204
	mov	eax, 1
	pop	edi
	mov	DWORD PTR [esi+12], 1
	pop	esi
; Line 205
	ret	0
$LN9@BN_sub_wor:
; Line 192
	mov	eax, DWORD PTR [esi]
	xor	edx, edx
	cmp	DWORD PTR [eax], ecx
	jae	SHORT $LN29@BN_sub_wor
	xor	edi, edi
$LL2@BN_sub_wor:
; Line 196
	mov	eax, DWORD PTR [esi]
; Line 197
	inc	edx
	sub	DWORD PTR [eax+edi], ecx
; Line 198
	mov	ecx, 1
	mov	eax, DWORD PTR [esi]
	lea	edi, DWORD PTR [edx*4]
	cmp	DWORD PTR [edi+eax], ecx
	jb	SHORT $LL2@BN_sub_wor
$LN29@BN_sub_wor:
; Line 193
	mov	eax, DWORD PTR [esi]
	sub	DWORD PTR [eax+edx*4], ecx
; Line 201
	mov	eax, DWORD PTR [esi]
	cmp	DWORD PTR [eax+edx*4], 0
	jne	SHORT $LN12@BN_sub_wor
	mov	eax, DWORD PTR [esi+4]
	dec	eax
	cmp	edx, eax
	jne	SHORT $LN12@BN_sub_wor
; Line 202
	mov	DWORD PTR [esi+4], eax
$LN12@BN_sub_wor:
	pop	edi
; Line 204
	mov	eax, 1
	pop	esi
; Line 205
	ret	0
_BN_sub_word ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _BN_add_word
_TEXT	SEGMENT
_a$ = 8							; size = 4
_w$ = 12						; size = 4
_BN_add_word PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\bn\bn_word.c
; Line 125
	push	edi
; Line 133
	mov	edi, DWORD PTR _w$[esp]
	test	edi, edi
	jne	SHORT $LN5@BN_add_wor
; Line 134
	lea	eax, DWORD PTR [edi+1]
	pop	edi
; Line 158
	ret	0
$LN5@BN_add_wor:
	push	esi
; Line 136
	mov	esi, DWORD PTR _a$[esp+4]
	cmp	DWORD PTR [esi+4], 0
	jne	SHORT $LN6@BN_add_wor
; Line 137
	push	edi
	push	esi
	call	_BN_set_word
	add	esp, 8
	pop	esi
	pop	edi
; Line 158
	ret	0
$LN6@BN_add_wor:
; Line 139
	cmp	DWORD PTR [esi+12], 0
	je	SHORT $LN7@BN_add_wor
; Line 141
	push	edi
	push	esi
	mov	DWORD PTR [esi+12], 0
	call	_BN_sub_word
	add	esp, 8
; Line 142
	cmp	DWORD PTR [esi+4], 0
	je	SHORT $LN18@BN_add_wor
; Line 143
	xor	ecx, ecx
	cmp	DWORD PTR [esi+12], ecx
	sete	cl
	mov	DWORD PTR [esi+12], ecx
	pop	esi
	pop	edi
; Line 158
	ret	0
$LN7@BN_add_wor:
	push	ebx
; Line 146
	xor	ebx, ebx
$LL4@BN_add_wor:
	cmp	ebx, DWORD PTR [esi+4]
	jge	SHORT $LN3@BN_add_wor
	mov	eax, DWORD PTR [esi]
; Line 147
	mov	ecx, DWORD PTR [eax+ebx*4]
	add	ecx, edi
; Line 148
	cmp	ecx, edi
	mov	DWORD PTR [eax+ebx*4], ecx
	sbb	edi, edi
	inc	ebx
	neg	edi
	jne	SHORT $LL4@BN_add_wor
; Line 157
	pop	ebx
	pop	esi
	mov	eax, 1
	pop	edi
; Line 158
	ret	0
$LN3@BN_add_wor:
; Line 150
	test	edi, edi
	je	SHORT $LN9@BN_add_wor
	mov	eax, DWORD PTR [esi+4]
	cmp	ebx, eax
	jne	SHORT $LN9@BN_add_wor
; Line 151
	inc	eax
	cmp	eax, DWORD PTR [esi+8]
	jg	SHORT $LN12@BN_add_wor
	mov	eax, esi
	jmp	SHORT $LN13@BN_add_wor
$LN12@BN_add_wor:
	push	eax
	push	esi
	call	_bn_expand2
	add	esp, 8
$LN13@BN_add_wor:
	test	eax, eax
	jne	SHORT $LN10@BN_add_wor
	pop	ebx
	pop	esi
	pop	edi
; Line 158
	ret	0
$LN10@BN_add_wor:
; Line 154
	mov	eax, DWORD PTR [esi]
	inc	DWORD PTR [esi+4]
	mov	DWORD PTR [eax+ebx*4], edi
$LN9@BN_add_wor:
; Line 157
	mov	eax, 1
	pop	ebx
$LN18@BN_add_wor:
; Line 158
	pop	esi
	pop	edi
	ret	0
_BN_add_word ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _BN_mul_word
_TEXT	SEGMENT
_a$ = 8							; size = 4
_w$ = 12						; size = 4
_BN_mul_word PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\bn\bn_word.c
; Line 208
	push	esi
; Line 213
	mov	esi, DWORD PTR _a$[esp]
	push	edi
	mov	ecx, DWORD PTR [esi+4]
	test	ecx, ecx
	je	SHORT $LN5@BN_mul_wor
; Line 214
	mov	edx, DWORD PTR _w$[esp+4]
	test	edx, edx
	jne	SHORT $LN3@BN_mul_wor
; Line 215
	push	edx
	push	esi
	call	_BN_set_word
	add	esp, 8
; Line 226
	mov	eax, 1
	pop	edi
	pop	esi
; Line 227
	ret	0
$LN3@BN_mul_wor:
; Line 217
	mov	eax, DWORD PTR [esi]
	push	edx
	push	ecx
	push	eax
	push	eax
	call	_bn_mul_words
	mov	edi, eax
	add	esp, 16					; 00000010H
; Line 218
	test	edi, edi
	je	SHORT $LN5@BN_mul_wor
; Line 219
	mov	ecx, DWORD PTR [esi+4]
	inc	ecx
	cmp	ecx, DWORD PTR [esi+8]
	jg	SHORT $LN8@BN_mul_wor
	mov	eax, esi
	jmp	SHORT $LN9@BN_mul_wor
$LN8@BN_mul_wor:
	push	ecx
	push	esi
	call	_bn_expand2
	add	esp, 8
$LN9@BN_mul_wor:
	test	eax, eax
	jne	SHORT $LN6@BN_mul_wor
	pop	edi
	pop	esi
; Line 227
	ret	0
$LN6@BN_mul_wor:
; Line 221
	mov	ecx, DWORD PTR [esi+4]
	mov	eax, DWORD PTR [esi]
	mov	DWORD PTR [eax+ecx*4], edi
	inc	DWORD PTR [esi+4]
$LN5@BN_mul_wor:
; Line 226
	pop	edi
	mov	eax, 1
	pop	esi
; Line 227
	ret	0
_BN_mul_word ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _BN_div_word
_TEXT	SEGMENT
_j$1$ = -4						; size = 4
_a$ = 8							; size = 4
_i$1$ = 12						; size = 4
_w$ = 12						; size = 4
_BN_div_word PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\bn\bn_word.c
; Line 90
	mov	eax, 4
	call	__chkstk
	push	ebx
	push	ebp
; Line 97
	mov	ebp, DWORD PTR _w$[esp+8]
	xor	ebx, ebx
	test	ebp, ebp
	jne	SHORT $LN5@BN_div_wor
; Line 99
	pop	ebp
	or	eax, -1
	pop	ebx
; Line 122
	pop	ecx
	ret	0
$LN5@BN_div_wor:
	push	edi
; Line 100
	mov	edi, DWORD PTR _a$[esp+12]
	cmp	DWORD PTR [edi+4], ebx
	jne	SHORT $LN6@BN_div_wor
; Line 101
	pop	edi
	pop	ebp
	xor	eax, eax
	pop	ebx
; Line 122
	pop	ecx
	ret	0
$LN6@BN_div_wor:
	push	esi
; Line 104
	push	ebp
	call	_BN_num_bits_word
	mov	esi, 32					; 00000020H
	sub	esi, eax
; Line 106
	push	esi
	mov	ecx, esi
	mov	DWORD PTR _j$1$[esp+28], esi
	push	edi
	push	edi
	shl	ebp, cl
	call	_BN_lshift
	add	esp, 16					; 00000010H
	test	eax, eax
	jne	SHORT $LN7@BN_div_wor
; Line 107
	pop	esi
	pop	edi
	pop	ebp
	or	eax, -1
	pop	ebx
; Line 122
	pop	ecx
	ret	0
$LN7@BN_div_wor:
; Line 109
	mov	edx, DWORD PTR [edi+4]
	sub	edx, 1
	mov	DWORD PTR _i$1$[esp+16], edx
	js	SHORT $LN3@BN_div_wor
$LL4@BN_div_wor:
; Line 112
	mov	eax, DWORD PTR [edi]
; Line 113
	push	ebp
	mov	esi, DWORD PTR [eax+edx*4]
	push	esi
	push	ebx
	call	_bn_div_words
; Line 115
	mov	edx, DWORD PTR _i$1$[esp+28]
	mov	ecx, eax
	imul	eax, ebp
	mov	ebx, esi
	add	esp, 12					; 0000000cH
	sub	ebx, eax
	mov	eax, DWORD PTR [edi]
	mov	DWORD PTR [eax+edx*4], ecx
	sub	edx, 1
	mov	DWORD PTR _i$1$[esp+16], edx
	jns	SHORT $LL4@BN_div_wor
	mov	esi, DWORD PTR _j$1$[esp+20]
$LN3@BN_div_wor:
; Line 117
	mov	edx, DWORD PTR [edi+4]
	test	edx, edx
	jle	SHORT $LN8@BN_div_wor
	mov	eax, DWORD PTR [edi]
	cmp	DWORD PTR [eax+edx*4-4], 0
	jne	SHORT $LN8@BN_div_wor
; Line 118
	dec	edx
	mov	DWORD PTR [edi+4], edx
$LN8@BN_div_wor:
; Line 119
	mov	ecx, esi
	pop	esi
	pop	edi
	shr	ebx, cl
	pop	ebp
; Line 121
	mov	eax, ebx
	pop	ebx
; Line 122
	pop	ecx
	ret	0
_BN_div_word ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _BN_mod_word
_TEXT	SEGMENT
_ret$ = -8						; size = 8
_a$ = 8							; size = 4
_w$ = 12						; size = 4
_BN_mod_word PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\bn\bn_word.c
; Line 64
	mov	eax, 8
	call	__chkstk
	push	ebx
; Line 72
	mov	ebx, DWORD PTR _w$[esp+8]
	xorps	xmm0, xmm0
	movlpd	QWORD PTR _ret$[esp+12], xmm0
	test	ebx, ebx
	jne	SHORT $LN5@BN_mod_wor
; Line 73
	or	eax, -1
	pop	ebx
; Line 87
	add	esp, 8
	ret	0
$LN5@BN_mod_wor:
; Line 77
	mov	eax, DWORD PTR _a$[esp+8]
; Line 82
	mov	ecx, DWORD PTR _ret$[esp+12]
	push	esi
	mov	esi, DWORD PTR [eax+4]
	sub	esi, 1
	js	SHORT $LN3@BN_mod_wor
	mov	eax, DWORD PTR [eax]
	push	edi
	lea	edi, DWORD PTR [eax+esi*4]
	npad	5
$LL4@BN_mod_wor:
	push	0
	push	ebx
	xor	eax, eax
	or	eax, DWORD PTR [edi]
	push	ecx
	push	eax
	call	__aullrem
	sub	esi, 1
	lea	edi, DWORD PTR [edi-4]
	mov	ecx, eax
	jns	SHORT $LL4@BN_mod_wor
	pop	edi
$LN3@BN_mod_wor:
	pop	esi
; Line 86
	mov	eax, ecx
	pop	ebx
; Line 87
	add	esp, 8
	ret	0
_BN_mod_word ENDP
_TEXT	ENDS
END