; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\mozilla\intl\icu\source\tools\genrb\read.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD

PUBLIC	_resetLineNumber
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
_BSS	SEGMENT
_lineCount DD	01H DUP (?)
_BSS	ENDS
;	COMDAT rtc$TMZ
; File d:\mozilla\intl\icu\source\tools\genrb\read.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _resetLineNumber
_TEXT	SEGMENT
_resetLineNumber PROC					; COMDAT
; Line 51
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 52
	mov	DWORD PTR _lineCount, 1
; Line 53
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_resetLineNumber ENDP
_TEXT	ENDS
PUBLIC	_getNextToken
EXTRN	__RTC_CheckEsp:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _getNextToken
_TEXT	SEGMENT
tv71 = -220						; size = 4
_c$ = -20						; size = 4
_result$ = -8						; size = 4
_buf$ = 8						; size = 4
_token$ = 12						; size = 4
_linenumber$ = 16					; size = 4
_comment$ = 20						; size = 4
_status$ = 24						; size = 4
_getNextToken PROC					; COMDAT
; Line 68
	push	ebp
	mov	ebp, esp
	sub	esp, 220				; 000000dcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-220]
	mov	ecx, 55					; 00000037H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 72
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN11@getNextTok
; Line 73
	mov	eax, 6
	jmp	$LN12@getNextTok
$LN11@getNextTok:
; Line 77
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _comment$[ebp]
	push	ecx
	push	1
	mov	edx, DWORD PTR _buf$[ebp]
	push	edx
	call	_getNextChar
	add	esp, 16					; 00000010H
	mov	DWORD PTR _c$[ebp], eax
; Line 79
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN10@getNextTok
; Line 80
	mov	eax, 6
	jmp	$LN12@getNextTok
$LN10@getNextTok:
; Line 83
	mov	eax, DWORD PTR _linenumber$[ebp]
	mov	ecx, DWORD PTR _lineCount
	mov	DWORD PTR [eax], ecx
; Line 85
	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR tv71[ebp], eax
	cmp	DWORD PTR tv71[ebp], 123		; 0000007bH
	jg	SHORT $LN14@getNextTok
	cmp	DWORD PTR tv71[ebp], 123		; 0000007bH
	je	SHORT $LN6@getNextTok
	cmp	DWORD PTR tv71[ebp], -1
	je	SHORT $LN3@getNextTok
	cmp	DWORD PTR tv71[ebp], 44			; 0000002cH
	je	SHORT $LN4@getNextTok
	cmp	DWORD PTR tv71[ebp], 58			; 0000003aH
	je	SHORT $LN2@getNextTok
	jmp	SHORT $LN1@getNextTok
$LN14@getNextTok:
	cmp	DWORD PTR tv71[ebp], 125		; 0000007dH
	je	SHORT $LN5@getNextTok
	cmp	DWORD PTR tv71[ebp], 65534		; 0000fffeH
	je	SHORT $LN7@getNextTok
	jmp	SHORT $LN1@getNextTok
$LN7@getNextTok:
; Line 87
	mov	eax, 6
	jmp	SHORT $LN12@getNextTok
$LN6@getNextTok:
; Line 89
	mov	eax, 1
	jmp	SHORT $LN12@getNextTok
$LN5@getNextTok:
; Line 91
	mov	eax, 2
	jmp	SHORT $LN12@getNextTok
$LN4@getNextTok:
; Line 93
	mov	eax, 3
	jmp	SHORT $LN12@getNextTok
$LN3@getNextTok:
; Line 95
	mov	eax, 5
	jmp	SHORT $LN12@getNextTok
$LN2@getNextTok:
; Line 97
	mov	eax, 4
	jmp	SHORT $LN12@getNextTok
$LN1@getNextTok:
; Line 100
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _token$[ebp]
	push	ecx
	mov	edx, DWORD PTR _c$[ebp]
	push	edx
	mov	eax, DWORD PTR _buf$[ebp]
	push	eax
	call	_getStringToken
	add	esp, 16					; 00000010H
	mov	DWORD PTR _result$[ebp], eax
; Line 103
	mov	eax, DWORD PTR _linenumber$[ebp]
	mov	ecx, DWORD PTR _lineCount
	mov	DWORD PTR [eax], ecx
; Line 104
	mov	eax, DWORD PTR _result$[ebp]
