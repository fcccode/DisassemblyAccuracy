; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\mozilla\intl\icu\source\common\ustrfmt.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	_uprv_itou_56
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\mozilla\intl\icu\source\common\ustrfmt.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _uprv_itou_56
_TEXT	SEGMENT
tv72 = -244						; size = 4
_temp$ = -44						; size = 2
_j$ = -32						; size = 4
_digit$ = -20						; size = 4
_length$ = -8						; size = 4
_buffer$ = 8						; size = 4
_capacity$ = 12						; size = 4
_i$ = 16						; size = 4
_radix$ = 20						; size = 4
_minwidth$ = 24						; size = 4
_uprv_itou_56 PROC					; COMDAT
; Line 30
	push	ebp
	mov	ebp, esp
	sub	esp, 244				; 000000f4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-244]
	mov	ecx, 61					; 0000003dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 31
	mov	DWORD PTR _length$[ebp], 0
$LN10@uprv_itou_:
; Line 37
	mov	eax, DWORD PTR _i$[ebp]
	xor	edx, edx
	div	DWORD PTR _radix$[ebp]
	mov	DWORD PTR _digit$[ebp], edx
; Line 38
	cmp	DWORD PTR _digit$[ebp], 9
	jg	SHORT $LN13@uprv_itou_
	mov	eax, DWORD PTR _digit$[ebp]
	add	eax, 48					; 00000030H
	mov	DWORD PTR tv72[ebp], eax
	jmp	SHORT $LN14@uprv_itou_
$LN13@uprv_itou_:
	mov	ecx, DWORD PTR _digit$[ebp]
	add	ecx, 55					; 00000037H
	mov	DWORD PTR tv72[ebp], ecx
$LN14@uprv_itou_:
	mov	edx, DWORD PTR _length$[ebp]
	mov	eax, DWORD PTR _buffer$[ebp]
	mov	cx, WORD PTR tv72[ebp]
	mov	WORD PTR [eax+edx*2], cx
	mov	edx, DWORD PTR _length$[ebp]
	add	edx, 1
	mov	DWORD PTR _length$[ebp], edx
; Line 39
	mov	eax, DWORD PTR _i$[ebp]
	xor	edx, edx
	div	DWORD PTR _radix$[ebp]
	mov	DWORD PTR _i$[ebp], eax
; Line 40
	cmp	DWORD PTR _i$[ebp], 0
	je	SHORT $LN6@uprv_itou_
	mov	eax, DWORD PTR _length$[ebp]
	cmp	eax, DWORD PTR _capacity$[ebp]
	jl	SHORT $LN10@uprv_itou_
$LN6@uprv_itou_:
; Line 42
	mov	eax, DWORD PTR _length$[ebp]
	cmp	eax, DWORD PTR _minwidth$[ebp]
	jge	SHORT $LN5@uprv_itou_
; Line 43
	mov	eax, 48					; 00000030H
	mov	ecx, DWORD PTR _length$[ebp]
	mov	edx, DWORD PTR _buffer$[ebp]
	mov	WORD PTR [edx+ecx*2], ax
	mov	eax, DWORD PTR _length$[ebp]
	add	eax, 1
	mov	DWORD PTR _length$[ebp], eax
; Line 44
	jmp	SHORT $LN6@uprv_itou_
$LN5@uprv_itou_:
; Line 46
	mov	eax, DWORD PTR _length$[ebp]
	cmp	eax, DWORD PTR _capacity$[ebp]
	jge	SHORT $LN4@uprv_itou_
; Line 47
	xor	eax, eax
	mov	ecx, DWORD PTR _length$[ebp]
	mov	edx, DWORD PTR _buffer$[ebp]
	mov	WORD PTR [edx+ecx*2], ax
$LN4@uprv_itou_:
; Line 51
	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $LN3@uprv_itou_
$LN2@uprv_itou_:
	mov	eax, DWORD PTR _j$[ebp]
	add	eax, 1
	mov	DWORD PTR _j$[ebp], eax
$LN3@uprv_itou_:
	mov	eax, DWORD PTR _length$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	cmp	DWORD PTR _j$[ebp], eax
	jge	SHORT $LN1@uprv_itou_
; Line 52
	mov	eax, DWORD PTR _length$[ebp]
	sub	eax, 1
	sub	eax, DWORD PTR _j$[ebp]
	mov	ecx, DWORD PTR _buffer$[ebp]
	mov	dx, WORD PTR [ecx+eax*2]
	mov	WORD PTR _temp$[ebp], dx
; Line 53
	mov	eax, DWORD PTR _length$[ebp]
	sub	eax, 1
	sub	eax, DWORD PTR _j$[ebp]
	mov	ecx, DWORD PTR _buffer$[ebp]
	mov	edx, DWORD PTR _j$[ebp]
	mov	esi, DWORD PTR _buffer$[ebp]
	mov	dx, WORD PTR [esi+edx*2]
	mov	WORD PTR [ecx+eax*2], dx
; Line 54
	mov	eax, DWORD PTR _j$[ebp]
	mov	ecx, DWORD PTR _buffer$[ebp]
	mov	dx, WORD PTR _temp$[ebp]
	mov	WORD PTR [ecx+eax*2], dx
; Line 55
	jmp	SHORT $LN2@uprv_itou_
$LN1@uprv_itou_:
; Line 56
	mov	eax, DWORD PTR _length$[ebp]
; Line 57
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_uprv_itou_56 ENDP
_TEXT	ENDS
END
