; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\7z1505-src\CPP\7zip\Common\StreamUtils.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	?ReadStream@@YGJPAUISequentialInStream@@PAXPAI@Z ; ReadStream
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\7z1505-src\cpp\7zip\common\streamutils.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
tv66 = -32						; size = 4
___result__$65937 = -28					; size = 4
_res$65934 = -24					; size = 4
_processedSizeLoc$65933 = -16				; size = 4
_curSize$65931 = -8					; size = 4
_size$ = -4						; size = 4
_stream$ = 8						; size = 4
_data$ = 12						; size = 4
_processedSize$ = 16					; size = 4
?ReadStream@@YGJPAUISequentialInStream@@PAXPAI@Z PROC	; ReadStream
; Line 10
	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H
	push	esi
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 11
	mov	eax, DWORD PTR _processedSize$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _size$[ebp], ecx
; Line 12
	mov	edx, DWORD PTR _processedSize$[ebp]
	mov	DWORD PTR [edx], 0
$LN4@ReadStream:
; Line 13
	cmp	DWORD PTR _size$[ebp], 0
	je	$LN3@ReadStream
; Line 15
	cmp	DWORD PTR _size$[ebp], -2147483648	; 80000000H
	jae	SHORT $LN7@ReadStream
	mov	eax, DWORD PTR _size$[ebp]
	mov	DWORD PTR tv66[ebp], eax
	jmp	SHORT $LN8@ReadStream
$LN7@ReadStream:
	mov	DWORD PTR tv66[ebp], -2147483648	; 80000000H
$LN8@ReadStream:
	mov	ecx, DWORD PTR tv66[ebp]
	mov	DWORD PTR _curSize$65931[ebp], ecx
; Line 17
	mov	esi, esp
	lea	edx, DWORD PTR _processedSizeLoc$65933[ebp]
	push	edx
	mov	eax, DWORD PTR _curSize$65931[ebp]
	push	eax
	mov	ecx, DWORD PTR _data$[ebp]
	push	ecx
	mov	edx, DWORD PTR _stream$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR _stream$[ebp]
	push	ecx
	mov	edx, DWORD PTR [eax+12]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _res$65934[ebp], eax
; Line 18
	mov	eax, DWORD PTR _processedSize$[ebp]
	mov	ecx, DWORD PTR [eax]
	add	ecx, DWORD PTR _processedSizeLoc$65933[ebp]
	mov	edx, DWORD PTR _processedSize$[ebp]
	mov	DWORD PTR [edx], ecx
; Line 19
	mov	eax, DWORD PTR _data$[ebp]
	add	eax, DWORD PTR _processedSizeLoc$65933[ebp]
	mov	DWORD PTR _data$[ebp], eax
; Line 20
	mov	ecx, DWORD PTR _size$[ebp]
	sub	ecx, DWORD PTR _processedSizeLoc$65933[ebp]
	mov	DWORD PTR _size$[ebp], ecx
; Line 21
	mov	edx, DWORD PTR _res$65934[ebp]
	mov	DWORD PTR ___result__$65937[ebp], edx
	cmp	DWORD PTR ___result__$65937[ebp], 0
	je	SHORT $LN2@ReadStream
	mov	eax, DWORD PTR ___result__$65937[ebp]
	jmp	SHORT $LN5@ReadStream
$LN2@ReadStream:
; Line 22
	cmp	DWORD PTR _processedSizeLoc$65933[ebp], 0
	jne	SHORT $LN1@ReadStream
; Line 23
	xor	eax, eax
	jmp	SHORT $LN5@ReadStream
$LN1@ReadStream:
; Line 24
	jmp	$LN4@ReadStream
$LN3@ReadStream:
; Line 25
	xor	eax, eax
$LN5@ReadStream:
; Line 26
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN11@ReadStream
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	esi
	add	esp, 32					; 00000020H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
	npad	2
$LN11@ReadStream:
	DD	1
	DD	$LN10@ReadStream
$LN10@ReadStream:
	DD	-16					; fffffff0H
	DD	4
	DD	$LN9@ReadStream
$LN9@ReadStream:
	DB	112					; 00000070H
	DB	114					; 00000072H
	DB	111					; 0000006fH
	DB	99					; 00000063H
	DB	101					; 00000065H
	DB	115					; 00000073H
	DB	115					; 00000073H
	DB	101					; 00000065H
	DB	100					; 00000064H
	DB	83					; 00000053H
	DB	105					; 00000069H
	DB	122					; 0000007aH
	DB	101					; 00000065H
	DB	76					; 0000004cH
	DB	111					; 0000006fH
	DB	99					; 00000063H
	DB	0
