; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\workspace\Putty\sshgssc.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG85756 DB	'host@', 00H
_DATA	ENDS
PUBLIC	_ssh_gssapi_bind_fns
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\workspace\putty\sshgssc.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu
rtc$IMZ	ENDS
_TEXT	SEGMENT
_lib$ = 8						; size = 4
_ssh_gssapi_bind_fns PROC
; Line 186
	push	ebp
	mov	ebp, esp
; Line 187
	mov	eax, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [eax+8], OFFSET _ssh_gssapi_indicate_mech
; Line 188
	mov	ecx, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [ecx+12], OFFSET _ssh_gssapi_import_name
; Line 189
	mov	edx, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [edx+16], OFFSET _ssh_gssapi_release_name
; Line 190
	mov	eax, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [eax+20], OFFSET _ssh_gssapi_init_sec_context
; Line 191
	mov	ecx, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [ecx+24], OFFSET _ssh_gssapi_free_tok
; Line 192
	mov	edx, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [edx+28], OFFSET _ssh_gssapi_acquire_cred
; Line 193
	mov	eax, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [eax+32], OFFSET _ssh_gssapi_release_cred
; Line 194
	mov	ecx, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [ecx+36], OFFSET _ssh_gssapi_get_mic
; Line 195
	mov	edx, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [edx+40], OFFSET _ssh_gssapi_free_mic
; Line 196
	mov	eax, DWORD PTR _lib$[ebp]
	mov	DWORD PTR [eax+44], OFFSET _ssh_gssapi_display_status
; Line 197
	pop	ebp
	ret	0
_ssh_gssapi_bind_fns ENDP
_TEXT	ENDS
EXTRN	_GSS_MECH_KRB5:DWORD
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_lib$ = 8						; size = 4
_mech$ = 12						; size = 4
_ssh_gssapi_indicate_mech PROC
; Line 11
	push	ebp
	mov	ebp, esp
; Line 13
	mov	eax, DWORD PTR _mech$[ebp]
	mov	ecx, DWORD PTR _GSS_MECH_KRB5
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax], edx
; Line 14
	mov	eax, DWORD PTR _mech$[ebp]
	mov	ecx, DWORD PTR _GSS_MECH_KRB5
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR [eax+4], edx
; Line 15
	xor	eax, eax
; Line 16
	pop	ebp
	ret	0
_ssh_gssapi_indicate_mech ENDP
_TEXT	ENDS
EXTRN	_safefree:PROC
EXTRN	_GSS_C_NT_HOSTBASED_SERVICE:DWORD
EXTRN	_strlen:PROC
EXTRN	_dupcat:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_CheckEsp:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_pStr$ = -40						; size = 4
_host_buf$ = -32					; size = 8
_maj_stat$ = -20					; size = 4
_min_stat$ = -12					; size = 4
_gss$ = -4						; size = 4
_lib$ = 8						; size = 4
_host$ = 12						; size = 4
_srv_name$ = 16						; size = 4
_ssh_gssapi_import_name PROC
; Line 21
	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-40]
	mov	ecx, 10					; 0000000aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 22
	mov	eax, DWORD PTR _lib$[ebp]
	add	eax, 48					; 00000030H
	mov	DWORD PTR _gss$[ebp], eax
; Line 27
	push	0
	mov	ecx, DWORD PTR _host$[ebp]
	push	ecx
	push	OFFSET $SG85756
	call	_dupcat
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _pStr$[ebp], eax
; Line 29
	mov	edx, DWORD PTR _pStr$[ebp]
	mov	DWORD PTR _host_buf$[ebp+4], edx
; Line 30
	mov	eax, DWORD PTR _pStr$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _host_buf$[ebp], eax
; Line 33
	mov	esi, esp
	mov	ecx, DWORD PTR _srv_name$[ebp]
	push	ecx
	mov	edx, DWORD PTR _GSS_C_NT_HOSTBASED_SERVICE
	push	edx
	lea	eax, DWORD PTR _host_buf$[ebp]
	push	eax
	lea	ecx, DWORD PTR _min_stat$[ebp]
	push	ecx
	mov	edx, DWORD PTR _gss$[ebp]
	mov	eax, DWORD PTR [edx+12]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _maj_stat$[ebp], eax
; Line 35
	mov	ecx, DWORD PTR _pStr$[ebp]
	push	ecx
	call	_safefree
	add	esp, 4
