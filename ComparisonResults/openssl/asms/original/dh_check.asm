; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\dh\dh_check.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_DH_check
PUBLIC	_DH_check_pub_key
EXTRN	_BN_value_one:PROC
EXTRN	_BN_CTX_new:PROC
EXTRN	_BN_CTX_free:PROC
EXTRN	_BN_CTX_start:PROC
EXTRN	_BN_CTX_get:PROC
EXTRN	_BN_CTX_end:PROC
EXTRN	_BN_copy:PROC
EXTRN	_BN_div:PROC
EXTRN	_BN_mod_word:PROC
EXTRN	_BN_sub_word:PROC
EXTRN	_BN_set_word:PROC
EXTRN	_BN_cmp:PROC
EXTRN	_BN_mod_exp:PROC
EXTRN	_BN_rshift1:PROC
EXTRN	_BN_is_prime_ex:PROC
; Function compile flags: /Ogtpy
;	COMDAT _DH_check_pub_key
_TEXT	SEGMENT
_dh$ = 8						; size = 4
_pub_key$ = 12						; size = 4
_ret$ = 16						; size = 4
_DH_check_pub_key PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\dh\dh_check.c
; Line 152
	push	ebx
	push	ebp
	push	edi
; Line 157
	mov	edi, DWORD PTR _ret$[esp+8]
	xor	ebp, ebp
	mov	DWORD PTR [edi], ebp
; Line 158
	call	_BN_CTX_new
	mov	ebx, eax
; Line 159
	test	ebx, ebx
	je	$LN17@DH_check_p
; Line 161
	push	esi
	push	ebx
	call	_BN_CTX_start
; Line 162
	push	ebx
	call	_BN_CTX_get
	mov	esi, eax
	add	esp, 8
; Line 163
	test	esi, esi
	je	$err$19
	push	1
	push	esi
	call	_BN_set_word
	add	esp, 8
	test	eax, eax
	je	$err$19
; Line 165
	push	esi
	push	DWORD PTR _pub_key$[esp+16]
	call	_BN_cmp
	add	esp, 8
	test	eax, eax
	jg	SHORT $LN5@DH_check_p
; Line 166
	or	DWORD PTR [edi], 1
$LN5@DH_check_p:
; Line 167
	mov	eax, DWORD PTR _dh$[esp+12]
	push	DWORD PTR [eax+8]
	push	esi
	call	_BN_copy
	add	esp, 8
	test	eax, eax
	je	SHORT $err$19
	push	1
	push	esi
	call	_BN_sub_word
	add	esp, 8
	test	eax, eax
	je	SHORT $err$19
; Line 169
	push	esi
	push	DWORD PTR _pub_key$[esp+16]
	call	_BN_cmp
	add	esp, 8
	test	eax, eax
	js	SHORT $LN8@DH_check_p
; Line 170
	or	DWORD PTR [edi], 2
$LN8@DH_check_p:
; Line 172
	mov	eax, DWORD PTR _dh$[esp+12]
	mov	ecx, DWORD PTR [eax+36]
	test	ecx, ecx
	je	SHORT $LN11@DH_check_p
; Line 174
	push	ebx
	push	DWORD PTR [eax+8]
	push	ecx
	push	DWORD PTR _pub_key$[esp+24]
	push	esi
	call	_BN_mod_exp
	add	esp, 20					; 00000014H
	test	eax, eax
	je	SHORT $err$19
; Line 176
	cmp	DWORD PTR [esi+4], 1
	jne	SHORT $LN14@DH_check_p
	mov	eax, DWORD PTR [esi]
	cmp	DWORD PTR [eax], 1
	jne	SHORT $LN14@DH_check_p
	cmp	DWORD PTR [esi+12], ebp
	je	SHORT $LN11@DH_check_p
$LN14@DH_check_p:
; Line 177
	or	DWORD PTR [edi], 4
$LN11@DH_check_p:
; Line 180
	mov	ebp, 1
