; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.31101.0 

	TITLE	C:\workspace\notepad-plus-plus-6.7.9.2\PowerEditor\src\uchardet\nsSJISProber.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?NextState@nsCodingStateMachine@@QAE?AW4nsSMState@@D@Z ; nsCodingStateMachine::NextState
PUBLIC	?GetCurrentCharLen@nsCodingStateMachine@@QAEIXZ	; nsCodingStateMachine::GetCurrentCharLen
PUBLIC	?Reset@nsCodingStateMachine@@QAEXXZ		; nsCodingStateMachine::Reset
PUBLIC	?HandleOneChar@JapaneseContextAnalysis@@QAEXPBDI@Z ; JapaneseContextAnalysis::HandleOneChar
PUBLIC	?GotEnoughData@JapaneseContextAnalysis@@QAE_NXZ	; JapaneseContextAnalysis::GotEnoughData
PUBLIC	?HandleOneChar@CharDistributionAnalysis@@QAEXPBDI@Z ; CharDistributionAnalysis::HandleOneChar
PUBLIC	?Reset@CharDistributionAnalysis@@QAEX_N@Z	; CharDistributionAnalysis::Reset
PUBLIC	?HandleData@nsSJISProber@@UAE?AW4nsProbingState@@PBDI@Z ; nsSJISProber::HandleData
PUBLIC	?Reset@nsSJISProber@@UAEXXZ			; nsSJISProber::Reset
PUBLIC	?GetConfidence@nsSJISProber@@UAEMXZ		; nsSJISProber::GetConfidence
PUBLIC	__real@3f733333
EXTRN	?GetConfidence@JapaneseContextAnalysis@@QAEMXZ:PROC ; JapaneseContextAnalysis::GetConfidence
EXTRN	?Reset@JapaneseContextAnalysis@@QAEX_N@Z:PROC	; JapaneseContextAnalysis::Reset
EXTRN	?GetConfidence@CharDistributionAnalysis@@QAEMXZ:PROC ; CharDistributionAnalysis::GetConfidence
EXTRN	?jp2CharContext@@3QAY0FD@$$CBEA:BYTE		; jp2CharContext
EXTRN	__fltused:DWORD
;	COMDAT __real@3f733333
CONST	SEGMENT
__real@3f733333 DD 03f733333r			; 0.95
CONST	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
tv79 = -16						; size = 4
_distribCf$ = -12					; size = 4
_contxtCf$ = -8						; size = 4
_this$ = -4						; size = 4
?GetConfidence@nsSJISProber@@UAEMXZ PROC		; nsSJISProber::GetConfidence
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\nssjisprober.cpp
; Line 93
	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	DWORD PTR _this$[ebp], ecx
; Line 94
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?GetConfidence@JapaneseContextAnalysis@@QAEMXZ ; JapaneseContextAnalysis::GetConfidence
	fstp	DWORD PTR _contxtCf$[ebp]
; Line 95
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 60					; 0000003cH
	call	?GetConfidence@CharDistributionAnalysis@@QAEMXZ ; CharDistributionAnalysis::GetConfidence
	fstp	DWORD PTR _distribCf$[ebp]
; Line 97
	movss	xmm0, DWORD PTR _contxtCf$[ebp]
	comiss	xmm0, DWORD PTR _distribCf$[ebp]
	jbe	SHORT $LN3@GetConfide
	movss	xmm0, DWORD PTR _contxtCf$[ebp]
	movss	DWORD PTR tv79[ebp], xmm0
	jmp	SHORT $LN4@GetConfide
$LN3@GetConfide:
	movss	xmm0, DWORD PTR _distribCf$[ebp]
	movss	DWORD PTR tv79[ebp], xmm0
$LN4@GetConfide:
	fld	DWORD PTR tv79[ebp]
; Line 98
	mov	esp, ebp
	pop	ebp
	ret	0