; Line 36
	cmp	DWORD PTR _maj_stat$[ebp], 0
	jne	SHORT $LN1@ssh_gssapi
	xor	eax, eax
	jmp	SHORT $LN2@ssh_gssapi
$LN1@ssh_gssapi:
; Line 37
	mov	eax, 4
$LN2@ssh_gssapi:
; Line 38
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN7@ssh_gssapi
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	add	esp, 40					; 00000028H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN7@ssh_gssapi:
	DD	2
	DD	$LN6@ssh_gssapi
$LN6@ssh_gssapi:
	DD	-12					; fffffff4H
	DD	4
	DD	$LN4@ssh_gssapi
	DD	-32					; ffffffe0H
	DD	8
	DD	$LN5@ssh_gssapi
$LN5@ssh_gssapi:
	DB	104					; 00000068H
	DB	111					; 0000006fH
	DB	115					; 00000073H
	DB	116					; 00000074H
	DB	95					; 0000005fH
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	0
$LN4@ssh_gssapi:
	DB	109					; 0000006dH
	DB	105					; 00000069H
	DB	110					; 0000006eH
	DB	95					; 0000005fH
	DB	115					; 00000073H
	DB	116					; 00000074H
	DB	97					; 00000061H
	DB	116					; 00000074H
	DB	0
_ssh_gssapi_import_name ENDP
_TEXT	ENDS
EXTRN	_safemalloc:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_gssctx$ = -4						; size = 4
_lib$ = 8						; size = 4
_ctx$ = 12						; size = 4
_ssh_gssapi_acquire_cred PROC
; Line 42
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 43
	push	12					; 0000000cH
	push	1
	call	_safemalloc
	add	esp, 8
	mov	DWORD PTR _gssctx$[ebp], eax
; Line 45
	mov	eax, DWORD PTR _gssctx$[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR _gssctx$[ebp]
	mov	DWORD PTR [ecx], 0
; Line 46
	mov	edx, DWORD PTR _gssctx$[ebp]
	mov	DWORD PTR [edx+8], 0
; Line 47
	mov	eax, DWORD PTR _ctx$[ebp]
	mov	ecx, DWORD PTR _gssctx$[ebp]
	mov	DWORD PTR [eax], ecx
; Line 49
	xor	eax, eax
; Line 50
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_ssh_gssapi_acquire_cred ENDP
; Function compile flags: /Odtp /RTCsu
_ret_flags$ = -16					; size = 4
_gssctx$ = -8						; size = 4
_gss$ = -4						; size = 4
_lib$ = 8						; size = 4
_ctx$ = 12						; size = 4
_srv_name$ = 16						; size = 4
_to_deleg$ = 20						; size = 4
_recv_tok$ = 24						; size = 4
_send_tok$ = 28						; size = 4
_ssh_gssapi_init_sec_context PROC
; Line 58
	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	push	esi
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 59
	mov	eax, DWORD PTR _lib$[ebp]
	add	eax, 48					; 00000030H
	mov	DWORD PTR _gss$[ebp], eax
; Line 60
	mov	ecx, DWORD PTR _ctx$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _gssctx$[ebp], edx
; Line 63
	cmp	DWORD PTR _to_deleg$[ebp], 0
	je	SHORT $LN3@ssh_gssapi@2
	mov	DWORD PTR _to_deleg$[ebp], 1
$LN3@ssh_gssapi@2:
; Line 77
	mov	esi, esp
	push	0
	lea	eax, DWORD PTR _ret_flags$[ebp]
	push	eax
	mov	ecx, DWORD PTR _send_tok$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _recv_tok$[ebp]
	push	edx
	push	0
	push	0
	mov	eax, DWORD PTR _to_deleg$[ebp]
	or	eax, 34					; 00000022H
	push	eax
	mov	ecx, DWORD PTR _GSS_MECH_KRB5
	push	ecx
	mov	edx, DWORD PTR _srv_name$[ebp]
	push	edx
	mov	eax, DWORD PTR _gssctx$[ebp]
	add	eax, 8
	push	eax
	push	0
	mov	ecx, DWORD PTR _gssctx$[ebp]
	add	ecx, 4
	push	ecx
	mov	edx, DWORD PTR _gss$[ebp]
	mov	eax, DWORD PTR [edx+16]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	ecx, DWORD PTR _gssctx$[ebp]
	mov	DWORD PTR [ecx], eax
; Line 79
	mov	edx, DWORD PTR _gssctx$[ebp]
	cmp	DWORD PTR [edx], 0
	jne	SHORT $LN2@ssh_gssapi@2
	xor	eax, eax
	jmp	SHORT $LN4@ssh_gssapi@2
$LN2@ssh_gssapi@2:
; Line 80
	mov	eax, DWORD PTR _gssctx$[ebp]
	cmp	DWORD PTR [eax], 1
	jne	SHORT $LN1@ssh_gssapi@2
	mov	eax, 1
	jmp	SHORT $LN4@ssh_gssapi@2
$LN1@ssh_gssapi@2:
; Line 81
	mov	eax, 4
$LN4@ssh_gssapi@2:
; Line 82
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN8@ssh_gssapi@2
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	esi
	add	esp, 20					; 00000014H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN8@ssh_gssapi@2:
	DD	1
	DD	$LN7@ssh_gssapi@2
$LN7@ssh_gssapi@2:
	DD	-16					; fffffff0H
	DD	4
	DD	$LN6@ssh_gssapi@2
$LN6@ssh_gssapi@2:
	DB	114					; 00000072H
	DB	101					; 00000065H
	DB	116					; 00000074H
	DB	95					; 0000005fH
	DB	102					; 00000066H
	DB	108					; 0000006cH
	DB	97					; 00000061H
	DB	103					; 00000067H
	DB	115					; 00000073H
	DB	0
_ssh_gssapi_init_sec_context ENDP
_TEXT	ENDS
EXTRN	_memcpy:PROC
; Function compile flags: /Odtp /RTCsu
_TEXT	SEGMENT
_msg_min$ = -64						; size = 8
_msg_maj$ = -48						; size = 8
_ccc$ = -32						; size = 4
_lmax$ = -24						; size = 4
_lmin$ = -16						; size = 4
_gssctx$ = -8						; size = 4
_gss$ = -4						; size = 4
_lib$ = 8						; size = 4
_ctx$ = 12						; size = 4
_buf$ = 16						; size = 4
_ssh_gssapi_display_status PROC
; Line 87
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-68]
	mov	ecx, 17					; 00000011H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 88
	mov	eax, DWORD PTR _lib$[ebp]
	add	eax, 48					; 00000030H
	mov	DWORD PTR _gss$[ebp], eax