$LN12@getNextTok:
; Line 105
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 220				; 000000dcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_getNextToken ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CD@JGAINNDO@Mixing?5quoted?5and?5unquoted?5strin@ ; `string'
PUBLIC	_unescape
PUBLIC	__$ArrayPad$
EXTRN	_ucbuf_ungetc:PROC
EXTRN	_isStrict:PROC
EXTRN	_warning:PROC
EXTRN	_getShowWarning:PROC
EXTRN	_ustr_uscat:PROC
EXTRN	_ucbuf_getc:PROC
EXTRN	_ustr_ucat:PROC
EXTRN	_ustr_setlen:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
;	COMDAT ??_C@_0CD@JGAINNDO@Mixing?5quoted?5and?5unquoted?5strin@
CONST	SEGMENT
??_C@_0CD@JGAINNDO@Mixing?5quoted?5and?5unquoted?5strin@ DB 'Mixing quote'
	DB	'd and unquoted strings', 00H		; `string'
; Function compile flags: /Odtp /RTCsu /ZI
CONST	ENDS
;	COMDAT _getStringToken
_TEXT	SEGMENT
_prevC$ = -100						; size = 4
_isNLUnescaped$ = -85					; size = 1
_isFollowingCharEscaped$ = -73				; size = 1
_len$ = -64						; size = 4
_pTarget$ = -52						; size = 4
_target$ = -40						; size = 6
_c$ = -24						; size = 4
_lastStringWasQuoted$ = -9				; size = 1
__$ArrayPad$ = -4					; size = 4
_buf$ = 8						; size = 4
_initialChar$ = 12					; size = 4
_token$ = 16						; size = 4
_status$ = 20						; size = 4
_getStringToken PROC					; COMDAT
; Line 121
	push	ebp
	mov	ebp, esp
	sub	esp, 296				; 00000128H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-296]
	mov	ecx, 74					; 0000004aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 124
	xor	eax, eax
	mov	WORD PTR _target$[ebp], ax
	xor	eax, eax
	mov	DWORD PTR _target$[ebp+2], eax
; Line 125
	lea	eax, DWORD PTR _target$[ebp]
	mov	DWORD PTR _pTarget$[ebp], eax
; Line 126
	mov	DWORD PTR _len$[ebp], 0
; Line 127
	mov	BYTE PTR _isFollowingCharEscaped$[ebp], 0
; Line 128
	mov	BYTE PTR _isNLUnescaped$[ebp], 0
; Line 129
	mov	DWORD PTR _prevC$[ebp], 0
; Line 136
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN50@getStringT
; Line 137
	mov	eax, 6
	jmp	$LN51@getStringT
$LN50@getStringT:
; Line 141
	mov	BYTE PTR _lastStringWasQuoted$[ebp], 0
; Line 142
	mov	eax, DWORD PTR _initialChar$[ebp]
	mov	DWORD PTR _c$[ebp], eax
; Line 143
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _token$[ebp]
	push	ecx
	call	_ustr_setlen
	add	esp, 12					; 0000000cH
; Line 145
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN48@getStringT
; Line 146
	mov	eax, 6
	jmp	$LN51@getStringT
$LN48@getStringT:
; Line 150
	cmp	DWORD PTR _c$[ebp], 34			; 00000022H
	jne	$LN46@getStringT
; Line 151
	movsx	eax, BYTE PTR _lastStringWasQuoted$[ebp]
	test	eax, eax
	jne	SHORT $LN45@getStringT
	mov	eax, DWORD PTR _token$[ebp]
	cmp	DWORD PTR [eax+4], 0
	jle	SHORT $LN45@getStringT
; Line 152
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	push	32					; 00000020H
	mov	ecx, DWORD PTR _token$[ebp]
	push	ecx
	call	_ustr_ucat
	add	esp, 12					; 0000000cH
; Line 154
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN45@getStringT
; Line 155
	mov	eax, 6
	jmp	$LN51@getStringT
$LN45@getStringT:
; Line 159
	mov	BYTE PTR _lastStringWasQuoted$[ebp], 1
$LN43@getStringT:
; Line 162
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_ucbuf_getc
	add	esp, 8
	mov	DWORD PTR _c$[ebp], eax
; Line 165
	cmp	DWORD PTR _c$[ebp], -1
	jne	SHORT $LN41@getStringT
; Line 166
	mov	eax, 5
	jmp	$LN51@getStringT
$LN41@getStringT:
; Line 170
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN40@getStringT
; Line 171
	mov	eax, 6
	jmp	$LN51@getStringT
$LN40@getStringT:
; Line 174
	cmp	DWORD PTR _c$[ebp], 34			; 00000022H
	jne	SHORT $LN39@getStringT
	movsx	eax, BYTE PTR _isFollowingCharEscaped$[ebp]
	test	eax, eax
	jne	SHORT $LN39@getStringT
; Line 175
	jmp	$LN42@getStringT
