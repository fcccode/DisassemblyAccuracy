; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\7z1505-src\C\Delta.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	_Delta_Init@4
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\7z1505-src\c\delta.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
_i$ = -4						; size = 4
_state$ = 8						; size = 4
_Delta_Init@4 PROC
; Line 9
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 11
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN3@Delta_Init
$LN2@Delta_Init:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN3@Delta_Init:
	cmp	DWORD PTR _i$[ebp], 256			; 00000100H
	jae	SHORT $LN4@Delta_Init
; Line 12
	mov	ecx, DWORD PTR _state$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	mov	BYTE PTR [ecx], 0
	jmp	SHORT $LN2@Delta_Init
$LN4@Delta_Init:
; Line 13
	mov	esp, ebp
	pop	ebp
	ret	4
_Delta_Init@4 ENDP
_TEXT	ENDS
PUBLIC	__$ArrayPad$
PUBLIC	_Delta_Encode@16
EXTRN	___security_cookie:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_b$1429 = -277						; size = 1
_i$1422 = -276						; size = 4
_j$ = -272						; size = 4
_buf$ = -264						; size = 256
__$ArrayPad$ = -4					; size = 4
_state$ = 8						; size = 4
_delta$ = 12						; size = 4
_data$ = 16						; size = 4
_size$ = 20						; size = 4
_Delta_Encode@16 PROC
; Line 23
	push	ebp
	mov	ebp, esp
	sub	esp, 280				; 00000118H
	push	edi
	lea	edi, DWORD PTR [ebp-280]
	mov	ecx, 70					; 00000046H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 25
	mov	DWORD PTR _j$[ebp], 0
; Line 26
	mov	eax, DWORD PTR _delta$[ebp]
	push	eax
	mov	ecx, DWORD PTR _state$[ebp]
	push	ecx
	lea	edx, DWORD PTR _buf$[ebp]
	push	edx
	call	_MyMemCpy@12
; Line 29
	mov	DWORD PTR _i$1422[ebp], 0
$LN6@Delta_Enco:
	mov	eax, DWORD PTR _i$1422[ebp]
	cmp	eax, DWORD PTR _size$[ebp]
	jae	$LN5@Delta_Enco
; Line 31
	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $LN4@Delta_Enco
