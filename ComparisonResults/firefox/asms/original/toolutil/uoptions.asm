; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\mozilla\intl\icu\source\tools\toolutil\uoptions.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD

PUBLIC	_u_parseArgs
EXTRN	_strcmp:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\mozilla\intl\icu\source\tools\toolutil\uoptions.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _u_parseArgs
_TEXT	SEGMENT
_j$3765 = -92						; size = 4
_j$3747 = -80						; size = 4
_option$3742 = -68					; size = 4
_stopOptions$ = -53					; size = 1
_c$ = -41						; size = 1
_remaining$ = -32					; size = 4
_i$ = -20						; size = 4
_arg$ = -8						; size = 4
_argc$ = 8						; size = 4
_argv$ = 12						; size = 4
_optionCount$ = 16					; size = 4
_options$ = 20						; size = 4
_u_parseArgs PROC					; COMDAT
; Line 25
	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-288]
	mov	ecx, 72					; 00000048H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 27
	mov	DWORD PTR _i$[ebp], 1
	mov	DWORD PTR _remaining$[ebp], 1
; Line 28
	mov	BYTE PTR _stopOptions$[ebp], 0
$LN35@u_parseArg:
; Line 30
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _argc$[ebp]
	jge	$LN34@u_parseArg
; Line 31
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _arg$[ebp], edx
; Line 32
	movsx	eax, BYTE PTR _stopOptions$[ebp]
	test	eax, eax
	jne	$LN33@u_parseArg
	mov	eax, DWORD PTR _arg$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 45					; 0000002dH
	jne	$LN33@u_parseArg
	mov	eax, DWORD PTR _arg$[ebp]
	mov	cl, BYTE PTR [eax+1]
	mov	BYTE PTR _c$[ebp], cl
	movsx	edx, BYTE PTR _c$[ebp]
	test	edx, edx
	je	$LN33@u_parseArg
; Line 34
	mov	DWORD PTR _option$3742[ebp], 0
; Line 35
	mov	eax, DWORD PTR _arg$[ebp]
	add	eax, 2
	mov	DWORD PTR _arg$[ebp], eax
; Line 36
	movsx	eax, BYTE PTR _c$[ebp]
	cmp	eax, 45					; 0000002dH
	jne	$LN17@u_parseArg
; Line 38
	mov	eax, DWORD PTR _arg$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $LN31@u_parseArg
; Line 40
	mov	BYTE PTR _stopOptions$[ebp], 1
; Line 41
	jmp	$LN30@u_parseArg
$LN31@u_parseArg:
; Line 44
	mov	DWORD PTR _j$3747[ebp], 0
	jmp	SHORT $LN29@u_parseArg
$LN28@u_parseArg:
	mov	eax, DWORD PTR _j$3747[ebp]
	add	eax, 1
	mov	DWORD PTR _j$3747[ebp], eax
$LN29@u_parseArg:
	mov	eax, DWORD PTR _j$3747[ebp]
	cmp	eax, DWORD PTR _optionCount$[ebp]
	jge	SHORT $LN27@u_parseArg
; Line 45
	mov	eax, DWORD PTR _j$3747[ebp]
	imul	eax, 20					; 00000014H
	mov	ecx, DWORD PTR _options$[ebp]
	cmp	DWORD PTR [ecx+eax], 0
	je	SHORT $LN26@u_parseArg
	mov	eax, DWORD PTR _j$3747[ebp]
	imul	eax, 20					; 00000014H
	mov	ecx, DWORD PTR _options$[ebp]
	mov	edx, DWORD PTR [ecx+eax]
	push	edx
	mov	eax, DWORD PTR _arg$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $LN26@u_parseArg
; Line 46
	mov	eax, DWORD PTR _j$3747[ebp]
	imul	eax, 20					; 00000014H
	add	eax, DWORD PTR _options$[ebp]
	mov	DWORD PTR _option$3742[ebp], eax
; Line 47
	jmp	SHORT $LN27@u_parseArg
$LN26@u_parseArg:
; Line 49
	jmp	SHORT $LN28@u_parseArg