$err$19:
; Line 183
	push	ebx
	call	_BN_CTX_end
; Line 184
	push	ebx
	call	_BN_CTX_free
	add	esp, 8
	pop	esi
$LN17@DH_check_p:
; Line 186
	pop	edi
	mov	eax, ebp
	pop	ebp
	pop	ebx
; Line 187
	ret	0
_DH_check_pub_key ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _DH_check
_TEXT	SEGMENT
_dh$ = 8						; size = 4
_t2$1$ = 12						; size = 4
_ret$ = 12						; size = 4
_DH_check PROC						; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\dh\dh_check.c
; Line 75
	push	ebx
	push	esi
; Line 81
	mov	esi, DWORD PTR _ret$[esp+4]
	mov	DWORD PTR [esi], 0
; Line 82
	call	_BN_CTX_new
	mov	ebx, eax
; Line 83
	test	ebx, ebx
	je	$LN42@DH_check
; Line 85
	push	ebp
	push	edi
	push	ebx
	call	_BN_CTX_start
; Line 86
	push	ebx
	call	_BN_CTX_get
	mov	ebp, eax
	add	esp, 8
; Line 87
	test	ebp, ebp
	je	$LN47@DH_check
; Line 89
	push	ebx
	call	_BN_CTX_get
	add	esp, 4
	mov	DWORD PTR _t2$1$[esp+12], eax
; Line 90
	test	eax, eax
	je	$LN47@DH_check
; Line 93
	mov	edi, DWORD PTR _dh$[esp+12]
	cmp	DWORD PTR [edi+36], 0
	je	$LN5@DH_check
; Line 94
	call	_BN_value_one
	push	eax
	push	DWORD PTR [edi+12]
	call	_BN_cmp
	add	esp, 8
	test	eax, eax
	jle	SHORT $LN15@DH_check
; Line 96
	push	DWORD PTR [edi+8]
	push	DWORD PTR [edi+12]
	call	_BN_cmp
	add	esp, 8
	test	eax, eax
	jns	SHORT $LN15@DH_check
; Line 100
	push	ebx
	push	DWORD PTR [edi+8]
	push	DWORD PTR [edi+36]
	push	DWORD PTR [edi+12]
	push	ebp
	call	_BN_mod_exp
	add	esp, 20					; 00000014H
	test	eax, eax
	je	$LN47@DH_check
; Line 102
	cmp	DWORD PTR [ebp+4], 1
	jne	SHORT $LN15@DH_check
	mov	eax, DWORD PTR [ebp]
	cmp	DWORD PTR [eax], 1
	jne	SHORT $LN15@DH_check
	cmp	DWORD PTR [ebp+12], 0
	je	SHORT $LN12@DH_check
$LN15@DH_check:
; Line 103
	or	DWORD PTR [esi], 8
$LN12@DH_check:
; Line 105
	push	0
	push	ebx
	push	0
	push	DWORD PTR [edi+36]
	call	_BN_is_prime_ex
	add	esp, 16					; 00000010H
	test	eax, eax
	jne	SHORT $LN16@DH_check
; Line 106
	or	DWORD PTR [esi], 16			; 00000010H
$LN16@DH_check:
; Line 108
	push	ebx
	push	DWORD PTR [edi+36]
	push	DWORD PTR [edi+8]
	push	DWORD PTR _t2$1$[esp+24]
	push	ebp
	call	_BN_div
	add	esp, 20					; 00000014H
	test	eax, eax
	je	$LN47@DH_check
; Line 110
	mov	ecx, DWORD PTR _t2$1$[esp+12]
	cmp	DWORD PTR [ecx+4], 1
	jne	SHORT $LN21@DH_check
	mov	eax, DWORD PTR [ecx]
	cmp	DWORD PTR [eax], 1
	jne	SHORT $LN21@DH_check
	cmp	DWORD PTR [ecx+12], 0
	je	SHORT $LN18@DH_check