$LN3@Delta_Enco:
	mov	ecx, DWORD PTR _i$1422[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$1422[ebp], ecx
	mov	edx, DWORD PTR _j$[ebp]
	add	edx, 1
	mov	DWORD PTR _j$[ebp], edx
$LN4@Delta_Enco:
	mov	eax, DWORD PTR _j$[ebp]
	cmp	eax, DWORD PTR _delta$[ebp]
	jae	SHORT $LN2@Delta_Enco
	mov	ecx, DWORD PTR _i$1422[ebp]
	cmp	ecx, DWORD PTR _size$[ebp]
	jae	SHORT $LN2@Delta_Enco
; Line 33
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$1422[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR _b$1429[ebp], al
; Line 34
	movzx	ecx, BYTE PTR _b$1429[ebp]
	mov	edx, DWORD PTR _j$[ebp]
	movzx	eax, BYTE PTR _buf$[ebp+edx]
	sub	ecx, eax
	mov	edx, DWORD PTR _data$[ebp]
	add	edx, DWORD PTR _i$1422[ebp]
	mov	BYTE PTR [edx], cl
; Line 35
	mov	eax, DWORD PTR _j$[ebp]
	mov	cl, BYTE PTR _b$1429[ebp]
	mov	BYTE PTR _buf$[ebp+eax], cl
; Line 36
	jmp	SHORT $LN3@Delta_Enco
$LN2@Delta_Enco:
; Line 37
	jmp	$LN6@Delta_Enco
$LN5@Delta_Enco:
; Line 39
	mov	edx, DWORD PTR _j$[ebp]
	cmp	edx, DWORD PTR _delta$[ebp]
	jne	SHORT $LN1@Delta_Enco
; Line 40
	mov	DWORD PTR _j$[ebp], 0
$LN1@Delta_Enco:
; Line 41
	mov	eax, DWORD PTR _delta$[ebp]
	sub	eax, DWORD PTR _j$[ebp]
	push	eax
	mov	ecx, DWORD PTR _j$[ebp]
	lea	edx, DWORD PTR _buf$[ebp+ecx]
	push	edx
	mov	eax, DWORD PTR _state$[ebp]
	push	eax
	call	_MyMemCpy@12
; Line 42
	mov	ecx, DWORD PTR _j$[ebp]
	push	ecx
	lea	edx, DWORD PTR _buf$[ebp]
	push	edx
	mov	eax, DWORD PTR _state$[ebp]
	add	eax, DWORD PTR _delta$[ebp]
	sub	eax, DWORD PTR _j$[ebp]
	push	eax
	call	_MyMemCpy@12
; Line 43
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN11@Delta_Enco
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 280				; 00000118H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
	npad	1
$LN11@Delta_Enco:
	DD	1
	DD	$LN10@Delta_Enco
$LN10@Delta_Enco:
	DD	-264					; fffffef8H
	DD	256					; 00000100H
	DD	$LN9@Delta_Enco
$LN9@Delta_Enco:
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	0
_Delta_Encode@16 ENDP
; Function compile flags: /Odtp /RTCsu
_i$ = -4						; size = 4
_dest$ = 8						; size = 4
_src$ = 12						; size = 4
_size$ = 16						; size = 4
_MyMemCpy@12 PROC
; Line 16
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 18
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN3@MyMemCpy
$LN2@MyMemCpy:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN3@MyMemCpy:
	mov	ecx, DWORD PTR _i$[ebp]
	cmp	ecx, DWORD PTR _size$[ebp]
	jae	SHORT $LN4@MyMemCpy
; Line 19
	mov	edx, DWORD PTR _dest$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _src$[ebp]
	add	eax, DWORD PTR _i$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	jmp	SHORT $LN2@MyMemCpy
$LN4@MyMemCpy:
; Line 20
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_MyMemCpy@12 ENDP
_TEXT	ENDS
PUBLIC	__$ArrayPad$
PUBLIC	_Delta_Decode@16
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
tv78 = -280						; size = 4
_i$1443 = -276						; size = 4
_j$ = -272						; size = 4
_buf$ = -264						; size = 256
__$ArrayPad$ = -4					; size = 4
_state$ = 8						; size = 4
_delta$ = 12						; size = 4
_data$ = 16						; size = 4
_size$ = 20						; size = 4
_Delta_Decode@16 PROC
; Line 46
	push	ebp
	mov	ebp, esp
	sub	esp, 280				; 00000118H
	push	edi
	lea	edi, DWORD PTR [ebp-280]
	mov	ecx, 70					; 00000046H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 48
	mov	DWORD PTR _j$[ebp], 0
; Line 49
	mov	eax, DWORD PTR _delta$[ebp]
	push	eax
	mov	ecx, DWORD PTR _state$[ebp]
	push	ecx
	lea	edx, DWORD PTR _buf$[ebp]
	push	edx
	call	_MyMemCpy@12
; Line 52
	mov	DWORD PTR _i$1443[ebp], 0
$LN6@Delta_Deco:
	mov	eax, DWORD PTR _i$1443[ebp]
	cmp	eax, DWORD PTR _size$[ebp]
	jae	$LN5@Delta_Deco
; Line 54
	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $LN4@Delta_Deco
$LN3@Delta_Deco:
	mov	ecx, DWORD PTR _i$1443[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$1443[ebp], ecx
	mov	edx, DWORD PTR _j$[ebp]
	add	edx, 1
	mov	DWORD PTR _j$[ebp], edx
$LN4@Delta_Deco:
	mov	eax, DWORD PTR _j$[ebp]
	cmp	eax, DWORD PTR _delta$[ebp]
	jae	SHORT $LN2@Delta_Deco
	mov	ecx, DWORD PTR _i$1443[ebp]
	cmp	ecx, DWORD PTR _size$[ebp]
	jae	SHORT $LN2@Delta_Deco
; Line 56
	mov	edx, DWORD PTR _j$[ebp]
	movzx	eax, BYTE PTR _buf$[ebp+edx]
	mov	ecx, DWORD PTR _data$[ebp]
	add	ecx, DWORD PTR _i$1443[ebp]
	movzx	edx, BYTE PTR [ecx]
	add	eax, edx
	mov	DWORD PTR tv78[ebp], eax
	mov	eax, DWORD PTR _data$[ebp]
	add	eax, DWORD PTR _i$1443[ebp]
	mov	cl, BYTE PTR tv78[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR _j$[ebp]
	mov	al, BYTE PTR tv78[ebp]
	mov	BYTE PTR _buf$[ebp+edx], al
; Line 57
	jmp	SHORT $LN3@Delta_Deco
$LN2@Delta_Deco:
; Line 58
	jmp	$LN6@Delta_Deco
$LN5@Delta_Deco:
; Line 60
	mov	ecx, DWORD PTR _j$[ebp]
	cmp	ecx, DWORD PTR _delta$[ebp]
	jne	SHORT $LN1@Delta_Deco
; Line 61
	mov	DWORD PTR _j$[ebp], 0
$LN1@Delta_Deco:
; Line 62
	mov	edx, DWORD PTR _delta$[ebp]
	sub	edx, DWORD PTR _j$[ebp]
	push	edx
	mov	eax, DWORD PTR _j$[ebp]
	lea	ecx, DWORD PTR _buf$[ebp+eax]
	push	ecx
	mov	edx, DWORD PTR _state$[ebp]
	push	edx
	call	_MyMemCpy@12
; Line 63
	mov	eax, DWORD PTR _j$[ebp]
	push	eax
	lea	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	mov	edx, DWORD PTR _state$[ebp]
	add	edx, DWORD PTR _delta$[ebp]
	sub	edx, DWORD PTR _j$[ebp]
	push	edx
	call	_MyMemCpy@12
; Line 64
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN11@Delta_Deco
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 280				; 00000118H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
	npad	1
$LN11@Delta_Deco:
	DD	1
	DD	$LN10@Delta_Deco
$LN10@Delta_Deco:
	DD	-264					; fffffef8H
	DD	256					; 00000100H
	DD	$LN9@Delta_Deco
$LN9@Delta_Deco:
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	0
_Delta_Decode@16 ENDP
_TEXT	ENDS
END