?GetConfidence@nsSJISProber@@UAEMXZ ENDP		; nsSJISProber::GetConfidence
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Reset@nsSJISProber@@UAEXXZ PROC			; nsSJISProber::Reset
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\nssjisprober.cpp
; Line 47
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
; Line 48
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	call	?Reset@nsCodingStateMachine@@QAEXXZ	; nsCodingStateMachine::Reset
; Line 49
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+8], 0
; Line 50
	mov	edx, DWORD PTR _this$[ebp]
	movzx	eax, BYTE PTR [edx+94]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?Reset@JapaneseContextAnalysis@@QAEX_N@Z ; JapaneseContextAnalysis::Reset
; Line 51
	mov	ecx, DWORD PTR _this$[ebp]
	movzx	edx, BYTE PTR [ecx+94]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 60					; 0000003cH
	call	?Reset@CharDistributionAnalysis@@QAEX_N@Z ; CharDistributionAnalysis::Reset
; Line 52
	mov	esp, ebp
	pop	ebp
	ret	0
?Reset@nsSJISProber@@UAEXXZ ENDP			; nsSJISProber::Reset
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
tv227 = -20						; size = 4
_codingState$ = -16					; size = 4
_charLen$1 = -12					; size = 4
_i$2 = -8						; size = 4
_this$ = -4						; size = 4
_aBuf$ = 8						; size = 4
_aLen$ = 12						; size = 4
?HandleData@nsSJISProber@@UAE?AW4nsProbingState@@PBDI@Z PROC ; nsSJISProber::HandleData
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\nssjisprober.cpp
; Line 55
	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	push	esi
	mov	DWORD PTR _this$[ebp], ecx
; Line 58
	mov	DWORD PTR _i$2[ebp], 0
	jmp	SHORT $LN9@HandleData
$LN8@HandleData:
	mov	eax, DWORD PTR _i$2[ebp]
	add	eax, 1
	mov	DWORD PTR _i$2[ebp], eax
$LN9@HandleData:
	mov	ecx, DWORD PTR _i$2[ebp]
	cmp	ecx, DWORD PTR _aLen$[ebp]
	jae	$LN7@HandleData
; Line 60
	mov	edx, DWORD PTR _aBuf$[ebp]
	add	edx, DWORD PTR _i$2[ebp]
	movzx	eax, BYTE PTR [edx]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+4]
	call	?NextState@nsCodingStateMachine@@QAE?AW4nsSMState@@D@Z ; nsCodingStateMachine::NextState
	mov	DWORD PTR _codingState$[ebp], eax
; Line 61
	cmp	DWORD PTR _codingState$[ebp], 2
	jne	SHORT $LN6@HandleData
; Line 63
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+8], 1
; Line 64
	jmp	$LN7@HandleData
$LN6@HandleData:
; Line 66
	cmp	DWORD PTR _codingState$[ebp], 0
	jne	$LN3@HandleData
; Line 68
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	call	?GetCurrentCharLen@nsCodingStateMachine@@QAEIXZ ; nsCodingStateMachine::GetCurrentCharLen
	mov	DWORD PTR _charLen$1[ebp], eax
; Line 69
	cmp	DWORD PTR _i$2[ebp], 0
	jne	SHORT $LN4@HandleData
; Line 71
	mov	ecx, 1
	imul	edx, ecx, 0
	mov	eax, 1
	shl	eax, 0
	mov	ecx, DWORD PTR _this$[ebp]
	mov	esi, DWORD PTR _aBuf$[ebp]
	mov	dl, BYTE PTR [esi+edx]
	mov	BYTE PTR [ecx+eax+92], dl
