; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\mozilla\intl\icu\source\extra\uconv\uwmsg.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD

PUBLIC	??_C@_1EO@JHNPCCOG@?$AA?5?$AA?$CI?$AAU?$AAC?$AAO?$AAN?$AAF?$AAI?$AAG?$AA_?$AAN?$AAO?$AA_?$AAF?$AAO?$AAR?$AAM?$AAA?$AAT?$AAT?$AAI?$AAN?$AAG?$AA?5?$AAs?$AAe?$AAe?$AA?5?$AAu?$AAc?$AAo?$AAn@ ; `string'
PUBLIC	_gInfoMessages
PUBLIC	_gErrMessages
_BSS	SEGMENT
_gBundle DD	01H DUP (?)
_gInfoMessages DD 01H DUP (?)
_gErrMessages DD 01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
_gNoFormatting DD FLAT:??_C@_1EO@JHNPCCOG@?$AA?5?$AA?$CI?$AAU?$AAC?$AAO?$AAN?$AAF?$AAI?$AAG?$AA_?$AAN?$AAO?$AA_?$AAF?$AAO?$AAR?$AAM?$AAA?$AAT?$AAT?$AAI?$AAN?$AAG?$AA?5?$AAs?$AAe?$AAe?$AA?5?$AAu?$AAc?$AAo?$AAn@
_DATA	ENDS
;	COMDAT ??_C@_1EO@JHNPCCOG@?$AA?5?$AA?$CI?$AAU?$AAC?$AAO?$AAN?$AAF?$AAI?$AAG?$AA_?$AAN?$AAO?$AA_?$AAF?$AAO?$AAR?$AAM?$AAA?$AAT?$AAT?$AAI?$AAN?$AAG?$AA?5?$AAs?$AAe?$AAe?$AA?5?$AAu?$AAc?$AAo?$AAn@
CONST	SEGMENT
??_C@_1EO@JHNPCCOG@?$AA?5?$AA?$CI?$AAU?$AAC?$AAO?$AAN?$AAF?$AAI?$AAG?$AA_?$AAN?$AAO?$AA_?$AAF?$AAO?$AAR?$AAM?$AAA?$AAT?$AAT?$AAI?$AAN?$AAG?$AA?5?$AAs?$AAe?$AAe?$AA?5?$AAu?$AAc?$AAo?$AAn@ DB ' '
	DB	00H, '(', 00H, 'U', 00H, 'C', 00H, 'O', 00H, 'N', 00H, 'F', 00H
	DB	'I', 00H, 'G', 00H, '_', 00H, 'N', 00H, 'O', 00H, '_', 00H, 'F'
	DB	00H, 'O', 00H, 'R', 00H, 'M', 00H, 'A', 00H, 'T', 00H, 'T', 00H
	DB	'I', 00H, 'N', 00H, 'G', 00H, ' ', 00H, 's', 00H, 'e', 00H, 'e'
	DB	00H, ' ', 00H, 'u', 00H, 'c', 00H, 'o', 00H, 'n', 00H, 'f', 00H
	DB	'i', 00H, 'g', 00H, '.', 00H, 'h', 00H, ')', 00H, 00H, 00H ; `string'
CONST	ENDS
PUBLIC	_u_wmsg_setPath
EXTRN	_ures_open_56:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\mozilla\intl\icu\source\extra\uconv\uwmsg.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _u_wmsg_setPath
_TEXT	SEGMENT
_b$7495 = -8						; size = 4
_path$ = 8						; size = 4
_err$ = 12						; size = 4
_u_wmsg_setPath PROC					; COMDAT
; Line 90
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
; Line 91
	mov	eax, DWORD PTR _err$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN4@u_wmsg_set
; Line 93
	xor	eax, eax
	jmp	SHORT $LN5@u_wmsg_set
$LN4@u_wmsg_set:
; Line 96
	cmp	DWORD PTR _gBundle, 0
	je	SHORT $LN3@u_wmsg_set
; Line 98
	mov	eax, DWORD PTR _err$[ebp]
	mov	DWORD PTR [eax], 1
