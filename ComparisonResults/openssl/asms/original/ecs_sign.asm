; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\workpace\openssl\openssl-1.0.2h\crypto\ecdsa\ecs_sign.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	_ECDSA_do_sign
PUBLIC	_ECDSA_do_sign_ex
PUBLIC	_ECDSA_sign_setup
PUBLIC	_ECDSA_sign
PUBLIC	_ECDSA_sign_ex
EXTRN	_ECDSA_SIG_free:PROC
EXTRN	_i2d_ECDSA_SIG:PROC
EXTRN	_ecdsa_check:PROC
EXTRN	_RAND_seed:PROC
; Function compile flags: /Ogtpy
;	COMDAT _ECDSA_sign_ex
_TEXT	SEGMENT
_type$ = 8						; size = 4
_dgst$ = 12						; size = 4
_dlen$ = 16						; size = 4
_sig$ = 20						; size = 4
_siglen$ = 24						; size = 4
_kinv$ = 28						; size = 4
_r$ = 32						; size = 4
_eckey$ = 36						; size = 4
_ECDSA_sign_ex PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ecdsa\ecs_sign.c
; Line 86
	push	esi
; Line 88
	mov	esi, DWORD PTR _dlen$[esp]
	push	esi
	push	DWORD PTR _dgst$[esp+4]
	call	_RAND_seed
; Line 71
	push	DWORD PTR _eckey$[esp+8]
	call	_ecdsa_check
	add	esp, 12					; 0000000cH
; Line 72
	test	eax, eax
	je	SHORT $LN7@ECDSA_sign
; Line 74
	push	DWORD PTR _eckey$[esp]
	mov	eax, DWORD PTR [eax+12]
	push	DWORD PTR _r$[esp+4]
	push	DWORD PTR _kinv$[esp+8]
	mov	eax, DWORD PTR [eax+4]
	push	esi
	push	DWORD PTR _dgst$[esp+16]
	call	eax
	mov	esi, eax
	add	esp, 20					; 00000014H
; Line 90
	test	esi, esi
	je	SHORT $LN7@ECDSA_sign
; Line 94
	lea	eax, DWORD PTR _sig$[esp]
	push	eax
	push	esi
	call	_i2d_ECDSA_SIG
	mov	ecx, DWORD PTR _siglen$[esp+8]
; Line 95
	push	esi
	mov	DWORD PTR [ecx], eax
	call	_ECDSA_SIG_free
	add	esp, 12					; 0000000cH
; Line 96
	mov	eax, 1
	pop	esi
; Line 97
	ret	0
$LN7@ECDSA_sign:
; Line 91
	mov	eax, DWORD PTR _siglen$[esp]
	pop	esi
	mov	DWORD PTR [eax], 0
; Line 92
	xor	eax, eax
; Line 97
	ret	0
_ECDSA_sign_ex ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ECDSA_sign
_TEXT	SEGMENT
_type$ = 8						; size = 4
_dgst$ = 12						; size = 4
_dlen$ = 16						; size = 4
_sig$ = 20						; size = 4
_siglen$ = 24						; size = 4
_eckey$ = 28						; size = 4
_ECDSA_sign PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ecdsa\ecs_sign.c
; Line 80
	push	DWORD PTR _eckey$[esp-4]
	push	0
	push	0
	push	DWORD PTR _siglen$[esp+8]
	push	DWORD PTR _sig$[esp+12]
	push	DWORD PTR _dlen$[esp+16]
	push	DWORD PTR _dgst$[esp+20]
	push	DWORD PTR _type$[esp+24]
	call	_ECDSA_sign_ex
	add	esp, 32					; 00000020H
; Line 81
	ret	0
_ECDSA_sign ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ECDSA_sign_setup
_TEXT	SEGMENT
_eckey$ = 8						; size = 4
_ctx_in$ = 12						; size = 4
_kinvp$ = 16						; size = 4
_rp$ = 20						; size = 4
_ECDSA_sign_setup PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ecdsa\ecs_sign.c
; Line 102
	push	DWORD PTR _eckey$[esp-4]
	call	_ecdsa_check
	add	esp, 4
; Line 103
	test	eax, eax
	jne	SHORT $LN2@ECDSA_sign
; Line 106
	ret	0
$LN2@ECDSA_sign:
; Line 105
	mov	eax, DWORD PTR [eax+12]
	mov	eax, DWORD PTR [eax+8]
	jmp	eax
_ECDSA_sign_setup ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ECDSA_do_sign_ex
_TEXT	SEGMENT
_dgst$ = 8						; size = 4
_dlen$ = 12						; size = 4
_kinv$ = 16						; size = 4
_rp$ = 20						; size = 4
_eckey$ = 24						; size = 4
_ECDSA_do_sign_ex PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ecdsa\ecs_sign.c
; Line 71
	push	DWORD PTR _eckey$[esp-4]
	call	_ecdsa_check
	add	esp, 4
; Line 72
	test	eax, eax
	jne	SHORT $LN2@ECDSA_do_s
; Line 75
	ret	0
$LN2@ECDSA_do_s:
; Line 74
	mov	eax, DWORD PTR [eax+12]
	mov	eax, DWORD PTR [eax+4]
	jmp	eax
_ECDSA_do_sign_ex ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _ECDSA_do_sign
_TEXT	SEGMENT
_dgst$ = 8						; size = 4
_dlen$ = 12						; size = 4
_eckey$ = 16						; size = 4
_ECDSA_do_sign PROC					; COMDAT
; File c:\workpace\openssl\openssl-1.0.2h\crypto\ecdsa\ecs_sign.c
; Line 71
	push	DWORD PTR _eckey$[esp-4]
	call	_ecdsa_check
	add	esp, 4
; Line 72
	test	eax, eax
	jne	SHORT $LN4@ECDSA_do_s
; Line 65
	ret	0
$LN4@ECDSA_do_s:
; Line 74
	push	DWORD PTR _eckey$[esp-4]
	mov	eax, DWORD PTR [eax+12]
	push	0
	push	0
	push	DWORD PTR _dlen$[esp+8]
	mov	eax, DWORD PTR [eax+4]
	push	DWORD PTR _dgst$[esp+12]
	call	eax
	add	esp, 20					; 00000014H
; Line 65
	ret	0
_ECDSA_do_sign ENDP
_TEXT	ENDS
END