$LN39@getStringT:
; Line 178
	cmp	DWORD PTR _c$[ebp], 92			; 0000005cH
	jne	SHORT $LN38@getStringT
	movsx	eax, BYTE PTR _isFollowingCharEscaped$[ebp]
	test	eax, eax
	jne	SHORT $LN38@getStringT
; Line 179
	lea	eax, DWORD PTR _target$[ebp]
	mov	DWORD PTR _pTarget$[ebp], eax
; Line 180
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_unescape
	add	esp, 8
	mov	DWORD PTR _c$[ebp], eax
; Line 182
	cmp	DWORD PTR _c$[ebp], -2			; fffffffeH
	jne	SHORT $LN37@getStringT
; Line 183
	mov	eax, 6
	jmp	$LN51@getStringT
$LN37@getStringT:
; Line 185
	cmp	DWORD PTR _c$[ebp], 13			; 0000000dH
	je	SHORT $LN35@getStringT
	cmp	DWORD PTR _c$[ebp], 10			; 0000000aH
	jne	SHORT $LN38@getStringT
$LN35@getStringT:
; Line 186
	mov	BYTE PTR _isNLUnescaped$[ebp], 1
$LN38@getStringT:
; Line 190
	cmp	DWORD PTR _c$[ebp], 92			; 0000005cH
	jne	SHORT $LN34@getStringT
	movsx	eax, BYTE PTR _isFollowingCharEscaped$[ebp]
	test	eax, eax
	jne	SHORT $LN34@getStringT
; Line 191
	mov	BYTE PTR _isFollowingCharEscaped$[ebp], 1
; Line 192
	jmp	$LN33@getStringT
$LN34@getStringT:
; Line 193
	cmp	DWORD PTR _c$[ebp], 65535		; 0000ffffH
	jg	SHORT $LN32@getStringT
	mov	eax, DWORD PTR _pTarget$[ebp]
	mov	cx, WORD PTR _c$[ebp]
	mov	WORD PTR [eax], cx
	mov	edx, DWORD PTR _pTarget$[ebp]
	add	edx, 2
	mov	DWORD PTR _pTarget$[ebp], edx
	mov	DWORD PTR _len$[ebp], 1
	jmp	SHORT $LN31@getStringT
$LN32@getStringT:
	mov	eax, DWORD PTR _c$[ebp]
	sar	eax, 10					; 0000000aH
	add	eax, 55232				; 0000d7c0H
	mov	ecx, DWORD PTR _pTarget$[ebp]
	mov	WORD PTR [ecx], ax
	mov	eax, DWORD PTR _c$[ebp]
	and	eax, 1023				; 000003ffH
	or	eax, 56320				; 0000dc00H
	mov	ecx, DWORD PTR _pTarget$[ebp]
	mov	WORD PTR [ecx+2], ax
	mov	DWORD PTR _len$[ebp], 2
	mov	eax, DWORD PTR _pTarget$[ebp]
	add	eax, 4
	mov	DWORD PTR _pTarget$[ebp], eax
$LN31@getStringT:
; Line 194
	lea	eax, DWORD PTR _target$[ebp]
	mov	DWORD PTR _pTarget$[ebp], eax
; Line 195
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _len$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pTarget$[ebp]
	push	edx
	mov	eax, DWORD PTR _token$[ebp]
	push	eax
	call	_ustr_uscat
	add	esp, 16					; 00000010H
; Line 196
	mov	BYTE PTR _isFollowingCharEscaped$[ebp], 0
; Line 197
	mov	DWORD PTR _len$[ebp], 0
; Line 198
	cmp	DWORD PTR _c$[ebp], 13			; 0000000dH
	je	SHORT $LN29@getStringT
	cmp	DWORD PTR _c$[ebp], 10			; 0000000aH
	jne	SHORT $LN33@getStringT
$LN29@getStringT:
; Line 199
	movsx	eax, BYTE PTR _isNLUnescaped$[ebp]
	test	eax, eax
	jne	SHORT $LN28@getStringT
	cmp	DWORD PTR _prevC$[ebp], 13		; 0000000dH
	je	SHORT $LN28@getStringT
; Line 200
	mov	eax, DWORD PTR _lineCount
	add	eax, 1
	mov	DWORD PTR _lineCount, eax
$LN28@getStringT:
; Line 202
	mov	BYTE PTR _isNLUnescaped$[ebp], 0
$LN33@getStringT:
; Line 206
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN27@getStringT
; Line 207
	mov	eax, 6
	jmp	$LN51@getStringT
$LN27@getStringT:
; Line 209
	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR _prevC$[ebp], eax
; Line 210
	jmp	$LN43@getStringT