; Line 72
	mov	eax, DWORD PTR _charLen$1[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 94					; 0000005eH
	sub	ecx, DWORD PTR _charLen$1[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?HandleOneChar@JapaneseContextAnalysis@@QAEXPBDI@Z ; JapaneseContextAnalysis::HandleOneChar
; Line 73
	mov	edx, DWORD PTR _charLen$1[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 92					; 0000005cH
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 60					; 0000003cH
	call	?HandleOneChar@CharDistributionAnalysis@@QAEXPBDI@Z ; CharDistributionAnalysis::HandleOneChar
; Line 75
	jmp	SHORT $LN3@HandleData
$LN4@HandleData:
; Line 77
	mov	ecx, DWORD PTR _charLen$1[ebp]
	push	ecx
	mov	edx, DWORD PTR _i$2[ebp]
	mov	eax, DWORD PTR _aBuf$[ebp]
	lea	ecx, DWORD PTR [eax+edx+1]
	sub	ecx, DWORD PTR _charLen$1[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?HandleOneChar@JapaneseContextAnalysis@@QAEXPBDI@Z ; JapaneseContextAnalysis::HandleOneChar
; Line 78
	mov	edx, DWORD PTR _charLen$1[ebp]
	push	edx
	mov	eax, DWORD PTR _i$2[ebp]
	mov	ecx, DWORD PTR _aBuf$[ebp]
	lea	edx, DWORD PTR [ecx+eax-1]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 60					; 0000003cH
	call	?HandleOneChar@CharDistributionAnalysis@@QAEXPBDI@Z ; CharDistributionAnalysis::HandleOneChar
$LN3@HandleData:
; Line 81
	jmp	$LN8@HandleData
$LN7@HandleData:
; Line 83
	mov	eax, 1
	imul	ecx, eax, 0
	mov	edx, DWORD PTR _aBuf$[ebp]
	add	edx, DWORD PTR _aLen$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [edx-1]
	mov	BYTE PTR [eax+ecx+92], dl
; Line 85
	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+8], 0
	jne	SHORT $LN1@HandleData
; Line 86
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 12					; 0000000cH
	call	?GotEnoughData@JapaneseContextAnalysis@@QAE_NXZ ; JapaneseContextAnalysis::GotEnoughData
	movzx	ecx, al
	test	ecx, ecx
	je	SHORT $LN1@HandleData
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax+20]
	call	edx
	fstp	DWORD PTR tv227[ebp]
	movss	xmm0, DWORD PTR tv227[ebp]
	comiss	xmm0, DWORD PTR __real@3f733333
	jbe	SHORT $LN1@HandleData
; Line 87
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+8], 1
$LN1@HandleData:
; Line 89
	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [ecx+8]
; Line 90
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
?HandleData@nsSJISProber@@UAE?AW4nsProbingState@@PBDI@Z ENDP ; nsSJISProber::HandleData
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?Reset@CharDistributionAnalysis@@QAEX_N@Z
_TEXT	SEGMENT
tv70 = -8						; size = 4
_this$ = -4						; size = 4
_aIsPreferredLanguage$ = 8				; size = 1
?Reset@CharDistributionAnalysis@@QAEX_N@Z PROC		; CharDistributionAnalysis::Reset, COMDAT
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\chardistribution.h
; Line 80
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx
; Line 81
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+4], 0
; Line 82
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+12], 0
; Line 83
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+8], 0
; Line 84
	movzx	eax, BYTE PTR _aIsPreferredLanguage$[ebp]
	test	eax, eax
	je	SHORT $LN3@Reset
	mov	DWORD PTR tv70[ebp], 0
	jmp	SHORT $LN4@Reset
$LN3@Reset:
	mov	DWORD PTR tv70[ebp], 4
$LN4@Reset:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR tv70[ebp]
	mov	DWORD PTR [ecx+16], edx
; Line 85
	mov	esp, ebp
	pop	ebp
	ret	4
?Reset@CharDistributionAnalysis@@QAEX_N@Z ENDP		; CharDistributionAnalysis::Reset
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?HandleOneChar@CharDistributionAnalysis@@QAEXPBDI@Z
_TEXT	SEGMENT
tv70 = -12						; size = 4
_order$ = -8						; size = 4
_this$ = -4						; size = 4
_aStr$ = 8						; size = 4
_aCharLen$ = 12						; size = 4
?HandleOneChar@CharDistributionAnalysis@@QAEXPBDI@Z PROC ; CharDistributionAnalysis::HandleOneChar, COMDAT
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\chardistribution.h
; Line 57
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx
; Line 61
	cmp	DWORD PTR _aCharLen$[ebp], 2
	jne	SHORT $LN6@HandleOneC
	mov	eax, DWORD PTR _aStr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	call	eax
	mov	DWORD PTR tv70[ebp], eax
	jmp	SHORT $LN7@HandleOneC
$LN6@HandleOneC:
	mov	DWORD PTR tv70[ebp], -1