$LN27@u_parseArg:
; Line 50
	cmp	DWORD PTR _option$3742[ebp], 0
	jne	SHORT $LN25@u_parseArg
; Line 52
	mov	eax, DWORD PTR _i$[ebp]
	neg	eax
	jmp	$LN36@u_parseArg
$LN25@u_parseArg:
; Line 54
	mov	eax, DWORD PTR _option$3742[ebp]
	mov	BYTE PTR [eax+18], 1
; Line 56
	mov	eax, DWORD PTR _option$3742[ebp]
	movsx	ecx, BYTE PTR [eax+17]
	test	ecx, ecx
	je	SHORT $LN24@u_parseArg
; Line 58
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	cmp	eax, DWORD PTR _argc$[ebp]
	jge	SHORT $LN23@u_parseArg
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+4]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 45					; 0000002dH
	jne	SHORT $LN22@u_parseArg
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+4]
	movsx	eax, BYTE PTR [edx+1]
	test	eax, eax
	jne	SHORT $LN23@u_parseArg
$LN22@u_parseArg:
; Line 60
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
	mov	ecx, DWORD PTR _option$3742[ebp]
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR [ecx+4], edx
	jmp	SHORT $LN24@u_parseArg
$LN23@u_parseArg:
; Line 61
	mov	eax, DWORD PTR _option$3742[ebp]
	movsx	ecx, BYTE PTR [eax+17]
	cmp	ecx, 1
	jne	SHORT $LN24@u_parseArg
; Line 63
	mov	eax, DWORD PTR _option$3742[ebp]
	mov	BYTE PTR [eax+18], 0
; Line 64
	mov	eax, DWORD PTR _i$[ebp]
	neg	eax
	jmp	$LN36@u_parseArg
$LN24@u_parseArg:
; Line 68
	mov	eax, DWORD PTR _option$3742[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $LN30@u_parseArg
	mov	esi, esp
	mov	eax, DWORD PTR _option$3742[ebp]
	push	eax
	mov	ecx, DWORD PTR _option$3742[ebp]
	mov	edx, DWORD PTR [ecx+12]
	push	edx
	mov	eax, DWORD PTR _option$3742[ebp]
	mov	ecx, DWORD PTR [eax+8]
	call	ecx
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN30@u_parseArg
; Line 70
	mov	eax, DWORD PTR _option$3742[ebp]
	mov	BYTE PTR [eax+18], 0
; Line 71
	mov	eax, DWORD PTR _i$[ebp]
	neg	eax
	jmp	$LN36@u_parseArg
$LN30@u_parseArg:
; Line 74
	jmp	$LN18@u_parseArg
$LN17@u_parseArg:
; Line 79
	mov	DWORD PTR _j$3765[ebp], 0
	jmp	SHORT $LN14@u_parseArg
$LN13@u_parseArg:
	mov	eax, DWORD PTR _j$3765[ebp]
	add	eax, 1
	mov	DWORD PTR _j$3765[ebp], eax
$LN14@u_parseArg:
	mov	eax, DWORD PTR _j$3765[ebp]
	cmp	eax, DWORD PTR _optionCount$[ebp]
	jge	SHORT $LN12@u_parseArg
; Line 80
	movsx	eax, BYTE PTR _c$[ebp]
	mov	ecx, DWORD PTR _j$3765[ebp]
	imul	ecx, 20					; 00000014H
	mov	edx, DWORD PTR _options$[ebp]
	movsx	ecx, BYTE PTR [edx+ecx+16]
	cmp	eax, ecx
	jne	SHORT $LN11@u_parseArg
; Line 81
	mov	eax, DWORD PTR _j$3765[ebp]
	imul	eax, 20					; 00000014H
	add	eax, DWORD PTR _options$[ebp]
	mov	DWORD PTR _option$3742[ebp], eax
; Line 82
	jmp	SHORT $LN12@u_parseArg
$LN11@u_parseArg:
; Line 84
	jmp	SHORT $LN13@u_parseArg
$LN12@u_parseArg:
; Line 85
	cmp	DWORD PTR _option$3742[ebp], 0
	jne	SHORT $LN10@u_parseArg
; Line 87
	mov	eax, DWORD PTR _i$[ebp]
	neg	eax
	jmp	$LN36@u_parseArg
$LN10@u_parseArg:
; Line 89
	mov	eax, DWORD PTR _option$3742[ebp]
	mov	BYTE PTR [eax+18], 1
; Line 91
	mov	eax, DWORD PTR _option$3742[ebp]
	movsx	ecx, BYTE PTR [eax+17]
	test	ecx, ecx
	je	$LN9@u_parseArg
; Line 93
	mov	eax, DWORD PTR _arg$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN8@u_parseArg
; Line 95
	mov	eax, DWORD PTR _option$3742[ebp]
	mov	ecx, DWORD PTR _arg$[ebp]
	mov	DWORD PTR [eax+4], ecx
; Line 97
	jmp	$LN18@u_parseArg
	jmp	SHORT $LN9@u_parseArg
$LN8@u_parseArg:
; Line 98
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	cmp	eax, DWORD PTR _argc$[ebp]
	jge	SHORT $LN6@u_parseArg
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+4]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 45					; 0000002dH
	jne	SHORT $LN5@u_parseArg
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+4]
	movsx	eax, BYTE PTR [edx+1]
	test	eax, eax
	jne	SHORT $LN6@u_parseArg