?ReadStream@@YGJPAUISequentialInStream@@PAXPAI@Z ENDP	; ReadStream
_TEXT	ENDS
PUBLIC	?ReadStream_FALSE@@YGJPAUISequentialInStream@@PAXI@Z ; ReadStream_FALSE
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
___result__$65948 = -16					; size = 4
_processedSize$ = -8					; size = 4
_stream$ = 8						; size = 4
_data$ = 12						; size = 4
_size$ = 16						; size = 4
?ReadStream_FALSE@@YGJPAUISequentialInStream@@PAXI@Z PROC ; ReadStream_FALSE
; Line 29
	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 30
	mov	eax, DWORD PTR _size$[ebp]
	mov	DWORD PTR _processedSize$[ebp], eax
; Line 31
	lea	ecx, DWORD PTR _processedSize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _data$[ebp]
	push	edx
	mov	eax, DWORD PTR _stream$[ebp]
	push	eax
	call	?ReadStream@@YGJPAUISequentialInStream@@PAXPAI@Z ; ReadStream
	mov	DWORD PTR ___result__$65948[ebp], eax
	cmp	DWORD PTR ___result__$65948[ebp], 0
	je	SHORT $LN1@ReadStream@2
	mov	eax, DWORD PTR ___result__$65948[ebp]
	jmp	SHORT $LN2@ReadStream@2
$LN1@ReadStream@2:
; Line 32
	mov	ecx, DWORD PTR _size$[ebp]
	xor	eax, eax
	cmp	ecx, DWORD PTR _processedSize$[ebp]
	setne	al
$LN2@ReadStream@2:
; Line 33
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN6@ReadStream@2
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	add	esp, 16					; 00000010H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
$LN6@ReadStream@2:
	DD	1
	DD	$LN5@ReadStream@2
$LN5@ReadStream@2:
	DD	-8					; fffffff8H
	DD	4
	DD	$LN4@ReadStream@2
$LN4@ReadStream@2:
	DB	112					; 00000070H
	DB	114					; 00000072H
	DB	111					; 0000006fH
	DB	99					; 00000063H
	DB	101					; 00000065H
	DB	115					; 00000073H
	DB	115					; 00000073H
	DB	101					; 00000065H
	DB	100					; 00000064H
	DB	83					; 00000053H
	DB	105					; 00000069H
	DB	122					; 0000007aH
	DB	101					; 00000065H
	DB	0
?ReadStream_FALSE@@YGJPAUISequentialInStream@@PAXI@Z ENDP ; ReadStream_FALSE
_TEXT	ENDS
PUBLIC	?ReadStream_FAIL@@YGJPAUISequentialInStream@@PAXI@Z ; ReadStream_FAIL
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
___result__$65958 = -16					; size = 4
_processedSize$ = -8					; size = 4
_stream$ = 8						; size = 4
_data$ = 12						; size = 4
_size$ = 16						; size = 4
?ReadStream_FAIL@@YGJPAUISequentialInStream@@PAXI@Z PROC ; ReadStream_FAIL
; Line 36
	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 37
	mov	eax, DWORD PTR _size$[ebp]
	mov	DWORD PTR _processedSize$[ebp], eax
; Line 38
	lea	ecx, DWORD PTR _processedSize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _data$[ebp]
	push	edx
	mov	eax, DWORD PTR _stream$[ebp]
	push	eax
	call	?ReadStream@@YGJPAUISequentialInStream@@PAXPAI@Z ; ReadStream
	mov	DWORD PTR ___result__$65958[ebp], eax
	cmp	DWORD PTR ___result__$65958[ebp], 0
	je	SHORT $LN1@ReadStream@3
	mov	eax, DWORD PTR ___result__$65958[ebp]
	jmp	SHORT $LN2@ReadStream@3
$LN1@ReadStream@3:
; Line 39
	mov	eax, DWORD PTR _size$[ebp]
	sub	eax, DWORD PTR _processedSize$[ebp]
	neg	eax
	sbb	eax, eax
	and	eax, -2147467259			; 80004005H
$LN2@ReadStream@3:
; Line 40
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN6@ReadStream@3
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	add	esp, 16					; 00000010H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
$LN6@ReadStream@3:
	DD	1
	DD	$LN5@ReadStream@3
$LN5@ReadStream@3:
	DD	-8					; fffffff8H
	DD	4
	DD	$LN4@ReadStream@3