; Line 89
	mov	ecx, DWORD PTR _ctx$[ebp]
	mov	DWORD PTR _gssctx$[ebp], ecx
; Line 92
	mov	DWORD PTR _msg_maj$[ebp], 0
	mov	DWORD PTR _msg_maj$[ebp+4], 0
; Line 93
	mov	DWORD PTR _msg_min$[ebp], 0
	mov	DWORD PTR _msg_min$[ebp+4], 0
$LN5@ssh_gssapi@3:
; Line 96
	mov	edx, DWORD PTR _buf$[ebp]
	mov	DWORD PTR [edx], 0
	mov	eax, DWORD PTR _buf$[ebp]
	mov	DWORD PTR [eax+4], 0
	xor	ecx, ecx
	jne	SHORT $LN5@ssh_gssapi@3
; Line 99
	mov	DWORD PTR _ccc$[ebp], 0
; Line 100
	mov	esi, esp
	lea	edx, DWORD PTR _msg_maj$[ebp]
	push	edx
	lea	eax, DWORD PTR _ccc$[ebp]
	push	eax
	mov	ecx, DWORD PTR _GSS_MECH_KRB5
	push	ecx
	push	1
	mov	edx, DWORD PTR _gssctx$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	lea	ecx, DWORD PTR _lmin$[ebp]
	push	ecx
	mov	edx, DWORD PTR _gss$[ebp]
	mov	eax, DWORD PTR [edx+4]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _lmax$[ebp], eax
; Line 102
	cmp	DWORD PTR _lmax$[ebp], 0
	je	SHORT $LN2@ssh_gssapi@3
	mov	eax, 4
	jmp	$LN6@ssh_gssapi@3
$LN2@ssh_gssapi@3:
; Line 105
	mov	DWORD PTR _ccc$[ebp], 0