$LN42@getStringT:
; Line 211
	jmp	$LN26@getStringT
$LN46@getStringT:
; Line 212
	mov	eax, DWORD PTR _token$[ebp]
	cmp	DWORD PTR [eax+4], 0
	jle	SHORT $LN25@getStringT
; Line 213
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	push	32					; 00000020H
	mov	ecx, DWORD PTR _token$[ebp]
	push	ecx
	call	_ustr_ucat
	add	esp, 12					; 0000000cH
; Line 215
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN25@getStringT
; Line 216
	mov	eax, 6
	jmp	$LN51@getStringT
$LN25@getStringT:
; Line 220
	movsx	eax, BYTE PTR _lastStringWasQuoted$[ebp]
	test	eax, eax
	je	SHORT $LN23@getStringT
; Line 221
	call	_getShowWarning
	movsx	eax, al
	test	eax, eax
	je	SHORT $LN22@getStringT
; Line 222
	push	OFFSET ??_C@_0CD@JGAINNDO@Mixing?5quoted?5and?5unquoted?5strin@
	mov	eax, DWORD PTR _lineCount
	push	eax
	call	_warning
	add	esp, 8
$LN22@getStringT:
; Line 224
	call	_isStrict
	movsx	eax, al
	test	eax, eax
	je	SHORT $LN23@getStringT
; Line 225
	mov	eax, 6
	jmp	$LN51@getStringT
$LN23@getStringT:
; Line 230
	mov	BYTE PTR _lastStringWasQuoted$[ebp], 0
; Line 238
	cmp	DWORD PTR _c$[ebp], 92			; 0000005cH
	jne	SHORT $LN20@getStringT
; Line 239
	lea	eax, DWORD PTR _target$[ebp]
	mov	DWORD PTR _pTarget$[ebp], eax
; Line 240
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_unescape
	add	esp, 8
	mov	DWORD PTR _c$[ebp], eax
; Line 243
	cmp	DWORD PTR _c$[ebp], -1
	jne	SHORT $LN20@getStringT
; Line 244
	mov	eax, 6
	jmp	$LN51@getStringT
$LN20@getStringT:
; Line 248
	cmp	DWORD PTR _c$[ebp], 65535		; 0000ffffH
	jg	SHORT $LN18@getStringT
	mov	eax, DWORD PTR _pTarget$[ebp]
	mov	cx, WORD PTR _c$[ebp]
	mov	WORD PTR [eax], cx
	mov	edx, DWORD PTR _pTarget$[ebp]
	add	edx, 2
	mov	DWORD PTR _pTarget$[ebp], edx
	mov	DWORD PTR _len$[ebp], 1
	jmp	SHORT $LN17@getStringT
$LN18@getStringT:
	mov	eax, DWORD PTR _c$[ebp]
	sar	eax, 10					; 0000000aH
	add	eax, 55232				; 0000d7c0H
	mov	ecx, DWORD PTR _pTarget$[ebp]
	mov	WORD PTR [ecx], ax
	mov	eax, DWORD PTR _c$[ebp]
	and	eax, 1023				; 000003ffH
	or	eax, 56320				; 0000dc00H
	mov	ecx, DWORD PTR _pTarget$[ebp]
	mov	WORD PTR [ecx+2], ax
	mov	DWORD PTR _len$[ebp], 2
	mov	eax, DWORD PTR _pTarget$[ebp]
	add	eax, 4
	mov	DWORD PTR _pTarget$[ebp], eax
$LN17@getStringT:
; Line 249
	lea	eax, DWORD PTR _target$[ebp]
	mov	DWORD PTR _pTarget$[ebp], eax
; Line 250
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _len$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pTarget$[ebp]
	push	edx
	mov	eax, DWORD PTR _token$[ebp]
	push	eax
	call	_ustr_uscat
	add	esp, 16					; 00000010H
; Line 251
	mov	DWORD PTR _len$[ebp], 0
; Line 253
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN15@getStringT
; Line 254
	mov	eax, 6
	jmp	$LN51@getStringT
$LN15@getStringT:
; Line 259
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	push	0
	push	0
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_getNextChar
	add	esp, 16					; 00000010H
	mov	DWORD PTR _c$[ebp], eax
; Line 262
	cmp	DWORD PTR _c$[ebp], -1
	jne	SHORT $LN13@getStringT
; Line 263
	mov	eax, DWORD PTR _buf$[ebp]
	push	eax
	mov	ecx, DWORD PTR _c$[ebp]
	push	ecx
	call	_ucbuf_ungetc
	add	esp, 8
; Line 264
	xor	eax, eax
	jmp	$LN51@getStringT
