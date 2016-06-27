; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_key.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_EVP_read_pw_string
PUBLIC	_EVP_read_pw_string_min
PUBLIC	_EVP_set_pw_prompt
PUBLIC	_EVP_get_pw_prompt
PUBLIC	_EVP_BytesToKey
PUBLIC	??_C@_0BL@MDAAPAJN@nkey?5?$DM?$DN?5EVP_MAX_KEY_LENGTH?$AA@ ; `string'
PUBLIC	??_C@_0BH@CNNJFBGA@?4?2crypto?2evp?2evp_key?4c?$AA@ ; `string'
PUBLIC	??_C@_0BJ@FELOIPJL@niv?5?$DM?$DN?5EVP_MAX_IV_LENGTH?$AA@ ; `string'
EXTRN	__imp__strncpy:PROC
EXTRN	_OPENSSL_cleanse:PROC
EXTRN	_OpenSSLDie:PROC
EXTRN	_EVP_MD_CTX_init:PROC
EXTRN	_EVP_MD_CTX_cleanup:PROC
EXTRN	_EVP_DigestInit_ex:PROC
EXTRN	_EVP_DigestUpdate:PROC
EXTRN	_EVP_DigestFinal_ex:PROC
EXTRN	_UI_new:PROC
EXTRN	_UI_free:PROC
EXTRN	_UI_add_input_string:PROC
EXTRN	_UI_add_verify_string:PROC
EXTRN	_UI_process:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
EXTRN	___security_cookie:DWORD
_BSS	SEGMENT
_prompt_string DB 050H DUP (?)
_BSS	ENDS
;	COMDAT ??_C@_0BJ@FELOIPJL@niv?5?$DM?$DN?5EVP_MAX_IV_LENGTH?$AA@
CONST	SEGMENT
??_C@_0BJ@FELOIPJL@niv?5?$DM?$DN?5EVP_MAX_IV_LENGTH?$AA@ DB 'niv <= EVP_M'
	DB	'AX_IV_LENGTH', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BH@CNNJFBGA@?4?2crypto?2evp?2evp_key?4c?$AA@
CONST	SEGMENT
??_C@_0BH@CNNJFBGA@?4?2crypto?2evp?2evp_key?4c?$AA@ DB '.\crypto\evp\evp_'
	DB	'key.c', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0BL@MDAAPAJN@nkey?5?$DM?$DN?5EVP_MAX_KEY_LENGTH?$AA@
CONST	SEGMENT
??_C@_0BL@MDAAPAJN@nkey?5?$DM?$DN?5EVP_MAX_KEY_LENGTH?$AA@ DB 'nkey <= EV'
	DB	'P_MAX_KEY_LENGTH', 00H			; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_BytesToKey
_TEXT	SEGMENT
_mds$ = -120						; size = 4
_md$GSCopy$1$ = -116					; size = 4
_addmd$1$ = -112					; size = 4
_niv$1$ = -108						; size = 4
_data$GSCopy$1$ = -104					; size = 4
_rv$1$ = -100						; size = 4
_salt$GSCopy$1$ = -96					; size = 4
_c$ = -92						; size = 24
_md_buf$ = -68						; size = 64
__$ArrayPad$ = -4					; size = 4
_type$ = 8						; size = 4
_md$ = 12						; size = 4
_salt$ = 16						; size = 4
_data$ = 20						; size = 4
_datal$ = 24						; size = 4
_count$ = 28						; size = 4
_key$ = 32						; size = 4
_iv$ = 36						; size = 4
_EVP_BytesToKey PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_key.c
; Line 125
	mov	eax, 120				; 00000078H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+120], eax
	mov	eax, DWORD PTR _md$[esp+116]
	mov	DWORD PTR _md$GSCopy$1$[esp+120], eax
	mov	eax, DWORD PTR _salt$[esp+116]
	push	ebx
	mov	ebx, DWORD PTR _key$[esp+120]
	mov	DWORD PTR _salt$GSCopy$1$[esp+124], eax
	mov	eax, DWORD PTR _data$[esp+120]
	push	ebp
	mov	ebp, DWORD PTR _iv$[esp+124]
	mov	DWORD PTR _data$GSCopy$1$[esp+128], eax
; Line 131
	mov	eax, DWORD PTR _type$[esp+124]
	push	esi
	push	edi
	mov	DWORD PTR _addmd$1$[esp+136], 0
	mov	edi, DWORD PTR [eax+8]
; Line 132
	mov	esi, DWORD PTR [eax+12]
	mov	DWORD PTR _mds$[esp+136], 0
	mov	DWORD PTR _rv$1$[esp+136], 0
	mov	DWORD PTR _niv$1$[esp+136], esi
; Line 133
	cmp	edi, 64					; 00000040H
	jle	SHORT $LN36@EVP_BytesT
	push	OFFSET ??_C@_0BL@MDAAPAJN@nkey?5?$DM?$DN?5EVP_MAX_KEY_LENGTH?$AA@
	push	133					; 00000085H
	push	OFFSET ??_C@_0BH@CNNJFBGA@?4?2crypto?2evp?2evp_key?4c?$AA@
	call	_OpenSSLDie
	add	esp, 12					; 0000000cH
$LN36@EVP_BytesT:
; Line 134
	cmp	esi, 16					; 00000010H
	jle	SHORT $LN38@EVP_BytesT
	push	OFFSET ??_C@_0BJ@FELOIPJL@niv?5?$DM?$DN?5EVP_MAX_IV_LENGTH?$AA@
	push	134					; 00000086H
	push	OFFSET ??_C@_0BH@CNNJFBGA@?4?2crypto?2evp?2evp_key?4c?$AA@
	call	_OpenSSLDie
	add	esp, 12					; 0000000cH
$LN38@EVP_BytesT:
; Line 136
	mov	esi, DWORD PTR _data$GSCopy$1$[esp+136]
	test	esi, esi
	jne	SHORT $LN14@EVP_BytesT
; Line 137
	mov	eax, edi
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 195
	mov	ecx, DWORD PTR __$ArrayPad$[esp+120]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 120				; 00000078H
	ret	0
$LN14@EVP_BytesT:
; Line 139
	lea	eax, DWORD PTR _c$[esp+136]
	push	eax
	call	_EVP_MD_CTX_init
; Line 141
	push	0
	push	DWORD PTR _md$GSCopy$1$[esp+144]
	lea	eax, DWORD PTR _c$[esp+148]
	push	eax
	call	_EVP_DigestInit_ex
	add	esp, 16					; 00000010H
	test	eax, eax
	je	$err$72
	npad	5
$LL2@EVP_BytesT:
; Line 143
	mov	ecx, DWORD PTR _addmd$1$[esp+136]
	mov	eax, ecx
	inc	ecx
	mov	DWORD PTR _addmd$1$[esp+136], ecx
	test	eax, eax
	je	SHORT $LN17@EVP_BytesT
; Line 144
	push	DWORD PTR _mds$[esp+136]
	lea	eax, DWORD PTR _md_buf$[esp+140]
	push	eax
	lea	eax, DWORD PTR _c$[esp+144]
	push	eax
	call	_EVP_DigestUpdate
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$err$72
$LN17@EVP_BytesT:
; Line 146
	push	DWORD PTR _datal$[esp+132]
	lea	eax, DWORD PTR _c$[esp+140]
	push	esi
	push	eax
	call	_EVP_DigestUpdate
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$err$72
; Line 148
	mov	eax, DWORD PTR _salt$GSCopy$1$[esp+136]
	test	eax, eax
	je	SHORT $LN20@EVP_BytesT
; Line 149
	push	8
	push	eax
	lea	eax, DWORD PTR _c$[esp+144]
	push	eax
	call	_EVP_DigestUpdate
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$err$72
$LN20@EVP_BytesT:
; Line 151
	lea	eax, DWORD PTR _mds$[esp+136]
	push	eax
	lea	eax, DWORD PTR _md_buf$[esp+140]
	push	eax
	lea	eax, DWORD PTR _c$[esp+144]
	push	eax
	call	_EVP_DigestFinal_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$err$72
; Line 154
	mov	esi, 1
	cmp	DWORD PTR _count$[esp+132], esi
	jbe	SHORT $LN6@EVP_BytesT
	npad	9
$LL7@EVP_BytesT:
; Line 155
	push	0
	push	DWORD PTR _md$GSCopy$1$[esp+140]
	lea	eax, DWORD PTR _c$[esp+144]
	push	eax
	call	_EVP_DigestInit_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$err$72
; Line 157
	push	DWORD PTR _mds$[esp+136]
	lea	eax, DWORD PTR _md_buf$[esp+140]
	push	eax
	lea	eax, DWORD PTR _c$[esp+144]
	push	eax
	call	_EVP_DigestUpdate
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$err$72
; Line 159
	lea	eax, DWORD PTR _mds$[esp+136]
	push	eax
	lea	eax, DWORD PTR _md_buf$[esp+140]
	push	eax
	lea	eax, DWORD PTR _c$[esp+144]
	push	eax
	call	_EVP_DigestFinal_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	$err$72
; Line 154
	inc	esi
	cmp	esi, DWORD PTR _count$[esp+132]
	jb	SHORT $LL7@EVP_BytesT
$LN6@EVP_BytesT:
; Line 163
	mov	edx, DWORD PTR _mds$[esp+136]
	xor	eax, eax
	test	edi, edi
	je	SHORT $LN69@EVP_BytesT
	npad	4
$LL8@EVP_BytesT:
; Line 167
	cmp	eax, edx
	je	SHORT $LN69@EVP_BytesT
; Line 169
	test	ebx, ebx
	je	SHORT $LN28@EVP_BytesT
; Line 170
	mov	cl, BYTE PTR _md_buf$[esp+eax+136]
	mov	BYTE PTR [ebx], cl
	inc	ebx
$LN28@EVP_BytesT:
; Line 172
	inc	eax
	sub	edi, 1
	jne	SHORT $LL8@EVP_BytesT
$LN69@EVP_BytesT:
; Line 175
	mov	esi, DWORD PTR _niv$1$[esp+136]
	test	esi, esi
	je	SHORT $LN49@EVP_BytesT
	cmp	eax, edx
	je	SHORT $LN49@EVP_BytesT
$LL11@EVP_BytesT:
; Line 179
	cmp	eax, edx
	je	SHORT $LN70@EVP_BytesT
; Line 181
	test	ebp, ebp
	je	SHORT $LN32@EVP_BytesT
; Line 182
	mov	cl, BYTE PTR _md_buf$[esp+eax+136]
	mov	BYTE PTR [ebp], cl
	inc	ebp
$LN32@EVP_BytesT:
; Line 184
	inc	eax
	sub	esi, 1
	jne	SHORT $LL11@EVP_BytesT
$LN70@EVP_BytesT:
	mov	DWORD PTR _niv$1$[esp+136], esi
$LN49@EVP_BytesT:
; Line 187
	test	edi, edi
	jne	SHORT $LN33@EVP_BytesT
	test	esi, esi
	je	SHORT $LN56@EVP_BytesT
$LN33@EVP_BytesT:
; Line 141
	push	0
	push	DWORD PTR _md$GSCopy$1$[esp+140]
	lea	eax, DWORD PTR _c$[esp+144]
	push	eax
	call	_EVP_DigestInit_ex
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $err$72
	mov	esi, DWORD PTR _data$GSCopy$1$[esp+136]
	jmp	$LL2@EVP_BytesT
$LN56@EVP_BytesT:
; Line 190
	mov	eax, DWORD PTR _type$[esp+132]
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR _rv$1$[esp+136], eax
$err$72:
; Line 192
	lea	eax, DWORD PTR _c$[esp+136]
	push	eax
	call	_EVP_MD_CTX_cleanup
; Line 193
	lea	eax, DWORD PTR _md_buf$[esp+140]
	push	64					; 00000040H
	push	eax
	call	_OPENSSL_cleanse
; Line 195
	mov	ecx, DWORD PTR __$ArrayPad$[esp+148]
	add	esp, 12					; 0000000cH
	mov	eax, DWORD PTR _rv$1$[esp+136]
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 120				; 00000078H
	ret	0
_EVP_BytesToKey ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_get_pw_prompt
_TEXT	SEGMENT
_EVP_get_pw_prompt PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_key.c
; Line 81
	xor	ecx, ecx
	mov	eax, OFFSET _prompt_string
	cmp	BYTE PTR _prompt_string, cl
	cmove	eax, ecx
; Line 85
	ret	0
_EVP_get_pw_prompt ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_set_pw_prompt
_TEXT	SEGMENT
_prompt$ = 8						; size = 4
_EVP_set_pw_prompt PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_key.c
; Line 71
	mov	eax, DWORD PTR _prompt$[esp-4]
	test	eax, eax
	jne	SHORT $LN2@EVP_set_pw
; Line 72
	mov	BYTE PTR _prompt_string, al
; Line 77
	ret	0
$LN2@EVP_set_pw:
; Line 74
	push	79					; 0000004fH
	push	eax
	push	OFFSET _prompt_string
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH
; Line 75
	mov	BYTE PTR _prompt_string+79, 0
; Line 77
	ret	0
_EVP_set_pw_prompt ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_read_pw_string_min
_TEXT	SEGMENT
_buff$ = -516						; size = 512
__$ArrayPad$ = -4					; size = 4
_buf$ = 8						; size = 4
_min$ = 12						; size = 4
_len$ = 16						; size = 4
_prompt$ = 20						; size = 4
_verify$ = 24						; size = 4
_EVP_read_pw_string_min PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_key.c
; Line 99
	mov	eax, 516				; 00000204H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+516], eax
	push	ebp
	mov	ebp, DWORD PTR _buf$[esp+516]
	push	esi
	mov	esi, DWORD PTR _prompt$[esp+520]
	push	edi
; Line 104
	test	esi, esi
	jne	SHORT $LN2@EVP_read_p
	cmp	BYTE PTR _prompt_string, 0
	mov	eax, OFFSET _prompt_string
	cmove	eax, esi
	mov	esi, eax
$LN2@EVP_read_p:
; Line 106
	call	_UI_new
	mov	edi, eax
; Line 107
	test	edi, edi
	jne	SHORT $LN3@EVP_read_p
; Line 108
	pop	edi
	pop	esi
	or	eax, -1
	pop	ebp
; Line 119
	mov	ecx, DWORD PTR __$ArrayPad$[esp+516]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 516				; 00000204H
	ret	0
$LN3@EVP_read_p:
	push	ebx
; Line 109
	mov	ebx, DWORD PTR _len$[esp+528]
	mov	eax, 511				; 000001ffH
	cmp	ebx, 512				; 00000200H
	cmovge	ebx, eax
	push	ebx
	push	DWORD PTR _min$[esp+532]
	push	ebp
	push	0
	push	esi
	push	edi
	call	_UI_add_input_string
	add	esp, 24					; 00000018H
; Line 111
	cmp	DWORD PTR _verify$[esp+528], 0
	je	SHORT $LN4@EVP_read_p
; Line 112
	push	ebp
	push	ebx
	push	DWORD PTR _min$[esp+536]
	lea	eax, DWORD PTR _buff$[esp+544]
	push	eax
	push	0
	push	esi
	push	edi
	call	_UI_add_verify_string
	add	esp, 28					; 0000001cH
$LN4@EVP_read_p:
; Line 115
	push	edi
	call	_UI_process
; Line 116
	push	edi
	mov	esi, eax
	call	_UI_free
; Line 117
	lea	eax, DWORD PTR _buff$[esp+540]
	push	512					; 00000200H
	push	eax
	call	_OPENSSL_cleanse
; Line 119
	mov	ecx, DWORD PTR __$ArrayPad$[esp+548]
	add	esp, 16					; 00000010H
	mov	eax, esi
	pop	ebx
	pop	edi
	pop	esi
	pop	ebp
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 516				; 00000204H
	ret	0
_EVP_read_pw_string_min ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _EVP_read_pw_string
_TEXT	SEGMENT
_buf$ = 8						; size = 4
_len$ = 12						; size = 4
_prompt$ = 16						; size = 4
_verify$ = 20						; size = 4
_EVP_read_pw_string PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\evp\evp_key.c
; Line 94
	push	DWORD PTR _verify$[esp-4]
	push	DWORD PTR _prompt$[esp]
	push	DWORD PTR _len$[esp+4]
	push	0
	push	DWORD PTR _buf$[esp+12]
	call	_EVP_read_pw_string_min
	add	esp, 20					; 00000014H
; Line 95
	ret	0
_EVP_read_pw_string ENDP
_TEXT	ENDS
END
