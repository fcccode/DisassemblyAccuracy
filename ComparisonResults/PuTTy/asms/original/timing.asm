; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\Putty\timing.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

_BSS	SEGMENT
_timers	DD	01H DUP (?)
_timer_contexts DD 01H DUP (?)
_now	DD	01H DUP (?)
_BSS	ENDS
PUBLIC	_schedule_timer
EXTRN	_timer_change_notify:PROC
EXTRN	_index234:PROC
EXTRN	_safefree:PROC
EXTRN	_add234:PROC
EXTRN	_safemalloc:PROC
EXTRN	__imp__GetTickCount@0:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\putty\timing.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
_first$ = -12						; size = 4
_t$ = -8						; size = 4
_when$ = -4						; size = 4
_ticks$ = 8						; size = 4
_fn$ = 12						; size = 4
_ctx$ = 16						; size = 4
_schedule_timer PROC
; Line 110
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	push	esi
	mov	DWORD PTR [ebp-12], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 114
	call	_init_timers
; Line 116
	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _now, eax
; Line 117
	mov	eax, DWORD PTR _ticks$[ebp]
	add	eax, DWORD PTR _now
	mov	DWORD PTR _when$[ebp], eax
; Line 124
	mov	ecx, DWORD PTR _when$[ebp]
	sub	ecx, DWORD PTR _now
	jne	SHORT $LN4@schedule_t
; Line 125
	mov	edx, DWORD PTR _now
	add	edx, 1
	mov	DWORD PTR _when$[ebp], edx
$LN4@schedule_t:
; Line 127
	push	16					; 00000010H
	push	1
	call	_safemalloc
	add	esp, 8
	mov	DWORD PTR _t$[ebp], eax
; Line 128
	mov	eax, DWORD PTR _t$[ebp]
	mov	ecx, DWORD PTR _fn$[ebp]
	mov	DWORD PTR [eax], ecx
; Line 129
	mov	edx, DWORD PTR _t$[ebp]
	mov	eax, DWORD PTR _ctx$[ebp]
	mov	DWORD PTR [edx+4], eax
; Line 130
	mov	ecx, DWORD PTR _t$[ebp]
	mov	edx, DWORD PTR _when$[ebp]
	mov	DWORD PTR [ecx+8], edx
; Line 131
	mov	eax, DWORD PTR _t$[ebp]
	mov	ecx, DWORD PTR _now
	mov	DWORD PTR [eax+12], ecx
; Line 133
	mov	edx, DWORD PTR _t$[ebp]
	push	edx
	mov	eax, DWORD PTR _timers
	push	eax
	call	_add234
	add	esp, 8
	cmp	DWORD PTR _t$[ebp], eax
	je	SHORT $LN3@schedule_t
; Line 134
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	call	_safefree
	add	esp, 4
; Line 135
	jmp	SHORT $LN2@schedule_t
$LN3@schedule_t:
; Line 136
	mov	edx, DWORD PTR _t$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	mov	ecx, DWORD PTR _timer_contexts
	push	ecx
	call	_add234
	add	esp, 8
$LN2@schedule_t:
; Line 139
	push	0
	mov	edx, DWORD PTR _timers
	push	edx
	call	_index234
	add	esp, 8
	mov	DWORD PTR _first$[ebp], eax
; Line 140
	mov	eax, DWORD PTR _first$[ebp]
	cmp	eax, DWORD PTR _t$[ebp]
	jne	SHORT $LN1@schedule_t
; Line 145
	mov	ecx, DWORD PTR _first$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	_timer_change_notify
	add	esp, 4
$LN1@schedule_t:
; Line 148
	mov	eax, DWORD PTR _when$[ebp]
; Line 149
	pop	esi
	add	esp, 12					; 0000000cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_schedule_timer ENDP
_TEXT	ENDS
EXTRN	_newtree234:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_init_timers PROC
; Line 101
	push	ebp
	mov	ebp, esp
	push	esi
; Line 102
	cmp	DWORD PTR _timers, 0
	jne	SHORT $LN2@init_timer