$LN13@getStringT:
; Line 267
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN12@getStringT
; Line 268
	xor	eax, eax
	jmp	$LN51@getStringT
$LN12@getStringT:
; Line 275
	cmp	DWORD PTR _c$[ebp], 34			; 00000022H
	je	SHORT $LN10@getStringT
	cmp	DWORD PTR _c$[ebp], 123			; 0000007bH
	je	SHORT $LN10@getStringT
	cmp	DWORD PTR _c$[ebp], 125			; 0000007dH
	je	SHORT $LN10@getStringT
	cmp	DWORD PTR _c$[ebp], 44			; 0000002cH
	je	SHORT $LN10@getStringT
	cmp	DWORD PTR _c$[ebp], 58			; 0000003aH
	jne	SHORT $LN11@getStringT
$LN10@getStringT:
; Line 276
	mov	eax, DWORD PTR _buf$[ebp]
	push	eax
	mov	ecx, DWORD PTR _c$[ebp]
	push	ecx
	call	_ucbuf_ungetc
	add	esp, 8
; Line 277
	jmp	$LN26@getStringT
$LN11@getStringT:
; Line 280
	mov	eax, DWORD PTR _c$[ebp]
	push	eax
	call	_isWhitespace
	add	esp, 4
	movsx	ecx, al
	test	ecx, ecx
	je	SHORT $LN9@getStringT
; Line 281
	jmp	$LN26@getStringT
$LN9@getStringT:
; Line 284
	cmp	DWORD PTR _c$[ebp], 92			; 0000005cH
	jne	SHORT $LN8@getStringT
; Line 285
	lea	eax, DWORD PTR _target$[ebp]
	mov	DWORD PTR _pTarget$[ebp], eax
; Line 286
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_unescape
	add	esp, 8
	mov	DWORD PTR _c$[ebp], eax
; Line 288
	cmp	DWORD PTR _c$[ebp], -2			; fffffffeH
	jne	SHORT $LN8@getStringT
; Line 289
	mov	eax, 6
	jmp	$LN51@getStringT
$LN8@getStringT:
; Line 293
	cmp	DWORD PTR _c$[ebp], 65535		; 0000ffffH
	jg	SHORT $LN6@getStringT
	mov	eax, DWORD PTR _pTarget$[ebp]
	mov	cx, WORD PTR _c$[ebp]
	mov	WORD PTR [eax], cx
	mov	edx, DWORD PTR _pTarget$[ebp]
	add	edx, 2
	mov	DWORD PTR _pTarget$[ebp], edx
	mov	DWORD PTR _len$[ebp], 1
	jmp	SHORT $LN5@getStringT
$LN6@getStringT:
	mov	eax, DWORD PTR _c$[ebp]
	sar	eax, 10					; 0000000aH
	add	eax, 55232				; 0000d7c0H
	mov	ecx, DWORD PTR _pTarget$[ebp]
	mov	WORD PTR [ecx], ax
	mov	eax, DWORD PTR _c$[ebp]
	and	eax, 1023				; 000003ffH
	or	eax, 56320				; 0000dc00H
	mov	ecx, DWORD PTR _pTarget$[ebp]
	mov	WORD PTR [ecx+2], ax
	mov	DWORD PTR _len$[ebp], 2
	mov	eax, DWORD PTR _pTarget$[ebp]
	add	eax, 4
	mov	DWORD PTR _pTarget$[ebp], eax
$LN5@getStringT:
; Line 294
	lea	eax, DWORD PTR _target$[ebp]
	mov	DWORD PTR _pTarget$[ebp], eax
; Line 295
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _len$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pTarget$[ebp]
	push	edx
	mov	eax, DWORD PTR _token$[ebp]
	push	eax
	call	_ustr_uscat
	add	esp, 16					; 00000010H
; Line 296
	mov	DWORD PTR _len$[ebp], 0
; Line 297
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN4@getStringT
; Line 298
	mov	eax, 6
	jmp	SHORT $LN51@getStringT
$LN4@getStringT:
; Line 300
	jmp	$LN15@getStringT
$LN26@getStringT:
; Line 304
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	push	0
	push	1
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_getNextChar
	add	esp, 16					; 00000010H
	mov	DWORD PTR _c$[ebp], eax
; Line 306
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN3@getStringT
; Line 307
	xor	eax, eax
	jmp	SHORT $LN51@getStringT
$LN3@getStringT:
; Line 310
	cmp	DWORD PTR _c$[ebp], 123			; 0000007bH
	je	SHORT $LN1@getStringT
	cmp	DWORD PTR _c$[ebp], 125			; 0000007dH
	je	SHORT $LN1@getStringT
	cmp	DWORD PTR _c$[ebp], 44			; 0000002cH
	je	SHORT $LN1@getStringT
	cmp	DWORD PTR _c$[ebp], 58			; 0000003aH
	jne	SHORT $LN2@getStringT