$LN4@ReadStream@3:
	DB	112					; 00000070H
	DB	114					; 00000072H
	DB	111					; 0000006fH
	DB	99					; 00000063H
	DB	101					; 00000065H
	DB	115					; 00000073H
	DB	115					; 00000073H
	DB	101					; 00000065H
	DB	100					; 00000064H
	DB	83					; 00000053H
	DB	105					; 00000069H
	DB	122					; 0000007aH
	DB	101					; 00000065H
	DB	0
?ReadStream_FAIL@@YGJPAUISequentialInStream@@PAXI@Z ENDP ; ReadStream_FAIL
_TEXT	ENDS
PUBLIC	?WriteStream@@YGJPAUISequentialOutStream@@PBXI@Z ; WriteStream
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
tv66 = -28						; size = 4
___result__$65976 = -24					; size = 4
_res$65973 = -20					; size = 4
_processedSizeLoc$65972 = -12				; size = 4
_curSize$65970 = -4					; size = 4
_stream$ = 8						; size = 4
_data$ = 12						; size = 4
_size$ = 16						; size = 4
?WriteStream@@YGJPAUISequentialOutStream@@PBXI@Z PROC	; WriteStream
; Line 43
	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH
	push	esi
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
$LN4@WriteStrea:
; Line 44
	cmp	DWORD PTR _size$[ebp], 0
	je	SHORT $LN3@WriteStrea
; Line 46
	cmp	DWORD PTR _size$[ebp], -2147483648	; 80000000H
	jae	SHORT $LN7@WriteStrea
	mov	eax, DWORD PTR _size$[ebp]
	mov	DWORD PTR tv66[ebp], eax
	jmp	SHORT $LN8@WriteStrea
$LN7@WriteStrea:
	mov	DWORD PTR tv66[ebp], -2147483648	; 80000000H
$LN8@WriteStrea:
	mov	ecx, DWORD PTR tv66[ebp]
	mov	DWORD PTR _curSize$65970[ebp], ecx
; Line 48
	mov	esi, esp
	lea	edx, DWORD PTR _processedSizeLoc$65972[ebp]
	push	edx
	mov	eax, DWORD PTR _curSize$65970[ebp]
	push	eax
	mov	ecx, DWORD PTR _data$[ebp]
	push	ecx
	mov	edx, DWORD PTR _stream$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR _stream$[ebp]
	push	ecx
	mov	edx, DWORD PTR [eax+12]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _res$65973[ebp], eax
; Line 49
	mov	eax, DWORD PTR _data$[ebp]
	add	eax, DWORD PTR _processedSizeLoc$65972[ebp]
	mov	DWORD PTR _data$[ebp], eax
; Line 50
	mov	ecx, DWORD PTR _size$[ebp]
	sub	ecx, DWORD PTR _processedSizeLoc$65972[ebp]
	mov	DWORD PTR _size$[ebp], ecx
; Line 51
	mov	edx, DWORD PTR _res$65973[ebp]
	mov	DWORD PTR ___result__$65976[ebp], edx
	cmp	DWORD PTR ___result__$65976[ebp], 0
	je	SHORT $LN2@WriteStrea
	mov	eax, DWORD PTR ___result__$65976[ebp]
	jmp	SHORT $LN5@WriteStrea
$LN2@WriteStrea:
; Line 52
	cmp	DWORD PTR _processedSizeLoc$65972[ebp], 0
	jne	SHORT $LN1@WriteStrea
; Line 53
	mov	eax, -2147467259			; 80004005H
	jmp	SHORT $LN5@WriteStrea
$LN1@WriteStrea:
; Line 54
	jmp	SHORT $LN4@WriteStrea
$LN3@WriteStrea:
; Line 55
	xor	eax, eax
$LN5@WriteStrea:
; Line 56
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN11@WriteStrea
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	esi
	add	esp, 28					; 0000001cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
	npad	3
$LN11@WriteStrea:
	DD	1
	DD	$LN10@WriteStrea
$LN10@WriteStrea:
	DD	-12					; fffffff4H
	DD	4
	DD	$LN9@WriteStrea
$LN9@WriteStrea:
	DB	112					; 00000070H
	DB	114					; 00000072H
	DB	111					; 0000006fH
	DB	99					; 00000063H
	DB	101					; 00000065H
	DB	115					; 00000073H
	DB	115					; 00000073H
	DB	101					; 00000065H
	DB	100					; 00000064H
	DB	83					; 00000053H
	DB	105					; 00000069H
	DB	122					; 0000007aH
	DB	101					; 00000065H
	DB	76					; 0000004cH
	DB	111					; 0000006fH
	DB	99					; 00000063H
	DB	0
?WriteStream@@YGJPAUISequentialOutStream@@PBXI@Z ENDP	; WriteStream
_TEXT	ENDS
END