; Line 103
	push	OFFSET _compare_timers
	call	_newtree234
	add	esp, 4
	mov	DWORD PTR _timers, eax
; Line 104
	push	OFFSET _compare_timer_contexts
	call	_newtree234
	add	esp, 4
	mov	DWORD PTR _timer_contexts, eax
; Line 105
	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _now, eax
$LN2@init_timer:
; Line 107
	pop	esi
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
_init_timers ENDP
; Function compile flags: /Odtp /RTCsu
_bt$ = -16						; size = 4
_at$ = -12						; size = 4
_b$ = -8						; size = 4
_a$ = -4						; size = 4
_av$ = 8						; size = 4
_bv$ = 12						; size = 4
_compare_timers PROC
; Line 48
	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 49
	mov	eax, DWORD PTR _av$[ebp]
	mov	DWORD PTR _a$[ebp], eax
; Line 50
	mov	ecx, DWORD PTR _bv$[ebp]
	mov	DWORD PTR _b$[ebp], ecx
; Line 51
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR [edx+8]
	sub	eax, DWORD PTR _now
	mov	DWORD PTR _at$[ebp], eax
; Line 52
	mov	ecx, DWORD PTR _b$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	sub	edx, DWORD PTR _now
	mov	DWORD PTR _bt$[ebp], edx
; Line 54
	mov	eax, DWORD PTR _at$[ebp]
	cmp	eax, DWORD PTR _bt$[ebp]
	jge	SHORT $LN9@compare_ti
; Line 55
	or	eax, -1
	jmp	SHORT $LN10@compare_ti
	jmp	SHORT $LN8@compare_ti
$LN9@compare_ti:
; Line 56
	mov	ecx, DWORD PTR _at$[ebp]
	cmp	ecx, DWORD PTR _bt$[ebp]
	jle	SHORT $LN8@compare_ti
; Line 57
	mov	eax, 1
	jmp	SHORT $LN10@compare_ti
$LN8@compare_ti:
; Line 71
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	mov	ecx, DWORD PTR [edx]
	cmp	ecx, DWORD PTR [eax]
	jae	SHORT $LN6@compare_ti
; Line 72
	or	eax, -1
	jmp	SHORT $LN10@compare_ti
	jmp	SHORT $LN5@compare_ti
$LN6@compare_ti:
; Line 73
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	mov	ecx, DWORD PTR [edx]
	cmp	ecx, DWORD PTR [eax]
	jbe	SHORT $LN5@compare_ti
; Line 74
	mov	eax, 1
	jmp	SHORT $LN10@compare_ti
$LN5@compare_ti:
; Line 77
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	mov	ecx, DWORD PTR [edx+4]
	cmp	ecx, DWORD PTR [eax+4]
	jae	SHORT $LN3@compare_ti
; Line 78
	or	eax, -1
	jmp	SHORT $LN10@compare_ti
	jmp	SHORT $LN2@compare_ti
$LN3@compare_ti:
; Line 79
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	mov	ecx, DWORD PTR [edx+4]
	cmp	ecx, DWORD PTR [eax+4]
	jbe	SHORT $LN2@compare_ti
; Line 80
	mov	eax, 1
	jmp	SHORT $LN10@compare_ti
$LN2@compare_ti:
; Line 86
	xor	eax, eax
$LN10@compare_ti:
; Line 87
	mov	esp, ebp
	pop	ebp
	ret	0
_compare_timers ENDP
; Function compile flags: /Odtp /RTCsu
_b$ = -8						; size = 4
_a$ = -4						; size = 4
_av$ = 8						; size = 4
_bv$ = 12						; size = 4
_compare_timer_contexts PROC
; Line 90
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 91
	mov	eax, DWORD PTR _av$[ebp]
	mov	DWORD PTR _a$[ebp], eax
; Line 92
	mov	ecx, DWORD PTR _bv$[ebp]
	mov	DWORD PTR _b$[ebp], ecx
; Line 93
	mov	edx, DWORD PTR _a$[ebp]
	cmp	edx, DWORD PTR _b$[ebp]
	jae	SHORT $LN3@compare_ti@2