$LN1@getStringT:
; Line 311
	mov	eax, DWORD PTR _buf$[ebp]
	push	eax
	mov	ecx, DWORD PTR _c$[ebp]
	push	ecx
	call	_ucbuf_ungetc
	add	esp, 8
; Line 312
	xor	eax, eax
	jmp	SHORT $LN51@getStringT
$LN2@getStringT:
; Line 314
	jmp	$LN48@getStringT
$LN51@getStringT:
; Line 315
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN55@getStringT
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 296				; 00000128H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN55@getStringT:
	DD	1
	DD	$LN54@getStringT
$LN54@getStringT:
	DD	-40					; ffffffd8H
	DD	6
	DD	$LN53@getStringT
$LN53@getStringT:
	DB	116					; 00000074H
	DB	97					; 00000061H
	DB	114					; 00000072H
	DB	103					; 00000067H
	DB	101					; 00000065H
	DB	116					; 00000074H
	DB	0
_getStringToken ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT _getNextChar
_TEXT	SEGMENT
tv80 = -220						; size = 4
_c2$ = -20						; size = 4
_c$ = -8						; size = 4
_buf$ = 8						; size = 4
_skipwhite$ = 12					; size = 1
_token$ = 16						; size = 4
_status$ = 20						; size = 4
_getNextChar PROC					; COMDAT
; Line 322
	push	ebp
	mov	ebp, esp
	sub	esp, 220				; 000000dcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-220]
	mov	ecx, 55					; 00000037H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 325
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN13@getNextCha
; Line 326
	or	eax, -1
	jmp	$LN15@getNextCha
$LN13@getNextCha:
; Line 330
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_ucbuf_getc
	add	esp, 8
	mov	DWORD PTR _c$[ebp], eax
; Line 332
	cmp	DWORD PTR _c$[ebp], -1
	jne	SHORT $LN11@getNextCha
; Line 333
	or	eax, -1
	jmp	$LN15@getNextCha
$LN11@getNextCha:
; Line 336
	movsx	eax, BYTE PTR _skipwhite$[ebp]
	test	eax, eax
	je	SHORT $LN10@getNextCha
	mov	eax, DWORD PTR _c$[ebp]
	push	eax
	call	_isWhitespace
	add	esp, 4
	movsx	ecx, al
	test	ecx, ecx
	je	SHORT $LN10@getNextCha
; Line 337
	jmp	SHORT $LN13@getNextCha
$LN10@getNextCha:
; Line 341
	cmp	DWORD PTR _c$[ebp], 47			; 0000002fH
	je	SHORT $LN9@getNextCha
; Line 342
	mov	eax, DWORD PTR _c$[ebp]
	jmp	$LN15@getNextCha
$LN9@getNextCha:
; Line 345
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_ucbuf_getc
	add	esp, 8
	mov	DWORD PTR _c$[ebp], eax
; Line 347
	cmp	DWORD PTR _c$[ebp], -1
	jne	SHORT $LN8@getNextCha
; Line 348
	or	eax, -1
	jmp	$LN15@getNextCha
$LN8@getNextCha:
; Line 351
	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR tv80[ebp], eax
	cmp	DWORD PTR tv80[ebp], 42			; 0000002aH
	je	SHORT $LN4@getNextCha
	cmp	DWORD PTR tv80[ebp], 47			; 0000002fH
	je	SHORT $LN5@getNextCha
	jmp	SHORT $LN1@getNextCha
$LN5@getNextCha:
; Line 353
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_seekUntilNewline
	add	esp, 12					; 0000000cH
; Line 354
	jmp	SHORT $LN6@getNextCha
$LN4@getNextCha:
; Line 357
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_ucbuf_getc
	add	esp, 8
	mov	DWORD PTR _c2$[ebp], eax
; Line 358
	cmp	DWORD PTR _c2$[ebp], 42			; 0000002aH
	jne	SHORT $LN3@getNextCha
; Line 360
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _token$[ebp]
	push	ecx
	mov	edx, DWORD PTR _buf$[ebp]
	push	edx
	call	_seekUntilEndOfComment
	add	esp, 12					; 0000000cH
; Line 361
	jmp	SHORT $LN2@getNextCha
$LN3@getNextCha:
; Line 362
	mov	eax, DWORD PTR _buf$[ebp]
	push	eax
	mov	ecx, DWORD PTR _c2$[ebp]
	push	ecx
	call	_ucbuf_ungetc
	add	esp, 8