; Line 99
	xor	eax, eax
	jmp	SHORT $LN5@u_wmsg_set
; Line 101
	jmp	SHORT $LN2@u_wmsg_set
$LN3@u_wmsg_set:
; Line 103
	mov	DWORD PTR _b$7495[ebp], 0
; Line 104
	mov	eax, DWORD PTR _err$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _path$[ebp]
	push	ecx
	call	_ures_open_56
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _b$7495[ebp], eax
; Line 105
	mov	eax, DWORD PTR _err$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN1@u_wmsg_set
; Line 107
	xor	eax, eax
	jmp	SHORT $LN5@u_wmsg_set
$LN1@u_wmsg_set:
; Line 110
	mov	eax, DWORD PTR _b$7495[ebp]
	mov	DWORD PTR _gBundle, eax
$LN2@u_wmsg_set:
; Line 115
	mov	eax, DWORD PTR _gBundle
$LN5@u_wmsg_set:
; Line 116
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_u_wmsg_setPath ENDP
_TEXT	ENDS
PUBLIC	__$ArrayPad$
PUBLIC	_u_wmsg
EXTRN	_u_vformatMessage_56:PROC
EXTRN	_uloc_getDefault_56:PROC
EXTRN	_ures_getStringByKey_56:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__chkstk:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _u_wmsg
_TEXT	SEGMENT
_resultLength$ = -8260					; size = 4
_result$ = -8248					; size = 8192
_ap$ = -48						; size = 4
_err$ = -36						; size = 4
_msgLen$ = -24						; size = 4
_msg$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
_fp$ = 8						; size = 4
_tag$ = 12						; size = 4
_u_wmsg	PROC						; COMDAT
; Line 120
	push	ebp
	mov	ebp, esp
	mov	eax, 8456				; 00002108H
	call	__chkstk
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-8456]
	mov	ecx, 2114				; 00000842H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 123
	mov	DWORD PTR _err$[ebp], 0
; Line 128
	mov	DWORD PTR _resultLength$[ebp], 4096	; 00001000H
; Line 130
	cmp	DWORD PTR _gBundle, 0
	jne	SHORT $LN4@u_wmsg
; Line 135
	or	eax, -1
	jmp	$LN5@u_wmsg
$LN4@u_wmsg:
; Line 138
	lea	eax, DWORD PTR _err$[ebp]
	push	eax
	lea	ecx, DWORD PTR _msgLen$[ebp]
	push	ecx
	mov	edx, DWORD PTR _tag$[ebp]
	push	edx
	mov	eax, DWORD PTR _gBundle
	push	eax
	call	_ures_getStringByKey_56
	add	esp, 16					; 00000010H
	mov	DWORD PTR _msg$[ebp], eax
; Line 140
	cmp	DWORD PTR _err$[ebp], 0
	jle	SHORT $LN3@u_wmsg
; Line 142
	or	eax, -1
	jmp	$LN5@u_wmsg
$LN3@u_wmsg:
; Line 156
	lea	eax, DWORD PTR _tag$[ebp+4]
	mov	DWORD PTR _ap$[ebp], eax
; Line 158
	lea	eax, DWORD PTR _err$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ap$[ebp]
	push	ecx
	mov	edx, DWORD PTR _resultLength$[ebp]
	push	edx
	lea	eax, DWORD PTR _result$[ebp]
	push	eax
	mov	ecx, DWORD PTR _msgLen$[ebp]
	push	ecx
	mov	edx, DWORD PTR _msg$[ebp]
	push	edx
	call	_uloc_getDefault_56
	push	eax
	call	_u_vformatMessage_56
	add	esp, 28					; 0000001cH
	mov	DWORD PTR _resultLength$[ebp], eax
; Line 160
	mov	DWORD PTR _ap$[ebp], 0
; Line 162
	cmp	DWORD PTR _err$[ebp], 0
	jle	SHORT $LN2@u_wmsg
; Line 170
	mov	DWORD PTR _err$[ebp], 0