; Line 94
	or	eax, -1
	jmp	SHORT $LN4@compare_ti@2
	jmp	SHORT $LN2@compare_ti@2
$LN3@compare_ti@2:
; Line 95
	mov	eax, DWORD PTR _a$[ebp]
	cmp	eax, DWORD PTR _b$[ebp]
	jbe	SHORT $LN2@compare_ti@2
; Line 96
	mov	eax, 1
	jmp	SHORT $LN4@compare_ti@2
$LN2@compare_ti@2:
; Line 97
	xor	eax, eax
$LN4@compare_ti@2:
; Line 98
	mov	esp, ebp
	pop	ebp
	ret	0
_compare_timer_contexts ENDP
_TEXT	ENDS
PUBLIC	_run_timers
EXTRN	_delpos234:PROC
EXTRN	_find234:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_first$ = -4						; size = 4
_anow$ = 8						; size = 4
_next$ = 12						; size = 4
_run_timers PROC
; Line 157
	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 160
	call	_init_timers
; Line 162
	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _now, eax
$LN7@run_timers:
; Line 164
	mov	eax, 1
	test	eax, eax
	je	$LN8@run_timers
; Line 165
	push	0
	mov	ecx, DWORD PTR _timers
	push	ecx
	call	_index234
	add	esp, 8
	mov	DWORD PTR _first$[ebp], eax
; Line 167
	cmp	DWORD PTR _first$[ebp], 0
	jne	SHORT $LN5@run_timers
; Line 168
	xor	eax, eax
	jmp	$LN8@run_timers
$LN5@run_timers:
; Line 170
	push	0
	mov	edx, DWORD PTR _first$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	mov	ecx, DWORD PTR _timer_contexts
	push	ecx
	call	_find234
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN4@run_timers
; Line 175
	push	0
	mov	edx, DWORD PTR _timers
	push	edx
	call	_delpos234
	add	esp, 8
; Line 176
	mov	eax, DWORD PTR _first$[ebp]
	push	eax
	call	_safefree
	add	esp, 4
; Line 177
	jmp	SHORT $LN3@run_timers
$LN4@run_timers:
; Line 178
	mov	ecx, DWORD PTR _first$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	sub	edx, 10					; 0000000aH
	mov	eax, DWORD PTR _now
	sub	eax, edx
	mov	ecx, DWORD PTR _first$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	sub	edx, 10					; 0000000aH
	mov	ecx, DWORD PTR _first$[ebp]
	mov	ecx, DWORD PTR [ecx+8]
	sub	ecx, edx
	cmp	eax, ecx
	jbe	SHORT $LN2@run_timers
; Line 183
	push	0
	mov	edx, DWORD PTR _timers
	push	edx
	call	_delpos234
	add	esp, 8
; Line 184
	mov	esi, esp
	mov	eax, DWORD PTR _first$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	mov	edx, DWORD PTR _first$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	mov	ecx, DWORD PTR _first$[ebp]
	mov	edx, DWORD PTR [ecx]
	call	edx
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 185
	mov	eax, DWORD PTR _first$[ebp]
	push	eax
	call	_safefree
	add	esp, 4
; Line 186
	jmp	SHORT $LN3@run_timers
$LN2@run_timers:
; Line 191
	mov	ecx, DWORD PTR _next$[ebp]
	mov	edx, DWORD PTR _first$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR [ecx], eax
; Line 192
	mov	eax, 1
	jmp	SHORT $LN8@run_timers
$LN3@run_timers:
; Line 194
	jmp	$LN7@run_timers
$LN8@run_timers:
; Line 195
	pop	esi
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_run_timers ENDP
_TEXT	ENDS
PUBLIC	_expire_timer_context
EXTRN	_del234:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_ctx$ = 8						; size = 4
_expire_timer_context PROC
; Line 201
	push	ebp
	mov	ebp, esp
; Line 202
	call	_init_timers
; Line 210
	mov	eax, DWORD PTR _ctx$[ebp]
	push	eax
	mov	ecx, DWORD PTR _timer_contexts
	push	ecx
	call	_del234
	add	esp, 8
; Line 211
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
_expire_timer_context ENDP
_TEXT	ENDS
END