; Line 363
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_seekUntilEndOfComment
	add	esp, 12					; 0000000cH
$LN2@getNextCha:
; Line 365
	jmp	SHORT $LN6@getNextCha
$LN1@getNextCha:
; Line 368
	mov	eax, DWORD PTR _buf$[ebp]
	push	eax
	mov	ecx, DWORD PTR _c$[ebp]
	push	ecx
	call	_ucbuf_ungetc
	add	esp, 8
; Line 370
	mov	eax, 47					; 0000002fH
	jmp	SHORT $LN15@getNextCha
$LN6@getNextCha:
; Line 373
	jmp	$LN13@getNextCha
$LN15@getNextCha:
; Line 374
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 220				; 000000dcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_getNextChar ENDP
_TEXT	ENDS
EXTRN	_ustr_u32cat:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _seekUntilNewline
_TEXT	SEGMENT
_c$ = -8						; size = 4
_buf$ = 8						; size = 4
_token$ = 12						; size = 4
_status$ = 16						; size = 4
_seekUntilNewline PROC					; COMDAT
; Line 378
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 381
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN5@seekUntilN
; Line 382
	jmp	SHORT $LN7@seekUntilN
$LN5@seekUntilN:
; Line 386
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_ucbuf_getc
	add	esp, 8
	mov	DWORD PTR _c$[ebp], eax
; Line 388
	cmp	DWORD PTR _token$[ebp], 0
	je	SHORT $LN4@seekUntilN
; Line 389
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _c$[ebp]
	push	ecx
	mov	edx, DWORD PTR _token$[ebp]
	push	edx
	call	_ustr_u32cat
	add	esp, 12					; 0000000cH
$LN4@seekUntilN:
; Line 391
	mov	eax, DWORD PTR _c$[ebp]
	push	eax
	call	_isNewline
	add	esp, 4
	movsx	ecx, al
	test	ecx, ecx
	jne	SHORT $LN7@seekUntilN
	cmp	DWORD PTR _c$[ebp], -1
	je	SHORT $LN7@seekUntilN
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	je	SHORT $LN5@seekUntilN
$LN7@seekUntilN:
; Line 392
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_seekUntilNewline ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BO@EGHKLCKL@unterminated?5comment?5detected?$AA@ ; `string'
EXTRN	_error:PROC
;	COMDAT ??_C@_0BO@EGHKLCKL@unterminated?5comment?5detected?$AA@
CONST	SEGMENT
??_C@_0BO@EGHKLCKL@unterminated?5comment?5detected?$AA@ DB 'unterminated '
	DB	'comment detected', 00H			; `string'
; Function compile flags: /Odtp /RTCsu /ZI
CONST	ENDS
;	COMDAT _seekUntilEndOfComment
_TEXT	SEGMENT
_line$ = -32						; size = 4
_d$ = -20						; size = 4
_c$ = -8						; size = 4
_buf$ = 8						; size = 4
_token$ = 12						; size = 4
_status$ = 16						; size = 4
_seekUntilEndOfComment PROC				; COMDAT
; Line 396
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 400
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN10@seekUntilE
; Line 401
	jmp	$LN11@seekUntilE
$LN10@seekUntilE:
; Line 404
	mov	eax, DWORD PTR _lineCount
	mov	DWORD PTR _line$[ebp], eax
$LN9@seekUntilE:
; Line 407
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_ucbuf_getc
	add	esp, 8
	mov	DWORD PTR _c$[ebp], eax
; Line 409
	cmp	DWORD PTR _c$[ebp], 42			; 0000002aH
	jne	SHORT $LN6@seekUntilE
; Line 410
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_ucbuf_getc
	add	esp, 8
	mov	DWORD PTR _d$[ebp], eax
; Line 412
	cmp	DWORD PTR _d$[ebp], 47			; 0000002fH
	je	SHORT $LN5@seekUntilE
; Line 413
	mov	eax, DWORD PTR _buf$[ebp]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	call	_ucbuf_ungetc
	add	esp, 8
; Line 414
	jmp	SHORT $LN6@seekUntilE
$LN5@seekUntilE:
; Line 415
	jmp	SHORT $LN7@seekUntilE
$LN6@seekUntilE:
; Line 419
	cmp	DWORD PTR _token$[ebp], 0
	je	SHORT $LN3@seekUntilE
; Line 420
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _c$[ebp]
	push	ecx
	mov	edx, DWORD PTR _token$[ebp]
	push	edx
	call	_ustr_u32cat
	add	esp, 12					; 0000000cH