; Line 171
	lea	eax, DWORD PTR _err$[ebp]
	push	eax
	mov	ecx, DWORD PTR _fp$[ebp]
	push	ecx
	mov	edx, DWORD PTR _msgLen$[ebp]
	push	edx
	mov	eax, DWORD PTR _msg$[ebp]
	push	eax
	call	_uprint
	add	esp, 16					; 00000010H
; Line 172
	or	eax, -1
	jmp	SHORT $LN5@u_wmsg
$LN2@u_wmsg:
; Line 175
	lea	eax, DWORD PTR _err$[ebp]
	push	eax
	mov	ecx, DWORD PTR _fp$[ebp]
	push	ecx
	mov	edx, DWORD PTR _resultLength$[ebp]
	push	edx
	lea	eax, DWORD PTR _result$[ebp]
	push	eax
	call	_uprint
	add	esp, 16					; 00000010H
; Line 178
	cmp	DWORD PTR _err$[ebp], 0
	jle	SHORT $LN1@u_wmsg
; Line 186
	or	eax, -1
	jmp	SHORT $LN5@u_wmsg
$LN1@u_wmsg:
; Line 189
	xor	eax, eax
$LN5@u_wmsg:
; Line 190
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN11@u_wmsg
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 8456				; 00002108H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN11@u_wmsg:
	DD	3
	DD	$LN10@u_wmsg
$LN10@u_wmsg:
	DD	-24					; ffffffe8H
	DD	4
	DD	$LN7@u_wmsg
	DD	-36					; ffffffdcH
	DD	4
	DD	$LN8@u_wmsg
	DD	-8248					; ffffdfc8H
	DD	8192					; 00002000H
	DD	$LN9@u_wmsg
$LN9@u_wmsg:
	DB	114					; 00000072H
	DB	101					; 00000065H
	DB	115					; 00000073H
	DB	117					; 00000075H
	DB	108					; 0000006cH
	DB	116					; 00000074H
	DB	0
$LN8@u_wmsg:
	DB	101					; 00000065H
	DB	114					; 00000072H
	DB	114					; 00000072H
	DB	0
$LN7@u_wmsg:
	DB	109					; 0000006dH
	DB	115					; 00000073H
	DB	103					; 00000067H
	DB	76					; 0000004cH
	DB	101					; 00000065H
	DB	110					; 0000006eH
	DB	0
_u_wmsg	ENDP
_TEXT	ENDS
PUBLIC	__$ArrayPad$
EXTRN	_ucnv_close_56:PROC
EXTRN	__imp__fwrite:PROC
EXTRN	_ucnv_fromUnicode_56:PROC
EXTRN	_ucnv_open_56:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _uprint
_TEXT	SEGMENT
_arraySize$ = -196					; size = 4
_myTarget$ = -184					; size = 4
_mySourceEnd$ = -172					; size = 4
_mySource$ = -160					; size = 4
_buf$ = -148						; size = 128
_converter$ = -12					; size = 4
__$ArrayPad$ = -4					; size = 4
_s$ = 8							; size = 4
_sourceLen$ = 12					; size = 4
_f$ = 16						; size = 4
_status$ = 20						; size = 4
_uprint	PROC						; COMDAT
; Line 37
	push	ebp
	mov	ebp, esp
	sub	esp, 392				; 00000188H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-392]
	mov	ecx, 98					; 00000062H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 46
	cmp	DWORD PTR _s$[ebp], 0
	jne	SHORT $LN5@uprint
	jmp	$LN6@uprint
$LN5@uprint:
; Line 49
	mov	eax, DWORD PTR _s$[ebp]
	mov	DWORD PTR _mySource$[ebp], eax
; Line 50
	mov	eax, DWORD PTR _sourceLen$[ebp]
	mov	ecx, DWORD PTR _mySource$[ebp]
	lea	edx, DWORD PTR [ecx+eax*2]
	mov	DWORD PTR _mySourceEnd$[ebp], edx
; Line 51
	lea	eax, DWORD PTR _buf$[ebp]
	mov	DWORD PTR _myTarget$[ebp], eax
; Line 52
	mov	DWORD PTR _arraySize$[ebp], 128		; 00000080H