; Line 106
	mov	esi, esp
	lea	ecx, DWORD PTR _msg_min$[ebp]
	push	ecx
	lea	edx, DWORD PTR _ccc$[ebp]
	push	edx
	mov	eax, DWORD PTR _GSS_MECH_KRB5
	push	eax
	push	2
	mov	ecx, DWORD PTR _gssctx$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	lea	eax, DWORD PTR _lmin$[ebp]
	push	eax
	mov	ecx, DWORD PTR _gss$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _lmax$[ebp], eax
; Line 108
	cmp	DWORD PTR _lmax$[ebp], 0
	je	SHORT $LN1@ssh_gssapi@3
; Line 109
	mov	esi, esp
	lea	eax, DWORD PTR _msg_maj$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lmin$[ebp]
	push	ecx
	mov	edx, DWORD PTR _gss$[ebp]
	mov	eax, DWORD PTR [edx+20]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 110
	mov	eax, 4
	jmp	$LN6@ssh_gssapi@3
$LN1@ssh_gssapi@3:
; Line 114
	mov	ecx, DWORD PTR _msg_min$[ebp]
	mov	edx, DWORD PTR _msg_maj$[ebp]
	lea	eax, DWORD PTR [edx+ecx+1]
	mov	ecx, DWORD PTR _buf$[ebp]
	mov	DWORD PTR [ecx], eax
; Line 115
	push	1
	mov	edx, DWORD PTR _buf$[ebp]
	mov	eax, DWORD PTR [edx]
	add	eax, 1
	push	eax
	call	_safemalloc
	add	esp, 8
	mov	ecx, DWORD PTR _buf$[ebp]
	mov	DWORD PTR [ecx+4], eax
; Line 118
	mov	edx, DWORD PTR _msg_maj$[ebp]
	push	edx
	mov	eax, DWORD PTR _msg_maj$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _buf$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	call	_memcpy
	add	esp, 12					; 0000000cH
; Line 119
	mov	eax, DWORD PTR _buf$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR _msg_maj$[ebp]
	mov	BYTE PTR [ecx+edx], 32			; 00000020H
; Line 120
	mov	eax, DWORD PTR _msg_min$[ebp]
	push	eax
	mov	ecx, DWORD PTR _msg_min$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _buf$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	ecx, DWORD PTR _msg_maj$[ebp]
	lea	edx, DWORD PTR [eax+ecx+1]
	push	edx
	call	_memcpy
	add	esp, 12					; 0000000cH
; Line 121
	mov	eax, DWORD PTR _buf$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR _buf$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	BYTE PTR [ecx+eax], 0
; Line 123
	mov	esi, esp
	lea	ecx, DWORD PTR _msg_maj$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lmin$[ebp]
	push	edx
	mov	eax, DWORD PTR _gss$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 124
	mov	esi, esp
	lea	edx, DWORD PTR _msg_min$[ebp]
	push	edx
	lea	eax, DWORD PTR _lmin$[ebp]
	push	eax
	mov	ecx, DWORD PTR _gss$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 125
	xor	eax, eax
$LN6@ssh_gssapi@3:
; Line 126
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN13@ssh_gssapi@3
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	add	esp, 68					; 00000044H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN13@ssh_gssapi@3:
	DD	4
	DD	$LN12@ssh_gssapi@3
$LN12@ssh_gssapi@3:
	DD	-16					; fffffff0H
	DD	4
	DD	$LN8@ssh_gssapi@3
	DD	-32					; ffffffe0H
	DD	4
	DD	$LN9@ssh_gssapi@3
	DD	-48					; ffffffd0H
	DD	8
	DD	$LN10@ssh_gssapi@3
	DD	-64					; ffffffc0H
	DD	8
	DD	$LN11@ssh_gssapi@3
$LN11@ssh_gssapi@3:
	DB	109					; 0000006dH
	DB	115					; 00000073H
	DB	103					; 00000067H
	DB	95					; 0000005fH
	DB	109					; 0000006dH
	DB	105					; 00000069H
	DB	110					; 0000006eH
	DB	0
$LN10@ssh_gssapi@3:
	DB	109					; 0000006dH
	DB	115					; 00000073H
	DB	103					; 00000067H
	DB	95					; 0000005fH
	DB	109					; 0000006dH
	DB	97					; 00000061H
	DB	106					; 0000006aH
	DB	0
$LN9@ssh_gssapi@3:
	DB	99					; 00000063H
	DB	99					; 00000063H
	DB	99					; 00000063H
	DB	0