$LN7@HandleOneC:
	mov	ecx, DWORD PTR tv70[ebp]
	mov	DWORD PTR _order$[ebp], ecx
; Line 63
	cmp	DWORD PTR _order$[ebp], 0
	jl	SHORT $LN4@HandleOneC
; Line 65
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	add	eax, 1
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+12], eax
; Line 67
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _order$[ebp]
	cmp	eax, DWORD PTR [edx+24]
	jae	SHORT $LN4@HandleOneC
; Line 69
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	mov	eax, DWORD PTR _order$[ebp]
	movsx	ecx, WORD PTR [edx+eax*2]
	cmp	ecx, 512				; 00000200H
	jge	SHORT $LN4@HandleOneC
; Line 70
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	add	eax, 1
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+8], eax
$LN4@HandleOneC:
; Line 73
	mov	esp, ebp
	pop	ebp
	ret	8
?HandleOneChar@CharDistributionAnalysis@@QAEXPBDI@Z ENDP ; CharDistributionAnalysis::HandleOneChar
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?GotEnoughData@JapaneseContextAnalysis@@QAE_NXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
tv66 = -4						; size = 4
?GotEnoughData@JapaneseContextAnalysis@@QAE_NXZ PROC	; JapaneseContextAnalysis::GotEnoughData, COMDAT
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\jpcntx.h
; Line 80
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+28], 100			; 00000064H
	jbe	SHORT $LN3@GotEnoughD
	mov	DWORD PTR tv66[ebp], 1
	jmp	SHORT $LN4@GotEnoughD
$LN3@GotEnoughD:
	mov	DWORD PTR tv66[ebp], 0
$LN4@GotEnoughD:
	mov	al, BYTE PTR tv66[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
?GotEnoughData@JapaneseContextAnalysis@@QAE_NXZ ENDP	; JapaneseContextAnalysis::GotEnoughData
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?HandleOneChar@JapaneseContextAnalysis@@QAEXPBDI@Z
_TEXT	SEGMENT
tv76 = -12						; size = 4
_order$ = -8						; size = 4
_this$ = -4						; size = 4
_aStr$ = 8						; size = 4
_aCharLen$ = 12						; size = 4
?HandleOneChar@JapaneseContextAnalysis@@QAEXPBDI@Z PROC	; JapaneseContextAnalysis::HandleOneChar, COMDAT
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\jpcntx.h
; Line 59
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx
; Line 63
	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+28], 1000		; 000003e8H
	jbe	SHORT $LN3@HandleOneC
	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+44], 1
$LN3@HandleOneC:
; Line 64
	mov	edx, DWORD PTR _this$[ebp]
	movzx	eax, BYTE PTR [edx+44]
	test	eax, eax
	je	SHORT $LN2@HandleOneC
	jmp	$LN4@HandleOneC
$LN2@HandleOneC:
; Line 67
	cmp	DWORD PTR _aCharLen$[ebp], 2
	jne	SHORT $LN6@HandleOneC
	mov	ecx, DWORD PTR _aStr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax]
	call	edx
	mov	DWORD PTR tv76[ebp], eax
	jmp	SHORT $LN7@HandleOneC
$LN6@HandleOneC:
	mov	DWORD PTR tv76[ebp], -1
$LN7@HandleOneC:
	mov	eax, DWORD PTR tv76[ebp]
	mov	DWORD PTR _order$[ebp], eax
; Line 68
	cmp	DWORD PTR _order$[ebp], -1
	je	SHORT $LN1@HandleOneC
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+36], -1
	je	SHORT $LN1@HandleOneC
; Line 70
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+28]
	add	eax, 1
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+28], eax
; Line 72
	mov	edx, DWORD PTR _this$[ebp]
	imul	eax, DWORD PTR [edx+36], 83
	mov	ecx, DWORD PTR _order$[ebp]
	movzx	edx, BYTE PTR ?jp2CharContext@@3QAY0FD@$$CBEA[eax+ecx]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4+4]
	add	ecx, 1
	mov	edx, DWORD PTR _this$[ebp]
	imul	eax, DWORD PTR [edx+36], 83
	mov	edx, DWORD PTR _order$[ebp]
	movzx	eax, BYTE PTR ?jp2CharContext@@3QAY0FD@$$CBEA[eax+edx]
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+eax*4+4], ecx
$LN1@HandleOneC:
; Line 74
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _order$[ebp]
	mov	DWORD PTR [eax+36], ecx
