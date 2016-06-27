; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	??_C@_09DHMKJJNA@ASN1_TIME?$AA@			; `string'
;	COMDAT ??_C@_09DHMKJJNA@ASN1_TIME?$AA@
CONST	SEGMENT
??_C@_09DHMKJJNA@ASN1_TIME?$AA@ DB 'ASN1_TIME', 00H	; `string'
CONST	ENDS
CONST	SEGMENT
?local_it@?1??ASN1_TIME_it@@9@9 DB 05H			; `ASN1_TIME_it'::`2'::local_it
	ORG $+3
	DD	0c000H
	DD	00H
	DD	00H
	DD	00H
	DD	010H
	DD	FLAT:??_C@_09DHMKJJNA@ASN1_TIME?$AA@
CONST	ENDS
PUBLIC	_ASN1_TIME_diff
PUBLIC	_ASN1_TIME_new
PUBLIC	_ASN1_TIME_free
PUBLIC	_d2i_ASN1_TIME
PUBLIC	_i2d_ASN1_TIME
PUBLIC	_ASN1_TIME_it
PUBLIC	_ASN1_TIME_set
PUBLIC	_ASN1_TIME_adj
PUBLIC	_ASN1_TIME_check
PUBLIC	_ASN1_TIME_to_generalizedtime
PUBLIC	_ASN1_TIME_set_string
PUBLIC	??_C@_0BH@IBOPBBIO@?4?2crypto?2asn1?2a_time?4c?$AA@ ; `string'
PUBLIC	??_C@_02CLJDCEPA@19?$AA@			; `string'
PUBLIC	??_C@_02PIBHCBOA@20?$AA@			; `string'
EXTRN	__imp___time64:PROC
EXTRN	_BUF_strlcpy:PROC
EXTRN	_BUF_strlcat:PROC
EXTRN	_ERR_put_error:PROC
EXTRN	_OPENSSL_gmtime:PROC
EXTRN	_OPENSSL_gmtime_adj:PROC
EXTRN	_OPENSSL_gmtime_diff:PROC
EXTRN	_ASN1_STRING_copy:PROC
EXTRN	_ASN1_STRING_set:PROC
EXTRN	_ASN1_UTCTIME_check:PROC
EXTRN	_ASN1_UTCTIME_adj:PROC
EXTRN	_ASN1_GENERALIZEDTIME_check:PROC
EXTRN	_ASN1_GENERALIZEDTIME_adj:PROC
EXTRN	_ASN1_GENERALIZEDTIME_new:PROC
EXTRN	_ASN1_item_new:PROC
EXTRN	_ASN1_item_free:PROC
EXTRN	_ASN1_item_d2i:PROC
EXTRN	_ASN1_item_i2d:PROC
EXTRN	_asn1_utctime_to_tm:PROC
EXTRN	_asn1_generalizedtime_to_tm:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__chkstk:PROC
EXTRN	___security_cookie:DWORD
;	COMDAT ??_C@_02PIBHCBOA@20?$AA@
CONST	SEGMENT
??_C@_02PIBHCBOA@20?$AA@ DB '20', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_02CLJDCEPA@19?$AA@
CONST	SEGMENT
??_C@_02CLJDCEPA@19?$AA@ DB '19', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BH@IBOPBBIO@?4?2crypto?2asn1?2a_time?4c?$AA@
CONST	SEGMENT
??_C@_0BH@IBOPBBIO@?4?2crypto?2asn1?2a_time?4c?$AA@ DB '.\crypto\asn1\a_t'
	DB	'ime.c', 00H					; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _asn1_time_to_tm
_TEXT	SEGMENT
_now_t$1 = -8						; size = 8
_tm$ = 8						; size = 4
_t$ = 12						; size = 4
_asn1_time_to_tm PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 202
	mov	eax, 8
	call	__chkstk
; Line 203
	mov	eax, DWORD PTR _t$[esp+4]
	test	eax, eax
	jne	SHORT $LN2@asn1_time_
; File c:\program files\windows kits\10\include\10.0.10586.0\ucrt\time.h
; Line 535
	lea	eax, DWORD PTR _now_t$1[esp+8]
	push	eax
	call	DWORD PTR __imp___time64
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 206
	push	DWORD PTR _tm$[esp+8]
	lea	eax, DWORD PTR _now_t$1[esp+16]
	push	eax
	call	_OPENSSL_gmtime
	add	esp, 12					; 0000000cH
	neg	eax
	sbb	eax, eax
	neg	eax
; Line 217
	add	esp, 8
	ret	0
$LN2@asn1_time_:
; Line 211
	mov	ecx, DWORD PTR [eax+4]
	cmp	ecx, 23					; 00000017H
	jne	SHORT $LN4@asn1_time_
; Line 217
	add	esp, 8
; Line 212
	mov	DWORD PTR _t$[esp-4], eax
	jmp	_asn1_utctime_to_tm
$LN4@asn1_time_:
; Line 213
	cmp	ecx, 24					; 00000018H
	jne	SHORT $LN6@asn1_time_
; Line 217
	add	esp, 8
; Line 214
	mov	DWORD PTR _t$[esp-4], eax
	jmp	_asn1_generalizedtime_to_tm
$LN6@asn1_time_:
; Line 216
	xor	eax, eax
; Line 217
	add	esp, 8
	ret	0
_asn1_time_to_tm ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ASN1_TIME_set_string
_TEXT	SEGMENT
_t$ = -16						; size = 16
_s$ = 8							; size = 4
_str$ = 12						; size = 4
_ASN1_TIME_set_string PROC				; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 180
	mov	eax, 16					; 00000010H
	call	__chkstk
; Line 183
	mov	edx, DWORD PTR _str$[esp+12]
	mov	ecx, edx
	push	esi
	lea	esi, DWORD PTR [ecx+1]
$LL17@ASN1_TIME_:
	mov	al, BYTE PTR [ecx]
	inc	ecx
	test	al, al
	jne	SHORT $LL17@ASN1_TIME_
; Line 132
	lea	eax, DWORD PTR _t$[esp+20]
; Line 184
	mov	DWORD PTR _t$[esp+28], edx
	sub	ecx, esi
; Line 185
	mov	DWORD PTR _t$[esp+32], 0
; Line 132
	push	eax
; Line 183
	mov	DWORD PTR _t$[esp+24], ecx
; Line 187
	mov	DWORD PTR _t$[esp+28], 23		; 00000017H
; Line 132
	call	_ASN1_UTCTIME_check
	add	esp, 4
	pop	esi
; Line 189
	test	eax, eax
	jne	SHORT $LN3@ASN1_TIME_
; Line 130
	lea	eax, DWORD PTR _t$[esp+16]
; Line 190
	mov	DWORD PTR _t$[esp+20], 24		; 00000018H
; Line 130
	push	eax
	call	_ASN1_GENERALIZEDTIME_check
	add	esp, 4
; Line 191
	test	eax, eax
	jne	SHORT $LN3@ASN1_TIME_
$LN18@ASN1_TIME_:
; Line 192
	xor	eax, eax
; Line 199
	add	esp, 16					; 00000010H
	ret	0
$LN3@ASN1_TIME_:
; Line 195
	mov	eax, DWORD PTR _s$[esp+12]
	test	eax, eax
	je	SHORT $LN4@ASN1_TIME_
	lea	ecx, DWORD PTR _t$[esp+16]
	push	ecx
	push	eax
	call	_ASN1_STRING_copy
	add	esp, 8
	test	eax, eax
	je	SHORT $LN18@ASN1_TIME_
$LN4@ASN1_TIME_:
; Line 198
	mov	eax, 1
; Line 199
	add	esp, 16					; 00000010H
	ret	0
_ASN1_TIME_set_string ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ASN1_TIME_to_generalizedtime
_TEXT	SEGMENT
_t$ = 8							; size = 4
_out$ = 12						; size = 4
_ASN1_TIME_to_generalizedtime PROC			; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 139
	push	esi
; Line 129
	mov	esi, DWORD PTR _t$[esp]
	mov	eax, DWORD PTR [esi+4]
	cmp	eax, 24					; 00000018H
	jne	SHORT $LN15@ASN1_TIME_
; Line 130
	push	esi
	call	_ASN1_GENERALIZEDTIME_check
	jmp	SHORT $LN22@ASN1_TIME_
$LN15@ASN1_TIME_:
; Line 131
	cmp	eax, 23					; 00000017H
	jne	$LN19@ASN1_TIME_
; Line 132
	push	esi
	call	_ASN1_UTCTIME_check
$LN22@ASN1_TIME_:
	add	esp, 4
; Line 144
	test	eax, eax
	je	$LN19@ASN1_TIME_
; Line 147
	push	ebx
	mov	ebx, DWORD PTR _out$[esp+4]
	push	edi
	test	ebx, ebx
	je	SHORT $LN5@ASN1_TIME_
	mov	edi, DWORD PTR [ebx]
	test	edi, edi
	jne	SHORT $LN7@ASN1_TIME_
$LN5@ASN1_TIME_:
; Line 148
	call	_ASN1_GENERALIZEDTIME_new
	mov	edi, eax
	test	edi, edi
	je	SHORT $LN24@ASN1_TIME_
; Line 150
	test	ebx, ebx
	je	SHORT $LN7@ASN1_TIME_
; Line 151
	mov	DWORD PTR [ebx], edi
$LN7@ASN1_TIME_:
; Line 156
	cmp	DWORD PTR [esi+4], 24			; 00000018H
	jne	SHORT $LN8@ASN1_TIME_
; Line 157
	push	DWORD PTR [esi]
	push	DWORD PTR [esi+8]
	push	edi
	call	_ASN1_STRING_set
	add	esp, 12					; 0000000cH
	neg	eax
	sbb	eax, eax
	and	eax, edi
	pop	edi
	pop	ebx
	pop	esi
; Line 177
	ret	0
$LN8@ASN1_TIME_:
; Line 163
	mov	eax, DWORD PTR [esi]
	add	eax, 2
	push	eax
	push	0
	push	edi
	call	_ASN1_STRING_set
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN10@ASN1_TIME_
$LN24@ASN1_TIME_:
	pop	edi
	pop	ebx
; Line 164
	xor	eax, eax
	pop	esi
; Line 177
	ret	0
$LN10@ASN1_TIME_:
; Line 169
	mov	eax, DWORD PTR [esi+8]
	mov	ebx, DWORD PTR [esi]
	push	ebp
	mov	ebp, DWORD PTR [edi+8]
	add	ebx, 3
	cmp	BYTE PTR [eax], 53			; 00000035H
; Line 170
	push	ebx
	jb	SHORT $LN11@ASN1_TIME_
	push	OFFSET ??_C@_02CLJDCEPA@19?$AA@
	jmp	SHORT $LN23@ASN1_TIME_
$LN11@ASN1_TIME_:
; Line 172
	push	OFFSET ??_C@_02PIBHCBOA@20?$AA@
$LN23@ASN1_TIME_:
	push	ebp
	call	_BUF_strlcpy
	add	esp, 12					; 0000000cH
; Line 174
	push	ebx
	push	DWORD PTR [esi+8]
	push	ebp
	call	_BUF_strlcat
	add	esp, 12					; 0000000cH
; Line 176
	mov	eax, edi
	pop	ebp
	pop	edi
	pop	ebx
	pop	esi
; Line 177
	ret	0
$LN19@ASN1_TIME_:
; Line 145
	xor	eax, eax
	pop	esi
; Line 177
	ret	0
_ASN1_TIME_to_generalizedtime ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ASN1_TIME_check
_TEXT	SEGMENT
_t$ = 8							; size = 4
_ASN1_TIME_check PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 129
	mov	eax, DWORD PTR _t$[esp-4]
	mov	ecx, DWORD PTR [eax+4]
	cmp	ecx, 24					; 00000018H
	jne	SHORT $LN2@ASN1_TIME_
; Line 130
	mov	DWORD PTR _t$[esp-4], eax
	jmp	_ASN1_GENERALIZEDTIME_check
$LN2@ASN1_TIME_:
; Line 131
	cmp	ecx, 23					; 00000017H
	jne	SHORT $LN4@ASN1_TIME_
; Line 132
	mov	DWORD PTR _t$[esp-4], eax
	jmp	_ASN1_UTCTIME_check
$LN4@ASN1_TIME_:
; Line 133
	xor	eax, eax
; Line 134
	ret	0
_ASN1_TIME_check ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ASN1_TIME_adj
_TEXT	SEGMENT
_t$GSCopy$ = -48					; size = 8
_data$ = -40						; size = 36
__$ArrayPad$ = -4					; size = 4
_s$ = 8							; size = 4
_t$ = 12						; size = 8
_offset_day$ = 20					; size = 4
_offset_sec$ = 24					; size = 4
_ASN1_TIME_adj PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 109
	mov	eax, 48					; 00000030H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+48], eax
	mov	eax, DWORD PTR _t$[esp+44]
	push	ebx
	push	ebp
	mov	ebp, DWORD PTR _s$[esp+52]
	mov	DWORD PTR _t$GSCopy$[esp+56], eax
	mov	eax, DWORD PTR _t$[esp+56]
	push	esi
	mov	esi, DWORD PTR _offset_day$[esp+56]
	mov	DWORD PTR _t$GSCopy$[esp+64], eax
; Line 113
	lea	eax, DWORD PTR _data$[esp+60]
	push	edi
	mov	edi, DWORD PTR _offset_sec$[esp+60]
	push	eax
	lea	eax, DWORD PTR _t$GSCopy$[esp+68]
	push	eax
	call	_OPENSSL_gmtime
	mov	ebx, eax
	add	esp, 8
; Line 114
	test	ebx, ebx
	jne	SHORT $LN2@ASN1_TIME_
; Line 115
	push	115					; 00000073H
	push	OFFSET ??_C@_0BH@IBOPBBIO@?4?2crypto?2asn1?2a_time?4c?$AA@
	push	173					; 000000adH
	push	217					; 000000d9H
	push	13					; 0000000dH
	call	_ERR_put_error
	add	esp, 20					; 00000014H
$LN9@ASN1_TIME_:
; Line 116
	pop	edi
	pop	esi
	pop	ebp
	xor	eax, eax
	pop	ebx
; Line 125
	mov	ecx, DWORD PTR __$ArrayPad$[esp+48]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 48					; 00000030H
	ret	0
$LN2@ASN1_TIME_:
; Line 118
	test	esi, esi
	jne	SHORT $LN4@ASN1_TIME_
	test	edi, edi
	je	SHORT $LN5@ASN1_TIME_
$LN4@ASN1_TIME_:
; Line 119
	push	edi
	push	esi
	push	ebx
	call	_OPENSSL_gmtime_adj
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $LN9@ASN1_TIME_
$LN5@ASN1_TIME_:
; Line 122
	mov	eax, DWORD PTR [ebx+20]
	cmp	eax, 50					; 00000032H
	jl	SHORT $LN6@ASN1_TIME_
	cmp	eax, 150				; 00000096H
	jge	SHORT $LN6@ASN1_TIME_
; Line 123
	push	edi
	push	esi
	push	DWORD PTR _t$GSCopy$[esp+76]
	push	DWORD PTR _t$GSCopy$[esp+76]
	push	ebp
	call	_ASN1_UTCTIME_adj
	jmp	SHORT $LN8@ASN1_TIME_
$LN6@ASN1_TIME_:
; Line 124
	push	edi
	push	esi
	push	DWORD PTR _t$GSCopy$[esp+76]
	push	DWORD PTR _t$GSCopy$[esp+76]
	push	ebp
	call	_ASN1_GENERALIZEDTIME_adj
$LN8@ASN1_TIME_:
; Line 125
	mov	ecx, DWORD PTR __$ArrayPad$[esp+84]
	add	esp, 20					; 00000014H
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 48					; 00000030H
	ret	0
_ASN1_TIME_adj ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ASN1_TIME_set
_TEXT	SEGMENT
_s$ = 8							; size = 4
_t$ = 12						; size = 8
_ASN1_TIME_set PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 104
	push	0
	push	0
	push	DWORD PTR _t$[esp+8]
	push	DWORD PTR _t$[esp+8]
	push	DWORD PTR _s$[esp+12]
	call	_ASN1_TIME_adj
	add	esp, 20					; 00000014H
; Line 105
	ret	0
_ASN1_TIME_set ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ASN1_TIME_it
_TEXT	SEGMENT
_ASN1_TIME_it PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 71
	mov	eax, OFFSET ?local_it@?1??ASN1_TIME_it@@9@9
	ret	0
_ASN1_TIME_it ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _i2d_ASN1_TIME
_TEXT	SEGMENT
_a$ = 8							; size = 4
_out$ = 12						; size = 4
_i2d_ASN1_TIME PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 73
	push	OFFSET ?local_it@?1??ASN1_TIME_it@@9@9
	push	DWORD PTR _out$[esp]
	push	DWORD PTR _a$[esp+4]
	call	_ASN1_item_i2d
	add	esp, 12					; 0000000cH
	ret	0
_i2d_ASN1_TIME ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _d2i_ASN1_TIME
_TEXT	SEGMENT
_a$ = 8							; size = 4
_in$ = 12						; size = 4
_len$ = 16						; size = 4
_d2i_ASN1_TIME PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 73
	push	OFFSET ?local_it@?1??ASN1_TIME_it@@9@9
	push	DWORD PTR _len$[esp]
	push	DWORD PTR _in$[esp+4]
	push	DWORD PTR _a$[esp+8]
	call	_ASN1_item_d2i
	add	esp, 16					; 00000010H
	ret	0
_d2i_ASN1_TIME ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ASN1_TIME_free
_TEXT	SEGMENT
_a$ = 8							; size = 4
_ASN1_TIME_free PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 73
	push	OFFSET ?local_it@?1??ASN1_TIME_it@@9@9
	push	DWORD PTR _a$[esp]
	call	_ASN1_item_free
	add	esp, 8
	ret	0
_ASN1_TIME_free ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ASN1_TIME_new
_TEXT	SEGMENT
_ASN1_TIME_new PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 73
	push	OFFSET ?local_it@?1??ASN1_TIME_it@@9@9
	call	_ASN1_item_new
	add	esp, 4
	ret	0
_ASN1_TIME_new ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ASN1_TIME_diff
_TEXT	SEGMENT
_now_t$1 = -84						; size = 8
_tm_from$ = -76						; size = 36
_tm_to$ = -40						; size = 36
__$ArrayPad$ = -4					; size = 4
_pday$ = 8						; size = 4
_psec$ = 12						; size = 4
_from$ = 16						; size = 4
_to$ = 20						; size = 4
_ASN1_TIME_diff PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 221
	mov	eax, 84					; 00000054H
	call	__chkstk
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+84], eax
	mov	eax, DWORD PTR _from$[esp+80]
	push	ebx
	mov	ebx, DWORD PTR _psec$[esp+84]
	push	esi
	mov	esi, DWORD PTR _to$[esp+88]
	push	edi
	mov	edi, DWORD PTR _pday$[esp+92]
; Line 203
	test	eax, eax
	jne	SHORT $LN6@ASN1_TIME_
; File c:\program files\windows kits\10\include\10.0.10586.0\ucrt\time.h
; Line 535
	lea	eax, DWORD PTR _now_t$1[esp+96]
	push	eax
	call	DWORD PTR __imp___time64
; File c:\workpace\openssl\openssl-1.0.2h\crypto\asn1\a_time.c
; Line 206
	lea	eax, DWORD PTR _tm_from$[esp+100]
	push	eax
	lea	eax, DWORD PTR _now_t$1[esp+104]
	push	eax
	call	_OPENSSL_gmtime
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN2@ASN1_TIME_
$LN14@ASN1_TIME_:
	pop	edi
	pop	esi
; Line 224
	xor	eax, eax
	pop	ebx
; Line 228
	mov	ecx, DWORD PTR __$ArrayPad$[esp+84]
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 84					; 00000054H
	ret	0
$LN6@ASN1_TIME_:
; Line 211
	mov	ecx, DWORD PTR [eax+4]
	cmp	ecx, 23					; 00000017H
	jne	SHORT $LN8@ASN1_TIME_
; Line 212
	push	eax
	lea	eax, DWORD PTR _tm_from$[esp+100]
	push	eax
	call	_asn1_utctime_to_tm
	jmp	SHORT $LN15@ASN1_TIME_
$LN8@ASN1_TIME_:
; Line 213
	cmp	ecx, 24					; 00000018H
	jne	SHORT $LN14@ASN1_TIME_
; Line 214
	push	eax
	lea	eax, DWORD PTR _tm_from$[esp+100]
	push	eax
	call	_asn1_generalizedtime_to_tm
$LN15@ASN1_TIME_:
	add	esp, 8
; Line 223
	test	eax, eax
	je	SHORT $LN14@ASN1_TIME_
$LN2@ASN1_TIME_:
; Line 225
	lea	eax, DWORD PTR _tm_to$[esp+96]
	push	esi
	push	eax
	call	_asn1_time_to_tm
	add	esp, 8
	test	eax, eax
	je	SHORT $LN14@ASN1_TIME_
; Line 227
	lea	eax, DWORD PTR _tm_to$[esp+96]
	push	eax
	lea	eax, DWORD PTR _tm_from$[esp+100]
	push	eax
	push	ebx
	push	edi
	call	_OPENSSL_gmtime_diff
; Line 228
	mov	ecx, DWORD PTR __$ArrayPad$[esp+112]
	add	esp, 16					; 00000010H
	pop	edi
	pop	esi
	pop	ebx
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 84					; 00000054H
	ret	0
_ASN1_TIME_diff ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _time
_TEXT	SEGMENT
__Time$ = 8						; size = 4
_time	PROC						; COMDAT
; File c:\program files\windows kits\10\include\10.0.10586.0\ucrt\time.h
; Line 535
	jmp	DWORD PTR __imp___time64
_time	ENDP
_TEXT	ENDS
END