$LN8@ssh_gssapi@3:
	DB	108					; 0000006cH
	DB	109					; 0000006dH
	DB	105					; 00000069H
	DB	110					; 0000006eH
	DB	0
_ssh_gssapi_display_status ENDP
; Function compile flags: /Odtp /RTCsu
_maj_stat$ = -20					; size = 4
_min_stat$ = -12					; size = 4
_gss$ = -4						; size = 4
_lib$ = 8						; size = 4
_send_tok$ = 12						; size = 4
_ssh_gssapi_free_tok PROC
; Line 130
	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	push	esi
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 131
	mov	eax, DWORD PTR _lib$[ebp]
	add	eax, 48					; 00000030H
	mov	DWORD PTR _gss$[ebp], eax
; Line 133
	mov	esi, esp
	mov	ecx, DWORD PTR _send_tok$[ebp]
	push	ecx
	lea	edx, DWORD PTR _min_stat$[ebp]
	push	edx
	mov	eax, DWORD PTR _gss$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _maj_stat$[ebp], eax
; Line 135
	cmp	DWORD PTR _maj_stat$[ebp], 0
	jne	SHORT $LN1@ssh_gssapi@4
	xor	eax, eax
	jmp	SHORT $LN2@ssh_gssapi@4
$LN1@ssh_gssapi@4:
; Line 136
	mov	eax, 4
$LN2@ssh_gssapi@4:
; Line 137
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN6@ssh_gssapi@4
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	esi
	add	esp, 20					; 00000014H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN6@ssh_gssapi@4:
	DD	1
	DD	$LN5@ssh_gssapi@4
$LN5@ssh_gssapi@4:
	DD	-12					; fffffff4H
	DD	4
	DD	$LN4@ssh_gssapi@4
$LN4@ssh_gssapi@4:
	DB	109					; 0000006dH
	DB	105					; 00000069H
	DB	110					; 0000006eH
	DB	95					; 0000005fH
	DB	115					; 00000073H
	DB	116					; 00000074H
	DB	97					; 00000061H
	DB	116					; 00000074H
	DB	0
_ssh_gssapi_free_tok ENDP
; Function compile flags: /Odtp /RTCsu
_maj_stat$ = -24					; size = 4
_min_stat$ = -16					; size = 4
_gssctx$ = -8						; size = 4
_gss$ = -4						; size = 4
_lib$ = 8						; size = 4
_ctx$ = 12						; size = 4
_ssh_gssapi_release_cred PROC
; Line 141
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
; Line 142
	mov	eax, DWORD PTR _lib$[ebp]
	add	eax, 48					; 00000030H
	mov	DWORD PTR _gss$[ebp], eax
; Line 143
	mov	ecx, DWORD PTR _ctx$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _gssctx$[ebp], edx
; Line 145
	mov	DWORD PTR _maj_stat$[ebp], 0
; Line 147
	cmp	DWORD PTR _gssctx$[ebp], 0
	jne	SHORT $LN3@ssh_gssapi@5
	mov	eax, 4
	jmp	SHORT $LN4@ssh_gssapi@5
