; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\mozilla\intl\icu\source\common\umath.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	_uprv_max_56
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\mozilla\intl\icu\source\common\umath.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _uprv_max_56
_TEXT	SEGMENT
tv65 = -196						; size = 4
_x$ = 8							; size = 4
_y$ = 12						; size = 4
_uprv_max_56 PROC					; COMDAT
; Line 15
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
; Line 16
	mov	eax, DWORD PTR _x$[ebp]
	cmp	eax, DWORD PTR _y$[ebp]
	jle	SHORT $LN3@uprv_max_5
	mov	ecx, DWORD PTR _x$[ebp]
	mov	DWORD PTR tv65[ebp], ecx
	jmp	SHORT $LN4@uprv_max_5
$LN3@uprv_max_5:
	mov	edx, DWORD PTR _y$[ebp]
	mov	DWORD PTR tv65[ebp], edx
$LN4@uprv_max_5:
	mov	eax, DWORD PTR tv65[ebp]
; Line 17
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_uprv_max_56 ENDP
_TEXT	ENDS
PUBLIC	_uprv_min_56
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _uprv_min_56
_TEXT	SEGMENT
tv65 = -196						; size = 4
_x$ = 8							; size = 4
_y$ = 12						; size = 4
_uprv_min_56 PROC					; COMDAT
; Line 21
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
; Line 22
	mov	eax, DWORD PTR _x$[ebp]
	cmp	eax, DWORD PTR _y$[ebp]
	jle	SHORT $LN3@uprv_min_5
	mov	ecx, DWORD PTR _y$[ebp]
	mov	DWORD PTR tv65[ebp], ecx
	jmp	SHORT $LN4@uprv_min_5
$LN3@uprv_min_5:
	mov	edx, DWORD PTR _x$[ebp]
	mov	DWORD PTR tv65[ebp], edx
$LN4@uprv_min_5:
	mov	eax, DWORD PTR tv65[ebp]
; Line 23
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_uprv_min_56 ENDP
_TEXT	ENDS
END