; Line 55
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	push	0
	call	_ucnv_open_56
	add	esp, 8
	mov	DWORD PTR _converter$[ebp], eax
; Line 58
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 0
	jle	SHORT $LN3@uprint
	jmp	$finish$7475
$LN3@uprint:
; Line 63
	mov	eax, DWORD PTR _status$[ebp]
	mov	DWORD PTR [eax], 0
; Line 68
	mov	eax, DWORD PTR _status$[ebp]
	push	eax
	push	1
	push	0
	mov	ecx, DWORD PTR _mySourceEnd$[ebp]
	push	ecx
	lea	edx, DWORD PTR _mySource$[ebp]
	push	edx
	mov	eax, DWORD PTR _myTarget$[ebp]
	add	eax, DWORD PTR _arraySize$[ebp]
	push	eax
	lea	ecx, DWORD PTR _myTarget$[ebp]
	push	ecx
	mov	edx, DWORD PTR _converter$[ebp]
	push	edx
	call	_ucnv_fromUnicode_56
	add	esp, 32					; 00000020H
; Line 71
	mov	esi, esp
	mov	eax, DWORD PTR _f$[ebp]
	push	eax
	mov	ecx, DWORD PTR _myTarget$[ebp]
	lea	edx, DWORD PTR _buf$[ebp]
	sub	ecx, edx
	push	ecx
	push	1
	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	call	DWORD PTR __imp__fwrite
	add	esp, 16					; 00000010H
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 74
	lea	eax, DWORD PTR _buf$[ebp]
	mov	DWORD PTR _myTarget$[ebp], eax
; Line 75
	mov	DWORD PTR _arraySize$[ebp], 128		; 00000080H
; Line 77
	mov	eax, DWORD PTR _status$[ebp]
	cmp	DWORD PTR [eax], 15			; 0000000fH
	je	$LN3@uprint
$finish$7475:
; Line 82
	mov	eax, DWORD PTR _converter$[ebp]
	push	eax
	call	_ucnv_close_56
	add	esp, 4
$LN6@uprint:
; Line 83
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN12@uprint
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 392				; 00000188H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN12@uprint:
	DD	3
	DD	$LN11@uprint
$LN11@uprint:
	DD	-148					; ffffff6cH
	DD	128					; 00000080H
	DD	$LN8@uprint
	DD	-160					; ffffff60H
	DD	4
	DD	$LN9@uprint
	DD	-184					; ffffff48H
	DD	4
	DD	$LN10@uprint
$LN10@uprint:
	DB	109					; 0000006dH
	DB	121					; 00000079H
	DB	84					; 00000054H
	DB	97					; 00000061H
	DB	114					; 00000072H
	DB	103					; 00000067H
	DB	101					; 00000065H
	DB	116					; 00000074H
	DB	0
$LN9@uprint:
	DB	109					; 0000006dH
	DB	121					; 00000079H
	DB	83					; 00000053H
	DB	111					; 0000006fH
	DB	117					; 00000075H
	DB	114					; 00000072H
	DB	99					; 00000063H
	DB	101					; 00000065H
	DB	0
$LN8@uprint:
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	0
_uprint	ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BK@GOFKINGK@UNDOCUMENTED?5ICU?5ERROR?5?$CFd?$AA@ ; `string'
PUBLIC	__$ArrayPad$
PUBLIC	_u_wmsg_errorName
EXTRN	_u_charsToUChars_56:PROC
EXTRN	__imp__malloc:PROC
EXTRN	_strlen:PROC
EXTRN	__imp__sprintf:PROC
EXTRN	_u_errorName_56:PROC
;	COMDAT ??_C@_0BK@GOFKINGK@UNDOCUMENTED?5ICU?5ERROR?5?$CFd?$AA@
CONST	SEGMENT
??_C@_0BK@GOFKINGK@UNDOCUMENTED?5ICU?5ERROR?5?$CFd?$AA@ DB 'UNDOCUMENTED '
	DB	'ICU ERROR %d', 00H				; `string'