$LN4@HandleOneC:
; Line 75
	mov	esp, ebp
	pop	ebp
	ret	8
?HandleOneChar@JapaneseContextAnalysis@@QAEXPBDI@Z ENDP	; JapaneseContextAnalysis::HandleOneChar
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?Reset@nsCodingStateMachine@@QAEXXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Reset@nsCodingStateMachine@@QAEXXZ PROC		; nsCodingStateMachine::Reset, COMDAT
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\nscodingstatemachine.h
; Line 81
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0
	mov	esp, ebp
	pop	ebp
	ret	0
?Reset@nsCodingStateMachine@@QAEXXZ ENDP		; nsCodingStateMachine::Reset
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?GetCurrentCharLen@nsCodingStateMachine@@QAEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?GetCurrentCharLen@nsCodingStateMachine@@QAEIXZ PROC	; nsCodingStateMachine::GetCurrentCharLen, COMDAT
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\nscodingstatemachine.h
; Line 80
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+4]
	mov	esp, ebp
	pop	ebp
	ret	0
?GetCurrentCharLen@nsCodingStateMachine@@QAEIXZ ENDP	; nsCodingStateMachine::GetCurrentCharLen
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ?NextState@nsCodingStateMachine@@QAE?AW4nsSMState@@D@Z
_TEXT	SEGMENT
_byteCls$ = -8						; size = 4
_this$ = -4						; size = 4
_c$ = 8							; size = 1
?NextState@nsCodingStateMachine@@QAE?AW4nsSMState@@D@Z PROC ; nsCodingStateMachine::NextState, COMDAT
; _this$ = ecx
; File c:\workspace\notepad-plus-plus-6.7.9.2\powereditor\src\uchardet\nscodingstatemachine.h
; Line 66
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	esi
	mov	DWORD PTR _this$[ebp], ecx
; Line 68
	mov	eax, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax+12]
	movzx	eax, BYTE PTR _c$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+12]
	mov	ecx, DWORD PTR [ecx]
	sar	eax, cl
	mov	edx, DWORD PTR [edx+16]
	movzx	esi, BYTE PTR _c$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+12]
	and	esi, DWORD PTR [ecx+4]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+12]
	mov	ecx, DWORD PTR [ecx+8]
	shl	esi, cl
	mov	edx, DWORD PTR [edx+eax*4]
	mov	ecx, esi
	shr	edx, cl
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	and	edx, DWORD PTR [ecx+12]
	mov	DWORD PTR _byteCls$[ebp], edx
; Line 69
	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx], 0
	jne	SHORT $LN1@NextState
; Line 71
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+8], 0
; Line 72
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	mov	eax, DWORD PTR [edx+44]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _byteCls$[ebp]
	mov	eax, DWORD PTR [eax+edx*4]
	mov	DWORD PTR [ecx+4], eax
$LN1@NextState:
; Line 75
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	imul	eax, DWORD PTR [ecx+20]
	add	eax, DWORD PTR _byteCls$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+12]
	mov	ecx, DWORD PTR [ecx+24]
	shr	eax, cl
	mov	edx, DWORD PTR [edx+40]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+12]
	mov	esi, DWORD PTR _this$[ebp]
	mov	esi, DWORD PTR [esi]
	imul	esi, DWORD PTR [ecx+20]
	add	esi, DWORD PTR _byteCls$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+12]
	and	esi, DWORD PTR [ecx+28]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+12]
	mov	ecx, DWORD PTR [ecx+32]
	shl	esi, cl
	mov	edx, DWORD PTR [edx+eax*4]
	mov	ecx, esi
	shr	edx, cl
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	and	edx, DWORD PTR [ecx+36]
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
; Line 77
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	add	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+8], edx
; Line 78
	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [ecx]
; Line 79
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?NextState@nsCodingStateMachine@@QAE?AW4nsSMState@@D@Z ENDP ; nsCodingStateMachine::NextState
_TEXT	ENDS
END