; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.40629.0 

	TITLE	D:\mozilla\modules\freetype2\src\base\ftwinfnt.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD

_DATA	SEGMENT
$SG7026	DB	'..\..\..\src\base\ftwinfnt.c', 00H
	ORG $+3
$SG7028	DB	'..\..\..\src\base\ftwinfnt.c', 00H
	ORG $+3
$SG7050	DB	'winfonts', 00H
	ORG $+3
$SG7058	DB	'..\..\..\src\base\ftwinfnt.c', 00H
_DATA	ENDS
PUBLIC	_FT_Get_WinFNT_Header
EXTRN	_FT_Throw:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
tv93 = -24						; size = 4
__tmp_$1 = -20						; size = 4
_module$2 = -16						; size = 4
_svc$3 = -12						; size = 4
_error$ = -8						; size = 4
_service$ = -4						; size = 4
_face$ = 8						; size = 4
_header$ = 12						; size = 4
_FT_Get_WinFNT_Header PROC
; File d:\mozilla\modules\freetype2\src\base\ftwinfnt.c
; Line 31
	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	push	esi
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 36
	cmp	DWORD PTR _face$[ebp], 0
	jne	SHORT $LN14@FT_Get_Win
; Line 37
	push	OFFSET $SG7026
	push	37					; 00000025H
	push	35					; 00000023H
	call	_FT_Throw
	add	esp, 12					; 0000000cH
	or	eax, 35					; 00000023H
	jmp	$LN15@FT_Get_Win
$LN14@FT_Get_Win:
; Line 39
	cmp	DWORD PTR _header$[ebp], 0
	jne	SHORT $LN12@FT_Get_Win
; Line 40
	push	OFFSET $SG7028
	push	40					; 00000028H
	push	6
	call	_FT_Throw
	add	esp, 12					; 0000000cH
	or	eax, 6
	jmp	$LN15@FT_Get_Win
$LN12@FT_Get_Win:
; Line 42
	mov	eax, DWORD PTR _face$[ebp]
	mov	ecx, DWORD PTR [eax+128]
	mov	edx, DWORD PTR [ecx+44]
	mov	DWORD PTR _svc$3[ebp], edx
	cmp	DWORD PTR _svc$3[ebp], -2		; fffffffeH
	jne	SHORT $LN9@FT_Get_Win
	mov	DWORD PTR _svc$3[ebp], 0
	jmp	SHORT $LN8@FT_Get_Win
$LN9@FT_Get_Win:
	cmp	DWORD PTR _svc$3[ebp], 0
	jne	SHORT $LN8@FT_Get_Win
$LN6@FT_Get_Win:
	mov	eax, DWORD PTR _face$[ebp]
	mov	ecx, DWORD PTR [eax+96]
	mov	DWORD PTR _module$2[ebp], ecx
	mov	DWORD PTR __tmp_$1[ebp], 0
	mov	edx, DWORD PTR _module$2[ebp]
	mov	eax, DWORD PTR [edx]
	cmp	DWORD PTR [eax+32], 0
	je	SHORT $LN3@FT_Get_Win
	mov	esi, esp
	push	OFFSET $SG7050
	mov	ecx, DWORD PTR _module$2[ebp]
	push	ecx
	mov	edx, DWORD PTR _module$2[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+32]
	call	ecx
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR __tmp_$1[ebp], eax
$LN3@FT_Get_Win:
	mov	edx, DWORD PTR __tmp_$1[ebp]
	mov	DWORD PTR _svc$3[ebp], edx
	xor	eax, eax
	jne	SHORT $LN6@FT_Get_Win
	cmp	DWORD PTR _svc$3[ebp], 0
	je	SHORT $LN17@FT_Get_Win
	mov	ecx, DWORD PTR _svc$3[ebp]
	mov	DWORD PTR tv93[ebp], ecx
	jmp	SHORT $LN18@FT_Get_Win
$LN17@FT_Get_Win:
	mov	DWORD PTR tv93[ebp], -2			; fffffffeH
$LN18@FT_Get_Win:
	mov	edx, DWORD PTR _face$[ebp]
	mov	eax, DWORD PTR [edx+128]
	mov	ecx, DWORD PTR tv93[ebp]
	mov	DWORD PTR [eax+44], ecx
$LN8@FT_Get_Win:
	mov	edx, DWORD PTR _svc$3[ebp]
	mov	DWORD PTR _service$[ebp], edx
	xor	eax, eax
	jne	$LN12@FT_Get_Win
; Line 44
	cmp	DWORD PTR _service$[ebp], 0
	je	SHORT $LN2@FT_Get_Win
; Line 45
	mov	esi, esp
	mov	ecx, DWORD PTR _header$[ebp]
	push	ecx
	mov	edx, DWORD PTR _face$[ebp]
	push	edx
	mov	eax, DWORD PTR _service$[ebp]
	mov	ecx, DWORD PTR [eax]
	call	ecx
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _error$[ebp], eax
; Line 46
	jmp	SHORT $LN1@FT_Get_Win
$LN2@FT_Get_Win:
; Line 47
	push	OFFSET $SG7058
	push	47					; 0000002fH
	push	6
	call	_FT_Throw
	add	esp, 12					; 0000000cH
	or	eax, 6
	mov	DWORD PTR _error$[ebp], eax
$LN1@FT_Get_Win:
; Line 49
	mov	eax, DWORD PTR _error$[ebp]
$LN15@FT_Get_Win:
; Line 50
	pop	esi
	add	esp, 24					; 00000018H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_FT_Get_WinFNT_Header ENDP
_TEXT	ENDS
END