; Function compile flags: /Odtp /RTCsu /ZI
CONST	ENDS
;	COMDAT _u_wmsg_errorName
_TEXT	SEGMENT
_error$7559 = -196					; size = 128
_errname$7552 = -60					; size = 4
_textMsg$ = -48						; size = 4
_subErr$ = -36						; size = 4
_msgLen$ = -24						; size = 4
_msg$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
_err$ = 8						; size = 4
_u_wmsg_errorName PROC					; COMDAT
; Line 214
	push	ebp
	mov	ebp, esp
	sub	esp, 392				; 00000188H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-392]
	mov	ecx, 98					; 00000062H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 217
	mov	DWORD PTR _subErr$[ebp], 0
; Line 218
	mov	DWORD PTR _textMsg$[ebp], 0
; Line 221
	mov	eax, DWORD PTR _err$[ebp]
	push	eax
	call	_fetchErrorName
	add	esp, 4
	mov	DWORD PTR _msg$[ebp], eax
; Line 223
	cmp	DWORD PTR _msg$[ebp], 0
	je	SHORT $LN9@u_wmsg_err
; Line 225
	mov	eax, DWORD PTR _msg$[ebp]
	jmp	$LN10@u_wmsg_err
$LN9@u_wmsg_err:
; Line 228
	cmp	DWORD PTR _gBundle, 0
	jne	SHORT $LN8@u_wmsg_err
; Line 230
	mov	DWORD PTR _msg$[ebp], 0
; Line 232
	jmp	SHORT $LN7@u_wmsg_err
$LN8@u_wmsg_err:
; Line 234
	mov	eax, DWORD PTR _err$[ebp]
	push	eax
	call	_u_errorName_56
	add	esp, 4
	mov	DWORD PTR _errname$7552[ebp], eax
; Line 235
	cmp	DWORD PTR _errname$7552[ebp], 0
	je	SHORT $LN7@u_wmsg_err
; Line 236
	lea	eax, DWORD PTR _subErr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _msgLen$[ebp]
	push	ecx
	mov	edx, DWORD PTR _errname$7552[ebp]
	push	edx
	mov	eax, DWORD PTR _gBundle
	push	eax
	call	_ures_getStringByKey_56
	add	esp, 16					; 00000010H
	mov	DWORD PTR _msg$[ebp], eax
; Line 237
	cmp	DWORD PTR _subErr$[ebp], 0
	jle	SHORT $LN7@u_wmsg_err
; Line 239
	mov	DWORD PTR _msg$[ebp], 0
$LN7@u_wmsg_err:
; Line 244
	cmp	DWORD PTR _msg$[ebp], 0
	jne	$LN4@u_wmsg_err
; Line 247
	mov	eax, DWORD PTR _err$[ebp]
	push	eax
	call	_u_errorName_56
	add	esp, 4
	mov	DWORD PTR _textMsg$[ebp], eax
; Line 248
	cmp	DWORD PTR _textMsg$[ebp], 0
	jne	SHORT $LN3@u_wmsg_err