$LN21@DH_check:
; Line 111
	or	DWORD PTR [esi], 32			; 00000020H
$LN18@DH_check:
; Line 112
	mov	eax, DWORD PTR [edi+40]
	test	eax, eax
	je	SHORT $LN30@DH_check
	push	ebp
	push	eax
	call	_BN_cmp
	add	esp, 8
	test	eax, eax
	je	SHORT $LN30@DH_check
; Line 113
	or	DWORD PTR [esi], 64			; 00000040H
; Line 115
	jmp	SHORT $LN30@DH_check
$LN5@DH_check:
	mov	ecx, DWORD PTR [edi+12]
	mov	edx, DWORD PTR [ecx+4]
	cmp	edx, 1
	jne	SHORT $LN32@DH_check
	mov	eax, DWORD PTR [ecx]
	cmp	DWORD PTR [eax], 2
	jne	SHORT $LN26@DH_check
	cmp	DWORD PTR [ecx+12], 0
	jne	SHORT $LN26@DH_check
; Line 116
	push	24					; 00000018H
	push	DWORD PTR [edi+8]
	call	_BN_mod_word
	add	esp, 8
; Line 117
	cmp	eax, 11					; 0000000bH
	je	SHORT $LN30@DH_check
; Line 118
	or	DWORD PTR [esi], 8
; Line 119
	jmp	SHORT $LN30@DH_check
$LN26@DH_check:
; Line 127
	cmp	edx, 1
	jne	SHORT $LN32@DH_check
	mov	eax, DWORD PTR [ecx]
	cmp	DWORD PTR [eax], 5
	jne	SHORT $LN32@DH_check
	cmp	DWORD PTR [ecx+12], 0
	jne	SHORT $LN32@DH_check
; Line 128
	push	10					; 0000000aH
	push	DWORD PTR [edi+8]
	call	_BN_mod_word
	add	esp, 8
; Line 129
	cmp	eax, 3
	je	SHORT $LN30@DH_check
	cmp	eax, 7
	je	SHORT $LN30@DH_check
; Line 130
	or	DWORD PTR [esi], 8
; Line 131
	jmp	SHORT $LN30@DH_check
$LN32@DH_check:
; Line 132
	or	DWORD PTR [esi], 4
$LN30@DH_check:
; Line 134
	push	0
	push	ebx
	push	0
	push	DWORD PTR [edi+8]
	call	_BN_is_prime_ex
	add	esp, 16					; 00000010H
	test	eax, eax
	jne	SHORT $LN35@DH_check
; Line 135
	or	DWORD PTR [esi], 1
; Line 142
	lea	esi, DWORD PTR [eax+1]
	jmp	SHORT $err$51
$LN35@DH_check:
; Line 136
	cmp	DWORD PTR [edi+36], 0
	jne	SHORT $LN39@DH_check
; Line 137
	push	DWORD PTR [edi+8]
	push	ebp
	call	_BN_rshift1
	add	esp, 8
	test	eax, eax
	je	SHORT $LN47@DH_check
; Line 139
	push	0
	push	ebx
	push	0
	push	ebp
	call	_BN_is_prime_ex
	add	esp, 16					; 00000010H
	test	eax, eax
	jne	SHORT $LN39@DH_check
; Line 140
	or	DWORD PTR [esi], 2
$LN39@DH_check:
; Line 142
	mov	esi, 1
	jmp	SHORT $err$51
$LN47@DH_check:
	xor	esi, esi
$err$51:
; Line 145
	push	ebx
	call	_BN_CTX_end
; Line 146
	push	ebx
	call	_BN_CTX_free
	add	esp, 8
; Line 148
	mov	eax, esi
	pop	edi
	pop	ebp
	pop	esi
	pop	ebx
; Line 149
	ret	0
$LN42@DH_check:
	pop	esi
; Line 148
	xor	eax, eax
	pop	ebx
; Line 149
	ret	0
_DH_check ENDP
_TEXT	ENDS
END