$LN3@ssh_gssapi@5:
; Line 148
	mov	eax, DWORD PTR _gssctx$[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $LN2@ssh_gssapi@5
; Line 149
	mov	esi, esp
	push	0
	mov	ecx, DWORD PTR _gssctx$[ebp]
	add	ecx, 8
	push	ecx
	lea	edx, DWORD PTR _min_stat$[ebp]
	push	edx
	mov	eax, DWORD PTR _gss$[ebp]
	mov	ecx, DWORD PTR [eax]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _maj_stat$[ebp], eax
$LN2@ssh_gssapi@5:
; Line 150
	mov	edx, DWORD PTR _gssctx$[ebp]
	push	edx
	call	_safefree
	add	esp, 4
; Line 152
	cmp	DWORD PTR _maj_stat$[ebp], 0
	jne	SHORT $LN1@ssh_gssapi@5
	xor	eax, eax
	jmp	SHORT $LN4@ssh_gssapi@5
$LN1@ssh_gssapi@5:
; Line 153
	mov	eax, 4
$LN4@ssh_gssapi@5:
; Line 154
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN8@ssh_gssapi@5
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	esi
	add	esp, 24					; 00000018H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN8@ssh_gssapi@5:
	DD	1
	DD	$LN7@ssh_gssapi@5
$LN7@ssh_gssapi@5:
	DD	-16					; fffffff0H
	DD	4
	DD	$LN6@ssh_gssapi@5
$LN6@ssh_gssapi@5:
	DB	109					; 0000006dH
	DB	105					; 00000069H
	DB	110					; 0000006eH
	DB	95					; 0000005fH
	DB	115					; 00000073H
	DB	116					; 00000074H
	DB	97					; 00000061H
	DB	116					; 00000074H
	DB	0
_ssh_gssapi_release_cred ENDP
; Function compile flags: /Odtp /RTCsu
_maj_stat$ = -20					; size = 4
_min_stat$ = -12					; size = 4
_gss$ = -4						; size = 4
_lib$ = 8						; size = 4
_srv_name$ = 12						; size = 4
_ssh_gssapi_release_name PROC
; Line 159
	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	push	esi
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
; Line 160
	mov	eax, DWORD PTR _lib$[ebp]
	add	eax, 48					; 00000030H
	mov	DWORD PTR _gss$[ebp], eax
; Line 162
	mov	esi, esp
	mov	ecx, DWORD PTR _srv_name$[ebp]
	push	ecx
	lea	edx, DWORD PTR _min_stat$[ebp]
	push	edx
	mov	eax, DWORD PTR _gss$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _maj_stat$[ebp], eax
; Line 164
	cmp	DWORD PTR _maj_stat$[ebp], 0
	jne	SHORT $LN1@ssh_gssapi@6
	xor	eax, eax
	jmp	SHORT $LN2@ssh_gssapi@6
$LN1@ssh_gssapi@6:
; Line 165
	mov	eax, 4
$LN2@ssh_gssapi@6:
; Line 166
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN6@ssh_gssapi@6
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	esi
	add	esp, 20					; 00000014H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN6@ssh_gssapi@6:
	DD	1
	DD	$LN5@ssh_gssapi@6
$LN5@ssh_gssapi@6:
	DD	-12					; fffffff4H
	DD	4
	DD	$LN4@ssh_gssapi@6
$LN4@ssh_gssapi@6:
	DB	109					; 0000006dH
	DB	105					; 00000069H
	DB	110					; 0000006eH
	DB	95					; 0000005fH
	DB	115					; 00000073H
	DB	116					; 00000074H
	DB	97					; 00000061H
	DB	116					; 00000074H
	DB	0
_ssh_gssapi_release_name ENDP
; Function compile flags: /Odtp /RTCsu
_gssctx$ = -8						; size = 4
_gss$ = -4						; size = 4
_lib$ = 8						; size = 4
_ctx$ = 12						; size = 4
_buf$ = 16						; size = 4
_hash$ = 20						; size = 4
_ssh_gssapi_get_mic PROC
; Line 171
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	esi
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
; Line 172
	mov	eax, DWORD PTR _lib$[ebp]
	add	eax, 48					; 00000030H
	mov	DWORD PTR _gss$[ebp], eax
; Line 173
	mov	ecx, DWORD PTR _ctx$[ebp]
	mov	DWORD PTR _gssctx$[ebp], ecx
; Line 174
	cmp	DWORD PTR _gssctx$[ebp], 0
	jne	SHORT $LN1@ssh_gssapi@7
	mov	eax, 4
	jmp	SHORT $LN2@ssh_gssapi@7
$LN1@ssh_gssapi@7:
; Line 175
	mov	esi, esp
	mov	edx, DWORD PTR _hash$[ebp]
	push	edx
	mov	eax, DWORD PTR _buf$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _gssctx$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	mov	eax, DWORD PTR _gssctx$[ebp]
	add	eax, 4
	push	eax
	mov	ecx, DWORD PTR _gss$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN2@ssh_gssapi@7:
; Line 176
	pop	esi
	add	esp, 8
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_ssh_gssapi_get_mic ENDP
; Function compile flags: /Odtp /RTCsu
_lib$ = 8						; size = 4
_hash$ = 12						; size = 4
_ssh_gssapi_free_mic PROC
; Line 180
	push	ebp
	mov	ebp, esp
; Line 182
	mov	eax, DWORD PTR _hash$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lib$[ebp]
	push	ecx
	call	_ssh_gssapi_free_tok
	add	esp, 8
; Line 183
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
_ssh_gssapi_free_mic ENDP
_TEXT	ENDS
END