; Line 249
	mov	esi, esp
	mov	eax, DWORD PTR _err$[ebp]
	push	eax
	push	OFFSET ??_C@_0BK@GOFKINGK@UNDOCUMENTED?5ICU?5ERROR?5?$CFd?$AA@
	lea	ecx, DWORD PTR _error$7559[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 250
	lea	eax, DWORD PTR _error$7559[ebp]
	mov	DWORD PTR _textMsg$[ebp], eax
$LN3@u_wmsg_err:
; Line 252
	mov	eax, DWORD PTR _textMsg$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	lea	ecx, DWORD PTR [eax+eax+2]
	mov	esi, esp
	push	ecx
	call	DWORD PTR __imp__malloc
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _msg$[ebp], eax
; Line 253
	mov	eax, DWORD PTR _textMsg$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	add	eax, 1
	push	eax
	mov	ecx, DWORD PTR _msg$[ebp]
	push	ecx
	mov	edx, DWORD PTR _textMsg$[ebp]
	push	edx
	call	_u_charsToUChars_56
	add	esp, 12					; 0000000cH
$LN4@u_wmsg_err:
; Line 256
	cmp	DWORD PTR _err$[ebp], 0
	jl	SHORT $LN2@u_wmsg_err
; Line 257
	mov	eax, DWORD PTR _err$[ebp]
	mov	ecx, DWORD PTR _gErrMessages
	mov	edx, DWORD PTR _msg$[ebp]
	mov	DWORD PTR [ecx+eax*4], edx
; Line 258
	jmp	SHORT $LN1@u_wmsg_err
$LN2@u_wmsg_err:
; Line 259
	mov	eax, DWORD PTR _err$[ebp]
	mov	ecx, DWORD PTR _gInfoMessages
	mov	edx, DWORD PTR _msg$[ebp]
	mov	DWORD PTR [ecx+eax*4+512], edx
$LN1@u_wmsg_err:
; Line 261
	mov	eax, DWORD PTR _msg$[ebp]
$LN10@u_wmsg_err:
; Line 262
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN16@u_wmsg_err
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 392				; 00000188H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN16@u_wmsg_err:
	DD	3
	DD	$LN15@u_wmsg_err
$LN15@u_wmsg_err:
	DD	-24					; ffffffe8H
	DD	4
	DD	$LN12@u_wmsg_err
	DD	-36					; ffffffdcH
	DD	4
	DD	$LN13@u_wmsg_err
	DD	-196					; ffffff3cH
	DD	128					; 00000080H
	DD	$LN14@u_wmsg_err
$LN14@u_wmsg_err:
	DB	101					; 00000065H
	DB	114					; 00000072H
	DB	114					; 00000072H
	DB	111					; 0000006fH
	DB	114					; 00000072H
	DB	0
$LN13@u_wmsg_err:
	DB	115					; 00000073H
	DB	117					; 00000075H
	DB	98					; 00000062H
	DB	69					; 00000045H
	DB	114					; 00000072H
	DB	114					; 00000072H
	DB	0
$LN12@u_wmsg_err:
	DB	109					; 0000006dH
	DB	115					; 00000073H
	DB	103					; 00000067H
	DB	76					; 0000004cH
	DB	101					; 00000065H
	DB	110					; 0000006eH
	DB	0
_u_wmsg_errorName ENDP
_TEXT	ENDS
EXTRN	_memset:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _fetchErrorName
_TEXT	SEGMENT
_err$ = 8						; size = 4
_fetchErrorName PROC					; COMDAT
; Line 198
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
; Line 199
	cmp	DWORD PTR _gInfoMessages, 0
	jne	SHORT $LN4@fetchError
; Line 200
	mov	esi, esp
	push	36					; 00000024H
	call	DWORD PTR __imp__malloc
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _gInfoMessages, eax
; Line 201
	push	36					; 00000024H
	push	0
	mov	eax, DWORD PTR _gInfoMessages
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
$LN4@fetchError:
; Line 203
	cmp	DWORD PTR _gErrMessages, 0
	jne	SHORT $LN3@fetchError
; Line 204
	mov	esi, esp
	push	267272					; 00041408H
	call	DWORD PTR __imp__malloc
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _gErrMessages, eax
; Line 205
	push	267272					; 00041408H
	push	0
	mov	eax, DWORD PTR _gErrMessages
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
$LN3@fetchError:
; Line 207
	cmp	DWORD PTR _err$[ebp], 0
	jl	SHORT $LN2@fetchError
; Line 208
	mov	eax, DWORD PTR _err$[ebp]
	mov	ecx, DWORD PTR _gErrMessages
	mov	eax, DWORD PTR [ecx+eax*4]
	jmp	SHORT $LN5@fetchError
; Line 209
	jmp	SHORT $LN5@fetchError
$LN2@fetchError:
; Line 210
	mov	eax, DWORD PTR _err$[ebp]
	mov	ecx, DWORD PTR _gInfoMessages
	mov	eax, DWORD PTR [ecx+eax*4+512]
$LN5@fetchError:
; Line 211
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_fetchErrorName ENDP
_TEXT	ENDS
END