$LN3@seekUntilE:
; Line 423
	mov	eax, DWORD PTR _c$[ebp]
	push	eax
	call	_isNewline
	add	esp, 4
; Line 425
	cmp	DWORD PTR _c$[ebp], -1
	je	SHORT $LN7@seekUntilE
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	je	SHORT $LN9@seekUntilE
$LN7@seekUntilE:
; Line 427
	cmp	DWORD PTR _c$[ebp], -1
	jne	SHORT $LN11@seekUntilE
; Line 428
	mov	eax, DWORD PTR _status$[ebp]
	mov	DWORD PTR [eax], 3
; Line 429
	push	OFFSET ??_C@_0BO@EGHKLCKL@unterminated?5comment?5detected?$AA@
	mov	eax, DWORD PTR _line$[ebp]
	push	eax
	call	_error
	add	esp, 8
$LN11@seekUntilE:
; Line 431
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_seekUntilEndOfComment ENDP
_TEXT	ENDS
EXTRN	_ucbuf_getcx32:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _unescape
_TEXT	SEGMENT
_buf$ = 8						; size = 4
_status$ = 12						; size = 4
_unescape PROC						; COMDAT
; Line 433
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 434
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN1@unescape
; Line 435
	or	eax, -1
	jmp	SHORT $LN2@unescape
$LN1@unescape:
; Line 440
	mov	eax, DWORD PTR _buf$[ebp]
	push	eax
	push	92					; 0000005cH
	call	_ucbuf_ungetc
	add	esp, 8
; Line 442
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	_ucbuf_getcx32
	add	esp, 8
$LN2@unescape:
; Line 443
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_unescape ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT _isWhitespace
_TEXT	SEGMENT
tv64 = -196						; size = 4
_c$ = 8							; size = 4
_isWhitespace PROC					; COMDAT
; Line 445
	push	ebp
	mov	ebp, esp
	sub	esp, 196				; 000000c4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-196]
	mov	ecx, 49					; 00000031H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 446
	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR tv64[ebp], eax
	cmp	DWORD PTR tv64[ebp], 32			; 00000020H
	jg	SHORT $LN8@isWhitespa
	cmp	DWORD PTR tv64[ebp], 32			; 00000020H
	je	SHORT $LN2@isWhitespa
	cmp	DWORD PTR tv64[ebp], 9
	je	SHORT $LN2@isWhitespa
	cmp	DWORD PTR tv64[ebp], 10			; 0000000aH
	je	SHORT $LN3@isWhitespa
	cmp	DWORD PTR tv64[ebp], 13			; 0000000dH
	je	SHORT $LN2@isWhitespa
	jmp	SHORT $LN1@isWhitespa
$LN8@isWhitespa:
	cmp	DWORD PTR tv64[ebp], 8233		; 00002029H
	je	SHORT $LN3@isWhitespa
	cmp	DWORD PTR tv64[ebp], 65279		; 0000feffH
	je	SHORT $LN2@isWhitespa
	jmp	SHORT $LN1@isWhitespa
$LN3@isWhitespa:
; Line 450
	mov	eax, DWORD PTR _lineCount
	add	eax, 1
	mov	DWORD PTR _lineCount, eax
$LN2@isWhitespa:
; Line 455
	mov	al, 1
	jmp	SHORT $LN6@isWhitespa
$LN1@isWhitespa:
; Line 458
	xor	al, al
$LN6@isWhitespa:
; Line 460
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_isWhitespace ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT _isNewline
_TEXT	SEGMENT
tv64 = -196						; size = 4
_c$ = 8							; size = 4
_isNewline PROC						; COMDAT
; Line 462
	push	ebp
	mov	ebp, esp
	sub	esp, 196				; 000000c4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-196]
	mov	ecx, 49					; 00000031H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 463
	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR tv64[ebp], eax
	cmp	DWORD PTR tv64[ebp], 10			; 0000000aH
	je	SHORT $LN3@isNewline
	cmp	DWORD PTR tv64[ebp], 13			; 0000000dH
	je	SHORT $LN2@isNewline
	cmp	DWORD PTR tv64[ebp], 8233		; 00002029H
	je	SHORT $LN3@isNewline
	jmp	SHORT $LN1@isNewline
$LN3@isNewline:
; Line 467
	mov	eax, DWORD PTR _lineCount
	add	eax, 1
	mov	DWORD PTR _lineCount, eax
$LN2@isNewline:
; Line 469
	mov	al, 1
	jmp	SHORT $LN6@isNewline
$LN1@isNewline:
; Line 472
	xor	al, al
$LN6@isNewline:
; Line 474
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_isNewline ENDP
_TEXT	ENDS
END