$LN5@u_parseArg:
; Line 100
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
	mov	ecx, DWORD PTR _option$3742[ebp]
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR [ecx+4], edx
; Line 102
	jmp	SHORT $LN18@u_parseArg
	jmp	SHORT $LN9@u_parseArg
$LN6@u_parseArg:
; Line 103
	mov	eax, DWORD PTR _option$3742[ebp]
	movsx	ecx, BYTE PTR [eax+17]
	cmp	ecx, 1
	jne	SHORT $LN9@u_parseArg
; Line 105
	mov	eax, DWORD PTR _option$3742[ebp]
	mov	BYTE PTR [eax+18], 0
; Line 106
	mov	eax, DWORD PTR _i$[ebp]
	neg	eax
	jmp	$LN36@u_parseArg
$LN9@u_parseArg:
; Line 110
	mov	eax, DWORD PTR _option$3742[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $LN2@u_parseArg
	mov	esi, esp
	mov	eax, DWORD PTR _option$3742[ebp]
	push	eax
	mov	ecx, DWORD PTR _option$3742[ebp]
	mov	edx, DWORD PTR [ecx+12]
	push	edx
	mov	eax, DWORD PTR _option$3742[ebp]
	mov	ecx, DWORD PTR [eax+8]
	call	ecx
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	test	eax, eax
	jge	SHORT $LN2@u_parseArg
; Line 112
	mov	eax, DWORD PTR _option$3742[ebp]
	mov	BYTE PTR [eax+18], 0
; Line 113
	mov	eax, DWORD PTR _i$[ebp]
	neg	eax
	jmp	SHORT $LN36@u_parseArg
$LN2@u_parseArg:
; Line 117
	mov	DWORD PTR _option$3742[ebp], 0
; Line 118
	mov	eax, DWORD PTR _arg$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR _c$[ebp], cl
	mov	edx, DWORD PTR _arg$[ebp]
	add	edx, 1
	mov	DWORD PTR _arg$[ebp], edx
; Line 119
	movsx	eax, BYTE PTR _c$[ebp]
	test	eax, eax
	jne	$LN17@u_parseArg
$LN18@u_parseArg:
; Line 123
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
; Line 124
	jmp	SHORT $LN1@u_parseArg
$LN33@u_parseArg:
; Line 126
	mov	eax, DWORD PTR _remaining$[ebp]
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR _arg$[ebp]
	mov	DWORD PTR [ecx+eax*4], edx
	mov	eax, DWORD PTR _remaining$[ebp]
	add	eax, 1
	mov	DWORD PTR _remaining$[ebp], eax
; Line 127
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN1@u_parseArg:
; Line 129
	jmp	$LN35@u_parseArg
$LN34@u_parseArg:
; Line 130
	mov	eax, DWORD PTR _remaining$[ebp]
$LN36@u_parseArg:
; Line 131
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 288				; 00000120H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_u_parseArgs ENDP
_TEXT	ENDS
END
